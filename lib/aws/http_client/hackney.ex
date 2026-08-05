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

    options = Keyword.put_new(options, :pool, @hackney_pool_name)
    options = [:with_body | options]

    headers = add_content_length(body, headers)

    case :hackney.request(method, url, headers, body, options) do
      {:ok, status_code, response_headers, body} ->
        {:ok, %{status_code: status_code, headers: response_headers, body: body}}

      {:ok, status_code, response_headers} ->
        {:ok, %{status_code: status_code, headers: response_headers, body: ""}}

      {:error, _error} = error ->
        error
    end
  end

  defp add_content_length("", headers) do
    maybe_add_header(headers, "content-length", "0")
  end

  defp add_content_length([], headers) do
    maybe_add_header(headers, "content-length", "0")
  end

  defp add_content_length(_body, headers), do: headers

  defp maybe_add_header(headers, name, value) do
    contains? =
      headers
      |> Enum.any?(fn {k, _v} -> String.downcase(k) == name end)

    if contains? do
      headers
    else
      [{name, value} | headers]
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
