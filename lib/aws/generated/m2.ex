# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.M2 do
  @moduledoc """
  Amazon Web Services Mainframe Modernization provides tools and resources to help
  you plan and implement migration and
  modernization from mainframes to Amazon Web Services managed runtime
  environments.

  It provides tools for
  analyzing existing mainframe applications, developing or updating mainframe
  applications
  using COBOL or PL/I, and implementing an automated pipeline for continuous
  integration and
  continuous delivery (CI/CD) of the applications.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      record_length() :: %{
        "max" => integer(),
        "min" => integer()
      }

  """
  @type record_length() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alternate_key() :: %{
        "allowDuplicates" => boolean(),
        "length" => integer(),
        "name" => [String.t() | atom()],
        "offset" => integer()
      }

  """
  @type alternate_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_batch_job_executions_request() :: %{
        optional("executionIds") => list(String.t() | atom()),
        optional("jobName") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("startedAfter") => non_neg_integer(),
        optional("startedBefore") => non_neg_integer(),
        optional("status") => String.t() | atom()
      }

  """
  @type list_batch_job_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_response() :: %{
        required("environmentId") => String.t() | atom()
      }

  """
  @type update_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_deployments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pending_maintenance() :: %{
        "engineVersion" => [String.t() | atom()],
        "schedule" => maintenance_schedule()
      }

  """
  @type pending_maintenance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_summary() :: %{
        "applicationId" => String.t() | atom(),
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "deploymentId" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type deployment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_set_export_history_response() :: %{
        "dataSetExportTasks" => list(data_set_export_task()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_set_export_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      file_batch_job_identifier() :: %{
        "fileName" => [String.t() | atom()],
        "folderPath" => [String.t() | atom()]
      }

  """
  @type file_batch_job_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_sets_response() :: %{
        "dataSets" => list(data_set_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_step() :: %{
        "procStepName" => [String.t() | atom()],
        "procStepNumber" => integer(),
        "stepCheckpoint" => integer(),
        "stepCheckpointStatus" => [String.t() | atom()],
        "stepCheckpointTime" => non_neg_integer(),
        "stepCondCode" => [String.t() | atom()],
        "stepName" => [String.t() | atom()],
        "stepNumber" => integer(),
        "stepRestartable" => boolean()
      }

  """
  @type job_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_set_import_task_response() :: %{
        required("taskId") => String.t() | atom()
      }

  """
  @type create_data_set_import_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_batch_job_execution_request() :: %{}

  """
  @type get_batch_job_execution_request() :: %{}

  @typedoc """

  ## Example:

      delete_application_from_environment_request() :: %{}

  """
  @type delete_application_from_environment_request() :: %{}

  @typedoc """

  ## Example:

      job_step_restart_marker() :: %{
        "fromProcStep" => [String.t() | atom()],
        "fromStep" => [String.t() | atom()],
        "skip" => boolean(),
        "stepCheckpoint" => integer(),
        "toProcStep" => [String.t() | atom()],
        "toStep" => [String.t() | atom()]
      }

  """
  @type job_step_restart_marker() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_set() :: %{
        "datasetName" => [String.t() | atom()],
        "datasetOrg" => list(),
        "recordLength" => record_length(),
        "relativePath" => [String.t() | atom()],
        "storageType" => [String.t() | atom()]
      }

  """
  @type data_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployments_response() :: %{
        "deployments" => list(deployment_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_deployments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_set_export_history_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_set_export_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_set_export_task() :: %{
        "status" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "summary" => data_set_export_summary(),
        "taskId" => String.t() | atom()
      }

  """
  @type data_set_export_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vsam_attributes() :: %{
        "alternateKeys" => list(alternate_key()),
        "compressed" => boolean(),
        "encoding" => [String.t() | atom()],
        "format" => [String.t() | atom()],
        "primaryKey" => primary_key()
      }

  """
  @type vsam_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployed_version_summary() :: %{
        "applicationVersion" => integer(),
        "status" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type deployed_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_summary() :: %{
        "creationTime" => non_neg_integer(),
        "engineType" => String.t() | atom(),
        "engineVersion" => String.t() | atom(),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "instanceType" => String.t() | atom(),
        "name" => String.t() | atom(),
        "networkType" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type environment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_request() :: %{}

  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        "applicationVersion" => integer(),
        "clientToken" => String.t() | atom(),
        "environmentId" => String.t() | atom()
      }

  """
  @type create_deployment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vsam_detail_attributes() :: %{
        "alternateKeys" => list(alternate_key()),
        "cacheAtStartup" => boolean(),
        "compressed" => boolean(),
        "encoding" => String.t() | atom(),
        "primaryKey" => primary_key(),
        "recordFormat" => String.t() | atom()
      }

  """
  @type vsam_detail_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_sets_request() :: %{
        optional("maxResults") => integer(),
        optional("nameFilter") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("prefix") => String.t() | atom()
      }

  """
  @type list_data_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_set_details_response() :: %{
        "blocksize" => integer(),
        "creationTime" => non_neg_integer(),
        "dataSetName" => String.t() | atom(),
        "dataSetOrg" => list(),
        "fileSize" => [float()],
        "lastReferencedTime" => non_neg_integer(),
        "lastUpdatedTime" => non_neg_integer(),
        "location" => String.t() | atom(),
        "recordLength" => integer()
      }

  """
  @type get_data_set_details_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_set_details_request() :: %{}

  """
  @type get_data_set_details_request() :: %{}

  @typedoc """

  ## Example:

      application_version_summary() :: %{
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "status" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type application_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_response() :: %{
        required("deploymentId") => String.t() | atom()
      }

  """
  @type create_deployment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_response() :: %{
        optional("actualCapacity") => integer(),
        optional("description") => String.t() | atom(),
        optional("highAvailabilityConfig") => high_availability_config(),
        optional("kmsKeyId") => [String.t() | atom()],
        optional("loadBalancerArn") => [String.t() | atom()],
        optional("networkType") => String.t() | atom(),
        optional("pendingMaintenance") => pending_maintenance(),
        optional("preferredMaintenanceWindow") => String.t() | atom(),
        optional("publiclyAccessible") => boolean(),
        optional("statusReason") => [String.t() | atom()],
        optional("storageConfigurations") => list(list()),
        optional("tags") => map(),
        required("creationTime") => non_neg_integer(),
        required("engineType") => String.t() | atom(),
        required("engineVersion") => String.t() | atom(),
        required("environmentArn") => String.t() | atom(),
        required("environmentId") => String.t() | atom(),
        required("instanceType") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("securityGroupIds") => list(String.t() | atom()),
        required("status") => String.t() | atom(),
        required("subnetIds") => list(String.t() | atom()),
        required("vpcId") => String.t() | atom()
      }

  """
  @type get_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gdg_detail_attributes() :: %{
        "limit" => integer(),
        "rollDisposition" => String.t() | atom()
      }

  """
  @type gdg_detail_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      restart_batch_job_identifier() :: %{
        "executionId" => String.t() | atom(),
        "jobStepRestartMarker" => job_step_restart_marker()
      }

  """
  @type restart_batch_job_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      script_batch_job_identifier() :: %{
        "scriptName" => [String.t() | atom()]
      }

  """
  @type script_batch_job_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      engine_versions_summary() :: %{
        "engineType" => [String.t() | atom()],
        "engineVersion" => [String.t() | atom()]
      }

  """
  @type engine_versions_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ps_attributes() :: %{
        "encoding" => [String.t() | atom()],
        "format" => [String.t() | atom()]
      }

  """
  @type ps_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_batch_job_execution_request() :: %{
        optional("authSecretsManagerArn") => String.t() | atom()
      }

  """
  @type cancel_batch_job_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      high_availability_config() :: %{
        "desiredCapacity" => integer()
      }

  """
  @type high_availability_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_batch_job_restart_points_request() :: %{
        optional("authSecretsManagerArn") => String.t() | atom()
      }

  """
  @type list_batch_job_restart_points_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      script_batch_job_definition() :: %{
        "scriptName" => [String.t() | atom()]
      }

  """
  @type script_batch_job_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_version_request() :: %{}

  """
  @type get_application_version_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_request() :: %{}

  """
  @type get_deployment_request() :: %{}

  @typedoc """

  ## Example:

      stop_application_request() :: %{
        optional("forceStop") => boolean()
      }

  """
  @type stop_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_set_export_summary() :: %{
        "failed" => integer(),
        "inProgress" => integer(),
        "pending" => integer(),
        "succeeded" => integer(),
        "total" => integer()
      }

  """
  @type data_set_export_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_set_summary() :: %{
        "creationTime" => non_neg_integer(),
        "dataSetName" => String.t() | atom(),
        "dataSetOrg" => String.t() | atom(),
        "format" => String.t() | atom(),
        "lastReferencedTime" => non_neg_integer(),
        "lastUpdatedTime" => non_neg_integer()
      }

  """
  @type data_set_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      po_attributes() :: %{
        "encoding" => [String.t() | atom()],
        "format" => [String.t() | atom()],
        "memberFileExtensions" => list(String.t() | atom())
      }

  """
  @type po_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("kmsKeyId") => [String.t() | atom()],
        optional("roleArn") => String.t() | atom(),
        optional("tags") => map(),
        required("definition") => list(),
        required("engineType") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_request() :: %{
        optional("engineType") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("names") => list(String.t() | atom()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_environments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_set_import_summary() :: %{
        "failed" => integer(),
        "inProgress" => integer(),
        "pending" => integer(),
        "succeeded" => integer(),
        "total" => integer()
      }

  """
  @type data_set_import_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_group_summary() :: %{
        "logGroupName" => String.t() | atom(),
        "logType" => String.t() | atom()
      }

  """
  @type log_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        required("applicationArn") => String.t() | atom(),
        required("applicationId") => String.t() | atom(),
        required("applicationVersion") => integer()
      }

  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_timeout_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type execution_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_set_import_history_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_set_import_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_set_export_task_request() :: %{}

  """
  @type get_data_set_export_task_request() :: %{}

  @typedoc """

  ## Example:

      create_data_set_import_task_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("importConfig") => list()
      }

  """
  @type create_data_set_import_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      efs_storage_configuration() :: %{
        "fileSystemId" => String.t() | atom(),
        "mountPoint" => String.t() | atom()
      }

  """
  @type efs_storage_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      start_application_response() :: %{}

  """
  @type start_application_response() :: %{}

  @typedoc """

  ## Example:

      create_environment_response() :: %{
        required("environmentId") => String.t() | atom()
      }

  """
  @type create_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      po_detail_attributes() :: %{
        "encoding" => [String.t() | atom()],
        "format" => [String.t() | atom()]
      }

  """
  @type po_detail_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("definition") => list(),
        optional("description") => String.t() | atom(),
        required("currentApplicationVersion") => integer()
      }

  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        required("applicationVersion") => integer()
      }

  """
  @type update_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_batch_job_restart_points_response() :: %{
        "batchJobSteps" => list(job_step())
      }

  """
  @type list_batch_job_restart_points_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_signed_bluinsights_url_response() :: %{
        "signedBiUrl" => [String.t() | atom()]
      }

  """
  @type get_signed_bluinsights_url_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_request() :: %{}

  """
  @type delete_environment_request() :: %{}

  @typedoc """

  ## Example:

      data_set_export_item() :: %{
        "datasetName" => String.t() | atom(),
        "externalLocation" => list()
      }

  """
  @type data_set_export_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_application_request() :: %{}

  """
  @type start_application_request() :: %{}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        optional("deployedVersion") => deployed_version_summary(),
        optional("description") => String.t() | atom(),
        optional("environmentId") => String.t() | atom(),
        optional("kmsKeyId") => [String.t() | atom()],
        optional("lastStartTime") => non_neg_integer(),
        optional("listenerArns") => list(String.t() | atom()),
        optional("listenerPorts") => list(integer()),
        optional("loadBalancerDnsName") => String.t() | atom(),
        optional("logGroups") => list(log_group_summary()),
        optional("roleArn") => String.t() | atom(),
        optional("statusReason") => [String.t() | atom()],
        optional("tags") => map(),
        optional("targetGroupArns") => list(String.t() | atom()),
        required("applicationArn") => String.t() | atom(),
        required("applicationId") => String.t() | atom(),
        required("creationTime") => non_neg_integer(),
        required("engineType") => String.t() | atom(),
        required("latestVersion") => application_version_summary(),
        required("name") => String.t() | atom(),
        required("status") => String.t() | atom()
      }

  """
  @type get_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("environmentId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("names") => list(String.t() | atom()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_batch_job_identifier() :: %{
        "bucket" => [String.t() | atom()],
        "identifier" => list(),
        "keyPrefix" => [String.t() | atom()]
      }

  """
  @type s3_batch_job_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_application_response() :: %{}

  """
  @type stop_application_response() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      file_batch_job_definition() :: %{
        "fileName" => [String.t() | atom()],
        "folderPath" => [String.t() | atom()]
      }

  """
  @type file_batch_job_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_set_export_task_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        required("exportConfig") => list()
      }

  """
  @type create_data_set_export_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_batch_job_execution_response() :: %{
        optional("batchJobIdentifier") => list(),
        optional("endTime") => non_neg_integer(),
        optional("jobId") => String.t() | atom(),
        optional("jobName") => String.t() | atom(),
        optional("jobStepRestartMarker") => job_step_restart_marker(),
        optional("jobType") => String.t() | atom(),
        optional("jobUser") => String.t() | atom(),
        optional("returnCode") => [String.t() | atom()],
        optional("statusReason") => [String.t() | atom()],
        required("applicationId") => String.t() | atom(),
        required("executionId") => String.t() | atom(),
        required("startTime") => non_neg_integer(),
        required("status") => String.t() | atom()
      }

  """
  @type get_batch_job_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_batch_job_definitions_response() :: %{
        "batchJobDefinitions" => list(list()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_batch_job_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fsx_storage_configuration() :: %{
        "fileSystemId" => String.t() | atom(),
        "mountPoint" => String.t() | atom()
      }

  """
  @type fsx_storage_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_set_export_task_response() :: %{
        "kmsKeyArn" => [String.t() | atom()],
        "status" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "summary" => data_set_export_summary(),
        "taskId" => String.t() | atom()
      }

  """
  @type get_data_set_export_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      data_set_import_item() :: %{
        "dataSet" => data_set(),
        "externalLocation" => list()
      }

  """
  @type data_set_import_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gdg_attributes() :: %{
        "limit" => integer(),
        "rollDisposition" => [String.t() | atom()]
      }

  """
  @type gdg_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_response() :: %{
        optional("statusReason") => [String.t() | atom()],
        required("applicationId") => String.t() | atom(),
        required("applicationVersion") => integer(),
        required("creationTime") => non_neg_integer(),
        required("deploymentId") => String.t() | atom(),
        required("environmentId") => String.t() | atom(),
        required("status") => String.t() | atom()
      }

  """
  @type get_deployment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "retryAfterSeconds" => integer(),
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_batch_job_executions_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("batchJobExecutions") => list(batch_job_execution_summary())
      }

  """
  @type list_batch_job_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_application_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_application_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_engine_versions_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("engineVersions") => list(engine_versions_summary())
      }

  """
  @type list_engine_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_response() :: %{
        "environments" => list(environment_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      maintenance_schedule() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer()
      }

  """
  @type maintenance_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_version_response() :: %{
        optional("description") => String.t() | atom(),
        optional("statusReason") => [String.t() | atom()],
        required("applicationVersion") => integer(),
        required("creationTime") => non_neg_integer(),
        required("definitionContent") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("status") => String.t() | atom()
      }

  """
  @type get_application_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "applicationArn" => String.t() | atom(),
        "applicationId" => String.t() | atom(),
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "deploymentStatus" => String.t() | atom(),
        "description" => String.t() | atom(),
        "engineType" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastStartTime" => non_neg_integer(),
        "name" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "status" => String.t() | atom(),
        "versionStatus" => String.t() | atom()
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applications" => list(application_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_application_versions_response() :: %{
        "applicationVersions" => list(application_version_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_application_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("engineVersion") => String.t() | atom(),
        optional("highAvailabilityConfig") => high_availability_config(),
        optional("kmsKeyId") => [String.t() | atom()],
        optional("networkType") => String.t() | atom(),
        optional("preferredMaintenanceWindow") => String.t() | atom(),
        optional("publiclyAccessible") => boolean(),
        optional("securityGroupIds") => list(String.t() | atom()),
        optional("storageConfigurations") => list(list()),
        optional("subnetIds") => list(String.t() | atom()),
        optional("tags") => map(),
        required("engineType") => String.t() | atom(),
        required("instanceType") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_batch_job_execution_response() :: %{}

  """
  @type cancel_batch_job_execution_response() :: %{}

  @typedoc """

  ## Example:

      update_environment_request() :: %{
        optional("applyDuringMaintenanceWindow") => boolean(),
        optional("desiredCapacity") => integer(),
        optional("engineVersion") => String.t() | atom(),
        optional("forceUpdate") => boolean(),
        optional("instanceType") => String.t() | atom(),
        optional("preferredMaintenanceWindow") => [String.t() | atom()]
      }

  """
  @type update_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_batch_job_response() :: %{
        required("executionId") => String.t() | atom()
      }

  """
  @type start_batch_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_set_import_history_response() :: %{
        "dataSetImportTasks" => list(data_set_import_task()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_set_import_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_from_environment_response() :: %{}

  """
  @type delete_application_from_environment_response() :: %{}

  @typedoc """

  ## Example:

      start_batch_job_request() :: %{
        optional("authSecretsManagerArn") => String.t() | atom(),
        optional("jobParams") => map(),
        required("batchJobIdentifier") => list()
      }

  """
  @type start_batch_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_set_import_task_request() :: %{}

  """
  @type get_data_set_import_task_request() :: %{}

  @typedoc """

  ## Example:

      list_engine_versions_request() :: %{
        optional("engineType") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_engine_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      primary_key() :: %{
        "length" => integer(),
        "name" => [String.t() | atom()],
        "offset" => integer()
      }

  """
  @type primary_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      ps_detail_attributes() :: %{
        "encoding" => [String.t() | atom()],
        "format" => [String.t() | atom()]
      }

  """
  @type ps_detail_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_batch_job_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("prefix") => [String.t() | atom()]
      }

  """
  @type list_batch_job_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_response() :: %{}

  """
  @type delete_environment_response() :: %{}

  @typedoc """

  ## Example:

      create_data_set_export_task_response() :: %{
        "taskId" => String.t() | atom()
      }

  """
  @type create_data_set_export_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_job_execution_summary() :: %{
        "applicationId" => String.t() | atom(),
        "batchJobIdentifier" => list(),
        "endTime" => non_neg_integer(),
        "executionId" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "jobType" => String.t() | atom(),
        "returnCode" => [String.t() | atom()],
        "startTime" => non_neg_integer(),
        "status" => String.t() | atom()
      }

  """
  @type batch_job_execution_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      get_data_set_import_task_response() :: %{
        optional("summary") => data_set_import_summary(),
        required("status") => String.t() | atom(),
        required("taskId") => String.t() | atom()
      }

  """
  @type get_data_set_import_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_set_import_task() :: %{
        "status" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "summary" => data_set_import_summary(),
        "taskId" => String.t() | atom()
      }

  """
  @type data_set_import_task() :: %{(String.t() | atom()) => any()}

  @type cancel_batch_job_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_data_set_export_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_set_import_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_application_from_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_batch_job_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_set_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | execution_timeout_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_set_export_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_set_import_task_errors() ::
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

  @type get_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_signed_bluinsights_url_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type list_application_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_batch_job_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_batch_job_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_batch_job_restart_points_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_set_export_history_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_set_import_history_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | execution_timeout_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_deployments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_engine_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_batch_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-04-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "m2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "m2",
      signature_version: "v4",
      signing_name: "m2",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the running of a specific batch job execution.
  """
  @spec cancel_batch_job_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_batch_job_execution_request(),
          list()
        ) ::
          {:ok, cancel_batch_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_batch_job_execution_errors()}
  def cancel_batch_job_execution(
        %Client{} = client,
        application_id,
        execution_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}/cancel"

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
  Creates a new application with given parameters.

  Requires an existing runtime
  environment and application definition file.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
  Starts a data set export task for a specific application.
  """
  @spec create_data_set_export_task(
          map(),
          String.t() | atom(),
          create_data_set_export_task_request(),
          list()
        ) ::
          {:ok, create_data_set_export_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_set_export_task_errors()}
  def create_data_set_export_task(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-export-task"
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
  Starts a data set import task for a specific application.
  """
  @spec create_data_set_import_task(
          map(),
          String.t() | atom(),
          create_data_set_import_task_request(),
          list()
        ) ::
          {:ok, create_data_set_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_set_import_task_errors()}
  def create_data_set_import_task(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-task"
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
  Creates and starts a deployment to deploy an application into a runtime
  environment.
  """
  @spec create_deployment(map(), String.t() | atom(), create_deployment_request(), list()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/deployments"
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
  Creates a runtime environment for a given runtime engine.
  """
  @spec create_environment(map(), create_environment_request(), list()) ::
          {:ok, create_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environments"
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
  Deletes a specific application.

  You cannot delete a running application.
  """
  @spec delete_application(map(), String.t() | atom(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
  Deletes a specific application from the specific runtime environment where it
  was
  previously deployed.

  You cannot delete a runtime environment using DeleteEnvironment if any
  application has ever been deployed to it. This API removes the association of
  the
  application with the runtime environment so you can delete the environment
  smoothly.
  """
  @spec delete_application_from_environment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_application_from_environment_request(),
          list()
        ) ::
          {:ok, delete_application_from_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_from_environment_errors()}
  def delete_application_from_environment(
        %Client{} = client,
        application_id,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environment/#{AWS.Util.encode_uri(environment_id)}"

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
  Deletes a specific runtime environment.

  The environment cannot contain deployed
  applications. If it does, you must delete those applications before you delete
  the
  environment.
  """
  @spec delete_environment(map(), String.t() | atom(), delete_environment_request(), list()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
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
  Describes the details of a specific application.
  """
  @spec get_application(map(), String.t() | atom(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a specific version of a specific application.
  """
  @spec get_application_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_version_errors()}
  def get_application_version(
        %Client{} = client,
        application_id,
        application_version,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/versions/#{AWS.Util.encode_uri(application_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of a specific batch job execution for a specific application.
  """
  @spec get_batch_job_execution(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_batch_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_batch_job_execution_errors()}
  def get_batch_job_execution(%Client{} = client, application_id, execution_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of a specific data set.
  """
  @spec get_data_set_details(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_set_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_set_details_errors()}
  def get_data_set_details(%Client{} = client, application_id, data_set_name, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/datasets/#{AWS.Util.encode_uri(data_set_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the status of a data set import task initiated with the
  `CreateDataSetExportTask` operation.
  """
  @spec get_data_set_export_task(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_set_export_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_set_export_task_errors()}
  def get_data_set_export_task(%Client{} = client, application_id, task_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-export-tasks/#{AWS.Util.encode_uri(task_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the status of a data set import task initiated with the
  `CreateDataSetImportTask` operation.
  """
  @spec get_data_set_import_task(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_set_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_set_import_task_errors()}
  def get_data_set_import_task(%Client{} = client, application_id, task_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-tasks/#{AWS.Util.encode_uri(task_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details of a specific deployment with a given deployment identifier.
  """
  @spec get_deployment(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, application_id, deployment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a specific runtime environment.
  """
  @spec get_environment(map(), String.t() | atom(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a single sign-on URL that can be used to connect to AWS Blu Insights.
  """
  @spec get_signed_bluinsights_url(map(), list()) ::
          {:ok, get_signed_bluinsights_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_signed_bluinsights_url_errors()}
  def get_signed_bluinsights_url(%Client{} = client, options \\ []) do
    url_path = "/signed-bi-url"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the application versions for a specific application.
  """
  @spec list_application_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_versions_errors()}
  def list_application_versions(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/versions"
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
  Lists the applications associated with a specific Amazon Web Services account.

  You can provide the
  unique identifier of a specific runtime environment in a query parameter to see
  all
  applications associated with that environment.
  """
  @spec list_applications(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(
        %Client{} = client,
        environment_id \\ nil,
        max_results \\ nil,
        names \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(names) do
        [{"names", names} | query_params]
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
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the available batch job definitions based on the batch job resources
  uploaded
  during the application creation.

  You can use the batch job definitions in the list to start
  a batch job.
  """
  @spec list_batch_job_definitions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_batch_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_batch_job_definitions_errors()}
  def list_batch_job_definitions(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        prefix \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-definitions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
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
  Lists historical, current, and scheduled batch job executions for a specific
  application.
  """
  @spec list_batch_job_executions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_batch_job_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_batch_job_executions_errors()}
  def list_batch_job_executions(
        %Client{} = client,
        application_id,
        execution_ids \\ nil,
        job_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        started_after \\ nil,
        started_before \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(started_before) do
        [{"startedBefore", started_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(started_after) do
        [{"startedAfter", started_after} | query_params]
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
      if !is_nil(job_name) do
        [{"jobName", job_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(execution_ids) do
        [{"executionIds", execution_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the job steps for a JCL file to restart a batch job.

  This is only applicable for Micro Focus engine with versions 8.0.6 and above.
  """
  @spec list_batch_job_restart_points(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_batch_job_restart_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_batch_job_restart_points_errors()}
  def list_batch_job_restart_points(
        %Client{} = client,
        application_id,
        execution_id,
        auth_secrets_manager_arn \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}/steps"

    headers = []
    query_params = []

    query_params =
      if !is_nil(auth_secrets_manager_arn) do
        [{"authSecretsManagerArn", auth_secrets_manager_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the data set exports for the specified application.
  """
  @spec list_data_set_export_history(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_set_export_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_set_export_history_errors()}
  def list_data_set_export_history(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-export-tasks"
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
  Lists the data set imports for the specified application.
  """
  @spec list_data_set_import_history(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_set_import_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_set_import_history_errors()}
  def list_data_set_import_history(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-tasks"
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
  Lists the data sets imported for a specific application.

  In Amazon Web Services Mainframe Modernization, data sets are
  associated with applications deployed on runtime environments. This is known as
  importing
  data sets. Currently, Amazon Web Services Mainframe Modernization can import
  data sets into catalogs using
  [CreateDataSetImportTask](https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html).
  """
  @spec list_data_sets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_sets_errors()}
  def list_data_sets(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        name_filter \\ nil,
        next_token \\ nil,
        prefix \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/datasets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
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
      if !is_nil(name_filter) do
        [{"nameFilter", name_filter} | query_params]
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
  Returns a list of all deployments of a specific application.

  A deployment is a
  combination of a specific application and a specific version of that
  application. Each
  deployment is mapped to a particular application version.
  """
  @spec list_deployments(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployments_errors()}
  def list_deployments(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/deployments"
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
  Lists the available engine versions.
  """
  @spec list_engine_versions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_engine_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engine_versions_errors()}
  def list_engine_versions(
        %Client{} = client,
        engine_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/engine-versions"
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
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the runtime environments.
  """
  @spec list_environments(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
  def list_environments(
        %Client{} = client,
        engine_type \\ nil,
        max_results \\ nil,
        names \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(names) do
        [{"names", names} | query_params]
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
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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
  Starts an application that is currently stopped.
  """
  @spec start_application(map(), String.t() | atom(), start_application_request(), list()) ::
          {:ok, start_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_application_errors()}
  def start_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/start"
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
  Starts a batch job and returns the unique identifier of this execution of the
  batch job.

  The associated application must be running in order to start the batch job.
  """
  @spec start_batch_job(map(), String.t() | atom(), start_batch_job_request(), list()) ::
          {:ok, start_batch_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_batch_job_errors()}
  def start_batch_job(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job"
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
  Stops a running application.
  """
  @spec stop_application(map(), String.t() | atom(), stop_application_request(), list()) ::
          {:ok, stop_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_application_errors()}
  def stop_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/stop"
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
  Adds one or more tags to the specified resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
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
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
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
  Updates an application and creates a new version.
  """
  @spec update_application(map(), String.t() | atom(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Updates the configuration details for a specific runtime environment.
  """
  @spec update_environment(map(), String.t() | atom(), update_environment_request(), list()) ::
          {:ok, update_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
