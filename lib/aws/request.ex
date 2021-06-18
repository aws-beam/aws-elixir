defmodule AWS.Request do
  @moduledoc false

  alias AWS.Client
  alias AWS.ServiceMetadata
  alias AWS.Signature

  @valid_protocols ~w(query json rest-json rest-xml)

  @doc """
  Request an AWS Service using a POST request with a protocol.
  """
  def request_post(%Client{} = client, %ServiceMetadata{} = metadata, action, input, options) do
    client = prepare_client(client, metadata)

    host = build_host(client, metadata)

    url =
      client
      |> build_uri(host)
      |> to_string()

    headers = [
      {"Host", host},
      {"Content-Type", metadata.content_type}
    ]

    headers =
      if metadata.protocol == "json" do
        [{"X-Amz-Target", "#{metadata.target_prefix}.#{action}"} | headers]
      else
        headers
      end

    input =
      if metadata.protocol == "query" do
        Map.merge(input, %{"Action" => action, "Version" => metadata.api_version})
      else
        input
      end

    payload = encode!(client, metadata.protocol, input)
    headers = Signature.sign_v4(client, now(), "POST", url, headers, payload)

    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, metadata.protocol, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} ->
        error
    end
  end

  def request_rest(
        %Client{} = client,
        %ServiceMetadata{} = metadata,
        method,
        path,
        query,
        headers,
        input,
        options,
        success_status_code
      ) do
    client = prepare_client(client, metadata)
    input = input || %{}

    host =
      if metadata.endpoint_prefix == "s3-control" do
        account_id = :proplists.get_value("x-amz-account-id", headers)
        build_host(account_id, client, metadata)
      else
        build_host(client, metadata)
      end

    url =
      client
      |> build_uri(host, path)
      |> add_query(query, client)
      |> to_string()

    additional_headers = [{"Host", host}, {"Content-Type", metadata.content_type}]
    headers = add_headers(additional_headers, headers)

    {send_body_as_binary?, options} = Keyword.pop(options, :send_body_as_binary?)

    payload =
      if send_body_as_binary? do
        Map.fetch!(input, "Body")
      else
        encode!(client, metadata.protocol, input)
      end

    headers = Signature.sign_v4(client, now(), method, url, headers, payload)

    {response_header_parameters, options} = Keyword.pop(options, :response_header_parameters)

    case Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when (is_nil(success_status_code) and status_code in 200..299) or
             status_code == success_status_code ->
        body =
          if body != "" do
            {receive_body_as_binary?, _options} = Keyword.pop(options, :receive_body_as_binary?)

            response_body =
              if receive_body_as_binary? do
                %{"Body" => body}
              else
                decode!(client, metadata.protocol, body)
              end

            case response_header_parameters do
              [_ | _] ->
                response_body =
                  if is_binary(response_body) do
                    %{"Body" => response_body}
                  else
                    response_body
                  end

                merge_body_with_response_headers(
                  response_body,
                  response,
                  response_header_parameters
                )

              _ ->
                response_body
            end
          end

        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} ->
        error
    end
  end

  defp prepare_client(client, metadata) do
    client = %{client | service: metadata.signing_name}

    if metadata.global? do
      %{client | region: metadata.credential_scope}
    else
      client
    end
  end

  defp build_host(%Client{region: "local"} = client, _) do
    if client.endpoint do
      client.endpoint
    else
      "localhost"
    end
  end

  defp build_host(%Client{} = client, %ServiceMetadata{} = metadata) do
    if metadata.global? do
      "#{metadata.endpoint_prefix}.#{client.endpoint}"
    else
      "#{metadata.endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp build_host(account_id, %Client{} = client, %ServiceMetadata{} = metadata) do
    cond do
      client.region == "local" ->
        build_host(client, metadata)

      account_id == :undefined ->
        raise "missing account_id"

      true ->
        "#{account_id}.#{build_host(client, metadata)}"
    end
  end

  defp build_uri(%Client{} = client, host, path \\ "/") do
    URI.merge("#{client.proto}://#{host}:#{client.port}", path)
  end

  defp add_query(uri = %URI{}, [], _client) do
    uri
  end

  defp add_query(uri = %URI{}, query, client) do
    querystring = Client.encode!(client, query, :query)

    if is_binary(uri.query) do
      %{uri | query: uri.query <> "&" <> querystring}
    else
      %{uri | query: querystring}
    end
  end

  defp encode!(%Client{} = client, protocol, payload)
       when protocol in @valid_protocols and is_map(payload) do
    encode_format =
      case protocol do
        "query" -> :query
        "rest-xml" -> :xml
        json_type when json_type in ~w(json rest-json) -> :json
      end

    Client.encode!(client, payload, encode_format)
  end

  defp decode!(%Client{} = client, protocol, payload) when protocol in @valid_protocols do
    decode_format =
      case protocol do
        xml_type when xml_type in ~w(query rest-xml) -> :xml
        json_type when json_type in ~w(json rest-json) -> :json
      end

    Client.decode!(client, payload, decode_format)
  end

  defp merge_body_with_response_headers(body, response, response_header_parameters) do
    Enum.reduce(response_header_parameters, body, fn {header_name, key}, acc ->
      case List.keyfind(response.headers, header_name, 0) do
        nil -> acc
        {_header_name, value} -> Map.put(acc, key, value)
      end
    end)
  end

  @doc """
  Build request params (header or querystring) based on a list of key-value
  pairs representing the `mapping` from the input name (key) to the param
  name (value) and a map with the input `params`.
  """
  def build_params(mapping, %{} = params) when is_list(mapping) do
    Enum.reduce(mapping, {[], params}, &move_param_to_header/2)
  end

  defp move_param_to_header({param_name, header_name}, {headers, params}) do
    case Map.get(params, param_name) do
      nil ->
        {headers, params}

      param_value ->
        headers = [{header_name, param_value} | headers]
        params = Map.delete(params, param_name)
        {headers, params}
    end
  end

  @doc """
  Include additions only if they do not already exist in the provided list.
  """
  def add_headers([], headers) do
    headers
  end

  def add_headers([{name, _} = header | additions], headers) do
    case List.keyfind(headers, name, 0) do
      nil -> add_headers(additions, [header | headers])
      {_, _} -> add_headers(additions, headers)
    end
  end

  defp now() do
    NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second)
  end
end
