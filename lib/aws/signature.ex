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

    :aws_signature.sign_v4(
      client.access_key_id,
      client.secret_access_key,
      region,
      client.service,
      {{now.year, now.month, now.day}, {now.hour, now.minute, now.second}},
      to_string(method),
      url,
      headers,
      body
    )
  end
end
