# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamQuery do
  @moduledoc """

  """

  @doc """
  Cancels a query that has been issued. Cancellation is guaranteed only if
  the query has not completed execution before the cancellation request was
  issued. Because cancellation is an idempotent operation, subsequent
  cancellation requests will return a `CancellationMessage`, indicating that
  the query has already been canceled.
  """
  def cancel_query(client, input, options \\ []) do
    request(client, "CancelQuery", input, options)
  end

  @doc """
  DescribeEndpoints returns a list of available endpoints to make Timestream
  API calls against. This API is available through both Write and Query.

  Because Timestream’s SDKs are designed to transparently work with the
  service’s architecture, including the management and mapping of the service
  endpoints, *it is not recommended that you use this API unless*:

  <ul> <li> Your application uses a programming language that does not yet
  have SDK support

  </li> <li> You require better control over the client-side implementation

  </li> </ul> For detailed information on how to use DescribeEndpoints, see
  [The Endpoint Discovery Pattern and REST
  APIs](https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html).
  """
  def describe_endpoints(client, input, options \\ []) do
    request(client, "DescribeEndpoints", input, options)
  end

  @doc """
  Query is a synchronous operation that enables you to execute a query. Query
  will timeout after 60 seconds. You must update the default timeout in the
  SDK to support a timeout of 60 seconds. The result set will be truncated to
  1MB. Service quotas apply. For more information, see Quotas in the
  Timestream Developer Guide.
  """
  def query(client, input, options \\ []) do
    request(client, "Query", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "timestream"}
    host = build_host("query.timestream", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.0"},
      {"X-Amz-Target", "Timestream_20181101.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
