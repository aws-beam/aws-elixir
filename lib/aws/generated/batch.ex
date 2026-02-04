# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Batch do
  @moduledoc """
  Batch

  Using Batch, you can run batch computing workloads on the Amazon Web Services
  Cloud.

  Batch computing is a common means for
  developers, scientists, and engineers to access large amounts of compute
  resources. Batch uses the advantages of
  the batch computing to remove the undifferentiated heavy lifting of configuring
  and managing required infrastructure.
  At the same time, it also adopts a familiar batch computing software approach.
  You can use Batch to efficiently
  provision resources, and work toward eliminating capacity constraints, reducing
  your overall compute costs, and
  delivering results more quickly.

  As a fully managed service, Batch can run batch computing workloads of any
  scale. Batch automatically
  provisions compute resources and optimizes workload distribution based on the
  quantity and scale of your specific
  workloads. With Batch, there's no need to install or manage batch computing
  software. This means that you can focus
  on analyzing results and solving your specific problems instead.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      ecs_properties_override() :: %{
        "taskProperties" => list(task_properties_override())
      }

  """
  @type ecs_properties_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_compute_environments_response() :: %{
        "computeEnvironments" => list(compute_environment_detail()),
        "nextToken" => String.t() | atom()
      }

  """
  @type describe_compute_environments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scheduling_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_scheduling_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_request() :: %{
        required("jobId") => String.t() | atom(),
        required("reason") => String.t() | atom()
      }

  """
  @type cancel_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_metadata() :: %{
        "annotations" => map(),
        "labels" => map(),
        "namespace" => String.t() | atom()
      }

  """
  @type eks_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_properties_override() :: %{
        "containers" => list(task_container_overrides())
      }

  """
  @type task_properties_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_service_job_request() :: %{
        required("jobId") => String.t() | atom(),
        required("reason") => String.t() | atom()
      }

  """
  @type terminate_service_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_by_consumable_resource_summary() :: %{
        "consumableResourceProperties" => consumable_resource_properties(),
        "createdAt" => float(),
        "jobArn" => String.t() | atom(),
        "jobDefinitionArn" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "jobQueueArn" => String.t() | atom(),
        "jobStatus" => String.t() | atom(),
        "quantity" => float(),
        "shareIdentifier" => String.t() | atom(),
        "startedAt" => float(),
        "statusReason" => String.t() | atom()
      }

  """
  @type list_jobs_by_consumable_resource_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_job_definition_request() :: %{
        required("jobDefinition") => String.t() | atom()
      }

  """
  @type deregister_job_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fargate_platform_configuration() :: %{
        "platformVersion" => String.t() | atom()
      }

  """
  @type fargate_platform_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_definitions_response() :: %{
        "jobDefinitions" => list(job_definition()),
        "nextToken" => String.t() | atom()
      }

  """
  @type describe_job_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_properties() :: %{
        "command" => list(String.t() | atom()),
        "enableExecuteCommand" => boolean(),
        "environment" => list(key_value_pair()),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t() | atom(),
        "fargatePlatformConfiguration" => fargate_platform_configuration(),
        "image" => String.t() | atom(),
        "instanceType" => String.t() | atom(),
        "jobRoleArn" => String.t() | atom(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "memory" => integer(),
        "mountPoints" => list(mount_point()),
        "networkConfiguration" => network_configuration(),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()),
        "runtimePlatform" => runtime_platform(),
        "secrets" => list(secret()),
        "ulimits" => list(ulimit()),
        "user" => String.t() | atom(),
        "vcpus" => integer(),
        "volumes" => list(volume())
      }

  """
  @type container_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      latest_service_job_attempt() :: %{
        "serviceResourceId" => service_resource_id()
      }

  """
  @type latest_service_job_attempt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_host_path() :: %{
        "path" => String.t() | atom()
      }

  """
  @type eks_host_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_compute_environment_response() :: %{
        "computeEnvironmentArn" => String.t() | atom(),
        "computeEnvironmentName" => String.t() | atom()
      }

  """
  @type create_compute_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_environment_response() :: %{}

  """
  @type delete_service_environment_response() :: %{}

  @typedoc """

  ## Example:

      eks_container_environment_variable() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type eks_container_environment_variable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_compute_environment_request() :: %{
        optional("computeResources") => compute_resource_update(),
        optional("context") => String.t() | atom(),
        optional("serviceRole") => String.t() | atom(),
        optional("state") => list(any()),
        optional("unmanagedvCpus") => integer(),
        optional("updatePolicy") => update_policy(),
        required("computeEnvironment") => String.t() | atom()
      }

  """
  @type update_compute_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_queue_snapshot_request() :: %{
        required("jobQueue") => String.t() | atom()
      }

  """
  @type get_job_queue_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_timeout() :: %{
        "attemptDurationSeconds" => integer()
      }

  """
  @type job_timeout() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scheduling_policy_detail() :: %{
        "arn" => String.t() | atom(),
        "fairsharePolicy" => fairshare_policy(),
        "name" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type scheduling_policy_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_request() :: %{
        optional("arrayJobId") => String.t() | atom(),
        optional("filters") => list(key_values_pair()),
        optional("jobQueue") => String.t() | atom(),
        optional("jobStatus") => list(any()),
        optional("maxResults") => integer(),
        optional("multiNodeJobId") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_service_job_response() :: %{}

  """
  @type terminate_service_job_response() :: %{}

  @typedoc """

  ## Example:

      delete_scheduling_policy_request() :: %{
        required("arn") => String.t() | atom()
      }

  """
  @type delete_scheduling_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_pull_secret() :: %{
        "name" => String.t() | atom()
      }

  """
  @type image_pull_secret() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_configuration() :: %{
        "imageIdOverride" => String.t() | atom(),
        "imageKubernetesVersion" => String.t() | atom(),
        "imageType" => String.t() | atom()
      }

  """
  @type ec2_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_job_definition_response() :: %{}

  """
  @type deregister_job_definition_response() :: %{}

  @typedoc """

  ## Example:

      create_scheduling_policy_request() :: %{
        optional("fairsharePolicy") => fairshare_policy(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_scheduling_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      node_property_override() :: %{
        "consumableResourcePropertiesOverride" => consumable_resource_properties(),
        "containerOverrides" => container_overrides(),
        "ecsPropertiesOverride" => ecs_properties_override(),
        "eksPropertiesOverride" => eks_properties_override(),
        "instanceTypes" => list(String.t() | atom()),
        "targetNodes" => String.t() | atom()
      }

  """
  @type node_property_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_service_environment_request() :: %{
        optional("state") => list(any()),
        optional("tags") => map(),
        required("capacityLimits") => list(capacity_limit()),
        required("serviceEnvironmentName") => String.t() | atom(),
        required("serviceEnvironmentType") => list(any())
      }

  """
  @type create_service_environment_request() :: %{(String.t() | atom()) => any()}

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

      eks_container_override() :: %{
        "args" => list(String.t() | atom()),
        "command" => list(String.t() | atom()),
        "env" => list(eks_container_environment_variable()),
        "image" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resources" => eks_container_resource_requirements()
      }

  """
  @type eks_container_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_service_environment_response() :: %{
        "serviceEnvironmentArn" => String.t() | atom(),
        "serviceEnvironmentName" => String.t() | atom()
      }

  """
  @type update_service_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_jobs_response() :: %{
        "jobSummaryList" => list(service_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_service_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_response() :: %{
        "jobSummaryList" => list(job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_environment_order() :: %{
        "order" => integer(),
        "serviceEnvironment" => String.t() | atom()
      }

  """
  @type service_environment_order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_service_jobs_request() :: %{
        optional("filters") => list(key_values_pair()),
        optional("jobQueue") => String.t() | atom(),
        optional("jobStatus") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_service_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attempt_task_container_details() :: %{
        "exitCode" => integer(),
        "logStreamName" => String.t() | atom(),
        "name" => String.t() | atom(),
        "networkInterfaces" => list(network_interface()),
        "reason" => String.t() | atom()
      }

  """
  @type attempt_task_container_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_scheduling_policies_response() :: %{
        "schedulingPolicies" => list(scheduling_policy_detail())
      }

  """
  @type describe_scheduling_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy() :: %{
        "jobExecutionTimeoutMinutes" => float(),
        "terminateJobsOnUpdate" => boolean()
      }

  """
  @type update_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_queue_detail() :: %{
        "computeEnvironmentOrder" => list(compute_environment_order()),
        "jobQueueArn" => String.t() | atom(),
        "jobQueueName" => String.t() | atom(),
        "jobQueueType" => list(any()),
        "jobStateTimeLimitActions" => list(job_state_time_limit_action()),
        "priority" => integer(),
        "schedulingPolicyArn" => String.t() | atom(),
        "serviceEnvironmentOrder" => list(service_environment_order()),
        "state" => list(any()),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type job_queue_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_consumable_resource_request() :: %{
        optional("resourceType") => String.t() | atom(),
        optional("tags") => map(),
        optional("totalQuantity") => float(),
        required("consumableResourceName") => String.t() | atom()
      }

  """
  @type create_consumable_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_job_queue_response() :: %{}

  """
  @type delete_job_queue_response() :: %{}

  @typedoc """

  ## Example:

      ecs_properties() :: %{
        "taskProperties" => list(ecs_task_properties())
      }

  """
  @type ecs_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_job_definition_response() :: %{
        "jobDefinitionArn" => String.t() | atom(),
        "jobDefinitionName" => String.t() | atom(),
        "revision" => integer()
      }

  """
  @type register_job_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_definitions_request() :: %{
        optional("jobDefinitionName") => String.t() | atom(),
        optional("jobDefinitions") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => String.t() | atom()
      }

  """
  @type describe_job_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_job_evaluate_on_exit() :: %{
        "action" => list(any()),
        "onStatusReason" => String.t() | atom()
      }

  """
  @type service_job_evaluate_on_exit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      submit_service_job_response() :: %{
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom()
      }

  """
  @type submit_service_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_compute_environment_request() :: %{
        optional("computeResources") => compute_resource(),
        optional("context") => String.t() | atom(),
        optional("eksConfiguration") => eks_configuration(),
        optional("serviceRole") => String.t() | atom(),
        optional("state") => list(any()),
        optional("tags") => map(),
        optional("unmanagedvCpus") => integer(),
        required("computeEnvironmentName") => String.t() | atom(),
        required("type") => list(any())
      }

  """
  @type create_compute_environment_request() :: %{(String.t() | atom()) => any()}

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

      attempt_ecs_task_details() :: %{
        "containerInstanceArn" => String.t() | atom(),
        "containers" => list(attempt_task_container_details()),
        "taskArn" => String.t() | atom()
      }

  """
  @type attempt_ecs_task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_container_overrides() :: %{
        "command" => list(String.t() | atom()),
        "environment" => list(key_value_pair()),
        "name" => String.t() | atom(),
        "resourceRequirements" => list(resource_requirement())
      }

  """
  @type task_container_overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_container_detail() :: %{
        "args" => list(String.t() | atom()),
        "command" => list(String.t() | atom()),
        "env" => list(eks_container_environment_variable()),
        "exitCode" => integer(),
        "image" => String.t() | atom(),
        "imagePullPolicy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "resources" => eks_container_resource_requirements(),
        "securityContext" => eks_container_security_context(),
        "volumeMounts" => list(eks_container_volume_mount())
      }

  """
  @type eks_container_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_properties_override() :: %{
        "podProperties" => eks_pod_properties_override()
      }

  """
  @type eks_properties_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_job_timeout() :: %{
        "attemptDurationSeconds" => integer()
      }

  """
  @type service_job_timeout() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scheduling_policy_response() :: %{
        "arn" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type create_scheduling_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_by_consumable_resource_request() :: %{
        optional("filters") => list(key_values_pair()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("consumableResource") => String.t() | atom()
      }

  """
  @type list_jobs_by_consumable_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "arrayProperties" => array_properties_summary(),
        "container" => container_summary(),
        "createdAt" => float(),
        "jobArn" => String.t() | atom(),
        "jobDefinition" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "nodeProperties" => node_properties_summary(),
        "startedAt" => float(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => float()
      }

  """
  @type job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scheduling_policies_response() :: %{
        "nextToken" => String.t() | atom(),
        "schedulingPolicies" => list(scheduling_policy_listing_detail())
      }

  """
  @type list_scheduling_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_compute_environment_request() :: %{
        required("computeEnvironment") => String.t() | atom()
      }

  """
  @type delete_compute_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecs_task_properties() :: %{
        "containers" => list(task_container_properties()),
        "enableExecuteCommand" => boolean(),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t() | atom(),
        "ipcMode" => String.t() | atom(),
        "networkConfiguration" => network_configuration(),
        "pidMode" => String.t() | atom(),
        "platformVersion" => String.t() | atom(),
        "runtimePlatform" => runtime_platform(),
        "taskRoleArn" => String.t() | atom(),
        "volumes" => list(volume())
      }

  """
  @type ecs_task_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      submit_service_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("retryStrategy") => service_job_retry_strategy(),
        optional("schedulingPriority") => integer(),
        optional("shareIdentifier") => String.t() | atom(),
        optional("tags") => map(),
        optional("timeoutConfig") => service_job_timeout(),
        required("jobName") => String.t() | atom(),
        required("jobQueue") => String.t() | atom(),
        required("serviceJobType") => list(any()),
        required("serviceRequestPayload") => String.t() | atom()
      }

  """
  @type submit_service_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_container_details() :: %{
        "command" => list(String.t() | atom()),
        "dependsOn" => list(task_container_dependency()),
        "environment" => list(key_value_pair()),
        "essential" => boolean(),
        "exitCode" => integer(),
        "firelensConfiguration" => firelens_configuration(),
        "image" => String.t() | atom(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "logStreamName" => String.t() | atom(),
        "mountPoints" => list(mount_point()),
        "name" => String.t() | atom(),
        "networkInterfaces" => list(network_interface()),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "reason" => String.t() | atom(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()),
        "secrets" => list(secret()),
        "ulimits" => list(ulimit()),
        "user" => String.t() | atom()
      }

  """
  @type task_container_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_service_environment_response() :: %{
        "serviceEnvironmentArn" => String.t() | atom(),
        "serviceEnvironmentName" => String.t() | atom()
      }

  """
  @type create_service_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      client_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_service_environment_request() :: %{
        required("serviceEnvironment") => String.t() | atom()
      }

  """
  @type delete_service_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_queue_response() :: %{
        "jobQueueArn" => String.t() | atom(),
        "jobQueueName" => String.t() | atom()
      }

  """
  @type create_job_queue_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_resource_id() :: %{
        "name" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type service_resource_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ulimit() :: %{
        "hardLimit" => integer(),
        "name" => String.t() | atom(),
        "softLimit" => integer()
      }

  """
  @type ulimit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluate_on_exit() :: %{
        "action" => list(any()),
        "onExitCode" => String.t() | atom(),
        "onReason" => String.t() | atom(),
        "onStatusReason" => String.t() | atom()
      }

  """
  @type evaluate_on_exit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attempt_detail() :: %{
        "container" => attempt_container_detail(),
        "startedAt" => float(),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => float(),
        "taskProperties" => list(attempt_ecs_task_details())
      }

  """
  @type attempt_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_job_definition_request() :: %{
        optional("consumableResourceProperties") => consumable_resource_properties(),
        optional("containerProperties") => container_properties(),
        optional("ecsProperties") => ecs_properties(),
        optional("eksProperties") => eks_properties(),
        optional("nodeProperties") => node_properties(),
        optional("parameters") => map(),
        optional("platformCapabilities") => list(list(any())()),
        optional("propagateTags") => boolean(),
        optional("retryStrategy") => retry_strategy(),
        optional("schedulingPriority") => integer(),
        optional("tags") => map(),
        optional("timeout") => job_timeout(),
        required("jobDefinitionName") => String.t() | atom(),
        required("type") => list(any())
      }

  """
  @type register_job_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_scheduling_policy_response() :: %{}

  """
  @type delete_scheduling_policy_response() :: %{}

  @typedoc """

  ## Example:

      submit_job_request() :: %{
        optional("arrayProperties") => array_properties(),
        optional("consumableResourcePropertiesOverride") => consumable_resource_properties(),
        optional("containerOverrides") => container_overrides(),
        optional("dependsOn") => list(job_dependency()),
        optional("ecsPropertiesOverride") => ecs_properties_override(),
        optional("eksPropertiesOverride") => eks_properties_override(),
        optional("nodeOverrides") => node_overrides(),
        optional("parameters") => map(),
        optional("propagateTags") => boolean(),
        optional("retryStrategy") => retry_strategy(),
        optional("schedulingPriorityOverride") => integer(),
        optional("shareIdentifier") => String.t() | atom(),
        optional("tags") => map(),
        optional("timeout") => job_timeout(),
        required("jobDefinition") => String.t() | atom(),
        required("jobName") => String.t() | atom(),
        required("jobQueue") => String.t() | atom()
      }

  """
  @type submit_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_values_pair() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type key_values_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attempt_container_detail() :: %{
        "containerInstanceArn" => String.t() | atom(),
        "exitCode" => integer(),
        "logStreamName" => String.t() | atom(),
        "networkInterfaces" => list(network_interface()),
        "reason" => String.t() | atom(),
        "taskArn" => String.t() | atom()
      }

  """
  @type attempt_container_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_consumable_resources_response() :: %{
        "consumableResources" => list(consumable_resource_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_consumable_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_job_queue_request() :: %{
        optional("computeEnvironmentOrder") => list(compute_environment_order()),
        optional("jobStateTimeLimitActions") => list(job_state_time_limit_action()),
        optional("priority") => integer(),
        optional("schedulingPolicyArn") => String.t() | atom(),
        optional("serviceEnvironmentOrder") => list(service_environment_order()),
        optional("state") => list(any()),
        required("jobQueue") => String.t() | atom()
      }

  """
  @type update_job_queue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecs_task_details() :: %{
        "containerInstanceArn" => String.t() | atom(),
        "containers" => list(task_container_details()),
        "enableExecuteCommand" => boolean(),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t() | atom(),
        "ipcMode" => String.t() | atom(),
        "networkConfiguration" => network_configuration(),
        "pidMode" => String.t() | atom(),
        "platformVersion" => String.t() | atom(),
        "runtimePlatform" => runtime_platform(),
        "taskArn" => String.t() | atom(),
        "taskRoleArn" => String.t() | atom(),
        "volumes" => list(volume())
      }

  """
  @type ecs_task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_queues_response() :: %{
        "jobQueues" => list(job_queue_detail()),
        "nextToken" => String.t() | atom()
      }

  """
  @type describe_job_queues_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_configuration() :: %{
        "eksClusterArn" => String.t() | atom(),
        "kubernetesNamespace" => String.t() | atom()
      }

  """
  @type eks_configuration() :: %{(String.t() | atom()) => any()}

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

      share_attributes() :: %{
        "shareIdentifier" => String.t() | atom(),
        "weightFactor" => float()
      }

  """
  @type share_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fairshare_policy() :: %{
        "computeReservation" => integer(),
        "shareDecaySeconds" => integer(),
        "shareDistribution" => list(share_attributes())
      }

  """
  @type fairshare_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_job_request() :: %{
        required("jobId") => String.t() | atom(),
        required("reason") => String.t() | atom()
      }

  """
  @type terminate_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_volume() :: %{
        "emptyDir" => eks_empty_dir(),
        "hostPath" => eks_host_path(),
        "name" => String.t() | atom(),
        "persistentVolumeClaim" => eks_persistent_volume_claim(),
        "secret" => eks_secret()
      }

  """
  @type eks_volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_definition() :: %{
        "consumableResourceProperties" => consumable_resource_properties(),
        "containerOrchestrationType" => list(any()),
        "containerProperties" => container_properties(),
        "ecsProperties" => ecs_properties(),
        "eksProperties" => eks_properties(),
        "jobDefinitionArn" => String.t() | atom(),
        "jobDefinitionName" => String.t() | atom(),
        "nodeProperties" => node_properties(),
        "parameters" => map(),
        "platformCapabilities" => list(list(any())()),
        "propagateTags" => boolean(),
        "retryStrategy" => retry_strategy(),
        "revision" => integer(),
        "schedulingPriority" => integer(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "timeout" => job_timeout(),
        "type" => String.t() | atom()
      }

  """
  @type job_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      front_of_queue_job_summary() :: %{
        "earliestTimeAtPosition" => float(),
        "jobArn" => String.t() | atom()
      }

  """
  @type front_of_queue_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_service_environment_request() :: %{
        optional("capacityLimits") => list(capacity_limit()),
        optional("state") => list(any()),
        required("serviceEnvironment") => String.t() | atom()
      }

  """
  @type update_service_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_summary() :: %{
        "exitCode" => integer(),
        "reason" => String.t() | atom()
      }

  """
  @type container_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_consumable_resource_request() :: %{
        required("consumableResource") => String.t() | atom()
      }

  """
  @type delete_consumable_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_service_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("serviceEnvironments") => list(String.t() | atom())
      }

  """
  @type describe_service_environments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_job_retry_strategy() :: %{
        "attempts" => integer(),
        "evaluateOnExit" => list(service_job_evaluate_on_exit())
      }

  """
  @type service_job_retry_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ephemeral_storage() :: %{
        "sizeInGiB" => integer()
      }

  """
  @type ephemeral_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_consumable_resource_response() :: %{
        "consumableResourceArn" => String.t() | atom(),
        "consumableResourceName" => String.t() | atom(),
        "totalQuantity" => float()
      }

  """
  @type update_consumable_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_properties() :: %{
        "podProperties" => eks_pod_properties()
      }

  """
  @type eks_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_attempt_detail() :: %{
        "containers" => list(eks_attempt_container_detail()),
        "eksClusterArn" => String.t() | atom(),
        "initContainers" => list(eks_attempt_container_detail()),
        "nodeName" => String.t() | atom(),
        "podName" => String.t() | atom(),
        "podNamespace" => String.t() | atom(),
        "startedAt" => float(),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => float()
      }

  """
  @type eks_attempt_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_secret() :: %{
        "optional" => boolean(),
        "secretName" => String.t() | atom()
      }

  """
  @type eks_secret() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_queue_snapshot_response() :: %{
        "frontOfQueue" => front_of_queue_detail()
      }

  """
  @type get_job_queue_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      host() :: %{
        "sourcePath" => String.t() | atom()
      }

  """
  @type host() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_environment_order() :: %{
        "computeEnvironment" => String.t() | atom(),
        "order" => integer()
      }

  """
  @type compute_environment_order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scheduling_policy_request() :: %{
        optional("fairsharePolicy") => fairshare_policy(),
        required("arn") => String.t() | atom()
      }

  """
  @type update_scheduling_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_environment_detail() :: %{
        "capacityLimits" => list(capacity_limit()),
        "serviceEnvironmentArn" => String.t() | atom(),
        "serviceEnvironmentName" => String.t() | atom(),
        "serviceEnvironmentType" => list(any()),
        "state" => list(any()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type service_environment_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_resource_update() :: %{
        "allocationStrategy" => list(any()),
        "bidPercentage" => integer(),
        "desiredvCpus" => integer(),
        "ec2Configuration" => list(ec2_configuration()),
        "ec2KeyPair" => String.t() | atom(),
        "imageId" => String.t() | atom(),
        "instanceRole" => String.t() | atom(),
        "instanceTypes" => list(String.t() | atom()),
        "launchTemplate" => launch_template_specification(),
        "maxvCpus" => integer(),
        "minvCpus" => integer(),
        "placementGroup" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "subnets" => list(String.t() | atom()),
        "tags" => map(),
        "type" => list(any()),
        "updateToLatestImageVersion" => boolean()
      }

  """
  @type compute_resource_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_container_security_context() :: %{
        "allowPrivilegeEscalation" => boolean(),
        "privileged" => boolean(),
        "readOnlyRootFilesystem" => boolean(),
        "runAsGroup" => float(),
        "runAsNonRoot" => boolean(),
        "runAsUser" => float()
      }

  """
  @type eks_container_security_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_service_environments_response() :: %{
        "nextToken" => String.t() | atom(),
        "serviceEnvironments" => list(service_environment_detail())
      }

  """
  @type describe_service_environments_response() :: %{(String.t() | atom()) => any()}

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

      submit_job_response() :: %{
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom()
      }

  """
  @type submit_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_overrides() :: %{
        "command" => list(String.t() | atom()),
        "environment" => list(key_value_pair()),
        "instanceType" => String.t() | atom(),
        "memory" => integer(),
        "resourceRequirements" => list(resource_requirement()),
        "vcpus" => integer()
      }

  """
  @type container_overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      front_of_queue_detail() :: %{
        "jobs" => list(front_of_queue_job_summary()),
        "lastUpdatedAt" => float()
      }

  """
  @type front_of_queue_detail() :: %{(String.t() | atom()) => any()}

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

      container_detail() :: %{
        "command" => list(String.t() | atom()),
        "containerInstanceArn" => String.t() | atom(),
        "enableExecuteCommand" => boolean(),
        "environment" => list(key_value_pair()),
        "ephemeralStorage" => ephemeral_storage(),
        "executionRoleArn" => String.t() | atom(),
        "exitCode" => integer(),
        "fargatePlatformConfiguration" => fargate_platform_configuration(),
        "image" => String.t() | atom(),
        "instanceType" => String.t() | atom(),
        "jobRoleArn" => String.t() | atom(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "logStreamName" => String.t() | atom(),
        "memory" => integer(),
        "mountPoints" => list(mount_point()),
        "networkConfiguration" => network_configuration(),
        "networkInterfaces" => list(network_interface()),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "reason" => String.t() | atom(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()),
        "runtimePlatform" => runtime_platform(),
        "secrets" => list(secret()),
        "taskArn" => String.t() | atom(),
        "ulimits" => list(ulimit()),
        "user" => String.t() | atom(),
        "vcpus" => integer(),
        "volumes" => list(volume())
      }

  """
  @type container_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_configuration() :: %{
        "assignPublicIp" => list(any())
      }

  """
  @type network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_consumable_resource_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("operation") => String.t() | atom(),
        optional("quantity") => float(),
        required("consumableResource") => String.t() | atom()
      }

  """
  @type update_consumable_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scheduling_policy_listing_detail() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type scheduling_policy_listing_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_job_attempt_detail() :: %{
        "serviceResourceId" => service_resource_id(),
        "startedAt" => float(),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => float()
      }

  """
  @type service_job_attempt_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_consumable_resource_response() :: %{}

  """
  @type delete_consumable_resource_response() :: %{}

  @typedoc """

  ## Example:

      describe_compute_environments_request() :: %{
        optional("computeEnvironments") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_compute_environments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      consumable_resource_requirement() :: %{
        "consumableResource" => String.t() | atom(),
        "quantity" => float()
      }

  """
  @type consumable_resource_requirement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      node_overrides() :: %{
        "nodePropertyOverrides" => list(node_property_override()),
        "numNodes" => integer()
      }

  """
  @type node_overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      volume() :: %{
        "efsVolumeConfiguration" => e_f_s_volume_configuration(),
        "host" => host(),
        "name" => String.t() | atom()
      }

  """
  @type volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_consumable_resource_response() :: %{
        "availableQuantity" => float(),
        "consumableResourceArn" => String.t() | atom(),
        "consumableResourceName" => String.t() | atom(),
        "createdAt" => float(),
        "inUseQuantity" => float(),
        "resourceType" => String.t() | atom(),
        "tags" => map(),
        "totalQuantity" => float()
      }

  """
  @type describe_consumable_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_dependency() :: %{
        "jobId" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type job_dependency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      array_properties() :: %{
        "size" => integer()
      }

  """
  @type array_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      node_range_property() :: %{
        "consumableResourceProperties" => consumable_resource_properties(),
        "container" => container_properties(),
        "ecsProperties" => ecs_properties(),
        "eksProperties" => eks_properties(),
        "instanceTypes" => list(String.t() | atom()),
        "targetNodes" => String.t() | atom()
      }

  """
  @type node_range_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_limit() :: %{
        "capacityUnit" => String.t() | atom(),
        "maxCapacity" => integer()
      }

  """
  @type capacity_limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_attempt_container_detail() :: %{
        "containerID" => String.t() | atom(),
        "exitCode" => integer(),
        "name" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type eks_attempt_container_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_persistent_volume_claim() :: %{
        "claimName" => String.t() | atom(),
        "readOnly" => boolean()
      }

  """
  @type eks_persistent_volume_claim() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_service_job_request() :: %{
        required("jobId") => String.t() | atom()
      }

  """
  @type describe_service_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_jobs_response() :: %{
        "jobs" => list(job_detail())
      }

  """
  @type describe_jobs_response() :: %{(String.t() | atom()) => any()}

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

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      launch_template_specification_override() :: %{
        "launchTemplateId" => String.t() | atom(),
        "launchTemplateName" => String.t() | atom(),
        "targetInstanceTypes" => list(String.t() | atom()),
        "userdataType" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type launch_template_specification_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_platform() :: %{
        "cpuArchitecture" => String.t() | atom(),
        "operatingSystemFamily" => String.t() | atom()
      }

  """
  @type runtime_platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_job_queue_request() :: %{
        required("jobQueue") => String.t() | atom()
      }

  """
  @type delete_job_queue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_job_response() :: %{}

  """
  @type terminate_job_response() :: %{}

  @typedoc """

  ## Example:

      eks_container_resource_requirements() :: %{
        "limits" => map(),
        "requests" => map()
      }

  """
  @type eks_container_resource_requirements() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_service_job_response() :: %{
        "attempts" => list(service_job_attempt_detail()),
        "createdAt" => float(),
        "isTerminated" => boolean(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "jobQueue" => String.t() | atom(),
        "latestAttempt" => latest_service_job_attempt(),
        "retryStrategy" => service_job_retry_strategy(),
        "schedulingPriority" => integer(),
        "serviceJobType" => list(any()),
        "serviceRequestPayload" => String.t() | atom(),
        "shareIdentifier" => String.t() | atom(),
        "startedAt" => float(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => float(),
        "tags" => map(),
        "timeoutConfig" => service_job_timeout()
      }

  """
  @type describe_service_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      linux_parameters() :: %{
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

      update_compute_environment_response() :: %{
        "computeEnvironmentArn" => String.t() | atom(),
        "computeEnvironmentName" => String.t() | atom()
      }

  """
  @type update_compute_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      node_details() :: %{
        "isMainNode" => boolean(),
        "nodeIndex" => integer()
      }

  """
  @type node_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_container_volume_mount() :: %{
        "mountPath" => String.t() | atom(),
        "name" => String.t() | atom(),
        "readOnly" => boolean(),
        "subPath" => String.t() | atom()
      }

  """
  @type eks_container_volume_mount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_consumable_resource_response() :: %{
        "consumableResourceArn" => String.t() | atom(),
        "consumableResourceName" => String.t() | atom()
      }

  """
  @type create_consumable_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_by_consumable_resource_response() :: %{
        "jobs" => list(list_jobs_by_consumable_resource_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_jobs_by_consumable_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_pod_properties() :: %{
        "containers" => list(eks_container()),
        "dnsPolicy" => String.t() | atom(),
        "hostNetwork" => boolean(),
        "imagePullSecrets" => list(image_pull_secret()),
        "initContainers" => list(eks_container()),
        "metadata" => eks_metadata(),
        "serviceAccountName" => String.t() | atom(),
        "shareProcessNamespace" => boolean(),
        "volumes" => list(eks_volume())
      }

  """
  @type eks_pod_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_job_queue_response() :: %{
        "jobQueueArn" => String.t() | atom(),
        "jobQueueName" => String.t() | atom()
      }

  """
  @type update_job_queue_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_strategy() :: %{
        "attempts" => integer(),
        "evaluateOnExit" => list(evaluate_on_exit())
      }

  """
  @type retry_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_jobs_request() :: %{
        required("jobs") => list(String.t() | atom())
      }

  """
  @type describe_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      launch_template_specification() :: %{
        "launchTemplateId" => String.t() | atom(),
        "launchTemplateName" => String.t() | atom(),
        "overrides" => list(launch_template_specification_override()),
        "userdataType" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type launch_template_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      node_properties_summary() :: %{
        "isMainNode" => boolean(),
        "nodeIndex" => integer(),
        "numNodes" => integer()
      }

  """
  @type node_properties_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_consumable_resources_request() :: %{
        optional("filters") => list(key_values_pair()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_consumable_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_environment_detail() :: %{
        "computeEnvironmentArn" => String.t() | atom(),
        "computeEnvironmentName" => String.t() | atom(),
        "computeResources" => compute_resource(),
        "containerOrchestrationType" => list(any()),
        "context" => String.t() | atom(),
        "ecsClusterArn" => String.t() | atom(),
        "eksConfiguration" => eks_configuration(),
        "serviceRole" => String.t() | atom(),
        "state" => list(any()),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "tags" => map(),
        "type" => list(any()),
        "unmanagedvCpus" => integer(),
        "updatePolicy" => update_policy(),
        "uuid" => String.t() | atom()
      }

  """
  @type compute_environment_detail() :: %{(String.t() | atom()) => any()}

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

      eks_properties_detail() :: %{
        "podProperties" => eks_pod_properties_detail()
      }

  """
  @type eks_properties_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_queues_request() :: %{
        optional("jobQueues") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_job_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_container() :: %{
        "args" => list(String.t() | atom()),
        "command" => list(String.t() | atom()),
        "env" => list(eks_container_environment_variable()),
        "image" => String.t() | atom(),
        "imagePullPolicy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resources" => eks_container_resource_requirements(),
        "securityContext" => eks_container_security_context(),
        "volumeMounts" => list(eks_container_volume_mount())
      }

  """
  @type eks_container() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_detail() :: %{
        "arrayProperties" => array_properties_detail(),
        "attempts" => list(attempt_detail()),
        "consumableResourceProperties" => consumable_resource_properties(),
        "container" => container_detail(),
        "createdAt" => float(),
        "dependsOn" => list(job_dependency()),
        "ecsProperties" => ecs_properties_detail(),
        "eksAttempts" => list(eks_attempt_detail()),
        "eksProperties" => eks_properties_detail(),
        "isCancelled" => boolean(),
        "isTerminated" => boolean(),
        "jobArn" => String.t() | atom(),
        "jobDefinition" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "jobQueue" => String.t() | atom(),
        "nodeDetails" => node_details(),
        "nodeProperties" => node_properties(),
        "parameters" => map(),
        "platformCapabilities" => list(list(any())()),
        "propagateTags" => boolean(),
        "retryStrategy" => retry_strategy(),
        "schedulingPriority" => integer(),
        "shareIdentifier" => String.t() | atom(),
        "startedAt" => float(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => float(),
        "tags" => map(),
        "timeout" => job_timeout()
      }

  """
  @type job_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      array_properties_detail() :: %{
        "index" => integer(),
        "size" => integer(),
        "statusSummary" => map(),
        "statusSummaryLastUpdatedAt" => float()
      }

  """
  @type array_properties_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_scheduling_policies_request() :: %{
        required("arns") => list(String.t() | atom())
      }

  """
  @type describe_scheduling_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      array_properties_summary() :: %{
        "index" => integer(),
        "size" => integer(),
        "statusSummary" => map(),
        "statusSummaryLastUpdatedAt" => float()
      }

  """
  @type array_properties_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecs_properties_detail() :: %{
        "taskProperties" => list(ecs_task_details())
      }

  """
  @type ecs_properties_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_job_summary() :: %{
        "createdAt" => float(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "latestAttempt" => latest_service_job_attempt(),
        "serviceJobType" => list(any()),
        "shareIdentifier" => String.t() | atom(),
        "startedAt" => float(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "stoppedAt" => float()
      }

  """
  @type service_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      consumable_resource_summary() :: %{
        "consumableResourceArn" => String.t() | atom(),
        "consumableResourceName" => String.t() | atom(),
        "inUseQuantity" => float(),
        "resourceType" => String.t() | atom(),
        "totalQuantity" => float()
      }

  """
  @type consumable_resource_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_queue_request() :: %{
        optional("computeEnvironmentOrder") => list(compute_environment_order()),
        optional("jobQueueType") => list(any()),
        optional("jobStateTimeLimitActions") => list(job_state_time_limit_action()),
        optional("schedulingPolicyArn") => String.t() | atom(),
        optional("serviceEnvironmentOrder") => list(service_environment_order()),
        optional("state") => list(any()),
        optional("tags") => map(),
        required("jobQueueName") => String.t() | atom(),
        required("priority") => integer()
      }

  """
  @type create_job_queue_request() :: %{(String.t() | atom()) => any()}

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

      describe_consumable_resource_request() :: %{
        required("consumableResource") => String.t() | atom()
      }

  """
  @type describe_consumable_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_response() :: %{}

  """
  @type cancel_job_response() :: %{}

  @typedoc """

  ## Example:

      update_scheduling_policy_response() :: %{}

  """
  @type update_scheduling_policy_response() :: %{}

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

      job_state_time_limit_action() :: %{
        "action" => list(any()),
        "maxTimeSeconds" => integer(),
        "reason" => String.t() | atom(),
        "state" => list(any())
      }

  """
  @type job_state_time_limit_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_resource() :: %{
        "allocationStrategy" => list(any()),
        "bidPercentage" => integer(),
        "desiredvCpus" => integer(),
        "ec2Configuration" => list(ec2_configuration()),
        "ec2KeyPair" => String.t() | atom(),
        "imageId" => String.t() | atom(),
        "instanceRole" => String.t() | atom(),
        "instanceTypes" => list(String.t() | atom()),
        "launchTemplate" => launch_template_specification(),
        "maxvCpus" => integer(),
        "minvCpus" => integer(),
        "placementGroup" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "spotIamFleetRole" => String.t() | atom(),
        "subnets" => list(String.t() | atom()),
        "tags" => map(),
        "type" => list(any())
      }

  """
  @type compute_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      node_properties() :: %{
        "mainNode" => integer(),
        "nodeRangeProperties" => list(node_range_property()),
        "numNodes" => integer()
      }

  """
  @type node_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_empty_dir() :: %{
        "medium" => String.t() | atom(),
        "sizeLimit" => String.t() | atom()
      }

  """
  @type eks_empty_dir() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_container_dependency() :: %{
        "condition" => String.t() | atom(),
        "containerName" => String.t() | atom()
      }

  """
  @type task_container_dependency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_pod_properties_override() :: %{
        "containers" => list(eks_container_override()),
        "initContainers" => list(eks_container_override()),
        "metadata" => eks_metadata()
      }

  """
  @type eks_pod_properties_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      consumable_resource_properties() :: %{
        "consumableResourceList" => list(consumable_resource_requirement())
      }

  """
  @type consumable_resource_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_credentials() :: %{
        "credentialsParameter" => String.t() | atom()
      }

  """
  @type repository_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_pod_properties_detail() :: %{
        "containers" => list(eks_container_detail()),
        "dnsPolicy" => String.t() | atom(),
        "hostNetwork" => boolean(),
        "imagePullSecrets" => list(image_pull_secret()),
        "initContainers" => list(eks_container_detail()),
        "metadata" => eks_metadata(),
        "nodeName" => String.t() | atom(),
        "podName" => String.t() | atom(),
        "serviceAccountName" => String.t() | atom(),
        "shareProcessNamespace" => boolean(),
        "volumes" => list(eks_volume())
      }

  """
  @type eks_pod_properties_detail() :: %{(String.t() | atom()) => any()}

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

      delete_compute_environment_response() :: %{}

  """
  @type delete_compute_environment_response() :: %{}

  @typedoc """

  ## Example:

      task_container_properties() :: %{
        "command" => list(String.t() | atom()),
        "dependsOn" => list(task_container_dependency()),
        "environment" => list(key_value_pair()),
        "essential" => boolean(),
        "firelensConfiguration" => firelens_configuration(),
        "image" => String.t() | atom(),
        "linuxParameters" => linux_parameters(),
        "logConfiguration" => log_configuration(),
        "mountPoints" => list(mount_point()),
        "name" => String.t() | atom(),
        "privileged" => boolean(),
        "readonlyRootFilesystem" => boolean(),
        "repositoryCredentials" => repository_credentials(),
        "resourceRequirements" => list(resource_requirement()),
        "secrets" => list(secret()),
        "ulimits" => list(ulimit()),
        "user" => String.t() | atom()
      }

  """
  @type task_container_properties() :: %{(String.t() | atom()) => any()}

  @type cancel_job_errors() :: server_exception() | client_exception()

  @type create_compute_environment_errors() :: server_exception() | client_exception()

  @type create_consumable_resource_errors() :: server_exception() | client_exception()

  @type create_job_queue_errors() :: server_exception() | client_exception()

  @type create_scheduling_policy_errors() :: server_exception() | client_exception()

  @type create_service_environment_errors() :: server_exception() | client_exception()

  @type delete_compute_environment_errors() :: server_exception() | client_exception()

  @type delete_consumable_resource_errors() :: server_exception() | client_exception()

  @type delete_job_queue_errors() :: server_exception() | client_exception()

  @type delete_scheduling_policy_errors() :: server_exception() | client_exception()

  @type delete_service_environment_errors() :: server_exception() | client_exception()

  @type deregister_job_definition_errors() :: server_exception() | client_exception()

  @type describe_compute_environments_errors() :: server_exception() | client_exception()

  @type describe_consumable_resource_errors() :: server_exception() | client_exception()

  @type describe_job_definitions_errors() :: server_exception() | client_exception()

  @type describe_job_queues_errors() :: server_exception() | client_exception()

  @type describe_jobs_errors() :: server_exception() | client_exception()

  @type describe_scheduling_policies_errors() :: server_exception() | client_exception()

  @type describe_service_environments_errors() :: server_exception() | client_exception()

  @type describe_service_job_errors() :: server_exception() | client_exception()

  @type get_job_queue_snapshot_errors() :: server_exception() | client_exception()

  @type list_consumable_resources_errors() :: server_exception() | client_exception()

  @type list_jobs_errors() :: server_exception() | client_exception()

  @type list_jobs_by_consumable_resource_errors() :: server_exception() | client_exception()

  @type list_scheduling_policies_errors() :: server_exception() | client_exception()

  @type list_service_jobs_errors() :: server_exception() | client_exception()

  @type list_tags_for_resource_errors() :: server_exception() | client_exception()

  @type register_job_definition_errors() :: server_exception() | client_exception()

  @type submit_job_errors() :: server_exception() | client_exception()

  @type submit_service_job_errors() :: server_exception() | client_exception()

  @type tag_resource_errors() :: server_exception() | client_exception()

  @type terminate_job_errors() :: server_exception() | client_exception()

  @type terminate_service_job_errors() :: server_exception() | client_exception()

  @type untag_resource_errors() :: server_exception() | client_exception()

  @type update_compute_environment_errors() :: server_exception() | client_exception()

  @type update_consumable_resource_errors() :: server_exception() | client_exception()

  @type update_job_queue_errors() :: server_exception() | client_exception()

  @type update_scheduling_policy_errors() :: server_exception() | client_exception()

  @type update_service_environment_errors() :: server_exception() | client_exception()

  def metadata do
    %{
      api_version: "2016-08-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "batch",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Batch",
      signature_version: "v4",
      signing_name: "batch",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a job in an Batch job queue.

  Jobs that are in a `SUBMITTED`, `PENDING`, or `RUNNABLE` state are cancelled and
  the job status is updated to `FAILED`.

  A `PENDING` job is canceled after all dependency jobs are completed.
  Therefore, it may take longer than expected to cancel a job in `PENDING`
  status.

  When you try to cancel an array parent job in `PENDING`, Batch attempts to
  cancel all child jobs. The array parent job is canceled when all child jobs are
  completed.

  Jobs that progressed to the `STARTING` or
  `RUNNING` state aren't canceled. However, the API operation still succeeds, even
  if no job is canceled. These jobs must be terminated with the `TerminateJob`
  operation.
  """
  @spec cancel_job(map(), cancel_job_request(), list()) ::
          {:ok, cancel_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_job_errors()}
  def cancel_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/canceljob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Batch compute environment.

  You can create `MANAGED` or
  `UNMANAGED` compute environments. `MANAGED` compute environments can
  use Amazon EC2 or Fargate resources. `UNMANAGED` compute environments can only
  use
  EC2 resources.

  In a managed compute environment, Batch manages the capacity and instance types
  of the
  compute resources within the environment. This is based on the compute resource
  specification
  that you define or the [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  that you
  specify when you create the compute environment. Either, you can choose to use
  EC2 On-Demand
  Instances and EC2 Spot Instances. Or, you can use Fargate and Fargate Spot
  capacity in
  your managed compute environment. You can optionally set a maximum price so that
  Spot
  Instances only launch when the Spot Instance price is less than a specified
  percentage of the
  On-Demand price.

  In an unmanaged compute environment, you can manage your own EC2 compute
  resources and
  have flexibility with how you configure your compute resources. For example, you
  can use
  custom AMIs. However, you must verify that each of your AMIs meet the Amazon ECS
  container instance
  AMI specification. For more information, see [container instance AMIs](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html)
  in the
  *Amazon Elastic Container Service Developer Guide*. After you created your
  unmanaged compute environment,
  you can use the `DescribeComputeEnvironments` operation to find the Amazon ECS
  cluster that's associated with it. Then, launch your container instances into
  that Amazon ECS
  cluster. For more information, see [Launching an Amazon ECS container instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html)
  in the *Amazon Elastic Container Service Developer Guide*.

  Batch doesn't automatically upgrade the AMIs in a compute environment after it's
  created. For more information on how to update a compute environment's AMI, see
  [Updating compute environments](https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html)
  in the *Batch User Guide*.
  """
  @spec create_compute_environment(map(), create_compute_environment_request(), list()) ::
          {:ok, create_compute_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_compute_environment_errors()}
  def create_compute_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/createcomputeenvironment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Batch consumable resource.
  """
  @spec create_consumable_resource(map(), create_consumable_resource_request(), list()) ::
          {:ok, create_consumable_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_consumable_resource_errors()}
  def create_consumable_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/createconsumableresource"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Batch job queue.

  When you create a job queue, you associate one or more
  compute environments to the queue and assign an order of preference for the
  compute
  environments.

  You also set a priority to the job queue that determines the order that the
  Batch
  scheduler places jobs onto its associated compute environments. For example, if
  a compute
  environment is associated with more than one job queue, the job queue with a
  higher priority
  is given preference for scheduling jobs to that compute environment.
  """
  @spec create_job_queue(map(), create_job_queue_request(), list()) ::
          {:ok, create_job_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_queue_errors()}
  def create_job_queue(%Client{} = client, input, options \\ []) do
    url_path = "/v1/createjobqueue"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an Batch scheduling policy.
  """
  @spec create_scheduling_policy(map(), create_scheduling_policy_request(), list()) ::
          {:ok, create_scheduling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scheduling_policy_errors()}
  def create_scheduling_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/createschedulingpolicy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a service environment for running service jobs.

  Service environments define capacity limits for specific service types such as
  SageMaker Training jobs.
  """
  @spec create_service_environment(map(), create_service_environment_request(), list()) ::
          {:ok, create_service_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_service_environment_errors()}
  def create_service_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/createserviceenvironment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an Batch compute environment.

  Before you can delete a compute environment, you must set its state to
  `DISABLED` with the `UpdateComputeEnvironment` API operation and
  disassociate it from any job queues with the `UpdateJobQueue` API operation.
  Compute environments that use Fargate resources must terminate all active jobs
  on that
  compute environment before deleting the compute environment. If this isn't done,
  the compute
  environment enters an invalid state.
  """
  @spec delete_compute_environment(map(), delete_compute_environment_request(), list()) ::
          {:ok, delete_compute_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_compute_environment_errors()}
  def delete_compute_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deletecomputeenvironment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified consumable resource.
  """
  @spec delete_consumable_resource(map(), delete_consumable_resource_request(), list()) ::
          {:ok, delete_consumable_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_consumable_resource_errors()}
  def delete_consumable_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deleteconsumableresource"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified job queue.

  You must first disable submissions for a queue with the
  `UpdateJobQueue` operation. All jobs in the queue are eventually terminated
  when you delete a job queue. The jobs are terminated at a rate of about 16 jobs
  each
  second.

  It's not necessary to disassociate compute environments from a queue before
  submitting a
  `DeleteJobQueue` request.
  """
  @spec delete_job_queue(map(), delete_job_queue_request(), list()) ::
          {:ok, delete_job_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_queue_errors()}
  def delete_job_queue(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deletejobqueue"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified scheduling policy.

  You can't delete a scheduling policy that's used in any job queues.
  """
  @spec delete_scheduling_policy(map(), delete_scheduling_policy_request(), list()) ::
          {:ok, delete_scheduling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scheduling_policy_errors()}
  def delete_scheduling_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deleteschedulingpolicy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a Service environment.

  Before you can delete a service environment, you must first set its state to
  `DISABLED` with the `UpdateServiceEnvironment` API operation and disassociate it
  from any job queues with the `UpdateJobQueue` API operation.
  """
  @spec delete_service_environment(map(), delete_service_environment_request(), list()) ::
          {:ok, delete_service_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_environment_errors()}
  def delete_service_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deleteserviceenvironment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deregisters an Batch job definition.

  Job definitions are permanently deleted after 180
  days.
  """
  @spec deregister_job_definition(map(), deregister_job_definition_request(), list()) ::
          {:ok, deregister_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_job_definition_errors()}
  def deregister_job_definition(%Client{} = client, input, options \\ []) do
    url_path = "/v1/deregisterjobdefinition"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes one or more of your compute environments.

  If you're using an unmanaged compute environment, you can use the
  `DescribeComputeEnvironment` operation to determine the
  `ecsClusterArn` that you launch your Amazon ECS container instances into.
  """
  @spec describe_compute_environments(map(), describe_compute_environments_request(), list()) ::
          {:ok, describe_compute_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_compute_environments_errors()}
  def describe_compute_environments(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describecomputeenvironments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a description of the specified consumable resource.
  """
  @spec describe_consumable_resource(map(), describe_consumable_resource_request(), list()) ::
          {:ok, describe_consumable_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_consumable_resource_errors()}
  def describe_consumable_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describeconsumableresource"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes a list of job definitions.

  You can specify a `status` (such as
  `ACTIVE`) to only return job definitions that match that status.
  """
  @spec describe_job_definitions(map(), describe_job_definitions_request(), list()) ::
          {:ok, describe_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_definitions_errors()}
  def describe_job_definitions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describejobdefinitions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes one or more of your job queues.
  """
  @spec describe_job_queues(map(), describe_job_queues_request(), list()) ::
          {:ok, describe_job_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_queues_errors()}
  def describe_job_queues(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describejobqueues"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes a list of Batch jobs.
  """
  @spec describe_jobs(map(), describe_jobs_request(), list()) ::
          {:ok, describe_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_jobs_errors()}
  def describe_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describejobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes one or more of your scheduling policies.
  """
  @spec describe_scheduling_policies(map(), describe_scheduling_policies_request(), list()) ::
          {:ok, describe_scheduling_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scheduling_policies_errors()}
  def describe_scheduling_policies(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describeschedulingpolicies"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes one or more of your service environments.
  """
  @spec describe_service_environments(map(), describe_service_environments_request(), list()) ::
          {:ok, describe_service_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_environments_errors()}
  def describe_service_environments(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describeserviceenvironments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  The details of a service job.
  """
  @spec describe_service_job(map(), describe_service_job_request(), list()) ::
          {:ok, describe_service_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_job_errors()}
  def describe_service_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/describeservicejob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides a list of the first 100 `RUNNABLE` jobs associated to a single job
  queue.
  """
  @spec get_job_queue_snapshot(map(), get_job_queue_snapshot_request(), list()) ::
          {:ok, get_job_queue_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_queue_snapshot_errors()}
  def get_job_queue_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/v1/getjobqueuesnapshot"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of Batch consumable resources.
  """
  @spec list_consumable_resources(map(), list_consumable_resources_request(), list()) ::
          {:ok, list_consumable_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_consumable_resources_errors()}
  def list_consumable_resources(%Client{} = client, input, options \\ []) do
    url_path = "/v1/listconsumableresources"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of Batch jobs.

  You must specify only one of the following items:

    *
  A job queue ID to return a list of jobs in that job queue

    *
  A multi-node parallel job ID to return a list of nodes for that job

    *
  An array job ID to return a list of the children for that job

  You can filter the results by job status with the `jobStatus` parameter. If you
  don't specify a status, only `RUNNING` jobs are returned.
  """
  @spec list_jobs(map(), list_jobs_request(), list()) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/v1/listjobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of Batch jobs that require a specific consumable resource.
  """
  @spec list_jobs_by_consumable_resource(
          map(),
          list_jobs_by_consumable_resource_request(),
          list()
        ) ::
          {:ok, list_jobs_by_consumable_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_by_consumable_resource_errors()}
  def list_jobs_by_consumable_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/listjobsbyconsumableresource"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of Batch scheduling policies.
  """
  @spec list_scheduling_policies(map(), list_scheduling_policies_request(), list()) ::
          {:ok, list_scheduling_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scheduling_policies_errors()}
  def list_scheduling_policies(%Client{} = client, input, options \\ []) do
    url_path = "/v1/listschedulingpolicies"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of service jobs for a specified job queue.
  """
  @spec list_service_jobs(map(), list_service_jobs_request(), list()) ::
          {:ok, list_service_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_service_jobs_errors()}
  def list_service_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/v1/listservicejobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the tags for an Batch resource.

  Batch resources that support tags are compute environments, jobs, job
  definitions, job queues,
  and scheduling policies. ARNs for child jobs of array and multi-node parallel
  (MNP) jobs aren't supported.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Registers an Batch job definition.
  """
  @spec register_job_definition(map(), register_job_definition_request(), list()) ::
          {:ok, register_job_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_job_definition_errors()}
  def register_job_definition(%Client{} = client, input, options \\ []) do
    url_path = "/v1/registerjobdefinition"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Submits an Batch job from a job definition.

  Parameters that are specified during `SubmitJob` override parameters defined in
  the job definition. vCPU and memory
  requirements that are specified in the `resourceRequirements` objects in the job
  definition are the exception. They can't be overridden this way using the
  `memory`
  and `vcpus` parameters. Rather, you must specify updates to job definition
  parameters in a `resourceRequirements` object that's included in the
  `containerOverrides` parameter.

  Job queues with a scheduling policy are limited to 500 active share identifiers
  at
  a time.

  Jobs that run on Fargate resources can't be guaranteed to run for more than 14
  days.
  This is because, after 14 days, Fargate resources might become unavailable and
  job might be
  terminated.
  """
  @spec submit_job(map(), submit_job_request(), list()) ::
          {:ok, submit_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, submit_job_errors()}
  def submit_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/submitjob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Submits a service job to a specified job queue to run on SageMaker AI.

  A service job is a unit of work that you submit to Batch for execution on
  SageMaker AI.
  """
  @spec submit_service_job(map(), submit_service_job_request(), list()) ::
          {:ok, submit_service_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, submit_service_job_errors()}
  def submit_service_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/submitservicejob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource aren't specified in the request parameters, they
  aren't
  changed. When a resource is deleted, the tags that are associated with that
  resource are
  deleted as well. Batch resources that support tags are compute environments,
  jobs, job definitions, job queues,
  and scheduling policies. ARNs for child jobs of array and multi-node parallel
  (MNP) jobs aren't supported.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Terminates a job in a job queue.

  Jobs that are in the `STARTING` or
  `RUNNING` state are terminated, which causes them to transition to
  `FAILED`. Jobs that have not progressed to the `STARTING` state are
  cancelled.
  """
  @spec terminate_job(map(), terminate_job_request(), list()) ::
          {:ok, terminate_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_job_errors()}
  def terminate_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/terminatejob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Terminates a service job in a job queue.
  """
  @spec terminate_service_job(map(), terminate_service_job_request(), list()) ::
          {:ok, terminate_service_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_service_job_errors()}
  def terminate_service_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/terminateservicejob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes specified tags from an Batch resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an Batch compute environment.
  """
  @spec update_compute_environment(map(), update_compute_environment_request(), list()) ::
          {:ok, update_compute_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_compute_environment_errors()}
  def update_compute_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/updatecomputeenvironment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a consumable resource.
  """
  @spec update_consumable_resource(map(), update_consumable_resource_request(), list()) ::
          {:ok, update_consumable_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_consumable_resource_errors()}
  def update_consumable_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/updateconsumableresource"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a job queue.
  """
  @spec update_job_queue(map(), update_job_queue_request(), list()) ::
          {:ok, update_job_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_job_queue_errors()}
  def update_job_queue(%Client{} = client, input, options \\ []) do
    url_path = "/v1/updatejobqueue"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a scheduling policy.
  """
  @spec update_scheduling_policy(map(), update_scheduling_policy_request(), list()) ::
          {:ok, update_scheduling_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scheduling_policy_errors()}
  def update_scheduling_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/updateschedulingpolicy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a service environment.

  You can update the state of a service environment from `ENABLED` to `DISABLED`
  to prevent new service jobs from being placed in the service environment.
  """
  @spec update_service_environment(map(), update_service_environment_request(), list()) ::
          {:ok, update_service_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_environment_errors()}
  def update_service_environment(%Client{} = client, input, options \\ []) do
    url_path = "/v1/updateserviceenvironment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
