defmodule AWS.Signature do
  @moduledoc false

  # Implements the Signature algorithm v4.
  # See: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html

  alias AWS.Client
  alias AWS.Util

  @doc """
  Generate headers with an AWS signature version 4 for the specified request
  using the specified time.
  """
  def sign_v4(client, now, method, url, headers, body) do
    long_date = NaiveDateTime.to_iso8601(now, :basic) <> "Z"
    short_date = Date.to_iso8601(now, :basic)

    headers =
      headers
      |> add_date_header(long_date)
      |> add_content_hash(body)
      |> add_security_token(client)

    canonical_request = canonical_request(method, url, headers, body)
    hashed_canonical_request = Util.sha256_hexdigest(canonical_request)
    credential_scope = credential_scope(short_date, client.region, client.service)

    signing_key = signing_key(client, short_date)

    string_to_sign = string_to_sign(long_date, credential_scope, hashed_canonical_request)

    signature = Util.hmac_sha256_hexdigest(signing_key, string_to_sign)
    signed_headers = signed_headers(headers)

    authorization =
      authorization(client.access_key_id, credential_scope, signed_headers, signature)

    add_authorization_header(headers, authorization)
  end

  @doc """
  Generate headers with an AWS signature version 4 for the specified request using the specified time that can be transformed into a query string.
  """
  def sign_v4_query(client, now, method, url, headers, body) do
    long_date = NaiveDateTime.to_iso8601(now, :basic) <> "Z"
    short_date = Date.to_iso8601(now, :basic)
    headers = add_date_header(headers, long_date)
    canonical_request = canonical_request(method, url, headers, body)
    hashed_canonical_request = Util.sha256_hexdigest(canonical_request)
    credential_scope = credential_scope(short_date, client.region, client.service)

    signing_key = signing_key(client, short_date)

    string_to_sign = string_to_sign(long_date, credential_scope, hashed_canonical_request)

    signature = Util.hmac_sha256_hexdigest(signing_key, string_to_sign)
    signed_headers = signed_headers(headers)

    credential =
      Enum.join(
        [client.access_key_id, short_date, client.region, client.service, "aws4_request"],
        "/"
      )

    result = [
      {"X-Amz-Algorithm", "AWS4-HMAC-SHA256"},
      {"X-Amz-Credential", credential},
      {"X-Amz-Date", long_date},
      {"X-Amz-SignedHeaders", signed_headers},
      {"X-Amz-Signature", signature}
    ]

    if expiry = :proplists.get_value("X-Amz-Expires", headers, nil) do
      [{"X-Amz-Expires", expiry} | result]
    else
      result
    end
  end

  defp add_date_header(headers, date) do
    [{"X-Amz-Date", date} | headers]
  end

  # Add an X-Amz-Content-SHA256 header which is the hash of the payload.
  # This header is required for S3 when using the v4 signature. Adding it
  # in requests for all services does not cause any issues.
  defp add_content_hash(headers, body) do
    [{"X-Amz-Content-SHA256", AWS.Util.sha256_hexdigest(body)} | headers]
  end

  # Add an `X-Amz-Security-Token` if credentials configurations are configured for it
  defp add_security_token(headers, %AWS.Client{session_token: nil}), do: headers

  defp add_security_token(headers, %AWS.Client{session_token: session_token}),
    do: [{"X-Amz-Security-Token", session_token} | headers]

  defp add_authorization_header(headers, authorization) do
    [{"Authorization", authorization} | headers]
  end

  # Generate an AWS4-HMAC-SHA256 authorization signature.
  defp authorization(access_key_id, credential_scope, signed_headers, signature) do
    Enum.join(
      [
        "AWS4-HMAC-SHA256 ",
        "Credential=",
        access_key_id,
        "/",
        credential_scope,
        ", ",
        "SignedHeaders=",
        signed_headers,
        ", ",
        "Signature=",
        signature
      ],
      ""
    )
  end

  # Convert a list of headers to canonical header format.  Leading and trailing
  # whitespace around header names and values is stripped, header names are
  # lowercased, and headers are newline-joined in alphabetical order (with a
  # trailing newline).
  defp canonical_headers(headers) do
    headers
    |> Enum.map(fn {name, value} ->
      name = String.downcase(name) |> String.trim()
      value = String.trim(value)
      {name, value}
    end)
    |> Enum.sort(fn {a, _}, {b, _} -> a <= b end)
    |> Enum.map(fn {name, value} -> [name, ":", value, "\n"] end)
    |> Enum.join()
  end

  # Process and merge request values into a canonical request for AWS signature
  # version 4.
  defp canonical_request(method, url, headers, body) when is_atom(method) do
    Atom.to_string(method)
    |> String.upcase()
    |> canonical_request(url, headers, body)
  end

  defp canonical_request(method, url, headers, body) do
    {canonical_url, canonical_query_string} = split_url(url)
    canonical_headers = canonical_headers(headers)
    signed_headers = signed_headers(headers)
    payload_hash = AWS.Util.sha256_hexdigest(body)

    Enum.join(
      [
        method,
        canonical_url,
        canonical_query_string,
        canonical_headers,
        signed_headers,
        payload_hash
      ],
      "\n"
    )
  end

  # Generate a credential scope from a short date in `YYMMDD` format, a region
  # identifier and a service identifier.
  defp credential_scope(short_date, region, service) do
    Enum.join([short_date, region, service, "aws4_request"], "/")
  end

  # Convert a list of headers to canonicals signed header format.  Leading and
  # trailing whitespace around names is stripped, header names are lowercased,
  # and header names are semicolon-joined in alphabetical order.
  @spec signed_headers([{binary(), binary()}]) :: binary()
  defp signed_headers(headers) do
    headers
    |> Enum.map(fn {name, _value} -> name |> String.downcase() |> String.trim() end)
    |> Enum.sort()
    |> Enum.join(";")
  end

  # Generate a signing key from a secret access key, a short date in `YYMMDD`
  # format, a region identifier and a service identifier.
  defp signing_key(%Client{} = client, short_date) do
    ("AWS4" <> client.secret_access_key)
    |> AWS.Util.hmac_sha256(short_date)
    |> AWS.Util.hmac_sha256(client.region)
    |> AWS.Util.hmac_sha256(client.service)
    |> AWS.Util.hmac_sha256("aws4_request")
  end

  # Strip the query string from the URL, if one if present, and return the URL
  # and the normalized query string as separate values.
  defp split_url(url) do
    url = URI.parse(url)

    {uri_encode(url.path), normalize_query(url.query)}
  end

  # Copied from https://github.com/ex-aws/ex_aws/blob/623478ed321ffc6c07fdd7236a2f0e03f1cbd517/lib/ex_aws/request/url.ex#L108
  def uri_encode(url), do: URI.encode(url, &valid_path_char?/1)

  # Space character
  defp valid_path_char?(?\ ), do: false
  defp valid_path_char?(?/), do: true

  defp valid_path_char?(c) do
    URI.char_unescaped?(c) && !URI.char_reserved?(c)
  end

  # Sort query params by name first, then by value (if present). Append "=" to
  # params with missing value.
  # Example: "foo=bar&baz" becomes "baz=&foo=bar"
  defp normalize_query(nil), do: ""

  defp normalize_query(""), do: ""

  defp normalize_query(query) do
    query
    |> String.split("&")
    |> Enum.map(&String.split(&1, "="))
    |> Enum.sort(fn [a, _], [b, _] -> a <= b end)
    |> Enum.map_join("&", fn
      [key, value] -> key <> "=" <> value
      [key] -> key <> "="
    end)
  end

  # Generate the text to sign from a long date in `YYMMDDTHHMMSSZ` format, a
  # credential scope and a hashed canonical request.
  defp string_to_sign(long_date, credential_scope, hashed_canonical_request) do
    Enum.join(
      ["AWS4-HMAC-SHA256", long_date, credential_scope, hashed_canonical_request],
      "\n"
    )
  end
end
