# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostandUsageReport do
  @moduledoc """
  You can use the Amazon Web Services Cost and Usage Report API to
  programmatically create, query, and delete Amazon Web Services Cost and Usage
  Report definitions.

  Amazon Web Services Cost and Usage Report track the monthly Amazon Web Services
  costs and usage associated with your Amazon Web Services account. The report
  contains line items for each unique combination of Amazon Web Services product,
  usage type, and operation that your Amazon Web Services account uses. You can
  configure the Amazon Web Services Cost and Usage Report to show only the data
  that you want, using the Amazon Web Services Cost and Usage Report API.

  Service Endpoint

  The Amazon Web Services Cost and Usage Report API provides the following
  endpoint:

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

  Any tags associated with the report are also deleted.
  """
  def delete_report_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReportDefinition", input, options)
  end

  @doc """
  Lists the Amazon Web Services Cost and Usage Report available to this account.
  """
  def describe_report_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReportDefinitions", input, options)
  end

  @doc """
  Lists the tags associated with the specified report definition.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Allows you to programmatically update your report preferences.
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

  @doc """
  Associates a set of tags with a report definition.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Disassociates a set of tags from a report definition.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
