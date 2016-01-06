# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.ECS do
  @moduledoc """
  Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast,
  container management service that makes it easy to run, stop, and manage
  Docker containers on a cluster of EC2 instances. Amazon ECS lets you launch
  and stop container-enabled applications with simple API calls, allows you
  to get the state of your cluster from a centralized service, and gives you
  access to many familiar Amazon EC2 features like security groups, Amazon
  EBS volumes, and IAM roles.

  You can use Amazon ECS to schedule the placement of containers across your
  cluster based on your resource needs, isolation policies, and availability
  requirements. Amazon EC2 Container Service eliminates the need for you to
  operate your own cluster management and configuration management systems or
  worry about scaling your management infrastructure.
  """

  @doc """
  Creates a new Amazon ECS cluster. By default, your account receives a
  `default` cluster when you launch your first container instance. However,
  you can create your own cluster with a unique name with the `CreateCluster`
  action.
  """
  def create_cluster(client, input, options \\ []) do
    request(client, "CreateCluster", input, options)
  end

  @doc """
  Runs and maintains a desired number of tasks from a specified task
  definition. If the number of tasks running in a service drops below
  `desiredCount`, Amazon ECS spawns another instantiation of the task in the
  specified cluster. To update an existing service, see `UpdateService`.

  You can optionally specify a deployment configuration for your service.
  During a deployment (which is triggered by changing the task definition of
  a service with an `UpdateService` operation), the service scheduler uses
  the `minimumHealthyPercent` and `maximumPercent` parameters to determine
  the deployment strategy.

  If the `minimumHealthyPercent` is below 100%, the scheduler can ignore the
  `desiredCount` temporarily during a deployment. For example, if your
  service has a `desiredCount` of four tasks, a `minimumHealthyPercent` of
  50% allows the scheduler to stop two existing tasks before starting two new
  tasks. Tasks for services that *do not* use a load balancer are considered
  healthy if they are in the `RUNNING` state; tasks for services that *do*
  use a load balancer are considered healthy if they are in the `RUNNING`
  state and the container instance it is hosted on is reported as healthy by
  the load balancer. The default value for `minimumHealthyPercent` is 50% in
  the console and 100% for the AWS CLI, the AWS SDKs, and the APIs.

  The `maximumPercent` parameter represents an upper limit on the number of
  running tasks during a deployment, which enables you to define the
  deployment batch size. For example, if your service has a `desiredCount` of
  four tasks, a `maximumPercent` value of 200% starts four new tasks before
  stopping the four older tasks (provided that the cluster resources required
  to do this are available). The default value for `maximumPercent` is 200%.

  When the service scheduler launches new tasks, it attempts to balance them
  across the Availability Zones in your cluster with the following logic:

  <ul> <li> Determine which of the container instances in your cluster can
  support your service's task definition (for example, they have the required
  CPU, memory, ports, and container instance attributes).

  </li> <li> Sort the valid container instances by the fewest number of
  running tasks for this service in the same Availability Zone as the
  instance. For example, if zone A has one running service task and zones B
  and C each have zero, valid container instances in either zone B or C are
  considered optimal for placement.

  </li> <li> Place the new service task on a valid container instance in an
  optimal Availability Zone (based on the previous steps), favoring container
  instances with the fewest number of running tasks for this service.

  </li> </ul>
  """
  def create_service(client, input, options \\ []) do
    request(client, "CreateService", input, options)
  end

  @doc """
  Deletes the specified cluster. You must deregister all container instances
  from this cluster before you may delete it. You can list the container
  instances in a cluster with `ListContainerInstances` and deregister them
  with `DeregisterContainerInstance`.
  """
  def delete_cluster(client, input, options \\ []) do
    request(client, "DeleteCluster", input, options)
  end

  @doc """
  Deletes a specified service within a cluster. You can delete a service if
  you have no running tasks in it and the desired task count is zero. If the
  service is actively maintaining tasks, you cannot delete it, and you must
  update the service to a desired task count of zero. For more information,
  see `UpdateService`.

  <note> When you delete a service, if there are still running tasks that
  require cleanup, the service status moves from `ACTIVE` to `DRAINING`, and
  the service is no longer visible in the console or in `ListServices` API
  operations. After the tasks have stopped, then the service status moves
  from `DRAINING` to `INACTIVE`. Services in the `DRAINING` or `INACTIVE`
  status can still be viewed with `DescribeServices` API operations; however,
  in the future, `INACTIVE` services may be cleaned up and purged from Amazon
  ECS record keeping, and `DescribeServices` API operations on those services
  will return a `ServiceNotFoundException` error.

  </note>
  """
  def delete_service(client, input, options \\ []) do
    request(client, "DeleteService", input, options)
  end

  @doc """
  Deregisters an Amazon ECS container instance from the specified cluster.
  This instance is no longer available to run tasks.

  If you intend to use the container instance for some other purpose after
  deregistration, you should stop all of the tasks running on the container
  instance before deregistration to avoid any orphaned tasks from consuming
  resources.

  Deregistering a container instance removes the instance from a cluster, but
  it does not terminate the EC2 instance; if you are finished using the
  instance, be sure to terminate it in the Amazon EC2 console to stop
  billing.

  <note>When you terminate a container instance, it is automatically
  deregistered from your cluster.

  </note>
  """
  def deregister_container_instance(client, input, options \\ []) do
    request(client, "DeregisterContainerInstance", input, options)
  end

  @doc """
  Deregisters the specified task definition by family and revision. Upon
  deregistration, the task definition is marked as `INACTIVE`. Existing tasks
  and services that reference an `INACTIVE` task definition continue to run
  without disruption. Existing services that reference an `INACTIVE` task
  definition can still scale up or down by modifying the service's desired
  count.

  You cannot use an `INACTIVE` task definition to run new tasks or create new
  services, and you cannot update an existing service to reference an
  `INACTIVE` task definition (although there may be up to a 10 minute window
  following deregistration where these restrictions have not yet taken
  effect).
  """
  def deregister_task_definition(client, input, options \\ []) do
    request(client, "DeregisterTaskDefinition", input, options)
  end

  @doc """
  Describes one or more of your clusters.
  """
  def describe_clusters(client, input, options \\ []) do
    request(client, "DescribeClusters", input, options)
  end

  @doc """
  Describes Amazon EC2 Container Service container instances. Returns
  metadata about registered and remaining resources on each container
  instance requested.
  """
  def describe_container_instances(client, input, options \\ []) do
    request(client, "DescribeContainerInstances", input, options)
  end

  @doc """
  Describes the specified services running in your cluster.
  """
  def describe_services(client, input, options \\ []) do
    request(client, "DescribeServices", input, options)
  end

  @doc """
  Describes a task definition. You can specify a `family` and `revision` to
  find information about a specific task definition, or you can simply
  specify the family to find the latest `ACTIVE` revision in that family.

  <note> You can only describe `INACTIVE` task definitions while an active
  task or service references them.

  </note>
  """
  def describe_task_definition(client, input, options \\ []) do
    request(client, "DescribeTaskDefinition", input, options)
  end

  @doc """
  Describes a specified task or tasks.
  """
  def describe_tasks(client, input, options \\ []) do
    request(client, "DescribeTasks", input, options)
  end

  @doc """
  <note>This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Returns an endpoint for the Amazon EC2 Container Service agent to
  poll for updates.
  """
  def discover_poll_endpoint(client, input, options \\ []) do
    request(client, "DiscoverPollEndpoint", input, options)
  end

  @doc """
  Returns a list of existing clusters.
  """
  def list_clusters(client, input, options \\ []) do
    request(client, "ListClusters", input, options)
  end

  @doc """
  Returns a list of container instances in a specified cluster.
  """
  def list_container_instances(client, input, options \\ []) do
    request(client, "ListContainerInstances", input, options)
  end

  @doc """
  Lists the services that are running in a specified cluster.
  """
  def list_services(client, input, options \\ []) do
    request(client, "ListServices", input, options)
  end

  @doc """
  Returns a list of task definition families that are registered to your
  account (which may include task definition families that no longer have any
  `ACTIVE` task definitions). You can filter the results with the
  `familyPrefix` parameter.
  """
  def list_task_definition_families(client, input, options \\ []) do
    request(client, "ListTaskDefinitionFamilies", input, options)
  end

  @doc """
  Returns a list of task definitions that are registered to your account. You
  can filter the results by family name with the `familyPrefix` parameter or
  by status with the `status` parameter.
  """
  def list_task_definitions(client, input, options \\ []) do
    request(client, "ListTaskDefinitions", input, options)
  end

  @doc """
  Returns a list of tasks for a specified cluster. You can filter the results
  by family name, by a particular container instance, or by the desired
  status of the task with the `family`, `containerInstance`, and
  `desiredStatus` parameters.
  """
  def list_tasks(client, input, options \\ []) do
    request(client, "ListTasks", input, options)
  end

  @doc """
  <note>This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Registers an EC2 instance into the specified cluster. This instance
  becomes available to place containers on.
  """
  def register_container_instance(client, input, options \\ []) do
    request(client, "RegisterContainerInstance", input, options)
  end

  @doc """
  Registers a new task definition from the supplied `family` and
  `containerDefinitions`. Optionally, you can add data volumes to your
  containers with the `volumes` parameter. For more information about task
  definition parameters and defaults, see [Amazon ECS Task
  Definitions](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def register_task_definition(client, input, options \\ []) do
    request(client, "RegisterTaskDefinition", input, options)
  end

  @doc """
  Start a task using random placement and the default Amazon ECS scheduler.
  To use your own scheduler or place a task on a specific container instance,
  use `StartTask` instead.

  <important> The `count` parameter is limited to 10 tasks per call.

  </important>
  """
  def run_task(client, input, options \\ []) do
    request(client, "RunTask", input, options)
  end

  @doc """
  Starts a new task from the specified task definition on the specified
  container instance or instances. To use the default Amazon ECS scheduler to
  place your task, use `RunTask` instead.

  <important> The list of container instances to start tasks on is limited to
  10.

  </important>
  """
  def start_task(client, input, options \\ []) do
    request(client, "StartTask", input, options)
  end

  @doc """
  Stops a running task.

  When `StopTask` is called on a task, the equivalent of `docker stop` is
  issued to the containers running in the task. This results in a `SIGTERM`
  and a 30-second timeout, after which `SIGKILL` is sent and the containers
  are forcibly stopped. If the container handles the `SIGTERM` gracefully and
  exits within 30 seconds from receiving it, no `SIGKILL` is sent.
  """
  def stop_task(client, input, options \\ []) do
    request(client, "StopTask", input, options)
  end

  @doc """
  <note>This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Sent to acknowledge that a container changed states.
  """
  def submit_container_state_change(client, input, options \\ []) do
    request(client, "SubmitContainerStateChange", input, options)
  end

  @doc """
  <note>This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Sent to acknowledge that a task changed states.
  """
  def submit_task_state_change(client, input, options \\ []) do
    request(client, "SubmitTaskStateChange", input, options)
  end

  @doc """
  Updates the Amazon ECS container agent on a specified container instance.
  Updating the Amazon ECS container agent does not interrupt running tasks or
  services on the container instance. The process for updating the agent
  differs depending on whether your container instance was launched with the
  Amazon ECS-optimized AMI or another operating system.

  `UpdateContainerAgent` requires the Amazon ECS-optimized AMI or Amazon
  Linux with the `ecs-init` service installed and running. For help updating
  the Amazon ECS container agent on other operating systems, see [Manually
  Updating the Amazon ECS Container
  Agent](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def update_container_agent(client, input, options \\ []) do
    request(client, "UpdateContainerAgent", input, options)
  end

  @doc """
  Modifies the desired count, deployment configuration, or task definition
  used in a service.

  You can add to or subtract from the number of instantiations of a task
  definition in a service by specifying the cluster that the service is
  running in and a new `desiredCount` parameter.

  You can use `UpdateService` to modify your task definition and deploy a new
  version of your service.

  You can also update the deployment configuration of a service. When a
  deployment is triggered by updating the task definition of a service, the
  service scheduler uses the deployment configuration parameters,
  `minimumHealthyPercent` and `maximumPercent`, to determine the deployment
  strategy.

  If the `minimumHealthyPercent` is below 100%, the scheduler can ignore the
  `desiredCount` temporarily during a deployment. For example, if your
  service has a `desiredCount` of four tasks, a `minimumHealthyPercent` of
  50% allows the scheduler to stop two existing tasks before starting two new
  tasks. Tasks for services that *do not* use a load balancer are considered
  healthy if they are in the `RUNNING` state; tasks for services that *do*
  use a load balancer are considered healthy if they are in the `RUNNING`
  state and the container instance it is hosted on is reported as healthy by
  the load balancer.

  The `maximumPercent` parameter represents an upper limit on the number of
  running tasks during a deployment, which enables you to define the
  deployment batch size. For example, if your service has a `desiredCount` of
  four tasks, a `maximumPercent` value of 200% starts four new tasks before
  stopping the four older tasks (provided that the cluster resources required
  to do this are available).

  When `UpdateService` stops a task during a deployment, the equivalent of
  `docker stop` is issued to the containers running in the task. This results
  in a `SIGTERM` and a 30-second timeout, after which `SIGKILL` is sent and
  the containers are forcibly stopped. If the container handles the `SIGTERM`
  gracefully and exits within 30 seconds from receiving it, no `SIGKILL` is
  sent.

  When the service scheduler launches new tasks, it attempts to balance them
  across the Availability Zones in your cluster with the following logic:

  <ul> <li> Determine which of the container instances in your cluster can
  support your service's task definition (for example, they have the required
  CPU, memory, ports, and container instance attributes).

  </li> <li> Sort the valid container instances by the fewest number of
  running tasks for this service in the same Availability Zone as the
  instance. For example, if zone A has one running service task and zones B
  and C each have zero, valid container instances in either zone B or C are
  considered optimal for placement.

  </li> <li> Place the new service task on a valid container instance in an
  optimal Availability Zone (based on the previous steps), favoring container
  instances with the fewest number of running tasks for this service.

  </li> </ul>
  """
  def update_service(client, input, options \\ []) do
    request(client, "UpdateService", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "ecs"}
    host = get_host("ecs", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AmazonEC2ContainerServiceV20141113.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}"
  end

end
