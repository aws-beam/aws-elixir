defmodule AWS.HTTPClient do
  require Logger

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
              url :: binary(),
              body :: iodata(),
              headers :: list(),
              options :: keyword()
            ) ::
              {:ok, %{status_code: integer(), headers: [{binary(), binary()}], body: binary()}}
              | {:error, term()}

  def request(method, url, body, headers, options) do
    ensure_hackney_running!()

    options = [:with_body | options]

    case :hackney.request(method, url, headers, body, options) do
      {:ok, status_code, response_headers, body} ->
        {:ok, %{status_code: status_code, headers: response_headers, body: body}}

      error ->
        error
    end
  end

  defp ensure_hackney_running!() do
    unless Code.ensure_loaded?(:hackney) do
      Logger.error("""
      Could not find hackney dependency.

      Please add :hackney to your dependencies:

          {:hackney, "~> 1.16"}

      Or provide your own #{__MODULE__} implementation:

          %AWS.Client{http_client: {MyCustomHTTPClient, []}}
      """)

      raise "missing hackney dependency"
    end

    {:ok, _apps} = Application.ensure_all_started(:hackney)
  end
end
