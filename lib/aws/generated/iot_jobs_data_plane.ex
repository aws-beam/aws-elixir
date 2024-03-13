# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTJobsDataPlane do
  @moduledoc """
  AWS IoT Jobs is a service that allows you to define a set of jobs — remote
  operations that are sent to
  and executed on one or more devices connected to AWS IoT.

  For example, you can define a job that instructs a
  set of devices to download and install application or firmware updates, reboot,
  rotate certificates, or perform
  remote troubleshooting operations.

  To create a job, you make a job document which is a description of the remote
  operations to be
  performed, and you specify a list of targets that should perform the operations.
  The targets can be individual
  things, thing groups or both.

  AWS IoT Jobs sends a message to inform the targets that a job is available. The
  target starts the
  execution of the job by downloading the job document, performing the operations
  it specifies, and reporting its
  progress to AWS IoT. The Jobs service provides commands to track the progress of
  a job on a specific target and
  for all the targets of the job
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      certificate_validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type certificate_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_execution_request() :: %{
        optional("executionNumber") => float(),
        optional("includeJobDocument") => boolean()
      }

  """
  @type describe_job_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_execution_response() :: %{
        "execution" => job_execution()
      }

  """
  @type describe_job_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_pending_job_executions_request() :: %{}

  """
  @type get_pending_job_executions_request() :: %{}

  @typedoc """

  ## Example:

      get_pending_job_executions_response() :: %{
        "inProgressJobs" => list(job_execution_summary()()),
        "queuedJobs" => list(job_execution_summary()())
      }

  """
  @type get_pending_job_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_state_transition_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_state_transition_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_execution() :: %{
        "approximateSecondsBeforeTimedOut" => float(),
        "executionNumber" => float(),
        "jobDocument" => String.t(),
        "jobId" => String.t(),
        "lastUpdatedAt" => float(),
        "queuedAt" => float(),
        "startedAt" => float(),
        "status" => list(any()),
        "statusDetails" => map(),
        "thingName" => String.t(),
        "versionNumber" => float()
      }

  """
  @type job_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_execution_state() :: %{
        "status" => list(any()),
        "statusDetails" => map(),
        "versionNumber" => float()
      }

  """
  @type job_execution_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_execution_summary() :: %{
        "executionNumber" => float(),
        "jobId" => String.t(),
        "lastUpdatedAt" => float(),
        "queuedAt" => float(),
        "startedAt" => float(),
        "versionNumber" => float()
      }

  """
  @type job_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_next_pending_job_execution_request() :: %{
        optional("statusDetails") => map(),
        optional("stepTimeoutInMinutes") => float()
      }

  """
  @type start_next_pending_job_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_next_pending_job_execution_response() :: %{
        "execution" => job_execution()
      }

  """
  @type start_next_pending_job_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      terminal_state_exception() :: %{
        "message" => String.t()
      }

  """
  @type terminal_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "payload" => binary()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_job_execution_request() :: %{
        optional("executionNumber") => float(),
        optional("expectedVersion") => float(),
        optional("includeJobDocument") => boolean(),
        optional("includeJobExecutionState") => boolean(),
        optional("statusDetails") => map(),
        optional("stepTimeoutInMinutes") => float(),
        required("status") => list(any())
      }

  """
  @type update_job_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_job_execution_response() :: %{
        "executionState" => job_execution_state(),
        "jobDocument" => String.t()
      }

  """
  @type update_job_execution_response() :: %{String.t() => any()}

  @type describe_job_execution_errors() ::
          throttling_exception()
          | terminal_state_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | certificate_validation_exception()

  @type get_pending_job_executions_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | certificate_validation_exception()

  @type start_next_pending_job_execution_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | certificate_validation_exception()

  @type update_job_execution_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_state_transition_exception()
          | invalid_request_exception()
          | certificate_validation_exception()

  def metadata do
    %{
      api_version: "2017-09-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.jobs.iot",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT Jobs Data Plane",
      signature_version: "v4",
      signing_name: "iot-jobs-data",
      target_prefix: nil
    }
  end

  @doc """
  Gets details of a job execution.
  """
  @spec describe_job_execution(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_job_execution_errors()}
  def describe_job_execution(
        %Client{} = client,
        job_id,
        thing_name,
        execution_number \\ nil,
        include_job_document \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_job_document) do
        [{"includeJobDocument", include_job_document} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(execution_number) do
        [{"executionNumber", execution_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the list of all jobs for a thing that are not in a terminal status.
  """
  @spec get_pending_job_executions(map(), String.t(), list()) ::
          {:ok, get_pending_job_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pending_job_executions_errors()}
  def get_pending_job_executions(%Client{} = client, thing_name, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution
  for a thing.
  """
  @spec start_next_pending_job_execution(
          map(),
          String.t(),
          start_next_pending_job_execution_request(),
          list()
        ) ::
          {:ok, start_next_pending_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_next_pending_job_execution_errors()}
  def start_next_pending_job_execution(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/$next"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the status of a job execution.
  """
  @spec update_job_execution(
          map(),
          String.t(),
          String.t(),
          update_job_execution_request(),
          list()
        ) ::
          {:ok, update_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_job_execution_errors()}
  def update_job_execution(%Client{} = client, job_id, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
