# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Marketplace.CommerceAnalytics do
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

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "marketplacecommerceanalytics"}
    host = get_host("marketplacecommerceanalytics", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "MarketplaceCommerceAnalytics20150701.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
