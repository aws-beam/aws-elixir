# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OSIS do
  @moduledoc """
  Use the Amazon OpenSearch Ingestion API to create and manage ingestion
  pipelines.

  OpenSearch Ingestion is a
  fully managed data collector that delivers real-time log and trace data to
  OpenSearch Service domains. For more information, see
  [Getting data into your cluster using OpenSearch Ingestion](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      service_vpc_endpoint() :: %{
        "ServiceName" => list(any()),
        "VpcEndpointId" => String.t()
      }

  """
  @type service_vpc_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Arn") => String.t(),
        required("Tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type get_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipelines_response() :: %{
        "NextToken" => String.t(),
        "Pipelines" => list(pipeline_summary())
      }

  """
  @type list_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type update_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipelines_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type create_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_change_progress_response() :: %{
        "ChangeProgressStatuses" => list(change_progress_status())
      }

  """
  @type get_pipeline_change_progress_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline() :: %{
        "BufferOptions" => buffer_options(),
        "CreatedAt" => non_neg_integer(),
        "Destinations" => list(pipeline_destination()),
        "EncryptionAtRestOptions" => encryption_at_rest_options(),
        "IngestEndpointUrls" => list(String.t()),
        "LastUpdatedAt" => non_neg_integer(),
        "LogPublishingOptions" => log_publishing_options(),
        "MaxUnits" => integer(),
        "MinUnits" => integer(),
        "PipelineArn" => String.t(),
        "PipelineConfigurationBody" => String.t(),
        "PipelineName" => String.t(),
        "PipelineRoleArn" => String.t(),
        "ServiceVpcEndpoints" => list(service_vpc_endpoint()),
        "Status" => list(any()),
        "StatusReason" => pipeline_status_reason(),
        "Tags" => list(tag()),
        "VpcEndpointService" => String.t(),
        "VpcEndpoints" => list(vpc_endpoint())
      }

  """
  @type pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type start_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disabled_operation_exception() :: %{
        "message" => String.t()
      }

  """
  @type disabled_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_progress_status() :: %{
        "ChangeProgressStages" => list(change_progress_stage()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "TotalNumberOfStages" => integer()
      }

  """
  @type change_progress_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("Arn") => String.t(),
        required("TagKeys") => list(String.t())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_log_destination() :: %{
        "LogGroup" => String.t()
      }

  """
  @type cloud_watch_log_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_pipeline_request() :: %{}

  """
  @type start_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      buffer_options() :: %{
        "PersistentBufferEnabled" => boolean()
      }

  """
  @type buffer_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipeline_blueprints_request() :: %{}

  """
  @type list_pipeline_blueprints_request() :: %{}

  @typedoc """

  ## Example:

      list_pipeline_blueprints_response() :: %{
        "Blueprints" => list(pipeline_blueprint_summary())
      }

  """
  @type list_pipeline_blueprints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
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

      create_pipeline_request() :: %{
        optional("BufferOptions") => buffer_options(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("LogPublishingOptions") => log_publishing_options(),
        optional("PipelineRoleArn") => String.t(),
        optional("Tags") => list(tag()),
        optional("VpcOptions") => vpc_options(),
        required("MaxUnits") => integer(),
        required("MinUnits") => integer(),
        required("PipelineConfigurationBody") => String.t(),
        required("PipelineName") => String.t()
      }

  """
  @type create_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_request() :: %{
        optional("BufferOptions") => buffer_options(),
        optional("EncryptionAtRestOptions") => encryption_at_rest_options(),
        optional("LogPublishingOptions") => log_publishing_options(),
        optional("MaxUnits") => integer(),
        optional("MinUnits") => integer(),
        optional("PipelineConfigurationBody") => String.t(),
        optional("PipelineRoleArn") => String.t()
      }

  """
  @type update_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_blueprint_request() :: %{
        optional("Format") => String.t()
      }

  """
  @type get_pipeline_blueprint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_pipeline_request() :: %{}

  """
  @type delete_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      get_pipeline_blueprint_response() :: %{
        "Blueprint" => pipeline_blueprint(),
        "Format" => String.t()
      }

  """
  @type get_pipeline_blueprint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_change_progress_request() :: %{}

  """
  @type get_pipeline_change_progress_request() :: %{}

  @typedoc """

  ## Example:

      pipeline_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Destinations" => list(pipeline_destination()),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxUnits" => integer(),
        "MinUnits" => integer(),
        "PipelineArn" => String.t(),
        "PipelineName" => String.t(),
        "Status" => list(any()),
        "StatusReason" => pipeline_status_reason(),
        "Tags" => list(tag())
      }

  """
  @type pipeline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_at_rest_options() :: %{
        "KmsKeyArn" => String.t()
      }

  """
  @type encryption_at_rest_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_endpoint() :: %{
        "VpcEndpointId" => String.t(),
        "VpcId" => String.t(),
        "VpcOptions" => vpc_options()
      }

  """
  @type vpc_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_blueprint() :: %{
        "BlueprintName" => String.t(),
        "DisplayDescription" => String.t(),
        "DisplayName" => String.t(),
        "PipelineConfigurationBody" => String.t(),
        "Service" => String.t(),
        "UseCase" => String.t()
      }

  """
  @type pipeline_blueprint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_publishing_options() :: %{
        "CloudWatchLogDestination" => cloud_watch_log_destination(),
        "IsLoggingEnabled" => boolean()
      }

  """
  @type log_publishing_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_blueprint_summary() :: %{
        "BlueprintName" => String.t(),
        "DisplayDescription" => String.t(),
        "DisplayName" => String.t(),
        "Service" => String.t(),
        "UseCase" => String.t()
      }

  """
  @type pipeline_blueprint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_pipeline_request() :: %{}

  """
  @type stop_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      change_progress_stage() :: %{
        "Description" => String.t(),
        "LastUpdatedAt" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type change_progress_stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_message() :: %{
        "Message" => String.t()
      }

  """
  @type validation_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      stop_pipeline_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type stop_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_pipeline_response() :: %{
        "Errors" => list(validation_message()),
        "isValid" => boolean()
      }

  """
  @type validate_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pipeline_request() :: %{}

  """
  @type get_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      pipeline_status_reason() :: %{
        "Description" => String.t()
      }

  """
  @type pipeline_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_destination() :: %{
        "Endpoint" => String.t(),
        "ServiceName" => String.t()
      }

  """
  @type pipeline_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("Arn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_options() :: %{
        "SecurityGroupIds" => list(String.t()),
        "SubnetIds" => list(String.t()),
        "VpcAttachmentOptions" => vpc_attachment_options(),
        "VpcEndpointManagement" => list(any())
      }

  """
  @type vpc_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_attachment_options() :: %{
        "AttachToVpc" => boolean(),
        "CidrBlock" => String.t()
      }

  """
  @type vpc_attachment_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_pipeline_request() :: %{
        required("PipelineConfigurationBody") => String.t()
      }

  """
  @type validate_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_pipeline_response() :: %{}

  """
  @type delete_pipeline_response() :: %{}

  @typedoc """

  ## Example:

      invalid_pagination_token_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_pagination_token_exception() :: %{String.t() => any()}

  @type create_pipeline_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type delete_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type get_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_pipeline_blueprint_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type get_pipeline_change_progress_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type list_pipeline_blueprints_errors() ::
          invalid_pagination_token_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | disabled_operation_exception()

  @type list_pipelines_errors() ::
          invalid_pagination_token_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | disabled_operation_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type start_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type stop_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type update_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | disabled_operation_exception()

  @type validate_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_exception()
          | disabled_operation_exception()

  def metadata do
    %{
      api_version: "2022-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "osis",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "OSIS",
      signature_version: "v4",
      signing_name: "osis",
      target_prefix: nil
    }
  end

  @doc """
  Creates an OpenSearch Ingestion pipeline.

  For more information, see [Creating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
  """
  @spec create_pipeline(map(), create_pipeline_request(), list()) ::
          {:ok, create_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pipeline_errors()}
  def create_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/createPipeline"
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
  Deletes an OpenSearch Ingestion pipeline.

  For more information, see [Deleting Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html).
  """
  @spec delete_pipeline(map(), String.t(), delete_pipeline_request(), list()) ::
          {:ok, delete_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pipeline_errors()}
  def delete_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/deletePipeline/#{AWS.Util.encode_uri(pipeline_name)}"
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
  Retrieves information about an OpenSearch Ingestion pipeline.
  """
  @spec get_pipeline(map(), String.t(), list()) ::
          {:ok, get_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pipeline_errors()}
  def get_pipeline(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specific blueprint for OpenSearch Ingestion.

  Blueprints are
  templates for the configuration needed for a `CreatePipeline` request. For more
  information, see [Using blueprints to create a
  pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
  """
  @spec get_pipeline_blueprint(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_pipeline_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pipeline_blueprint_errors()}
  def get_pipeline_blueprint(%Client{} = client, blueprint_name, format \\ nil, options \\ []) do
    url_path = "/2022-01-01/osis/getPipelineBlueprint/#{AWS.Util.encode_uri(blueprint_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns progress information for the current change happening on an OpenSearch
  Ingestion
  pipeline.

  Currently, this operation only returns information when a pipeline is being
  created.

  For more information, see [Tracking the status of pipeline creation](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress).
  """
  @spec get_pipeline_change_progress(map(), String.t(), list()) ::
          {:ok, get_pipeline_change_progress_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pipeline_change_progress_errors()}
  def get_pipeline_change_progress(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/2022-01-01/osis/getPipelineChangeProgress/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all available blueprints for Data Prepper.

  For more information, see
  [Using blueprints to create a pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint).
  """
  @spec list_pipeline_blueprints(map(), list_pipeline_blueprints_request(), list()) ::
          {:ok, list_pipeline_blueprints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pipeline_blueprints_errors()}
  def list_pipeline_blueprints(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/listPipelineBlueprints"
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
  Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services
  account and Region.

  For
  more information, see [Viewing Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html).
  """
  @spec list_pipelines(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pipelines_errors()}
  def list_pipelines(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2022-01-01/osis/listPipelines"
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
  Lists all resource tags associated with an OpenSearch Ingestion pipeline.

  For more information,
  see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/2022-01-01/osis/listTagsForResource"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts an OpenSearch Ingestion pipeline.

  For more information, see [Starting an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start).
  """
  @spec start_pipeline(map(), String.t(), start_pipeline_request(), list()) ::
          {:ok, start_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_pipeline_errors()}
  def start_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/startPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
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

  @doc """
  Stops an OpenSearch Ingestion pipeline.

  For more information, see [Stopping an OpenSearch Ingestion pipeline](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop).
  """
  @spec stop_pipeline(map(), String.t(), stop_pipeline_request(), list()) ::
          {:ok, stop_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_pipeline_errors()}
  def stop_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/stopPipeline/#{AWS.Util.encode_uri(pipeline_name)}"
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

  @doc """
  Tags an OpenSearch Ingestion pipeline.

  For more information, see [Tagging Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/tagResource"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Arn", "arn"}
      ]
      |> Request.build_params(input)

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
  Removes one or more tags from an OpenSearch Ingestion pipeline.

  For more information, see [Tagging Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/untagResource"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Arn", "arn"}
      ]
      |> Request.build_params(input)

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
  Updates an OpenSearch Ingestion pipeline.

  For more information, see [Updating Amazon OpenSearch Ingestion pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html).
  """
  @spec update_pipeline(map(), String.t(), update_pipeline_request(), list()) ::
          {:ok, update_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pipeline_errors()}
  def update_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/2022-01-01/osis/updatePipeline/#{AWS.Util.encode_uri(pipeline_name)}"
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

  @doc """
  Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to
  creation.

  For
  more information, see [Creating Amazon OpenSearch Ingestion
  pipelines](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html).
  """
  @spec validate_pipeline(map(), validate_pipeline_request(), list()) ::
          {:ok, validate_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_pipeline_errors()}
  def validate_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2022-01-01/osis/validatePipeline"
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
end
