defmodule AWS.HTTPClient.Hackney do
  @moduledoc """
  Default hackney-based HTTP client for AWS.
  """
  require Logger

  @behaviour AWS.HTTPClient

  @hackney_pool_name :aws_pool

  @impl AWS.HTTPClient
  def request(method, url, body, headers, options) do
    ensure_hackney_running!()

    options = [:with_body | options] |> Keyword.put_new(:pool, @hackney_pool_name)

    case :hackney.request(method, url, headers, body, options) do
      {:ok, status_code, response_headers, body} ->
        {:ok, %{status_code: status_code, headers: response_headers, body: body}}

      {:ok, status_code, response_headers} ->
        {:ok, %{status_code: status_code, headers: response_headers, body: ""}}

      {:error, _error} = error ->
        error
    end
  end

  defp ensure_hackney_running!() do
    unless Code.ensure_loaded?(:hackney) do
      Logger.error("""
      Could not find hackney dependency.

      Please add :hackney to your dependencies:

          {:hackney, "~> 1.16"}

      Or provide your own #{AWS.HTTPClient} implementation:

          %AWS.Client{http_client: {MyCustomHTTPClient, []}}
      """)

      raise "missing hackney dependency"
    end

    {:ok, _apps} = Application.ensure_all_started(:hackney)
  end
end
