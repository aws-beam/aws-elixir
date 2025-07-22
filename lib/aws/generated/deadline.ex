# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Deadline do
  @moduledoc """
  The Amazon Web Services Deadline Cloud API provides infrastructure and
  centralized management for your projects.

  Use the Deadline Cloud API to onboard users, assign projects, and attach
  permissions specific to their job function.

  With Deadline Cloud, content production teams can deploy resources for their
  workforce securely in the cloud, reducing the costs of added physical
  infrastructure. Keep your content production operations secure, while allowing
  your contributors to access the tools they need, such as scalable high-speed
  storage, licenses, and cost management services.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_fleet_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_fleet_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_fleet_association_response() :: %{}

  """
  @type update_queue_fleet_association_response() :: %{}

  @typedoc """

  ## Example:

      host_configuration() :: %{
        "scriptBody" => String.t(),
        "scriptTimeoutSeconds" => integer()
      }

  """
  @type host_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      windows_user() :: %{
        "passwordArn" => String.t(),
        "user" => String.t()
      }

  """
  @type windows_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_sessions_statistics_aggregation_response() :: %{
        "aggregationId" => String.t()
      }

  """
  @type start_sessions_statistics_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_user_request() :: %{}

  """
  @type assume_queue_role_for_user_request() :: %{}

  @typedoc """

  ## Example:

      fleet_attribute_capability() :: %{
        "name" => String.t(),
        "values" => list(String.t())
      }

  """
  @type fleet_attribute_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_details_error() :: %{
        "code" => list(any()),
        "jobId" => String.t(),
        "message" => String.t()
      }

  """
  @type job_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_environment_response() :: %{
        "queueEnvironmentId" => String.t()
      }

  """
  @type create_queue_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_environments_response() :: %{
        "environments" => list(queue_environment_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_queue_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fixed_budget_schedule() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer()
      }

  """
  @type fixed_budget_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_sync_input_job_attachments_session_action_definition() :: %{
        "stepId" => String.t()
      }

  """
  @type assigned_sync_input_job_attachments_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_response() :: %{
        "allowedStorageProfileIds" => list(String.t()),
        "blockedReason" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "defaultBudgetAction" => list(any()),
        "description" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "jobAttachmentSettings" => job_attachment_settings(),
        "jobRunAsUser" => job_run_as_user(),
        "queueId" => String.t(),
        "requiredFileSystemLocationNames" => list(String.t()),
        "roleArn" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_task_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "failureRetryCount" => integer(),
        "latestSessionActionId" => String.t(),
        "parameters" => map(),
        "runStatus" => list(any()),
        "startedAt" => non_neg_integer(),
        "targetRunStatus" => list(any()),
        "taskId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_fleet_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_enter_session_action_definition_summary() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_enter_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queues_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_farm_response() :: %{}

  """
  @type associate_member_to_farm_response() :: %{}

  @typedoc """

  ## Example:

      budget_action_to_remove() :: %{
        "thresholdPercentage" => float(),
        "type" => list(any())
      }

  """
  @type budget_action_to_remove() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_run_session_action_definition_summary() :: %{
        "parameters" => map(),
        "stepId" => String.t(),
        "taskId" => String.t()
      }

  """
  @type task_run_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_summary() :: %{
        "endedAt" => non_neg_integer(),
        "fleetId" => String.t(),
        "lifecycleStatus" => list(any()),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetLifecycleStatus" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_monitor_request() :: %{}

  """
  @type delete_monitor_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_member_from_farm_request() :: %{}

  """
  @type disassociate_member_from_farm_request() :: %{}

  @typedoc """

  ## Example:

      search_tasks_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("jobId") => String.t(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()),
        required("itemOffset") => integer(),
        required("queueIds") => list(String.t())
      }

  """
  @type search_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        "endedAt" => non_neg_integer(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "lifecycleStatus" => list(any()),
        "log" => log_configuration(),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetLifecycleStatus" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t(),
        "workerLog" => log_configuration()
      }

  """
  @type get_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_budget_response() :: %{}

  """
  @type delete_budget_response() :: %{}

  @typedoc """

  ## Example:

      list_monitors_response() :: %{
        "monitors" => list(monitor_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_monitors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_limit_association_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_queue_limit_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        "jobId" => String.t()
      }

  """
  @type create_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_job_entity_request() :: %{
        required("identifiers") => list(list())
      }

  """
  @type batch_get_job_entity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_step_request() :: %{
        optional("clientToken") => String.t(),
        required("targetTaskRunStatus") => list(any())
      }

  """
  @type update_step_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_actions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sessionId") => String.t(),
        optional("taskId") => String.t()
      }

  """
  @type list_session_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_fleet_association_request() :: %{}

  """
  @type delete_queue_fleet_association_request() :: %{}

  @typedoc """

  ## Example:

      vpc_configuration() :: %{
        "resourceConfigurationArns" => list(String.t())
      }

  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_job_entity_response() :: %{
        "entities" => list(list()),
        "errors" => list(list())
      }

  """
  @type batch_get_job_entity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_budget_response() :: %{
        "budgetId" => String.t()
      }

  """
  @type create_budget_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      updated_session_action_info() :: %{
        "completedStatus" => list(any()),
        "endedAt" => non_neg_integer(),
        "manifests" => list(task_run_manifest_properties_request()),
        "processExitCode" => integer(),
        "progressMessage" => String.t(),
        "progressPercent" => float(),
        "startedAt" => non_neg_integer(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type updated_session_action_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_queue_response() :: %{}

  """
  @type disassociate_member_from_queue_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_queue_fleet_associations_response() :: %{
        "nextToken" => String.t(),
        "queueFleetAssociations" => list(queue_fleet_association_summary())
      }

  """
  @type list_queue_fleet_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_for_worker_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_sessions_for_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_limit_request() :: %{}

  """
  @type get_limit_request() :: %{}

  @typedoc """

  ## Example:

      get_task_request() :: %{}

  """
  @type get_task_request() :: %{}

  @typedoc """

  ## Example:

      list_available_metered_products_response() :: %{
        "meteredProducts" => list(metered_product_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_available_metered_products_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fleet_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("hostConfiguration") => host_configuration(),
        optional("minWorkerCount") => integer(),
        optional("tags") => map(),
        required("configuration") => list(),
        required("displayName") => String.t(),
        required("maxWorkerCount") => integer(),
        required("roleArn") => String.t()
      }

  """
  @type create_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_ec2_instance_market_options() :: %{
        "type" => list(any())
      }

  """
  @type service_managed_ec2_instance_market_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_capabilities() :: %{
        "amounts" => list(fleet_amount_capability()),
        "attributes" => list(fleet_attribute_capability())
      }

  """
  @type fleet_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_required_capabilities() :: %{
        "amounts" => list(step_amount_capability()),
        "attributes" => list(step_attribute_capability())
      }

  """
  @type step_required_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t()
      }

  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_limit_association_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "limitId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type queue_limit_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_storage_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("displayName") => String.t(),
        optional("fileSystemLocationsToAdd") => list(file_system_location()),
        optional("fileSystemLocationsToRemove") => list(file_system_location()),
        optional("osFamily") => list(any())
      }

  """
  @type update_storage_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      v_cpu_count_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type v_cpu_count_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_limit_response() :: %{}

  """
  @type update_limit_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_member_from_fleet_response() :: %{}

  """
  @type disassociate_member_from_fleet_response() :: %{}

  @typedoc """

  ## Example:

      task_run_manifest_properties_request() :: %{
        "outputManifestHash" => String.t(),
        "outputManifestPath" => String.t()
      }

  """
  @type task_run_manifest_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_worker_request() :: %{}

  """
  @type get_worker_request() :: %{}

  @typedoc """

  ## Example:

      get_monitor_request() :: %{}

  """
  @type get_monitor_request() :: %{}

  @typedoc """

  ## Example:

      delete_fleet_response() :: %{}

  """
  @type delete_fleet_response() :: %{}

  @typedoc """

  ## Example:

      budget_summary() :: %{
        "approximateDollarLimit" => float(),
        "budgetId" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "usageTrackingResource" => list(),
        "usages" => consumed_usages()
      }

  """
  @type budget_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_worker_request() :: %{
        optional("capabilities") => worker_capabilities(),
        optional("hostProperties") => host_properties_request(),
        optional("status") => list(any())
      }

  """
  @type update_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_workers_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()),
        required("fleetIds") => list(String.t()),
        required("itemOffset") => integer()
      }

  """
  @type search_workers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_term_filter_expression() :: %{
        "matchType" => list(any()),
        "searchTerm" => String.t()
      }

  """
  @type search_term_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_fleet_configuration() :: %{
        "mode" => list(any()),
        "storageProfileId" => String.t(),
        "tagPropagationMode" => list(any()),
        "workerCapabilities" => customer_managed_worker_capabilities()
      }

  """
  @type customer_managed_fleet_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_license_endpoints_response() :: %{
        "licenseEndpoints" => list(license_endpoint_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_license_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_ec2_fleet_configuration() :: %{
        "instanceCapabilities" => service_managed_ec2_instance_capabilities(),
        "instanceMarketOptions" => service_managed_ec2_instance_market_options(),
        "storageProfileId" => String.t(),
        "vpcConfiguration" => vpc_configuration()
      }

  """
  @type service_managed_ec2_fleet_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_filter_expression() :: %{
        "name" => String.t(),
        "operator" => list(any()),
        "value" => String.t()
      }

  """
  @type string_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_run_manifest_properties_response() :: %{
        "outputManifestHash" => String.t(),
        "outputManifestPath" => String.t()
      }

  """
  @type task_run_manifest_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "log" => log_configuration(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type worker_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_mi_b_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type memory_mi_b_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manifest_properties() :: %{
        "fileSystemLocationName" => String.t(),
        "inputManifestHash" => String.t(),
        "inputManifestPath" => String.t(),
        "outputRelativeDirectories" => list(String.t()),
        "rootPath" => String.t(),
        "rootPathFormat" => list(any())
      }

  """
  @type manifest_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_for_worker_response() :: %{
        "nextToken" => String.t(),
        "sessions" => list(worker_session_summary())
      }

  """
  @type list_sessions_for_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fleets_request() :: %{
        optional("displayName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_budgets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_budgets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_attribute_capability() :: %{
        "name" => String.t(),
        "values" => list(String.t())
      }

  """
  @type worker_attribute_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_exit_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_exit_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "failureRetryCount" => integer(),
        "latestSessionActionId" => String.t(),
        "parameters" => map(),
        "runStatus" => list(any()),
        "startedAt" => non_neg_integer(),
        "targetRunStatus" => list(any()),
        "taskId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_counts() :: %{
        "consumersResolved" => integer(),
        "consumersUnresolved" => integer(),
        "dependenciesResolved" => integer(),
        "dependenciesUnresolved" => integer()
      }

  """
  @type dependency_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_search_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "name" => String.t(),
        "parameterSpace" => parameter_space(),
        "queueId" => String.t(),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskFailureRetryCount" => integer(),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type step_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_steps_response() :: %{
        "nextItemOffset" => integer(),
        "steps" => list(step_search_summary()),
        "totalResults" => integer()
      }

  """
  @type search_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_monitor_response() :: %{}

  """
  @type delete_monitor_response() :: %{}

  @typedoc """

  ## Example:

      associate_member_to_fleet_response() :: %{}

  """
  @type associate_member_to_fleet_response() :: %{}

  @typedoc """

  ## Example:

      step_amount_capability() :: %{
        "max" => float(),
        "min" => float(),
        "name" => String.t(),
        "value" => float()
      }

  """
  @type step_amount_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_worker_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_queue_role_for_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_queue_request() :: %{}

  """
  @type disassociate_member_from_queue_request() :: %{}

  @typedoc """

  ## Example:

      date_time_filter_expression() :: %{
        "dateTime" => non_neg_integer(),
        "name" => String.t(),
        "operator" => list(any())
      }

  """
  @type date_time_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_workers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_response() :: %{
        "jobs" => list(job_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("attachments") => attachments(),
        optional("clientToken") => String.t(),
        optional("maxFailedTasksCount") => integer(),
        optional("maxRetriesPerTask") => integer(),
        optional("maxWorkerCount") => integer(),
        optional("parameters") => map(),
        optional("sourceJobId") => String.t(),
        optional("storageProfileId") => String.t(),
        optional("targetTaskRunStatus") => list(any()),
        optional("template") => String.t(),
        optional("templateType") => list(any()),
        required("priority") => integer()
      }

  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_limits_response() :: %{
        "limits" => list(limit_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_limits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_monitors_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_monitors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_dependencies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_step_dependencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_storage_profile_response() :: %{}

  """
  @type update_storage_profile_response() :: %{}

  @typedoc """

  ## Example:

      list_fleets_response() :: %{
        "fleets" => list(fleet_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      license_endpoint_summary() :: %{
        "licenseEndpointId" => String.t(),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type license_endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_ebs_volume() :: %{
        "iops" => integer(),
        "sizeGiB" => integer(),
        "throughputMiB" => integer()
      }

  """
  @type ec2_ebs_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_request() :: %{
        optional("allowedStorageProfileIdsToAdd") => list(String.t()),
        optional("allowedStorageProfileIdsToRemove") => list(String.t()),
        optional("clientToken") => String.t(),
        optional("defaultBudgetAction") => list(any()),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("jobAttachmentSettings") => job_attachment_settings(),
        optional("jobRunAsUser") => job_run_as_user(),
        optional("requiredFileSystemLocationNamesToAdd") => list(String.t()),
        optional("requiredFileSystemLocationNamesToRemove") => list(String.t()),
        optional("roleArn") => String.t()
      }

  """
  @type update_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_worker_schedule_request() :: %{
        optional("updatedSessionActions") => map()
      }

  """
  @type update_worker_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_members_response() :: %{
        "members" => list(job_member()),
        "nextToken" => String.t()
      }

  """
  @type list_job_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_limit_association_request() :: %{
        required("limitId") => String.t(),
        required("queueId") => String.t()
      }

  """
  @type create_queue_limit_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_monitor_response() :: %{}

  """
  @type update_monitor_response() :: %{}

  @typedoc """

  ## Example:

      storage_profile_summary() :: %{
        "displayName" => String.t(),
        "osFamily" => list(any()),
        "storageProfileId" => String.t()
      }

  """
  @type storage_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_monitor_response() :: %{
        "identityCenterApplicationArn" => String.t(),
        "monitorId" => String.t()
      }

  """
  @type create_monitor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_metered_product_response() :: %{}

  """
  @type delete_metered_product_response() :: %{}

  @typedoc """

  ## Example:

      get_session_request() :: %{}

  """
  @type get_session_request() :: %{}

  @typedoc """

  ## Example:

      delete_queue_limit_association_response() :: %{}

  """
  @type delete_queue_limit_association_response() :: %{}

  @typedoc """

  ## Example:

      get_storage_profile_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "fileSystemLocations" => list(file_system_location()),
        "osFamily" => list(any()),
        "storageProfileId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_storage_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_ec2_instance_capabilities() :: %{
        "acceleratorCapabilities" => accelerator_capabilities(),
        "allowedInstanceTypes" => list(String.t()),
        "cpuArchitectureType" => list(any()),
        "customAmounts" => list(fleet_amount_capability()),
        "customAttributes" => list(fleet_attribute_capability()),
        "excludedInstanceTypes" => list(String.t()),
        "memoryMiB" => memory_mi_b_range(),
        "osFamily" => list(any()),
        "rootEbsVolume" => ec2_ebs_volume(),
        "vCpuCount" => v_cpu_count_range()
      }

  """
  @type service_managed_ec2_instance_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_search_summary() :: %{
        "endedAt" => non_neg_integer(),
        "failureRetryCount" => integer(),
        "jobId" => String.t(),
        "parameters" => map(),
        "queueId" => String.t(),
        "runStatus" => list(any()),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetRunStatus" => list(any()),
        "taskId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type task_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_actions_response() :: %{
        "nextToken" => String.t(),
        "sessionActions" => list(session_action_summary())
      }

  """
  @type list_session_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_budget_action() :: %{
        "description" => String.t(),
        "thresholdPercentage" => float(),
        "type" => list(any())
      }

  """
  @type response_budget_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_budget_request() :: %{
        optional("actionsToAdd") => list(budget_action_to_add()),
        optional("actionsToRemove") => list(budget_action_to_remove()),
        optional("approximateDollarLimit") => float(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("schedule") => list(),
        optional("status") => list(any())
      }

  """
  @type update_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_attribute_capability() :: %{
        "allOf" => list(String.t()),
        "anyOf" => list(String.t()),
        "name" => String.t()
      }

  """
  @type step_attribute_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_limit_association_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "limitId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_queue_limit_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_details_entity() :: %{
        "dependencies" => list(String.t()),
        "jobId" => String.t(),
        "schemaVersion" => String.t(),
        "stepId" => String.t(),
        "template" => any()
      }

  """
  @type step_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_step_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "dependencyCounts" => dependency_counts(),
        "description" => String.t(),
        "endedAt" => non_neg_integer(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "name" => String.t(),
        "parameterSpace" => parameter_space(),
        "requiredCapabilities" => step_required_capabilities(),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskFailureRetryCount" => integer(),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_step_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_summary() :: %{
        "blockedReason" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "defaultBudgetAction" => list(any()),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type queue_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_metered_product_request() :: %{}

  """
  @type put_metered_product_request() :: %{}

  @typedoc """

  ## Example:

      delete_storage_profile_response() :: %{}

  """
  @type delete_storage_profile_response() :: %{}

  @typedoc """

  ## Example:

      list_queue_limit_associations_request() :: %{
        optional("limitId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("queueId") => String.t()
      }

  """
  @type list_queue_limit_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_worker_schedule_response() :: %{
        "assignedSessions" => map(),
        "cancelSessionActions" => map(),
        "desiredWorkerStatus" => list(any()),
        "updateIntervalSeconds" => integer()
      }

  """
  @type update_worker_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_task_run_session_action_definition() :: %{
        "parameters" => map(),
        "stepId" => String.t(),
        "taskId" => String.t()
      }

  """
  @type assigned_task_run_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_fleet_association_response() :: %{}

  """
  @type create_queue_fleet_association_response() :: %{}

  @typedoc """

  ## Example:

      delete_queue_environment_request() :: %{}

  """
  @type delete_queue_environment_request() :: %{}

  @typedoc """

  ## Example:

      job_member() :: %{
        "farmId" => String.t(),
        "identityStoreId" => String.t(),
        "jobId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any()),
        "queueId" => String.t()
      }

  """
  @type job_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_license_endpoint_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("securityGroupIds") => list(String.t()),
        required("subnetIds") => list(String.t()),
        required("vpcId") => String.t()
      }

  """
  @type create_license_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_read_request() :: %{}

  """
  @type assume_queue_role_for_read_request() :: %{}

  @typedoc """

  ## Example:

      search_grouped_filter_expressions() :: %{
        "filters" => list(list()),
        "operator" => list(any())
      }

  """
  @type search_grouped_filter_expressions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_request() :: %{}

  """
  @type delete_worker_request() :: %{}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "maxFailedTasksCount" => integer(),
        "maxRetriesPerTask" => integer(),
        "maxWorkerCount" => integer(),
        "name" => String.t(),
        "priority" => integer(),
        "sourceJobId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetTaskRunStatus" => list(any()),
        "taskFailureRetryCount" => integer(),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_farm_request() :: %{
        optional("description") => String.t(),
        optional("displayName") => String.t()
      }

  """
  @type update_farm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_parameter_definitions_response() :: %{
        "jobParameterDefinitions" => list(any()),
        "nextToken" => String.t()
      }

  """
  @type list_job_parameter_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()),
        required("itemOffset") => integer(),
        required("queueIds") => list(String.t())
      }

  """
  @type search_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_storage_profile_response() :: %{
        "storageProfileId" => String.t()
      }

  """
  @type create_storage_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_response() :: %{
        "nextToken" => String.t(),
        "sessions" => list(session_summary())
      }

  """
  @type list_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_details_entity() :: %{
        "jobAttachmentSettings" => job_attachment_settings(),
        "jobId" => String.t(),
        "jobRunAsUser" => job_run_as_user(),
        "logGroupName" => String.t(),
        "parameters" => map(),
        "pathMappingRules" => list(path_mapping_rule()),
        "queueRoleArn" => String.t(),
        "schemaVersion" => String.t()
      }

  """
  @type job_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_task_response() :: %{}

  """
  @type update_task_response() :: %{}

  @typedoc """

  ## Example:

      list_storage_profiles_response() :: %{
        "nextToken" => String.t(),
        "storageProfiles" => list(storage_profile_summary())
      }

  """
  @type list_storage_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_worker_response() :: %{
        "workerId" => String.t()
      }

  """
  @type create_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_environment_enter_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type assigned_environment_enter_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "reason" => list(any()),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_worker_response() :: %{}

  """
  @type delete_worker_response() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accelerator_capabilities() :: %{
        "count" => accelerator_count_range(),
        "selections" => list(accelerator_selection())
      }

  """
  @type accelerator_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      posix_user() :: %{
        "group" => String.t(),
        "user" => String.t()
      }

  """
  @type posix_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_details_entity() :: %{
        "environmentId" => String.t(),
        "jobId" => String.t(),
        "schemaVersion" => String.t(),
        "template" => any()
      }

  """
  @type environment_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_environment_request() :: %{}

  """
  @type get_queue_environment_request() :: %{}

  @typedoc """

  ## Example:

      host_properties_response() :: %{
        "ec2InstanceArn" => String.t(),
        "ec2InstanceType" => String.t(),
        "hostName" => String.t(),
        "ipAddresses" => ip_addresses()
      }

  """
  @type host_properties_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_job_request() :: %{
        optional("clientToken") => String.t(),
        optional("lifecycleStatus") => list(any()),
        optional("maxFailedTasksCount") => integer(),
        optional("maxRetriesPerTask") => integer(),
        optional("maxWorkerCount") => integer(),
        optional("priority") => integer(),
        optional("targetTaskRunStatus") => list(any())
      }

  """
  @type update_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      consumed_usages() :: %{
        "approximateDollarUsage" => [float()]
      }

  """
  @type consumed_usages() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_storage_profiles_for_queue_response() :: %{
        "nextToken" => String.t(),
        "storageProfiles" => list(storage_profile_summary())
      }

  """
  @type list_storage_profiles_for_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_action_response() :: %{
        "acquiredLimits" => list(acquired_limit()),
        "definition" => list(),
        "endedAt" => non_neg_integer(),
        "manifests" => list(task_run_manifest_properties_response()),
        "processExitCode" => integer(),
        "progressMessage" => String.t(),
        "progressPercent" => float(),
        "sessionActionId" => String.t(),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "workerUpdatedAt" => non_neg_integer()
      }

  """
  @type get_session_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_request() :: %{}

  """
  @type get_queue_request() :: %{}

  @typedoc """

  ## Example:

      get_sessions_statistics_aggregation_response() :: %{
        "nextToken" => String.t(),
        "statistics" => list(statistics()),
        "status" => list(any()),
        "statusMessage" => String.t()
      }

  """
  @type get_sessions_statistics_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_fleet_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("hostConfiguration") => host_configuration(),
        optional("maxWorkerCount") => integer(),
        optional("minWorkerCount") => integer(),
        optional("roleArn") => String.t()
      }

  """
  @type update_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_metered_products_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_metered_products_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_fleet_request() :: %{}

  """
  @type get_fleet_request() :: %{}

  @typedoc """

  ## Example:

      search_workers_response() :: %{
        "nextItemOffset" => integer(),
        "totalResults" => integer(),
        "workers" => list(worker_search_summary())
      }

  """
  @type search_workers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "quotaCode" => String.t(),
        "reason" => list(any()),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_details_identifiers() :: %{
        "jobId" => String.t()
      }

  """
  @type job_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_farm_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "kmsKeyArn" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_farm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_parameter() :: %{
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type step_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_attachment_details_entity() :: %{
        "attachments" => attachments(),
        "jobId" => String.t()
      }

  """
  @type job_attachment_details_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_action_summary() :: %{
        "definition" => list(),
        "endedAt" => non_neg_integer(),
        "manifests" => list(task_run_manifest_properties_response()),
        "progressPercent" => float(),
        "sessionActionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "workerUpdatedAt" => non_neg_integer()
      }

  """
  @type session_action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_fleet_association_response() :: %{}

  """
  @type delete_queue_fleet_association_response() :: %{}

  @typedoc """

  ## Example:

      delete_farm_response() :: %{}

  """
  @type delete_farm_response() :: %{}

  @typedoc """

  ## Example:

      stats() :: %{
        "avg" => float(),
        "max" => float(),
        "min" => float(),
        "sum" => float()
      }

  """
  @type stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_license_endpoint_response() :: %{
        "licenseEndpointId" => String.t()
      }

  """
  @type create_license_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_limit_response() :: %{
        "amountRequirementName" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "currentCount" => integer(),
        "description" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "limitId" => String.t(),
        "maxCount" => integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_worker_request() :: %{
        required("queueId") => String.t()
      }

  """
  @type assume_queue_role_for_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_environment_request() :: %{
        optional("clientToken") => String.t(),
        optional("priority") => integer(),
        optional("template") => String.t(),
        optional("templateType") => list(any())
      }

  """
  @type update_queue_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_summary() :: %{
        "autoScalingStatus" => list(any()),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "maxWorkerCount" => integer(),
        "minWorkerCount" => integer(),
        "status" => list(any()),
        "targetWorkerCount" => integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerCount" => integer()
      }

  """
  @type fleet_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_job_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_request() :: %{
        optional("clientToken") => String.t(),
        required("targetLifecycleStatus") => list(any())
      }

  """
  @type update_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_limit_associations_response() :: %{
        "nextToken" => String.t(),
        "queueLimitAssociations" => list(queue_limit_association_summary())
      }

  """
  @type list_queue_limit_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_queue_role_for_read_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_queue_role_for_read_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_budget_request() :: %{}

  """
  @type get_budget_request() :: %{}

  @typedoc """

  ## Example:

      update_budget_response() :: %{}

  """
  @type update_budget_response() :: %{}

  @typedoc """

  ## Example:

      assume_queue_role_for_user_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_queue_role_for_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_sort_expression() :: %{
        "name" => String.t(),
        "sortOrder" => list(any())
      }

  """
  @type field_sort_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_job_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_space() :: %{
        "combination" => String.t(),
        "parameters" => list(step_parameter())
      }

  """
  @type parameter_space() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_metered_products_response() :: %{
        "meteredProducts" => list(metered_product_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_metered_products_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_fleet_role_for_read_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_fleet_role_for_read_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_session() :: %{
        "jobId" => String.t(),
        "logConfiguration" => log_configuration(),
        "queueId" => String.t(),
        "sessionActions" => list(assigned_session_action())
      }

  """
  @type assigned_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_response() :: %{
        "jobs" => list(job_search_summary()),
        "nextItemOffset" => integer(),
        "totalResults" => integer()
      }

  """
  @type search_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_summary() :: %{
        "amountRequirementName" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "currentCount" => integer(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "limitId" => String.t(),
        "maxCount" => integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type limit_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_exit_session_action_definition_summary() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_exit_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_task_request() :: %{
        optional("clientToken") => String.t(),
        required("targetRunStatus") => list(any())
      }

  """
  @type update_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      acquired_limit() :: %{
        "count" => integer(),
        "limitId" => String.t()
      }

  """
  @type acquired_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_request() :: %{
        optional("allowedStorageProfileIds") => list(String.t()),
        optional("clientToken") => String.t(),
        optional("defaultBudgetAction") => list(any()),
        optional("description") => String.t(),
        optional("jobAttachmentSettings") => job_attachment_settings(),
        optional("jobRunAsUser") => job_run_as_user(),
        optional("requiredFileSystemLocationNames") => list(String.t()),
        optional("roleArn") => String.t(),
        optional("tags") => map(),
        required("displayName") => String.t()
      }

  """
  @type create_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucketName" => String.t(),
        "key" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_storage_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_storage_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_input_job_attachments_session_action_definition() :: %{
        "stepId" => String.t()
      }

  """
  @type sync_input_job_attachments_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_members_response() :: %{
        "members" => list(queue_member()),
        "nextToken" => String.t()
      }

  """
  @type list_queue_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_environment_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "name" => String.t(),
        "priority" => integer(),
        "queueEnvironmentId" => String.t(),
        "template" => String.t(),
        "templateType" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_queue_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_monitor_request() :: %{
        optional("displayName") => String.t(),
        optional("roleArn") => String.t(),
        optional("subdomain") => String.t()
      }

  """
  @type update_monitor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_farm_request() :: %{}

  """
  @type get_farm_request() :: %{}

  @typedoc """

  ## Example:

      create_queue_environment_request() :: %{
        optional("clientToken") => String.t(),
        required("priority") => integer(),
        required("template") => String.t(),
        required("templateType") => list(any())
      }

  """
  @type create_queue_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_environment_summary() :: %{
        "name" => String.t(),
        "priority" => integer(),
        "queueEnvironmentId" => String.t()
      }

  """
  @type queue_environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farm_members_response() :: %{
        "members" => list(farm_member()),
        "nextToken" => String.t()
      }

  """
  @type list_farm_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_job_request() :: %{}

  """
  @type disassociate_member_from_job_request() :: %{}

  @typedoc """

  ## Example:

      step_details_error() :: %{
        "code" => list(any()),
        "jobId" => String.t(),
        "message" => String.t(),
        "stepId" => String.t()
      }

  """
  @type step_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_enter_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type environment_enter_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_steps_request() :: %{
        optional("filterExpressions") => search_grouped_filter_expressions(),
        optional("jobId") => String.t(),
        optional("pageSize") => integer(),
        optional("sortExpressions") => list(list()),
        required("itemOffset") => integer(),
        required("queueIds") => list(String.t())
      }

  """
  @type search_steps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_fleet_response() :: %{}

  """
  @type update_fleet_response() :: %{}

  @typedoc """

  ## Example:

      update_job_response() :: %{}

  """
  @type update_job_response() :: %{}

  @typedoc """

  ## Example:

      get_license_endpoint_response() :: %{
        "dnsName" => String.t(),
        "licenseEndpointId" => String.t(),
        "securityGroupIds" => list(String.t()),
        "status" => list(any()),
        "statusMessage" => String.t(),
        "subnetIds" => list(String.t()),
        "vpcId" => String.t()
      }

  """
  @type get_license_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_farm_response() :: %{
        "farmId" => String.t()
      }

  """
  @type create_farm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_worker_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "log" => log_configuration(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type get_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run_as_user() :: %{
        "posix" => posix_user(),
        "runAs" => list(any()),
        "windows" => windows_user()
      }

  """
  @type job_run_as_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_fleet_association_request() :: %{
        required("fleetId") => String.t(),
        required("queueId") => String.t()
      }

  """
  @type create_queue_fleet_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachments() :: %{
        "fileSystem" => list(any()),
        "manifests" => list(manifest_properties())
      }

  """
  @type attachments() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_run_session_action_definition() :: %{
        "parameters" => map(),
        "stepId" => String.t(),
        "taskId" => String.t()
      }

  """
  @type task_run_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accelerator_total_memory_mi_b_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type accelerator_total_memory_mi_b_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_metered_product_response() :: %{}

  """
  @type put_metered_product_response() :: %{}

  @typedoc """

  ## Example:

      delete_limit_response() :: %{}

  """
  @type delete_limit_response() :: %{}

  @typedoc """

  ## Example:

      step_dependency() :: %{
        "status" => list(any()),
        "stepId" => String.t()
      }

  """
  @type step_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_fleet_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_jobs_first() :: %{
        "userIdentityId" => String.t()
      }

  """
  @type user_jobs_first() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_action_request() :: %{}

  """
  @type get_session_action_request() :: %{}

  @typedoc """

  ## Example:

      list_steps_response() :: %{
        "nextToken" => String.t(),
        "steps" => list(step_summary())
      }

  """
  @type list_steps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workers_response() :: %{
        "nextToken" => String.t(),
        "workers" => list(worker_summary())
      }

  """
  @type list_workers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_sessions_statistics_aggregation_request() :: %{
        optional("period") => list(any()),
        optional("timezone") => String.t(),
        required("endTime") => non_neg_integer(),
        required("groupBy") => list(list(any())()),
        required("resourceIds") => list(),
        required("startTime") => non_neg_integer(),
        required("statistics") => list(list(any())())
      }

  """
  @type start_sessions_statistics_aggregation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farm_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_farm_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_details_error() :: %{
        "code" => list(any()),
        "environmentId" => String.t(),
        "jobId" => String.t(),
        "message" => String.t()
      }

  """
  @type environment_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_consumers_response() :: %{
        "consumers" => list(step_consumer()),
        "nextToken" => String.t()
      }

  """
  @type list_step_consumers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_queue_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_storage_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("fileSystemLocations") => list(file_system_location()),
        required("displayName") => String.t(),
        required("osFamily") => list(any())
      }

  """
  @type create_storage_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_tasks_response() :: %{
        "nextItemOffset" => integer(),
        "tasks" => list(task_search_summary()),
        "totalResults" => integer()
      }

  """
  @type search_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_amount_capability() :: %{
        "name" => String.t(),
        "value" => [float()]
      }

  """
  @type worker_amount_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_worker_capabilities() :: %{
        "acceleratorCount" => accelerator_count_range(),
        "acceleratorTotalMemoryMiB" => accelerator_total_memory_mi_b_range(),
        "acceleratorTypes" => list(list(any())()),
        "cpuArchitectureType" => list(any()),
        "customAmounts" => list(fleet_amount_capability()),
        "customAttributes" => list(fleet_attribute_capability()),
        "memoryMiB" => memory_mi_b_range(),
        "osFamily" => list(any()),
        "vCpuCount" => v_cpu_count_range()
      }

  """
  @type customer_managed_worker_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "context" => map(),
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_environment_exit_session_action_definition() :: %{
        "environmentId" => String.t()
      }

  """
  @type assigned_environment_exit_session_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ip_addresses() :: %{
        "ipV4Addresses" => list(String.t()),
        "ipV6Addresses" => list(String.t())
      }

  """
  @type ip_addresses() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sessions_statistics_aggregation_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("aggregationId") => String.t()
      }

  """
  @type get_sessions_statistics_aggregation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      copy_job_template_response() :: %{
        "templateType" => list(any())
      }

  """
  @type copy_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_credentials() :: %{
        "accessKeyId" => String.t(),
        "expiration" => non_neg_integer(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }

  """
  @type aws_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_amount_capability() :: %{
        "max" => [float()],
        "min" => [float()],
        "name" => String.t()
      }

  """
  @type fleet_amount_capability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_fleet_association_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "fleetId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_queue_fleet_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_budget_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("actions") => list(budget_action_to_add()),
        required("approximateDollarLimit") => float(),
        required("displayName") => String.t(),
        required("schedule") => list(),
        required("usageTrackingResource") => list()
      }

  """
  @type create_budget_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_budgets_response() :: %{
        "budgets" => list(budget_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_budgets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_storage_profile_request() :: %{}

  """
  @type delete_storage_profile_request() :: %{}

  @typedoc """

  ## Example:

      statistics() :: %{
        "aggregationEndTime" => non_neg_integer(),
        "aggregationStartTime" => non_neg_integer(),
        "costInUsd" => stats(),
        "count" => integer(),
        "fleetId" => String.t(),
        "instanceType" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "licenseProduct" => String.t(),
        "queueId" => String.t(),
        "runtimeInSeconds" => stats(),
        "usageType" => list(any()),
        "userId" => String.t()
      }

  """
  @type statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_response() :: %{
        "attachments" => attachments(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "maxFailedTasksCount" => integer(),
        "maxRetriesPerTask" => integer(),
        "maxWorkerCount" => integer(),
        "name" => String.t(),
        "parameters" => map(),
        "priority" => integer(),
        "sourceJobId" => String.t(),
        "startedAt" => non_neg_integer(),
        "storageProfileId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskFailureRetryCount" => integer(),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type get_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_storage_profile_request() :: %{}

  """
  @type get_storage_profile_request() :: %{}

  @typedoc """

  ## Example:

      create_limit_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("amountRequirementName") => String.t(),
        required("displayName") => String.t(),
        required("maxCount") => integer()
      }

  """
  @type create_limit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_environment_response() :: %{}

  """
  @type update_queue_environment_response() :: %{}

  @typedoc """

  ## Example:

      queue_fleet_association_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "fleetId" => String.t(),
        "queueId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type queue_fleet_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_limit_request() :: %{}

  """
  @type delete_limit_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "context" => map(),
        "fieldList" => list(validation_exception_field()),
        "message" => String.t(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_member_from_fleet_request() :: %{}

  """
  @type disassociate_member_from_fleet_request() :: %{}

  @typedoc """

  ## Example:

      assume_fleet_role_for_read_request() :: %{}

  """
  @type assume_fleet_role_for_read_request() :: %{}

  @typedoc """

  ## Example:

      update_step_response() :: %{}

  """
  @type update_step_response() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_details_identifiers() :: %{
        "environmentId" => String.t(),
        "jobId" => String.t()
      }

  """
  @type environment_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_step_request() :: %{}

  """
  @type get_step_request() :: %{}

  @typedoc """

  ## Example:

      get_job_request() :: %{}

  """
  @type get_job_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "context" => map(),
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_fleet_role_for_worker_response() :: %{
        "credentials" => aws_credentials()
      }

  """
  @type assume_fleet_role_for_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_attachment_details_error() :: %{
        "code" => list(any()),
        "jobId" => String.t(),
        "message" => String.t()
      }

  """
  @type job_attachment_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_license_endpoint_response() :: %{}

  """
  @type delete_license_endpoint_response() :: %{}

  @typedoc """

  ## Example:

      update_farm_response() :: %{}

  """
  @type update_farm_response() :: %{}

  @typedoc """

  ## Example:

      associate_member_to_job_response() :: %{}

  """
  @type associate_member_to_job_response() :: %{}

  @typedoc """

  ## Example:

      list_queue_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_queue_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_monitor_response() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "identityCenterApplicationArn" => String.t(),
        "identityCenterInstanceArn" => String.t(),
        "monitorId" => String.t(),
        "roleArn" => String.t(),
        "subdomain" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "url" => String.t()
      }

  """
  @type get_monitor_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assigned_session_action() :: %{
        "definition" => list(),
        "sessionActionId" => String.t()
      }

  """
  @type assigned_session_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parameter_sort_expression() :: %{
        "name" => String.t(),
        "sortOrder" => list(any())
      }

  """
  @type parameter_sort_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_available_metered_products_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_available_metered_products_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_session_response() :: %{}

  """
  @type update_session_response() :: %{}

  @typedoc """

  ## Example:

      list_tasks_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accelerator_selection() :: %{
        "name" => list(any()),
        "runtime" => String.t()
      }

  """
  @type accelerator_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queues_response() :: %{
        "nextToken" => String.t(),
        "queues" => list(queue_summary())
      }

  """
  @type list_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_environment_response() :: %{}

  """
  @type delete_queue_environment_response() :: %{}

  @typedoc """

  ## Example:

      list_license_endpoints_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_license_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_fleet_associations_request() :: %{
        optional("fleetId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("queueId") => String.t()
      }

  """
  @type list_queue_fleet_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_limit_request() :: %{
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("maxCount") => integer()
      }

  """
  @type update_limit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_fleet_association_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_queue_fleet_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metered_product_summary() :: %{
        "family" => String.t(),
        "port" => integer(),
        "productId" => String.t(),
        "vendor" => String.t()
      }

  """
  @type metered_product_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_response() :: %{}

  """
  @type update_queue_response() :: %{}

  @typedoc """

  ## Example:

      queue_member() :: %{
        "farmId" => String.t(),
        "identityStoreId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any()),
        "queueId" => String.t()
      }

  """
  @type queue_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_farm_request() :: %{}

  """
  @type delete_farm_request() :: %{}

  @typedoc """

  ## Example:

      delete_queue_request() :: %{}

  """
  @type delete_queue_request() :: %{}

  @typedoc """

  ## Example:

      delete_budget_request() :: %{}

  """
  @type delete_budget_request() :: %{}

  @typedoc """

  ## Example:

      update_worker_response() :: %{
        "hostConfiguration" => host_configuration(),
        "log" => log_configuration()
      }

  """
  @type update_worker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_input_job_attachments_session_action_definition_summary() :: %{
        "stepId" => String.t()
      }

  """
  @type sync_input_job_attachments_session_action_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_limit_response() :: %{
        "limitId" => String.t()
      }

  """
  @type create_limit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_search_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "jobParameters" => map(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "maxFailedTasksCount" => integer(),
        "maxRetriesPerTask" => integer(),
        "maxWorkerCount" => integer(),
        "name" => String.t(),
        "priority" => integer(),
        "queueId" => String.t(),
        "sourceJobId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetTaskRunStatus" => list(any()),
        "taskFailureRetryCount" => integer(),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type job_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_storage_profile_for_queue_request() :: %{}

  """
  @type get_storage_profile_for_queue_request() :: %{}

  @typedoc """

  ## Example:

      copy_job_template_request() :: %{
        required("targetS3Location") => s3_location()
      }

  """
  @type copy_job_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      path_mapping_rule() :: %{
        "destinationPath" => String.t(),
        "sourcePath" => String.t(),
        "sourcePathFormat" => list(any())
      }

  """
  @type path_mapping_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_worker_request() :: %{
        optional("clientToken") => String.t(),
        optional("hostProperties") => host_properties_request(),
        optional("tags") => map()
      }

  """
  @type create_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_job_response() :: %{}

  """
  @type disassociate_member_from_job_response() :: %{}

  @typedoc """

  ## Example:

      job_attachment_details_identifiers() :: %{
        "jobId" => String.t()
      }

  """
  @type job_attachment_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_fleet_association_request() :: %{}

  """
  @type get_queue_fleet_association_request() :: %{}

  @typedoc """

  ## Example:

      delete_license_endpoint_request() :: %{}

  """
  @type delete_license_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      budget_action_to_add() :: %{
        "description" => String.t(),
        "thresholdPercentage" => float(),
        "type" => list(any())
      }

  """
  @type budget_action_to_add() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_monitor_request() :: %{
        optional("clientToken") => String.t(),
        required("displayName") => String.t(),
        required("identityCenterInstanceArn") => String.t(),
        required("roleArn") => String.t(),
        required("subdomain") => String.t()
      }

  """
  @type create_monitor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_metered_product_request() :: %{}

  """
  @type delete_metered_product_request() :: %{}

  @typedoc """

  ## Example:

      list_tasks_response() :: %{
        "nextToken" => String.t(),
        "tasks" => list(task_summary())
      }

  """
  @type list_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_budget_response() :: %{
        "actions" => list(response_budget_action()),
        "approximateDollarLimit" => float(),
        "budgetId" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "queueStoppedAt" => non_neg_integer(),
        "schedule" => list(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "usageTrackingResource" => list(),
        "usages" => consumed_usages()
      }

  """
  @type get_budget_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_farm_request() :: %{
        required("identityStoreId") => String.t(),
        required("membershipLevel") => list(any()),
        required("principalType") => list(any())
      }

  """
  @type associate_member_to_farm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "dependencyCounts" => dependency_counts(),
        "endedAt" => non_neg_integer(),
        "lifecycleStatus" => list(any()),
        "lifecycleStatusMessage" => String.t(),
        "name" => String.t(),
        "startedAt" => non_neg_integer(),
        "stepId" => String.t(),
        "targetTaskRunStatus" => list(any()),
        "taskFailureRetryCount" => integer(),
        "taskRunStatus" => list(any()),
        "taskRunStatusCounts" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type step_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_farm_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("displayName") => String.t()
      }

  """
  @type create_farm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      host_properties_request() :: %{
        "hostName" => String.t(),
        "ipAddresses" => ip_addresses()
      }

  """
  @type host_properties_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_configuration() :: %{
        "error" => String.t(),
        "logDriver" => String.t(),
        "options" => map(),
        "parameters" => map()
      }

  """
  @type log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_limit_association_response() :: %{}

  """
  @type update_queue_limit_association_response() :: %{}

  @typedoc """

  ## Example:

      list_fleet_members_response() :: %{
        "members" => list(fleet_member()),
        "nextToken" => String.t()
      }

  """
  @type list_fleet_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_location() :: %{
        "name" => String.t(),
        "path" => String.t(),
        "type" => list(any())
      }

  """
  @type file_system_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_response() :: %{}

  """
  @type delete_queue_response() :: %{}

  @typedoc """

  ## Example:

      list_limits_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fleet_response() :: %{
        "fleetId" => String.t()
      }

  """
  @type create_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_limit_association_response() :: %{}

  """
  @type create_queue_limit_association_response() :: %{}

  @typedoc """

  ## Example:

      worker_session_summary() :: %{
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "lifecycleStatus" => list(any()),
        "queueId" => String.t(),
        "sessionId" => String.t(),
        "startedAt" => non_neg_integer(),
        "targetLifecycleStatus" => list(any())
      }

  """
  @type worker_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_parameter_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_job_parameter_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_consumer() :: %{
        "status" => list(any()),
        "stepId" => String.t()
      }

  """
  @type step_consumer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_storage_profiles_for_queue_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_storage_profiles_for_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_fleet_response() :: %{
        "autoScalingStatus" => list(any()),
        "capabilities" => fleet_capabilities(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "hostConfiguration" => host_configuration(),
        "maxWorkerCount" => integer(),
        "minWorkerCount" => integer(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "targetWorkerCount" => integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerCount" => integer()
      }

  """
  @type get_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_to_queue_response() :: %{}

  """
  @type associate_member_to_queue_response() :: %{}

  @typedoc """

  ## Example:

      list_queue_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_queue_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_limit_association_request() :: %{}

  """
  @type get_queue_limit_association_request() :: %{}

  @typedoc """

  ## Example:

      delete_queue_limit_association_request() :: %{}

  """
  @type delete_queue_limit_association_request() :: %{}

  @typedoc """

  ## Example:

      farm_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "farmId" => String.t(),
        "kmsKeyArn" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type farm_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "displayName" => String.t(),
        "identityCenterApplicationArn" => String.t(),
        "identityCenterInstanceArn" => String.t(),
        "monitorId" => String.t(),
        "roleArn" => String.t(),
        "subdomain" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "url" => String.t()
      }

  """
  @type monitor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_from_farm_response() :: %{}

  """
  @type disassociate_member_from_farm_response() :: %{}

  @typedoc """

  ## Example:

      get_license_endpoint_request() :: %{}

  """
  @type get_license_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      parameter_filter_expression() :: %{
        "name" => String.t(),
        "operator" => list(any()),
        "value" => String.t()
      }

  """
  @type parameter_filter_expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farms_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t()
      }

  """
  @type list_farms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accelerator_count_range() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type accelerator_count_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_consumers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_step_consumers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step_details_identifiers() :: %{
        "jobId" => String.t(),
        "stepId" => String.t()
      }

  """
  @type step_details_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_fleet_role_for_worker_request() :: %{}

  """
  @type assume_fleet_role_for_worker_request() :: %{}

  @typedoc """

  ## Example:

      farm_member() :: %{
        "farmId" => String.t(),
        "identityStoreId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any())
      }

  """
  @type farm_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_response() :: %{
        "queueId" => String.t()
      }

  """
  @type create_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_capabilities() :: %{
        "amounts" => list(worker_amount_capability()),
        "attributes" => list(worker_attribute_capability())
      }

  """
  @type worker_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_search_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "fleetId" => String.t(),
        "hostProperties" => host_properties_response(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "workerId" => String.t()
      }

  """
  @type worker_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_farms_response() :: %{
        "farms" => list(farm_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_farms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_step_dependencies_response() :: %{
        "dependencies" => list(step_dependency()),
        "nextToken" => String.t()
      }

  """
  @type list_step_dependencies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_attachment_settings() :: %{
        "rootPrefix" => String.t(),
        "s3BucketName" => String.t()
      }

  """
  @type job_attachment_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_storage_profile_for_queue_response() :: %{
        "displayName" => String.t(),
        "fileSystemLocations" => list(file_system_location()),
        "osFamily" => list(any()),
        "storageProfileId" => String.t()
      }

  """
  @type get_storage_profile_for_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_member() :: %{
        "farmId" => String.t(),
        "fleetId" => String.t(),
        "identityStoreId" => String.t(),
        "membershipLevel" => list(any()),
        "principalId" => String.t(),
        "principalType" => list(any())
      }

  """
  @type fleet_member() :: %{String.t() => any()}

  @type associate_member_to_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type associate_member_to_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type associate_member_to_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type associate_member_to_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type assume_fleet_role_for_read_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type assume_fleet_role_for_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type assume_queue_role_for_read_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type assume_queue_role_for_user_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type assume_queue_role_for_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_job_entity_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type copy_job_template_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_license_endpoint_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_limit_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()

  @type create_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_queue_limit_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_license_endpoint_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_limit_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_metered_product_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_queue_limit_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_member_from_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disassociate_member_from_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_member_from_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disassociate_member_from_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_license_endpoint_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_limit_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_queue_limit_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_session_action_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_sessions_statistics_aggregation_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_step_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_storage_profile_for_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_task_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_available_metered_products_errors() ::
          throttling_exception() | internal_server_error_exception()

  @type list_budgets_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_farm_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_farms_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_fleet_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_fleets_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_job_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_job_parameter_definitions_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_jobs_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_license_endpoints_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_limits_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_metered_products_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_monitors_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_queue_environments_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_queue_fleet_associations_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_queue_limit_associations_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_queue_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_queues_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_session_actions_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_sessions_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_sessions_for_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_step_consumers_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_step_dependencies_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_steps_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_storage_profiles_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_storage_profiles_for_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_tasks_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_workers_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type put_metered_product_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_jobs_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_steps_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_tasks_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type search_workers_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type start_sessions_statistics_aggregation_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_budget_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_farm_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_fleet_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_job_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_limit_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_monitor_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_queue_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_queue_environment_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_queue_fleet_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_queue_limit_association_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_step_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_storage_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_task_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_worker_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_worker_schedule_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-10-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "deadline",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "deadline",
      signature_version: "v4",
      signing_name: "deadline",
      target_prefix: nil
    }
  end

  @doc """
  Assigns a farm membership level to a member.
  """
  @spec associate_member_to_farm(
          map(),
          String.t(),
          String.t(),
          associate_member_to_farm_request(),
          list()
        ) ::
          {:ok, associate_member_to_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_member_to_farm_errors()}
  def associate_member_to_farm(%Client{} = client, farm_id, principal_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Assigns a fleet membership level to a member.
  """
  @spec associate_member_to_fleet(
          map(),
          String.t(),
          String.t(),
          String.t(),
          associate_member_to_fleet_request(),
          list()
        ) ::
          {:ok, associate_member_to_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_member_to_fleet_errors()}
  def associate_member_to_fleet(
        %Client{} = client,
        farm_id,
        fleet_id,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Assigns a job membership level to a member
  """
  @spec associate_member_to_job(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          associate_member_to_job_request(),
          list()
        ) ::
          {:ok, associate_member_to_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_member_to_job_errors()}
  def associate_member_to_job(
        %Client{} = client,
        farm_id,
        job_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Assigns a queue membership level to a member
  """
  @spec associate_member_to_queue(
          map(),
          String.t(),
          String.t(),
          String.t(),
          associate_member_to_queue_request(),
          list()
        ) ::
          {:ok, associate_member_to_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_member_to_queue_errors()}
  def associate_member_to_queue(
        %Client{} = client,
        farm_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Get Amazon Web Services credentials from the fleet role.

  The IAM permissions of the credentials are scoped down to have read-only access.
  """
  @spec assume_fleet_role_for_read(map(), String.t(), String.t(), list()) ::
          {:ok, assume_fleet_role_for_read_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assume_fleet_role_for_read_errors()}
  def assume_fleet_role_for_read(%Client{} = client, farm_id, fleet_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/read-roles"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get credentials from the fleet role for a worker.
  """
  @spec assume_fleet_role_for_worker(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, assume_fleet_role_for_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assume_fleet_role_for_worker_errors()}
  def assume_fleet_role_for_worker(
        %Client{} = client,
        farm_id,
        fleet_id,
        worker_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/fleet-roles"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets Amazon Web Services credentials from the queue role.

  The IAM permissions of the credentials are scoped down to have read-only access.
  """
  @spec assume_queue_role_for_read(map(), String.t(), String.t(), list()) ::
          {:ok, assume_queue_role_for_read_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assume_queue_role_for_read_errors()}
  def assume_queue_role_for_read(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/read-roles"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Allows a user to assume a role for a queue.
  """
  @spec assume_queue_role_for_user(map(), String.t(), String.t(), list()) ::
          {:ok, assume_queue_role_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assume_queue_role_for_user_errors()}
  def assume_queue_role_for_user(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/user-roles"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Allows a worker to assume a queue role.
  """
  @spec assume_queue_role_for_worker(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, assume_queue_role_for_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assume_queue_role_for_worker_errors()}
  def assume_queue_role_for_worker(
        %Client{} = client,
        farm_id,
        fleet_id,
        worker_id,
        queue_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/queue-roles"

    headers = []
    query_params = []

    query_params =
      if !is_nil(queue_id) do
        [{"queueId", queue_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get batched job details for a worker.
  """
  @spec batch_get_job_entity(
          map(),
          String.t(),
          String.t(),
          String.t(),
          batch_get_job_entity_request(),
          list()
        ) ::
          {:ok, batch_get_job_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_job_entity_errors()}
  def batch_get_job_entity(%Client{} = client, farm_id, fleet_id, worker_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/batchGetJobEntity"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "scheduling.")

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
  Copies a job template to an Amazon S3 bucket.
  """
  @spec copy_job_template(
          map(),
          String.t(),
          String.t(),
          String.t(),
          copy_job_template_request(),
          list()
        ) ::
          {:ok, copy_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_job_template_errors()}
  def copy_job_template(%Client{} = client, farm_id, job_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/template"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a budget to set spending thresholds for your rendering activity.
  """
  @spec create_budget(map(), String.t(), create_budget_request(), list()) ::
          {:ok, create_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_budget_errors()}
  def create_budget(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a farm to allow space for queues and fleets.

  Farms are the space where the components of your renders gather and are pieced
  together in the cloud. Farms contain budgets and allow you to enforce
  permissions. Deadline Cloud farms are a useful container for large projects.
  """
  @spec create_farm(map(), create_farm_request(), list()) ::
          {:ok, create_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_farm_errors()}
  def create_farm(%Client{} = client, input, options \\ []) do
    url_path = "/2023-10-12/farms"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a fleet.

  Fleets gather information relating to compute, or capacity, for renders within
  your farms. You can choose to manage your own capacity or opt to have fleets
  fully managed by Deadline Cloud.
  """
  @spec create_fleet(map(), String.t(), create_fleet_request(), list()) ::
          {:ok, create_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a job.

  A job is a set of instructions that Deadline Cloud uses to schedule and run work
  on available workers. For more information, see [Deadline Cloud jobs](https://docs.aws.amazon.com/deadline-cloud/latest/userguide/deadline-cloud-jobs.html).
  """
  @spec create_job(map(), String.t(), String.t(), create_job_request(), list()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a license endpoint to integrate your various licensed software used for
  rendering on Deadline Cloud.
  """
  @spec create_license_endpoint(map(), create_license_endpoint_request(), list()) ::
          {:ok, create_license_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_license_endpoint_errors()}
  def create_license_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2023-10-12/license-endpoints"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a limit that manages the distribution of shared resources, such as
  floating licenses.

  A limit can throttle work assignments, help manage workloads, and track current
  usage. Before you use a limit, you must associate the limit with one or more
  queues.

  You must add the `amountRequirementName` to a step in a job template to declare
  the limit requirement.
  """
  @spec create_limit(map(), String.t(), create_limit_request(), list()) ::
          {:ok, create_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_limit_errors()}
  def create_limit(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/limits"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates an Amazon Web Services Deadline Cloud monitor that you can use to view
  your farms, queues, and fleets.

  After you submit a job, you can track the progress of the tasks and steps that
  make up the job, and then download the job's results.
  """
  @spec create_monitor(map(), create_monitor_request(), list()) ::
          {:ok, create_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_monitor_errors()}
  def create_monitor(%Client{} = client, input, options \\ []) do
    url_path = "/2023-10-12/monitors"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a queue to coordinate the order in which jobs run on a farm.

  A queue can also specify where to pull resources and indicate where to output
  completed jobs.
  """
  @spec create_queue(map(), String.t(), create_queue_request(), list()) ::
          {:ok, create_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_queue_errors()}
  def create_queue(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates an environment for a queue that defines how jobs in the queue run.
  """
  @spec create_queue_environment(
          map(),
          String.t(),
          String.t(),
          create_queue_environment_request(),
          list()
        ) ::
          {:ok, create_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_queue_environment_errors()}
  def create_queue_environment(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates an association between a queue and a fleet.
  """
  @spec create_queue_fleet_association(
          map(),
          String.t(),
          create_queue_fleet_association_request(),
          list()
        ) ::
          {:ok, create_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_queue_fleet_association_errors()}
  def create_queue_fleet_association(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Associates a limit with a particular queue.

  After the limit is associated, all workers for jobs that specify the limit
  associated with the queue are subject to the limit. You can't associate two
  limits with the same `amountRequirementName` to the same queue.
  """
  @spec create_queue_limit_association(
          map(),
          String.t(),
          create_queue_limit_association_request(),
          list()
        ) ::
          {:ok, create_queue_limit_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_queue_limit_association_errors()}
  def create_queue_limit_association(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-limit-associations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a storage profile that specifies the operating system, file type, and
  file location of resources used on a farm.
  """
  @spec create_storage_profile(map(), String.t(), create_storage_profile_request(), list()) ::
          {:ok, create_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_storage_profile_errors()}
  def create_storage_profile(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Creates a worker.

  A worker tells your instance how much processing power (vCPU), and memory (GiB)
  you’ll need to assemble the digital assets held within a particular instance.
  You can specify certain instance types to use, or let the worker know which
  instances types to exclude.

  Deadline Cloud limits the number of workers to less than or equal to the fleet's
  maximum worker count. The service maintains eventual consistency for the worker
  count. If you make multiple rapid calls to `CreateWorker` before the field
  updates, you might exceed your fleet's maximum worker count. For example, if
  your `maxWorkerCount` is 10 and you currently have 9 workers, making two quick
  `CreateWorker` calls might successfully create 2 workers instead of 1, resulting
  in 11 total workers.
  """
  @spec create_worker(map(), String.t(), String.t(), create_worker_request(), list()) ::
          {:ok, create_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_worker_errors()}
  def create_worker(%Client{} = client, farm_id, fleet_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "scheduling.")

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
  Deletes a budget.
  """
  @spec delete_budget(map(), String.t(), String.t(), delete_budget_request(), list()) ::
          {:ok, delete_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_budget_errors()}
  def delete_budget(%Client{} = client, budget_id, farm_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets/#{AWS.Util.encode_uri(budget_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a farm.
  """
  @spec delete_farm(map(), String.t(), delete_farm_request(), list()) ::
          {:ok, delete_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_farm_errors()}
  def delete_farm(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a fleet.
  """
  @spec delete_fleet(map(), String.t(), String.t(), delete_fleet_request(), list()) ::
          {:ok, delete_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, farm_id, fleet_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a license endpoint.
  """
  @spec delete_license_endpoint(map(), String.t(), delete_license_endpoint_request(), list()) ::
          {:ok, delete_license_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_license_endpoint_errors()}
  def delete_license_endpoint(%Client{} = client, license_endpoint_id, input, options \\ []) do
    url_path = "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Removes a limit from the specified farm.

  Before you delete a limit you must use the `DeleteQueueLimitAssociation`
  operation to remove the association with any queues.
  """
  @spec delete_limit(map(), String.t(), String.t(), delete_limit_request(), list()) ::
          {:ok, delete_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_limit_errors()}
  def delete_limit(%Client{} = client, farm_id, limit_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/limits/#{AWS.Util.encode_uri(limit_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a metered product.
  """
  @spec delete_metered_product(
          map(),
          String.t(),
          String.t(),
          delete_metered_product_request(),
          list()
        ) ::
          {:ok, delete_metered_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_metered_product_errors()}
  def delete_metered_product(
        %Client{} = client,
        license_endpoint_id,
        product_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}/metered-products/#{AWS.Util.encode_uri(product_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Removes a Deadline Cloud monitor.

  After you delete a monitor, you can create a new one and attach farms to the
  monitor.
  """
  @spec delete_monitor(map(), String.t(), delete_monitor_request(), list()) ::
          {:ok, delete_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_monitor_errors()}
  def delete_monitor(%Client{} = client, monitor_id, input, options \\ []) do
    url_path = "/2023-10-12/monitors/#{AWS.Util.encode_uri(monitor_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a queue.

  You can't recover the jobs in a queue if you delete the queue. Deleting the
  queue also deletes the jobs in that queue.
  """
  @spec delete_queue(map(), String.t(), String.t(), delete_queue_request(), list()) ::
          {:ok, delete_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queue_errors()}
  def delete_queue(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a queue environment.
  """
  @spec delete_queue_environment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_queue_environment_request(),
          list()
        ) ::
          {:ok, delete_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queue_environment_errors()}
  def delete_queue_environment(
        %Client{} = client,
        farm_id,
        queue_environment_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments/#{AWS.Util.encode_uri(queue_environment_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a queue-fleet association.
  """
  @spec delete_queue_fleet_association(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_queue_fleet_association_request(),
          list()
        ) ::
          {:ok, delete_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queue_fleet_association_errors()}
  def delete_queue_fleet_association(
        %Client{} = client,
        farm_id,
        fleet_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(fleet_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Removes the association between a queue and a limit.

  You must use the `UpdateQueueLimitAssociation` operation to set the status to
  `STOP_LIMIT_USAGE_AND_COMPLETE_TASKS` or `STOP_LIMIT_USAGE_AND_CANCEL_TASKS`.
  The status does not change immediately. Use the `GetQueueLimitAssociation`
  operation to see if the status changed to `STOPPED` before deleting the
  association.
  """
  @spec delete_queue_limit_association(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_queue_limit_association_request(),
          list()
        ) ::
          {:ok, delete_queue_limit_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queue_limit_association_errors()}
  def delete_queue_limit_association(
        %Client{} = client,
        farm_id,
        limit_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-limit-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(limit_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a storage profile.
  """
  @spec delete_storage_profile(
          map(),
          String.t(),
          String.t(),
          delete_storage_profile_request(),
          list()
        ) ::
          {:ok, delete_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_storage_profile_errors()}
  def delete_storage_profile(
        %Client{} = client,
        farm_id,
        storage_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Deletes a worker.
  """
  @spec delete_worker(map(), String.t(), String.t(), String.t(), delete_worker_request(), list()) ::
          {:ok, delete_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_worker_errors()}
  def delete_worker(%Client{} = client, farm_id, fleet_id, worker_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a farm.
  """
  @spec disassociate_member_from_farm(
          map(),
          String.t(),
          String.t(),
          disassociate_member_from_farm_request(),
          list()
        ) ::
          {:ok, disassociate_member_from_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_member_from_farm_errors()}
  def disassociate_member_from_farm(
        %Client{} = client,
        farm_id,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a fleet.
  """
  @spec disassociate_member_from_fleet(
          map(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_member_from_fleet_request(),
          list()
        ) ::
          {:ok, disassociate_member_from_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_member_from_fleet_errors()}
  def disassociate_member_from_fleet(
        %Client{} = client,
        farm_id,
        fleet_id,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a job.
  """
  @spec disassociate_member_from_job(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_member_from_job_request(),
          list()
        ) ::
          {:ok, disassociate_member_from_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_member_from_job_errors()}
  def disassociate_member_from_job(
        %Client{} = client,
        farm_id,
        job_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Disassociates a member from a queue.
  """
  @spec disassociate_member_from_queue(
          map(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_member_from_queue_request(),
          list()
        ) ::
          {:ok, disassociate_member_from_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_member_from_queue_errors()}
  def disassociate_member_from_queue(
        %Client{} = client,
        farm_id,
        principal_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/members/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Get a budget.
  """
  @spec get_budget(map(), String.t(), String.t(), list()) ::
          {:ok, get_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_budget_errors()}
  def get_budget(%Client{} = client, budget_id, farm_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets/#{AWS.Util.encode_uri(budget_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a farm.
  """
  @spec get_farm(map(), String.t(), list()) ::
          {:ok, get_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_farm_errors()}
  def get_farm(%Client{} = client, farm_id, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a fleet.
  """
  @spec get_fleet(map(), String.t(), String.t(), list()) ::
          {:ok, get_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_fleet_errors()}
  def get_fleet(%Client{} = client, farm_id, fleet_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a Deadline Cloud job.
  """
  @spec get_job(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, farm_id, job_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a licence endpoint.
  """
  @spec get_license_endpoint(map(), String.t(), list()) ::
          {:ok, get_license_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_license_endpoint_errors()}
  def get_license_endpoint(%Client{} = client, license_endpoint_id, options \\ []) do
    url_path = "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific limit.
  """
  @spec get_limit(map(), String.t(), String.t(), list()) ::
          {:ok, get_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_limit_errors()}
  def get_limit(%Client{} = client, farm_id, limit_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/limits/#{AWS.Util.encode_uri(limit_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified monitor.
  """
  @spec get_monitor(map(), String.t(), list()) ::
          {:ok, get_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_monitor_errors()}
  def get_monitor(%Client{} = client, monitor_id, options \\ []) do
    url_path = "/2023-10-12/monitors/#{AWS.Util.encode_uri(monitor_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a queue.
  """
  @spec get_queue(map(), String.t(), String.t(), list()) ::
          {:ok, get_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_queue_errors()}
  def get_queue(%Client{} = client, farm_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a queue environment.
  """
  @spec get_queue_environment(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_queue_environment_errors()}
  def get_queue_environment(
        %Client{} = client,
        farm_id,
        queue_environment_id,
        queue_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments/#{AWS.Util.encode_uri(queue_environment_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a queue-fleet association.
  """
  @spec get_queue_fleet_association(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_queue_fleet_association_errors()}
  def get_queue_fleet_association(%Client{} = client, farm_id, fleet_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(fleet_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific association between a queue and a limit.
  """
  @spec get_queue_limit_association(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_queue_limit_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_queue_limit_association_errors()}
  def get_queue_limit_association(%Client{} = client, farm_id, limit_id, queue_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-limit-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(limit_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a session.
  """
  @spec get_session(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, farm_id, job_id, queue_id, session_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a session action for the job.
  """
  @spec get_session_action(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_session_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_action_errors()}
  def get_session_action(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        session_action_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/session-actions/#{AWS.Util.encode_uri(session_action_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a set of statistics for queues or farms.

  Before you can call the `GetSessionStatisticsAggregation` operation, you must
  first call the `StartSessionsStatisticsAggregation` operation. Statistics are
  available for 1 hour after you call the `StartSessionsStatisticsAggregation`
  operation.
  """
  @spec get_sessions_statistics_aggregation(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_sessions_statistics_aggregation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sessions_statistics_aggregation_errors()}
  def get_sessions_statistics_aggregation(
        %Client{} = client,
        farm_id,
        aggregation_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/sessions-statistics-aggregation"
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

    query_params =
      if !is_nil(aggregation_id) do
        [{"aggregationId", aggregation_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a step.
  """
  @spec get_step(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_step_errors()}
  def get_step(%Client{} = client, farm_id, job_id, queue_id, step_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a storage profile.
  """
  @spec get_storage_profile(map(), String.t(), String.t(), list()) ::
          {:ok, get_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_storage_profile_errors()}
  def get_storage_profile(%Client{} = client, farm_id, storage_profile_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a storage profile for a queue.
  """
  @spec get_storage_profile_for_queue(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_storage_profile_for_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_storage_profile_for_queue_errors()}
  def get_storage_profile_for_queue(
        %Client{} = client,
        farm_id,
        queue_id,
        storage_profile_id,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a task.
  """
  @spec get_task(map(), String.t(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_task_errors()}
  def get_task(%Client{} = client, farm_id, job_id, queue_id, step_id, task_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/tasks/#{AWS.Util.encode_uri(task_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a worker.
  """
  @spec get_worker(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_worker_errors()}
  def get_worker(%Client{} = client, farm_id, fleet_id, worker_id, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of the available metered products.
  """
  @spec list_available_metered_products(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_available_metered_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_metered_products_errors()}
  def list_available_metered_products(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/metered-products"
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of budgets in a farm.
  """
  @spec list_budgets(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_budgets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_budgets_errors()}
  def list_budgets(
        %Client{} = client,
        farm_id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the members of a farm.
  """
  @spec list_farm_members(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_farm_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_farm_members_errors()}
  def list_farm_members(
        %Client{} = client,
        farm_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/members"
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists farms.
  """
  @spec list_farms(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_farms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_farms_errors()}
  def list_farms(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        principal_id \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms"
    headers = []
    query_params = []

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists fleet members.
  """
  @spec list_fleet_members(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_fleet_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fleet_members_errors()}
  def list_fleet_members(
        %Client{} = client,
        farm_id,
        fleet_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/members"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists fleets.
  """
  @spec list_fleets(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fleets_errors()}
  def list_fleets(
        %Client{} = client,
        farm_id,
        display_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        principal_id \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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
      if !is_nil(display_name) do
        [{"displayName", display_name} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists members on a job.
  """
  @spec list_job_members(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_job_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_members_errors()}
  def list_job_members(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/members"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists parameter definitions of a job.
  """
  @spec list_job_parameter_definitions(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_job_parameter_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_parameter_definitions_errors()}
  def list_job_parameter_definitions(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/parameter-definitions"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists jobs.
  """
  @spec list_jobs(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(
        %Client{} = client,
        farm_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        principal_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists license endpoints.
  """
  @spec list_license_endpoints(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_license_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_license_endpoints_errors()}
  def list_license_endpoints(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/license-endpoints"
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of limits defined in the specified farm.
  """
  @spec list_limits(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_limits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_limits_errors()}
  def list_limits(
        %Client{} = client,
        farm_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/limits"
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists metered products.
  """
  @spec list_metered_products(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_metered_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_metered_products_errors()}
  def list_metered_products(
        %Client{} = client,
        license_endpoint_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}/metered-products"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of your monitors in Deadline Cloud.
  """
  @spec list_monitors(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_monitors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_monitors_errors()}
  def list_monitors(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2023-10-12/monitors"
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists queue environments.
  """
  @spec list_queue_environments(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queue_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queue_environments_errors()}
  def list_queue_environments(
        %Client{} = client,
        farm_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists queue-fleet associations.
  """
  @spec list_queue_fleet_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queue_fleet_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queue_fleet_associations_errors()}
  def list_queue_fleet_associations(
        %Client{} = client,
        farm_id,
        fleet_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        queue_id \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(queue_id) do
        [{"queueId", queue_id} | query_params]
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
      if !is_nil(fleet_id) do
        [{"fleetId", fleet_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of the associations between queues and limits defined in a farm.
  """
  @spec list_queue_limit_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queue_limit_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queue_limit_associations_errors()}
  def list_queue_limit_associations(
        %Client{} = client,
        farm_id,
        limit_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        queue_id \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-limit-associations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(queue_id) do
        [{"queueId", queue_id} | query_params]
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
      if !is_nil(limit_id) do
        [{"limitId", limit_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the members in a queue.
  """
  @spec list_queue_members(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queue_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queue_members_errors()}
  def list_queue_members(
        %Client{} = client,
        farm_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/members"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists queues.
  """
  @spec list_queues(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queues_errors()}
  def list_queues(
        %Client{} = client,
        farm_id,
        max_results \\ nil,
        next_token \\ nil,
        principal_id \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists session actions.
  """
  @spec list_session_actions(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_session_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_session_actions_errors()}
  def list_session_actions(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        session_id \\ nil,
        task_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/session-actions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_id) do
        [{"sessionId", session_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists sessions.
  """
  @spec list_sessions(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_errors()}
  def list_sessions(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/sessions"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists sessions for a worker.
  """
  @spec list_sessions_for_worker(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_sessions_for_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_for_worker_errors()}
  def list_sessions_for_worker(
        %Client{} = client,
        farm_id,
        fleet_id,
        worker_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/sessions"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists step consumers.
  """
  @spec list_step_consumers(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_step_consumers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_step_consumers_errors()}
  def list_step_consumers(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        step_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/consumers"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the dependencies for a step.
  """
  @spec list_step_dependencies(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_step_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_step_dependencies_errors()}
  def list_step_dependencies(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        step_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/dependencies"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists steps for a job.
  """
  @spec list_steps(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_steps_errors()}
  def list_steps(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists storage profiles.
  """
  @spec list_storage_profiles(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_storage_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_storage_profiles_errors()}
  def list_storage_profiles(
        %Client{} = client,
        farm_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles"
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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists storage profiles for a queue.
  """
  @spec list_storage_profiles_for_queue(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_storage_profiles_for_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_storage_profiles_for_queue_errors()}
  def list_storage_profiles_for_queue(
        %Client{} = client,
        farm_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/storage-profiles"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2023-10-12/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tasks for a job.
  """
  @spec list_tasks(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tasks_errors()}
  def list_tasks(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        step_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/tasks"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists workers.
  """
  @spec list_workers(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_workers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workers_errors()}
  def list_workers(
        %Client{} = client,
        farm_id,
        fleet_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers"

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

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds a metered product.
  """
  @spec put_metered_product(map(), String.t(), String.t(), put_metered_product_request(), list()) ::
          {:ok, put_metered_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_metered_product_errors()}
  def put_metered_product(
        %Client{} = client,
        license_endpoint_id,
        product_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/license-endpoints/#{AWS.Util.encode_uri(license_endpoint_id)}/metered-products/#{AWS.Util.encode_uri(product_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Searches for jobs.
  """
  @spec search_jobs(map(), String.t(), search_jobs_request(), list()) ::
          {:ok, search_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_jobs_errors()}
  def search_jobs(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/jobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Searches for steps.
  """
  @spec search_steps(map(), String.t(), search_steps_request(), list()) ::
          {:ok, search_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_steps_errors()}
  def search_steps(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/steps"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Searches for tasks.
  """
  @spec search_tasks(map(), String.t(), search_tasks_request(), list()) ::
          {:ok, search_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_tasks_errors()}
  def search_tasks(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/tasks"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Searches for workers.
  """
  @spec search_workers(map(), String.t(), search_workers_request(), list()) ::
          {:ok, search_workers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_workers_errors()}
  def search_workers(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/search/workers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Starts an asynchronous request for getting aggregated statistics about queues
  and farms.

  Get the statistics using the `GetSessionsStatisticsAggregation` operation. You
  can only have one running aggregation for your Deadline Cloud farm. Call the
  `GetSessionsStatisticsAggregation` operation and check the `status` field to see
  if an aggregation is running. Statistics are available for 1 hour after you call
  the `StartSessionsStatisticsAggregation` operation.
  """
  @spec start_sessions_statistics_aggregation(
          map(),
          String.t(),
          start_sessions_statistics_aggregation_request(),
          list()
        ) ::
          {:ok, start_sessions_statistics_aggregation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_sessions_statistics_aggregation_errors()}
  def start_sessions_statistics_aggregation(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/sessions-statistics-aggregation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Tags a resource using the resource's ARN and desired tags.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2023-10-12/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes a tag from a resource using the resource's ARN and tag to remove.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2023-10-12/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

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
  Updates a budget that sets spending thresholds for rendering activity.
  """
  @spec update_budget(map(), String.t(), String.t(), update_budget_request(), list()) ::
          {:ok, update_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_budget_errors()}
  def update_budget(%Client{} = client, budget_id, farm_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/budgets/#{AWS.Util.encode_uri(budget_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a farm.
  """
  @spec update_farm(map(), String.t(), update_farm_request(), list()) ::
          {:ok, update_farm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_farm_errors()}
  def update_farm(%Client{} = client, farm_id, input, options \\ []) do
    url_path = "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a fleet.
  """
  @spec update_fleet(map(), String.t(), String.t(), update_fleet_request(), list()) ::
          {:ok, update_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fleet_errors()}
  def update_fleet(%Client{} = client, farm_id, fleet_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a job.

  When you change the status of the job to `ARCHIVED`, the job can't be scheduled
  or archived.

  An archived jobs and its steps and tasks are deleted after 120 days. The job
  can't be recovered.
  """
  @spec update_job(map(), String.t(), String.t(), String.t(), update_job_request(), list()) ::
          {:ok, update_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_job_errors()}
  def update_job(%Client{} = client, farm_id, job_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the properties of the specified limit.
  """
  @spec update_limit(map(), String.t(), String.t(), update_limit_request(), list()) ::
          {:ok, update_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_limit_errors()}
  def update_limit(%Client{} = client, farm_id, limit_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/limits/#{AWS.Util.encode_uri(limit_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Modifies the settings for a Deadline Cloud monitor.

  You can modify one or all of the settings when you call `UpdateMonitor`.
  """
  @spec update_monitor(map(), String.t(), update_monitor_request(), list()) ::
          {:ok, update_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_monitor_errors()}
  def update_monitor(%Client{} = client, monitor_id, input, options \\ []) do
    url_path = "/2023-10-12/monitors/#{AWS.Util.encode_uri(monitor_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a queue.
  """
  @spec update_queue(map(), String.t(), String.t(), update_queue_request(), list()) ::
          {:ok, update_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_errors()}
  def update_queue(%Client{} = client, farm_id, queue_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the queue environment.
  """
  @spec update_queue_environment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_queue_environment_request(),
          list()
        ) ::
          {:ok, update_queue_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_environment_errors()}
  def update_queue_environment(
        %Client{} = client,
        farm_id,
        queue_environment_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/environments/#{AWS.Util.encode_uri(queue_environment_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a queue-fleet association.
  """
  @spec update_queue_fleet_association(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_queue_fleet_association_request(),
          list()
        ) ::
          {:ok, update_queue_fleet_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_fleet_association_errors()}
  def update_queue_fleet_association(
        %Client{} = client,
        farm_id,
        fleet_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-fleet-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(fleet_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the status of the queue.

  If you set the status to one of the `STOP_LIMIT_USAGE*` values, there will be a
  delay before the status transitions to the `STOPPED` state.
  """
  @spec update_queue_limit_association(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_queue_limit_association_request(),
          list()
        ) ::
          {:ok, update_queue_limit_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_limit_association_errors()}
  def update_queue_limit_association(
        %Client{} = client,
        farm_id,
        limit_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queue-limit-associations/#{AWS.Util.encode_uri(queue_id)}/#{AWS.Util.encode_uri(limit_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a session.
  """
  @spec update_session(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_session_request(),
          list()
        ) ::
          {:ok, update_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_session_errors()}
  def update_session(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a step.
  """
  @spec update_step(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_step_request(),
          list()
        ) ::
          {:ok, update_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_step_errors()}
  def update_step(%Client{} = client, farm_id, job_id, queue_id, step_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a storage profile.
  """
  @spec update_storage_profile(
          map(),
          String.t(),
          String.t(),
          update_storage_profile_request(),
          list()
        ) ::
          {:ok, update_storage_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_storage_profile_errors()}
  def update_storage_profile(
        %Client{} = client,
        farm_id,
        storage_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/storage-profiles/#{AWS.Util.encode_uri(storage_profile_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a task.
  """
  @spec update_task(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_task_request(),
          list()
        ) ::
          {:ok, update_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_task_errors()}
  def update_task(
        %Client{} = client,
        farm_id,
        job_id,
        queue_id,
        step_id,
        task_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/queues/#{AWS.Util.encode_uri(queue_id)}/jobs/#{AWS.Util.encode_uri(job_id)}/steps/#{AWS.Util.encode_uri(step_id)}/tasks/#{AWS.Util.encode_uri(task_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "management.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a worker.
  """
  @spec update_worker(map(), String.t(), String.t(), String.t(), update_worker_request(), list()) ::
          {:ok, update_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_worker_errors()}
  def update_worker(%Client{} = client, farm_id, fleet_id, worker_id, input, options \\ []) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the schedule for a worker.
  """
  @spec update_worker_schedule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_worker_schedule_request(),
          list()
        ) ::
          {:ok, update_worker_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_worker_schedule_errors()}
  def update_worker_schedule(
        %Client{} = client,
        farm_id,
        fleet_id,
        worker_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2023-10-12/farms/#{AWS.Util.encode_uri(farm_id)}/fleets/#{AWS.Util.encode_uri(fleet_id)}/workers/#{AWS.Util.encode_uri(worker_id)}/schedule"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "scheduling.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
