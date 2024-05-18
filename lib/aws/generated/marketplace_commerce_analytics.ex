# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceCommerceAnalytics do
  @moduledoc """
  Provides AWS Marketplace business intelligence data on-demand.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      generate_data_set_request() :: %{
        optional("customerDefinedValues") => map(),
        optional("destinationS3Prefix") => String.t(),
        required("dataSetPublicationDate") => non_neg_integer(),
        required("dataSetType") => list(any()),
        required("destinationS3BucketName") => String.t(),
        required("roleNameArn") => String.t(),
        required("snsTopicArn") => String.t()
      }
      
  """
  @type generate_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_data_set_result() :: %{
        "dataSetRequestId" => String.t()
      }
      
  """
  @type generate_data_set_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marketplace_commerce_analytics_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type marketplace_commerce_analytics_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_support_data_export_request() :: %{
        optional("customerDefinedValues") => map(),
        optional("destinationS3Prefix") => String.t(),
        required("dataSetType") => list(any()),
        required("destinationS3BucketName") => String.t(),
        required("fromDate") => non_neg_integer(),
        required("roleNameArn") => String.t(),
        required("snsTopicArn") => String.t()
      }
      
  """
  @type start_support_data_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_support_data_export_result() :: %{
        "dataSetRequestId" => String.t()
      }
      
  """
  @type start_support_data_export_result() :: %{String.t() => any()}

  @type generate_data_set_errors() :: marketplace_commerce_analytics_exception()

  @type start_support_data_export_errors() :: marketplace_commerce_analytics_exception()

  def metadata do
    %{
      api_version: "2015-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "marketplacecommerceanalytics",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Marketplace Commerce Analytics",
      signature_version: "v4",
      signing_name: "marketplacecommerceanalytics",
      target_prefix: "MarketplaceCommerceAnalytics20150701"
    }
  end

  @doc """
  Given a data set type and data set publication date, asynchronously publishes
  the requested data set to the specified
  S3 bucket and notifies the specified SNS topic once the data is available.

  Returns a unique request identifier that
  can be used to correlate requests with notifications from the SNS topic.
  Data sets will be published in comma-separated values (CSV) format with the file
  name {data_set_type}_YYYY-MM-DD.csv.
  If a file with the same name already exists (e.g. if the same data set is
  requested twice), the original file will
  be overwritten by the new file.
  Requires a Role with an attached permissions policy providing Allow permissions
  for the following actions:
  s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
  iam:GetRolePolicy.
  """
  @spec generate_data_set(map(), generate_data_set_request(), list()) ::
          {:ok, generate_data_set_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, generate_data_set_errors()}
  def generate_data_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateDataSet", input, options)
  end

  @doc """
  *This target has been deprecated.* Given a data set type and a from date,
  asynchronously publishes the requested customer support data
  to the specified S3 bucket and notifies the specified SNS topic once the data is
  available.

  Returns a unique request
  identifier that can be used to correlate requests with notifications from the
  SNS topic.
  Data sets will be published in comma-separated values (CSV) format with the file
  name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv.
  If a file with the same name already exists (e.g. if the same data set is
  requested twice), the original file will
  be overwritten by the new file.
  Requires a Role with an attached permissions policy providing Allow permissions
  for the following actions:
  s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
  iam:GetRolePolicy.
  """
  @spec start_support_data_export(map(), start_support_data_export_request(), list()) ::
          {:ok, start_support_data_export_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_support_data_export_errors()}
  def start_support_data_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSupportDataExport", input, options)
  end
end
