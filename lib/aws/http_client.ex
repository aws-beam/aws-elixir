defmodule Aws.HTTPClient do
  @moduledoc """
  Specifies the behaviour of a HTTP Client.

  You can switch the default HTTP client which uses hackney underneath by defining a different implementation by setting the `:http_client` configuration in AWS.Client:

    client = %AWS.Client{http_client: {MyHttpClient, []}}
    Aws.SNS.publish(client, "My message")
  """

  @doc """
  Executes a HTTP request. Either returns {:ok, map} or {:error, reason}.

  - `body` is already parsed into binary. It may be JSON or XML format.
  - `headers` already contains required headers such as Authorization. See AWS.Request.sign_v4.

  """
  @callback request(
    method :: atom(),
    url ::binary(),
    body :: binary(),
    headers :: map(),
    options :: keyword()
  ) :: {:ok, map() | :error, term()}
end
