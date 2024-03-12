# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostandUsageReport do
  @moduledoc """
  You can use the Amazon Web Services Cost and Usage Report API to
  programmatically create, query, and delete
  Amazon Web Services Cost and Usage Report definitions.

  Amazon Web Services Cost and Usage Report track the monthly Amazon Web Services
  costs and usage
  associated with your Amazon Web Services account.

  The report contains line items for each unique combination of Amazon Web
  Services product,
  usage type, and operation that your Amazon Web Services account uses.

  You can configure the Amazon Web Services Cost and Usage Report to show only the
  data that you want, using the
  Amazon Web Services Cost and Usage Report API.

  Service Endpoint

  The Amazon Web Services Cost and Usage Report API provides the following
  endpoint:

    *
  cur.us-east-1.amazonaws.com
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  delete_report_definition_request() :: %{
    required("ReportName") => String.t()
  }
  """
  @type delete_report_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_report_definition_response() :: %{
    "ResponseMessage" => String.t()
  }
  """
  @type delete_report_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_report_definitions_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type describe_report_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_report_definitions_response() :: %{
    "NextToken" => String.t(),
    "ReportDefinitions" => list(report_definition()())
  }
  """
  @type describe_report_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  duplicate_report_name_exception() :: %{
    "Message" => String.t()
  }
  """
  @type duplicate_report_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_error_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("ReportName") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  modify_report_definition_request() :: %{
    required("ReportDefinition") => report_definition(),
    required("ReportName") => String.t()
  }
  """
  @type modify_report_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  modify_report_definition_response() :: %{

  }
  """
  @type modify_report_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_report_definition_request() :: %{
    optional("Tags") => list(tag()()),
    required("ReportDefinition") => report_definition()
  }
  """
  @type put_report_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_report_definition_response() :: %{

  }
  """
  @type put_report_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_definition() :: %{
    "AdditionalArtifacts" => list(list(any())()),
    "AdditionalSchemaElements" => list(list(any())()),
    "BillingViewArn" => String.t(),
    "Compression" => list(any()),
    "Format" => list(any()),
    "RefreshClosedReports" => boolean(),
    "ReportName" => String.t(),
    "ReportStatus" => report_status(),
    "ReportVersioning" => list(any()),
    "S3Bucket" => String.t(),
    "S3Prefix" => String.t(),
    "S3Region" => list(any()),
    "TimeUnit" => list(any())
  }
  """
  @type report_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_limit_reached_exception() :: %{
    "Message" => String.t()
  }
  """
  @type report_limit_reached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_status() :: %{
    "lastDelivery" => String.t(),
    "lastStatus" => list(any())
  }
  """
  @type report_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("ReportName") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("ReportName") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "Message" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  def metadata do
    %{
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

  Any tags associated with the report are also
  deleted.
  """
  @spec delete_report_definition(map(), delete_report_definition_request(), list()) ::
          {:ok, delete_report_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_error_exception()}
          | {:error, validation_exception()}
  def delete_report_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReportDefinition", input, options)
  end

  @doc """
  Lists the Amazon Web Services Cost and Usage Report available to this account.
  """
  @spec describe_report_definitions(map(), describe_report_definitions_request(), list()) ::
          {:ok, describe_report_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_error_exception()}
  def describe_report_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReportDefinitions", input, options)
  end

  @doc """
  Lists the tags associated with the specified report definition.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_error_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Allows you to programmatically update your report preferences.
  """
  @spec modify_report_definition(map(), modify_report_definition_request(), list()) ::
          {:ok, modify_report_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_error_exception()}
          | {:error, validation_exception()}
  def modify_report_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReportDefinition", input, options)
  end

  @doc """
  Creates a new report using the description that you provide.
  """
  @spec put_report_definition(map(), put_report_definition_request(), list()) ::
          {:ok, put_report_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, duplicate_report_name_exception()}
          | {:error, internal_error_exception()}
          | {:error, report_limit_reached_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def put_report_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutReportDefinition", input, options)
  end

  @doc """
  Associates a set of tags with a report definition.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_error_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Disassociates a set of tags from a report definition.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_error_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
