defmodule AWS.Signature do
  @moduledoc false

  alias AWS.Client

  # https://docs.aws.amazon.com/general/latest/gr/sigv4_changes.html
  @default_region_for_global_services "us-east-1"

  @doc """
  Generate headers with an AWS signature version 4 for the specified request
  using the specified time.
  """
  def sign_v4(%Client{} = client, now, method, url, headers, body) do
    region = client.region || @default_region_for_global_services

    headers = maybe_add_security_token(client, headers)

    :aws_signature.sign_v4(
      client.access_key_id,
      client.secret_access_key,
      region,
      client.service,
      {{now.year, now.month, now.day}, {now.hour, now.minute, now.second}},
      to_string(method),
      url,
      headers,
      body,
      sign_options(client)
    )
  end

  def sign_options(%Client{service: "s3"}), do: [uri_encode_path: false]
  def sign_options(_), do: []

  defp maybe_add_security_token(%Client{session_token: token}, headers) when is_binary(token) do
    [{"X-Amz-Security-Token", token} | headers]
  end

  defp maybe_add_security_token(_, headers), do: headers
end
