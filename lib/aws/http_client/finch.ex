defmodule AWS.HTTPClient.Finch do
  @moduledoc """
  Finch-based HTTP client for AWS.

  In order to use `Finch` API client, you must start `Finch` and provide a `:name`. In
  your supervision tree:

      children = [
        {Finch, name: AWS.Finch}
      ]

  Then build AWS client with the provided `:finch_name`:

      client = %AWS.Client{http_client: {AWS.HTTPClient.Finch, [finch_name: AWS.Finch]}}
      AWS.SNS.publish(client, "My message")

  In case you omit `:finch_name`, it defaults to `AWS.Finch`.
  """
  require Logger

  @behaviour AWS.HTTPClient

  @impl AWS.HTTPClient
  def request(method, url, body, headers, options) do
    ensure_finch_running!()

    finch_name = Keyword.get(options, :finch_name, AWS.Finch)
    url = IO.iodata_to_binary(url)
    request = Finch.build(method, url, headers, body)

    case Finch.request(request, finch_name, options) do
      {:ok, response} ->
        {:ok, %{status_code: response.status, headers: response.headers, body: response.body}}

      {:error, _reason} = error ->
        error
    end
  end

  defp ensure_finch_running! do
    unless Code.ensure_loaded?(Finch) do
      Logger.error("""
      Could not find finch dependency.

      Please add :finch to your dependencies:

          {:finch, "~> 0.13.0"}

      Or provide your own #{AWS.HTTPClient} implementation:

          %AWS.Client{http_client: {MyCustomHTTPClient, []}}
      """)

      raise "missing finch dependency"
    end

    {:ok, _apps} = Application.ensure_all_started(:finch)
  end
end
