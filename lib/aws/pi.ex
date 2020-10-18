# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PI do
  @moduledoc """
  AWS Performance Insights enables you to monitor and explore different
  dimensions of database load based on data captured from a running RDS
  instance. The guide provides detailed information about Performance
  Insights data types, parameters and errors. For more information about
  Performance Insights capabilities see [Using Amazon RDS Performance
  Insights
  ](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
  in the *Amazon RDS User Guide*.

  The AWS Performance Insights API provides visibility into the performance
  of your RDS instance, when Performance Insights is enabled for supported
  engine types. While Amazon CloudWatch provides the authoritative source for
  AWS service vended monitoring metrics, AWS Performance Insights offers a
  domain-specific view of database load measured as Average Active Sessions
  and provided to API consumers as a 2-dimensional time-series dataset. The
  time dimension of the data provides DB load data for each time point in the
  queried time range, and each time point decomposes overall load in relation
  to the requested dimensions, such as SQL, Wait-event, User or Host,
  measured at that time point.
  """

  @doc """
  For a specific time period, retrieve the top `N` dimension keys for a
  metric.
  """
  def describe_dimension_keys(client, input, options \\ []) do
    request(client, "DescribeDimensionKeys", input, options)
  end

  @doc """
  Retrieve Performance Insights metrics for a set of data sources, over a
  time period. You can provide specific dimension groups and dimensions, and
  provide aggregation and filtering criteria for each group.
  """
  def get_resource_metrics(client, input, options \\ []) do
    request(client, "GetResourceMetrics", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "pi"}
    host = build_host("pi", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "PerformanceInsightsv20180227.#{action}"}
    ]

    payload = encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    perform_request(:post, url, payload, headers, options, 200)
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
