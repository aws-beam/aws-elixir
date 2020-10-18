# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApiGatewayManagementApi do
  @moduledoc """
  The Amazon API Gateway Management API allows you to directly manage runtime
  aspects of your deployed APIs. To use it, you must explicitly set the SDK's
  endpoint to point to the endpoint of your deployed API. The endpoint will
  be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage},
  or will be the endpoint corresponding to your API's custom domain and base
  path, if applicable.
  """

  @doc """
  Delete the connection with the provided id.
  """
  def delete_connection(client, connection_id, input, options \\ []) do
    path_ = "/@connections/#{URI.encode(connection_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Get information about the connection with the provided id.
  """
  def get_connection(client, connection_id, options \\ []) do
    path_ = "/@connections/#{URI.encode(connection_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Sends the provided data to the specified connection.
  """
  def post_to_connection(client, connection_id, input, options \\ []) do
    path_ = "/@connections/#{URI.encode(connection_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "execute-api"}
    host = build_host("execute-api", client)
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