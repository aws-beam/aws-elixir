# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Batch do
  @moduledoc """
  Using AWS Batch, you can run batch computing workloads on the AWS Cloud.

  Batch computing is a common means for developers, scientists, and engineers to
  access large amounts of compute resources. AWS Batch uses the advantages of this
  computing workload to remove the undifferentiated heavy lifting of configuring
  and managing required infrastructure. At the same time, it also adopts a
  familiar batch computing software approach. Given these advantages, AWS Batch
  can help you to efficiently provision resources in response to jobs submitted,
  thus effectively helping you to eliminate capacity constraints, reduce compute
  costs, and deliver your results more quickly.

  As a fully managed service, AWS Batch can run batch computing workloads of any
  scale. AWS Batch automatically provisions compute resources and optimizes
  workload distribution based on the quantity and scale of your specific
  workloads. With AWS Batch, there's no need to install or manage batch computing
  software. This means that you can focus your time and energy on analyzing
  results and solving your specific problems.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2016-08-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "batch",
      global?: false,
      protocol: "rest-json",
      service_id: "Batch",
      signature_version: "v4",
      signing_name: "batch",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a job in an AWS Batch job queue.

  Jobs that are in the `SUBMITTED`, `PENDING`, or `RUNNABLE` state are canceled.
  Jobs that have progressed to `STARTING` or `RUNNING` aren't canceled, but the
  API operation still succeeds, even if no job is canceled. These jobs must be
  terminated with the `TerminateJob` operation.
  """
  def cancel_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/canceljob"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an AWS Batch compute environment.

  You can create `MANAGED` or `UNMANAGED` compute environments. `MANAGED` compute
  environments can use Amazon EC2 or AWS Fargate resources. `UNMANAGED` compute
  environments can only use EC2 resources.

  In a managed compute environment, AWS Batch manages the capacity and instance
  types of the compute resources within the environment. This is based on the
  compute resource specification that you define or the [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  that you specify when you create the compute environment. Either, you can choose
  to use EC2 On-Demand Instances and EC2 Spot Instances. Or, you can use Fargate
  and Fargate Spot capacity in your managed compute environment. You can
  optionally set a maximum price so that Spot Instances only launch when the Spot
  Instance price is less than a specified percentage of the On-Demand price.

  Multi-node parallel jobs aren't supported on Spot Instances.

  In an unmanaged compute environment, you can manage your own EC2 compute
  resources and have a lot of flexibility with how you configure your compute
  resources. For example, you can use custom AMIs. However, you must verify that
  each of your AMIs meet the Amazon ECS container instance AMI specification. For
  more information, see [container instance AMIs](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html)
  in the *Amazon Elastic Container Service Developer Guide*. After you created
  your unmanaged compute environment, you can use the
  `DescribeComputeEnvironments` operation to find the Amazon ECS cluster that's
  associated with it. Then, launch your container instances into that Amazon ECS
  cluster. For more information, see [Launching an Amazon ECS container instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  AWS Batch doesn't upgrade the AMIs in a compute environment after the
  environment is created. For example, it doesn't update the AMIs when a newer
  version of the Amazon ECS optimized AMI is available. Therefore, you're
  responsible for managing the guest operating system (including its updates and
  security patches) and any additional application software or utilities that you
  install on the compute resources. To use a new AMI for your AWS Batch jobs,
  complete these steps:

     Create a new compute environment with the new AMI.

     Add the compute environment to an existing job queue.

     Remove the earlier compute environment from your job queue.

     Delete the earlier compute environment.
  """
  def create_compute_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/createcomputeenvironment"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an AWS Batch job queue.

  When you create a job queue, you associate one or more compute environments to
  the queue and assign an order of preference for the compute environments.

  You also set a priority to the job queue that determines the order that the AWS
  Batch scheduler places jobs onto its associated compute environments. For
  example, if a compute environment is associated with more than one job queue,
  the job queue with a higher priority is given preference for scheduling jobs to
  that compute environment.
  """
  def create_job_queue(%Client{} = client, input, options \\ []) do
    url_path = "/v1/createjobqueue"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an AWS Batch compute environment.

  Before you can delete a compute environment, you must set its state to
  `DISABLED` with the `UpdateComputeEnvironment` API operation and disassociate it
  from any job queues with the `UpdateJobQueue` API operation. Compute
  environments that use AWS Fargate resources must terminate all active jobs on
  that compute environment before deleting the compute environment. If this isn't
  done, the compute environment enters an invalid state.
  """
  def delete_compute_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deletecomputeenvironment"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified job queue.

  You must first disable submissions for a queue with the `UpdateJobQueue`
  operation. All jobs in the queue are eventually terminated when you delete a job
  queue. The jobs are terminated at a rate of about 16 jobs each second.

  It's not necessary to disassociate compute environments from a queue before
  submitting a `DeleteJobQueue` request.
  """
  def delete_job_queue(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deletejobqueue"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deregisters an AWS Batch job definition.

  Job definitions are permanently deleted after 180 days.
  """
  def deregister_job_definition(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deregisterjobdefinition"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes one or more of your compute environments.

  If you're using an unmanaged compute environment, you can use the
  `DescribeComputeEnvironment` operation to determine the `ecsClusterArn` that you
  should launch your Amazon ECS container instances into.
  """
  def describe_compute_environments(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describecomputeenvironments"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes a list of job definitions.

  You can specify a `status` (such as `ACTIVE`) to only return job definitions
  that match that status.
  """
  def describe_job_definitions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describejobdefinitions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes one or more of your job queues.
  """
  def describe_job_queues(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describejobqueues"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes a list of AWS Batch jobs.
  """
  def describe_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describejobs"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of AWS Batch jobs.

  You must specify only one of the following items:

    * A job queue ID to return a list of jobs in that job queue

    * A multi-node parallel job ID to return a list of nodes for that
  job

    * An array job ID to return a list of the children for that job

  You can filter the results by job status with the `jobStatus` parameter. If you
  don't specify a status, only `RUNNING` jobs are returned.
  """
  def list_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/v1/listjobs"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the tags for an AWS Batch resource.

  AWS Batch resources that support tags are compute environments, jobs, job
  definitions, and job queues. ARNs for child jobs of array and multi-node
  parallel (MNP) jobs are not supported.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Registers an AWS Batch job definition.
  """
  def register_job_definition(%Client{} = client, input, options \\ []) do
    url_path = "/v1/registerjobdefinition"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Submits an AWS Batch job from a job definition.

  Parameters that are specified during `SubmitJob` override parameters defined in
  the job definition. vCPU and memory requirements that are specified in the
  `ResourceRequirements` objects in the job definition are the exception. They
  can't be overridden this way using the `memory` and `vcpus` parameters. Rather,
  you must specify updates to job definition parameters in a
  `ResourceRequirements` object that's included in the `containerOverrides`
  parameter.

  Jobs that run on Fargate resources can't be guaranteed to run for more than 14
  days. This is because, after 14 days, Fargate resources might become unavailable
  and job might be terminated.
  """
  def submit_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/submitjob"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource aren't specified in the request parameters, they
  aren't changed. When a resource is deleted, the tags associated with that
  resource are deleted as well. AWS Batch resources that support tags are compute
  environments, jobs, job definitions, and job queues. ARNs for child jobs of
  array and multi-node parallel (MNP) jobs are not supported.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Terminates a job in a job queue.

  Jobs that are in the `STARTING` or `RUNNING` state are terminated, which causes
  them to transition to `FAILED`. Jobs that have not progressed to the `STARTING`
  state are cancelled.
  """
  def terminate_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/terminatejob"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes specified tags from an AWS Batch resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an AWS Batch compute environment.
  """
  def update_compute_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/updatecomputeenvironment"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a job queue.
  """
  def update_job_queue(%Client{} = client, input, options \\ []) do
    url_path = "/v1/updatejobqueue"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
