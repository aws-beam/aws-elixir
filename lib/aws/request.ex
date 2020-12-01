defmodule AWS.Request do
  @moduledoc false

  alias AWS.Client
  alias AWS.Request.Internal
  alias AWS.ServiceMetadata
  alias AWS.Util

  @valid_protocols ~w(query json rest-json rest-xml)

  @doc """
  Request an AWS Service using a POST request with a protocol.
  """
  def request_post(%Client{} = client, %ServiceMetadata{} = metadata, action, input, options) do
    client = prepare_client(client, metadata)

    host = build_host(client, metadata)
    url = build_url(client, host)

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
    headers = sign_v4(client, "POST", url, headers, payload)

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

    host =
      if metadata.endpoint_prefix == "s3-control" do
        account_id = :proplists.get_value("x-amz-account-id", headers)
        build_host(account_id, client, metadata)
      else
        build_host(client, metadata)
      end

    url =
      client
      |> build_url(host, path)
      |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", metadata.content_type}]
    headers = add_headers(additional_headers, headers)

    payload = encode!(client, metadata.protocol, input)
    headers = sign_v4(client, method, url, headers, payload)

    {response_header_parameters, options} = Keyword.pop(options, :response_header_parameters)

    case Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body =
          if body != "" do
            decoded = decode!(client, metadata.protocol, body)

            case response_header_parameters do
              [_ | _] ->
                merge_body_with_response_headers(decoded, response, response_header_parameters)

              _ ->
                decoded
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

  defp build_url(%Client{} = client, host, path \\ "/") do
    "#{client.proto}://#{host}:#{client.port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end

  defp add_query(url, query, client) do
    querystring = Client.encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(%Client{} = client, protocol, payload) when protocol in @valid_protocols do
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
  Generate headers with an AWS signature version 4 for the specified request.
  """
  def sign_v4(client, method, url, headers, body) do
    sign_v4(client, now(), method, url, headers, body)
  end

  @doc """
  Generate headers with an AWS signature version 4 for the specified request
  using the specified time.
  """
  def sign_v4(client, now, method, url, headers, body) do
    long_date = NaiveDateTime.to_iso8601(now, :basic) <> "Z"
    short_date = Date.to_iso8601(now, :basic)

    headers =
      headers
      |> Internal.add_date_header(long_date)
      |> Internal.add_content_hash(body)
      |> Internal.add_security_token(client)

    canonical_request = Internal.canonical_request(method, url, headers, body)
    hashed_canonical_request = Util.sha256_hexdigest(canonical_request)
    credential_scope = Internal.credential_scope(short_date, client.region,
                                                 client.service)
    signing_key = Internal.signing_key(client.secret_access_key, short_date,
                                       client.region, client.service)
    string_to_sign = Internal.string_to_sign(long_date, credential_scope,
                                             hashed_canonical_request)
    signature = Util.hmac_sha256_hexdigest(signing_key, string_to_sign)
    signed_headers = Internal.signed_headers(headers)
    authorization = Internal.authorization(client.access_key_id,
                                           credential_scope, signed_headers,
                                           signature)
    Internal.add_authorization_header(headers, authorization)
  end

  @doc """
  Generate headers with an AWS signature version 4 for the specified request that can be transformed into a query string.
  """
  def sign_v4_query(client, method, url, headers, body) do
    sign_v4_query(client, now(), method, url, headers, body)
  end

  @doc """
  Generate headers with an AWS signature version 4 for the specified request using the specified time that can be transformed into a query string.
  """
  def sign_v4_query(client, now, method, url, headers, body) do
    long_date = NaiveDateTime.to_iso8601(now, :basic) <> "Z"
    short_date = Date.to_iso8601(now, :basic)
    headers = Internal.add_date_header(headers, long_date)
    canonical_request = Internal.canonical_request(method, url, headers, body)
    hashed_canonical_request = Util.sha256_hexdigest(canonical_request)
    credential_scope = Internal.credential_scope(short_date, client.region,
                                                 client.service)
    signing_key = Internal.signing_key(client.secret_access_key, short_date,
                                       client.region, client.service)
    string_to_sign = Internal.string_to_sign(long_date, credential_scope,
                                             hashed_canonical_request)
    signature = Util.hmac_sha256_hexdigest(signing_key, string_to_sign)
    signed_headers = Internal.signed_headers(headers)
    credential = Enum.join([client.access_key_id, short_date, client.region,
                            client.service, "aws4_request"], "/")
    result = [{"X-Amz-Algorithm", "AWS4-HMAC-SHA256"},
              {"X-Amz-Credential", credential},
              {"X-Amz-Date", long_date},
              {"X-Amz-SignedHeaders", signed_headers},
              {"X-Amz-Signature", signature}]
    if expiry = :proplists.get_value("X-Amz-Expires", headers, nil) do
      [{"X-Amz-Expires", expiry}|result]
    else
      result
    end
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

defmodule AWS.Request.Internal do
  @moduledoc false

  @doc """
  Add an `Authorization` header with an AWS4-HMAC-SHA256 signature to the list
  of headers.
  """
  def add_authorization_header(headers, authorization) do
    [{"Authorization", authorization}|headers]
  end

  @doc """
  Add an `X-Amz-Date` header with a long date value in `YYMMDDTHHMMSSZ` format
  to a list of headers.
  """
  def add_date_header(headers, date) do
    [{"X-Amz-Date", date}|headers]
  end

  @doc """
  Add an `X-Amz-Security-Token` if credentials configurations are configured for it
  """
  def add_security_token(headers, %AWS.Client{session_token: nil}), do: headers
  def add_security_token(headers, %AWS.Client{session_token: session_token}),
    do: [{"X-Amz-Security-Token", session_token}|headers]

  @doc """
  Add an X-Amz-Content-SHA256 header which is the hash of the payload.
  This header is required for S3 when using the v4 signature. Adding it
  in requests for all services does not cause any issues.
  """
  def add_content_hash(headers, body) do
    [{"X-Amz-Content-SHA256", AWS.Util.sha256_hexdigest(body)} | headers]
  end

  @doc """
  Generate an AWS4-HMAC-SHA256 authorization signature.
  """
  def authorization(access_key_id, credential_scope, signed_headers, signature) do
    Enum.join(["AWS4-HMAC-SHA256 ",
               "Credential=", access_key_id, "/", credential_scope, ", ",
               "SignedHeaders=", signed_headers, ", ",
               "Signature=", signature],
              "")
  end

  @doc """
  Strip leading and trailing whitespace around `name` and `value`, convert
  `name` to lowercase, and add a trailing newline.
  """
  def canonical_header({name, value}) do
    name = String.downcase(name) |> String.trim()
    value = String.trim(value)
    name <> ":" <> value <> "\n"
  end

  @doc """
  Convert a list of headers to canonical header format.  Leading and trailing
  whitespace around header names and values is stripped, header names are
  lowercased, and headers are newline-joined in alphabetical order (with a
  trailing newline).
  """
  def canonical_headers(headers) do
    Enum.map(headers, &canonical_header/1) |> Enum.sort |> Enum.join
  end

  @doc """
  Process and merge request values into a canonical request for AWS signature
  version 4.
  """
  def canonical_request(method, url, headers, body) when is_atom(method) do
    Atom.to_string(method)
    |> String.upcase
    |> canonical_request(url, headers, body)
  end

  def canonical_request(method, url, headers, body) do
    {canonical_url, canonical_query_string} = split_url(url)
    canonical_headers = canonical_headers(headers)
    signed_headers = signed_headers(headers)
    payload_hash = AWS.Util.sha256_hexdigest(body)
    Enum.join([method, canonical_url, canonical_query_string,
               canonical_headers, signed_headers, payload_hash], "\n")
  end

  @doc """
  Generate a credential scope from a short date in `YYMMDD` format, a region
  identifier and a service identifier.
  """
  def credential_scope(short_date, region, service) do
    Enum.join([short_date, region, service, "aws4_request"], "/")
  end

  @doc """
  Strip leading and trailing whitespace around Name and convert it to
  lowercase.
  """
  def signed_header({name, _value}) do
    String.downcase(name) |> String.trim()
  end

  @doc """
  Convert a list of headers to canonicals signed header format.  Leading and
  trailing whitespace around names is stripped, header names are lowercased,
  and header names are semicolon-joined in alphabetical order.
  """
  def signed_headers(headers) do
    Enum.map(headers, &signed_header/1) |> Enum.sort |> Enum.join(";")
  end

  @doc """
  Generate a signing key from a secret access key, a short date in `YYMMDD`
  format, a region identifier and a service identifier.
  """
  def signing_key(secret_access_key, short_date, region, service) do
    "AWS4" <> secret_access_key
    |> AWS.Util.hmac_sha256(short_date)
    |> AWS.Util.hmac_sha256(region)
    |> AWS.Util.hmac_sha256(service)
    |> AWS.Util.hmac_sha256("aws4_request")
  end

  @doc """
  Strip the query string from the URL, if one if present, and return the URL
  and the normalized query string as separate values.
  """
  def split_url(url) do
    url = URI.parse(url)
    {url.path, normalize_query(url.query)}
  end

  @doc """
  Sort query params by name first, then by value (if present). Append "=" to
  params with missing value.
  Example: "foo=bar&baz" becomes "baz=&foo=bar"
  """
  def normalize_query(nil), do: ""

  def normalize_query(""), do: ""

  def normalize_query(query) do
    query
    |> String.split("&")
    |> Enum.map(&String.split(&1, "="))
    |> Enum.sort()
    |> Enum.map_join("&", fn
         [key, value] -> key <> "=" <> value
         [key] -> key <> "="
       end)
  end

  @doc """
  Generate the text to sign from a long date in `YYMMDDTHHMMSSZ` format, a
  credential scope and a hashed canonical request.
  """
  def string_to_sign(long_date, credential_scope, hashed_canonical_request) do
    Enum.join(["AWS4-HMAC-SHA256", long_date,
               credential_scope, hashed_canonical_request], "\n")
  end

end
