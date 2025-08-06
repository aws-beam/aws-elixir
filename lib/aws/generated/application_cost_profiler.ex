# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationCostProfiler do
  @moduledoc """
  This reference provides descriptions of the AWS Application Cost Profiler API.

  The AWS Application Cost Profiler API provides programmatic access to view,
  create, update, and delete
  application cost report definitions, as well as to import your usage data into
  the Application Cost Profiler
  service.

  For more information about using this service, see the [AWS Application Cost Profiler User
  Guide](https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_report_definition_request() :: %{}

  """
  @type delete_report_definition_request() :: %{}

  @typedoc """

  ## Example:

      delete_report_definition_result() :: %{
        "reportId" => String.t() | atom()
      }

  """
  @type delete_report_definition_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_definition_request() :: %{}

  """
  @type get_report_definition_request() :: %{}

  @typedoc """

  ## Example:

      get_report_definition_result() :: %{
        "createdAt" => non_neg_integer(),
        "destinationS3Location" => s3_location(),
        "format" => list(any()),
        "lastUpdated" => non_neg_integer(),
        "reportDescription" => String.t() | atom(),
        "reportFrequency" => list(any()),
        "reportId" => String.t() | atom()
      }

  """
  @type get_report_definition_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_application_usage_request() :: %{
        required("sourceS3Location") => source_s3_location()
      }

  """
  @type import_application_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_application_usage_result() :: %{
        "importId" => String.t() | atom()
      }

  """
  @type import_application_usage_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_report_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_report_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_report_definitions_result() :: %{
        "nextToken" => String.t() | atom(),
        "reportDefinitions" => list(report_definition())
      }

  """
  @type list_report_definitions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_report_definition_request() :: %{
        required("destinationS3Location") => s3_location(),
        required("format") => list(any()),
        required("reportDescription") => String.t() | atom(),
        required("reportFrequency") => list(any()),
        required("reportId") => String.t() | atom()
      }

  """
  @type put_report_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_report_definition_result() :: %{
        "reportId" => String.t() | atom()
      }

  """
  @type put_report_definition_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      report_definition() :: %{
        "createdAt" => non_neg_integer(),
        "destinationS3Location" => s3_location(),
        "format" => list(any()),
        "lastUpdatedAt" => non_neg_integer(),
        "reportDescription" => String.t() | atom(),
        "reportFrequency" => list(any()),
        "reportId" => String.t() | atom()
      }

  """
  @type report_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => String.t() | atom(),
        "prefix" => String.t() | atom()
      }

  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_s3_location() :: %{
        "bucket" => String.t() | atom(),
        "key" => String.t() | atom(),
        "region" => list(any())
      }

  """
  @type source_s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_report_definition_request() :: %{
        required("destinationS3Location") => s3_location(),
        required("format") => list(any()),
        required("reportDescription") => String.t() | atom(),
        required("reportFrequency") => list(any())
      }

  """
  @type update_report_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_report_definition_result() :: %{
        "reportId" => String.t() | atom()
      }

  """
  @type update_report_definition_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type delete_report_definition_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_report_definition_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type import_application_usage_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_report_definitions_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_report_definition_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_report_definition_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2020-09-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "application-cost-profiler",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ApplicationCostProfiler",
      signature_version: "v4",
      signing_name: "application-cost-profiler",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified report definition in AWS Application Cost Profiler.

  This stops the report from being
  generated.
  """
  @spec delete_report_definition(
          map(),
          String.t() | atom(),
          delete_report_definition_request(),
          list()
        ) ::
          {:ok, delete_report_definition_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_report_definition_errors()}
  def delete_report_definition(%Client{} = client, report_id, input, options \\ []) do
    url_path = "/reportDefinition/#{AWS.Util.encode_uri(report_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the definition of a report already configured in AWS Application Cost
  Profiler.
  """
  @spec get_report_definition(map(), String.t() | atom(), list()) ::
          {:ok, get_report_definition_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_report_definition_errors()}
  def get_report_definition(%Client{} = client, report_id, options \\ []) do
    url_path = "/reportDefinition/#{AWS.Util.encode_uri(report_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Ingests application usage data from Amazon Simple Storage Service (Amazon S3).

  The data must already exist in the S3 location. As part of the action, AWS
  Application Cost Profiler
  copies the object from your S3 bucket to an S3 bucket owned by Amazon for
  processing
  asynchronously.
  """
  @spec import_application_usage(map(), import_application_usage_request(), list()) ::
          {:ok, import_application_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_application_usage_errors()}
  def import_application_usage(%Client{} = client, input, options \\ []) do
    url_path = "/importApplicationUsage"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of all reports and their configurations for your AWS account.

  The maximum number of reports is one.
  """
  @spec list_report_definitions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_report_definitions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_report_definitions_errors()}
  def list_report_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/reportDefinition"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates the report definition for a report in Application Cost Profiler.
  """
  @spec put_report_definition(map(), put_report_definition_request(), list()) ::
          {:ok, put_report_definition_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_report_definition_errors()}
  def put_report_definition(%Client{} = client, input, options \\ []) do
    url_path = "/reportDefinition"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates existing report in AWS Application Cost Profiler.
  """
  @spec update_report_definition(
          map(),
          String.t() | atom(),
          update_report_definition_request(),
          list()
        ) ::
          {:ok, update_report_definition_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_report_definition_errors()}
  def update_report_definition(%Client{} = client, report_id, input, options \\ []) do
    url_path = "/reportDefinition/#{AWS.Util.encode_uri(report_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
