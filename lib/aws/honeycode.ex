# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Honeycode do
  @moduledoc """
  Amazon Honeycode is a fully managed service that allows you to quickly
  build mobile and web apps for teams—without programming. Build Honeycode
  apps for managing almost anything, like projects, customers, operations,
  approvals, resources, and even your team.
  """

  @doc """
  The GetScreenData API allows retrieval of data from a screen in a Honeycode
  app. The API allows setting local variables in the screen to filter, sort
  or otherwise affect what will be displayed on the screen.
  """
  def get_screen_data(client, input, options \\ []) do
    path_ = "/screendata"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  The InvokeScreenAutomation API allows invoking an action defined in a
  screen in a Honeycode app. The API allows setting local variables, which
  can then be used in the automation being invoked. This allows automating
  the Honeycode app interactions to write, update or delete data in the
  workbook.
  """
  def invoke_screen_automation(client, app_id, screen_automation_id, screen_id, workbook_id, input, options \\ []) do
    path_ = "/workbooks/#{URI.encode(workbook_id)}/apps/#{URI.encode(app_id)}/screens/#{URI.encode(screen_id)}/automations/#{URI.encode(screen_automation_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "honeycode"}
    host = build_host("honeycode", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
