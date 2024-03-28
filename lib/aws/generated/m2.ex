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
  @type record_length() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alternate_key() :: %{
        "allowDuplicates" => boolean(),
        "length" => integer(),
        "name" => [String.t()],
        "offset" => integer()
      }

  """
  @type alternate_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_batch_job_executions_request() :: %{
        optional("executionIds") => list(String.t()()),
        optional("jobName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("startedAfter") => non_neg_integer(),
        optional("startedBefore") => non_neg_integer(),
        optional("status") => String.t()
      }

  """
  @type list_batch_job_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_response() :: %{
        required("environmentId") => String.t()
      }

  """
  @type update_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deployments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pending_maintenance() :: %{
        "engineVersion" => [String.t()],
        "schedule" => maintenance_schedule()
      }

  """
  @type pending_maintenance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_summary() :: %{
        "applicationId" => String.t(),
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "deploymentId" => String.t(),
        "environmentId" => String.t(),
        "status" => String.t(),
        "statusReason" => [String.t()]
      }

  """
  @type deployment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_batch_job_identifier() :: %{
        "fileName" => [String.t()],
        "folderPath" => [String.t()]
      }

  """
  @type file_batch_job_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sets_response() :: %{
        "dataSets" => list(data_set_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_set_import_task_response() :: %{
        required("taskId") => String.t()
      }

  """
  @type create_data_set_import_task_response() :: %{String.t() => any()}

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

      data_set() :: %{
        "datasetName" => [String.t()],
        "datasetOrg" => list(),
        "recordLength" => record_length(),
        "relativePath" => [String.t()],
        "storageType" => [String.t()]
      }

  """
  @type data_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deployments_response() :: %{
        "deployments" => list(deployment_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vsam_attributes() :: %{
        "alternateKeys" => list(alternate_key()()),
        "compressed" => boolean(),
        "encoding" => [String.t()],
        "format" => [String.t()],
        "primaryKey" => primary_key()
      }

  """
  @type vsam_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployed_version_summary() :: %{
        "applicationVersion" => integer(),
        "status" => String.t(),
        "statusReason" => [String.t()]
      }

  """
  @type deployed_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_summary() :: %{
        "creationTime" => non_neg_integer(),
        "engineType" => String.t(),
        "engineVersion" => String.t(),
        "environmentArn" => String.t(),
        "environmentId" => String.t(),
        "instanceType" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }

  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_request() :: %{}

  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:

      create_deployment_request() :: %{
        "applicationVersion" => integer(),
        "clientToken" => [String.t()],
        "environmentId" => String.t()
      }

  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vsam_detail_attributes() :: %{
        "alternateKeys" => list(alternate_key()()),
        "cacheAtStartup" => boolean(),
        "compressed" => boolean(),
        "encoding" => String.t(),
        "primaryKey" => primary_key(),
        "recordFormat" => String.t()
      }

  """
  @type vsam_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sets_request() :: %{
        optional("maxResults") => integer(),
        optional("nameFilter") => String.t(),
        optional("nextToken") => String.t(),
        optional("prefix") => String.t()
      }

  """
  @type list_data_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_set_details_response() :: %{
        "blocksize" => integer(),
        "creationTime" => non_neg_integer(),
        "dataSetName" => String.t(),
        "dataSetOrg" => list(),
        "fileSize" => [float()],
        "lastReferencedTime" => non_neg_integer(),
        "lastUpdatedTime" => non_neg_integer(),
        "location" => String.t(),
        "recordLength" => integer()
      }

  """
  @type get_data_set_details_response() :: %{String.t() => any()}

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
        "status" => String.t(),
        "statusReason" => [String.t()]
      }

  """
  @type application_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_response() :: %{
        required("deploymentId") => String.t()
      }

  """
  @type create_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_response() :: %{
        optional("actualCapacity") => integer(),
        optional("description") => String.t(),
        optional("highAvailabilityConfig") => high_availability_config(),
        optional("kmsKeyId") => [String.t()],
        optional("loadBalancerArn") => [String.t()],
        optional("pendingMaintenance") => pending_maintenance(),
        optional("preferredMaintenanceWindow") => String.t(),
        optional("publiclyAccessible") => boolean(),
        optional("statusReason") => [String.t()],
        optional("storageConfigurations") => list(list()()),
        optional("tags") => map(),
        required("creationTime") => non_neg_integer(),
        required("engineType") => String.t(),
        required("engineVersion") => String.t(),
        required("environmentArn") => String.t(),
        required("environmentId") => String.t(),
        required("instanceType") => String.t(),
        required("name") => String.t(),
        required("securityGroupIds") => list(String.t()()),
        required("status") => String.t(),
        required("subnetIds") => list(String.t()()),
        required("vpcId") => String.t()
      }

  """
  @type get_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gdg_detail_attributes() :: %{
        "limit" => integer(),
        "rollDisposition" => String.t()
      }

  """
  @type gdg_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      script_batch_job_identifier() :: %{
        "scriptName" => [String.t()]
      }

  """
  @type script_batch_job_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      engine_versions_summary() :: %{
        "engineType" => [String.t()],
        "engineVersion" => [String.t()]
      }

  """
  @type engine_versions_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ps_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()]
      }

  """
  @type ps_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_batch_job_execution_request() :: %{}

  """
  @type cancel_batch_job_execution_request() :: %{}

  @typedoc """

  ## Example:

      high_availability_config() :: %{
        "desiredCapacity" => integer()
      }

  """
  @type high_availability_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      script_batch_job_definition() :: %{
        "scriptName" => [String.t()]
      }

  """
  @type script_batch_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_version_request() :: %{}

  """
  @type get_application_version_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

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
  @type stop_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_summary() :: %{
        "creationTime" => non_neg_integer(),
        "dataSetName" => String.t(),
        "dataSetOrg" => String.t(),
        "format" => String.t(),
        "lastReferencedTime" => non_neg_integer(),
        "lastUpdatedTime" => non_neg_integer()
      }

  """
  @type data_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      po_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()],
        "memberFileExtensions" => list(String.t()())
      }

  """
  @type po_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => String.t(),
        optional("kmsKeyId") => [String.t()],
        optional("roleArn") => String.t(),
        optional("tags") => map(),
        required("definition") => list(),
        required("engineType") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_request() :: %{
        optional("engineType") => String.t(),
        optional("maxResults") => integer(),
        optional("names") => list(String.t()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_environments_request() :: %{String.t() => any()}

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
  @type data_set_import_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_group_summary() :: %{
        "logGroupName" => String.t(),
        "logType" => String.t()
      }

  """
  @type log_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        required("applicationArn") => String.t(),
        required("applicationId") => String.t(),
        required("applicationVersion") => integer()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execution_timeout_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type execution_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_set_import_history_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_set_import_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_set_import_task_request() :: %{
        optional("clientToken") => [String.t()],
        required("importConfig") => list()
      }

  """
  @type create_data_set_import_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      efs_storage_configuration() :: %{
        "fileSystemId" => String.t(),
        "mountPoint" => String.t()
      }

  """
  @type efs_storage_configuration() :: %{String.t() => any()}

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
        required("environmentId") => String.t()
      }

  """
  @type create_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      po_detail_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()]
      }

  """
  @type po_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("definition") => list(),
        optional("description") => String.t(),
        required("currentApplicationVersion") => integer()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        required("applicationVersion") => integer()
      }

  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_signed_bluinsights_url_response() :: %{
        "signedBiUrl" => [String.t()]
      }

  """
  @type get_signed_bluinsights_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_request() :: %{}

  """
  @type delete_environment_request() :: %{}

  @typedoc """

  ## Example:

      start_application_request() :: %{}

  """
  @type start_application_request() :: %{}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        optional("deployedVersion") => deployed_version_summary(),
        optional("description") => String.t(),
        optional("environmentId") => String.t(),
        optional("kmsKeyId") => [String.t()],
        optional("lastStartTime") => non_neg_integer(),
        optional("listenerArns") => list(String.t()()),
        optional("listenerPorts") => list(integer()()),
        optional("loadBalancerDnsName") => String.t(),
        optional("logGroups") => list(log_group_summary()()),
        optional("roleArn") => String.t(),
        optional("statusReason") => [String.t()],
        optional("tags") => map(),
        optional("targetGroupArns") => list(String.t()()),
        required("applicationArn") => String.t(),
        required("applicationId") => String.t(),
        required("creationTime") => non_neg_integer(),
        required("engineType") => String.t(),
        required("latestVersion") => application_version_summary(),
        required("name") => String.t(),
        required("status") => String.t()
      }

  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("environmentId") => String.t(),
        optional("maxResults") => integer(),
        optional("names") => list(String.t()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_batch_job_identifier() :: %{
        "bucket" => [String.t()],
        "identifier" => list(),
        "keyPrefix" => [String.t()]
      }

  """
  @type s3_batch_job_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_application_response() :: %{}

  """
  @type stop_application_response() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_batch_job_definition() :: %{
        "fileName" => [String.t()],
        "folderPath" => [String.t()]
      }

  """
  @type file_batch_job_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_batch_job_execution_response() :: %{
        optional("batchJobIdentifier") => list(),
        optional("endTime") => non_neg_integer(),
        optional("jobId") => String.t(),
        optional("jobName") => String.t(),
        optional("jobType") => String.t(),
        optional("jobUser") => String.t(),
        optional("returnCode") => [String.t()],
        optional("statusReason") => [String.t()],
        required("applicationId") => String.t(),
        required("executionId") => String.t(),
        required("startTime") => non_neg_integer(),
        required("status") => String.t()
      }

  """
  @type get_batch_job_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_batch_job_definitions_response() :: %{
        "batchJobDefinitions" => list(list()()),
        "nextToken" => String.t()
      }

  """
  @type list_batch_job_definitions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fsx_storage_configuration() :: %{
        "fileSystemId" => String.t(),
        "mountPoint" => String.t()
      }

  """
  @type fsx_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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

      data_set_import_item() :: %{
        "dataSet" => data_set(),
        "externalLocation" => list()
      }

  """
  @type data_set_import_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gdg_attributes() :: %{
        "limit" => integer(),
        "rollDisposition" => [String.t()]
      }

  """
  @type gdg_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_response() :: %{
        optional("statusReason") => [String.t()],
        required("applicationId") => String.t(),
        required("applicationVersion") => integer(),
        required("creationTime") => non_neg_integer(),
        required("deploymentId") => String.t(),
        required("environmentId") => String.t(),
        required("status") => String.t()
      }

  """
  @type get_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => integer(),
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_batch_job_executions_response() :: %{
        optional("nextToken") => String.t(),
        required("batchJobExecutions") => list(batch_job_execution_summary()())
      }

  """
  @type list_batch_job_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_application_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_engine_versions_response() :: %{
        optional("nextToken") => String.t(),
        required("engineVersions") => list(engine_versions_summary()())
      }

  """
  @type list_engine_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_response() :: %{
        "environments" => list(environment_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      maintenance_schedule() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer()
      }

  """
  @type maintenance_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_version_response() :: %{
        optional("description") => String.t(),
        optional("statusReason") => [String.t()],
        required("applicationVersion") => integer(),
        required("creationTime") => non_neg_integer(),
        required("definitionContent") => String.t(),
        required("name") => String.t(),
        required("status") => String.t()
      }

  """
  @type get_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "applicationArn" => String.t(),
        "applicationId" => String.t(),
        "applicationVersion" => integer(),
        "creationTime" => non_neg_integer(),
        "deploymentStatus" => String.t(),
        "description" => String.t(),
        "engineType" => String.t(),
        "environmentId" => String.t(),
        "lastStartTime" => non_neg_integer(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "status" => String.t(),
        "versionStatus" => String.t()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applications" => list(application_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_versions_response() :: %{
        "applicationVersions" => list(application_version_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_application_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_request() :: %{
        optional("clientToken") => [String.t()],
        optional("description") => String.t(),
        optional("engineVersion") => String.t(),
        optional("highAvailabilityConfig") => high_availability_config(),
        optional("kmsKeyId") => [String.t()],
        optional("preferredMaintenanceWindow") => String.t(),
        optional("publiclyAccessible") => boolean(),
        optional("securityGroupIds") => list(String.t()()),
        optional("storageConfigurations") => list(list()()),
        optional("subnetIds") => list(String.t()()),
        optional("tags") => map(),
        required("engineType") => String.t(),
        required("instanceType") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_environment_request() :: %{String.t() => any()}

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
        optional("engineVersion") => String.t(),
        optional("forceUpdate") => boolean(),
        optional("instanceType") => String.t(),
        optional("preferredMaintenanceWindow") => [String.t()]
      }

  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_batch_job_response() :: %{
        required("executionId") => String.t()
      }

  """
  @type start_batch_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_set_import_history_response() :: %{
        "dataSetImportTasks" => list(data_set_import_task()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_set_import_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_from_environment_response() :: %{}

  """
  @type delete_application_from_environment_response() :: %{}

  @typedoc """

  ## Example:

      start_batch_job_request() :: %{
        optional("jobParams") => map(),
        required("batchJobIdentifier") => list()
      }

  """
  @type start_batch_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_set_import_task_request() :: %{}

  """
  @type get_data_set_import_task_request() :: %{}

  @typedoc """

  ## Example:

      list_engine_versions_request() :: %{
        optional("engineType") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_engine_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      primary_key() :: %{
        "length" => integer(),
        "name" => [String.t()],
        "offset" => integer()
      }

  """
  @type primary_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      ps_detail_attributes() :: %{
        "encoding" => [String.t()],
        "format" => [String.t()]
      }

  """
  @type ps_detail_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_batch_job_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("prefix") => [String.t()]
      }

  """
  @type list_batch_job_definitions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_response() :: %{}

  """
  @type delete_environment_response() :: %{}

  @typedoc """

  ## Example:

      batch_job_execution_summary() :: %{
        "applicationId" => String.t(),
        "batchJobIdentifier" => list(),
        "endTime" => non_neg_integer(),
        "executionId" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobType" => String.t(),
        "returnCode" => [String.t()],
        "startTime" => non_neg_integer(),
        "status" => String.t()
      }

  """
  @type batch_job_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      get_data_set_import_task_response() :: %{
        optional("summary") => data_set_import_summary(),
        required("status") => String.t(),
        required("taskId") => String.t()
      }

  """
  @type get_data_set_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_set_import_task() :: %{
        "status" => String.t(),
        "statusReason" => [String.t()],
        "summary" => data_set_import_summary(),
        "taskId" => String.t()
      }

  """
  @type data_set_import_task() :: %{String.t() => any()}

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
          String.t(),
          String.t(),
          cancel_batch_job_execution_request(),
          list()
        ) ::
          {:ok, cancel_batch_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          String.t(),
          create_data_set_import_task_request(),
          list()
        ) ::
          {:ok, create_data_set_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_set_import_task_errors()}
  def create_data_set_import_task(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-task"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates and starts a deployment to deploy an application into a runtime
  environment.
  """
  @spec create_deployment(map(), String.t(), create_deployment_request(), list()) ::
          {:ok, create_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/deployments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a specific application.

  You cannot delete a running application.
  """
  @spec delete_application(map(), String.t(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
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
          String.t(),
          String.t(),
          delete_application_from_environment_request(),
          list()
        ) ::
          {:ok, delete_application_from_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
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
  @spec delete_environment(map(), String.t(), delete_environment_request(), list()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes the details of a specific application.
  """
  @spec get_application(map(), String.t(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_application_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_batch_job_execution(map(), String.t(), String.t(), list()) ::
          {:ok, get_batch_job_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_data_set_details(map(), String.t(), String.t(), list()) ::
          {:ok, get_data_set_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  `CreateDataSetImportTask` operation.
  """
  @spec get_data_set_import_task(map(), String.t(), String.t(), list()) ::
          {:ok, get_data_set_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_deployment(map(), String.t(), String.t(), list()) ::
          {:ok, get_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_environment(map(), String.t(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_application_versions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_batch_job_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_batch_job_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Lists the data set imports for the specified application.
  """
  @spec list_data_set_import_history(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_data_set_import_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_data_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_deployments(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_engine_versions(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_engine_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec start_application(map(), String.t(), start_application_request(), list()) ::
          {:ok, start_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_application_errors()}
  def start_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/start"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
  @spec start_batch_job(map(), String.t(), start_batch_job_request(), list()) ::
          {:ok, start_batch_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_batch_job_errors()}
  def start_batch_job(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops a running application.
  """
  @spec stop_application(map(), String.t(), stop_application_request(), list()) ::
          {:ok, stop_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_application_errors()}
  def stop_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds one or more tags to the specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an application and creates a new version.
  """
  @spec update_application(map(), String.t(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the configuration details for a specific runtime environment.
  """
  @spec update_environment(map(), String.t(), update_environment_request(), list()) ::
          {:ok, update_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
