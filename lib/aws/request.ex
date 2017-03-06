defmodule AWS.Request do
  alias AWS.Request.Internal
  alias AWS.Util

  @doc """
  Generate headers with an AWS signature version 4 for the specified request.
  """
  def sign_v4(client, method, url, headers, body) do
    sign_v4(client, Timex.now, method, url, headers, body)
  end

  @doc """
  Generate headers with an AWS signature version 4 for the specified request
  using the specified time.
  """
  def sign_v4(client, now, method, url, headers, body) do
    {:ok, long_date} = Timex.format(now, "{YYYY}{0M}{0D}T{h24}{m}{s}Z")
    {:ok, short_date} = Timex.format(now, "{YYYY}{0M}{0D}")
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
    authorization = Internal.authorization(client.access_key_id,
                                           credential_scope, signed_headers,
                                           signature)
    Internal.add_authorization_header(headers, authorization)
  end

  @doc """
  Generate headers with an AWS signature version 4 for the specified request that can be transformed into a query string.
  """
  def sign_v4_query(client, method, url, headers, body) do
    sign_v4_query(client, Timex.now, method, url, headers, body)
  end

  @doc """
  Generate headers with an AWS signature version 4 for the specified request using the specified time that can be transformed into a query string.
  """
  def sign_v4_query(client, now, method, url, headers, body) do
    {:ok, long_date} = Timex.format(now, "{YYYY}{0M}{0D}T{h24}{m}{s}Z")
    {:ok, short_date} = Timex.format(now, "{YYYY}{0M}{0D}")
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
end

defmodule AWS.Request.Internal do
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
    name = String.downcase(name) |> String.strip
    value = String.strip(value)
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
    String.downcase(name) |> String.strip
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
  and query string as separate values.
  """
  def split_url(url) do
    url = URI.parse(url)
    {url.path, url.query}
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
