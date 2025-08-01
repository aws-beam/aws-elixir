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
        "containerName" => String.t() | atom(),
        "containerPort" => integer(),
        "port" => integer(),
        "registryArn" => String.t() | atom()
      }
      
  """
  @type service_registry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_definition_response() :: %{
        "tags" => list(tag()),
        "taskDefinition" => task_definition()
      }
      
  """
  @type describe_task_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_instance_health_status() :: %{
        "details" => list(instance_health_check_result()),
        "overallStatus" => list(any())
      }
      
  """
  @type container_instance_health_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_capacity_provider_response() :: %{
        "capacityProvider" => capacity_provider()
      }
      
  """
  @type delete_capacity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_instances_state_response() :: %{
        "containerInstances" => list(container_instance()),
        "failures" => list(failure())
      }
      
  """
  @type update_container_instances_state_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_service_deployments_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("createdAt") => created_at(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(list(any())()),
        required("service") => String.t() | atom()
      }
      
  """
  @type list_service_deployments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_set() :: %{
        "capacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "clusterArn" => String.t() | atom(),
        "computedDesiredCount" => integer(),
        "createdAt" => non_neg_integer(),
        "externalId" => String.t() | atom(),
        "fargateEphemeralStorage" => deployment_ephemeral_storage(),
        "id" => String.t() | atom(),
        "launchType" => list(any()),
        "loadBalancers" => list(load_balancer()),
        "networkConfiguration" => network_configuration(),
        "pendingCount" => integer(),
        "platformFamily" => String.t() | atom(),
        "platformVersion" => String.t() | atom(),
        "runningCount" => integer(),
        "scale" => scale(),
        "serviceArn" => String.t() | atom(),
        "serviceRegistries" => list(service_registry()),
        "stabilityStatus" => list(any()),
        "stabilityStatusAt" => non_neg_integer(),
        "startedBy" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => list(tag()),
        "taskDefinition" => String.t() | atom(),
        "taskSetArn" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type task_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task() :: %{
        "launchType" => list(any()),
        "attachments" => list(attachment()),
        "ephemeralStorage" => ephemeral_storage(),
        "pullStartedAt" => non_neg_integer(),
        "containerInstanceArn" => String.t() | atom(),
        "startedBy" => String.t() | atom(),
        "executionStoppedAt" => non_neg_integer(),
        "attributes" => list(attribute()),
        "stoppingAt" => non_neg_integer(),
        "cpu" => String.t() | atom(),
        "platformVersion" => String.t() | atom(),
        "enableExecuteCommand" => boolean(),
        "healthStatus" => list(any()),
        "taskArn" => String.t() | atom(),
        "stopCode" => list(any()),
        "createdAt" => non_neg_integer(),
        "lastStatus" => String.t() | atom(),
        "memory" => String.t() | atom(),
        "desiredStatus" => String.t() | atom(),
        "overrides" => task_override(),
        "connectivity" => list(any()),
        "tags" => list(tag()),
        "connectivityAt" => non_neg_integer(),
        "taskDefinitionArn" => String.t() | atom(),
        "platformFamily" => String.t() | atom(),
        "inferenceAccelerators" => list(inference_accelerator()),
        "pullStoppedAt" => non_neg_integer(),
        "stoppedAt" => non_neg_integer(),
        "fargateEphemeralStorage" => task_ephemeral_storage(),
        "containers" => list(container()),
        "capacityProviderName" => String.t() | atom(),
        "clusterArn" => String.t() | atom(),
        "group" => String.t() | atom(),
        "stoppedReason" => String.t() | atom(),
        "startedAt" => non_neg_integer(),
        "availabilityZone" => String.t() | atom(),
        "version" => float()
      }
      
  """
  @type task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_capacity_provider_request() :: %{
        required("capacityProvider") => String.t() | atom()
      }
      
  """
  @type delete_capacity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_in_progress_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type update_in_progress_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_task_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("reason") => String.t() | atom(),
        required("task") => String.t() | atom()
      }
      
  """
  @type stop_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_container_instances_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("include") => list(list(any())()),
        required("containerInstances") => list(String.t() | atom())
      }
      
  """
  @type describe_container_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      system_control() :: %{
        "namespace" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type system_control() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container() :: %{
        "containerArn" => String.t() | atom(),
        "cpu" => String.t() | atom(),
        "exitCode" => integer(),
        "gpuIds" => list(String.t() | atom()),
        "healthStatus" => list(any()),
        "image" => String.t() | atom(),
        "imageDigest" => String.t() | atom(),
        "lastStatus" => String.t() | atom(),
        "managedAgents" => list(managed_agent()),
        "memory" => String.t() | atom(),
        "memoryReservation" => String.t() | atom(),
        "name" => String.t() | atom(),
        "networkBindings" => list(network_binding()),
        "networkInterfaces" => list(network_interface()),
        "reason" => String.t() | atom(),
        "runtimeId" => String.t() | atom(),
        "taskArn" => String.t() | atom()
      }
      
  """
  @type container() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_deployment_circuit_breaker() :: %{
        "failureCount" => integer(),
        "status" => list(any()),
        "threshold" => integer()
      }
      
  """
  @type service_deployment_circuit_breaker() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      inference_accelerator() :: %{
        "deviceName" => String.t() | atom(),
        "deviceType" => String.t() | atom()
      }
      
  """
  @type inference_accelerator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_task_response() :: %{
        "failures" => list(failure()),
        "tasks" => list(task())
      }
      
  """
  @type run_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      proxy_configuration() :: %{
        "containerName" => String.t() | atom(),
        "properties" => list(key_value_pair()),
        "type" => list(any())
      }
      
  """
  @type proxy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attribute_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type attribute_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setting() :: %{
        "name" => list(any()),
        "principalArn" => String.t() | atom(),
        "type" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "capacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "createdAt" => non_neg_integer(),
        "desiredCount" => integer(),
        "failedTasks" => integer(),
        "fargateEphemeralStorage" => deployment_ephemeral_storage(),
        "id" => String.t() | atom(),
        "launchType" => list(any()),
        "networkConfiguration" => network_configuration(),
        "pendingCount" => integer(),
        "platformFamily" => String.t() | atom(),
        "platformVersion" => String.t() | atom(),
        "rolloutState" => list(any()),
        "rolloutStateReason" => String.t() | atom(),
        "runningCount" => integer(),
        "serviceConnectConfiguration" => service_connect_configuration(),
        "serviceConnectResources" => list(service_connect_service_resource()),
        "status" => String.t() | atom(),
        "taskDefinition" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "volumeConfigurations" => list(service_volume_configuration()),
        "vpcLatticeConfigurations" => list(vpc_lattice_configuration())
      }
      
  """
  @type deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_event() :: %{
        "createdAt" => non_neg_integer(),
        "id" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type service_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_services_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("include") => list(list(any())()),
        required("services") => list(String.t() | atom())
      }
      
  """
  @type describe_services_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_service_deployment_request() :: %{
        optional("stopType") => list(any()),
        required("serviceDeploymentArn") => String.t() | atom()
      }
      
  """
  @type stop_service_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      task_override() :: %{
        "containerOverrides" => list(container_override()),
        "cpu" => String.t() | atom(),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t() | atom(),
        "inferenceAcceleratorOverrides" => list(inference_accelerator_override()),
        "memory" => String.t() | atom(),
        "taskRoleArn" => String.t() | atom()
      }
      
  """
  @type task_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_service_deployments_response() :: %{
        "failures" => list(failure()),
        "serviceDeployments" => list(service_deployment())
      }
      
  """
  @type describe_service_deployments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type create_cluster_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_default_request() :: %{
        required("name") => list(any()),
        required("value") => String.t() | atom()
      }
      
  """
  @type put_account_setting_default_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_container_instance_response() :: %{
        "containerInstance" => container_instance()
      }
      
  """
  @type register_container_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_task_set_request() :: %{
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()),
        optional("clientToken") => String.t() | atom(),
        optional("externalId") => String.t() | atom(),
        optional("launchType") => list(any()),
        optional("loadBalancers") => list(load_balancer()),
        optional("networkConfiguration") => network_configuration(),
        optional("platformVersion") => String.t() | atom(),
        optional("scale") => scale(),
        optional("serviceRegistries") => list(service_registry()),
        optional("tags") => list(tag()),
        required("cluster") => String.t() | atom(),
        required("service") => String.t() | atom(),
        required("taskDefinition") => String.t() | atom()
      }
      
  """
  @type create_task_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_task_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("group") => String.t() | atom(),
        optional("networkConfiguration") => network_configuration(),
        optional("overrides") => task_override(),
        optional("propagateTags") => list(any()),
        optional("referenceId") => String.t() | atom(),
        optional("startedBy") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("volumeConfigurations") => list(task_volume_configuration()),
        required("containerInstances") => list(String.t() | atom()),
        required("taskDefinition") => String.t() | atom()
      }
      
  """
  @type start_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_account_setting_response() :: %{
        "setting" => setting()
      }
      
  """
  @type delete_account_setting_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_capacity_provider_request() :: %{
        required("autoScalingGroupProvider") => auto_scaling_group_provider_update(),
        required("name") => String.t() | atom()
      }
      
  """
  @type update_capacity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_response() :: %{
        "setting" => setting()
      }
      
  """
  @type put_account_setting_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_services_by_namespace_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("namespace") => String.t() | atom()
      }
      
  """
  @type list_services_by_namespace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_task_protection_response() :: %{
        "failures" => list(failure()),
        "protectedTasks" => list(protected_task())
      }
      
  """
  @type get_task_protection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_connect_service_resource() :: %{
        "discoveryArn" => String.t() | atom(),
        "discoveryName" => String.t() | atom()
      }
      
  """
  @type service_connect_service_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cluster_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      host_volume_properties() :: %{
        "sourcePath" => String.t() | atom()
      }
      
  """
  @type host_volume_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "attachmentId" => String.t() | atom(),
        "ipv6Address" => String.t() | atom(),
        "privateIpv4Address" => String.t() | atom()
      }
      
  """
  @type network_interface() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_task_set_request() :: %{
        required("cluster") => String.t() | atom(),
        required("scale") => scale(),
        required("service") => String.t() | atom(),
        required("taskSet") => String.t() | atom()
      }
      
  """
  @type update_task_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_deployment_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_deployment_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_command_configuration() :: %{
        "kmsKeyId" => String.t() | atom(),
        "logConfiguration" => execute_command_log_configuration(),
        "logging" => list(any())
      }
      
  """
  @type execute_command_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment() :: %{
        "details" => list(key_value_pair()),
        "id" => String.t() | atom(),
        "status" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_revision_summary() :: %{
        "arn" => String.t() | atom(),
        "pendingTaskCount" => integer(),
        "requestedTaskCount" => integer(),
        "runningTaskCount" => integer()
      }
      
  """
  @type service_revision_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_not_connected_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type target_not_connected_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "availabilityZoneRebalancing" => list(any()),
        "capacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "clusterArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "deploymentConfiguration" => deployment_configuration(),
        "deploymentController" => deployment_controller(),
        "deployments" => list(deployment()),
        "desiredCount" => integer(),
        "enableECSManagedTags" => boolean(),
        "enableExecuteCommand" => boolean(),
        "events" => list(service_event()),
        "healthCheckGracePeriodSeconds" => integer(),
        "launchType" => list(any()),
        "loadBalancers" => list(load_balancer()),
        "networkConfiguration" => network_configuration(),
        "pendingCount" => integer(),
        "placementConstraints" => list(placement_constraint()),
        "placementStrategy" => list(placement_strategy()),
        "platformFamily" => String.t() | atom(),
        "platformVersion" => String.t() | atom(),
        "propagateTags" => list(any()),
        "roleArn" => String.t() | atom(),
        "runningCount" => integer(),
        "schedulingStrategy" => list(any()),
        "serviceArn" => String.t() | atom(),
        "serviceName" => String.t() | atom(),
        "serviceRegistries" => list(service_registry()),
        "status" => String.t() | atom(),
        "tags" => list(tag()),
        "taskDefinition" => String.t() | atom(),
        "taskSets" => list(task_set())
      }
      
  """
  @type service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      host_entry() :: %{
        "hostname" => String.t() | atom(),
        "ipAddress" => String.t() | atom()
      }
      
  """
  @type host_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_definitions_request() :: %{
        optional("familyPrefix") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sort") => list(any()),
        optional("status") => list(any())
      }
      
  """
  @type list_task_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_deployment_brief() :: %{
        "clusterArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "finishedAt" => non_neg_integer(),
        "serviceArn" => String.t() | atom(),
        "serviceDeploymentArn" => String.t() | atom(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "targetServiceRevisionArn" => String.t() | atom()
      }
      
  """
  @type service_deployment_brief() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_volume_configuration() :: %{
        "managedEBSVolume" => task_managed_ebs_volume_configuration(),
        "name" => String.t() | atom()
      }
      
  """
  @type task_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_agent_state_change() :: %{
        "containerName" => String.t() | atom(),
        "managedAgentName" => list(any()),
        "reason" => String.t() | atom(),
        "status" => String.t() | atom()
      }
      
  """
  @type managed_agent_state_change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type delete_task_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_instances_state_request() :: %{
        optional("cluster") => String.t() | atom(),
        required("containerInstances") => list(String.t() | atom()),
        required("status") => list(any())
      }
      
  """
  @type update_container_instances_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      docker_volume_configuration() :: %{
        "autoprovision" => boolean(),
        "driver" => String.t() | atom(),
        "driverOpts" => map(),
        "labels" => map(),
        "scope" => list(any())
      }
      
  """
  @type docker_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_task_protection_request() :: %{
        optional("expiresInMinutes") => integer(),
        required("cluster") => String.t() | atom(),
        required("protectionEnabled") => boolean(),
        required("tasks") => list(String.t() | atom())
      }
      
  """
  @type update_task_protection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cluster_request() :: %{
        optional("configuration") => cluster_configuration(),
        optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
        optional("settings") => list(cluster_setting()),
        required("cluster") => String.t() | atom()
      }
      
  """
  @type update_cluster_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_container_instance_request() :: %{
        optional("attributes") => list(attribute()),
        optional("cluster") => String.t() | atom(),
        optional("containerInstanceArn") => String.t() | atom(),
        optional("instanceIdentityDocument") => String.t() | atom(),
        optional("instanceIdentityDocumentSignature") => String.t() | atom(),
        optional("platformDevices") => list(platform_device()),
        optional("tags") => list(tag()),
        optional("totalResources") => list(resource()),
        optional("versionInfo") => version_info()
      }
      
  """
  @type register_container_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mount_point() :: %{
        "containerPath" => String.t() | atom(),
        "readOnly" => boolean(),
        "sourceVolume" => String.t() | atom()
      }
      
  """
  @type mount_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      timeout_configuration() :: %{
        "idleTimeoutSeconds" => integer(),
        "perRequestTimeoutSeconds" => integer()
      }
      
  """
  @type timeout_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_agent() :: %{
        "lastStartedAt" => non_neg_integer(),
        "lastStatus" => String.t() | atom(),
        "name" => list(any()),
        "reason" => String.t() | atom()
      }
      
  """
  @type managed_agent() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_configuration() :: %{
        "executeCommandConfiguration" => execute_command_configuration(),
        "managedStorageConfiguration" => managed_storage_configuration()
      }
      
  """
  @type cluster_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_alarms() :: %{
        "alarmNames" => list(String.t() | atom()),
        "enable" => boolean(),
        "rollback" => boolean()
      }
      
  """
  @type deployment_alarms() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_request() :: %{
        optional("principalArn") => String.t() | atom(),
        required("name") => list(any()),
        required("value") => String.t() | atom()
      }
      
  """
  @type put_account_setting_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_services_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("launchType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("schedulingStrategy") => list(any())
      }
      
  """
  @type list_services_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_command_response() :: %{
        "clusterArn" => String.t() | atom(),
        "containerArn" => String.t() | atom(),
        "containerName" => String.t() | atom(),
        "interactive" => boolean(),
        "session" => session(),
        "taskArn" => String.t() | atom()
      }
      
  """
  @type execute_command_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_services_response() :: %{
        "failures" => list(failure()),
        "services" => list(service())
      }
      
  """
  @type describe_services_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_managed_ebs_volume_termination_policy() :: %{
        "deleteOnTermination" => boolean()
      }
      
  """
  @type task_managed_ebs_volume_termination_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_task_definition_response() :: %{
        "taskDefinition" => task_definition()
      }
      
  """
  @type deregister_task_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      namespace_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type namespace_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_feature_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_feature_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_configuration() :: %{
        "alarms" => deployment_alarms(),
        "deploymentCircuitBreaker" => deployment_circuit_breaker(),
        "maximumPercent" => integer(),
        "minimumHealthyPercent" => integer()
      }
      
  """
  @type deployment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_settings_request() :: %{
        optional("effectiveSettings") => boolean(),
        optional("maxResults") => integer(),
        optional("name") => list(any()),
        optional("nextToken") => String.t() | atom(),
        optional("principalArn") => String.t() | atom(),
        optional("value") => String.t() | atom()
      }
      
  """
  @type list_account_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_settings_response() :: %{
        "nextToken" => String.t() | atom(),
        "settings" => list(setting())
      }
      
  """
  @type list_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rollback() :: %{
        "reason" => String.t() | atom(),
        "serviceRevisionArn" => String.t() | atom(),
        "startedAt" => non_neg_integer()
      }
      
  """
  @type rollback() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("capacityProviders") => list(String.t() | atom()),
        optional("clusterName") => String.t() | atom(),
        optional("configuration") => cluster_configuration(),
        optional("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item()),
        optional("serviceConnectDefaults") => cluster_service_connect_defaults_request(),
        optional("settings") => list(cluster_setting()),
        optional("tags") => list(tag())
      }
      
  """
  @type create_cluster_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_restart_policy() :: %{
        "enabled" => boolean(),
        "ignoredExitCodes" => list(integer()),
        "restartAttemptPeriod" => integer()
      }
      
  """
  @type container_restart_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_service_deployments_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceDeployments" => list(service_deployment_brief())
      }
      
  """
  @type list_service_deployments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_connect_configuration() :: %{
        "enabled" => boolean(),
        "logConfiguration" => log_configuration(),
        "namespace" => String.t() | atom(),
        "services" => list(service_connect_service())
      }
      
  """
  @type service_connect_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_capacity_providers_request() :: %{
        optional("capacityProviders") => list(String.t() | atom()),
        optional("include") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type describe_capacity_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "resourceIds" => list(String.t() | atom())
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_definition() :: %{
        "dependsOn" => list(container_dependency()),
        "image" => String.t() | atom(),
        "entryPoint" => list(String.t() | atom()),
        "user" => String.t() | atom(),
        "healthCheck" => health_check(),
        "interactive" => boolean(),
        "dockerSecurityOptions" => list(String.t() | atom()),
        "pseudoTerminal" => boolean(),
        "hostname" => String.t() | atom(),
        "secrets" => list(secret()),
        "name" => String.t() | atom(),
        "portMappings" => list(port_mapping()),
        "workingDirectory" => String.t() | atom(),
        "command" => list(String.t() | atom()),
        "environmentFiles" => list(environment_file()),
        "cpu" => integer(),
        "repositoryCredentials" => repository_credentials(),
        "links" => list(String.t() | atom()),
        "ulimits" => list(ulimit()),
        "readonlyRootFilesystem" => boolean(),
        "volumesFrom" => list(volume_from()),
        "disableNetworking" => boolean(),
        "memory" => integer(),
        "privileged" => boolean(),
        "logConfiguration" => log_configuration(),
        "systemControls" => list(system_control()),
        "mountPoints" => list(mount_point()),
        "environment" => list(key_value_pair()),
        "dnsSearchDomains" => list(String.t() | atom()),
        "linuxParameters" => linux_parameters(),
        "startTimeout" => integer(),
        "resourceRequirements" => list(resource_requirement()),
        "dnsServers" => list(String.t() | atom()),
        "restartPolicy" => container_restart_policy(),
        "dockerLabels" => map(),
        "versionConsistency" => list(any()),
        "essential" => boolean(),
        "stopTimeout" => integer(),
        "memoryReservation" => integer(),
        "credentialSpecs" => list(String.t() | atom()),
        "extraHosts" => list(host_entry()),
        "firelensConfiguration" => firelens_configuration()
      }
      
  """
  @type container_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_storage_configuration() :: %{
        "fargateEphemeralStorageKmsKeyId" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom()
      }
      
  """
  @type managed_storage_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_lattice_configuration() :: %{
        "portName" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "targetGroupArn" => String.t() | atom()
      }
      
  """
  @type vpc_lattice_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_task_protection_request() :: %{
        optional("tasks") => list(String.t() | atom()),
        required("cluster") => String.t() | atom()
      }
      
  """
  @type get_task_protection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_contains_tasks_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cluster_contains_tasks_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_definitions_response() :: %{
        "nextToken" => String.t() | atom(),
        "taskDefinitionArns" => list(String.t() | atom())
      }
      
  """
  @type list_task_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_override() :: %{
        "command" => list(String.t() | atom()),
        "cpu" => integer(),
        "environment" => list(key_value_pair()),
        "environmentFiles" => list(environment_file()),
        "memory" => integer(),
        "memoryReservation" => integer(),
        "name" => String.t() | atom(),
        "resourceRequirements" => list(resource_requirement())
      }
      
  """
  @type container_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ulimit() :: %{
        "hardLimit" => integer(),
        "name" => list(any()),
        "softLimit" => integer()
      }
      
  """
  @type ulimit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_command_log_configuration() :: %{
        "cloudWatchEncryptionEnabled" => boolean(),
        "cloudWatchLogGroupName" => String.t() | atom(),
        "s3BucketName" => String.t() | atom(),
        "s3EncryptionEnabled" => boolean(),
        "s3KeyPrefix" => String.t() | atom()
      }
      
  """
  @type execute_command_log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster() :: %{
        "activeServicesCount" => integer(),
        "attachments" => list(attachment()),
        "attachmentsStatus" => String.t() | atom(),
        "capacityProviders" => list(String.t() | atom()),
        "clusterArn" => String.t() | atom(),
        "clusterName" => String.t() | atom(),
        "configuration" => cluster_configuration(),
        "defaultCapacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "pendingTasksCount" => integer(),
        "registeredContainerInstancesCount" => integer(),
        "runningTasksCount" => integer(),
        "serviceConnectDefaults" => cluster_service_connect_defaults(),
        "settings" => list(cluster_setting()),
        "statistics" => list(key_value_pair()),
        "status" => String.t() | atom(),
        "tags" => list(tag())
      }
      
  """
  @type cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attachment_state_change() :: %{
        "attachmentArn" => String.t() | atom(),
        "status" => String.t() | atom()
      }
      
  """
  @type attachment_state_change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_services_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceArns" => list(String.t() | atom())
      }
      
  """
  @type list_services_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_service_revisions_response() :: %{
        "failures" => list(failure()),
        "serviceRevisions" => list(service_revision())
      }
      
  """
  @type describe_service_revisions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_deployment_alarms() :: %{
        "alarmNames" => list(String.t() | atom()),
        "status" => list(any()),
        "triggeredAlarmNames" => list(String.t() | atom())
      }
      
  """
  @type service_deployment_alarms() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_not_active_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_not_active_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_setting() :: %{
        "name" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type cluster_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_task_definitions_request() :: %{
        required("taskDefinitions") => list(String.t() | atom())
      }
      
  """
  @type delete_task_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_sets_request() :: %{
        optional("include") => list(list(any())()),
        optional("taskSets") => list(String.t() | atom()),
        required("cluster") => String.t() | atom(),
        required("service") => String.t() | atom()
      }
      
  """
  @type describe_task_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_container_state_change_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("containerName") => String.t() | atom(),
        optional("exitCode") => integer(),
        optional("networkBindings") => list(network_binding()),
        optional("reason") => String.t() | atom(),
        optional("runtimeId") => String.t() | atom(),
        optional("status") => String.t() | atom(),
        optional("task") => String.t() | atom()
      }
      
  """
  @type submit_container_state_change_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_service_request() :: %{
        optional("availabilityZoneRebalancing") => list(any()),
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()),
        optional("clientToken") => String.t() | atom(),
        optional("cluster") => String.t() | atom(),
        optional("deploymentConfiguration") => deployment_configuration(),
        optional("deploymentController") => deployment_controller(),
        optional("desiredCount") => integer(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("healthCheckGracePeriodSeconds") => integer(),
        optional("launchType") => list(any()),
        optional("loadBalancers") => list(load_balancer()),
        optional("networkConfiguration") => network_configuration(),
        optional("placementConstraints") => list(placement_constraint()),
        optional("placementStrategy") => list(placement_strategy()),
        optional("platformVersion") => String.t() | atom(),
        optional("propagateTags") => list(any()),
        optional("role") => String.t() | atom(),
        optional("schedulingStrategy") => list(any()),
        optional("serviceConnectConfiguration") => service_connect_configuration(),
        optional("serviceRegistries") => list(service_registry()),
        optional("tags") => list(tag()),
        optional("taskDefinition") => String.t() | atom(),
        optional("volumeConfigurations") => list(service_volume_configuration()),
        optional("vpcLatticeConfigurations") => list(vpc_lattice_configuration()),
        required("serviceName") => String.t() | atom()
      }
      
  """
  @type create_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_definition_placement_constraint() :: %{
        "expression" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type task_definition_placement_constraint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_definition_families_response() :: %{
        "families" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_task_definition_families_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_image() :: %{
        "containerName" => String.t() | atom(),
        "image" => String.t() | atom(),
        "imageDigest" => String.t() | atom()
      }
      
  """
  @type container_image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type update_task_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_attributes_response() :: %{
        "attributes" => list(attribute())
      }
      
  """
  @type delete_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_tasks_response() :: %{
        "failures" => list(failure()),
        "tasks" => list(task())
      }
      
  """
  @type describe_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_circuit_breaker() :: %{
        "enable" => boolean(),
        "rollback" => boolean()
      }
      
  """
  @type deployment_circuit_breaker() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_container_instances_response() :: %{
        "containerInstances" => list(container_instance()),
        "failures" => list(failure())
      }
      
  """
  @type describe_container_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_state_change() :: %{
        "containerName" => String.t() | atom(),
        "exitCode" => integer(),
        "imageDigest" => String.t() | atom(),
        "networkBindings" => list(network_binding()),
        "reason" => String.t() | atom(),
        "runtimeId" => String.t() | atom(),
        "status" => String.t() | atom()
      }
      
  """
  @type container_state_change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      secret() :: %{
        "name" => String.t() | atom(),
        "valueFrom" => String.t() | atom()
      }
      
  """
  @type secret() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_cluster_capacity_providers_request() :: %{
        required("capacityProviders") => list(String.t() | atom()),
        required("cluster") => String.t() | atom(),
        required("defaultCapacityProviderStrategy") => list(capacity_provider_strategy_item())
      }
      
  """
  @type put_cluster_capacity_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_provider_update() :: %{
        "managedDraining" => list(any()),
        "managedScaling" => managed_scaling(),
        "managedTerminationProtection" => list(any())
      }
      
  """
  @type auto_scaling_group_provider_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_health_check_result() :: %{
        "lastStatusChange" => non_neg_integer(),
        "lastUpdated" => non_neg_integer(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type instance_health_check_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_binding() :: %{
        "bindIP" => String.t() | atom(),
        "containerPort" => integer(),
        "containerPortRange" => String.t() | atom(),
        "hostPort" => integer(),
        "hostPortRange" => String.t() | atom(),
        "protocol" => list(any())
      }
      
  """
  @type network_binding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_deployment() :: %{
        "alarms" => service_deployment_alarms(),
        "clusterArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "deploymentCircuitBreaker" => service_deployment_circuit_breaker(),
        "deploymentConfiguration" => deployment_configuration(),
        "finishedAt" => non_neg_integer(),
        "rollback" => rollback(),
        "serviceArn" => String.t() | atom(),
        "serviceDeploymentArn" => String.t() | atom(),
        "sourceServiceRevisions" => list(service_revision_summary()),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => non_neg_integer(),
        "targetServiceRevision" => service_revision_summary(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type service_deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_sets_response() :: %{
        "failures" => list(failure()),
        "taskSets" => list(task_set())
      }
      
  """
  @type describe_task_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_container_instance_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("force") => boolean(),
        required("containerInstance") => String.t() | atom()
      }
      
  """
  @type deregister_container_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_instances_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("filter") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }
      
  """
  @type list_container_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_task_state_change_request() :: %{
        optional("attachments") => list(attachment_state_change()),
        optional("cluster") => String.t() | atom(),
        optional("containers") => list(container_state_change()),
        optional("executionStoppedAt") => non_neg_integer(),
        optional("managedAgents") => list(managed_agent_state_change()),
        optional("pullStartedAt") => non_neg_integer(),
        optional("pullStoppedAt") => non_neg_integer(),
        optional("reason") => String.t() | atom(),
        optional("status") => String.t() | atom(),
        optional("task") => String.t() | atom()
      }
      
  """
  @type submit_task_state_change_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      health_check() :: %{
        "command" => list(String.t() | atom()),
        "interval" => integer(),
        "retries" => integer(),
        "startPeriod" => integer(),
        "timeout" => integer()
      }
      
  """
  @type health_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_agent_request() :: %{
        optional("cluster") => String.t() | atom(),
        required("containerInstance") => String.t() | atom()
      }
      
  """
  @type update_container_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ephemeral_storage() :: %{
        "sizeInGiB" => integer()
      }
      
  """
  @type ephemeral_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_attachment_state_changes_response() :: %{
        "acknowledgment" => String.t() | atom()
      }
      
  """
  @type submit_attachment_state_changes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_clusters_response() :: %{
        "clusterArns" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_clusters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_set_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type task_set_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      session() :: %{
        "sessionId" => String.t() | atom(),
        "streamUrl" => String.t() | atom(),
        "tokenValue" => String.t() | atom()
      }
      
  """
  @type session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type delete_cluster_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_capacity_provider_response() :: %{
        "capacityProvider" => capacity_provider()
      }
      
  """
  @type create_capacity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_agent_response() :: %{
        "containerInstance" => container_instance()
      }
      
  """
  @type update_container_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_attributes_response() :: %{
        "attributes" => list(attribute())
      }
      
  """
  @type put_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_definition() :: %{
        "compatibilities" => list(list(any())()),
        "containerDefinitions" => list(container_definition()),
        "cpu" => String.t() | atom(),
        "deregisteredAt" => non_neg_integer(),
        "enableFaultInjection" => boolean(),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t() | atom(),
        "family" => String.t() | atom(),
        "inferenceAccelerators" => list(inference_accelerator()),
        "ipcMode" => list(any()),
        "memory" => String.t() | atom(),
        "networkMode" => list(any()),
        "pidMode" => list(any()),
        "placementConstraints" => list(task_definition_placement_constraint()),
        "proxyConfiguration" => proxy_configuration(),
        "registeredAt" => non_neg_integer(),
        "registeredBy" => String.t() | atom(),
        "requiresAttributes" => list(attribute()),
        "requiresCompatibilities" => list(list(any())()),
        "revision" => integer(),
        "runtimePlatform" => runtime_platform(),
        "status" => list(any()),
        "taskDefinitionArn" => String.t() | atom(),
        "taskRoleArn" => String.t() | atom(),
        "volumes" => list(volume())
      }
      
  """
  @type task_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_instances_response() :: %{
        "containerInstanceArns" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_container_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cluster_settings_request() :: %{
        required("cluster") => String.t() | atom(),
        required("settings") => list(cluster_setting())
      }
      
  """
  @type update_cluster_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_service_request() :: %{
        optional("availabilityZoneRebalancing") => list(any()),
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()),
        optional("cluster") => String.t() | atom(),
        optional("deploymentConfiguration") => deployment_configuration(),
        optional("desiredCount") => integer(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("forceNewDeployment") => boolean(),
        optional("healthCheckGracePeriodSeconds") => integer(),
        optional("loadBalancers") => list(load_balancer()),
        optional("networkConfiguration") => network_configuration(),
        optional("placementConstraints") => list(placement_constraint()),
        optional("placementStrategy") => list(placement_strategy()),
        optional("platformVersion") => String.t() | atom(),
        optional("propagateTags") => list(any()),
        optional("serviceConnectConfiguration") => service_connect_configuration(),
        optional("serviceRegistries") => list(service_registry()),
        optional("taskDefinition") => String.t() | atom(),
        optional("volumeConfigurations") => list(service_volume_configuration()),
        optional("vpcLatticeConfigurations") => list(vpc_lattice_configuration()),
        required("service") => String.t() | atom()
      }
      
  """
  @type update_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ebs_tag_specification() :: %{
        "propagateTags" => list(any()),
        "resourceType" => list(any()),
        "tags" => list(tag())
      }
      
  """
  @type ebs_tag_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_controller() :: %{
        "type" => list(any())
      }
      
  """
  @type deployment_controller() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_account_setting_default_response() :: %{
        "setting" => setting()
      }
      
  """
  @type put_account_setting_default_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      discover_poll_endpoint_response() :: %{
        "endpoint" => String.t() | atom(),
        "serviceConnectEndpoint" => String.t() | atom(),
        "telemetryEndpoint" => String.t() | atom()
      }
      
  """
  @type discover_poll_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_clusters_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_clusters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_task_definition_request() :: %{
        optional("include") => list(list(any())()),
        required("taskDefinition") => String.t() | atom()
      }
      
  """
  @type describe_task_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      f_sx_windows_file_server_authorization_config() :: %{
        "credentialsParameter" => String.t() | atom(),
        "domain" => String.t() | atom()
      }
      
  """
  @type f_sx_windows_file_server_authorization_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_capacity_provider_response() :: %{
        "capacityProvider" => capacity_provider()
      }
      
  """
  @type update_capacity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_unknown_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type platform_unknown_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_attributes_request() :: %{
        optional("cluster") => String.t() | atom(),
        required("attributes") => list(attribute())
      }
      
  """
  @type delete_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_f_s_authorization_config() :: %{
        "accessPointId" => String.t() | atom(),
        "iam" => list(any())
      }
      
  """
  @type e_f_s_authorization_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_task_protection_response() :: %{
        "failures" => list(failure()),
        "protectedTasks" => list(protected_task())
      }
      
  """
  @type update_task_protection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_task_set_request() :: %{
        optional("force") => boolean(),
        required("cluster") => String.t() | atom(),
        required("service") => String.t() | atom(),
        required("taskSet") => String.t() | atom()
      }
      
  """
  @type delete_task_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_contains_container_instances_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cluster_contains_container_instances_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_container_state_change_response() :: %{
        "acknowledgment" => String.t() | atom()
      }
      
  """
  @type submit_container_state_change_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_definition_families_request() :: %{
        optional("familyPrefix") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }
      
  """
  @type list_task_definition_families_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        required("cluster") => String.t() | atom()
      }
      
  """
  @type delete_cluster_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_f_s_volume_configuration() :: %{
        "authorizationConfig" => e_f_s_authorization_config(),
        "fileSystemId" => String.t() | atom(),
        "rootDirectory" => String.t() | atom(),
        "transitEncryption" => list(any()),
        "transitEncryptionPort" => integer()
      }
      
  """
  @type e_f_s_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cluster_settings_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type update_cluster_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_provider_strategy_item() :: %{
        "base" => integer(),
        "capacityProvider" => String.t() | atom(),
        "weight" => integer()
      }
      
  """
  @type capacity_provider_strategy_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      no_update_available_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type no_update_available_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_task_definitions_response() :: %{
        "failures" => list(failure()),
        "taskDefinitions" => list(task_definition())
      }
      
  """
  @type delete_task_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      placement_constraint() :: %{
        "expression" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type placement_constraint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_configuration() :: %{
        "awsvpcConfiguration" => aws_vpc_configuration()
      }
      
  """
  @type network_configuration() :: %{(String.t() | atom()) => any()}

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
  @type managed_scaling() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      created_at() :: %{
        "after" => non_neg_integer(),
        "before" => non_neg_integer()
      }
      
  """
  @type created_at() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      volume() :: %{
        "configuredAtLaunch" => boolean(),
        "dockerVolumeConfiguration" => docker_volume_configuration(),
        "efsVolumeConfiguration" => e_f_s_volume_configuration(),
        "fsxWindowsFileServerVolumeConfiguration" => f_sx_windows_file_server_volume_configuration(),
        "host" => host_volume_properties(),
        "name" => String.t() | atom()
      }
      
  """
  @type volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      missing_version_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type missing_version_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      register_task_definition_request() :: %{
        optional("cpu") => String.t() | atom(),
        optional("enableFaultInjection") => boolean(),
        optional("ephemeralStorage") => ephemeral_storage(),
        optional("executionRoleArn") => String.t() | atom(),
        optional("inferenceAccelerators") => list(inference_accelerator()),
        optional("ipcMode") => list(any()),
        optional("memory") => String.t() | atom(),
        optional("networkMode") => list(any()),
        optional("pidMode") => list(any()),
        optional("placementConstraints") => list(task_definition_placement_constraint()),
        optional("proxyConfiguration") => proxy_configuration(),
        optional("requiresCompatibilities") => list(list(any())()),
        optional("runtimePlatform") => runtime_platform(),
        optional("tags") => list(tag()),
        optional("taskRoleArn") => String.t() | atom(),
        optional("volumes") => list(volume()),
        required("containerDefinitions") => list(container_definition()),
        required("family") => String.t() | atom()
      }
      
  """
  @type register_task_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_tasks_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("include") => list(list(any())()),
        required("tasks") => list(String.t() | atom())
      }
      
  """
  @type describe_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      inference_accelerator_override() :: %{
        "deviceName" => String.t() | atom(),
        "deviceType" => String.t() | atom()
      }
      
  """
  @type inference_accelerator_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_provider() :: %{
        "autoScalingGroupArn" => String.t() | atom(),
        "managedDraining" => list(any()),
        "managedScaling" => managed_scaling(),
        "managedTerminationProtection" => list(any())
      }
      
  """
  @type auto_scaling_group_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_task_definition_incompatibility_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type platform_task_definition_incompatibility_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      port_mapping() :: %{
        "appProtocol" => list(any()),
        "containerPort" => integer(),
        "containerPortRange" => String.t() | atom(),
        "hostPort" => integer(),
        "name" => String.t() | atom(),
        "protocol" => list(any())
      }
      
  """
  @type port_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_response() :: %{
        "clusters" => list(cluster()),
        "failures" => list(failure())
      }
      
  """
  @type describe_clusters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_task_response() :: %{
        "failures" => list(failure()),
        "tasks" => list(task())
      }
      
  """
  @type start_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer() :: %{
        "containerName" => String.t() | atom(),
        "containerPort" => integer(),
        "loadBalancerName" => String.t() | atom(),
        "targetGroupArn" => String.t() | atom()
      }
      
  """
  @type load_balancer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      key_value_pair() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type key_value_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_service_connect_defaults() :: %{
        "namespace" => String.t() | atom()
      }
      
  """
  @type cluster_service_connect_defaults() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kernel_capabilities() :: %{
        "add" => list(String.t() | atom()),
        "drop" => list(String.t() | atom())
      }
      
  """
  @type kernel_capabilities() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_command_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("container") => String.t() | atom(),
        required("command") => String.t() | atom(),
        required("interactive") => boolean(),
        required("task") => String.t() | atom()
      }
      
  """
  @type execute_command_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_service_primary_task_set_request() :: %{
        required("cluster") => String.t() | atom(),
        required("primaryTaskSet") => String.t() | atom(),
        required("service") => String.t() | atom()
      }
      
  """
  @type update_service_primary_task_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      runtime_platform() :: %{
        "cpuArchitecture" => list(any()),
        "operatingSystemFamily" => list(any())
      }
      
  """
  @type runtime_platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type target_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_service_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("force") => boolean(),
        required("service") => String.t() | atom()
      }
      
  """
  @type delete_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      linux_parameters() :: %{
        "capabilities" => kernel_capabilities(),
        "devices" => list(device()),
        "initProcessEnabled" => boolean(),
        "maxSwap" => integer(),
        "sharedMemorySize" => integer(),
        "swappiness" => integer(),
        "tmpfs" => list(tmpfs())
      }
      
  """
  @type linux_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_task_state_change_response() :: %{
        "acknowledgment" => String.t() | atom()
      }
      
  """
  @type submit_task_state_change_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_connect_service() :: %{
        "clientAliases" => list(service_connect_client_alias()),
        "discoveryName" => String.t() | atom(),
        "ingressPortOverride" => integer(),
        "portName" => String.t() | atom(),
        "timeout" => timeout_configuration(),
        "tls" => service_connect_tls_configuration()
      }
      
  """
  @type service_connect_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scale() :: %{
        "unit" => list(any()),
        "value" => float()
      }
      
  """
  @type scale() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_device() :: %{
        "id" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type platform_device() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      discover_poll_endpoint_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("containerInstance") => String.t() | atom()
      }
      
  """
  @type discover_poll_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_service_deployments_request() :: %{
        required("serviceDeploymentArns") => list(String.t() | atom())
      }
      
  """
  @type describe_service_deployments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_contains_services_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cluster_contains_services_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blocked_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type blocked_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "name" => String.t() | atom(),
        "targetId" => String.t() | atom(),
        "targetType" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tasks_request() :: %{
        optional("cluster") => String.t() | atom(),
        optional("containerInstance") => String.t() | atom(),
        optional("desiredStatus") => list(any()),
        optional("family") => String.t() | atom(),
        optional("launchType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("serviceName") => String.t() | atom(),
        optional("startedBy") => String.t() | atom()
      }
      
  """
  @type list_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_ephemeral_storage() :: %{
        "kmsKeyId" => String.t() | atom(),
        "sizeInGiB" => integer()
      }
      
  """
  @type task_ephemeral_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_capacity_providers_response() :: %{
        "capacityProviders" => list(capacity_provider()),
        "failures" => list(failure()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type describe_capacity_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failure() :: %{
        "arn" => String.t() | atom(),
        "detail" => String.t() | atom(),
        "reason" => String.t() | atom()
      }
      
  """
  @type failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_task_response() :: %{
        "task" => task()
      }
      
  """
  @type stop_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_services_by_namespace_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceArns" => list(String.t() | atom())
      }
      
  """
  @type list_services_by_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_connect_client_alias() :: %{
        "dnsName" => String.t() | atom(),
        "port" => integer()
      }
      
  """
  @type service_connect_client_alias() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_vpc_configuration() :: %{
        "assignPublicIp" => list(any()),
        "securityGroups" => list(String.t() | atom()),
        "subnets" => list(String.t() | atom())
      }
      
  """
  @type aws_vpc_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_provider() :: %{
        "autoScalingGroupProvider" => auto_scaling_group_provider(),
        "capacityProviderArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "tags" => list(tag()),
        "updateStatus" => list(any()),
        "updateStatusReason" => String.t() | atom()
      }
      
  """
  @type capacity_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_capacity_provider_request() :: %{
        optional("tags") => list(tag()),
        required("autoScalingGroupProvider") => auto_scaling_group_provider(),
        required("name") => String.t() | atom()
      }
      
  """
  @type create_capacity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_attributes_request() :: %{
        optional("cluster") => String.t() | atom(),
        required("attributes") => list(attribute())
      }
      
  """
  @type put_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_cluster_capacity_providers_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type put_cluster_capacity_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      protected_task() :: %{
        "expirationDate" => non_neg_integer(),
        "protectionEnabled" => boolean(),
        "taskArn" => String.t() | atom()
      }
      
  """
  @type protected_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_connect_tls_configuration() :: %{
        "issuerCertificateAuthority" => service_connect_tls_certificate_authority(),
        "kmsKey" => String.t() | atom(),
        "roleArn" => String.t() | atom()
      }
      
  """
  @type service_connect_tls_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_revision() :: %{
        "capacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "clusterArn" => String.t() | atom(),
        "containerImages" => list(container_image()),
        "createdAt" => non_neg_integer(),
        "fargateEphemeralStorage" => deployment_ephemeral_storage(),
        "guardDutyEnabled" => boolean(),
        "launchType" => list(any()),
        "loadBalancers" => list(load_balancer()),
        "networkConfiguration" => network_configuration(),
        "platformFamily" => String.t() | atom(),
        "platformVersion" => String.t() | atom(),
        "serviceArn" => String.t() | atom(),
        "serviceConnectConfiguration" => service_connect_configuration(),
        "serviceRegistries" => list(service_registry()),
        "serviceRevisionArn" => String.t() | atom(),
        "taskDefinition" => String.t() | atom(),
        "volumeConfigurations" => list(service_volume_configuration()),
        "vpcLatticeConfigurations" => list(vpc_lattice_configuration())
      }
      
  """
  @type service_revision() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_attributes_request() :: %{
        optional("attributeName") => String.t() | atom(),
        optional("attributeValue") => String.t() | atom(),
        optional("cluster") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("targetType") => list(any())
      }
      
  """
  @type list_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_service_response() :: %{
        "service" => service()
      }
      
  """
  @type update_service_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      volume_from() :: %{
        "readOnly" => boolean(),
        "sourceContainer" => String.t() | atom()
      }
      
  """
  @type volume_from() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_service_response() :: %{
        "service" => service()
      }
      
  """
  @type delete_service_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      device() :: %{
        "containerPath" => String.t() | atom(),
        "hostPath" => String.t() | atom(),
        "permissions" => list(list(any())())
      }
      
  """
  @type device() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_attachment_state_changes_request() :: %{
        optional("cluster") => String.t() | atom(),
        required("attachments") => list(attachment_state_change())
      }
      
  """
  @type submit_attachment_state_changes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_account_setting_request() :: %{
        optional("principalArn") => String.t() | atom(),
        required("name") => list(any())
      }
      
  """
  @type delete_account_setting_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type create_task_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_volume_configuration() :: %{
        "managedEBSVolume" => service_managed_ebs_volume_configuration(),
        "name" => String.t() | atom()
      }
      
  """
  @type service_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_service_revisions_request() :: %{
        required("serviceRevisionArns") => list(String.t() | atom())
      }
      
  """
  @type describe_service_revisions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tasks_response() :: %{
        "nextToken" => String.t() | atom(),
        "taskArns" => list(String.t() | atom())
      }
      
  """
  @type list_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_service_response() :: %{
        "service" => service()
      }
      
  """
  @type create_service_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_managed_ebs_volume_configuration() :: %{
        "encrypted" => boolean(),
        "filesystemType" => list(any()),
        "iops" => integer(),
        "kmsKeyId" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "sizeInGiB" => integer(),
        "snapshotId" => String.t() | atom(),
        "tagSpecifications" => list(ebs_tag_specification()),
        "terminationPolicy" => task_managed_ebs_volume_termination_policy(),
        "throughput" => integer(),
        "volumeInitializationRate" => integer(),
        "volumeType" => String.t() | atom()
      }
      
  """
  @type task_managed_ebs_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      log_configuration() :: %{
        "logDriver" => list(any()),
        "options" => map(),
        "secretOptions" => list(secret())
      }
      
  """
  @type log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_instance() :: %{
        "agentConnected" => boolean(),
        "agentUpdateStatus" => list(any()),
        "attachments" => list(attachment()),
        "attributes" => list(attribute()),
        "capacityProviderName" => String.t() | atom(),
        "containerInstanceArn" => String.t() | atom(),
        "ec2InstanceId" => String.t() | atom(),
        "healthStatus" => container_instance_health_status(),
        "pendingTasksCount" => integer(),
        "registeredAt" => non_neg_integer(),
        "registeredResources" => list(resource()),
        "remainingResources" => list(resource()),
        "runningTasksCount" => integer(),
        "status" => String.t() | atom(),
        "statusReason" => String.t() | atom(),
        "tags" => list(tag()),
        "version" => float(),
        "versionInfo" => version_info()
      }
      
  """
  @type container_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_service_deployment_response() :: %{
        "serviceDeploymentArn" => String.t() | atom()
      }
      
  """
  @type stop_service_deployment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_connect_tls_certificate_authority() :: %{
        "awsPcaAuthorityArn" => String.t() | atom()
      }
      
  """
  @type service_connect_tls_certificate_authority() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_task_definition_request() :: %{
        required("taskDefinition") => String.t() | atom()
      }
      
  """
  @type deregister_task_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_requirement() :: %{
        "type" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type resource_requirement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firelens_configuration() :: %{
        "options" => map(),
        "type" => list(any())
      }
      
  """
  @type firelens_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      version_info() :: %{
        "agentHash" => String.t() | atom(),
        "agentVersion" => String.t() | atom(),
        "dockerVersion" => String.t() | atom()
      }
      
  """
  @type version_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_service_primary_task_set_response() :: %{
        "taskSet" => task_set()
      }
      
  """
  @type update_service_primary_task_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_managed_ebs_volume_configuration() :: %{
        "encrypted" => boolean(),
        "filesystemType" => list(any()),
        "iops" => integer(),
        "kmsKeyId" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "sizeInGiB" => integer(),
        "snapshotId" => String.t() | atom(),
        "tagSpecifications" => list(ebs_tag_specification()),
        "throughput" => integer(),
        "volumeInitializationRate" => integer(),
        "volumeType" => String.t() | atom()
      }
      
  """
  @type service_managed_ebs_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_task_definition_response() :: %{
        "tags" => list(tag()),
        "taskDefinition" => task_definition()
      }
      
  """
  @type register_task_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_request() :: %{
        optional("clusters") => list(String.t() | atom()),
        optional("include") => list(list(any())())
      }
      
  """
  @type describe_clusters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_task_request() :: %{
        optional("capacityProviderStrategy") => list(capacity_provider_strategy_item()),
        optional("clientToken") => String.t() | atom(),
        optional("cluster") => String.t() | atom(),
        optional("count") => integer(),
        optional("enableECSManagedTags") => boolean(),
        optional("enableExecuteCommand") => boolean(),
        optional("group") => String.t() | atom(),
        optional("launchType") => list(any()),
        optional("networkConfiguration") => network_configuration(),
        optional("overrides") => task_override(),
        optional("placementConstraints") => list(placement_constraint()),
        optional("placementStrategy") => list(placement_strategy()),
        optional("platformVersion") => String.t() | atom(),
        optional("propagateTags") => list(any()),
        optional("referenceId") => String.t() | atom(),
        optional("startedBy") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("volumeConfigurations") => list(task_volume_configuration()),
        required("taskDefinition") => String.t() | atom()
      }
      
  """
  @type run_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_container_instance_response() :: %{
        "containerInstance" => container_instance()
      }
      
  """
  @type deregister_container_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_ephemeral_storage() :: %{
        "kmsKeyId" => String.t() | atom()
      }
      
  """
  @type deployment_ephemeral_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_service_connect_defaults_request() :: %{
        "namespace" => String.t() | atom()
      }
      
  """
  @type cluster_service_connect_defaults_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_attributes_response() :: %{
        "attributes" => list(attribute()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_credentials() :: %{
        "credentialsParameter" => String.t() | atom()
      }
      
  """
  @type repository_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      f_sx_windows_file_server_volume_configuration() :: %{
        "authorizationConfig" => f_sx_windows_file_server_authorization_config(),
        "fileSystemId" => String.t() | atom(),
        "rootDirectory" => String.t() | atom()
      }
      
  """
  @type f_sx_windows_file_server_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tmpfs() :: %{
        "containerPath" => String.t() | atom(),
        "mountOptions" => list(String.t() | atom()),
        "size" => integer()
      }
      
  """
  @type tmpfs() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_file() :: %{
        "type" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type environment_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      placement_strategy() :: %{
        "field" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type placement_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cluster_response() :: %{
        "cluster" => cluster()
      }
      
  """
  @type update_cluster_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_dependency() :: %{
        "condition" => list(any()),
        "containerName" => String.t() | atom()
      }
      
  """
  @type container_dependency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "doubleValue" => float(),
        "integerValue" => integer(),
        "longValue" => float(),
        "name" => String.t() | atom(),
        "stringSetValue" => list(String.t() | atom()),
        "type" => String.t() | atom()
      }
      
  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type create_capacity_provider_errors() ::
          limit_exceeded_exception()
          | server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | update_in_progress_exception()

  @type create_cluster_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | namespace_not_found_exception()

  @type create_service_errors() ::
          server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | client_exception()
          | unsupported_feature_exception()
          | namespace_not_found_exception()
          | cluster_not_found_exception()

  @type create_task_set_errors() ::
          server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | namespace_not_found_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type delete_account_setting_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type delete_attributes_errors() ::
          target_not_found_exception()
          | invalid_parameter_exception()
          | cluster_not_found_exception()

  @type delete_capacity_provider_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type delete_cluster_errors() ::
          cluster_contains_services_exception()
          | server_exception()
          | invalid_parameter_exception()
          | cluster_contains_container_instances_exception()
          | cluster_contains_tasks_exception()
          | client_exception()
          | cluster_not_found_exception()
          | update_in_progress_exception()

  @type delete_service_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type delete_task_definitions_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()

  @type delete_task_set_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | task_set_not_found_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type deregister_container_instance_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type deregister_task_definition_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_capacity_providers_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_clusters_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_container_instances_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type describe_service_deployments_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type describe_service_revisions_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type describe_services_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type describe_task_definition_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type describe_task_sets_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type describe_tasks_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type discover_poll_endpoint_errors() :: server_exception() | client_exception()

  @type execute_command_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()
          | target_not_connected_exception()
          | cluster_not_found_exception()

  @type get_task_protection_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type list_account_settings_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_attributes_errors() :: invalid_parameter_exception() | cluster_not_found_exception()

  @type list_clusters_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_container_instances_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type list_service_deployments_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()

  @type list_services_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type list_services_by_namespace_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | namespace_not_found_exception()

  @type list_tags_for_resource_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type list_task_definition_families_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_task_definitions_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type list_tasks_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type put_account_setting_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type put_account_setting_default_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type put_attributes_errors() ::
          target_not_found_exception()
          | invalid_parameter_exception()
          | cluster_not_found_exception()
          | attribute_limit_exceeded_exception()

  @type put_cluster_capacity_providers_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()
          | resource_in_use_exception()
          | update_in_progress_exception()

  @type register_container_instance_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type register_task_definition_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type run_task_errors() ::
          blocked_exception()
          | server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | conflict_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type start_task_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type stop_service_deployment_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | conflict_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_deployment_not_found_exception()

  @type stop_task_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type submit_attachment_state_changes_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()

  @type submit_container_state_change_errors() ::
          server_exception() | access_denied_exception() | client_exception()

  @type submit_task_state_change_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | client_exception()

  @type tag_resource_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type untag_resource_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type update_capacity_provider_errors() ::
          server_exception() | invalid_parameter_exception() | client_exception()

  @type update_cluster_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | namespace_not_found_exception()
          | cluster_not_found_exception()

  @type update_cluster_settings_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type update_container_agent_errors() ::
          server_exception()
          | missing_version_exception()
          | invalid_parameter_exception()
          | no_update_available_exception()
          | client_exception()
          | cluster_not_found_exception()
          | update_in_progress_exception()

  @type update_container_instances_state_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | client_exception()
          | cluster_not_found_exception()

  @type update_service_errors() ::
          server_exception()
          | platform_task_definition_incompatibility_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | platform_unknown_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | namespace_not_found_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type update_service_primary_task_set_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | task_set_not_found_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  @type update_task_protection_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | client_exception()
          | unsupported_feature_exception()
          | cluster_not_found_exception()

  @type update_task_set_errors() ::
          server_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | task_set_not_found_exception()
          | service_not_active_exception()
          | client_exception()
          | unsupported_feature_exception()
          | service_not_found_exception()
          | cluster_not_found_exception()

  def metadata do
    %{
      api_version: "2014-11-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ecs",
      global?: false,
      hostname: nil,
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
          | {:error, term()}
          | {:error, create_capacity_provider_errors()}
  def create_capacity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCapacityProvider", input, options)
  end

  @doc """
  Creates a new Amazon ECS cluster.

  By default, your account receives a `default`
  cluster when you launch your first container instance. However, you can create
  your own
  cluster with a unique name.

  When you call the
  [CreateCluster](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCluster.html) API operation, Amazon ECS attempts to create the Amazon ECS service-linked role
  for your
  account. This is so that it can manage required resources in other Amazon Web
  Services services on
  your behalf. However, if the user that makes the call doesn't have permissions
  to
  create the service-linked role, it isn't created. For more information, see
  [Using
  service-linked roles for Amazon
  ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Runs and maintains your desired number of tasks from a specified task
  definition.

  If
  the number of tasks running in a service drops below the `desiredCount`,
  Amazon ECS runs another copy of the task in the specified cluster. To update an
  existing
  service, use
  [UpdateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html). 
  On March 21, 2024, a change was made to resolve the task definition revision
  before authorization. When a task definition revision is not specified,
  authorization will occur using the latest revision of a task definition.

  Amazon Elastic Inference (EI) is no longer available to customers.

  In addition to maintaining the desired count of tasks in your service, you can
  optionally run your service behind one or more load balancers. The load
  balancers
  distribute traffic across the tasks that are associated with the service. For
  more
  information, see [Service load
  balancing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when creating or
  updating a service. `volumeConfigurations` is only supported for REPLICA
  service and not DAEMON service. For more information, see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
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
  the task definition or by your desired count of a service. You can use
  [UpdateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html). The default value for a replica service for
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
  [CreateTaskSet](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html).
  For more information, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  When the service scheduler launches new tasks, it determines task placement. For
  information about task placement and task placement strategies, see [Amazon ECS task
  placement](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html)
  in the *Amazon Elastic Container Service Developer Guide*
  """
  @spec create_service(map(), create_service_request(), list()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_service_errors()}
  def create_service(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Create a task set in the specified cluster and service.

  This is used when a service
  uses the `EXTERNAL` deployment controller type. For more information, see
  [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  On March 21, 2024, a change was made to resolve the task definition revision
  before authorization. When a task definition revision is not specified,
  authorization will occur using the latest revision of a task definition.

  For information about the maximum number of task sets and other quotas, see
  [Amazon ECS service
  quotas](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec create_task_set(map(), create_task_set_request(), list()) ::
          {:ok, create_task_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_task_set_errors()}
  def create_task_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTaskSet", input, options)
  end

  @doc """
  Disables an account setting for a specified user, role, or the root user for an
  account.
  """
  @spec delete_account_setting(map(), delete_account_setting_request(), list()) ::
          {:ok, delete_account_setting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_account_setting_errors()}
  def delete_account_setting(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccountSetting", input, options)
  end

  @doc """
  Deletes one or more custom attributes from an Amazon ECS resource.
  """
  @spec delete_attributes(map(), delete_attributes_request(), list()) ::
          {:ok, delete_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_attributes_errors()}
  def delete_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAttributes", input, options)
  end

  @doc """
  Deletes the specified capacity provider.

  The `FARGATE` and `FARGATE_SPOT` capacity providers are
  reserved and can't be deleted. You can disassociate them from a cluster using
  either
  [PutClusterCapacityProviders](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html) or by deleting the cluster.

  Prior to a capacity provider being deleted, the capacity provider must be
  removed from
  the capacity provider strategy from all services. The
  [UpdateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html)
  API
  can be used to remove a capacity provider from a service's capacity provider
  strategy.
  When updating a service, the `forceNewDeployment` option can be used to
  ensure that any tasks using the Amazon EC2 instance capacity provided by the
  capacity
  provider are transitioned to use the capacity from the remaining capacity
  providers.
  Only capacity providers that aren't associated with a cluster can be deleted. To
  remove
  a capacity provider from a cluster, you can either use
  [PutClusterCapacityProviders](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html)
  or delete the cluster.
  """
  @spec delete_capacity_provider(map(), delete_capacity_provider_request(), list()) ::
          {:ok, delete_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_capacity_provider_errors()}
  def delete_capacity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  [ListContainerInstances](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListContainerInstances.html) and deregister them with
  [DeregisterContainerInstance](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterContainerInstance.html).
  """
  @spec delete_cluster(map(), delete_cluster_request(), list()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes a specified service within a cluster.

  You can delete a service if you have no
  running tasks in it and the desired task count is zero. If the service is
  actively
  maintaining tasks, you can't delete it, and you must update the service to a
  desired
  task count of zero. For more information, see
  [UpdateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html). 
  When you delete a service, if there are still running tasks that require
  cleanup,
  the service status moves from `ACTIVE` to `DRAINING`, and the
  service is no longer visible in the console or in the
  [ListServices](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html)
  API operation. After all tasks have transitioned to either `STOPPING` or
  `STOPPED` status, the service status moves from `DRAINING`
  to `INACTIVE`. Services in the `DRAINING` or
  `INACTIVE` status can still be viewed with the
  [DescribeServices](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html) API operation. However, in the future,
  `INACTIVE` services may be cleaned up and purged from Amazon ECS record
  keeping, and
  [DescribeServices](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html)
  calls on those services return a
  `ServiceNotFoundException` error.

  If you attempt to create a new service with the same name as an existing service
  in either `ACTIVE` or `DRAINING` status, you receive an
  error.
  """
  @spec delete_service(map(), delete_service_request(), list()) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_errors()}
  def delete_service(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, delete_task_definitions_errors()}
  def delete_task_definitions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, delete_task_set_errors()}
  def delete_task_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, deregister_container_instance_errors()}
  def deregister_container_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, deregister_task_definition_errors()}
  def deregister_task_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterTaskDefinition", input, options)
  end

  @doc """
  Describes one or more of your capacity providers.
  """
  @spec describe_capacity_providers(map(), describe_capacity_providers_request(), list()) ::
          {:ok, describe_capacity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_capacity_providers_errors()}
  def describe_capacity_providers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCapacityProviders", input, options)
  end

  @doc """
  Describes one or more of your clusters.

  For CLI examples, see
  [describe-clusters.rst](https://github.com/aws/aws-cli/blob/develop/awscli/examples/ecs/describe-clusters.rst)
  on GitHub.
  """
  @spec describe_clusters(map(), describe_clusters_request(), list()) ::
          {:ok, describe_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_clusters_errors()}
  def describe_clusters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, describe_container_instances_errors()}
  def describe_container_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeContainerInstances", input, options)
  end

  @doc """
  Describes one or more of your service deployments.

  A service deployment happens when you release a software update for the service.
  For
  more information, see [View service history using Amazon ECS service deployments](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-deployment.html).
  """
  @spec describe_service_deployments(map(), describe_service_deployments_request(), list()) ::
          {:ok, describe_service_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_deployments_errors()}
  def describe_service_deployments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServiceDeployments", input, options)
  end

  @doc """
  Describes one or more service revisions.

  A service revision is a version of the service that includes the values for the
  Amazon
  ECS resources (for example, task definition) and the environment resources (for
  example,
  load balancers, subnets, and security groups). For more information, see [Amazon ECS service
  revisions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-revision.html).

  You can't describe a service revision that was created before October 25, 2024.
  """
  @spec describe_service_revisions(map(), describe_service_revisions_request(), list()) ::
          {:ok, describe_service_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_revisions_errors()}
  def describe_service_revisions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServiceRevisions", input, options)
  end

  @doc """
  Describes the specified services running in your cluster.
  """
  @spec describe_services(map(), describe_services_request(), list()) ::
          {:ok, describe_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_services_errors()}
  def describe_services(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, describe_task_definition_errors()}
  def describe_task_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, describe_task_sets_errors()}
  def describe_task_sets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, describe_tasks_errors()}
  def describe_tasks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, discover_poll_endpoint_errors()}
  def discover_poll_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, execute_command_errors()}
  def execute_command(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExecuteCommand", input, options)
  end

  @doc """
  Retrieves the protection status of tasks in an Amazon ECS service.
  """
  @spec get_task_protection(map(), get_task_protection_request(), list()) ::
          {:ok, get_task_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_task_protection_errors()}
  def get_task_protection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTaskProtection", input, options)
  end

  @doc """
  Lists the account settings for a specified principal.
  """
  @spec list_account_settings(map(), list_account_settings_request(), list()) ::
          {:ok, list_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_settings_errors()}
  def list_account_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, list_attributes_errors()}
  def list_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAttributes", input, options)
  end

  @doc """
  Returns a list of existing clusters.
  """
  @spec list_clusters(map(), list_clusters_request(), list()) ::
          {:ok, list_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, list_container_instances_errors()}
  def list_container_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListContainerInstances", input, options)
  end

  @doc """
  This operation lists all the service deployments that meet the specified filter
  criteria.

  A service deployment happens when you release a software update for the service.
  You
  route traffic from the running service revisions to the new service revison and
  control
  the number of running tasks.

  This API returns the values that you use for the request parameters in
  [DescribeServiceRevisions](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServiceRevisions.html).
  """
  @spec list_service_deployments(map(), list_service_deployments_request(), list()) ::
          {:ok, list_service_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_service_deployments_errors()}
  def list_service_deployments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListServiceDeployments", input, options)
  end

  @doc """
  Returns a list of services.

  You can filter the results by cluster, launch type, and
  scheduling strategy.
  """
  @spec list_services(map(), list_services_request(), list()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, list_services_by_namespace_errors()}
  def list_services_by_namespace(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListServicesByNamespace", input, options)
  end

  @doc """
  List the tags for an Amazon ECS resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, list_task_definition_families_errors()}
  def list_task_definition_families(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, list_task_definitions_errors()}
  def list_task_definitions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, list_tasks_errors()}
  def list_tasks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, put_account_setting_errors()}
  def put_account_setting(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, put_account_setting_default_errors()}
  def put_account_setting_default(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutAccountSettingDefault", input, options)
  end

  @doc """
  Create or update an attribute on an Amazon ECS resource.

  If the attribute doesn't exist,
  it's created. If the attribute exists, its value is replaced with the specified
  value.
  To delete an attribute, use
  [DeleteAttributes](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteAttributes.html). For more information, see
  [Attributes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec put_attributes(map(), put_attributes_request(), list()) ::
          {:ok, put_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_attributes_errors()}
  def put_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  cluster that are omitted from a
  [PutClusterCapacityProviders](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html) API call will be disassociated with the
  cluster. You can only disassociate an existing capacity provider from a cluster
  if it's
  not being used by any existing tasks.

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
          | {:error, term()}
          | {:error, put_cluster_capacity_providers_errors()}
  def put_cluster_capacity_providers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, register_container_instance_errors()}
  def register_container_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  with the `networkMode` parameter. If you specify the `awsvpc`
  network mode, the task is allocated an elastic network interface, and you must
  specify a
  [NetworkConfiguration](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html) when you create a service or run a task with the task
  definition. For more information, see [Task
  Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec register_task_definition(map(), register_task_definition_request(), list()) ::
          {:ok, register_task_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_task_definition_errors()}
  def register_task_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterTaskDefinition", input, options)
  end

  @doc """
  Starts a new task using the specified task definition.

  On March 21, 2024, a change was made to resolve the task definition revision
  before authorization. When a task definition revision is not specified,
  authorization will occur using the latest revision of a task definition.

  Amazon Elastic Inference (EI) is no longer available to customers.

  You can allow Amazon ECS to place tasks for you, or you can customize how Amazon
  ECS places
  tasks using placement constraints and placement strategies. For more
  information, see
  [Scheduling Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  Alternatively, you can use `StartTask` to use your own scheduler or place
  tasks manually on specific container instances.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when creating or
  updating a service. For more information, see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
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

  If you get a `ConflictException` error, the `RunTask` request could
  not be processed due to conflicts. The provided `clientToken` is already in
  use with a different `RunTask` request. The `resourceIds` are the
  existing task ARNs which are already associated with the `clientToken`.

  To fix this issue:

    *
  Run `RunTask` with a unique `clientToken`.

    *
  Run `RunTask` with the `clientToken` and the original
  set of parameters

  If you get a `ClientException`error, the `RunTask` could not be processed
  because you use managed
  scaling and there is a capacity error because the quota of tasks in the
  `PROVISIONING` per cluster has been reached. For information
  about the service quotas, see [Amazon ECS service
  quotas](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html).
  """
  @spec run_task(map(), run_task_request(), list()) ::
          {:ok, run_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, run_task_errors()}
  def run_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RunTask", input, options)
  end

  @doc """
  Starts a new task from the specified task definition on the specified container
  instance or instances.

  On March 21, 2024, a change was made to resolve the task definition revision
  before authorization. When a task definition revision is not specified,
  authorization will occur using the latest revision of a task definition.

  Amazon Elastic Inference (EI) is no longer available to customers.

  Alternatively, you can use`RunTask` to place tasks for you. For more
  information, see [Scheduling Tasks](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when creating or
  updating a service. For more information, see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*.
  """
  @spec start_task(map(), start_task_request(), list()) ::
          {:ok, start_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_task_errors()}
  def start_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTask", input, options)
  end

  @doc """
  Stops an ongoing service deployment.

  The following stop types are avaiable:

    *
  ROLLBACK - This option rolls back the service deployment to the previous
  service revision.

  You can use this option even if you didn't configure the service deployment
  for the rollback option.

  For more information, see [Stopping Amazon ECS service
  deployments](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/stop-service-deployment.html)
  in the *Amazon Elastic Container Service Developer
  Guide*.
  """
  @spec stop_service_deployment(map(), stop_service_deployment_request(), list()) ::
          {:ok, stop_service_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_service_deployment_errors()}
  def stop_service_deployment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopServiceDeployment", input, options)
  end

  @doc """
  Stops a running task.

  Any tags associated with the task will be deleted.

  When you call `StopTask` on a task, the equivalent of

  ```
  docker
  stop
  ```

  is issued to the containers running in the task. This results in a
  `SIGTERM` value and a default 30-second timeout, after which the
  `SIGKILL` value is sent and the containers are forcibly stopped. If the
  container handles the `SIGTERM` value gracefully and exits within 30 seconds
  from receiving it, no `SIGKILL` value is sent.

  For Windows containers, POSIX signals do not work and runtime stops the
  container by
  sending a `CTRL_SHUTDOWN_EVENT`. For more information, see [Unable to react to graceful shutdown
  of (Windows) container #25982](https://github.com/moby/moby/issues/25982) on
  GitHub.

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
          | {:error, term()}
          | {:error, stop_task_errors()}
  def stop_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, submit_attachment_state_changes_errors()}
  def submit_attachment_state_changes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, submit_container_state_change_errors()}
  def submit_container_state_change(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, submit_task_state_change_errors()}
  def submit_task_state_change(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the parameters for a capacity provider.
  """
  @spec update_capacity_provider(map(), update_capacity_provider_request(), list()) ::
          {:ok, update_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_capacity_provider_errors()}
  def update_capacity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCapacityProvider", input, options)
  end

  @doc """
  Updates the cluster.
  """
  @spec update_cluster(map(), update_cluster_request(), list()) ::
          {:ok, update_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cluster_errors()}
  def update_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  Modifies the settings to use for a cluster.
  """
  @spec update_cluster_settings(map(), update_cluster_settings_request(), list()) ::
          {:ok, update_cluster_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cluster_settings_errors()}
  def update_cluster_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, update_container_agent_errors()}
  def update_container_agent(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  the deployment configuration of your service using
  [UpdateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html). 
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
  tasks. You can verify this using
  [ListTasks](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html).

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
          | {:error, term()}
          | {:error, update_container_instances_state_errors()}
  def update_container_instances_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateContainerInstancesState", input, options)
  end

  @doc """
  Modifies the parameters of a service.

  On March 21, 2024, a change was made to resolve the task definition revision
  before authorization. When a task definition revision is not specified,
  authorization will occur using the latest revision of a task definition.

  For services using the rolling update (`ECS`) you can update the desired
  count, deployment configuration, network configuration, load balancers, service
  registries, enable ECS managed tags option, propagate tags option, task
  placement
  constraints and strategies, and task definition. When you update any of these
  parameters, Amazon ECS starts new tasks with the new configuration.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when starting or
  running a task, or when creating or updating a service. For more information,
  see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
  in the *Amazon Elastic Container Service Developer Guide*. You can update
  your volume configurations and trigger a new deployment.
  `volumeConfigurations` is only supported for REPLICA service and not
  DAEMON service. If you leave `volumeConfigurations`
  `null`, it doesn't trigger a new deployment. For more information on volumes,
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
  updated, create a new task set For more information, see
  [CreateTaskSet](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html).

  You can add to or subtract from the number of instantiations of a task
  definition in a
  service by specifying the cluster that the service is running in and a new
  `desiredCount` parameter.

  You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume
  when starting or
  running a task, or when creating or updating a service. For more information,
  see [Amazon EBS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
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

  When
  [UpdateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html)
  stops a task during a deployment, the equivalent of `docker stop` is issued
  to the containers running in the task. This results in a `SIGTERM` and a
  30-second timeout. After this, `SIGKILL` is sent and the containers are
  forcibly stopped. If the container handles the `SIGTERM` gracefully and exits
  within 30 seconds from receiving it, no `SIGKILL` is sent.

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
  """
  @spec update_service(map(), update_service_request(), list()) ::
          {:ok, update_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_errors()}
  def update_service(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, update_service_primary_task_set_errors()}
  def update_service_primary_task_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, update_task_protection_errors()}
  def update_task_protection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
          | {:error, term()}
          | {:error, update_task_set_errors()}
  def update_task_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTaskSet", input, options)
  end
end
