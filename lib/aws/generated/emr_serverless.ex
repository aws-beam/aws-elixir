# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EMRServerless do
  @moduledoc """
  Amazon EMR Serverless is a new deployment option for Amazon EMR.

  Amazon EMR Serverless provides a serverless runtime environment that simplifies
  running analytics applications using the latest open source frameworks such as
  Apache Spark and Apache Hive. With Amazon EMR Serverless, you don’t have to
  configure, optimize, secure, or operate clusters to run applications with these
  frameworks.

  The API reference to Amazon EMR Serverless is `emr-serverless`. The
  `emr-serverless` prefix is used in the following scenarios:

    * It is the prefix in the CLI commands for Amazon EMR Serverless.
  For example, `aws emr-serverless start-job-run`.

    * It is the prefix before IAM policy actions for Amazon EMR
  Serverless. For example, `"Action": ["emr-serverless:StartJobRun"]`. For more information, see [Policy actions for Amazon EMR
  Serverless](https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).

    * It is the prefix used in Amazon EMR Serverless service endpoints.
  For example, `emr-serverless.us-east-2.amazonaws.com`.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_job_run_response() :: %{
        required("jobRun") => job_run()
      }

  """
  @type get_job_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_configuration_input() :: %{
        "imageUri" => String.t() | atom()
      }

  """
  @type image_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      worker_resource_config() :: %{
        "cpu" => String.t() | atom(),
        "disk" => String.t() | atom(),
        "diskType" => String.t() | atom(),
        "memory" => String.t() | atom()
      }

  """
  @type worker_resource_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_monitoring_configuration() :: %{
        "encryptionKeyArn" => String.t() | atom(),
        "logUri" => String.t() | atom()
      }

  """
  @type s3_monitoring_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_run_request() :: %{
        optional("attempt") => integer()
      }

  """
  @type get_job_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_utilization() :: %{
        "memoryGBHour" => [float()],
        "storageGBHour" => [float()],
        "vCPUHour" => [float()]
      }

  """
  @type resource_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_run_attempts_response() :: %{
        "jobRunAttempts" => list(job_run_attempt_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_job_run_attempts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_run_attempts_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_job_run_attempts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      initial_capacity_config() :: %{
        "workerConfiguration" => worker_resource_config(),
        "workerCount" => float()
      }

  """
  @type initial_capacity_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_run() :: %{
        "applicationId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "attempt" => integer(),
        "attemptCreatedAt" => non_neg_integer(),
        "attemptUpdatedAt" => non_neg_integer(),
        "billedResourceUtilization" => resource_utilization(),
        "configurationOverrides" => configuration_overrides(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "endedAt" => non_neg_integer(),
        "executionIamPolicy" => job_run_execution_iam_policy(),
        "executionRole" => String.t() | atom(),
        "executionTimeoutMinutes" => float(),
        "jobDriver" => list(),
        "jobRunId" => String.t() | atom(),
        "mode" => String.t() | atom(),
        "name" => String.t() | atom(),
        "networkConfiguration" => network_configuration(),
        "queuedDurationMilliseconds" => [float()],
        "releaseLabel" => String.t() | atom(),
        "retryPolicy" => retry_policy(),
        "startedAt" => non_neg_integer(),
        "state" => String.t() | atom(),
        "stateDetails" => String.t() | atom(),
        "tags" => map(),
        "totalExecutionDurationSeconds" => [integer()],
        "totalResourceUtilization" => total_resource_utilization(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type job_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      job_run_summary() :: %{
        "applicationId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "attempt" => integer(),
        "attemptCreatedAt" => non_neg_integer(),
        "attemptUpdatedAt" => non_neg_integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "executionRole" => String.t() | atom(),
        "id" => String.t() | atom(),
        "mode" => String.t() | atom(),
        "name" => String.t() | atom(),
        "releaseLabel" => String.t() | atom(),
        "state" => String.t() | atom(),
        "stateDetails" => String.t() | atom(),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type job_run_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_job_runs_request() :: %{
        optional("createdAtAfter") => non_neg_integer(),
        optional("createdAtBefore") => non_neg_integer(),
        optional("maxResults") => [integer()],
        optional("mode") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("states") => list(String.t() | atom())
      }

  """
  @type list_job_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      maximum_allowed_resources() :: %{
        "cpu" => String.t() | atom(),
        "disk" => String.t() | atom(),
        "memory" => String.t() | atom()
      }

  """
  @type maximum_allowed_resources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        "classification" => String.t() | atom(),
        "configurations" => list(configuration()),
        "properties" => map()
      }

  """
  @type configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_run_attempt_summary() :: %{
        "applicationId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "attempt" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t() | atom(),
        "executionRole" => String.t() | atom(),
        "id" => String.t() | atom(),
        "jobCreatedAt" => non_neg_integer(),
        "mode" => String.t() | atom(),
        "name" => String.t() | atom(),
        "releaseLabel" => String.t() | atom(),
        "state" => String.t() | atom(),
        "stateDetails" => String.t() | atom(),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type job_run_attempt_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      monitoring_configuration() :: %{
        "cloudWatchLoggingConfiguration" => cloud_watch_logging_configuration(),
        "managedPersistenceMonitoringConfiguration" => managed_persistence_monitoring_configuration(),
        "prometheusMonitoringConfiguration" => prometheus_monitoring_configuration(),
        "s3MonitoringConfiguration" => s3_monitoring_configuration()
      }

  """
  @type monitoring_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identity_center_configuration_input() :: %{
        "identityCenterInstanceArn" => String.t() | atom(),
        "userBackgroundSessionsEnabled" => [boolean()]
      }

  """
  @type identity_center_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auto_start_config() :: %{
        "enabled" => [boolean()]
      }

  """
  @type auto_start_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auto_stop_config() :: %{
        "enabled" => [boolean()],
        "idleTimeoutMinutes" => [integer()]
      }

  """
  @type auto_stop_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      worker_type_specification() :: %{
        "imageConfiguration" => image_configuration()
      }

  """
  @type worker_type_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_run_execution_iam_policy() :: %{
        "policy" => String.t() | atom(),
        "policyArns" => list(String.t() | atom())
      }

  """
  @type job_run_execution_iam_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spark_submit() :: %{
        "entryPoint" => String.t() | atom(),
        "entryPointArguments" => list(String.t() | atom()),
        "sparkSubmitParameters" => String.t() | atom()
      }

  """
  @type spark_submit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prometheus_monitoring_configuration() :: %{
        "remoteWriteUrl" => String.t() | atom()
      }

  """
  @type prometheus_monitoring_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_job_run_response() :: %{
        required("applicationId") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("jobRunId") => String.t() | atom()
      }

  """
  @type start_job_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_run_response() :: %{
        required("applicationId") => String.t() | atom(),
        required("jobRunId") => String.t() | atom()
      }

  """
  @type cancel_job_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_dashboard_for_job_run_response() :: %{
        optional("url") => String.t() | atom()
      }

  """
  @type get_dashboard_for_job_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_application_request() :: %{}

  """
  @type stop_application_request() :: %{}

  @typedoc """

  ## Example:

      list_job_runs_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("jobRuns") => list(job_run_summary())
      }

  """
  @type list_job_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "applicationId" => String.t() | atom(),
        "architecture" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "autoStartConfiguration" => auto_start_config(),
        "autoStopConfiguration" => auto_stop_config(),
        "createdAt" => non_neg_integer(),
        "identityCenterConfiguration" => identity_center_configuration(),
        "imageConfiguration" => image_configuration(),
        "initialCapacity" => map(),
        "interactiveConfiguration" => interactive_configuration(),
        "maximumCapacity" => maximum_allowed_resources(),
        "monitoringConfiguration" => monitoring_configuration(),
        "name" => String.t() | atom(),
        "networkConfiguration" => network_configuration(),
        "releaseLabel" => String.t() | atom(),
        "runtimeConfiguration" => list(configuration()),
        "schedulerConfiguration" => scheduler_configuration(),
        "state" => String.t() | atom(),
        "stateDetails" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "workerTypeSpecifications" => map()
      }

  """
  @type application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("architecture") => String.t() | atom(),
        optional("autoStartConfiguration") => auto_start_config(),
        optional("autoStopConfiguration") => auto_stop_config(),
        optional("identityCenterConfiguration") => identity_center_configuration_input(),
        optional("imageConfiguration") => image_configuration_input(),
        optional("initialCapacity") => map(),
        optional("interactiveConfiguration") => interactive_configuration(),
        optional("maximumCapacity") => maximum_allowed_resources(),
        optional("monitoringConfiguration") => monitoring_configuration(),
        optional("name") => String.t() | atom(),
        optional("networkConfiguration") => network_configuration(),
        optional("runtimeConfiguration") => list(configuration()),
        optional("schedulerConfiguration") => scheduler_configuration(),
        optional("tags") => map(),
        optional("workerTypeSpecifications") => map(),
        required("clientToken") => String.t() | atom(),
        required("releaseLabel") => String.t() | atom(),
        required("type") => String.t() | atom()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        optional("name") => String.t() | atom(),
        required("applicationId") => String.t() | atom(),
        required("arn") => String.t() | atom()
      }

  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      interactive_configuration() :: %{
        "livyEndpointEnabled" => [boolean()],
        "studioEnabled" => [boolean()]
      }

  """
  @type interactive_configuration() :: %{(String.t() | atom()) => any()}

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

      worker_type_specification_input() :: %{
        "imageConfiguration" => image_configuration_input()
      }

  """
  @type worker_type_specification_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hive() :: %{
        "initQueryFile" => String.t() | atom(),
        "parameters" => String.t() | atom(),
        "query" => String.t() | atom()
      }

  """
  @type hive() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("architecture") => String.t() | atom(),
        optional("autoStartConfiguration") => auto_start_config(),
        optional("autoStopConfiguration") => auto_stop_config(),
        optional("identityCenterConfiguration") => identity_center_configuration_input(),
        optional("imageConfiguration") => image_configuration_input(),
        optional("initialCapacity") => map(),
        optional("interactiveConfiguration") => interactive_configuration(),
        optional("maximumCapacity") => maximum_allowed_resources(),
        optional("monitoringConfiguration") => monitoring_configuration(),
        optional("networkConfiguration") => network_configuration(),
        optional("releaseLabel") => String.t() | atom(),
        optional("runtimeConfiguration") => list(configuration()),
        optional("schedulerConfiguration") => scheduler_configuration(),
        optional("workerTypeSpecifications") => map(),
        required("clientToken") => String.t() | atom()
      }

  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        required("application") => application()
      }

  """
  @type update_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scheduler_configuration() :: %{
        "maxConcurrentRuns" => [integer()],
        "queueTimeoutMinutes" => [integer()]
      }

  """
  @type scheduler_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_application_request() :: %{}

  """
  @type start_application_request() :: %{}

  @typedoc """

  ## Example:

      start_job_run_request() :: %{
        optional("configurationOverrides") => configuration_overrides(),
        optional("executionIamPolicy") => job_run_execution_iam_policy(),
        optional("executionTimeoutMinutes") => float(),
        optional("jobDriver") => list(),
        optional("mode") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("retryPolicy") => retry_policy(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("executionRoleArn") => String.t() | atom()
      }

  """
  @type start_job_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        required("application") => application()
      }

  """
  @type get_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("states") => list(String.t() | atom())
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_configuration() :: %{
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom())
      }

  """
  @type network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_application_response() :: %{}

  """
  @type stop_application_response() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_dashboard_for_job_run_request() :: %{
        optional("accessSystemProfileLogs") => [boolean()],
        optional("attempt") => integer()
      }

  """
  @type get_dashboard_for_job_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
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

      identity_center_configuration() :: %{
        "identityCenterApplicationArn" => String.t() | atom(),
        "identityCenterInstanceArn" => String.t() | atom(),
        "userBackgroundSessionsEnabled" => [boolean()]
      }

  """
  @type identity_center_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      total_resource_utilization() :: %{
        "memoryGBHour" => [float()],
        "storageGBHour" => [float()],
        "vCPUHour" => [float()]
      }

  """
  @type total_resource_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_overrides() :: %{
        "applicationConfiguration" => list(configuration()),
        "monitoringConfiguration" => monitoring_configuration()
      }

  """
  @type configuration_overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "architecture" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "releaseLabel" => String.t() | atom(),
        "state" => String.t() | atom(),
        "stateDetails" => String.t() | atom(),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("applications") => list(application_summary())
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_persistence_monitoring_configuration() :: %{
        "enabled" => [boolean()],
        "encryptionKeyArn" => String.t() | atom()
      }

  """
  @type managed_persistence_monitoring_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_run_request() :: %{
        optional("shutdownGracePeriodInSeconds") => integer()
      }

  """
  @type cancel_job_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_configuration() :: %{
        "imageUri" => String.t() | atom(),
        "resolvedImageDigest" => String.t() | atom()
      }

  """
  @type image_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_logging_configuration() :: %{
        "enabled" => [boolean()],
        "encryptionKeyArn" => String.t() | atom(),
        "logGroupName" => String.t() | atom(),
        "logStreamNamePrefix" => String.t() | atom(),
        "logTypes" => map()
      }

  """
  @type cloud_watch_logging_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_policy() :: %{
        "maxAttempts" => integer(),
        "maxFailedAttemptsPerHour" => [integer()]
      }

  """
  @type retry_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @type cancel_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type create_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_dashboard_for_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_applications_errors() :: validation_exception() | internal_server_exception()

  @type list_job_run_attempts_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_job_runs_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type start_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_job_run_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-07-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "emr-serverless",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EMR Serverless",
      signature_version: "v4",
      signing_name: "emr-serverless",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a job run.
  """
  @spec cancel_job_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_job_run_request(),
          list()
        ) ::
          {:ok, cancel_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_job_run_errors()}
  def cancel_job_run(%Client{} = client, application_id, job_run_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"shutdownGracePeriodInSeconds", "shutdownGracePeriodInSeconds"}
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
  Creates an application.
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
  Deletes an application.

  An application has to be in a stopped or created state in order to be deleted.
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
  Displays detailed information about a specified application.
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
  Creates and returns a URL that you can use to access the application UIs for a
  job run.

  For jobs in a running state, the application UI is a live user interface such as
  the Spark or Tez web UI. For completed jobs, the application UI is a persistent
  application user interface such as the Spark History Server or persistent Tez
  UI.

  The URL is valid for one hour after you generate it. To access the application
  UI after that hour elapses, you must invoke the API again to generate a new URL.
  """
  @spec get_dashboard_for_job_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_dashboard_for_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dashboard_for_job_run_errors()}
  def get_dashboard_for_job_run(
        %Client{} = client,
        application_id,
        job_run_id,
        access_system_profile_logs \\ nil,
        attempt \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}/dashboard"

    headers = []
    query_params = []

    query_params =
      if !is_nil(attempt) do
        [{"attempt", attempt} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(access_system_profile_logs) do
        [{"accessSystemProfileLogs", access_system_profile_logs} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays detailed information about a job run.
  """
  @spec get_job_run(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_run_errors()}
  def get_job_run(%Client{} = client, application_id, job_run_id, attempt \\ nil, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(attempt) do
        [{"attempt", attempt} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists applications based on a set of parameters.
  """
  @spec list_applications(
          map(),
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
        max_results \\ nil,
        next_token \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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
  Lists all attempt of a job run.
  """
  @spec list_job_run_attempts(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_job_run_attempts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_run_attempts_errors()}
  def list_job_run_attempts(
        %Client{} = client,
        application_id,
        job_run_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns/#{AWS.Util.encode_uri(job_run_id)}/attempts"

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
  Lists job runs based on a set of parameters.
  """
  @spec list_job_runs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_job_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_runs_errors()}
  def list_job_runs(
        %Client{} = client,
        application_id,
        created_at_after \\ nil,
        created_at_before \\ nil,
        max_results \\ nil,
        mode \\ nil,
        next_token \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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
      if !is_nil(mode) do
        [{"mode", mode} | query_params]
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
      if !is_nil(created_at_before) do
        [{"createdAtBefore", created_at_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_at_after) do
        [{"createdAtAfter", created_at_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags assigned to the resources.
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
  Starts a specified application and initializes initial capacity if configured.
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
  Starts a job run.
  """
  @spec start_job_run(map(), String.t() | atom(), start_job_run_request(), list()) ::
          {:ok, start_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_job_run_errors()}
  def start_job_run(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/jobruns"
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
  Stops a specified application and releases initial capacity if configured.

  All scheduled and running jobs must be completed or cancelled before stopping an
  application.
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
  Assigns tags to resources.

  A tag is a label that you assign to an Amazon Web Services resource. Each tag
  consists of a key and an optional value, both of which you define. Tags enable
  you to categorize your Amazon Web Services resources by attributes such as
  purpose, owner, or environment. When you have many resources of the same type,
  you can quickly identify a specific resource based on the tags you've assigned
  to it.
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
  Removes tags from resources.
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
  Updates a specified application.

  An application has to be in a stopped or created state in order to be updated.
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
end
