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
  `desiredCount`, Amazon ECS spawns another copy of the task in the specified
  cluster. To update an existing service, see `UpdateService`.

  In addition to maintaining the desired count of tasks in your service, you
  can optionally run your service behind a load balancer. The load balancer
  distributes traffic across the tasks that are associated with the service.
  For more information, see [Service Load
  Balancing](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  You can optionally specify a deployment configuration for your service.
  During a deployment (which is triggered by changing the task definition or
  the desired count of a service with an `UpdateService` operation), the
  service scheduler uses the `minimumHealthyPercent` and `maximumPercent`
  parameters to determine the deployment strategy.

  The `minimumHealthyPercent` represents a lower limit on the number of your
  service's tasks that must remain in the `RUNNING` state during a
  deployment, as a percentage of the `desiredCount` (rounded up to the
  nearest integer). This parameter enables you to deploy without using
  additional cluster capacity. For example, if `desiredCount` is four tasks
  and the minimum is 50%, the scheduler can stop two existing tasks to free
  up cluster capacity before starting two new tasks. Tasks for services that
  do not use a load balancer are considered healthy if they are in the
  `RUNNING` state. Tasks for services that use a load balancer are considered
  healthy if they are in the `RUNNING` state and the container instance they
  are hosted on is reported as healthy by the load balancer. The default
  value is 50% in the console and 100% for the AWS CLI, the AWS SDKs, and the
  APIs.

  The `maximumPercent` parameter represents an upper limit on the number of
  your service's tasks that are allowed in the `RUNNING` or `PENDING` state
  during a deployment, as a percentage of the `desiredCount` (rounded down to
  the nearest integer). This parameter enables you to define the deployment
  batch size. For example, if `desiredCount` is four tasks and the maximum is
  200%, the scheduler can start four new tasks before stopping the four older
  tasks (provided that the cluster resources required to do this are
  available). The default value is 200%.

  When the service scheduler launches new tasks, it determines task placement
  in your cluster using the following logic:

  <ul> <li> Determine which of the container instances in your cluster can
  support your service's task definition (for example, they have the required
  CPU, memory, ports, and container instance attributes).

  </li> <li> By default, the service scheduler attempts to balance tasks
  across Availability Zones in this manner (although you can choose a
  different placement strategy):

  <ul> <li> Sort the valid container instances by the fewest number of
  running tasks for this service in the same Availability Zone as the
  instance. For example, if zone A has one running service task and zones B
  and C each have zero, valid container instances in either zone B or C are
  considered optimal for placement.

  </li> <li> Place the new service task on a valid container instance in an
  optimal Availability Zone (based on the previous steps), favoring container
  instances with the fewest number of running tasks for this service.

  </li> </ul> </li> </ul>
  """
  def create_service(client, input, options \\ []) do
    request(client, "CreateService", input, options)
  end

  @doc """
  Deletes one or more custom attributes from an Amazon ECS resource.
  """
  def delete_attributes(client, input, options \\ []) do
    request(client, "DeleteAttributes", input, options)
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

  <note> If you terminate a running container instance, Amazon ECS
  automatically deregisters the instance from your cluster (stopped container
  instances or instances with disconnected agents are not automatically
  deregistered when terminated).

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
  <note> This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Returns an endpoint for the Amazon EC2 Container Service agent to
  poll for updates.
  """
  def discover_poll_endpoint(client, input, options \\ []) do
    request(client, "DiscoverPollEndpoint", input, options)
  end

  @doc """
  Lists the attributes for Amazon ECS resources within a specified target
  type and cluster. When you specify a target type and cluster,
  `LisAttributes` returns a list of attribute objects, one for each attribute
  on each resource. You can filter the list of results to a single attribute
  name to only return results that have that name. You can also filter the
  results by attribute name and value, for example, to see which container
  instances in a cluster are running a Linux AMI (`ecs.os-type=linux`).
  """
  def list_attributes(client, input, options \\ []) do
    request(client, "ListAttributes", input, options)
  end

  @doc """
  Returns a list of existing clusters.
  """
  def list_clusters(client, input, options \\ []) do
    request(client, "ListClusters", input, options)
  end

  @doc """
  Returns a list of container instances in a specified cluster. You can
  filter the results of a `ListContainerInstances` operation with cluster
  query language statements inside the `filter` parameter. For more
  information, see [Cluster Query
  Language](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
  in the *Amazon EC2 Container Service Developer Guide*.
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
  `ACTIVE` task definition revisions).

  You can filter out task definition families that do not contain any
  `ACTIVE` task definition revisions by setting the `status` parameter to
  `ACTIVE`. You can also filter the results with the `familyPrefix`
  parameter.
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

  Recently-stopped tasks might appear in the returned results. Currently,
  stopped tasks appear in the returned results for at least one hour.
  """
  def list_tasks(client, input, options \\ []) do
    request(client, "ListTasks", input, options)
  end

  @doc """
  Create or update an attribute on an Amazon ECS resource. If the attribute
  does not exist, it is created. If the attribute exists, its value is
  replaced with the specified value. To delete an attribute, use
  `DeleteAttributes`. For more information, see
  [Attributes](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
  in the *Amazon EC2 Container Service Developer Guide*.
  """
  def put_attributes(client, input, options \\ []) do
    request(client, "PutAttributes", input, options)
  end

  @doc """
  <note> This action is only used by the Amazon EC2 Container Service agent,
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

  You can specify an IAM role for your task with the `taskRoleArn` parameter.
  When you specify an IAM role for a task, its containers can then use the
  latest versions of the AWS CLI or SDKs to make API requests to the AWS
  services that are specified in the IAM policy associated with the role. For
  more information, see [IAM Roles for
  Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  You can specify a Docker networking mode for the containers in your task
  definition with the `networkMode` parameter. The available network modes
  correspond to those described in [Network
  settings](https://docs.docker.com/engine/reference/run/#/network-settings)
  in the Docker run reference.
  """
  def register_task_definition(client, input, options \\ []) do
    request(client, "RegisterTaskDefinition", input, options)
  end

  @doc """
  Starts a new task using the specified task definition.

  You can allow Amazon ECS to place tasks for you, or you can customize how
  Amazon ECS places tasks using placement constraints and placement
  strategies. For more information, see [Scheduling
  Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon EC2 Container Service Developer Guide*.

  Alternatively, you can use `StartTask` to use your own scheduler or place
  tasks manually on specific container instances.
  """
  def run_task(client, input, options \\ []) do
    request(client, "RunTask", input, options)
  end

  @doc """
  Starts a new task from the specified task definition on the specified
  container instance or instances.

  Alternatively, you can use `RunTask` to place tasks for you. For more
  information, see [Scheduling
  Tasks](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon EC2 Container Service Developer Guide*.
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
  <note> This action is only used by the Amazon EC2 Container Service agent,
  and it is not intended for use outside of the agent.

  </note> Sent to acknowledge that a container changed states.
  """
  def submit_container_state_change(client, input, options \\ []) do
    request(client, "SubmitContainerStateChange", input, options)
  end

  @doc """
  <note> This action is only used by the Amazon EC2 Container Service agent,
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
  Modifies the status of an Amazon ECS container instance.

  You can change the status of a container instance to `DRAINING` to manually
  remove an instance from a cluster, for example to perform system updates,
  update the Docker daemon, or scale down the cluster size.

  When you set a container instance to `DRAINING`, Amazon ECS prevents new
  tasks from being scheduled for placement on the container instance and
  replacement service tasks are started on other container instances in the
  cluster if the resources are available. Service tasks on the container
  instance that are in the `PENDING` state are stopped immediately.

  Service tasks on the container instance that are in the `RUNNING` state are
  stopped and replaced according the service's deployment configuration
  parameters, `minimumHealthyPercent` and `maximumPercent`. Note that you can
  change the deployment configuration of your service using `UpdateService`.

  <ul> <li> If `minimumHealthyPercent` is below 100%, the scheduler can
  ignore `desiredCount` temporarily during task replacement. For example,
  `desiredCount` is four tasks, a minimum of 50% allows the scheduler to stop
  two existing tasks before starting two new tasks. If the minimum is 100%,
  the service scheduler can't remove existing tasks until the replacement
  tasks are considered healthy. Tasks for services that do not use a load
  balancer are considered healthy if they are in the `RUNNING` state. Tasks
  for services that use a load balancer are considered healthy if they are in
  the `RUNNING` state and the container instance they are hosted on is
  reported as healthy by the load balancer.

  </li> <li> The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during task replacement, which enables you to
  define the replacement batch size. For example, if `desiredCount` of four
  tasks, a maximum of 200% starts four new tasks before stopping the four
  tasks to be drained (provided that the cluster resources required to do
  this are available). If the maximum is 100%, then replacement tasks can't
  start until the draining tasks have stopped.

  </li> </ul> Any `PENDING` or `RUNNING` tasks that do not belong to a
  service are not affected; you must wait for them to finish or stop them
  manually.

  A container instance has completed draining when it has no more `RUNNING`
  tasks. You can verify this using `ListTasks`.

  When you set a container instance to `ACTIVE`, the Amazon ECS scheduler can
  begin scheduling tasks on the instance again.
  """
  def update_container_instances_state(client, input, options \\ []) do
    request(client, "UpdateContainerInstancesState", input, options)
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

  <ul> <li> If `minimumHealthyPercent` is below 100%, the scheduler can
  ignore `desiredCount` temporarily during a deployment. For example, if
  `desiredCount` is four tasks, a minimum of 50% allows the scheduler to stop
  two existing tasks before starting two new tasks. Tasks for services that
  do not use a load balancer are considered healthy if they are in the
  `RUNNING` state. Tasks for services that use a load balancer are considered
  healthy if they are in the `RUNNING` state and the container instance they
  are hosted on is reported as healthy by the load balancer.

  </li> <li> The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during a deployment, which enables you to define
  the deployment batch size. For example, if `desiredCount` is four tasks, a
  maximum of 200% starts four new tasks before stopping the four older tasks
  (provided that the cluster resources required to do this are available).

  </li> </ul> When `UpdateService` stops a task during a deployment, the
  equivalent of `docker stop` is issued to the containers running in the
  task. This results in a `SIGTERM` and a 30-second timeout, after which
  `SIGKILL` is sent and the containers are forcibly stopped. If the container
  handles the `SIGTERM` gracefully and exits within 30 seconds from receiving
  it, no `SIGKILL` is sent.

  When the service scheduler launches new tasks, it determines task placement
  in your cluster with the following logic:

  <ul> <li> Determine which of the container instances in your cluster can
  support your service's task definition (for example, they have the required
  CPU, memory, ports, and container instance attributes).

  </li> <li> By default, the service scheduler attempts to balance tasks
  across Availability Zones in this manner (although you can choose a
  different placement strategy):

  <ul> <li> Sort the valid container instances by the fewest number of
  running tasks for this service in the same Availability Zone as the
  instance. For example, if zone A has one running service task and zones B
  and C each have zero, valid container instances in either zone B or C are
  considered optimal for placement.

  </li> <li> Place the new service task on a valid container instance in an
  optimal Availability Zone (based on the previous steps), favoring container
  instances with the fewest number of running tasks for this service.

  </li> </ul> </li> </ul> When the service scheduler stops running tasks, it
  attempts to maintain balance across the Availability Zones in your cluster
  using the following logic:

  <ul> <li> Sort the container instances by the largest number of running
  tasks for this service in the same Availability Zone as the instance. For
  example, if zone A has one running service task and zones B and C each have
  two, container instances in either zone B or C are considered optimal for
  termination.

  </li> <li> Stop the task on a container instance in an optimal Availability
  Zone (based on the previous steps), favoring container instances with the
  largest number of running tasks for this service.

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
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
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
    "#{proto}://#{host}:#{port}/"
  end

end
