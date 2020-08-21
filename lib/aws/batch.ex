# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Batch do
  @moduledoc """
  AWS Batch enables you to run batch computing workloads on the AWS Cloud.
  Batch computing is a common way for developers, scientists, and engineers
  to access large amounts of compute resources, and AWS Batch removes the
  undifferentiated heavy lifting of configuring and managing the required
  infrastructure. AWS Batch will be familiar to users of traditional batch
  computing software. This service can efficiently provision resources in
  response to jobs submitted in order to eliminate capacity constraints,
  reduce compute costs, and deliver results quickly.

  As a fully managed service, AWS Batch enables developers, scientists, and
  engineers to run batch computing workloads of any scale. AWS Batch
  automatically provisions compute resources and optimizes the workload
  distribution based on the quantity and scale of the workloads. With AWS
  Batch, there is no need to install or manage batch computing software,
  which allows you to focus on analyzing results and solving problems. AWS
  Batch reduces operational complexities, saves time, and reduces costs,
  which makes it easy for developers, scientists, and engineers to run their
  batch jobs in the AWS Cloud.
  """

  @doc """
  Cancels a job in an AWS Batch job queue. Jobs that are in the `SUBMITTED`,
  `PENDING`, or `RUNNABLE` state are cancelled. Jobs that have progressed to
  `STARTING` or `RUNNING` are not cancelled (but the API operation still
  succeeds, even if no job is cancelled); these jobs must be terminated with
  the `TerminateJob` operation.
  """
  def cancel_job(client, input, options \\ []) do
    path_ = "/v1/canceljob"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Creates an AWS Batch compute environment. You can create `MANAGED` or
  `UNMANAGED` compute environments.

  In a managed compute environment, AWS Batch manages the capacity and
  instance types of the compute resources within the environment. This is
  based on the compute resource specification that you define or the [launch
  template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  that you specify when you create the compute environment. You can choose to
  use Amazon EC2 On-Demand Instances or Spot Instances in your managed
  compute environment. You can optionally set a maximum price so that Spot
  Instances only launch when the Spot Instance price is below a specified
  percentage of the On-Demand price.

  <note> Multi-node parallel jobs are not supported on Spot Instances.

  </note> In an unmanaged compute environment, you can manage your own
  compute resources. This provides more compute resource configuration
  options, such as using a custom AMI, but you must ensure that your AMI
  meets the Amazon ECS container instance AMI specification. For more
  information, see [Container Instance
  AMIs](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html)
  in the *Amazon Elastic Container Service Developer Guide*. After you have
  created your unmanaged compute environment, you can use the
  `DescribeComputeEnvironments` operation to find the Amazon ECS cluster that
  is associated with it. Then, manually launch your container instances into
  that Amazon ECS cluster. For more information, see [Launching an Amazon ECS
  Container
  Instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  <note> AWS Batch does not upgrade the AMIs in a compute environment after
  it is created (for example, when a newer version of the Amazon
  ECS-optimized AMI is available). You are responsible for the management of
  the guest operating system (including updates and security patches) and any
  additional application software or utilities that you install on the
  compute resources. To use a new AMI for your AWS Batch jobs:

  <ol> <li> Create a new compute environment with the new AMI.

  </li> <li> Add the compute environment to an existing job queue.

  </li> <li> Remove the old compute environment from your job queue.

  </li> <li> Delete the old compute environment.

  </li> </ol> </note>
  """
  def create_compute_environment(client, input, options \\ []) do
    path_ = "/v1/createcomputeenvironment"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Creates an AWS Batch job queue. When you create a job queue, you associate
  one or more compute environments to the queue and assign an order of
  preference for the compute environments.

  You also set a priority to the job queue that determines the order in which
  the AWS Batch scheduler places jobs onto its associated compute
  environments. For example, if a compute environment is associated with more
  than one job queue, the job queue with a higher priority is given
  preference for scheduling jobs to that compute environment.
  """
  def create_job_queue(client, input, options \\ []) do
    path_ = "/v1/createjobqueue"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Deletes an AWS Batch compute environment.

  Before you can delete a compute environment, you must set its state to
  `DISABLED` with the `UpdateComputeEnvironment` API operation and
  disassociate it from any job queues with the `UpdateJobQueue` API
  operation.
  """
  def delete_compute_environment(client, input, options \\ []) do
    path_ = "/v1/deletecomputeenvironment"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Deletes the specified job queue. You must first disable submissions for a
  queue with the `UpdateJobQueue` operation. All jobs in the queue are
  terminated when you delete a job queue.

  It is not necessary to disassociate compute environments from a queue
  before submitting a `DeleteJobQueue` request.
  """
  def delete_job_queue(client, input, options \\ []) do
    path_ = "/v1/deletejobqueue"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Deregisters an AWS Batch job definition. Job definitions will be
  permanently deleted after 180 days.
  """
  def deregister_job_definition(client, input, options \\ []) do
    path_ = "/v1/deregisterjobdefinition"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Describes one or more of your compute environments.

  If you are using an unmanaged compute environment, you can use the
  `DescribeComputeEnvironment` operation to determine the `ecsClusterArn`
  that you should launch your Amazon ECS container instances into.
  """
  def describe_compute_environments(client, input, options \\ []) do
    path_ = "/v1/describecomputeenvironments"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Describes a list of job definitions. You can specify a `status` (such as
  `ACTIVE`) to only return job definitions that match that status.
  """
  def describe_job_definitions(client, input, options \\ []) do
    path_ = "/v1/describejobdefinitions"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Describes one or more of your job queues.
  """
  def describe_job_queues(client, input, options \\ []) do
    path_ = "/v1/describejobqueues"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Describes a list of AWS Batch jobs.
  """
  def describe_jobs(client, input, options \\ []) do
    path_ = "/v1/describejobs"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Returns a list of AWS Batch jobs.

  You must specify only one of the following:

  <ul> <li> a job queue ID to return a list of jobs in that job queue

  </li> <li> a multi-node parallel job ID to return a list of that job's
  nodes

  </li> <li> an array job ID to return a list of that job's children

  </li> </ul> You can filter the results by job status with the `jobStatus`
  parameter. If you do not specify a status, only `RUNNING` jobs are
  returned.
  """
  def list_jobs(client, input, options \\ []) do
    path_ = "/v1/listjobs"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Registers an AWS Batch job definition.
  """
  def register_job_definition(client, input, options \\ []) do
    path_ = "/v1/registerjobdefinition"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Submits an AWS Batch job from a job definition. Parameters specified during
  `SubmitJob` override parameters defined in the job definition.
  """
  def submit_job(client, input, options \\ []) do
    path_ = "/v1/submitjob"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Terminates a job in a job queue. Jobs that are in the `STARTING` or
  `RUNNING` state are terminated, which causes them to transition to
  `FAILED`. Jobs that have not progressed to the `STARTING` state are
  cancelled.
  """
  def terminate_job(client, input, options \\ []) do
    path_ = "/v1/terminatejob"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Updates an AWS Batch compute environment.
  """
  def update_compute_environment(client, input, options \\ []) do
    path_ = "/v1/updatecomputeenvironment"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @doc """
  Updates a job queue.
  """
  def update_job_queue(client, input, options \\ []) do
    path_ = "/v1/updatejobqueue"
    headers = []
    query = []
    request(client, :post, path_, query, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "batch"}
    host = get_host("batch", client)
    url = host
    |> get_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
