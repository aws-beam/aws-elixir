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
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end