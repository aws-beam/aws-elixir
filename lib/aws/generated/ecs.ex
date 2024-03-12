# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECS do
  @moduledoc """
  Amazon Elastic Container Service

  Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast,
  container management service.

  It makes
  it easy to run, stop, and manage Docker containers. You can host your cluster on
  a
  serverless infrastructure that's managed by Amazon ECS by launching your
  services or tasks on
  Fargate. For more control, you can host your tasks on a cluster of Amazon
  Elastic Compute Cloud (Amazon EC2)
  or External (on-premises) instances that you manage.

  Amazon ECS makes it easy to launch and stop container-based applications with
  simple API
  calls. This makes it easy to get the state of your cluster from a centralized
  service,
  and gives you access to many familiar Amazon EC2 features.

  You can use Amazon ECS to schedule the placement of containers across your
  cluster based on
  your resource needs, isolation policies, and availability requirements. With
  Amazon ECS, you
  don't need to operate your own cluster management and configuration management
  systems.
  You also don't need to worry about scaling your management infrastructure.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  service_registry() :: %{
    "containerName" => String.t(),
    "containerPort" => integer(),
    "port" => integer(),
    "registryArn" => String.t()
  }
  """
  @type service_registry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_task_definition_response() :: %{
    "tags" => list(tag()()),
    "taskDefinition" => task_definition()
  }
  """
  @type describe_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  container_instance_health_status() :: %{
    "details" => list(instance_health_check_result()()),
    "overallStatus" => list(any())
  }
  """
  @type container_instance_health_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_capacity_provider_response() :: %{
    "capacityProvider" => capacity_provider()
  }
  """
  @type delete_capacity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_container_instances_state_response() :: %{
    "containerInstances" => list(container_instance()()),
    "failures" => list(failure()())
  }
  """
  @type update_container_instances_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_set() :: %{
    "capacityProviderStrategy" => list(capacity_provider_strategy_item()()),
    "clusterArn" => String.t(),
    "computedDesiredCount" => integer(),
    "createdAt" => non_neg_integer(),
    "externalId" => String.t(),
    "id" => String.t(),
    "launchType" => list(any()),
    "loadBalancers" => list(load_balancer()()),
    "networkConfiguration" => network_configuration(),
    "pendingCount" => integer(),
    "platformFamily" => String.t(),
    "platformVersion" => String.t(),
    "runningCount" => integer(),
    "scale" => scale(),
    "serviceArn" => String.t(),
    "serviceRegistries" => list(service_registry()()),
    "stabilityStatus" => list(any()),
    "stabilityStatusAt" => non_neg_integer(),
    "startedBy" => String.t(),
    "status" => String.t(),
    "tags" => list(tag()()),
    "taskDefinition" => String.t(),
    "taskSetArn" => String.t(),
    "updatedAt" => non_neg_integer()
  }
  """
  @type task_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task() :: %{
    "launchType" => list(any()),
    "attachments" => list(attachment()()),
    "ephemeralStorage" => ephemeral_storage(),
    "pullStartedAt" => non_neg_integer(),
    "containerInstanceArn" => String.t(),
    "startedBy" => String.t(),
    "executionStoppedAt" => non_neg_integer(),
    "attributes" => list(attribute()()),
    "stoppingAt" => non_neg_integer(),
    "cpu" => String.t(),
    "platformVersion" => String.t(),
    "enableExecuteCommand" => boolean(),
    "healthStatus" => list(any()),
    "taskArn" => String.t(),
    "stopCode" => list(any()),
    "createdAt" => non_neg_integer(),
    "lastStatus" => String.t(),
    "memory" => String.t(),
    "desiredStatus" => String.t(),
    "overrides" => task_override(),
    "connectivity" => list(any()),
    "tags" => list(tag()()),
    "connectivityAt" => non_neg_integer(),
    "taskDefinitionArn" => String.t(),
    "platformFamily" => String.t(),
    "inferenceAccelerators" => list(inference_accelerator()()),
    "pullStoppedAt" => non_neg_integer(),
    "stoppedAt" => non_neg_integer(),
    "containers" => list(container()()),
    "capacityProviderName" => String.t(),
    "clusterArn" => String.t(),
    "group" => String.t(),
    "stoppedReason" => String.t(),
    "startedAt" => non_neg_integer(),
    "availabilityZone" => String.t(),
    "version" => float()
  }
  """
  @type task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_capacity_provider_request() :: %{
    required("capacityProvider") => String.t()
  }
  """
  @type delete_capacity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("resourceArn") => String.t(),
    required("tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_in_progress_exception() :: %{
    "message" => String.t()
  }
  """
  @type update_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_task_request() :: %{
    optional("cluster") => String.t(),
    optional("reason") => String.t(),
    required("task") => String.t()
  }
  """
  @type stop_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_container_instances_request() :: %{
    optional("cluster") => String.t(),
    optional("include") => list(list(any())()),
    required("containerInstances") => list(String.t()())
  }
  """
  @type describe_container_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  system_control() :: %{
    "namespace" => String.t(),
    "value" => String.t()
  }
  """
  @type system_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  container() :: %{
    "containerArn" => String.t(),
    "cpu" => String.t(),
    "exitCode" => integer(),
    "gpuIds" => list(String.t()()),
    "healthStatus" => list(any()),
    "image" => String.t(),
    "imageDigest" => String.t(),
    "lastStatus" => String.t(),
    "managedAgents" => list(managed_agent()()),
    "memory" => String.t(),
    "memoryReservation" => String.t(),
    "name" => String.t(),
    "networkBindings" => list(network_binding()()),
    "networkInterfaces" => list(network_interface()()),
    "reason" => String.t(),
    "runtimeId" => String.t(),
    "taskArn" => String.t()
  }
  """
  @type container() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  inference_accelerator() :: %{
    "deviceName" => String.t(),
    "deviceType" => String.t()
  }
  """
  @type inference_accelerator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  run_task_response() :: %{
    "failures" => list(failure()()),
    "tasks" => list(task()())
  }
  """
  @type run_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proxy_configuration() :: %{
    "containerName" => String.t(),
    "properties" => list(key_value_pair()()),
    "type" => list(any())
  }
  """
  @type proxy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_limit_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type attribute_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  setting() :: %{
    "name" => list(any()),
    "principalArn" => String.t(),
    "type" => list(any()),
    "value" => String.t()
  }
  """
  @type setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment() :: %{
    "capacityProviderStrategy" => list(capacity_provider_strategy_item()()),
    "createdAt" => non_neg_integer(),
    "desiredCount" => integer(),
    "failedTasks" => integer(),
    "id" => String.t(),
    "launchType" => list(any()),
    "networkConfiguration" => network_configuration(),
    "pendingCount" => integer(),
    "platformFamily" => String.t(),
    "platformVersion" => String.t(),
    "rolloutState" => list(any()),
    "rolloutStateReason" => String.t(),
    "runningCount" => integer(),
    "serviceConnectConfiguration" => service_connect_configuration(),
    "serviceConnectResources" => list(service_connect_service_resource()()),
    "status" => String.t(),
    "taskDefinition" => String.t(),
    "updatedAt" => non_neg_integer(),
    "volumeConfigurations" => list(service_volume_configuration()())
  }
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_event() :: %{
    "createdAt" => non_neg_integer(),
    "id" => String.t(),
    "message" => String.t()
  }
  """
  @type service_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_services_request() :: %{
    optional("cluster") => String.t(),
    optional("include") => list(list(any())()),
    required("services") => list(String.t()())
  }
  """
  @type describe_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_override() :: %{
    "containerOverrides" => list(container_override()()),
    "cpu" => String.t(),
    "ephemeralStorage" => ephemeral_storage(),
    "executionRoleArn" => String.t(),
    "inferenceAcceleratorOverrides" => list(inference_accelerator_override()()),
    "memory" => String.t(),
    "taskRoleArn" => String.t()
  }
  """
  @type task_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cluster_response() :: %{
    "cluster" => cluster()
  }
  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_in_use_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_account_setting_default_request() :: %{
    required("name") => list(any()),
    required("value") => String.t()
  }
  """
  @type put_account_setting_default_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  register_container_instance_response() :: %{
    "containerInstance" => container_instance()
  }
  """
  @type register_container_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_task_set_request() :: %{
    optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
    optional("clientToken") => String.t(),
    optional("externalId") => String.t(),
    optional("launchType") => list(any()),
    optional("loadBalancers") => list(load_balancer()()),
    optional("networkConfiguration") => network_configuration(),
    optional("platformVersion") => String.t(),
    optional("scale") => scale(),
    optional("serviceRegistries") => list(service_registry()()),
    optional("tags") => list(tag()()),
    required("cluster") => String.t(),
    required("service") => String.t(),
    required("taskDefinition") => String.t()
  }
  """
  @type create_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_task_request() :: %{
    optional("cluster") => String.t(),
    optional("enableECSManagedTags") => boolean(),
    optional("enableExecuteCommand") => boolean(),
    optional("group") => String.t(),
    optional("networkConfiguration") => network_configuration(),
    optional("overrides") => task_override(),
    optional("propagateTags") => list(any()),
    optional("referenceId") => String.t(),
    optional("startedBy") => String.t(),
    optional("tags") => list(tag()()),
    optional("volumeConfigurations") => list(task_volume_configuration()()),
    required("containerInstances") => list(String.t()()),
    required("taskDefinition") => String.t()
  }
  """
  @type start_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_account_setting_response() :: %{
    "setting" => setting()
  }
  """
  @type delete_account_setting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_capacity_provider_request() :: %{
    required("autoScalingGroupProvider") => auto_scaling_group_provider_update(),
    required("name") => String.t()
  }
  """
  @type update_capacity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_account_setting_response() :: %{
    "setting" => setting()
  }
  """
  @type put_account_setting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_services_by_namespace_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("namespace") => String.t()
  }
  """
  @type list_services_by_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_task_protection_response() :: %{
    "failures" => list(failure()()),
    "protectedTasks" => list(protected_task()())
  }
  """
  @type get_task_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_connect_service_resource() :: %{
    "discoveryArn" => String.t(),
    "discoveryName" => String.t()
  }
  """
  @type service_connect_service_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type cluster_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  host_volume_properties() :: %{
    "sourcePath" => String.t()
  }
  """
  @type host_volume_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_interface() :: %{
    "attachmentId" => String.t(),
    "ipv6Address" => String.t(),
    "privateIpv4Address" => String.t()
  }
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_task_set_request() :: %{
    required("cluster") => String.t(),
    required("scale") => scale(),
    required("service") => String.t(),
    required("taskSet") => String.t()
  }
  """
  @type update_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  execute_command_configuration() :: %{
    "kmsKeyId" => String.t(),
    "logConfiguration" => execute_command_log_configuration(),
    "logging" => list(any())
  }
  """
  @type execute_command_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attachment() :: %{
    "details" => list(key_value_pair()()),
    "id" => String.t(),
    "status" => String.t(),
    "type" => String.t()
  }
  """
  @type attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target_not_connected_exception() :: %{
    "message" => String.t()
  }
  """
  @type target_not_connected_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type service_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service() :: %{
    "capacityProviderStrategy" => list(capacity_provider_strategy_item()()),
    "clusterArn" => String.t(),
    "createdAt" => non_neg_integer(),
    "createdBy" => String.t(),
    "deploymentConfiguration" => deployment_configuration(),
    "deploymentController" => deployment_controller(),
    "deployments" => list(deployment()()),
    "desiredCount" => integer(),
    "enableECSManagedTags" => boolean(),
    "enableExecuteCommand" => boolean(),
    "events" => list(service_event()()),
    "healthCheckGracePeriodSeconds" => integer(),
    "launchType" => list(any()),
    "loadBalancers" => list(load_balancer()()),
    "networkConfiguration" => network_configuration(),
    "pendingCount" => integer(),
    "placementConstraints" => list(placement_constraint()()),
    "placementStrategy" => list(placement_strategy()()),
    "platformFamily" => String.t(),
    "platformVersion" => String.t(),
    "propagateTags" => list(any()),
    "roleArn" => String.t(),
    "runningCount" => integer(),
    "schedulingStrategy" => list(any()),
    "serviceArn" => String.t(),
    "serviceName" => String.t(),
    "serviceRegistries" => list(service_registry()()),
    "status" => String.t(),
    "tags" => list(tag()()),
    "taskDefinition" => String.t(),
    "taskSets" => list(task_set()())
  }
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  host_entry() :: %{
    "hostname" => String.t(),
    "ipAddress" => String.t()
  }
  """
  @type host_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_task_definitions_request() :: %{
    optional("familyPrefix") => String.t(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("sort") => list(any()),
    optional("status") => list(any())
  }
  """
  @type list_task_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_volume_configuration() :: %{
    "managedEBSVolume" => task_managed_ebs_volume_configuration(),
    "name" => String.t()
  }
  """
  @type task_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  managed_agent_state_change() :: %{
    "containerName" => String.t(),
    "managedAgentName" => list(any()),
    "reason" => String.t(),
    "status" => String.t()
  }
  """
  @type managed_agent_state_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("resourceArn") => String.t(),
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_task_set_response() :: %{
    "taskSet" => task_set()
  }
  """
  @type delete_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_container_instances_state_request() :: %{
    optional("cluster") => String.t(),
    required("containerInstances") => list(String.t()()),
    required("status") => list(any())
  }
  """
  @type update_container_instances_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  docker_volume_configuration() :: %{
    "autoprovision" => boolean(),
    "driver" => String.t(),
    "driverOpts" => map(),
    "labels" => map(),
    "scope" => list(any())
  }
  """
  @type docker_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_task_protection_request() :: %{
    optional("expiresInMinutes") => integer(),
    required("cluster") => String.t(),
    required("protectionEnabled") => boolean(),
    required("tasks") => list(String.t()())
  }
  """
  @type update_task_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cluster_request() :: %{
    optional("configuration") => cluster_configuration(),
    optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
    optional("settings") => list(cluster_setting()()),
    required("cluster") => String.t()
  }
  """
  @type update_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  register_container_instance_request() :: %{
    optional("attributes") => list(attribute()()),
    optional("cluster") => String.t(),
    optional("containerInstanceArn") => String.t(),
    optional("instanceIdentityDocument") => String.t(),
    optional("instanceIdentityDocumentSignature") => String.t(),
    optional("platformDevices") => list(platform_device()()),
    optional("tags") => list(tag()()),
    optional("totalResources") => list(resource()()),
    optional("versionInfo") => version_info()
  }
  """
  @type register_container_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  mount_point() :: %{
    "containerPath" => String.t(),
    "readOnly" => boolean(),
    "sourceVolume" => String.t()
  }
  """
  @type mount_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  timeout_configuration() :: %{
    "idleTimeoutSeconds" => integer(),
    "perRequestTimeoutSeconds" => integer()
  }
  """
  @type timeout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  managed_agent() :: %{
    "lastStartedAt" => non_neg_integer(),
    "lastStatus" => String.t(),
    "name" => list(any()),
    "reason" => String.t()
  }
  """
  @type managed_agent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_configuration() :: %{
    "executeCommandConfiguration" => execute_command_configuration()
  }
  """
  @type cluster_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_alarms() :: %{
    "alarmNames" => list(String.t()()),
    "enable" => boolean(),
    "rollback" => boolean()
  }
  """
  @type deployment_alarms() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_account_setting_request() :: %{
    optional("principalArn") => String.t(),
    required("name") => list(any()),
    required("value") => String.t()
  }
  """
  @type put_account_setting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_services_request() :: %{
    optional("cluster") => String.t(),
    optional("launchType") => list(any()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("schedulingStrategy") => list(any())
  }
  """
  @type list_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  execute_command_response() :: %{
    "clusterArn" => String.t(),
    "containerArn" => String.t(),
    "containerName" => String.t(),
    "interactive" => boolean(),
    "session" => session(),
    "taskArn" => String.t()
  }
  """
  @type execute_command_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_services_response() :: %{
    "failures" => list(failure()()),
    "services" => list(service()())
  }
  """
  @type describe_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_managed_ebs_volume_termination_policy() :: %{
    "deleteOnTermination" => boolean()
  }
  """
  @type task_managed_ebs_volume_termination_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deregister_task_definition_response() :: %{
    "taskDefinition" => task_definition()
  }
  """
  @type deregister_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  namespace_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type namespace_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unsupported_feature_exception() :: %{
    "message" => String.t()
  }
  """
  @type unsupported_feature_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_configuration() :: %{
    "alarms" => deployment_alarms(),
    "deploymentCircuitBreaker" => deployment_circuit_breaker(),
    "maximumPercent" => integer(),
    "minimumHealthyPercent" => integer()
  }
  """
  @type deployment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_account_settings_request() :: %{
    optional("effectiveSettings") => boolean(),
    optional("maxResults") => integer(),
    optional("name") => list(any()),
    optional("nextToken") => String.t(),
    optional("principalArn") => String.t(),
    optional("value") => String.t()
  }
  """
  @type list_account_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_account_settings_response() :: %{
    "nextToken" => String.t(),
    "settings" => list(setting()())
  }
  """
  @type list_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cluster_request() :: %{
    optional("capacityProviders") => list(String.t()()),
    optional("clusterName") => String.t(),
    optional("configuration") => cluster_configuration(),
    optional("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item()()),
    optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
    optional("settings") => list(cluster_setting()()),
    optional("tags") => list(tag()())
  }
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_connect_configuration() :: %{
    "enabled" => boolean(),
    "logConfiguration" => log_configuration(),
    "namespace" => String.t(),
    "services" => list(service_connect_service()())
  }
  """
  @type service_connect_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  client_exception() :: %{
    "message" => String.t()
  }
  """
  @type client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_capacity_providers_request() :: %{
    optional("capacityProviders") => list(String.t()()),
    optional("include") => list(list(any())()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_capacity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => String.t(),
    "resourceIds" => list(String.t()())
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
  container_definition() :: %{
    "dependsOn" => list(container_dependency()()),
    "image" => String.t(),
    "entryPoint" => list(String.t()()),
    "user" => String.t(),
    "healthCheck" => health_check(),
    "interactive" => boolean(),
    "dockerSecurityOptions" => list(String.t()()),
    "pseudoTerminal" => boolean(),
    "hostname" => String.t(),
    "secrets" => list(secret()()),
    "name" => String.t(),
    "portMappings" => list(port_mapping()()),
    "workingDirectory" => String.t(),
    "command" => list(String.t()()),
    "environmentFiles" => list(environment_file()()),
    "cpu" => integer(),
    "repositoryCredentials" => repository_credentials(),
    "links" => list(String.t()()),
    "ulimits" => list(ulimit()()),
    "readonlyRootFilesystem" => boolean(),
    "volumesFrom" => list(volume_from()()),
    "disableNetworking" => boolean(),
    "memory" => integer(),
    "privileged" => boolean(),
    "logConfiguration" => log_configuration(),
    "systemControls" => list(system_control()()),
    "mountPoints" => list(mount_point()()),
    "environment" => list(key_value_pair()()),
    "dnsSearchDomains" => list(String.t()()),
    "linuxParameters" => linux_parameters(),
    "startTimeout" => integer(),
    "resourceRequirements" => list(resource_requirement()()),
    "dnsServers" => list(String.t()()),
    "dockerLabels" => map(),
    "essential" => boolean(),
    "stopTimeout" => integer(),
    "memoryReservation" => integer(),
    "credentialSpecs" => list(String.t()()),
    "extraHosts" => list(host_entry()()),
    "firelensConfiguration" => firelens_configuration()
  }
  """
  @type container_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_task_protection_request() :: %{
    optional("tasks") => list(String.t()()),
    required("cluster") => String.t()
  }
  """
  @type get_task_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_contains_tasks_exception() :: %{
    "message" => String.t()
  }
  """
  @type cluster_contains_tasks_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "key" => String.t(),
    "value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_task_definitions_response() :: %{
    "nextToken" => String.t(),
    "taskDefinitionArns" => list(String.t()())
  }
  """
  @type list_task_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  container_override() :: %{
    "command" => list(String.t()()),
    "cpu" => integer(),
    "environment" => list(key_value_pair()()),
    "environmentFiles" => list(environment_file()()),
    "memory" => integer(),
    "memoryReservation" => integer(),
    "name" => String.t(),
    "resourceRequirements" => list(resource_requirement()())
  }
  """
  @type container_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ulimit() :: %{
    "hardLimit" => integer(),
    "name" => list(any()),
    "softLimit" => integer()
  }
  """
  @type ulimit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  execute_command_log_configuration() :: %{
    "cloudWatchEncryptionEnabled" => boolean(),
    "cloudWatchLogGroupName" => String.t(),
    "s3BucketName" => String.t(),
    "s3EncryptionEnabled" => boolean(),
    "s3KeyPrefix" => String.t()
  }
  """
  @type execute_command_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster() :: %{
    "activeServicesCount" => integer(),
    "attachments" => list(attachment()()),
    "attachmentsStatus" => String.t(),
    "capacityProviders" => list(String.t()()),
    "clusterArn" => String.t(),
    "clusterName" => String.t(),
    "configuration" => cluster_configuration(),
    "defaultCapacityProviderStrategy" => list(capacity_provider_strategy_item()()),
    "pendingTasksCount" => integer(),
    "registeredContainerInstancesCount" => integer(),
    "runningTasksCount" => integer(),
    "serviceConnectDefaults" => cluster_service_connect_defaults(),
    "settings" => list(cluster_setting()()),
    "statistics" => list(key_value_pair()()),
    "status" => String.t(),
    "tags" => list(tag()())
  }
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attachment_state_change() :: %{
    "attachmentArn" => String.t(),
    "status" => String.t()
  }
  """
  @type attachment_state_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_services_response() :: %{
    "nextToken" => String.t(),
    "serviceArns" => list(String.t()())
  }
  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_not_active_exception() :: %{
    "message" => String.t()
  }
  """
  @type service_not_active_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_setting() :: %{
    "name" => list(any()),
    "value" => String.t()
  }
  """
  @type cluster_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_task_definitions_request() :: %{
    required("taskDefinitions") => list(String.t()())
  }
  """
  @type delete_task_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_task_sets_request() :: %{
    optional("include") => list(list(any())()),
    optional("taskSets") => list(String.t()()),
    required("cluster") => String.t(),
    required("service") => String.t()
  }
  """
  @type describe_task_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_container_state_change_request() :: %{
    optional("cluster") => String.t(),
    optional("containerName") => String.t(),
    optional("exitCode") => integer(),
    optional("networkBindings") => list(network_binding()()),
    optional("reason") => String.t(),
    optional("runtimeId") => String.t(),
    optional("status") => String.t(),
    optional("task") => String.t()
  }
  """
  @type submit_container_state_change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_service_request() :: %{
    optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
    optional("clientToken") => String.t(),
    optional("cluster") => String.t(),
    optional("deploymentConfiguration") => deployment_configuration(),
    optional("deploymentController") => deployment_controller(),
    optional("desiredCount") => integer(),
    optional("enableECSManagedTags") => boolean(),
    optional("enableExecuteCommand") => boolean(),
    optional("healthCheckGracePeriodSeconds") => integer(),
    optional("launchType") => list(any()),
    optional("loadBalancers") => list(load_balancer()()),
    optional("networkConfiguration") => network_configuration(),
    optional("placementConstraints") => list(placement_constraint()()),
    optional("placementStrategy") => list(placement_strategy()()),
    optional("platformVersion") => String.t(),
    optional("propagateTags") => list(any()),
    optional("role") => String.t(),
    optional("schedulingStrategy") => list(any()),
    optional("serviceConnectConfiguration") => service_connect_configuration(),
    optional("serviceRegistries") => list(service_registry()()),
    optional("tags") => list(tag()()),
    optional("taskDefinition") => String.t(),
    optional("volumeConfigurations") => list(service_volume_configuration()()),
    required("serviceName") => String.t()
  }
  """
  @type create_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_definition_placement_constraint() :: %{
    "expression" => String.t(),
    "type" => list(any())
  }
  """
  @type task_definition_placement_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_task_definition_families_response() :: %{
    "families" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_task_definition_families_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_task_set_response() :: %{
    "taskSet" => task_set()
  }
  """
  @type update_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_attributes_response() :: %{
    "attributes" => list(attribute()())
  }
  """
  @type delete_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_tasks_response() :: %{
    "failures" => list(failure()()),
    "tasks" => list(task()())
  }
  """
  @type describe_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_circuit_breaker() :: %{
    "enable" => boolean(),
    "rollback" => boolean()
  }
  """
  @type deployment_circuit_breaker() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_container_instances_response() :: %{
    "containerInstances" => list(container_instance()()),
    "failures" => list(failure()())
  }
  """
  @type describe_container_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  container_state_change() :: %{
    "containerName" => String.t(),
    "exitCode" => integer(),
    "imageDigest" => String.t(),
    "networkBindings" => list(network_binding()()),
    "reason" => String.t(),
    "runtimeId" => String.t(),
    "status" => String.t()
  }
  """
  @type container_state_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  secret() :: %{
    "name" => String.t(),
    "valueFrom" => String.t()
  }
  """
  @type secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_cluster_capacity_providers_request() :: %{
    required("capacityProviders") => list(String.t()()),
    required("cluster") => String.t(),
    required("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item()())
  }
  """
  @type put_cluster_capacity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  auto_scaling_group_provider_update() :: %{
    "managedDraining" => list(any()),
    "managedScaling" => managed_scaling(),
    "managedTerminationProtection" => list(any())
  }
  """
  @type auto_scaling_group_provider_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  instance_health_check_result() :: %{
    "lastStatusChange" => non_neg_integer(),
    "lastUpdated" => non_neg_integer(),
    "status" => list(any()),
    "type" => list(any())
  }
  """
  @type instance_health_check_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_binding() :: %{
    "bindIP" => String.t(),
    "containerPort" => integer(),
    "containerPortRange" => String.t(),
    "hostPort" => integer(),
    "hostPortRange" => String.t(),
    "protocol" => list(any())
  }
  """
  @type network_binding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_task_sets_response() :: %{
    "failures" => list(failure()()),
    "taskSets" => list(task_set()())
  }
  """
  @type describe_task_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deregister_container_instance_request() :: %{
    optional("cluster") => String.t(),
    optional("force") => boolean(),
    required("containerInstance") => String.t()
  }
  """
  @type deregister_container_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_container_instances_request() :: %{
    optional("cluster") => String.t(),
    optional("filter") => String.t(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("status") => list(any())
  }
  """
  @type list_container_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_task_state_change_request() :: %{
    optional("attachments") => list(attachment_state_change()()),
    optional("cluster") => String.t(),
    optional("containers") => list(container_state_change()()),
    optional("executionStoppedAt") => non_neg_integer(),
    optional("managedAgents") => list(managed_agent_state_change()()),
    optional("pullStartedAt") => non_neg_integer(),
    optional("pullStoppedAt") => non_neg_integer(),
    optional("reason") => String.t(),
    optional("status") => String.t(),
    optional("task") => String.t()
  }
  """
  @type submit_task_state_change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  health_check() :: %{
    "command" => list(String.t()()),
    "interval" => integer(),
    "retries" => integer(),
    "startPeriod" => integer(),
    "timeout" => integer()
  }
  """
  @type health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_container_agent_request() :: %{
    optional("cluster") => String.t(),
    required("containerInstance") => String.t()
  }
  """
  @type update_container_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ephemeral_storage() :: %{
    "sizeInGiB" => integer()
  }
  """
  @type ephemeral_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_attachment_state_changes_response() :: %{
    "acknowledgment" => String.t()
  }
  """
  @type submit_attachment_state_changes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_clusters_response() :: %{
    "clusterArns" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_set_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type task_set_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  session() :: %{
    "sessionId" => String.t(),
    "streamUrl" => String.t(),
    "tokenValue" => String.t()
  }
  """
  @type session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_cluster_response() :: %{
    "cluster" => cluster()
  }
  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_capacity_provider_response() :: %{
    "capacityProvider" => capacity_provider()
  }
  """
  @type create_capacity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_container_agent_response() :: %{
    "containerInstance" => container_instance()
  }
  """
  @type update_container_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_attributes_response() :: %{
    "attributes" => list(attribute()())
  }
  """
  @type put_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_definition() :: %{
    "compatibilities" => list(list(any())()),
    "containerDefinitions" => list(container_definition()()),
    "cpu" => String.t(),
    "deregisteredAt" => non_neg_integer(),
    "ephemeralStorage" => ephemeral_storage(),
    "executionRoleArn" => String.t(),
    "family" => String.t(),
    "inferenceAccelerators" => list(inference_accelerator()()),
    "ipcMode" => list(any()),
    "memory" => String.t(),
    "networkMode" => list(any()),
    "pidMode" => list(any()),
    "placementConstraints" => list(task_definition_placement_constraint()()),
    "proxyConfiguration" => proxy_configuration(),
    "registeredAt" => non_neg_integer(),
    "registeredBy" => String.t(),
    "requiresAttributes" => list(attribute()()),
    "requiresCompatibilities" => list(list(any())()),
    "revision" => integer(),
    "runtimePlatform" => runtime_platform(),
    "status" => list(any()),
    "taskDefinitionArn" => String.t(),
    "taskRoleArn" => String.t(),
    "volumes" => list(volume()())
  }
  """
  @type task_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_container_instances_response() :: %{
    "containerInstanceArns" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_container_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cluster_settings_request() :: %{
    required("cluster") => String.t(),
    required("settings") => list(cluster_setting()())
  }
  """
  @type update_cluster_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_service_request() :: %{
    optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
    optional("cluster") => String.t(),
    optional("deploymentConfiguration") => deployment_configuration(),
    optional("desiredCount") => integer(),
    optional("enableECSManagedTags") => boolean(),
    optional("enableExecuteCommand") => boolean(),
    optional("forceNewDeployment") => boolean(),
    optional("healthCheckGracePeriodSeconds") => integer(),
    optional("loadBalancers") => list(load_balancer()()),
    optional("networkConfiguration") => network_configuration(),
    optional("placementConstraints") => list(placement_constraint()()),
    optional("placementStrategy") => list(placement_strategy()()),
    optional("platformVersion") => String.t(),
    optional("propagateTags") => list(any()),
    optional("serviceConnectConfiguration") => service_connect_configuration(),
    optional("serviceRegistries") => list(service_registry()()),
    optional("taskDefinition") => String.t(),
    optional("volumeConfigurations") => list(service_volume_configuration()()),
    required("service") => String.t()
  }
  """
  @type update_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ebs_tag_specification() :: %{
    "propagateTags" => list(any()),
    "resourceType" => list(any()),
    "tags" => list(tag()())
  }
  """
  @type ebs_tag_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_controller() :: %{
    "type" => list(any())
  }
  """
  @type deployment_controller() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_account_setting_default_response() :: %{
    "setting" => setting()
  }
  """
  @type put_account_setting_default_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  discover_poll_endpoint_response() :: %{
    "endpoint" => String.t(),
    "serviceConnectEndpoint" => String.t(),
    "telemetryEndpoint" => String.t()
  }
  """
  @type discover_poll_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_clusters_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_task_definition_request() :: %{
    optional("include") => list(list(any())()),
    required("taskDefinition") => String.t()
  }
  """
  @type describe_task_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  f_sx_windows_file_server_authorization_config() :: %{
    "credentialsParameter" => String.t(),
    "domain" => String.t()
  }
  """
  @type f_sx_windows_file_server_authorization_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_capacity_provider_response() :: %{
    "capacityProvider" => capacity_provider()
  }
  """
  @type update_capacity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  platform_unknown_exception() :: %{
    "message" => String.t()
  }
  """
  @type platform_unknown_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_attributes_request() :: %{
    optional("cluster") => String.t(),
    required("attributes") => list(attribute()())
  }
  """
  @type delete_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  e_f_s_authorization_config() :: %{
    "accessPointId" => String.t(),
    "iam" => list(any())
  }
  """
  @type e_f_s_authorization_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_task_protection_response() :: %{
    "failures" => list(failure()()),
    "protectedTasks" => list(protected_task()())
  }
  """
  @type update_task_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_task_set_request() :: %{
    optional("force") => boolean(),
    required("cluster") => String.t(),
    required("service") => String.t(),
    required("taskSet") => String.t()
  }
  """
  @type delete_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_contains_container_instances_exception() :: %{
    "message" => String.t()
  }
  """
  @type cluster_contains_container_instances_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_container_state_change_response() :: %{
    "acknowledgment" => String.t()
  }
  """
  @type submit_container_state_change_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_task_definition_families_request() :: %{
    optional("familyPrefix") => String.t(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("status") => list(any())
  }
  """
  @type list_task_definition_families_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_cluster_request() :: %{
    required("cluster") => String.t()
  }
  """
  @type delete_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  e_f_s_volume_configuration() :: %{
    "authorizationConfig" => e_f_s_authorization_config(),
    "fileSystemId" => String.t(),
    "rootDirectory" => String.t(),
    "transitEncryption" => list(any()),
    "transitEncryptionPort" => integer()
  }
  """
  @type e_f_s_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cluster_settings_response() :: %{
    "cluster" => cluster()
  }
  """
  @type update_cluster_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  capacity_provider_strategy_item() :: %{
    "base" => integer(),
    "capacityProvider" => String.t(),
    "weight" => integer()
  }
  """
  @type capacity_provider_strategy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  no_update_available_exception() :: %{
    "message" => String.t()
  }
  """
  @type no_update_available_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_task_definitions_response() :: %{
    "failures" => list(failure()()),
    "taskDefinitions" => list(task_definition()())
  }
  """
  @type delete_task_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  placement_constraint() :: %{
    "expression" => String.t(),
    "type" => list(any())
  }
  """
  @type placement_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_configuration() :: %{
    "awsvpcConfiguration" => aws_vpc_configuration()
  }
  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  managed_scaling() :: %{
    "instanceWarmupPeriod" => integer(),
    "maximumScalingStepSize" => integer(),
    "minimumScalingStepSize" => integer(),
    "status" => list(any()),
    "targetCapacity" => integer()
  }
  """
  @type managed_scaling() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  volume() :: %{
    "configuredAtLaunch" => boolean(),
    "dockerVolumeConfiguration" => docker_volume_configuration(),
    "efsVolumeConfiguration" => e_f_s_volume_configuration(),
    "fsxWindowsFileServerVolumeConfiguration" => f_sx_windows_file_server_volume_configuration(),
    "host" => host_volume_properties(),
    "name" => String.t()
  }
  """
  @type volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_parameter_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  missing_version_exception() :: %{
    "message" => String.t()
  }
  """
  @type missing_version_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  register_task_definition_request() :: %{
    optional("cpu") => String.t(),
    optional("ephemeralStorage") => ephemeral_storage(),
    optional("executionRoleArn") => String.t(),
    optional("inferenceAccelerators") => list(inference_accelerator()()),
    optional("ipcMode") => list(any()),
    optional("memory") => String.t(),
    optional("networkMode") => list(any()),
    optional("pidMode") => list(any()),
    optional("placementConstraints") => list(task_definition_placement_constraint()()),
    optional("proxyConfiguration") => proxy_configuration(),
    optional("requiresCompatibilities") => list(list(any())()),
    optional("runtimePlatform") => runtime_platform(),
    optional("tags") => list(tag()()),
    optional("taskRoleArn") => String.t(),
    optional("volumes") => list(volume()()),
    required("containerDefinitions") => list(container_definition()()),
    required("family") => String.t()
  }
  """
  @type register_task_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_tasks_request() :: %{
    optional("cluster") => String.t(),
    optional("include") => list(list(any())()),
    required("tasks") => list(String.t()())
  }
  """
  @type describe_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  inference_accelerator_override() :: %{
    "deviceName" => String.t(),
    "deviceType" => String.t()
  }
  """
  @type inference_accelerator_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  auto_scaling_group_provider() :: %{
    "autoScalingGroupArn" => String.t(),
    "managedDraining" => list(any()),
    "managedScaling" => managed_scaling(),
    "managedTerminationProtection" => list(any())
  }
  """
  @type auto_scaling_group_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  platform_task_definition_incompatibility_exception() :: %{
    "message" => String.t()
  }
  """
  @type platform_task_definition_incompatibility_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  port_mapping() :: %{
    "appProtocol" => list(any()),
    "containerPort" => integer(),
    "containerPortRange" => String.t(),
    "hostPort" => integer(),
    "name" => String.t(),
    "protocol" => list(any())
  }
  """
  @type port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_clusters_response() :: %{
    "clusters" => list(cluster()()),
    "failures" => list(failure()())
  }
  """
  @type describe_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_task_response() :: %{
    "failures" => list(failure()()),
    "tasks" => list(task()())
  }
  """
  @type start_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  load_balancer() :: %{
    "containerName" => String.t(),
    "containerPort" => integer(),
    "loadBalancerName" => String.t(),
    "targetGroupArn" => String.t()
  }
  """
  @type load_balancer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  key_value_pair() :: %{
    "name" => String.t(),
    "value" => String.t()
  }
  """
  @type key_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_service_connect_defaults() :: %{
    "namespace" => String.t()
  }
  """
  @type cluster_service_connect_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("resourceArn") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kernel_capabilities() :: %{
    "add" => list(String.t()()),
    "drop" => list(String.t()())
  }
  """
  @type kernel_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  execute_command_request() :: %{
    optional("cluster") => String.t(),
    optional("container") => String.t(),
    required("command") => String.t(),
    required("interactive") => boolean(),
    required("task") => String.t()
  }
  """
  @type execute_command_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_service_primary_task_set_request() :: %{
    required("cluster") => String.t(),
    required("primaryTaskSet") => String.t(),
    required("service") => String.t()
  }
  """
  @type update_service_primary_task_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  runtime_platform() :: %{
    "cpuArchitecture" => list(any()),
    "operatingSystemFamily" => list(any())
  }
  """
  @type runtime_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type target_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_service_request() :: %{
    optional("cluster") => String.t(),
    optional("force") => boolean(),
    required("service") => String.t()
  }
  """
  @type delete_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  linux_parameters() :: %{
    "capabilities" => kernel_capabilities(),
    "devices" => list(device()()),
    "initProcessEnabled" => boolean(),
    "maxSwap" => integer(),
    "sharedMemorySize" => integer(),
    "swappiness" => integer(),
    "tmpfs" => list(tmpfs()())
  }
  """
  @type linux_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_task_state_change_response() :: %{
    "acknowledgment" => String.t()
  }
  """
  @type submit_task_state_change_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_connect_service() :: %{
    "clientAliases" => list(service_connect_client_alias()()),
    "discoveryName" => String.t(),
    "ingressPortOverride" => integer(),
    "portName" => String.t(),
    "timeout" => timeout_configuration(),
    "tls" => service_connect_tls_configuration()
  }
  """
  @type service_connect_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scale() :: %{
    "unit" => list(any()),
    "value" => float()
  }
  """
  @type scale() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  server_exception() :: %{
    "message" => String.t()
  }
  """
  @type server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  platform_device() :: %{
    "id" => String.t(),
    "type" => list(any())
  }
  """
  @type platform_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  discover_poll_endpoint_request() :: %{
    optional("cluster") => String.t(),
    optional("containerInstance") => String.t()
  }
  """
  @type discover_poll_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_contains_services_exception() :: %{
    "message" => String.t()
  }
  """
  @type cluster_contains_services_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  blocked_exception() :: %{
    "message" => String.t()
  }
  """
  @type blocked_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute() :: %{
    "name" => String.t(),
    "targetId" => String.t(),
    "targetType" => list(any()),
    "value" => String.t()
  }
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tasks_request() :: %{
    optional("cluster") => String.t(),
    optional("containerInstance") => String.t(),
    optional("desiredStatus") => list(any()),
    optional("family") => String.t(),
    optional("launchType") => list(any()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("serviceName") => String.t(),
    optional("startedBy") => String.t()
  }
  """
  @type list_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_capacity_providers_response() :: %{
    "capacityProviders" => list(capacity_provider()()),
    "failures" => list(failure()()),
    "nextToken" => String.t()
  }
  """
  @type describe_capacity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  failure() :: %{
    "arn" => String.t(),
    "detail" => String.t(),
    "reason" => String.t()
  }
  """
  @type failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_task_response() :: %{
    "task" => task()
  }
  """
  @type stop_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_services_by_namespace_response() :: %{
    "nextToken" => String.t(),
    "serviceArns" => list(String.t()())
  }
  """
  @type list_services_by_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_connect_client_alias() :: %{
    "dnsName" => String.t(),
    "port" => integer()
  }
  """
  @type service_connect_client_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  aws_vpc_configuration() :: %{
    "assignPublicIp" => list(any()),
    "securityGroups" => list(String.t()()),
    "subnets" => list(String.t()())
  }
  """
  @type aws_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  capacity_provider() :: %{
    "autoScalingGroupProvider" => auto_scaling_group_provider(),
    "capacityProviderArn" => String.t(),
    "name" => String.t(),
    "status" => list(any()),
    "tags" => list(tag()()),
    "updateStatus" => list(any()),
    "updateStatusReason" => String.t()
  }
  """
  @type capacity_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_capacity_provider_request() :: %{
    optional("tags") => list(tag()()),
    required("autoScalingGroupProvider") => auto_scaling_group_provider(),
    required("name") => String.t()
  }
  """
  @type create_capacity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_attributes_request() :: %{
    optional("cluster") => String.t(),
    required("attributes") => list(attribute()())
  }
  """
  @type put_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_cluster_capacity_providers_response() :: %{
    "cluster" => cluster()
  }
  """
  @type put_cluster_capacity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  protected_task() :: %{
    "expirationDate" => non_neg_integer(),
    "protectionEnabled" => boolean(),
    "taskArn" => String.t()
  }
  """
  @type protected_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_connect_tls_configuration() :: %{
    "issuerCertificateAuthority" => service_connect_tls_certificate_authority(),
    "kmsKey" => String.t(),
    "roleArn" => String.t()
  }
  """
  @type service_connect_tls_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_attributes_request() :: %{
    optional("attributeName") => String.t(),
    optional("attributeValue") => String.t(),
    optional("cluster") => String.t(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("targetType") => list(any())
  }
  """
  @type list_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_service_response() :: %{
    "service" => service()
  }
  """
  @type update_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  volume_from() :: %{
    "readOnly" => boolean(),
    "sourceContainer" => String.t()
  }
  """
  @type volume_from() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_service_response() :: %{
    "service" => service()
  }
  """
  @type delete_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  device() :: %{
    "containerPath" => String.t(),
    "hostPath" => String.t(),
    "permissions" => list(list(any())())
  }
  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_attachment_state_changes_request() :: %{
    optional("cluster") => String.t(),
    required("attachments") => list(attachment_state_change()())
  }
  """
  @type submit_attachment_state_changes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_account_setting_request() :: %{
    optional("principalArn") => String.t(),
    required("name") => list(any())
  }
  """
  @type delete_account_setting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_task_set_response() :: %{
    "taskSet" => task_set()
  }
  """
  @type create_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_volume_configuration() :: %{
    "managedEBSVolume" => service_managed_ebs_volume_configuration(),
    "name" => String.t()
  }
  """
  @type service_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tasks_response() :: %{
    "nextToken" => String.t(),
    "taskArns" => list(String.t()())
  }
  """
  @type list_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_service_response() :: %{
    "service" => service()
  }
  """
  @type create_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_managed_ebs_volume_configuration() :: %{
    "encrypted" => boolean(),
    "filesystemType" => list(any()),
    "iops" => integer(),
    "kmsKeyId" => String.t(),
    "roleArn" => String.t(),
    "sizeInGiB" => integer(),
    "snapshotId" => String.t(),
    "tagSpecifications" => list(ebs_tag_specification()()),
    "terminationPolicy" => task_managed_ebs_volume_termination_policy(),
    "throughput" => integer(),
    "volumeType" => String.t()
  }
  """
  @type task_managed_ebs_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  log_configuration() :: %{
    "logDriver" => list(any()),
    "options" => map(),
    "secretOptions" => list(secret()())
  }
  """
  @type log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  container_instance() :: %{
    "agentConnected" => boolean(),
    "agentUpdateStatus" => list(any()),
    "attachments" => list(attachment()()),
    "attributes" => list(attribute()()),
    "capacityProviderName" => String.t(),
    "containerInstanceArn" => String.t(),
    "ec2InstanceId" => String.t(),
    "healthStatus" => container_instance_health_status(),
    "pendingTasksCount" => integer(),
    "registeredAt" => non_neg_integer(),
    "registeredResources" => list(resource()()),
    "remainingResources" => list(resource()()),
    "runningTasksCount" => integer(),
    "status" => String.t(),
    "statusReason" => String.t(),
    "tags" => list(tag()()),
    "version" => float(),
    "versionInfo" => version_info()
  }
  """
  @type container_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_connect_tls_certificate_authority() :: %{
    "awsPcaAuthorityArn" => String.t()
  }
  """
  @type service_connect_tls_certificate_authority() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deregister_task_definition_request() :: %{
    required("taskDefinition") => String.t()
  }
  """
  @type deregister_task_definition_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_requirement() :: %{
    "type" => list(any()),
    "value" => String.t()
  }
  """
  @type resource_requirement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  firelens_configuration() :: %{
    "options" => map(),
    "type" => list(any())
  }
  """
  @type firelens_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  version_info() :: %{
    "agentHash" => String.t(),
    "agentVersion" => String.t(),
    "dockerVersion" => String.t()
  }
  """
  @type version_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_service_primary_task_set_response() :: %{
    "taskSet" => task_set()
  }
  """
  @type update_service_primary_task_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_managed_ebs_volume_configuration() :: %{
    "encrypted" => boolean(),
    "filesystemType" => list(any()),
    "iops" => integer(),
    "kmsKeyId" => String.t(),
    "roleArn" => String.t(),
    "sizeInGiB" => integer(),
    "snapshotId" => String.t(),
    "tagSpecifications" => list(ebs_tag_specification()()),
    "throughput" => integer(),
    "volumeType" => String.t()
  }
  """
  @type service_managed_ebs_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  register_task_definition_response() :: %{
    "tags" => list(tag()()),
    "taskDefinition" => task_definition()
  }
  """
  @type register_task_definition_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_clusters_request() :: %{
    optional("clusters") => list(String.t()()),
    optional("include") => list(list(any())())
  }
  """
  @type describe_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  run_task_request() :: %{
    optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()()),
    optional("clientToken") => String.t(),
    optional("cluster") => String.t(),
    optional("count") => integer(),
    optional("enableECSManagedTags") => boolean(),
    optional("enableExecuteCommand") => boolean(),
    optional("group") => String.t(),
    optional("launchType") => list(any()),
    optional("networkConfiguration") => network_configuration(),
    optional("overrides") => task_override(),
    optional("placementConstraints") => list(placement_constraint()()),
    optional("placementStrategy") => list(placement_strategy()()),
    optional("platformVersion") => String.t(),
    optional("propagateTags") => list(any()),
    optional("referenceId") => String.t(),
    optional("startedBy") => String.t(),
    optional("tags") => list(tag()()),
    optional("volumeConfigurations") => list(task_volume_configuration()()),
    required("taskDefinition") => String.t()
  }
  """
  @type run_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deregister_container_instance_response() :: %{
    "containerInstance" => container_instance()
  }
  """
  @type deregister_container_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cluster_service_connect_defaults_request() :: %{
    "namespace" => String.t()
  }
  """
  @type cluster_service_connect_defaults_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_attributes_response() :: %{
    "attributes" => list(attribute()()),
    "nextToken" => String.t()
  }
  """
  @type list_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  repository_credentials() :: %{
    "credentialsParameter" => String.t()
  }
  """
  @type repository_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  f_sx_windows_file_server_volume_configuration() :: %{
    "authorizationConfig" => f_sx_windows_file_server_authorization_config(),
    "fileSystemId" => String.t(),
    "rootDirectory" => String.t()
  }
  """
  @type f_sx_windows_file_server_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tmpfs() :: %{
    "containerPath" => String.t(),
    "mountOptions" => list(String.t()()),
    "size" => integer()
  }
  """
  @type tmpfs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  environment_file() :: %{
    "type" => list(any()),
    "value" => String.t()
  }
  """
  @type environment_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  placement_strategy() :: %{
    "field" => String.t(),
    "type" => list(any())
  }
  """
  @type placement_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cluster_response() :: %{
    "cluster" => cluster()
  }
  """
  @type update_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  container_dependency() :: %{
    "condition" => list(any()),
    "containerName" => String.t()
  }
  """
  @type container_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource() :: %{
    "doubleValue" => float(),
    "integerValue" => integer(),
    "longValue" => float(),
    "name" => String.t(),
    "stringSetValue" => list(String.t()()),
    "type" => String.t()
  }
  """
  @type resource() :: %{String.t() => any()}

  def metadata do
    %{
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

  Capacity providers are associated with an Amazon ECS
  cluster and are used in capacity provider strategies to facilitate cluster auto
  scaling.

  Only capacity providers that use an Auto Scaling group can be created. Amazon
  ECS tasks on
  Fargate use the `FARGATE` and `FARGATE_SPOT` capacity providers.
  These providers are available to all accounts in the Amazon Web Services Regions
  that Fargate
  supports.
  """
  @spec create_capacity_provider(map(), create_capacity_provider_request(), list()) ::
          {:ok, create_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, server_exception()}
          | {:error, update_in_progress_exception()}
  def create_capacity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCapacityProvider", input, options)
  end

  @doc """
  Creates a new Amazon ECS cluster.

  By default, your account receives a `default`
  cluster when you launch your first container instance. However, you can create
  your own
  cluster with a unique name with the `CreateCluster` action.

  When you call the `CreateCluster` API operation, Amazon ECS attempts to
  create the Amazon ECS service-linked role for your account. This is so that it
  can manage
  required resources in other Amazon Web Services services on your behalf.
  However, if the user that
  makes the call doesn't have permissions to create the service-linked role, it
  isn't
  created. For more information, see [Using service-linked roles for Amazon
  ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, namespace_not_found_exception()}
          | {:error, server_exception()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Runs and maintains your desired number of tasks from a specified task
  definition.

  If
  the number of tasks running in a service drops below the `desiredCount`,
  Amazon ECS runs another copy of the task in the specified cluster. To update an
  existing
  service, see the `UpdateService` action.

  Starting April 15, 2023, Amazon Web Services will not onboard new customers to
  Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.

  In addition to maintaining the desired count of tasks in your service, you can
  optionally run your service behind one or more load balancers. The load
  balancers
  distribute traffic across the tasks that are associated with the service. For
  more
  information, see [Service load balancing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when creating or
  updating a service. `volumeConfigurations` is only supported for REPLICA
  service and not DAEMON service. For more infomation, see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*.

  Tasks for services that don't use a load balancer are considered healthy if
  they're in
  the `RUNNING` state. Tasks for services that use a load balancer are
  considered healthy if they're in the `RUNNING` state and are reported as
  healthy by the load balancer.

  There are two service scheduler strategies available:

    *

  `REPLICA` - The replica scheduling strategy places and
  maintains your desired number of tasks across your cluster. By default, the
  service scheduler spreads tasks across Availability Zones. You can use task
  placement strategies and constraints to customize task placement decisions. For
  more information, see [Service scheduler concepts](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
  in the *Amazon Elastic Container Service Developer Guide*.

    *

  `DAEMON` - The daemon scheduling strategy deploys exactly one
  task on each active container instance that meets all of the task placement
  constraints that you specify in your cluster. The service scheduler also
  evaluates the task placement constraints for running tasks. It also stops tasks
  that don't meet the placement constraints. When using this strategy, you don't
  need to specify a desired number of tasks, a task placement strategy, or use
  Service Auto Scaling policies. For more information, see [Service scheduler concepts](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can optionally specify a deployment configuration for your service. The
  deployment
  is initiated by changing properties. For example, the deployment might be
  initiated by
  the task definition or by your desired count of a service. This is done with an
  `UpdateService` operation. The default value for a replica service for
  `minimumHealthyPercent` is 100%. The default value for a daemon service
  for `minimumHealthyPercent` is 0%.

  If a service uses the `ECS` deployment controller, the minimum healthy
  percent represents a lower limit on the number of tasks in a service that must
  remain in
  the `RUNNING` state during a deployment. Specifically, it represents it as a
  percentage of your desired number of tasks (rounded up to the nearest integer).
  This
  happens when any of your container instances are in the `DRAINING` state if
  the service contains tasks using the EC2 launch type. Using this
  parameter, you can deploy without using additional cluster capacity. For
  example, if you
  set your service to have desired number of four tasks and a minimum healthy
  percent of
  50%, the scheduler might stop two existing tasks to free up cluster capacity
  before
  starting two new tasks. If they're in the `RUNNING` state, tasks for services
  that don't use a load balancer are considered healthy . If they're in the
  `RUNNING` state and reported as healthy by the load balancer, tasks for
  services that *do* use a load balancer are considered healthy . The
  default value for minimum healthy percent is 100%.

  If a service uses the `ECS` deployment controller, the ## maximum percent
  parameter represents an upper limit on the
  number of tasks in a service that are allowed in the `RUNNING` or
  `PENDING` state during a deployment. Specifically, it represents it as a
  percentage of the desired number of tasks (rounded down to the nearest integer).
  This
  happens when any of your container instances are in the `DRAINING` state if
  the service contains tasks using the EC2 launch type. Using this
  parameter, you can define the deployment batch size. For example, if your
  service has a
  desired number of four tasks and a maximum percent value of 200%, the scheduler
  may
  start four new tasks before stopping the four older tasks (provided that the
  cluster
  resources required to do this are available). The default value for maximum
  percent is
  200%.

  If a service uses either the `CODE_DEPLOY` or `EXTERNAL`
  deployment controller types and tasks that use the EC2 launch type, the
  **minimum healthy percent** and **maximum percent** values are used only to
  define the lower and upper limit
  on the number of the tasks in the service that remain in the `RUNNING` state.
  This is while the container instances are in the `DRAINING` state. If the
  tasks in the service use the Fargate launch type, the minimum healthy
  percent and maximum percent values aren't used. This is the case even if they're
  currently visible when describing your service.

  When creating a service that uses the `EXTERNAL` deployment controller, you
  can specify only parameters that aren't controlled at the task set level. The
  only
  required parameter is the service name. You control your services using the
  `CreateTaskSet` operation. For more information, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  When the service scheduler launches new tasks, it determines task placement. For
  information about task placement and task placement strategies, see [Amazon ECS task
  placement](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec create_service(map(), create_service_request(), list()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, namespace_not_found_exception()}
          | {:error, platform_task_definition_incompatibility_exception()}
          | {:error, platform_unknown_exception()}
          | {:error, server_exception()}
          | {:error, unsupported_feature_exception()}
  def create_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Create a task set in the specified cluster and service.

  This is used when a service
  uses the `EXTERNAL` deployment controller type. For more information, see
  [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  For information about the maximum number of task sets and otther quotas, see
  [Amazon ECS service
  quotas](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec create_task_set(map(), create_task_set_request(), list()) ::
          {:ok, create_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, namespace_not_found_exception()}
          | {:error, platform_task_definition_incompatibility_exception()}
          | {:error, platform_unknown_exception()}
          | {:error, server_exception()}
          | {:error, service_not_active_exception()}
          | {:error, service_not_found_exception()}
          | {:error, unsupported_feature_exception()}
  def create_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTaskSet", input, options)
  end

  @doc """
  Disables an account setting for a specified user, role, or the root user for an
  account.
  """
  @spec delete_account_setting(map(), delete_account_setting_request(), list()) ::
          {:ok, delete_account_setting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def delete_account_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccountSetting", input, options)
  end

  @doc """
  Deletes one or more custom attributes from an Amazon ECS resource.
  """
  @spec delete_attributes(map(), delete_attributes_request(), list()) ::
          {:ok, delete_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, target_not_found_exception()}
  def delete_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAttributes", input, options)
  end

  @doc """
  Deletes the specified capacity provider.

  The `FARGATE` and `FARGATE_SPOT` capacity providers are
  reserved and can't be deleted. You can disassociate them from a cluster using
  either
  the `PutClusterCapacityProviders` API or by deleting the
  cluster.

  Prior to a capacity provider being deleted, the capacity provider must be
  removed from
  the capacity provider strategy from all services. The `UpdateService`
  API can be used to remove a capacity provider from a service's capacity provider
  strategy. When updating a service, the `forceNewDeployment` option can be
  used to ensure that any tasks using the Amazon EC2 instance capacity provided by
  the capacity
  provider are transitioned to use the capacity from the remaining capacity
  providers.
  Only capacity providers that aren't associated with a cluster can be deleted. To
  remove
  a capacity provider from a cluster, you can either use
  `PutClusterCapacityProviders` or delete the cluster.
  """
  @spec delete_capacity_provider(map(), delete_capacity_provider_request(), list()) ::
          {:ok, delete_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def delete_capacity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCapacityProvider", input, options)
  end

  @doc """
  Deletes the specified cluster.

  The cluster transitions to the `INACTIVE`
  state. Clusters with an `INACTIVE` status might remain discoverable in your
  account for a period of time. However, this behavior is subject to change in the
  future.
  We don't recommend that you rely on `INACTIVE` clusters persisting.

  You must deregister all container instances from this cluster before you may
  delete
  it. You can list the container instances in a cluster with
  `ListContainerInstances` and deregister them with `DeregisterContainerInstance`.
  """
  @spec delete_cluster(map(), delete_cluster_request(), list()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_contains_container_instances_exception()}
          | {:error, cluster_contains_services_exception()}
          | {:error, cluster_contains_tasks_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, update_in_progress_exception()}
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes a specified service within a cluster.

  You can delete a service if you have no
  running tasks in it and the desired task count is zero. If the service is
  actively
  maintaining tasks, you can't delete it, and you must update the service to a
  desired
  task count of zero. For more information, see `UpdateService`.

  When you delete a service, if there are still running tasks that require
  cleanup,
  the service status moves from `ACTIVE` to `DRAINING`, and the
  service is no longer visible in the console or in the `ListServices`
  API operation. After all tasks have transitioned to either `STOPPING` or
  `STOPPED` status, the service status moves from `DRAINING`
  to `INACTIVE`. Services in the `DRAINING` or
  `INACTIVE` status can still be viewed with the `DescribeServices` API operation.
  However, in the future,
  `INACTIVE` services may be cleaned up and purged from Amazon ECS record
  keeping, and `DescribeServices` calls on those services return a
  `ServiceNotFoundException` error.

  If you attempt to create a new service with the same name as an existing service
  in either `ACTIVE` or `DRAINING` status, you receive an
  error.
  """
  @spec delete_service(map(), delete_service_request(), list()) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, service_not_found_exception()}
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
  the
  `INACTIVE` to `DELETE_IN_PROGRESS`. Existing tasks and
  services that reference a `DELETE_IN_PROGRESS` task definition revision
  continue to run without disruption. Existing services that reference a
  `DELETE_IN_PROGRESS` task definition revision can still scale up or down
  by modifying the service's desired count.

  You can't use a `DELETE_IN_PROGRESS` task definition revision to run new
  tasks or create new services. You also can't update an existing service to
  reference a
  `DELETE_IN_PROGRESS` task definition revision.

  A task definition revision will stay in `DELETE_IN_PROGRESS` status until
  all the associated tasks and services have been terminated.

  When you delete all `INACTIVE` task definition revisions, the task
  definition name is not displayed in the console and not returned in the API. If
  a task
  definition revisions are in the `DELETE_IN_PROGRESS` state, the task
  definition name is displayed in the console and returned in the API. The task
  definition
  name is retained by Amazon ECS and the revision is incremented the next time you
  create a
  task definition with that name.
  """
  @spec delete_task_definitions(map(), delete_task_definitions_request(), list()) ::
          {:ok, delete_task_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def delete_task_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTaskDefinitions", input, options)
  end

  @doc """
  Deletes a specified task set within a service.

  This is used when a service uses the
  `EXTERNAL` deployment controller type. For more information, see [Amazon ECS deployment
  types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec delete_task_set(map(), delete_task_set_request(), list()) ::
          {:ok, delete_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, service_not_active_exception()}
          | {:error, service_not_found_exception()}
          | {:error, task_set_not_found_exception()}
          | {:error, unsupported_feature_exception()}
  def delete_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTaskSet", input, options)
  end

  @doc """
  Deregisters an Amazon ECS container instance from the specified cluster.

  This instance is
  no longer available to run tasks.

  If you intend to use the container instance for some other purpose after
  deregistration, we recommend that you stop all of the tasks running on the
  container
  instance before deregistration. That prevents any orphaned tasks from consuming
  resources.

  Deregistering a container instance removes the instance from a cluster, but it
  doesn't
  terminate the EC2 instance. If you are finished using the instance, be sure to
  terminate
  it in the Amazon EC2 console to stop billing.

  If you terminate a running container instance, Amazon ECS automatically
  deregisters the
  instance from your cluster (stopped container instances or instances with
  disconnected agents aren't automatically deregistered when terminated).
  """
  @spec deregister_container_instance(map(), deregister_container_instance_request(), list()) ::
          {:ok, deregister_container_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def deregister_container_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterContainerInstance", input, options)
  end

  @doc """
  Deregisters the specified task definition by family and revision.

  Upon deregistration,
  the task definition is marked as `INACTIVE`. Existing tasks and services that
  reference an `INACTIVE` task definition continue to run without disruption.
  Existing services that reference an `INACTIVE` task definition can still
  scale up or down by modifying the service's desired count. If you want to delete
  a task
  definition revision, you must first deregister the task definition revision.

  You can't use an `INACTIVE` task definition to run new tasks or create new
  services, and you can't update an existing service to reference an `INACTIVE`
  task definition. However, there may be up to a 10-minute window following
  deregistration
  where these restrictions have not yet taken effect.

  At this time, `INACTIVE` task definitions remain discoverable in your
  account indefinitely. However, this behavior is subject to change in the future.
  We
  don't recommend that you rely on `INACTIVE` task definitions persisting
  beyond the lifecycle of any associated tasks and services.

  You must deregister a task definition revision before you delete it. For more
  information, see
  [DeleteTaskDefinitions](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteTaskDefinitions.html).
  """
  @spec deregister_task_definition(map(), deregister_task_definition_request(), list()) ::
          {:ok, deregister_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def deregister_task_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterTaskDefinition", input, options)
  end

  @doc """
  Describes one or more of your capacity providers.
  """
  @spec describe_capacity_providers(map(), describe_capacity_providers_request(), list()) ::
          {:ok, describe_capacity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def describe_capacity_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCapacityProviders", input, options)
  end

  @doc """
  Describes one or more of your clusters.
  """
  @spec describe_clusters(map(), describe_clusters_request(), list()) ::
          {:ok, describe_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def describe_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClusters", input, options)
  end

  @doc """
  Describes one or more container instances.

  Returns metadata about each container
  instance requested.
  """
  @spec describe_container_instances(map(), describe_container_instances_request(), list()) ::
          {:ok, describe_container_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def describe_container_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContainerInstances", input, options)
  end

  @doc """
  Describes the specified services running in your cluster.
  """
  @spec describe_services(map(), describe_services_request(), list()) ::
          {:ok, describe_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def describe_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServices", input, options)
  end

  @doc """
  Describes a task definition.

  You can specify a `family` and
  `revision` to find information about a specific task definition, or you
  can simply specify the family to find the latest `ACTIVE` revision in that
  family.

  You can only describe `INACTIVE` task definitions while an active task
  or service references them.
  """
  @spec describe_task_definition(map(), describe_task_definition_request(), list()) ::
          {:ok, describe_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def describe_task_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTaskDefinition", input, options)
  end

  @doc """
  Describes the task sets in the specified cluster and service.

  This is used when a
  service uses the `EXTERNAL` deployment controller type. For more information,
  see [Amazon ECS Deployment Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec describe_task_sets(map(), describe_task_sets_request(), list()) ::
          {:ok, describe_task_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, service_not_active_exception()}
          | {:error, service_not_found_exception()}
          | {:error, unsupported_feature_exception()}
  def describe_task_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTaskSets", input, options)
  end

  @doc """
  Describes a specified task or tasks.

  Currently, stopped tasks appear in the returned results for at least one hour.

  If you have tasks with tags, and then delete the cluster, the tagged tasks are
  returned in the response. If you create a new cluster with the same name as the
  deleted
  cluster, the tagged tasks are not included in the response.
  """
  @spec describe_tasks(map(), describe_tasks_request(), list()) ::
          {:ok, describe_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def describe_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTasks", input, options)
  end

  @doc """

  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Returns an endpoint for the Amazon ECS agent to poll for updates.
  """
  @spec discover_poll_endpoint(map(), discover_poll_endpoint_request(), list()) ::
          {:ok, discover_poll_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, server_exception()}
  def discover_poll_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DiscoverPollEndpoint", input, options)
  end

  @doc """
  Runs a command remotely on a container within a task.

  If you use a condition key in your IAM policy to refine the conditions for the
  policy statement, for example limit the actions to a specific cluster, you
  receive an
  `AccessDeniedException` when there is a mismatch between the condition
  key value and the corresponding parameter value.

  For information about required permissions and considerations, see [Using Amazon ECS
  Exec for
  debugging](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html)
  in the *Amazon ECS Developer Guide*.
  """
  @spec execute_command(map(), execute_command_request(), list()) ::
          {:ok, execute_command_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, target_not_connected_exception()}
  def execute_command(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteCommand", input, options)
  end

  @doc """
  Retrieves the protection status of tasks in an Amazon ECS service.
  """
  @spec get_task_protection(map(), get_task_protection_request(), list()) ::
          {:ok, get_task_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, server_exception()}
          | {:error, unsupported_feature_exception()}
  def get_task_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTaskProtection", input, options)
  end

  @doc """
  Lists the account settings for a specified principal.
  """
  @spec list_account_settings(map(), list_account_settings_request(), list()) ::
          {:ok, list_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def list_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountSettings", input, options)
  end

  @doc """
  Lists the attributes for Amazon ECS resources within a specified target type and
  cluster.

  When you specify a target type and cluster, `ListAttributes` returns a list
  of attribute objects, one for each attribute on each resource. You can filter
  the list
  of results to a single attribute name to only return results that have that
  name. You
  can also filter the results by attribute name and value. You can do this, for
  example,
  to see which container instances in a cluster are running a Linux AMI
  (`ecs.os-type=linux`).
  """
  @spec list_attributes(map(), list_attributes_request(), list()) ::
          {:ok, list_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
  def list_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAttributes", input, options)
  end

  @doc """
  Returns a list of existing clusters.
  """
  @spec list_clusters(map(), list_clusters_request(), list()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListClusters", input, options)
  end

  @doc """
  Returns a list of container instances in a specified cluster.

  You can filter the
  results of a `ListContainerInstances` operation with cluster query language
  statements inside the `filter` parameter. For more information, see [Cluster Query
  Language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec list_container_instances(map(), list_container_instances_request(), list()) ::
          {:ok, list_container_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def list_container_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContainerInstances", input, options)
  end

  @doc """
  Returns a list of services.

  You can filter the results by cluster, launch type, and
  scheduling strategy.
  """
  @spec list_services(map(), list_services_request(), list()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def list_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  This operation lists all of the services that are associated with a Cloud Map
  namespace.

  This list might include services in different clusters. In contrast,
  `ListServices` can only list services in one cluster at a time. If you
  need to filter the list of services in a single cluster by various parameters,
  use
  `ListServices`. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec list_services_by_namespace(map(), list_services_by_namespace_request(), list()) ::
          {:ok, list_services_by_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, namespace_not_found_exception()}
          | {:error, server_exception()}
  def list_services_by_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServicesByNamespace", input, options)
  end

  @doc """
  List the tags for an Amazon ECS resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of task definition families that are registered to your account.

  This
  list includes task definition families that no longer have any `ACTIVE` task
  definition revisions.

  You can filter out task definition families that don't contain any `ACTIVE`
  task definition revisions by setting the `status` parameter to
  `ACTIVE`. You can also filter the results with the
  `familyPrefix` parameter.
  """
  @spec list_task_definition_families(map(), list_task_definition_families_request(), list()) ::
          {:ok, list_task_definition_families_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def list_task_definition_families(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTaskDefinitionFamilies", input, options)
  end

  @doc """
  Returns a list of task definitions that are registered to your account.

  You can filter
  the results by family name with the `familyPrefix` parameter or by status
  with the `status` parameter.
  """
  @spec list_task_definitions(map(), list_task_definitions_request(), list()) ::
          {:ok, list_task_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def list_task_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTaskDefinitions", input, options)
  end

  @doc """
  Returns a list of tasks.

  You can filter the results by cluster, task definition
  family, container instance, launch type, what IAM principal started the task, or
  by
  the desired status of the task.

  Recently stopped tasks might appear in the returned results.
  """
  @spec list_tasks(map(), list_tasks_request(), list()) ::
          {:ok, list_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, service_not_found_exception()}
  def list_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTasks", input, options)
  end

  @doc """
  Modifies an account setting.

  Account settings are set on a per-Region basis.

  If you change the root user account setting, the default settings are reset for
  users and
  roles that do not have specified individual account settings. For more
  information, see
  [Account Settings](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec put_account_setting(map(), put_account_setting_request(), list()) ::
          {:ok, put_account_setting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def put_account_setting(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAccountSetting", input, options)
  end

  @doc """
  Modifies an account setting for all users on an account for whom no individual
  account
  setting has been specified.

  Account settings are set on a per-Region basis.
  """
  @spec put_account_setting_default(map(), put_account_setting_default_request(), list()) ::
          {:ok, put_account_setting_default_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def put_account_setting_default(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAccountSettingDefault", input, options)
  end

  @doc """
  Create or update an attribute on an Amazon ECS resource.

  If the attribute doesn't exist,
  it's created. If the attribute exists, its value is replaced with the specified
  value.
  To delete an attribute, use `DeleteAttributes`. For more information,
  see
  [Attributes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec put_attributes(map(), put_attributes_request(), list()) ::
          {:ok, put_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, attribute_limit_exceeded_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, target_not_found_exception()}
  def put_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAttributes", input, options)
  end

  @doc """
  Modifies the available capacity providers and the default capacity provider
  strategy
  for a cluster.

  You must specify both the available capacity providers and a default capacity
  provider
  strategy for the cluster. If the specified cluster has existing capacity
  providers
  associated with it, you must specify all existing capacity providers in addition
  to any
  new ones you want to add. Any existing capacity providers that are associated
  with a
  cluster that are omitted from a `PutClusterCapacityProviders` API call
  will be disassociated with the cluster. You can only disassociate an existing
  capacity
  provider from a cluster if it's not being used by any existing tasks.

  When creating a service or running a task on a cluster, if no capacity provider
  or
  launch type is specified, then the cluster's default capacity provider strategy
  is used.
  We recommend that you define a default capacity provider strategy for your
  cluster.
  However, you must specify an empty array (`[]`) to bypass defining a default
  strategy.
  """
  @spec put_cluster_capacity_providers(map(), put_cluster_capacity_providers_request(), list()) ::
          {:ok, put_cluster_capacity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, server_exception()}
          | {:error, update_in_progress_exception()}
  def put_cluster_capacity_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutClusterCapacityProviders", input, options)
  end

  @doc """

  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Registers an EC2 instance into the specified cluster. This instance becomes
  available
  to place containers on.
  """
  @spec register_container_instance(map(), register_container_instance_request(), list()) ::
          {:ok, register_container_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def register_container_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterContainerInstance", input, options)
  end

  @doc """
  Registers a new task definition from the supplied `family` and
  `containerDefinitions`.

  Optionally, you can add data volumes to your
  containers with the `volumes` parameter. For more information about task
  definition parameters and defaults, see [Amazon ECS Task Definitions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can specify a role for your task with the `taskRoleArn` parameter. When
  you specify a role for a task, its containers can then use the latest versions
  of the
  CLI or SDKs to make API requests to the Amazon Web Services services that are
  specified in the
  policy that's associated with the role. For more information, see [IAM Roles for
  Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can specify a Docker networking mode for the containers in your task
  definition
  with the `networkMode` parameter. The available network modes correspond to
  those described in [Network settings](https://docs.docker.com/engine/reference/run/#/network-settings) in
  the Docker run reference. If you specify the `awsvpc`
  network mode, the task is allocated an elastic network interface, and you must
  specify a
  `NetworkConfiguration` when you create a service or run a task with
  the task definition. For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec register_task_definition(map(), register_task_definition_request(), list()) ::
          {:ok, register_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def register_task_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterTaskDefinition", input, options)
  end

  @doc """
  Starts a new task using the specified task definition.

  You can allow Amazon ECS to place tasks for you, or you can customize how Amazon
  ECS places
  tasks using placement constraints and placement strategies. For more
  information, see
  [Scheduling Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  Alternatively, you can use `StartTask` to use your own scheduler or
  place tasks manually on specific container instances.

  Starting April 15, 2023, Amazon Web Services will not onboard new customers to
  Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when creating or
  updating a service. For more infomation, see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*.

  The Amazon ECS API follows an eventual consistency model. This is because of the
  distributed nature of the system supporting the API. This means that the result
  of an
  API command you run that affects your Amazon ECS resources might not be
  immediately visible
  to all subsequent commands you run. Keep this in mind when you carry out an API
  command
  that immediately follows a previous API command.

  To manage eventual consistency, you can do the following:

    *
  Confirm the state of the resource before you run a command to modify it. Run
  the DescribeTasks command using an exponential backoff algorithm to ensure that
  you allow enough time for the previous command to propagate through the system.
  To do this, run the DescribeTasks command repeatedly, starting with a couple of
  seconds of wait time and increasing gradually up to five minutes of wait
  time.

    *
  Add wait time between subsequent commands, even if the DescribeTasks command
  returns an accurate response. Apply an exponential backoff algorithm starting
  with a couple of seconds of wait time, and increase gradually up to about five
  minutes of wait time.
  """
  @spec run_task(map(), run_task_request(), list()) ::
          {:ok, run_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, blocked_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, conflict_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, platform_task_definition_incompatibility_exception()}
          | {:error, platform_unknown_exception()}
          | {:error, server_exception()}
          | {:error, unsupported_feature_exception()}
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

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when creating or
  updating a service. For more infomation, see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec start_task(map(), start_task_request(), list()) ::
          {:ok, start_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, unsupported_feature_exception()}
  def start_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTask", input, options)
  end

  @doc """
  Stops a running task.

  Any tags associated with the task will be deleted.

  When `StopTask` is called on a task, the equivalent of

  ```
  docker
  stop
  ```

  is issued to the containers running in the task. This results in a
  `SIGTERM` value and a default 30-second timeout, after which the
  `SIGKILL` value is sent and the containers are forcibly stopped. If the
  container handles the `SIGTERM` value gracefully and exits within 30 seconds
  from receiving it, no `SIGKILL` value is sent.

  The default 30-second timeout can be configured on the Amazon ECS container
  agent with
  the `ECS_CONTAINER_STOP_TIMEOUT` variable. For more information, see
  [Amazon ECS Container Agent Configuration](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html)
  in the
  *Amazon Elastic Container Service Developer Guide*.
  """
  @spec stop_task(map(), stop_task_request(), list()) ::
          {:ok, stop_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def stop_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTask", input, options)
  end

  @doc """

  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Sent to acknowledge that an attachment changed states.
  """
  @spec submit_attachment_state_changes(map(), submit_attachment_state_changes_request(), list()) ::
          {:ok, submit_attachment_state_changes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def submit_attachment_state_changes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitAttachmentStateChanges", input, options)
  end

  @doc """

  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Sent to acknowledge that a container changed states.
  """
  @spec submit_container_state_change(map(), submit_container_state_change_request(), list()) ::
          {:ok, submit_container_state_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, server_exception()}
  def submit_container_state_change(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitContainerStateChange", input, options)
  end

  @doc """

  This action is only used by the Amazon ECS agent, and it is not intended for use
  outside of the agent.

  Sent to acknowledge that a task changed states.
  """
  @spec submit_task_state_change(map(), submit_task_state_change_request(), list()) ::
          {:ok, submit_task_state_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def submit_task_state_change(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitTaskStateChange", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified
  `resourceArn`.

  If existing tags on a resource aren't specified in the
  request parameters, they aren't changed. When a resource is deleted, the tags
  that are
  associated with that resource are deleted as well.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, server_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, server_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the parameters for a capacity provider.
  """
  @spec update_capacity_provider(map(), update_capacity_provider_request(), list()) ::
          {:ok, update_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def update_capacity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCapacityProvider", input, options)
  end

  @doc """
  Updates the cluster.
  """
  @spec update_cluster(map(), update_cluster_request(), list()) ::
          {:ok, update_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, namespace_not_found_exception()}
          | {:error, server_exception()}
  def update_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  Modifies the settings to use for a cluster.
  """
  @spec update_cluster_settings(map(), update_cluster_settings_request(), list()) ::
          {:ok, update_cluster_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def update_cluster_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateClusterSettings", input, options)
  end

  @doc """
  Updates the Amazon ECS container agent on a specified container instance.

  Updating the
  Amazon ECS container agent doesn't interrupt running tasks or services on the
  container
  instance. The process for updating the agent differs depending on whether your
  container
  instance was launched with the Amazon ECS-optimized AMI or another operating
  system.

  The `UpdateContainerAgent` API isn't supported for container instances
  using the Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To update the
  container agent,
  you can update the `ecs-init` package. This updates the agent. For more
  information, see [Updating the Amazon ECS container
  agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  Agent updates with the `UpdateContainerAgent` API operation do not
  apply to Windows container instances. We recommend that you launch new container
  instances to update the agent version in your Windows clusters.

  The `UpdateContainerAgent` API requires an Amazon ECS-optimized AMI or Amazon
  Linux AMI with the `ecs-init` service installed and running. For help
  updating the Amazon ECS container agent on other operating systems, see
  [Manually updating the Amazon ECS container agent](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec update_container_agent(map(), update_container_agent_request(), list()) ::
          {:ok, update_container_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, missing_version_exception()}
          | {:error, no_update_available_exception()}
          | {:error, server_exception()}
          | {:error, update_in_progress_exception()}
  def update_container_agent(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContainerAgent", input, options)
  end

  @doc """
  Modifies the status of an Amazon ECS container instance.

  Once a container instance has reached an `ACTIVE` state, you can change the
  status of a container instance to `DRAINING` to manually remove an instance
  from a cluster, for example to perform system updates, update the Docker daemon,
  or
  scale down the cluster size.

  A container instance can't be changed to `DRAINING` until it has
  reached an `ACTIVE` status. If the instance is in any other status, an
  error will be received.

  When you set a container instance to `DRAINING`, Amazon ECS prevents new tasks
  from being scheduled for placement on the container instance and replacement
  service
  tasks are started on other container instances in the cluster if the resources
  are
  available. Service tasks on the container instance that are in the `PENDING`
  state are stopped immediately.

  Service tasks on the container instance that are in the `RUNNING` state are
  stopped and replaced according to the service's deployment configuration
  parameters,
  `minimumHealthyPercent` and `maximumPercent`. You can change
  the deployment configuration of your service using `UpdateService`.

    *
  If `minimumHealthyPercent` is below 100%, the scheduler can ignore
  `desiredCount` temporarily during task replacement. For example,
  `desiredCount` is four tasks, a minimum of 50% allows the
  scheduler to stop two existing tasks before starting two new tasks. If the
  minimum is 100%, the service scheduler can't remove existing tasks until the
  replacement tasks are considered healthy. Tasks for services that do not use a
  load balancer are considered healthy if they're in the `RUNNING`
  state. Tasks for services that use a load balancer are considered healthy if
  they're in the `RUNNING` state and are reported as healthy by the
  load balancer.

    *
  The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during task replacement. You can use this to define the
  replacement batch size. For example, if `desiredCount` is four tasks,
  a maximum of 200% starts four new tasks before stopping the four tasks to be
  drained, provided that the cluster resources required to do this are available.
  If the maximum is 100%, then replacement tasks can't start until the draining
  tasks have stopped.

  Any `PENDING` or `RUNNING` tasks that do not belong to a service
  aren't affected. You must wait for them to finish or stop them manually.

  A container instance has completed draining when it has no more `RUNNING`
  tasks. You can verify this using `ListTasks`.

  When a container instance has been drained, you can set a container instance to
  `ACTIVE` status and once it has reached that status the Amazon ECS scheduler
  can begin scheduling tasks on the instance again.
  """
  @spec update_container_instances_state(
          map(),
          update_container_instances_state_request(),
          list()
        ) ::
          {:ok, update_container_instances_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
  def update_container_instances_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContainerInstancesState", input, options)
  end

  @doc """
  Modifies the parameters of a service.

  For services using the rolling update (`ECS`) you can update the desired
  count, deployment configuration, network configuration, load balancers, service
  registries, enable ECS managed tags option, propagate tags option, task
  placement
  constraints and strategies, and task definition. When you update any of these
  parameters, Amazon ECS starts new tasks with the new configuration.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when starting or
  running a task, or when creating or updating a service. For more infomation, see
  [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*. You can update
  your volume configurations and trigger a new deployment.
  `volumeConfigurations` is only supported for REPLICA service and not
  DAEMON service. If you leave `volumeConfigurations`
  `null`, it doesn't trigger a new deployment. For more infomation on volumes,
  see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*.

  For services using the blue/green (`CODE_DEPLOY`) deployment controller,
  only the desired count, deployment configuration, health check grace period,
  task
  placement constraints and strategies, enable ECS managed tags option, and
  propagate tags
  can be updated using this API. If the network configuration, platform version,
  task
  definition, or load balancer need to be updated, create a new CodeDeploy
  deployment. For more
  information, see
  [CreateDeployment](https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html) in the *CodeDeploy API Reference*.

  For services using an external deployment controller, you can update only the
  desired
  count, task placement constraints and strategies, health check grace period,
  enable ECS
  managed tags option, and propagate tags option, using this API. If the launch
  type, load
  balancer, network configuration, platform version, or task definition need to be
  updated, create a new task set For more information, see `CreateTaskSet`.

  You can add to or subtract from the number of instantiations of a task
  definition in a
  service by specifying the cluster that the service is running in and a new
  `desiredCount` parameter.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when starting or
  running a task, or when creating or updating a service. For more infomation, see
  [Amazon EBS
  volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*.

  If you have updated the container image of your application, you can create a
  new task
  definition with that image and deploy it to your service. The service scheduler
  uses the
  minimum healthy percent and maximum percent parameters (in the service's
  deployment
  configuration) to determine the deployment strategy.

  If your updated Docker image uses the same tag as what is in the existing task
  definition for your service (for example, `my_image:latest`), you don't
  need to create a new revision of your task definition. You can update the
  service
  using the `forceNewDeployment` option. The new tasks launched by the
  deployment pull the current image/tag combination from your repository when they
  start.

  You can also update the deployment configuration of a service. When a deployment
  is
  triggered by updating the task definition of a service, the service scheduler
  uses the
  deployment configuration parameters, `minimumHealthyPercent` and
  `maximumPercent`, to determine the deployment strategy.

    *
  If `minimumHealthyPercent` is below 100%, the scheduler can ignore
  `desiredCount` temporarily during a deployment. For example, if
  `desiredCount` is four tasks, a minimum of 50% allows the
  scheduler to stop two existing tasks before starting two new tasks. Tasks for
  services that don't use a load balancer are considered healthy if they're in the
  `RUNNING` state. Tasks for services that use a load balancer are
  considered healthy if they're in the `RUNNING` state and are reported
  as healthy by the load balancer.

    *
  The `maximumPercent` parameter represents an upper limit on the
  number of running tasks during a deployment. You can use it to define the
  deployment batch size. For example, if `desiredCount` is four tasks,
  a maximum of 200% starts four new tasks before stopping the four older tasks
  (provided that the cluster resources required to do this are available).

  When `UpdateService` stops a task during a deployment, the equivalent
  of `docker stop` is issued to the containers running in the task. This
  results in a `SIGTERM` and a 30-second timeout. After this,
  `SIGKILL` is sent and the containers are forcibly stopped. If the
  container handles the `SIGTERM` gracefully and exits within 30 seconds from
  receiving it, no `SIGKILL` is sent.

  When the service scheduler launches new tasks, it determines task placement in
  your
  cluster with the following logic.

    *
  Determine which of the container instances in your cluster can support your
  service's task definition. For example, they have the required CPU, memory,
  ports, and container instance attributes.

    *
  By default, the service scheduler attempts to balance tasks across
  Availability Zones in this manner even though you can choose a different
  placement strategy.

      *
  Sort the valid container instances by the fewest number of running
  tasks for this service in the same Availability Zone as the instance.
  For example, if zone A has one running service task and zones B and C
  each have zero, valid container instances in either zone B or C are
  considered optimal for placement.

      *
  Place the new service task on a valid container instance in an optimal
  Availability Zone (based on the previous steps), favoring container
  instances with the fewest number of running tasks for this
  service.

  When the service scheduler stops running tasks, it attempts to maintain balance
  across
  the Availability Zones in your cluster using the following logic:

    *
  Sort the container instances by the largest number of running tasks for this
  service in the same Availability Zone as the instance. For example, if zone A
  has one running service task and zones B and C each have two, container
  instances in either zone B or C are considered optimal for termination.

    *
  Stop the task on a container instance in an optimal Availability Zone (based
  on the previous steps), favoring container instances with the largest number of
  running tasks for this service.

  You must have a service-linked role when you update any of the following service
  properties:

    

  `loadBalancers`,

    

  `serviceRegistries`

  For more information about the role see the `CreateService` request
  parameter [
  `role`
  ](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html#ECS-CreateService-request-role).
  """
  @spec update_service(map(), update_service_request(), list()) ::
          {:ok, update_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, namespace_not_found_exception()}
          | {:error, platform_task_definition_incompatibility_exception()}
          | {:error, platform_unknown_exception()}
          | {:error, server_exception()}
          | {:error, service_not_active_exception()}
          | {:error, service_not_found_exception()}
          | {:error, unsupported_feature_exception()}
  def update_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end

  @doc """
  Modifies which task set in a service is the primary task set.

  Any parameters that are
  updated on the primary task set in a service will transition to the service.
  This is
  used when a service uses the `EXTERNAL` deployment controller type. For more
  information, see [Amazon ECS Deployment Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec update_service_primary_task_set(map(), update_service_primary_task_set_request(), list()) ::
          {:ok, update_service_primary_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, service_not_active_exception()}
          | {:error, service_not_found_exception()}
          | {:error, task_set_not_found_exception()}
          | {:error, unsupported_feature_exception()}
  def update_service_primary_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServicePrimaryTaskSet", input, options)
  end

  @doc """
  Updates the protection status of a task.

  You can set `protectionEnabled` to
  `true` to protect your task from termination during scale-in events from
  [Service Autoscaling](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
  or
  [deployments](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).   Task-protection, by default, expires after 2 hours at which point Amazon ECS
  clears the
  `protectionEnabled` property making the task eligible for termination by
  a subsequent scale-in event.

  You can specify a custom expiration period for task protection from 1 minute to
  up to
  2,880 minutes (48 hours). To specify the custom expiration period, set the
  `expiresInMinutes` property. The `expiresInMinutes` property
  is always reset when you invoke this operation for a task that already has
  `protectionEnabled` set to `true`. You can keep extending the
  protection expiration period of a task by invoking this operation repeatedly.

  To learn more about Amazon ECS task protection, see [Task scale-in
  protection](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection.html)
  in the *
  *Amazon Elastic Container Service Developer Guide*
  *.

  This operation is only supported for tasks belonging to an Amazon ECS service.
  Invoking
  this operation for a standalone task will result in an `TASK_NOT_VALID`
  failure. For more information, see [API failure reasons](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html).

  If you prefer to set task protection from within the container, we recommend
  using
  the [Task scale-in protection endpoint](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection-endpoint.html).
  """
  @spec update_task_protection(map(), update_task_protection_request(), list()) ::
          {:ok, update_task_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, server_exception()}
          | {:error, unsupported_feature_exception()}
  def update_task_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTaskProtection", input, options)
  end

  @doc """
  Modifies a task set.

  This is used when a service uses the `EXTERNAL`
  deployment controller type. For more information, see [Amazon ECS Deployment Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec update_task_set(map(), update_task_set_request(), list()) ::
          {:ok, update_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_exception()}
          | {:error, cluster_not_found_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, server_exception()}
          | {:error, service_not_active_exception()}
          | {:error, service_not_found_exception()}
          | {:error, task_set_not_found_exception()}
          | {:error, unsupported_feature_exception()}
  def update_task_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTaskSet", input, options)
  end
end
