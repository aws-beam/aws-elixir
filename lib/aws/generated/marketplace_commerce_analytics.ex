# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceCommerceAnalytics do
  @moduledoc """
  Provides AWS Marketplace business intelligence data on-demand.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2015-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "marketplacecommerceanalytics",
      global?: false,
      protocol: "json",
      service_id: "Marketplace Commerce Analytics",
      signature_version: "v4",
      signing_name: "marketplacecommerceanalytics",
      target_prefix: "MarketplaceCommerceAnalytics20150701"
    }
  end

  @doc """
  Given a data set type and data set publication date, asynchronously publishes
  the requested data set to the specified S3 bucket and notifies the specified SNS
  topic once the data is available.

  Returns a unique request identifier that can be used to correlate requests with
  notifications from the SNS topic. Data sets will be published in comma-separated
  values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file
  with the same name already exists (e.g. if the same data set is requested
  twice), the original file will be overwritten by the new file. Requires a Role
  with an attached permissions policy providing Allow permissions for the
  following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes,
  sns:Publish, iam:GetRolePolicy.
  """
  def generate_data_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateDataSet", input, options)
  end

  @doc """
  Given a data set type and a from date, asynchronously publishes the requested
  customer support data to the specified S3 bucket and notifies the specified SNS
  topic once the data is available.

  Returns a unique request identifier that can be used to correlate requests with
  notifications from the SNS topic. Data sets will be published in comma-separated
  values (CSV) format with the file name
  {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name
  already exists (e.g. if the same data set is requested twice), the original file
  will be overwritten by the new file. Requires a Role with an attached
  permissions policy providing Allow permissions for the following actions:
  s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
  iam:GetRolePolicy.
  """
  def start_support_data_export(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartSupportDataExport", input, options)
  end
end
