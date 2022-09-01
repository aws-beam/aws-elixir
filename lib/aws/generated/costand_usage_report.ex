# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostandUsageReport do
  @moduledoc """
  The AWS Cost and Usage Report API enables you to programmatically create, query,
  and delete AWS Cost and Usage report definitions.

  AWS Cost and Usage reports track the monthly AWS costs and usage associated with
  your AWS account. The report contains line items for each unique combination of
  AWS product, usage type, and operation that your AWS account uses. You can
  configure the AWS Cost and Usage report to show only the data that you want,
  using the AWS Cost and Usage API.

  Service Endpoint

  The AWS Cost and Usage Report API provides the following endpoint:

    * cur.us-east-1.amazonaws.com
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-01-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cur",
      global?: false,
      protocol: "json",
      service_id: "Cost and Usage Report Service",
      signature_version: "v4",
      signing_name: "cur",
      target_prefix: "AWSOrigamiServiceGatewayService"
    }
  end

  @doc """
  Deletes the specified report.
  """
  def delete_report_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReportDefinition", input, options)
  end

  @doc """
  Lists the AWS Cost and Usage reports available to this account.
  """
  def describe_report_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReportDefinitions", input, options)
  end

  @doc """
  Allows you to programatically update your report preferences.
  """
  def modify_report_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReportDefinition", input, options)
  end

  @doc """
  Creates a new report using the description that you provide.
  """
  def put_report_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutReportDefinition", input, options)
  end
end
