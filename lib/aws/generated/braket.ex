# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Braket do
  @moduledoc """
  The Amazon Braket API Reference provides information about the operations and
  structures
  supported in Amazon Braket.

  Additional Resources:

    *

  [Amazon Braket Developer Guide](https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      cancel_job_request() :: %{}

  """
  @type cancel_job_request() :: %{}

  @typedoc """

  ## Example:

      search_quantum_tasks_response() :: %{
        optional("nextToken") => [String.t()],
        required("quantumTasks") => list(quantum_task_summary()())
      }

  """
  @type search_quantum_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quantum_task_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "deviceArn" => String.t(),
        "endedAt" => [non_neg_integer()],
        "outputS3Bucket" => [String.t()],
        "outputS3Directory" => [String.t()],
        "quantumTaskArn" => String.t(),
        "shots" => [float()],
        "status" => String.t(),
        "tags" => map()
      }

  """
  @type quantum_task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_quantum_task_request() :: %{
        optional("additionalAttributeNames") => list(String.t()())
      }

  """
  @type get_quantum_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        required("jobArn") => String.t()
      }

  """
  @type create_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_queue_info() :: %{
        "queue" => String.t(),
        "queuePriority" => String.t(),
        "queueSize" => [String.t()]
      }

  """
  @type device_queue_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      job_checkpoint_config() :: %{
        "localPath" => String.t(),
        "s3Uri" => String.t()
      }

  """
  @type job_checkpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_quantum_task_response() :: %{
        required("cancellationStatus") => String.t(),
        required("quantumTaskArn") => String.t()
      }

  """
  @type cancel_quantum_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_offline_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type device_offline_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_stopping_condition() :: %{
        "maxRuntimeInSeconds" => [integer()]
      }

  """
  @type job_stopping_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_devices_filter() :: %{
        "name" => [String.t()],
        "values" => list(String.t()())
      }

  """
  @type search_devices_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_retired_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type device_retired_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("associations") => list(association()()),
        optional("checkpointConfig") => job_checkpoint_config(),
        optional("hyperParameters") => map(),
        optional("inputDataConfig") => list(input_file_config()()),
        optional("stoppingCondition") => job_stopping_condition(),
        optional("tags") => map(),
        required("algorithmSpecification") => algorithm_specification(),
        required("clientToken") => String.t(),
        required("deviceConfig") => device_config(),
        required("instanceConfig") => instance_config(),
        required("jobName") => [String.t()],
        required("outputDataConfig") => job_output_data_config(),
        required("roleArn") => String.t()
      }

  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_quantum_task_response() :: %{
        optional("associations") => list(association()()),
        optional("endedAt") => [non_neg_integer()],
        optional("failureReason") => [String.t()],
        optional("jobArn") => String.t(),
        optional("queueInfo") => quantum_task_queue_info(),
        optional("tags") => map(),
        required("createdAt") => [non_neg_integer()],
        required("deviceArn") => String.t(),
        required("deviceParameters") => String.t(),
        required("outputS3Bucket") => [String.t()],
        required("outputS3Directory") => [String.t()],
        required("quantumTaskArn") => String.t(),
        required("shots") => [float()],
        required("status") => String.t()
      }

  """
  @type get_quantum_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_quantum_tasks_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("filters") => list(search_quantum_tasks_filter()())
      }

  """
  @type search_quantum_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_quantum_task_request() :: %{
        required("clientToken") => String.t()
      }

  """
  @type cancel_quantum_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      algorithm_specification() :: %{
        "containerImage" => container_image(),
        "scriptModeConfig" => script_mode_config()
      }

  """
  @type algorithm_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_output_data_config() :: %{
        "kmsKeyId" => String.t(),
        "s3Path" => String.t()
      }

  """
  @type job_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_config() :: %{
        "device" => String.t()
      }

  """
  @type device_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "device" => String.t(),
        "endedAt" => [non_neg_integer()],
        "jobArn" => String.t(),
        "jobName" => [String.t()],
        "startedAt" => [non_neg_integer()],
        "status" => String.t(),
        "tags" => map()
      }

  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      script_mode_config() :: %{
        "compressionType" => String.t(),
        "entryPoint" => [String.t()],
        "s3Uri" => String.t()
      }

  """
  @type script_mode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("filters") => list(search_jobs_filter()())
      }

  """
  @type search_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_image() :: %{
        "uri" => String.t()
      }

  """
  @type container_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      association() :: %{
        "arn" => String.t(),
        "type" => String.t()
      }

  """
  @type association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_response() :: %{
        optional("nextToken") => [String.t()],
        required("jobs") => list(job_summary()())
      }

  """
  @type search_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_quantum_tasks_filter() :: %{
        "name" => String.t(),
        "operator" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type search_quantum_tasks_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_filter() :: %{
        "name" => String.t(),
        "operator" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type search_jobs_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hybrid_job_queue_info() :: %{
        "message" => [String.t()],
        "position" => [String.t()],
        "queue" => String.t()
      }

  """
  @type hybrid_job_queue_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_devices_response() :: %{
        optional("nextToken") => [String.t()],
        required("devices") => list(device_summary()())
      }

  """
  @type search_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_event_details() :: %{
        "eventType" => String.t(),
        "message" => [String.t()],
        "timeOfEvent" => [non_neg_integer()]
      }

  """
  @type job_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_request() :: %{}

  """
  @type get_device_request() :: %{}

  @typedoc """

  ## Example:

      create_quantum_task_response() :: %{
        required("quantumTaskArn") => String.t()
      }

  """
  @type create_quantum_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_summary() :: %{
        "deviceArn" => String.t(),
        "deviceName" => [String.t()],
        "deviceStatus" => String.t(),
        "deviceType" => String.t(),
        "providerName" => [String.t()]
      }

  """
  @type device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_quantum_task_request() :: %{
        optional("associations") => list(association()()),
        optional("deviceParameters") => String.t(),
        optional("jobToken") => String.t(),
        optional("tags") => map(),
        required("action") => String.t(),
        required("clientToken") => String.t(),
        required("deviceArn") => String.t(),
        required("outputS3Bucket") => [String.t()],
        required("outputS3KeyPrefix") => [String.t()],
        required("shots") => [float()]
      }

  """
  @type create_quantum_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quantum_task_queue_info() :: %{
        "message" => [String.t()],
        "position" => [String.t()],
        "queue" => String.t(),
        "queuePriority" => String.t()
      }

  """
  @type quantum_task_queue_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_job_response() :: %{
        optional("associations") => list(association()()),
        optional("billableDuration") => [integer()],
        optional("checkpointConfig") => job_checkpoint_config(),
        optional("deviceConfig") => device_config(),
        optional("endedAt") => [non_neg_integer()],
        optional("events") => list(job_event_details()()),
        optional("failureReason") => String.t(),
        optional("hyperParameters") => map(),
        optional("inputDataConfig") => list(input_file_config()()),
        optional("queueInfo") => hybrid_job_queue_info(),
        optional("startedAt") => [non_neg_integer()],
        optional("stoppingCondition") => job_stopping_condition(),
        optional("tags") => map(),
        required("algorithmSpecification") => algorithm_specification(),
        required("createdAt") => [non_neg_integer()],
        required("instanceConfig") => instance_config(),
        required("jobArn") => String.t(),
        required("jobName") => [String.t()],
        required("outputDataConfig") => job_output_data_config(),
        required("roleArn") => String.t(),
        required("status") => String.t()
      }

  """
  @type get_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      instance_config() :: %{
        "instanceCount" => [integer()],
        "instanceType" => String.t(),
        "volumeSizeInGb" => [integer()]
      }

  """
  @type instance_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_request() :: %{
        optional("additionalAttributeNames") => list(String.t()())
      }

  """
  @type get_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "s3DataSource" => s3_data_source()
      }

  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_file_config() :: %{
        "channelName" => String.t(),
        "contentType" => String.t(),
        "dataSource" => data_source()
      }

  """
  @type input_file_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_job_response() :: %{
        required("cancellationStatus") => String.t(),
        required("jobArn") => String.t()
      }

  """
  @type cancel_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_devices_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("filters") => list(search_devices_filter()())
      }

  """
  @type search_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_response() :: %{
        optional("deviceQueueInfo") => list(device_queue_info()()),
        required("deviceArn") => String.t(),
        required("deviceCapabilities") => String.t(),
        required("deviceName") => [String.t()],
        required("deviceStatus") => String.t(),
        required("deviceType") => String.t(),
        required("providerName") => [String.t()]
      }

  """
  @type get_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_data_source() :: %{
        "s3Uri" => String.t()
      }

  """
  @type s3_data_source() :: %{String.t() => any()}

  @type cancel_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type cancel_quantum_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type create_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | internal_service_exception()
          | device_retired_exception()
          | device_offline_exception()

  @type create_quantum_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | internal_service_exception()
          | device_retired_exception()
          | device_offline_exception()

  @type get_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_quantum_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_service_exception()

  @type search_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_quantum_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_service_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_service_exception()

  def metadata do
    %{
      api_version: "2019-09-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: nil,
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Braket",
      signature_version: "v4",
      signing_name: "braket",
      target_prefix: nil
    }
  end

  @doc """
  Cancels an Amazon Braket job.
  """
  @spec cancel_job(map(), String.t(), cancel_job_request(), list()) ::
          {:ok, cancel_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_job_errors()}
  def cancel_job(%Client{} = client, job_arn, input, options \\ []) do
    url_path = "/job/#{AWS.Util.encode_uri(job_arn)}/cancel"
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
  Cancels the specified task.
  """
  @spec cancel_quantum_task(map(), String.t(), cancel_quantum_task_request(), list()) ::
          {:ok, cancel_quantum_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_quantum_task_errors()}
  def cancel_quantum_task(%Client{} = client, quantum_task_arn, input, options \\ []) do
    url_path = "/quantum-task/#{AWS.Util.encode_uri(quantum_task_arn)}/cancel"
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
  Creates an Amazon Braket job.
  """
  @spec create_job(map(), create_job_request(), list()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/job"
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
      201
    )
  end

  @doc """
  Creates a quantum task.
  """
  @spec create_quantum_task(map(), create_quantum_task_request(), list()) ::
          {:ok, create_quantum_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_quantum_task_errors()}
  def create_quantum_task(%Client{} = client, input, options \\ []) do
    url_path = "/quantum-task"
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
      201
    )
  end

  @doc """
  Retrieves the devices available in Amazon Braket.

  For backwards compatibility with older versions of BraketSchemas, OpenQASM
  information is omitted from GetDevice API calls. To get this information the
  user-agent
  needs to present a recent version of the BraketSchemas (1.8.0 or later). The
  Braket SDK
  automatically reports this for you. If you do not see OpenQASM results in the
  GetDevice
  response when using a Braket SDK, you may need to set AWS_EXECUTION_ENV
  environment
  variable to configure user-agent. See the code examples provided below for how
  to do
  this for the AWS CLI, Boto3, and the Go, Java, and JavaScript/TypeScript SDKs.
  """
  @spec get_device(map(), String.t(), list()) ::
          {:ok, get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_errors()}
  def get_device(%Client{} = client, device_arn, options \\ []) do
    url_path = "/device/#{AWS.Util.encode_uri(device_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified Amazon Braket job.
  """
  @spec get_job(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, job_arn, additional_attribute_names \\ nil, options \\ []) do
    url_path = "/job/#{AWS.Util.encode_uri(job_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(additional_attribute_names) do
        [{"additionalAttributeNames", additional_attribute_names} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified quantum task.
  """
  @spec get_quantum_task(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_quantum_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_quantum_task_errors()}
  def get_quantum_task(
        %Client{} = client,
        quantum_task_arn,
        additional_attribute_names \\ nil,
        options \\ []
      ) do
    url_path = "/quantum-task/#{AWS.Util.encode_uri(quantum_task_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(additional_attribute_names) do
        [{"additionalAttributeNames", additional_attribute_names} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Shows the tags associated with this resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Searches for devices using the specified filters.
  """
  @spec search_devices(map(), search_devices_request(), list()) ::
          {:ok, search_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_devices_errors()}
  def search_devices(%Client{} = client, input, options \\ []) do
    url_path = "/devices"
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
  Searches for Amazon Braket jobs that match the specified filter values.
  """
  @spec search_jobs(map(), search_jobs_request(), list()) ::
          {:ok, search_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_jobs_errors()}
  def search_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
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
  Searches for tasks that match the specified filter values.
  """
  @spec search_quantum_tasks(map(), search_quantum_tasks_request(), list()) ::
          {:ok, search_quantum_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_quantum_tasks_errors()}
  def search_quantum_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/quantum-tasks"
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
  Add a tag to the specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Remove tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
end
