# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTJobsDataPlane do
  @moduledoc """
  AWS IoT Jobs is a service that allows you to define a set of jobs — remote
  operations that are sent to and executed on one or more devices connected to AWS
  IoT.

  For example, you can define a job that instructs a set of devices to download
  and install application or firmware updates, reboot, rotate certificates, or
  perform remote troubleshooting operations.

  To create a job, you make a job document which is a description of the remote
  operations to be performed, and you specify a list of targets that should
  perform the operations. The targets can be individual things, thing groups or
  both.

  AWS IoT Jobs sends a message to inform the targets that a job is available. The
  target starts the execution of the job by downloading the job document,
  performing the operations it specifies, and reporting its progress to AWS IoT.
  The Jobs service provides commands to track the progress of a job on a specific
  target and for all the targets of the job
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets the list of all jobs for a thing that are not in a terminal status.
  """
  def get_pending_job_executions(%Client{} = client, thing_name, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution
  for a thing.
  """
  def start_next_pending_job_execution(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/$next"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the status of a job execution.
  """
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
      nil
    )
  end
end
