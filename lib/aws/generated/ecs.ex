# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECS do
  @moduledoc """
  Amazon Elastic Container Service

  Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast,
  container management service.

  It makes it easy to run, stop, and manage Docker containers. You can host your
  cluster on a serverless infrastructure that's managed by Amazon ECS by launching
  your services or tasks on Fargate. For more control, you can host your tasks on
  a cluster of Amazon Elastic Compute Cloud (Amazon EC2) or External (on-premises)
  instances that you manage.

  Amazon ECS makes it easy to launch and stop container-based applications with
  simple API calls. This makes it easy to get the state of your cluster from a
  centralized service, and gives you access to many familiar Amazon EC2 features.

  You can use Amazon ECS to schedule the placement of containers across your
  cluster based on your resource needs, isolation policies, and availability
  requirements. With Amazon ECS, you don't need to operate your own cluster
  management and configuration management systems. You also don't need to worry
  about scaling your management infrastructure.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "Amazon ECS",
      api_version: "2014-11-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ecs",
      global?: false,
      protocol: "json",
      service_id: "ECS",
      signature_version: "v4",
      signing_name: "ecs",
      target_prefix: "AmazonEC2ContainerServiceV20141113"
    }
  end

  @doc """
  Creates a new capacity provider.

  Capacity providers are associated with an Amazon ECS cluster and are used in
  capacity provider strategies to facilitate cluster auto scaling.

  Only capacity providers that use an Auto Scaling group can be created. Amazon
  ECS tasks on Fargate use the `FARGATE` and `FARGATE_SPOT` capacity providers.
  These providers are available to all accounts in the Amazon Web Services Regions
  that Fargate supports.
  """
  def create_capacity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCapacityProvider", input, options)
  end

  @doc """
  Creates a new Amazon ECS cluster.

  By default, your account receives a `default` cluster when you launch your first
  container instance. However, you can create your own cluster with a unique name
  with the `CreateCluster` action.

  When you call the `CreateCluster` API operation, Amazon ECS attempts to create
  the Amazon ECS service-linked role for your account. This is so that it can
  manage required resources in other Amazon Web Services services on your behalf.
  However, if the user that makes the call doesn't have permissions to create the
  service-linked role, it isn't created. For more information, see [Using service-linked roles for Amazon
  ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Runs and maintains your desired number of tasks from a specified task
  definition.

  If the number of tasks running in a service drops below the `desiredCount`,
  Amazon ECS runs another copy of the task in the specified cluster. To update an
  existing service, see the `UpdateService` action.

  Starting April 15, 2023, Amazon Web Services will not onboard new customers to
  Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.

  In addition to maintaining the desired count of tasks in your service, you can
  optionally run your service behind one or more load balancers. The load
  balancers distribute traffic across the tasks that are associated with the
  service. For more information, see [Service load balancing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  Tasks for services that don't use a load balancer are considered healthy if
  they're in the `RUNNING` state. Tasks for services that use a load balancer are
  considered healthy if they're in the `RUNNING` state and are reported as healthy
  by the load balancer.

  There are two service scheduler strategies available:

    * `REPLICA` - The replica scheduling strategy places and maintains
  your desired number of tasks across your cluster. By default, the service
  scheduler spreads tasks across Availability Zones. You can use task placement
  strategies and constraints to customize task placement decisions. For more
  information, see [Service scheduler concepts](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
  in the *Amazon Elastic Container Service Developer Guide*.

    * `DAEMON` - The daemon scheduling strategy deploys exactly one task
  on each active container instance that meets all of the task placement
  constraints that you specify in your cluster. The service scheduler also
  evaluates the task placement constraints for running tasks. It also stops tasks
  that don't meet the placement constraints. When using this strategy, you don't
  need to specify a desired number of tasks, a task placement strategy, or use
  Service Auto Scaling policies. For more information, see [Service scheduler concepts](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can optionally specify a deployment configuration for your service. The
  deployment is initiated by changing properties. For example, the deployment
  might be initiated by the task definition or by your desired count of a service.
  This is done with an `UpdateService` operation. The default value for a replica
  service for `minimumHealthyPercent` is 100%. The default value for a daemon
  service for `minimumHealthyPercent` is 0%.

  If a service uses the `ECS` deployment controller, the minimum healthy percent
  represents a lower limit on the number of tasks in a service that must remain in
  the `RUNNING` state during a deployment. Specifically, it represents it as a
  percentage of your desired number of tasks (rounded up to the nearest integer).
  This happens when any of your container instances are in the `DRAINING` state if
  the service contains tasks using the EC2 launch type. Using this parameter, you
  can deploy without using additional cluster capacity. For example, if you set
  your service to have desired number of four tasks and a minimum healthy percent
  of 50%, the scheduler might stop two existing tasks to free up cluster capacity
  before starting two new tasks. If they're in the `RUNNING` state, tasks for
  services that don't use a load balancer are considered healthy . If they're in
  the `RUNNING` state and reported as healthy by the load balancer, tasks for
  services that *do* use a load balancer are considered healthy . The default
  value for minimum healthy percent is 100%.

  If a service uses the `ECS` deployment controller, the ## maximum percent
  parameter represents an upper limit on the number of tasks in a service that are
  allowed in the `RUNNING` or `PENDING` state during a deployment. Specifically,
  it represents it as a percentage of the desired number of tasks (rounded down to
  the nearest integer). This happens when any of your container instances are in
  the `DRAINING` state if the service contains tasks using the EC2 launch type.
  Using this parameter, you can define the deployment batch size. For example, if
  your service has a desired number of four tasks and a maximum percent value of
  200%, the scheduler may start four new tasks before stopping the four older
  tasks (provided that the cluster resources required to do this are available).
  The default value for maximum percent is 200%.

  If a service uses either the `CODE_DEPLOY` or `EXTERNAL` deployment controller
  types and tasks that use the EC2 launch type, the ## minimum healthy percent
  and **maximum percent** values are used only to define the lower and upper limit
  on the number of the tasks in the service that remain in the `RUNNING` state.
  This is while the container instances are in the `DRAINING` state. If the tasks
  in the service use the Fargate launch type, the minimum healthy percent and
  maximum percent values aren't used. This is the case even if they're currently
  visible when describing your service.

  When creating a service that uses the `EXTERNAL` deployment controller, you can
  specify only parameters that aren't controlled at the task set level. The only
  required parameter is the service name. You control your services using the
  `CreateTaskSet` operation. For more information, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  When the service scheduler launches new tasks, it determines task placement. For
  information about task placement and task placement strategies, see [Amazon ECS task
  placement](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def create_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Create a task set in the specified cluster and service.

  This is used when a service uses the `EXTERNAL` deployment controller type. For
  more information, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def create_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTaskSet", input, options)
  end

  @doc """
  Disables an account setting for a specified user, role, or the root user for an
  account.
  """
  def delete_account_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccountSetting", input, options)
  end

  @doc """
  Deletes one or more custom attributes from an Amazon ECS resource.
  """
  def delete_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAttributes", input, options)
  end

  @doc """
  Deletes the specified capacity provider.

  The `FARGATE` and `FARGATE_SPOT` capacity providers are reserved and can't be
  deleted. You can disassociate them from a cluster using either the
  `PutClusterCapacityProviders` API or by deleting the cluster.

  Prior to a capacity provider being deleted, the capacity provider must be
  removed from the capacity provider strategy from all services. The
  `UpdateService` API can be used to remove a capacity provider from a service's
  capacity provider strategy. When updating a service, the `forceNewDeployment`
  option can be used to ensure that any tasks using the Amazon EC2 instance
  capacity provided by the capacity provider are transitioned to use the capacity
  from the remaining capacity providers. Only capacity providers that aren't
  associated with a cluster can be deleted. To remove a capacity provider from a
  cluster, you can either use `PutClusterCapacityProviders` or delete the cluster.
  """
  def delete_capacity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCapacityProvider", input, options)
  end

  @doc """
  Deletes the specified cluster.

  The cluster transitions to the `INACTIVE` state. Clusters with an `INACTIVE`
  status might remain discoverable in your account for a period of time. However,
  this behavior is subject to change in the future. We don't recommend that you
  rely on `INACTIVE` clusters persisting.

  You must deregister all container instances from this cluster before you may
  delete it. You can list the container instances in a cluster with
  `ListContainerInstances` and deregister them with `DeregisterContainerInstance`.
  """
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes a specified service within a cluster.

  You can delete a service if you have no running tasks in it and the desired task
  count is zero. If the service is actively maintaining tasks, you can't delete
  it, and you must update the service to a desired task count of zero. For more
  information, see `UpdateService`.

  When you delete a service, if there are still running tasks that require
  cleanup, the service status moves from `ACTIVE` to `DRAINING`, and the service
  is no longer visible in the console or in the `ListServices` API operation.
  After all tasks have transitioned to either `STOPPING` or `STOPPED` status, the
  service status moves from `DRAINING` to `INACTIVE`. Services in the `DRAINING`
  or `INACTIVE` status can still be viewed with the `DescribeServices` API
  operation. However, in the future, `INACTIVE` services may be cleaned up and
  purged from Amazon ECS record keeping, and `DescribeServices` calls on those
  services return a `ServiceNotFoundException` error.

  If you attempt to create a new service with the same name as an existing service
  in either `ACTIVE` or `DRAINING` status, you receive an error.
  """
  def delete_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteService", input, options)
  end

  @doc """
  Deletes one or more task definitions.

  You must deregister a task definition revision before you delete it. For more
  information, see
  [DeregisterTaskDefinition](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterTaskDefinition.html).

  When you delete a task definition revision, it is immediately transitions from
  the `INACTIVE` to `DELETE_IN_PROGRESS`. Existing tasks and services that
  reference a `DELETE_IN_PROGRESS` task definition revision continue to run
  without disruption. Existing services that reference a `DELETE_IN_PROGRESS` task
  definition revision can still scale up or down by modifying the service's
  desired count.

  You can't use a `DELETE_IN_PROGRESS` task definition revision to run new tasks
  or create new services. You also can't update an existing service to reference a
  `DELETE_IN_PROGRESS` task definition revision.

  A task definition revision will stay in `DELETE_IN_PROGRESS` status until all
  the associated tasks and services have been terminated.
  """
  def delete_task_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTaskDefinitions", input, options)
  end

  @doc """
  Deletes a specified task set within a service.

  This is used when a service uses the `EXTERNAL` deployment controller type. For
  more information, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def delete_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTaskSet", input, options)
  end

  @doc """
  Deregisters an Amazon ECS container instance from the specified cluster.

  This instance is no longer available to run tasks.

  If you intend to use the container instance for some other purpose after
  deregistration, we recommend that you stop all of the tasks running on the
  container instance before deregistration. That prevents any orphaned tasks from
  consuming resources.

  Deregistering a container instance removes the instance from a cluster, but it
  doesn't terminate the EC2 instance. If you are finished using the instance, be
  sure to terminate it in the Amazon EC2 console to stop billing.

  If you terminate a running container instance, Amazon ECS automatically
  deregisters the instance from your cluster (stopped container instances or
  instances with disconnected agents aren't automatically deregistered when
  terminated).
  """
  def deregister_container_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterContainerInstance", input, options)
  end

  @doc """
  Deregisters the specified task definition by family and revision.

  Upon deregistration, the task definition is marked as `INACTIVE`. Existing tasks
  and services that reference an `INACTIVE` task definition continue to run
  without disruption. Existing services that reference an `INACTIVE` task
  definition can still scale up or down by modifying the service's desired count.
  If you want to delete a task definition revision, you must first deregister the
  task definition revision.

  You can't use an `INACTIVE` task definition to run new tasks or create new
  services, and you can't update an existing service to reference an `INACTIVE`
  task definition. However, there may be up to a 10-minute window following
  deregistration where these restrictions have not yet taken effect.

  At this time, `INACTIVE` task definitions remain discoverable in your account
  indefinitely. However, this behavior is subject to change in the future. We
  don't recommend that you rely on `INACTIVE` task definitions persisting beyond
  the lifecycle of any associated tasks and services.

  You must deregister a task definition revision before you delete it. For more
  information, see
  [DeleteTaskDefinitions](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteTaskDefinitions.html).
  """
  def deregister_task_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterTaskDefinition", input, options)
  end

  @doc """
  Describes one or more of your capacity providers.
  """
  def describe_capacity_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCapacityProviders", input, options)
  end

  @doc """
  Describes one or more of your clusters.
  """
  def describe_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClusters", input, options)
  end

  @doc """
  Describes one or more container instances.

  Returns metadata about each container instance requested.
  """
  def describe_container_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContainerInstances", input, options)
  end

  @doc """
  Describes the specified services running in your cluster.
  """
  def describe_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServices", input, options)
  end

  @doc """
  Describes a task definition.

  You can specify a `family` and `revision` to find information about a specific
  task definition, or you can simply specify the family to find the latest
  `ACTIVE` revision in that family.

  You can only describe `INACTIVE` task definitions while an active task or
  service references them.
  """
  def describe_task_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTaskDefinition", input, options)
  end

  @doc """
  Describes the task sets in the specified cluster and service.

  This is used when a service uses the `EXTERNAL` deployment controller type. For
  more information, see [Amazon ECS Deployment Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def describe_task_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTaskSets", input, options)
  end

  @doc """
  Describes a specified task or tasks.

  Currently, stopped tasks appear in the returned results for at least one hour.
  """
  def describe_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTasks", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Returns an endpoint for the Amazon ECS agent to poll for updates.
  """
  def discover_poll_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DiscoverPollEndpoint", input, options)
  end

  @doc """
  Runs a command remotely on a container within a task.

  If you use a condition key in your IAM policy to refine the conditions for the
  policy statement, for example limit the actions to a specific cluster, you
  receive an `AccessDeniedException` when there is a mismatch between the
  condition key value and the corresponding parameter value.

  For information about required permissions and considerations, see [Using Amazon ECS Exec for
  debugging](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.htm)
  in the *Amazon ECS Developer Guide*.
  """
  def execute_command(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteCommand", input, options)
  end

  @doc """
  Retrieves the protection status of tasks in an Amazon ECS service.
  """
  def get_task_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTaskProtection", input, options)
  end

  @doc """
  Lists the account settings for a specified principal.
  """
  def list_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountSettings", input, options)
  end

  @doc """
  Lists the attributes for Amazon ECS resources within a specified target type and
  cluster.

  When you specify a target type and cluster, `ListAttributes` returns a list of
  attribute objects, one for each attribute on each resource. You can filter the
  list of results to a single attribute name to only return results that have that
  name. You can also filter the results by attribute name and value. You can do
  this, for example, to see which container instances in a cluster are running a
  Linux AMI (`ecs.os-type=linux`).
  """
  def list_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAttributes", input, options)
  end

  @doc """
  Returns a list of existing clusters.
  """
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  Returns a list of container instances in a specified cluster.

  You can filter the results of a `ListContainerInstances` operation with cluster
  query language statements inside the `filter` parameter. For more information,
  see [Cluster Query Language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def list_container_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContainerInstances", input, options)
  end

  @doc """
  Returns a list of services.

  You can filter the results by cluster, launch type, and scheduling strategy.
  """
  def list_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  This operation lists all of the services that are associated with a Cloud Map
  namespace.

  This list might include services in different clusters. In contrast,
  `ListServices` can only list services in one cluster at a time. If you need to
  filter the list of services in a single cluster by various parameters, use
  `ListServices`. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def list_services_by_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServicesByNamespace", input, options)
  end

  @doc """
  List the tags for an Amazon ECS resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of task definition families that are registered to your account.

  This list includes task definition families that no longer have any `ACTIVE`
  task definition revisions.

  You can filter out task definition families that don't contain any `ACTIVE` task
  definition revisions by setting the `status` parameter to `ACTIVE`. You can also
  filter the results with the `familyPrefix` parameter.
  """
  def list_task_definition_families(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTaskDefinitionFamilies", input, options)
  end

  @doc """
  Returns a list of task definitions that are registered to your account.

  You can filter the results by family name with the `familyPrefix` parameter or
  by status with the `status` parameter.
  """
  def list_task_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTaskDefinitions", input, options)
  end

  @doc """
  Returns a list of tasks.

  You can filter the results by cluster, task definition family, container
  instance, launch type, what IAM principal started the task, or by the desired
  status of the task.

  Recently stopped tasks might appear in the returned results. Currently, stopped
  tasks appear in the returned results for at least one hour.
  """
  def list_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTasks", input, options)
  end

  @doc """
  Modifies an account setting.

  Account settings are set on a per-Region basis.

  If you change the account setting for the root user, the default settings for
  all of the users and roles that no individual account setting was specified are
  reset for. For more information, see [Account Settings](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  When `serviceLongArnFormat`, `taskLongArnFormat`, or
  `containerInstanceLongArnFormat` are specified, the Amazon Resource Name (ARN)
  and resource ID format of the resource type for a specified user, role, or the
  root user for an account is affected. The opt-in and opt-out account setting
  must be set for each Amazon ECS resource separately. The ARN and resource ID
  format of a resource is defined by the opt-in status of the user or role that
  created the resource. You must turn on this setting to use Amazon ECS features
  such as resource tagging.

  When `awsvpcTrunking` is specified, the elastic network interface (ENI) limit
  for any new container instances that support the feature is changed. If
  `awsvpcTrunking` is enabled, any new container instances that support the
  feature are launched have the increased ENI limits available to them. For more
  information, see [Elastic Network Interface Trunking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  When `containerInsights` is specified, the default setting indicating whether
  CloudWatch Container Insights is enabled for your clusters is changed. If
  `containerInsights` is enabled, any new clusters that are created will have
  Container Insights enabled unless you disable it during cluster creation. For
  more information, see [CloudWatch Container Insights](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def put_account_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAccountSetting", input, options)
  end

  @doc """
  Modifies an account setting for all users on an account for whom no individual
  account setting has been specified.

  Account settings are set on a per-Region basis.
  """
  def put_account_setting_default(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAccountSettingDefault", input, options)
  end

  @doc """
  Create or update an attribute on an Amazon ECS resource.

  If the attribute doesn't exist, it's created. If the attribute exists, its value
  is replaced with the specified value. To delete an attribute, use
  `DeleteAttributes`. For more information, see
  [Attributes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def put_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAttributes", input, options)
  end

  @doc """
  Modifies the available capacity providers and the default capacity provider
  strategy for a cluster.

  You must specify both the available capacity providers and a default capacity
  provider strategy for the cluster. If the specified cluster has existing
  capacity providers associated with it, you must specify all existing capacity
  providers in addition to any new ones you want to add. Any existing capacity
  providers that are associated with a cluster that are omitted from a
  `PutClusterCapacityProviders` API call will be disassociated with the cluster.
  You can only disassociate an existing capacity provider from a cluster if it's
  not being used by any existing tasks.

  When creating a service or running a task on a cluster, if no capacity provider
  or launch type is specified, then the cluster's default capacity provider
  strategy is used. We recommend that you define a default capacity provider
  strategy for your cluster. However, you must specify an empty array (`[]`) to
  bypass defining a default strategy.
  """
  def put_cluster_capacity_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutClusterCapacityProviders", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Registers an EC2 instance into the specified cluster. This instance becomes
  available to place containers on.
  """
  def register_container_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterContainerInstance", input, options)
  end

  @doc """
  Registers a new task definition from the supplied `family` and
  `containerDefinitions`.

  Optionally, you can add data volumes to your containers with the `volumes`
  parameter. For more information about task definition parameters and defaults,
  see [Amazon ECS Task Definitions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can specify a role for your task with the `taskRoleArn` parameter. When you
  specify a role for a task, its containers can then use the latest versions of
  the CLI or SDKs to make API requests to the Amazon Web Services services that
  are specified in the policy that's associated with the role. For more
  information, see [IAM Roles for Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can specify a Docker networking mode for the containers in your task
  definition with the `networkMode` parameter. The available network modes
  correspond to those described in [Network settings](https://docs.docker.com/engine/reference/run/#/network-settings) in
  the Docker run reference. If you specify the `awsvpc` network mode, the task is
  allocated an elastic network interface, and you must specify a
  `NetworkConfiguration` when you create a service or run a task with the task
  definition. For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def register_task_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterTaskDefinition", input, options)
  end

  @doc """
  Starts a new task using the specified task definition.

  You can allow Amazon ECS to place tasks for you, or you can customize how Amazon
  ECS places tasks using placement constraints and placement strategies. For more
  information, see [Scheduling Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  Alternatively, you can use `StartTask` to use your own scheduler or place tasks
  manually on specific container instances.

  Starting April 15, 2023, Amazon Web Services will not onboard new customers to
  Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.

  The Amazon ECS API follows an eventual consistency model. This is because of the
  distributed nature of the system supporting the API. This means that the result
  of an API command you run that affects your Amazon ECS resources might not be
  immediately visible to all subsequent commands you run. Keep this in mind when
  you carry out an API command that immediately follows a previous API command.

  To manage eventual consistency, you can do the following:

    * Confirm the state of the resource before you run a command to
  modify it. Run the DescribeTasks command using an exponential backoff algorithm
  to ensure that you allow enough time for the previous command to propagate
  through the system. To do this, run the DescribeTasks command repeatedly,
  starting with a couple of seconds of wait time and increasing gradually up to
  five minutes of wait time.

    * Add wait time between subsequent commands, even if the
  DescribeTasks command returns an accurate response. Apply an exponential backoff
  algorithm starting with a couple of seconds of wait time, and increase gradually
  up to about five minutes of wait time.
  """
  def run_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RunTask", input, options)
  end

  @doc """
  Starts a new task from the specified task definition on the specified container
  instance or instances.

  Starting April 15, 2023, Amazon Web Services will not onboard new customers to
  Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.

  Alternatively, you can use `RunTask` to place tasks for you. For more
  information, see [Scheduling Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def start_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTask", input, options)
  end

  @doc """
  Stops a running task.

  Any tags associated with the task will be deleted.

  When `StopTask` is called on a task, the equivalent of `docker stop` is issued
  to the containers running in the task. This results in a `SIGTERM` value and a
  default 30-second timeout, after which the `SIGKILL` value is sent and the
  containers are forcibly stopped. If the container handles the `SIGTERM` value
  gracefully and exits within 30 seconds from receiving it, no `SIGKILL` value is
  sent.

  The default 30-second timeout can be configured on the Amazon ECS container
  agent with the `ECS_CONTAINER_STOP_TIMEOUT` variable. For more information, see
  [Amazon ECS Container Agent Configuration](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def stop_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTask", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Sent to acknowledge that an attachment changed states.
  """
  def submit_attachment_state_changes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitAttachmentStateChanges", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Sent to acknowledge that a container changed states.
  """
  def submit_container_state_change(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitContainerStateChange", input, options)
  end

  @doc """
  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Sent to acknowledge that a task changed states.
  """
  def submit_task_state_change(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitTaskStateChange", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource aren't specified in the request parameters, they
  aren't changed. When a resource is deleted, the tags that are associated with
  that resource are deleted as well.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the parameters for a capacity provider.
  """
  def update_capacity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCapacityProvider", input, options)
  end

  @doc """
  Updates the cluster.
  """
  def update_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  Modifies the settings to use for a cluster.
  """
  def update_cluster_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateClusterSettings", input, options)
  end

  @doc """
  Updates the Amazon ECS container agent on a specified container instance.

  Updating the Amazon ECS container agent doesn't interrupt running tasks or
  services on the container instance. The process for updating the agent differs
  depending on whether your container instance was launched with the Amazon
  ECS-optimized AMI or another operating system.

  The `UpdateContainerAgent` API isn't supported for container instances using the
  Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To update the container agent,
  you can update the `ecs-init` package. This updates the agent. For more
  information, see [Updating the Amazon ECS container agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  Agent updates with the `UpdateContainerAgent` API operation do not apply to
  Windows container instances. We recommend that you launch new container
  instances to update the agent version in your Windows clusters.

  The `UpdateContainerAgent` API requires an Amazon ECS-optimized AMI or Amazon
  Linux AMI with the `ecs-init` service installed and running. For help updating
  the Amazon ECS container agent on other operating systems, see [Manually updating the Amazon ECS container
  agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def update_container_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContainerAgent", input, options)
  end

  @doc """
  Modifies the status of an Amazon ECS container instance.

  Once a container instance has reached an `ACTIVE` state, you can change the
  status of a container instance to `DRAINING` to manually remove an instance from
  a cluster, for example to perform system updates, update the Docker daemon, or
  scale down the cluster size.

  A container instance can't be changed to `DRAINING` until it has reached an
  `ACTIVE` status. If the instance is in any other status, an error will be
  received.

  When you set a container instance to `DRAINING`, Amazon ECS prevents new tasks
  from being scheduled for placement on the container instance and replacement
  service tasks are started on other container instances in the cluster if the
  resources are available. Service tasks on the container instance that are in the
  `PENDING` state are stopped immediately.

  Service tasks on the container instance that are in the `RUNNING` state are
  stopped and replaced according to the service's deployment configuration
  parameters, `minimumHealthyPercent` and `maximumPercent`. You can change the
  deployment configuration of your service using `UpdateService`.

    * If `minimumHealthyPercent` is below 100%, the scheduler can ignore
  `desiredCount` temporarily during task replacement. For example, `desiredCount`
  is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks
  before starting two new tasks. If the minimum is 100%, the service scheduler
  can't remove existing tasks until the replacement tasks are considered healthy.
  Tasks for services that do not use a load balancer are considered healthy if
  they're in the `RUNNING` state. Tasks for services that use a load balancer are
  considered healthy if they're in the `RUNNING` state and are reported as healthy
  by the load balancer.

    * The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during task replacement. You can use this to define the
  replacement batch size. For example, if `desiredCount` is four tasks, a maximum
  of 200% starts four new tasks before stopping the four tasks to be drained,
  provided that the cluster resources required to do this are available. If the
  maximum is 100%, then replacement tasks can't start until the draining tasks
  have stopped.

  Any `PENDING` or `RUNNING` tasks that do not belong to a service aren't
  affected. You must wait for them to finish or stop them manually.

  A container instance has completed draining when it has no more `RUNNING` tasks.
  You can verify this using `ListTasks`.

  When a container instance has been drained, you can set a container instance to
  `ACTIVE` status and once it has reached that status the Amazon ECS scheduler can
  begin scheduling tasks on the instance again.
  """
  def update_container_instances_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContainerInstancesState", input, options)
  end

  @doc """
  Modifies the parameters of a service.

  For services using the rolling update (`ECS`) you can update the desired count,
  deployment configuration, network configuration, load balancers, service
  registries, enable ECS managed tags option, propagate tags option, task
  placement constraints and strategies, and task definition. When you update any
  of these parameters, Amazon ECS starts new tasks with the new configuration.

  For services using the blue/green (`CODE_DEPLOY`) deployment controller, only
  the desired count, deployment configuration, health check grace period, task
  placement constraints and strategies, enable ECS managed tags option, and
  propagate tags can be updated using this API. If the network configuration,
  platform version, task definition, or load balancer need to be updated, create a
  new CodeDeploy deployment. For more information, see
  [CreateDeployment](https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html) in the *CodeDeploy API Reference*.

  For services using an external deployment controller, you can update only the
  desired count, task placement constraints and strategies, health check grace
  period, enable ECS managed tags option, and propagate tags option, using this
  API. If the launch type, load balancer, network configuration, platform version,
  or task definition need to be updated, create a new task set For more
  information, see `CreateTaskSet`.

  You can add to or subtract from the number of instantiations of a task
  definition in a service by specifying the cluster that the service is running in
  and a new `desiredCount` parameter.

  If you have updated the Docker image of your application, you can create a new
  task definition with that image and deploy it to your service. The service
  scheduler uses the minimum healthy percent and maximum percent parameters (in
  the service's deployment configuration) to determine the deployment strategy.

  If your updated Docker image uses the same tag as what is in the existing task
  definition for your service (for example, `my_image:latest`), you don't need to
  create a new revision of your task definition. You can update the service using
  the `forceNewDeployment` option. The new tasks launched by the deployment pull
  the current image/tag combination from your repository when they start.

  You can also update the deployment configuration of a service. When a deployment
  is triggered by updating the task definition of a service, the service scheduler
  uses the deployment configuration parameters, `minimumHealthyPercent` and
  `maximumPercent`, to determine the deployment strategy.

    * If `minimumHealthyPercent` is below 100%, the scheduler can ignore
  `desiredCount` temporarily during a deployment. For example, if `desiredCount`
  is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks
  before starting two new tasks. Tasks for services that don't use a load balancer
  are considered healthy if they're in the `RUNNING` state. Tasks for services
  that use a load balancer are considered healthy if they're in the `RUNNING`
  state and are reported as healthy by the load balancer.

    * The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during a deployment. You can use it to define the
  deployment batch size. For example, if `desiredCount` is four tasks, a maximum
  of 200% starts four new tasks before stopping the four older tasks (provided
  that the cluster resources required to do this are available).

  When `UpdateService` stops a task during a deployment, the equivalent of `docker
  stop` is issued to the containers running in the task. This results in a
  `SIGTERM` and a 30-second timeout. After this, `SIGKILL` is sent and the
  containers are forcibly stopped. If the container handles the `SIGTERM`
  gracefully and exits within 30 seconds from receiving it, no `SIGKILL` is sent.

  When the service scheduler launches new tasks, it determines task placement in
  your cluster with the following logic.

    * Determine which of the container instances in your cluster can
  support your service's task definition. For example, they have the required CPU,
  memory, ports, and container instance attributes.

    * By default, the service scheduler attempts to balance tasks across
  Availability Zones in this manner even though you can choose a different
  placement strategy.

      * Sort the valid container instances by the fewest
  number of running tasks for this service in the same Availability Zone as the
  instance. For example, if zone A has one running service task and zones B and C
  each have zero, valid container instances in either zone B or C are considered
  optimal for placement.

      * Place the new service task on a valid container
  instance in an optimal Availability Zone (based on the previous steps), favoring
  container instances with the fewest number of running tasks for this service.

  When the service scheduler stops running tasks, it attempts to maintain balance
  across the Availability Zones in your cluster using the following logic:

    * Sort the container instances by the largest number of running
  tasks for this service in the same Availability Zone as the instance. For
  example, if zone A has one running service task and zones B and C each have two,
  container instances in either zone B or C are considered optimal for
  termination.

    * Stop the task on a container instance in an optimal Availability
  Zone (based on the previous steps), favoring container instances with the
  largest number of running tasks for this service.

  You must have a service-linked role when you update any of the following service
  properties. If you specified a custom role when you created the service, Amazon
  ECS automatically replaces the
  [roleARN](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_Service.html#ECS-Type-Service-roleArn)
  associated with the service with the ARN of your service-linked role. For more
  information, see [Service-linked roles](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
  in the *Amazon Elastic Container Service Developer Guide*.

     `loadBalancers,`

     `serviceRegistries`
  """
  def update_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end

  @doc """
  Modifies which task set in a service is the primary task set.

  Any parameters that are updated on the primary task set in a service will
  transition to the service. This is used when a service uses the `EXTERNAL`
  deployment controller type. For more information, see [Amazon ECS Deployment Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def update_service_primary_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServicePrimaryTaskSet", input, options)
  end

  @doc """
  Updates the protection status of a task.

  You can set `protectionEnabled` to `true` to protect your task from termination
  during scale-in events from [Service Autoscaling](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
  or
  [deployments](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).  Task-protection, by default, expires after 2 hours at which point Amazon ECS
  unsets the `protectionEnabled` property making the task eligible for termination
  by a subsequent scale-in event.

  You can specify a custom expiration period for task protection from 1 minute to
  up to 2,880 minutes (48 hours). To specify the custom expiration period, set the
  `expiresInMinutes` property. The `expiresInMinutes` property is always reset
  when you invoke this operation for a task that already has `protectionEnabled`
  set to `true`. You can keep extending the protection expiration period of a task
  by invoking this operation repeatedly.

  To learn more about Amazon ECS task protection, see [Task scale-in
  protection](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection.html)
  in the * *Amazon Elastic Container Service Developer Guide* *.

  This operation is only supported for tasks belonging to an Amazon ECS service.
  Invoking this operation for a standalone task will result in an `TASK_NOT_VALID`
  failure. For more information, see [API failure reasons](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html).

  If you prefer to set task protection from within the container, we recommend
  using the [Task scale-in protection endpoint](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection-endpoint.html).
  """
  def update_task_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTaskProtection", input, options)
  end

  @doc """
  Modifies a task set.

  This is used when a service uses the `EXTERNAL` deployment controller type. For
  more information, see [Amazon ECS Deployment Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  def update_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTaskSet", input, options)
  end
end
