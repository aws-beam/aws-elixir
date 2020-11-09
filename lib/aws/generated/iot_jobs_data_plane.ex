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

  @doc """
  Gets details of a job execution.
  """
  def describe_job_execution(client, job_id, thing_name, execution_number \\ nil, include_job_document \\ nil, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(include_job_document) do
      [{"includeJobDocument", include_job_document} | query_]
    else
      query_
    end
    query_ = if !is_nil(execution_number) do
      [{"executionNumber", execution_number} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets the list of all jobs for a thing that are not in a terminal status.
  """
  def get_pending_job_executions(client, thing_name, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution
  for a thing.
  """
  def start_next_pending_job_execution(client, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs/$next"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the status of a job execution.
  """
  def update_job_execution(client, job_id, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "iot-jobs-data"}
    host = build_host("data.jobs.iot", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
