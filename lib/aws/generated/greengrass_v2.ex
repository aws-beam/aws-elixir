# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GreengrassV2 do
  @moduledoc """
  IoT Greengrass brings local compute, messaging, data management, sync, and ML
  inference capabilities
  to edge devices.

  This enables devices to collect and analyze data closer to the source of
  information, react autonomously to local events, and communicate securely with
  each other on
  local networks. Local devices can also communicate securely with Amazon Web
  Services IoT Core and export IoT data
  to the Amazon Web Services Cloud. IoT Greengrass developers can use Lambda
  functions and components to create and
  deploy applications to fleets of edge devices for local operation.

  IoT Greengrass Version 2 provides a new major version of the IoT Greengrass Core
  software, new APIs, and a new console.
  Use this API reference to learn how to use the IoT Greengrass V2 API operations
  to manage components,
  manage deployments, and core devices.

  For more information, see [What is IoT Greengrass?](https://docs.aws.amazon.com/greengrass/v2/developerguide/what-is-iot-greengrass.html)
  in the
  *IoT Greengrass V2 Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      lambda_function_recipe_source() :: %{
        "componentDependencies" => map(),
        "componentLambdaParameters" => lambda_execution_parameters(),
        "componentName" => String.t() | Atom.t(),
        "componentPlatforms" => list(component_platform()),
        "componentVersion" => String.t() | Atom.t(),
        "lambdaArn" => String.t() | Atom.t()
      }

  """
  @type lambda_function_recipe_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deployment_component_update_policy() :: %{
        "action" => list(any()),
        "timeoutInSeconds" => integer()
      }

  """
  @type deployment_component_update_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_service_role_from_account_response() :: %{
        "disassociatedAt" => String.t() | Atom.t()
      }

  """
  @type disassociate_service_role_from_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_component_version_response() :: %{
        "arn" => String.t() | Atom.t(),
        "componentName" => String.t() | Atom.t(),
        "componentVersion" => String.t() | Atom.t(),
        "creationTimestamp" => non_neg_integer(),
        "status" => cloud_component_status()
      }

  """
  @type create_component_version_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_deployments_request() :: %{
        optional("historyFilter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("parentTargetArn") => String.t() | Atom.t(),
        optional("targetArn") => String.t() | Atom.t()
      }

  """
  @type list_deployments_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_connectivity_info_response() :: %{
        "message" => String.t() | Atom.t(),
        "version" => String.t() | Atom.t()
      }

  """
  @type update_connectivity_info_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_component_versions_response() :: %{
        "componentVersions" => list(component_version_list_item()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_component_versions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_component_version_artifact_request() :: %{
        optional("iotEndpointType") => list(any()),
        optional("s3EndpointType") => list(any())
      }

  """
  @type get_component_version_artifact_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_client_device_from_core_device_entry() :: %{
        "thingName" => String.t() | Atom.t()
      }

  """
  @type disassociate_client_device_from_core_device_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deployment() :: %{
        "creationTimestamp" => non_neg_integer(),
        "deploymentId" => String.t() | Atom.t(),
        "deploymentName" => String.t() | Atom.t(),
        "deploymentStatus" => list(any()),
        "isLatestForTarget" => boolean(),
        "parentTargetArn" => String.t() | Atom.t(),
        "revisionId" => String.t() | Atom.t(),
        "targetArn" => String.t() | Atom.t()
      }

  """
  @type deployment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_dependency_requirement() :: %{
        "dependencyType" => list(any()),
        "versionRequirement" => String.t() | Atom.t()
      }

  """
  @type component_dependency_requirement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      lambda_execution_parameters() :: %{
        "environmentVariables" => map(),
        "eventSources" => list(lambda_event_source()),
        "execArgs" => list(String.t() | Atom.t()),
        "inputPayloadEncodingType" => list(any()),
        "linuxProcessParams" => lambda_linux_process_params(),
        "maxIdleTimeInSeconds" => integer(),
        "maxInstancesCount" => integer(),
        "maxQueueSize" => integer(),
        "pinned" => boolean(),
        "statusTimeoutInSeconds" => integer(),
        "timeoutInSeconds" => integer()
      }

  """
  @type lambda_execution_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_deployments_response() :: %{
        "deployments" => list(deployment()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_deployments_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_core_devices_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("runtime") => String.t() | Atom.t(),
        optional("status") => list(any()),
        optional("thingGroupArn") => String.t() | Atom.t()
      }

  """
  @type list_core_devices_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      lambda_volume_mount() :: %{
        "addGroupOwner" => boolean(),
        "destinationPath" => String.t() | Atom.t(),
        "permission" => list(any()),
        "sourcePath" => String.t() | Atom.t()
      }

  """
  @type lambda_volume_mount() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("components") => map(),
        optional("deploymentName") => String.t() | Atom.t(),
        optional("deploymentPolicies") => deployment_policies(),
        optional("iotJobConfiguration") => deployment_io_t_job_configuration(),
        optional("parentTargetArn") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("targetArn") => String.t() | Atom.t()
      }

  """
  @type create_deployment_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_core_device_response() :: %{
        "architecture" => String.t() | Atom.t(),
        "coreDeviceThingName" => String.t() | Atom.t(),
        "coreVersion" => String.t() | Atom.t(),
        "lastStatusUpdateTimestamp" => non_neg_integer(),
        "platform" => String.t() | Atom.t(),
        "runtime" => String.t() | Atom.t(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type get_core_device_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_core_devices_response() :: %{
        "coreDevices" => list(core_device()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_core_devices_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_core_device_request() :: %{}

  """
  @type delete_core_device_request() :: %{}

  @typedoc """

  ## Example:

      delete_component_request() :: %{}

  """
  @type delete_component_request() :: %{}

  @typedoc """

  ## Example:

      lambda_event_source() :: %{
        "topic" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type lambda_event_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_component_response() :: %{
        "recipe" => binary(),
        "recipeOutputFormat" => list(any()),
        "tags" => map()
      }

  """
  @type get_component_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      system_resource_limits() :: %{
        "cpus" => float(),
        "memory" => float()
      }

  """
  @type system_resource_limits() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_installed_components_response() :: %{
        "installedComponents" => list(installed_component()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_installed_components_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      io_t_job_executions_rollout_config() :: %{
        "exponentialRate" => io_t_job_exponential_rollout_rate(),
        "maximumPerMinute" => integer()
      }

  """
  @type io_t_job_executions_rollout_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      core_device() :: %{
        "architecture" => String.t() | Atom.t(),
        "coreDeviceThingName" => String.t() | Atom.t(),
        "lastStatusUpdateTimestamp" => non_neg_integer(),
        "platform" => String.t() | Atom.t(),
        "runtime" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type core_device() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_response() :: %{
        "deploymentId" => String.t() | Atom.t(),
        "iotJobArn" => String.t() | Atom.t(),
        "iotJobId" => String.t() | Atom.t()
      }

  """
  @type create_deployment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      io_t_job_exponential_rollout_rate() :: %{
        "baseRatePerMinute" => integer(),
        "incrementFactor" => float(),
        "rateIncreaseCriteria" => io_t_job_rate_increase_criteria()
      }

  """
  @type io_t_job_exponential_rollout_rate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_service_role_for_account_request() :: %{}

  """
  @type get_service_role_for_account_request() :: %{}

  @typedoc """

  ## Example:

      associate_client_device_with_core_device_error_entry() :: %{
        "code" => String.t() | Atom.t(),
        "message" => String.t() | Atom.t(),
        "thingName" => String.t() | Atom.t()
      }

  """
  @type associate_client_device_with_core_device_error_entry() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_connectivity_info_request() :: %{
        required("connectivityInfo") => list(connectivity_info())
      }

  """
  @type update_connectivity_info_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_core_device_request() :: %{}

  """
  @type get_core_device_request() :: %{}

  @typedoc """

  ## Example:

      deployment_configuration_validation_policy() :: %{
        "timeoutInSeconds" => integer()
      }

  """
  @type deployment_configuration_validation_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_component_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_component_versions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      effective_deployment() :: %{
        "coreDeviceExecutionStatus" => list(any()),
        "creationTimestamp" => non_neg_integer(),
        "deploymentId" => String.t() | Atom.t(),
        "deploymentName" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "iotJobArn" => String.t() | Atom.t(),
        "iotJobId" => String.t() | Atom.t(),
        "modifiedTimestamp" => non_neg_integer(),
        "reason" => String.t() | Atom.t(),
        "statusDetails" => effective_deployment_status_details(),
        "targetArn" => String.t() | Atom.t()
      }

  """
  @type effective_deployment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      request_already_in_progress_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type request_already_in_progress_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cancel_deployment_request() :: %{}

  """
  @type cancel_deployment_request() :: %{}

  @typedoc """

  ## Example:

      connectivity_info() :: %{
        "hostAddress" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "metadata" => String.t() | Atom.t(),
        "portNumber" => integer()
      }

  """
  @type connectivity_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_connectivity_info_response() :: %{
        "connectivityInfo" => list(connectivity_info()),
        "message" => String.t() | Atom.t()
      }

  """
  @type get_connectivity_info_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      installed_component() :: %{
        "componentName" => String.t() | Atom.t(),
        "componentVersion" => String.t() | Atom.t(),
        "isRoot" => boolean(),
        "lastInstallationSource" => String.t() | Atom.t(),
        "lastReportedTimestamp" => non_neg_integer(),
        "lastStatusChangeTimestamp" => non_neg_integer(),
        "lifecycleState" => list(any()),
        "lifecycleStateDetails" => String.t() | Atom.t(),
        "lifecycleStatusCodes" => list(String.t() | Atom.t())
      }

  """
  @type installed_component() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_component_version_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("inlineRecipe") => binary(),
        optional("lambdaFunction") => lambda_function_recipe_source(),
        optional("tags") => map()
      }

  """
  @type create_component_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("scope") => list(any())
      }

  """
  @type list_components_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_disassociate_client_device_from_core_device_response() :: %{
        "errorEntries" => list(disassociate_client_device_from_core_device_error_entry())
      }

  """
  @type batch_disassociate_client_device_from_core_device_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | Atom.t(),
        "quotaCode" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t(),
        "serviceCode" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_latest_version() :: %{
        "arn" => String.t() | Atom.t(),
        "componentVersion" => String.t() | Atom.t(),
        "creationTimestamp" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "platforms" => list(component_platform()),
        "publisher" => String.t() | Atom.t()
      }

  """
  @type component_latest_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deployment_io_t_job_configuration() :: %{
        "abortConfig" => io_t_job_abort_config(),
        "jobExecutionsRolloutConfig" => io_t_job_executions_rollout_config(),
        "timeoutConfig" => io_t_job_timeout_config()
      }

  """
  @type deployment_io_t_job_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component() :: %{
        "arn" => String.t() | Atom.t(),
        "componentName" => String.t() | Atom.t(),
        "latestVersion" => component_latest_version()
      }

  """
  @type component() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_request() :: %{}

  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:

      resolved_component_version() :: %{
        "arn" => String.t() | Atom.t(),
        "componentName" => String.t() | Atom.t(),
        "componentVersion" => String.t() | Atom.t(),
        "message" => String.t() | Atom.t(),
        "recipe" => binary(),
        "vendorGuidance" => list(any())
      }

  """
  @type resolved_component_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_platform() :: %{
        "attributes" => map(),
        "name" => String.t() | Atom.t()
      }

  """
  @type component_platform() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      io_t_job_rate_increase_criteria() :: %{
        "numberOfNotifiedThings" => integer(),
        "numberOfSucceededThings" => integer()
      }

  """
  @type io_t_job_rate_increase_criteria() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cloud_component_status() :: %{
        "componentState" => list(any()),
        "errors" => map(),
        "message" => String.t() | Atom.t(),
        "vendorGuidance" => list(any()),
        "vendorGuidanceMessage" => String.t() | Atom.t()
      }

  """
  @type cloud_component_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_run_with() :: %{
        "posixUser" => String.t() | Atom.t(),
        "systemResourceLimits" => system_resource_limits(),
        "windowsUser" => String.t() | Atom.t()
      }

  """
  @type component_run_with() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      effective_deployment_status_details() :: %{
        "errorStack" => list(String.t() | Atom.t()),
        "errorTypes" => list(String.t() | Atom.t())
      }

  """
  @type effective_deployment_status_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_deployment_specification() :: %{
        "componentVersion" => String.t() | Atom.t(),
        "configurationUpdate" => component_configuration_update(),
        "runWith" => component_run_with()
      }

  """
  @type component_deployment_specification() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_client_devices_associated_with_core_device_response() :: %{
        "associatedClientDevices" => list(associated_client_device()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_client_devices_associated_with_core_device_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_connectivity_info_request() :: %{}

  """
  @type get_connectivity_info_request() :: %{}

  @typedoc """

  ## Example:

      associate_service_role_to_account_request() :: %{
        required("roleArn") => String.t() | Atom.t()
      }

  """
  @type associate_service_role_to_account_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deployment_policies() :: %{
        "componentUpdatePolicy" => deployment_component_update_policy(),
        "configurationValidationPolicy" => deployment_configuration_validation_policy(),
        "failureHandlingPolicy" => list(any())
      }

  """
  @type deployment_policies() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_deployment_request() :: %{}

  """
  @type delete_deployment_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | Atom.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_configuration_update() :: %{
        "merge" => String.t() | Atom.t(),
        "reset" => list(String.t() | Atom.t())
      }

  """
  @type component_configuration_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      associate_client_device_with_core_device_entry() :: %{
        "thingName" => String.t() | Atom.t()
      }

  """
  @type associate_client_device_with_core_device_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      io_t_job_timeout_config() :: %{
        "inProgressTimeoutInMinutes" => float()
      }

  """
  @type io_t_job_timeout_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resolve_component_candidates_response() :: %{
        "resolvedComponentVersions" => list(resolved_component_version())
      }

  """
  @type resolve_component_candidates_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_client_device_from_core_device_error_entry() :: %{
        "code" => String.t() | Atom.t(),
        "message" => String.t() | Atom.t(),
        "thingName" => String.t() | Atom.t()
      }

  """
  @type disassociate_client_device_from_core_device_error_entry() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      batch_disassociate_client_device_from_core_device_request() :: %{
        optional("entries") => list(disassociate_client_device_from_core_device_entry())
      }

  """
  @type batch_disassociate_client_device_from_core_device_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      io_t_job_abort_config() :: %{
        "criteriaList" => list(io_t_job_abort_criteria())
      }

  """
  @type io_t_job_abort_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      component_version_list_item() :: %{
        "arn" => String.t() | Atom.t(),
        "componentName" => String.t() | Atom.t(),
        "componentVersion" => String.t() | Atom.t()
      }

  """
  @type component_version_list_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      lambda_container_params() :: %{
        "devices" => list(lambda_device_mount()),
        "memorySizeInKB" => integer(),
        "mountROSysfs" => boolean(),
        "volumes" => list(lambda_volume_mount())
      }

  """
  @type lambda_container_params() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fields" => list(validation_exception_field()),
        "message" => String.t() | Atom.t(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      cancel_deployment_response() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type cancel_deployment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_response() :: %{
        "components" => map(),
        "creationTimestamp" => non_neg_integer(),
        "deploymentId" => String.t() | Atom.t(),
        "deploymentName" => String.t() | Atom.t(),
        "deploymentPolicies" => deployment_policies(),
        "deploymentStatus" => list(any()),
        "iotJobArn" => String.t() | Atom.t(),
        "iotJobConfiguration" => deployment_io_t_job_configuration(),
        "iotJobId" => String.t() | Atom.t(),
        "isLatestForTarget" => boolean(),
        "parentTargetArn" => String.t() | Atom.t(),
        "revisionId" => String.t() | Atom.t(),
        "tags" => map(),
        "targetArn" => String.t() | Atom.t()
      }

  """
  @type get_deployment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | Atom.t(),
        "quotaCode" => String.t() | Atom.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_component_response() :: %{
        "arn" => String.t() | Atom.t(),
        "componentName" => String.t() | Atom.t(),
        "componentVersion" => String.t() | Atom.t(),
        "creationTimestamp" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "platforms" => list(component_platform()),
        "publisher" => String.t() | Atom.t(),
        "status" => cloud_component_status(),
        "tags" => map()
      }

  """
  @type describe_component_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_effective_deployments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_effective_deployments_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_components_response() :: %{
        "components" => list(component()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_components_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_component_version_artifact_response() :: %{
        "preSignedUrl" => String.t() | Atom.t()
      }

  """
  @type get_component_version_artifact_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_installed_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("topologyFilter") => list(any())
      }

  """
  @type list_installed_components_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_client_device_with_core_device_response() :: %{
        "errorEntries" => list(associate_client_device_with_core_device_error_entry())
      }

  """
  @type batch_associate_client_device_with_core_device_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_client_devices_associated_with_core_device_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_client_devices_associated_with_core_device_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      associated_client_device() :: %{
        "associationTimestamp" => non_neg_integer(),
        "thingName" => String.t() | Atom.t()
      }

  """
  @type associated_client_device() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_component_request() :: %{}

  """
  @type describe_component_request() :: %{}

  @typedoc """

  ## Example:

      component_candidate() :: %{
        "componentName" => String.t() | Atom.t(),
        "componentVersion" => String.t() | Atom.t(),
        "versionRequirements" => map()
      }

  """
  @type component_candidate() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_effective_deployments_response() :: %{
        "effectiveDeployments" => list(effective_deployment()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_effective_deployments_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      lambda_linux_process_params() :: %{
        "containerParams" => lambda_container_params(),
        "isolationMode" => list(any())
      }

  """
  @type lambda_linux_process_params() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_service_role_for_account_response() :: %{
        "associatedAt" => String.t() | Atom.t(),
        "roleArn" => String.t() | Atom.t()
      }

  """
  @type get_service_role_for_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_client_device_with_core_device_request() :: %{
        optional("entries") => list(associate_client_device_with_core_device_entry())
      }

  """
  @type batch_associate_client_device_with_core_device_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      io_t_job_abort_criteria() :: %{
        "action" => list(any()),
        "failureType" => list(any()),
        "minNumberOfExecutedThings" => integer(),
        "thresholdPercentage" => float()
      }

  """
  @type io_t_job_abort_criteria() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      associate_service_role_to_account_response() :: %{
        "associatedAt" => String.t() | Atom.t()
      }

  """
  @type associate_service_role_to_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_service_role_from_account_request() :: %{}

  """
  @type disassociate_service_role_from_account_request() :: %{}

  @typedoc """

  ## Example:

      get_component_request() :: %{
        optional("recipeOutputFormat") => list(any())
      }

  """
  @type get_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resolve_component_candidates_request() :: %{
        optional("componentCandidates") => list(component_candidate()),
        optional("platform") => component_platform()
      }

  """
  @type resolve_component_candidates_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      lambda_device_mount() :: %{
        "addGroupOwner" => boolean(),
        "path" => String.t() | Atom.t(),
        "permission" => list(any())
      }

  """
  @type lambda_device_mount() :: %{String.t() | Atom.t() => any()}

  @type associate_service_role_to_account_errors() ::
          validation_exception() | internal_server_exception()

  @type batch_associate_client_device_with_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_disassociate_client_device_from_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_component_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | request_already_in_progress_exception()

  @type create_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_already_in_progress_exception()

  @type delete_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_service_role_from_account_errors() :: internal_server_exception()

  @type get_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_component_version_artifact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connectivity_info_errors() :: validation_exception() | internal_server_exception()

  @type get_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_role_for_account_errors() :: internal_server_exception()

  @type list_client_devices_associated_with_core_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_component_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_core_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_deployments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_effective_deployments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_installed_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type resolve_component_candidates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_connectivity_info_errors() :: validation_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-11-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "greengrass",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "GreengrassV2",
      signature_version: "v4",
      signing_name: "greengrass",
      target_prefix: nil
    }
  end

  @doc """
  Associates a Greengrass service role with IoT Greengrass for your Amazon Web
  Services account in this Amazon Web Services Region.

  IoT Greengrass
  uses this role to verify the identity of client devices and manage core device
  connectivity
  information. The role must include the
  [AWSGreengrassResourceAccessRolePolicy](https://console.aws.amazon.com/iam/home#/policies/arn:awsiam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy) managed policy or a custom policy that
  defines equivalent permissions for the IoT Greengrass features that you use. For
  more information, see
  [Greengrass service
  role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  @spec associate_service_role_to_account(
          map(),
          associate_service_role_to_account_request(),
          list()
        ) ::
          {:ok, associate_service_role_to_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_service_role_to_account_errors()}
  def associate_service_role_to_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a list of client devices with a core device.

  Use this API operation to specify
  which client devices can discover a core device through cloud discovery. With
  cloud discovery,
  client devices connect to IoT Greengrass to retrieve associated core devices'
  connectivity information
  and certificates. For more information, see [Configure cloud discovery](https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-cloud-discovery.html)
  in the *IoT Greengrass V2 Developer Guide*.

  Client devices are local IoT devices that connect to and communicate with an IoT
  Greengrass core
  device over MQTT. You can connect client devices to a core device to sync MQTT
  messages and
  data to Amazon Web Services IoT Core and interact with client devices in
  Greengrass components. For more information,
  see [Interact with local IoT
  devices](https://docs.aws.amazon.com/greengrass/v2/developerguide/interact-with-local-iot-devices.html)
  in the *IoT Greengrass V2 Developer Guide*.
  """
  @spec batch_associate_client_device_with_core_device(
          map(),
          String.t() | Atom.t(),
          batch_associate_client_device_with_core_device_request(),
          list()
        ) ::
          {:ok, batch_associate_client_device_with_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_client_device_with_core_device_errors()}
  def batch_associate_client_device_with_core_device(
        %Client{} = client,
        core_device_thing_name,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/associateClientDevices"

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
  Disassociates a list of client devices from a core device.

  After you disassociate a client
  device from a core device, the client device won't be able to use cloud
  discovery to retrieve
  the core device's connectivity information and certificates.
  """
  @spec batch_disassociate_client_device_from_core_device(
          map(),
          String.t() | Atom.t(),
          batch_disassociate_client_device_from_core_device_request(),
          list()
        ) ::
          {:ok, batch_disassociate_client_device_from_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_client_device_from_core_device_errors()}
  def batch_disassociate_client_device_from_core_device(
        %Client{} = client,
        core_device_thing_name,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/disassociateClientDevices"

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
  Cancels a deployment.

  This operation cancels the deployment for devices that haven't yet
  received it. If a device already received the deployment, this operation doesn't
  change
  anything for that device.
  """
  @spec cancel_deployment(map(), String.t() | Atom.t(), cancel_deployment_request(), list()) ::
          {:ok, cancel_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_deployment_errors()}
  def cancel_deployment(%Client{} = client, deployment_id, input, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}/cancel"
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
  Creates a component.

  Components are software that run on Greengrass core devices. After you
  develop and test a component on your core device, you can use this operation to
  upload your
  component to IoT Greengrass. Then, you can deploy the component to other core
  devices.

  You can use this operation to do the following:

    *

  ## Create components from recipes

  Create a component from a recipe, which is a file that defines the component's
  metadata, parameters, dependencies, lifecycle, artifacts, and platform
  capability. For
  more information, see [IoT Greengrass component recipe reference](https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html)
  in the *IoT Greengrass V2 Developer Guide*.

  To create a component from a recipe, specify `inlineRecipe` when you call
  this operation.

    *

  ## Create components from Lambda functions

  Create a component from an Lambda function that runs on IoT Greengrass. This
  creates a recipe
  and artifacts from the Lambda function's deployment package. You can use this
  operation to
  migrate Lambda functions from IoT Greengrass V1 to IoT Greengrass V2.

  This function accepts Lambda functions in all supported versions of Python,
  Node.js,
  and Java runtimes. IoT Greengrass doesn't apply any additional restrictions on
  deprecated Lambda
  runtime versions.

  To create a component from a Lambda function, specify `lambdaFunction` when
  you call this operation.

  IoT Greengrass currently supports Lambda functions on only Linux core devices.
  """
  @spec create_component_version(map(), create_component_version_request(), list()) ::
          {:ok, create_component_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_component_version_errors()}
  def create_component_version(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/v2/createComponentVersion"
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
      201
    )
  end

  @doc """
  Creates a continuous deployment for a target, which is a Greengrass core device
  or group of core
  devices.

  When you add a new core device to a group of core devices that has a deployment,
  IoT Greengrass
  deploys that group's deployment to the new device.

  You can define one deployment for each target. When you create a new deployment
  for a
  target that has an existing deployment, you replace the previous deployment. IoT
  Greengrass applies the
  new deployment to the target devices.

  Every deployment has a revision number that indicates how many deployment
  revisions you
  define for a target. Use this operation to create a new revision of an existing
  deployment.

  For more information, see the [Create deployments](https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html)
  in the
  *IoT Greengrass V2 Developer Guide*.
  """
  @spec create_deployment(map(), create_deployment_request(), list()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/v2/deployments"
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
      201
    )
  end

  @doc """
  Deletes a version of a component from IoT Greengrass.

  This operation deletes the component's recipe and artifacts. As a result,
  deployments
  that refer to this component version will fail. If you have deployments that use
  this
  component version, you can remove the component from the deployment or update
  the deployment
  to use a valid version.
  """
  @spec delete_component(map(), String.t() | Atom.t(), delete_component_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_component_errors()}
  def delete_component(%Client{} = client, arn, input, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes a Greengrass core device, which is an IoT thing.

  This operation removes the core
  device from the list of core devices. This operation doesn't delete the IoT
  thing. For more
  information about how to delete the IoT thing, see
  [DeleteThing](https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html)
  in the
  *IoT API Reference*.
  """
  @spec delete_core_device(map(), String.t() | Atom.t(), delete_core_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_core_device_errors()}
  def delete_core_device(%Client{} = client, core_device_thing_name, input, options \\ []) do
    url_path = "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}"
    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes a deployment.

  To delete an active deployment, you must first cancel it. For more
  information, see
  [CancelDeployment](https://docs.aws.amazon.com/iot/latest/apireference/API_CancelDeployment.html).

  Deleting a deployment doesn't affect core devices that run that deployment,
  because core
  devices store the deployment's configuration on the device. Additionally, core
  devices can
  roll back to a previous deployment that has been deleted.
  """
  @spec delete_deployment(map(), String.t() | Atom.t(), delete_deployment_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, deployment_id, input, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}"
    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Retrieves metadata for a version of a component.
  """
  @spec describe_component(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_component_errors()}
  def describe_component(%Client{} = client, arn, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/metadata"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates the Greengrass service role from IoT Greengrass for your Amazon
  Web Services account in this Amazon Web Services Region.

  Without a service role, IoT Greengrass can't verify the identity of client
  devices or manage core device
  connectivity information. For more information, see [Greengrass service role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in
  the *IoT Greengrass Version 2 Developer Guide*.
  """
  @spec disassociate_service_role_from_account(
          map(),
          disassociate_service_role_from_account_request(),
          list()
        ) ::
          {:ok, disassociate_service_role_from_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_service_role_from_account_errors()}
  def disassociate_service_role_from_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    custom_headers = []
    query_params = []

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
  Gets the recipe for a version of a component.
  """
  @spec get_component(map(), String.t() | Atom.t(), String.t() | Atom.t() | nil, list()) ::
          {:ok, get_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_component_errors()}
  def get_component(%Client{} = client, arn, recipe_output_format \\ nil, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recipe_output_format) do
        [{"recipeOutputFormat", recipe_output_format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the pre-signed URL to download a public or a Lambda component artifact.

  Core devices
  call this operation to identify the URL that they can use to download an
  artifact to
  install.
  """
  @spec get_component_version_artifact(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, get_component_version_artifact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_component_version_artifact_errors()}
  def get_component_version_artifact(
        %Client{} = client,
        arn,
        artifact_name,
        s3_endpoint_type \\ nil,
        iot_endpoint_type \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/artifacts/#{AWS.Util.encode_multi_segment_uri(artifact_name)}"

    headers = []

    headers =
      if !is_nil(iot_endpoint_type) do
        [{"x-amz-iot-endpoint-type", iot_endpoint_type} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(s3_endpoint_type) do
        [{"s3EndpointType", s3_endpoint_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves connectivity information for a Greengrass core device.

  Connectivity information includes endpoints and ports where client devices
  can connect to an MQTT broker on the core device. When a client device
  calls the [IoT Greengrass discovery API](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html),
  IoT Greengrass returns connectivity information for all of the core devices
  where the client device can
  connect. For more information, see [Connect client devices to core
  devices](https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  @spec get_connectivity_info(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_connectivity_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connectivity_info_errors()}
  def get_connectivity_info(%Client{} = client, thing_name, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves metadata for a Greengrass core device.

  IoT Greengrass relies on individual devices to send status updates to the Amazon
  Web Services Cloud. If the
  IoT Greengrass Core software isn't running on the device, or if device isn't
  connected to the Amazon Web Services Cloud,
  then the reported status of that device might not reflect its current status.
  The status
  timestamp indicates when the device status was last updated.

  Core devices send status updates at the following times:

    
  When the IoT Greengrass Core software starts

    
  When the core device receives a deployment from the Amazon Web Services Cloud

    
  When the status of any component on the core device becomes
  `BROKEN`

    
  At a [regular interval that you can configure](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss),
  which defaults to 24 hours

    
  For IoT Greengrass Core v2.7.0, the core device sends status updates upon local
  deployment and
  cloud deployment
  """
  @spec get_core_device(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_core_device_errors()}
  def get_core_device(%Client{} = client, core_device_thing_name, options \\ []) do
    url_path = "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a deployment.

  Deployments define the components that run on Greengrass core devices.
  """
  @spec get_deployment(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, deployment_id, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the service role associated with IoT Greengrass for your Amazon Web
  Services account in this Amazon Web Services Region.

  IoT Greengrass uses this role to verify the identity of client devices and
  manage core device
  connectivity information. For more information, see [Greengrass service role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in
  the *IoT Greengrass Version 2 Developer Guide*.
  """
  @spec get_service_role_for_account(map(), list()) ::
          {:ok, get_service_role_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_role_for_account_errors()}
  def get_service_role_for_account(%Client{} = client, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of client devices that are associated with a core
  device.
  """
  @spec list_client_devices_associated_with_core_device(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_client_devices_associated_with_core_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_client_devices_associated_with_core_device_errors()}
  def list_client_devices_associated_with_core_device(
        %Client{} = client,
        core_device_thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/associatedClientDevices"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of all versions for a component.

  Greater versions are listed
  first.
  """
  @spec list_component_versions(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_component_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_component_versions_errors()}
  def list_component_versions(
        %Client{} = client,
        arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of component summaries.

  This list includes components that you
  have permission to view.
  """
  @spec list_components(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_components_errors()}
  def list_components(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        scope \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/components"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of Greengrass core devices.

  IoT Greengrass relies on individual devices to send status updates to the Amazon
  Web Services Cloud. If the
  IoT Greengrass Core software isn't running on the device, or if device isn't
  connected to the Amazon Web Services Cloud,
  then the reported status of that device might not reflect its current status.
  The status
  timestamp indicates when the device status was last updated.

  Core devices send status updates at the following times:

    
  When the IoT Greengrass Core software starts

    
  When the core device receives a deployment from the Amazon Web Services Cloud

    
  For Greengrass nucleus 2.12.2 and earlier, the core device sends status updates
  when the
  status of any component on the core device becomes `ERRORED` or
  `BROKEN`.

    
  For Greengrass nucleus 2.12.3 and later, the core device sends status updates
  when the
  status of any component on the core device becomes `ERRORED`,
  `BROKEN`, `RUNNING`, or `FINISHED`.

    
  At a [regular interval that you can configure](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss),
  which defaults to 24 hours

    
  For IoT Greengrass Core v2.7.0, the core device sends status updates upon local
  deployment and
  cloud deployment
  """
  @spec list_core_devices(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_core_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_core_devices_errors()}
  def list_core_devices(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        runtime \\ nil,
        status \\ nil,
        thing_group_arn \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/coreDevices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_group_arn) do
        [{"thingGroupArn", thing_group_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(runtime) do
        [{"runtime", runtime} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of deployments.
  """
  @spec list_deployments(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployments_errors()}
  def list_deployments(
        %Client{} = client,
        history_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        parent_target_arn \\ nil,
        target_arn \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/deployments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_arn) do
        [{"targetArn", target_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(parent_target_arn) do
        [{"parentTargetArn", parent_target_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(history_filter) do
        [{"historyFilter", history_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of deployment jobs that IoT Greengrass sends to
  Greengrass core devices.
  """
  @spec list_effective_deployments(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_effective_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_effective_deployments_errors()}
  def list_effective_deployments(
        %Client{} = client,
        core_device_thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/effectiveDeployments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of the components that a Greengrass core device runs.

  By default,
  this list doesn't include components that are deployed as dependencies of other
  components. To
  include dependencies in the response, set the `topologyFilter` parameter to
  `ALL`.

  IoT Greengrass relies on individual devices to send status updates to the Amazon
  Web Services Cloud. If the
  IoT Greengrass Core software isn't running on the device, or if device isn't
  connected to the Amazon Web Services Cloud,
  then the reported status of that device might not reflect its current status.
  The status
  timestamp indicates when the device status was last updated.

  Core devices send status updates at the following times:

    
  When the IoT Greengrass Core software starts

    
  When the core device receives a deployment from the Amazon Web Services Cloud

    
  When the status of any component on the core device becomes
  `BROKEN`

    
  At a [regular interval that you can configure](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss),
  which defaults to 24 hours

    
  For IoT Greengrass Core v2.7.0, the core device sends status updates upon local
  deployment and
  cloud deployment
  """
  @spec list_installed_components(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_installed_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_installed_components_errors()}
  def list_installed_components(
        %Client{} = client,
        core_device_thing_name,
        max_results \\ nil,
        next_token \\ nil,
        topology_filter \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/installedComponents"

    headers = []
    query_params = []

    query_params =
      if !is_nil(topology_filter) do
        [{"topologyFilter", topology_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of tags for an IoT Greengrass resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of components that meet the component, version, and platform
  requirements
  of a deployment.

  Greengrass core devices call this operation when they receive a deployment to
  identify the components to install.

  This operation identifies components that meet all dependency requirements for a
  deployment. If the requirements conflict, then this operation returns an error
  and the
  deployment fails. For example, this occurs if component `A` requires version
  `>2.0.0` and component `B` requires version `<2.0.0`
  of a component dependency.

  When you specify the component candidates to resolve, IoT Greengrass compares
  each component's
  digest from the core device with the component's digest in the Amazon Web
  Services Cloud. If the digests
  don't match, then IoT Greengrass specifies to use the version from the Amazon
  Web Services Cloud.

  To use this operation, you must use the data plane API endpoint and authenticate
  with an
  IoT device certificate. For more information, see [IoT Greengrass endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/greengrass.html).
  """
  @spec resolve_component_candidates(map(), resolve_component_candidates_request(), list()) ::
          {:ok, resolve_component_candidates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resolve_component_candidates_errors()}
  def resolve_component_candidates(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/v2/resolveComponentCandidates"
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
  Adds tags to an IoT Greengrass resource.

  If a tag already exists for the resource, this operation
  updates the tag's value.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag from an IoT Greengrass resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates connectivity information for a Greengrass core device.

  Connectivity information includes endpoints and ports where client devices
  can connect to an MQTT broker on the core device. When a client device
  calls the [IoT Greengrass discovery API](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html),
  IoT Greengrass returns connectivity information for all of the core devices
  where the client device can
  connect. For more information, see [Connect client devices to core
  devices](https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  @spec update_connectivity_info(
          map(),
          String.t() | Atom.t(),
          update_connectivity_info_request(),
          list()
        ) ::
          {:ok, update_connectivity_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connectivity_info_errors()}
  def update_connectivity_info(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
