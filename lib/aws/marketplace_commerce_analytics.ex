# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceCommerceAnalytics do
  @moduledoc """
  Provides AWS Marketplace business intelligence data on-demand.
  """

  @doc """
  Given a data set type and data set publication date, asynchronously
  publishes the requested data set to the specified S3 bucket and notifies
  the specified SNS topic once the data is available. Returns a unique
  request identifier that can be used to correlate requests with
  notifications from the SNS topic. Data sets will be published in
  comma-separated values (CSV) format with the file name
  {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists
  (e.g. if the same data set is requested twice), the original file will be
  overwritten by the new file. Requires a Role with an attached permissions
  policy providing Allow permissions for the following actions: s3:PutObject,
  s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
  iam:GetRolePolicy.
  """
  def generate_data_set(client, input, options \\ []) do
    request(client, "GenerateDataSet", input, options)
  end

  @doc """
  Given a data set type and a from date, asynchronously publishes the
  requested customer support data to the specified S3 bucket and notifies the
  specified SNS topic once the data is available. Returns a unique request
  identifier that can be used to correlate requests with notifications from
  the SNS topic. Data sets will be published in comma-separated values (CSV)
  format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If
  a file with the same name already exists (e.g. if the same data set is
  requested twice), the original file will be overwritten by the new file.
  Requires a Role with an attached permissions policy providing Allow
  permissions for the following actions: s3:PutObject, s3:GetBucketLocation,
  sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
  """
  def start_support_data_export(client, input, options \\ []) do
    request(client, "StartSupportDataExport", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "marketplacecommerceanalytics"}
    host = build_host("marketplacecommerceanalytics", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "MarketplaceCommerceAnalytics20150701.#{action}"}
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

      {:ok, %{body: body} = response} ->
        {:error, decode!(client, body), response}

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
