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
        required("ReportName") => String.t() | atom()
      }
      
  """
  @type delete_report_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_report_definition_response() :: %{
        "ResponseMessage" => String.t() | atom()
      }
      
  """
  @type delete_report_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_report_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_report_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_report_definitions_response() :: %{
        "NextToken" => String.t() | atom(),
        "ReportDefinitions" => list(report_definition())
      }
      
  """
  @type describe_report_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_report_name_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type duplicate_report_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ReportName") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_report_definition_request() :: %{
        required("ReportDefinition") => report_definition(),
        required("ReportName") => String.t() | atom()
      }
      
  """
  @type modify_report_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_report_definition_response() :: %{}
      
  """
  @type modify_report_definition_response() :: %{}

  @typedoc """

  ## Example:
      
      put_report_definition_request() :: %{
        optional("Tags") => list(tag()),
        required("ReportDefinition") => report_definition()
      }
      
  """
  @type put_report_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_report_definition_response() :: %{}
      
  """
  @type put_report_definition_response() :: %{}

  @typedoc """

  ## Example:
      
      report_definition() :: %{
        "AdditionalArtifacts" => list(list(any())()),
        "AdditionalSchemaElements" => list(list(any())()),
        "BillingViewArn" => String.t() | atom(),
        "Compression" => list(any()),
        "Format" => list(any()),
        "RefreshClosedReports" => boolean(),
        "ReportName" => String.t() | atom(),
        "ReportStatus" => report_status(),
        "ReportVersioning" => list(any()),
        "S3Bucket" => String.t() | atom(),
        "S3Prefix" => String.t() | atom(),
        "S3Region" => list(any()),
        "TimeUnit" => list(any())
      }
      
  """
  @type report_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_limit_reached_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type report_limit_reached_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_status() :: %{
        "lastDelivery" => String.t() | atom(),
        "lastStatus" => list(any())
      }
      
  """
  @type report_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ReportName") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ReportName") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type delete_report_definition_errors() :: validation_exception() | internal_error_exception()

  @type describe_report_definitions_errors() :: internal_error_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_error_exception()

  @type modify_report_definition_errors() :: validation_exception() | internal_error_exception()

  @type put_report_definition_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | report_limit_reached_exception()
          | internal_error_exception()
          | duplicate_report_name_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_error_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_error_exception()

  def metadata do
    %{
      api_version: "2017-01-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cur",
      global?: false,
      hostname: nil,
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
          | {:error, term()}
          | {:error, delete_report_definition_errors()}
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
          | {:error, term()}
          | {:error, describe_report_definitions_errors()}
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
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
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
          | {:error, term()}
          | {:error, modify_report_definition_errors()}
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
          | {:error, term()}
          | {:error, put_report_definition_errors()}
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
          | {:error, term()}
          | {:error, tag_resource_errors()}
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
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
