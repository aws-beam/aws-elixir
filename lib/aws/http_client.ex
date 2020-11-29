defmodule AWS.HTTPClient do
  @moduledoc """
  Specifies the behaviour of a HTTP Client.

  You can switch the default HTTP client which uses hackney underneath
  by defining a different implementation by setting the `:http_client`
  configuration in AWS.Client:

      client = %AWS.Client{http_client: {MyHttpClient, []}}
      AWS.SNS.publish(client, "My message")

  """

  @doc """
  Executes a HTTP request. Either returns {:ok, map} or {:error, reason}.

  - `body` is already parsed into iodata. It may be in either JSON or XML format.
  - `headers` already contains required headers such as Authorization. See AWS.Request.sign_v4 for more details.
  """
  @callback request(
    method :: atom(),
    url ::binary(),
    body :: iodata(),
    headers :: list(),
    options :: keyword()
  ) :: {:ok, %{status_code: integer(), body: map()}} | {:error, term()}

  defdelegate request(method, url, body, headers, options), to: HTTPoison
end
