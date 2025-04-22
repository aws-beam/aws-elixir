defmodule AWS.Request do
  @moduledoc false

  alias AWS.Client
  alias AWS.Signature

  @valid_protocols ~w(query json rest-json rest-xml ec2)

  @doc """
  Request an AWS Service using a POST request with a protocol.
  """
  def request_post(%Client{} = client, %{} = metadata, action, input, options) do
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
      if metadata.protocol in ~w(query ec2) do
        Map.merge(input, %{"Action" => action, "Version" => metadata.api_version})
      else
        input
      end

    payload = encode!(client, metadata.protocol, input)

    headers =
      if client.access_key_id != nil && client.secret_access_key != nil do
        Signature.sign_v4(client, now(), "POST", url, headers, payload)
      else
        headers
      end

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
        %{} = metadata,
        http_method,
        path,
        query,
        headers,
        input,
        options,
        success_status_code
      ) do
    client = prepare_client(client, metadata)
    input = input || %{}

    host = build_host(client, metadata, headers)

    url =
      client
      |> build_uri(host, path)
      |> add_query(query, client)
      |> to_string()

    {send_body_as_binary?, options} = Keyword.pop(options, :send_body_as_binary?)
    {receive_body_as_binary?, options} = Keyword.pop(options, :receive_body_as_binary?)

    # It will assume the default as "application/octet-stream" if is sending body
    # as binary and the input does not specify the `Content-type`.
    default_content_type =
      if send_body_as_binary? do
        "application/octet-stream"
      else
        metadata.content_type
      end

    static_additional_headers = [{"Host", host}, {"Content-Type", default_content_type}]

    payload =
      cond do
        send_body_as_binary? ->
          Map.fetch!(input, "Body")

        http_method in [:get, :head, :options, :delete] ->
          ""

        true ->
          encode!(client, metadata.protocol, input)
      end

    {append_sha256_content_hash, options} =
      Keyword.pop(options, :append_sha256_content_hash, false)

    additional_headers =
      if append_sha256_content_hash do
        checksum_header = {"X-Amz-CheckSum-SHA256", Base.encode64(:crypto.hash(:sha256, payload))}
        [checksum_header | static_additional_headers]
      else
        static_additional_headers
      end

    headers = add_headers(additional_headers, headers)

    {sign_request?, options} = Keyword.pop(options, :sign_request?, true)
    # Most requests require signatures, but this option allows it to
    # be disabled.
    headers =
      if sign_request? do
        Signature.sign_v4(client, now(), http_method, url, headers, payload)
      else
        headers
      end

    {response_header_parameters, options} = Keyword.pop(options, :response_header_parameters)

    case Client.request(client, http_method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when (is_nil(success_status_code) and status_code in 200..299) or
             status_code == success_status_code ->
        body =
          if body != "" do
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

    if metadata.global? and client.region != "local" do
      %{client | region: metadata.credential_scope}
    else
      client
    end
  end

  defp build_host(%Client{} = client, %{} = metadata, headers \\ []) do
    build_options = %{
      region: client.region,
      endpoint: client.endpoint,
      service: metadata.signing_name,
      global?: metadata.global?,
      hostname: metadata.hostname,
      endpoint_prefix: metadata.endpoint_prefix,
      account_id: :proplists.get_value("x-amz-account-id", headers, nil)
    }

    case build_options do
      %{region: "local", endpoint: nil} ->
        "localhost"

      %{endpoint: endpoint} when is_binary(endpoint) ->
        endpoint

      %{endpoint: endpoint_fun} when is_function(endpoint_fun, 1) ->
        endpoint_fun.(build_options)

      %{global?: true, hostname: hostname} when is_binary(hostname) ->
        hostname

      %{global?: true, endpoint: endpoint} ->
        endpoint = resolve_endpoint_suffix(endpoint)

        region =
          if metadata.credential_scope != nil do
            metadata.credential_scope
          else
            client.region
          end

        build_final_endpoint(
          [
            to_string(metadata[:host_prefix]) <> metadata.endpoint_prefix,
            region,
            endpoint
          ],
          build_options
        )

      %{endpoint: endpoint} ->
        endpoint = resolve_endpoint_suffix(endpoint)

        build_final_endpoint(
          [
            to_string(metadata[:host_prefix]) <> metadata.endpoint_prefix,
            client.region,
            endpoint
          ],
          build_options
        )
    end
  end

  defp resolve_endpoint_suffix({:keep_prefixes, suffix}) when is_binary(suffix) do
    suffix
  end

  defp resolve_endpoint_suffix(nil), do: Client.default_endpoint()

  defp build_final_endpoint(parts, options) do
    parts =
      if options.endpoint_prefix == "s3-control" do
        account_id = options.account_id || raise "missing account_id"
        [account_id | parts]
      else
        parts
      end

    joined = Enum.join(parts, ".")

    # TODO: handle more cases other than `AccountId`
    if options[:account_id] do
      joined |> String.replace("{AccountId}", options.account_id, global: true)
    else
      joined
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
        "ec2" -> :query
        "query" -> :query
        "rest-xml" -> :xml
        json_type when json_type in ~w(json rest-json) -> :json
      end

    Client.encode!(client, payload, encode_format)
  end

  defp decode!(%Client{} = client, protocol, payload) when protocol in @valid_protocols do
    decode_format =
      case protocol do
        xml_type when xml_type in ~w(query rest-xml ec2) -> :xml
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

      param_value when is_map(param_value) ->
        headers =
          Enum.reduce(param_value, headers, fn {k, v}, acc ->
            [{header_name <> k, v}] ++ acc
          end)

        params = Map.delete(params, param_name)
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

  defp now do
    NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second)
  end
end
