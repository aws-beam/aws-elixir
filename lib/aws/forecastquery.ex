# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Forecastquery do
  @moduledoc """
  Provides APIs for creating and managing Amazon Forecast resources.
  """

  @doc """
  Retrieves a forecast for a single item, filtered by the supplied criteria.

  The criteria is a key-value pair. The key is either `item_id` (or the
  equivalent non-timestamp, non-target field) from the `TARGET_TIME_SERIES`
  dataset, or one of the forecast dimensions specified as part of the
  `FeaturizationConfig` object.

  By default, `QueryForecast` returns the complete date range for the
  filtered forecast. You can request a specific date range.

  To get the full forecast, use the
  [CreateForecastExportJob](https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html)
  operation.

  <note> The forecasts generated by Amazon Forecast are in the same timezone
  as the dataset that was used to create the predictor.

  </note>
  """
  def query_forecast(client, input, options \\ []) do
    request(client, "QueryForecast", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "forecast"}
    host = build_host("forecastquery", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AmazonForecastRuntime.#{action}"}
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

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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
