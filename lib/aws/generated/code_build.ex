# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeBuild do
  @moduledoc """
  CodeBuild

  CodeBuild is a fully managed build service in the cloud.

  CodeBuild compiles your source code,
  runs unit tests, and produces artifacts that are ready to deploy. CodeBuild
  eliminates the
  need to provision, manage, and scale your own build servers. It provides
  prepackaged
  build environments for the most popular programming languages and build tools,
  such as
  Apache Maven, Gradle, and more. You can also fully customize build environments
  in CodeBuild
  to use your own build tools. CodeBuild scales automatically to meet peak build
  requests. You
  pay only for the build time you consume. For more information about CodeBuild,
  see the *
  [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html).*
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_fleet_output() :: %{
        "fleet" => fleet()
      }
      
  """
  @type update_fleet_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_source_version() :: %{
        "sourceIdentifier" => String.t() | atom(),
        "sourceVersion" => String.t() | atom()
      }
      
  """
  @type project_source_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      phase_context() :: %{
        "message" => String.t() | atom(),
        "statusCode" => String.t() | atom()
      }
      
  """
  @type phase_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_sandboxes_input() :: %{
        required("ids") => list(String.t() | atom())
      }
      
  """
  @type batch_get_sandboxes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_output() :: %{}
      
  """
  @type delete_fleet_output() :: %{}

  @typedoc """

  ## Example:
      
      list_curated_environment_images_input() :: %{}
      
  """
  @type list_curated_environment_images_input() :: %{}

  @typedoc """

  ## Example:
      
      list_command_executions_for_sandbox_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        required("sandboxId") => String.t() | atom()
      }
      
  """
  @type list_command_executions_for_sandbox_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_report_group_input() :: %{
        optional("deleteReports") => boolean(),
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_report_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_build_batches_input() :: %{
        required("ids") => list(String.t() | atom())
      }
      
  """
  @type batch_get_build_batches_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_report_groups_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_report_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_builds_for_project_output() :: %{
        "ids" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_builds_for_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_build_batch_input() :: %{
        required("id") => String.t() | atom()
      }
      
  """
  @type stop_build_batch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_for_project_input() :: %{
        optional("filter") => build_batch_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("projectName") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_build_batches_for_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      command_execution() :: %{
        "command" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "exitCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "logs" => logs_location(),
        "sandboxArn" => String.t() | atom(),
        "sandboxId" => String.t() | atom(),
        "standardErrContent" => String.t() | atom(),
        "standardOutputContent" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | atom(),
        "submitTime" => non_neg_integer(),
        "type" => list(any())
      }
      
  """
  @type command_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_build_batch_input() :: %{
        required("id") => String.t() | atom()
      }
      
  """
  @type delete_build_batch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_command_executions_output() :: %{
        "commandExecutions" => list(command_execution()),
        "commandExecutionsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_command_executions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_webhook_output() :: %{}
      
  """
  @type delete_webhook_output() :: %{}

  @typedoc """

  ## Example:
      
      stop_sandbox_output() :: %{
        "sandbox" => sandbox()
      }
      
  """
  @type stop_sandbox_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      git_submodules_config() :: %{
        "fetchSubmodules" => boolean()
      }
      
  """
  @type git_submodules_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_output() :: %{
        "ids" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_build_batches_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_connection_input() :: %{
        required("sandboxId") => String.t() | atom()
      }
      
  """
  @type start_sandbox_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      proxy_configuration() :: %{
        "defaultBehavior" => list(any()),
        "orderedProxyRules" => list(fleet_proxy_rule())
      }
      
  """
  @type proxy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      logs_config() :: %{
        "cloudWatchLogs" => cloud_watch_logs_config(),
        "s3Logs" => s3_logs_config()
      }
      
  """
  @type logs_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_output() :: %{
        "policy" => String.t() | atom()
      }
      
  """
  @type get_resource_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fleets_output() :: %{
        "fleets" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_fleets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build() :: %{
        "fileSystemLocations" => list(project_file_system_location()),
        "cache" => project_cache(),
        "id" => String.t() | atom(),
        "phases" => list(build_phase()),
        "artifacts" => build_artifacts(),
        "reportArns" => list(String.t() | atom()),
        "buildNumber" => float(),
        "serviceRole" => String.t() | atom(),
        "secondarySources" => list(project_source()),
        "buildStatus" => list(any()),
        "sourceVersion" => String.t() | atom(),
        "secondaryArtifacts" => list(build_artifacts()),
        "queuedTimeoutInMinutes" => integer(),
        "buildComplete" => boolean(),
        "source" => project_source(),
        "resolvedSourceVersion" => String.t() | atom(),
        "logs" => logs_location(),
        "exportedEnvironmentVariables" => list(exported_environment_variable()),
        "startTime" => non_neg_integer(),
        "secondarySourceVersions" => list(project_source_version()),
        "networkInterface" => network_interface(),
        "environment" => project_environment(),
        "arn" => String.t() | atom(),
        "projectName" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "autoRetryConfig" => auto_retry_config(),
        "initiator" => String.t() | atom(),
        "vpcConfig" => vpc_config(),
        "buildBatchArn" => String.t() | atom(),
        "timeoutInMinutes" => integer(),
        "encryptionKey" => String.t() | atom(),
        "currentPhase" => String.t() | atom(),
        "debugSession" => debug_session()
      }
      
  """
  @type build() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_project_input() :: %{
        optional("artifacts") => project_artifacts(),
        optional("autoRetryLimit") => integer(),
        optional("badgeEnabled") => boolean(),
        optional("buildBatchConfig") => project_build_batch_config(),
        optional("cache") => project_cache(),
        optional("concurrentBuildLimit") => integer(),
        optional("description") => String.t() | atom(),
        optional("encryptionKey") => String.t() | atom(),
        optional("environment") => project_environment(),
        optional("fileSystemLocations") => list(project_file_system_location()),
        optional("logsConfig") => logs_config(),
        optional("queuedTimeoutInMinutes") => integer(),
        optional("secondaryArtifacts") => list(project_artifacts()),
        optional("secondarySourceVersions") => list(project_source_version()),
        optional("secondarySources") => list(project_source()),
        optional("serviceRole") => String.t() | atom(),
        optional("source") => project_source(),
        optional("sourceVersion") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("timeoutInMinutes") => integer(),
        optional("vpcConfig") => vpc_config(),
        required("name") => String.t() | atom()
      }
      
  """
  @type update_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_group() :: %{
        "currentBuildSummary" => build_summary(),
        "dependsOn" => list(String.t() | atom()),
        "identifier" => String.t() | atom(),
        "ignoreFailure" => boolean(),
        "priorBuildSummaryList" => list(build_summary())
      }
      
  """
  @type build_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_builds_for_project_input() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        required("projectName") => String.t() | atom()
      }
      
  """
  @type list_builds_for_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_builds_input() :: %{
        required("ids") => list(String.t() | atom())
      }
      
  """
  @type batch_get_builds_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_build_batch_output() :: %{
        "buildBatch" => build_batch()
      }
      
  """
  @type stop_build_batch_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_file_system_location() :: %{
        "identifier" => String.t() | atom(),
        "location" => String.t() | atom(),
        "mountOptions" => String.t() | atom(),
        "mountPoint" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type project_file_system_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_reports_input() :: %{
        optional("filter") => report_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_reports_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_source_credentials_input() :: %{}
      
  """
  @type list_source_credentials_input() :: %{}

  @typedoc """

  ## Example:
      
      list_report_groups_output() :: %{
        "nextToken" => String.t() | atom(),
        "reportGroups" => list(String.t() | atom())
      }
      
  """
  @type list_report_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_shared_projects_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_shared_projects_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_variable() :: %{
        "name" => String.t() | atom(),
        "type" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type environment_variable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_config() :: %{
        "groupName" => String.t() | atom(),
        "status" => list(any()),
        "streamName" => String.t() | atom()
      }
      
  """
  @type cloud_watch_logs_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      docker_server_status() :: %{
        "message" => String.t() | atom(),
        "status" => String.t() | atom()
      }
      
  """
  @type docker_server_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "networkInterfaceId" => String.t() | atom(),
        "subnetId" => String.t() | atom()
      }
      
  """
  @type network_interface() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retry_build_output() :: %{
        "build" => build()
      }
      
  """
  @type retry_build_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_with_raw_data() :: %{
        "data" => String.t() | atom(),
        "reportArn" => String.t() | atom()
      }
      
  """
  @type report_with_raw_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sandbox_session_phase() :: %{
        "contexts" => list(phase_context()),
        "durationInSeconds" => float(),
        "endTime" => non_neg_integer(),
        "phaseStatus" => list(any()),
        "phaseType" => String.t() | atom(),
        "startTime" => non_neg_integer()
      }
      
  """
  @type sandbox_session_phase() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_report_group_output() :: %{
        "reportGroup" => report_group()
      }
      
  """
  @type create_report_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_input() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_webhook_output() :: %{
        "webhook" => webhook()
      }
      
  """
  @type update_webhook_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_report_group_trend_input() :: %{
        optional("numOfReports") => integer(),
        required("reportGroupArn") => String.t() | atom(),
        required("trendField") => list(any())
      }
      
  """
  @type get_report_group_trend_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_artifacts() :: %{
        "artifactIdentifier" => String.t() | atom(),
        "bucketOwnerAccess" => list(any()),
        "encryptionDisabled" => boolean(),
        "location" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespaceType" => list(any()),
        "overrideArtifactName" => boolean(),
        "packaging" => list(any()),
        "path" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type project_artifacts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      exported_environment_variable() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type exported_environment_variable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_shared_projects_output() :: %{
        "nextToken" => String.t() | atom(),
        "projects" => list(String.t() | atom())
      }
      
  """
  @type list_shared_projects_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_builds_output() :: %{
        "builds" => list(build()),
        "buildsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_builds_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_project_output() :: %{
        "project" => project()
      }
      
  """
  @type create_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_build_output() :: %{
        "build" => build()
      }
      
  """
  @type stop_build_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_report_output() :: %{}
      
  """
  @type delete_report_output() :: %{}

  @typedoc """

  ## Example:
      
      environment_platform() :: %{
        "languages" => list(environment_language()),
        "platform" => list(any())
      }
      
  """
  @type environment_platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_output() :: %{
        "resourceArn" => String.t() | atom()
      }
      
  """
  @type put_resource_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_builds_input() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_builds_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_suspended_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type account_suspended_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_export_config() :: %{
        "exportConfigType" => list(any()),
        "s3Destination" => s3_report_export_config()
      }
      
  """
  @type report_export_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_code_coverages_input() :: %{
        optional("maxLineCoveragePercentage") => float(),
        optional("maxResults") => integer(),
        optional("minLineCoveragePercentage") => float(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("reportArn") => String.t() | atom()
      }
      
  """
  @type describe_code_coverages_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_source_credentials_input() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_source_credentials_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_coverage_report_summary() :: %{
        "branchCoveragePercentage" => float(),
        "branchesCovered" => integer(),
        "branchesMissed" => integer(),
        "lineCoveragePercentage" => float(),
        "linesCovered" => integer(),
        "linesMissed" => integer()
      }
      
  """
  @type code_coverage_report_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_input() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type delete_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_cache() :: %{
        "cacheNamespace" => String.t() | atom(),
        "location" => String.t() | atom(),
        "modes" => list(list(any())()),
        "type" => list(any())
      }
      
  """
  @type project_cache() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_command_execution_output() :: %{
        "commandExecution" => command_execution()
      }
      
  """
  @type start_command_execution_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_command_executions_for_sandbox_output() :: %{
        "commandExecutions" => list(command_execution()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_command_executions_for_sandbox_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_not_deleted() :: %{
        "id" => String.t() | atom(),
        "statusCode" => String.t() | atom()
      }
      
  """
  @type build_not_deleted() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_case() :: %{
        "durationInNanoSeconds" => float(),
        "expired" => non_neg_integer(),
        "message" => String.t() | atom(),
        "name" => String.t() | atom(),
        "prefix" => String.t() | atom(),
        "reportArn" => String.t() | atom(),
        "status" => String.t() | atom(),
        "testRawDataPath" => String.t() | atom(),
        "testSuiteName" => String.t() | atom()
      }
      
  """
  @type test_case() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_project_visibility_input() :: %{
        optional("resourceAccessRole") => String.t() | atom(),
        required("projectArn") => String.t() | atom(),
        required("projectVisibility") => list(any())
      }
      
  """
  @type update_project_visibility_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet_status() :: %{
        "context" => list(any()),
        "message" => String.t() | atom(),
        "statusCode" => list(any())
      }
      
  """
  @type fleet_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_build_batch_output() :: %{
        "buildsDeleted" => list(String.t() | atom()),
        "buildsNotDeleted" => list(build_not_deleted()),
        "statusCode" => String.t() | atom()
      }
      
  """
  @type delete_build_batch_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_summary() :: %{
        "arn" => String.t() | atom(),
        "buildStatus" => list(any()),
        "primaryArtifact" => resolved_artifact(),
        "requestedOn" => non_neg_integer(),
        "secondaryArtifacts" => list(resolved_artifact())
      }
      
  """
  @type build_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_source_credentials_input() :: %{
        optional("shouldOverwrite") => boolean(),
        optional("username") => String.t() | atom(),
        required("authType") => list(any()),
        required("serverType") => list(any()),
        required("token") => String.t() | atom()
      }
      
  """
  @type import_source_credentials_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_reports_output() :: %{
        "reports" => list(report()),
        "reportsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_reports_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_reports_output() :: %{
        "nextToken" => String.t() | atom(),
        "reports" => list(String.t() | atom())
      }
      
  """
  @type list_reports_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_webhook_output() :: %{
        "webhook" => webhook()
      }
      
  """
  @type create_webhook_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_command_execution_input() :: %{
        optional("type") => list(any()),
        required("command") => String.t() | atom(),
        required("sandboxId") => String.t() | atom()
      }
      
  """
  @type start_command_execution_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_report_group_output() :: %{}
      
  """
  @type delete_report_group_output() :: %{}

  @typedoc """

  ## Example:
      
      start_build_input() :: %{
        optional("encryptionKeyOverride") => String.t() | atom(),
        optional("idempotencyToken") => String.t() | atom(),
        optional("certificateOverride") => String.t() | atom(),
        optional("computeTypeOverride") => list(any()),
        optional("autoRetryLimitOverride") => integer(),
        optional("artifactsOverride") => project_artifacts(),
        optional("buildStatusConfigOverride") => build_status_config(),
        optional("gitSubmodulesConfigOverride") => git_submodules_config(),
        optional("debugSessionEnabled") => boolean(),
        optional("buildspecOverride") => String.t() | atom(),
        optional("environmentTypeOverride") => list(any()),
        optional("sourceAuthOverride") => source_auth(),
        optional("fleetOverride") => project_fleet(),
        optional("cacheOverride") => project_cache(),
        optional("timeoutInMinutesOverride") => integer(),
        optional("sourceTypeOverride") => list(any()),
        optional("reportBuildStatusOverride") => boolean(),
        optional("privilegedModeOverride") => boolean(),
        optional("gitCloneDepthOverride") => integer(),
        optional("queuedTimeoutInMinutesOverride") => integer(),
        optional("secondarySourcesVersionOverride") => list(project_source_version()),
        optional("environmentVariablesOverride") => list(environment_variable()),
        required("projectName") => String.t() | atom(),
        optional("secondarySourcesOverride") => list(project_source()),
        optional("sourceVersion") => String.t() | atom(),
        optional("sourceLocationOverride") => String.t() | atom(),
        optional("serviceRoleOverride") => String.t() | atom(),
        optional("logsConfigOverride") => logs_config(),
        optional("secondaryArtifactsOverride") => list(project_artifacts()),
        optional("imageOverride") => String.t() | atom(),
        optional("imagePullCredentialsTypeOverride") => list(any()),
        optional("registryCredentialOverride") => registry_credential(),
        optional("insecureSslOverride") => boolean()
      }
      
  """
  @type start_build_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_reports_for_report_group_input() :: %{
        optional("filter") => report_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        required("reportGroupArn") => String.t() | atom()
      }
      
  """
  @type list_reports_for_report_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_builds_input() :: %{
        required("ids") => list(String.t() | atom())
      }
      
  """
  @type batch_delete_builds_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_curated_environment_images_output() :: %{
        "platforms" => list(environment_platform())
      }
      
  """
  @type list_curated_environment_images_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_code_coverages_output() :: %{
        "codeCoverages" => list(code_coverage()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type describe_code_coverages_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_shared_report_groups_output() :: %{
        "nextToken" => String.t() | atom(),
        "reportGroups" => list(String.t() | atom())
      }
      
  """
  @type list_shared_report_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retry_build_batch_output() :: %{
        "buildBatch" => build_batch()
      }
      
  """
  @type retry_build_batch_output() :: %{(String.t() | atom()) => any()}

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
      
      account_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type account_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retry_build_batch_input() :: %{
        optional("id") => String.t() | atom(),
        optional("idempotencyToken") => String.t() | atom(),
        optional("retryType") => list(any())
      }
      
  """
  @type retry_build_batch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      debug_session() :: %{
        "sessionEnabled" => boolean(),
        "sessionTarget" => String.t() | atom()
      }
      
  """
  @type debug_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project() :: %{
        "arn" => String.t() | atom(),
        "artifacts" => project_artifacts(),
        "autoRetryLimit" => integer(),
        "badge" => project_badge(),
        "buildBatchConfig" => project_build_batch_config(),
        "cache" => project_cache(),
        "concurrentBuildLimit" => integer(),
        "created" => non_neg_integer(),
        "description" => String.t() | atom(),
        "encryptionKey" => String.t() | atom(),
        "environment" => project_environment(),
        "fileSystemLocations" => list(project_file_system_location()),
        "lastModified" => non_neg_integer(),
        "logsConfig" => logs_config(),
        "name" => String.t() | atom(),
        "projectVisibility" => list(any()),
        "publicProjectAlias" => String.t() | atom(),
        "queuedTimeoutInMinutes" => integer(),
        "resourceAccessRole" => String.t() | atom(),
        "secondaryArtifacts" => list(project_artifacts()),
        "secondarySourceVersions" => list(project_source_version()),
        "secondarySources" => list(project_source()),
        "serviceRole" => String.t() | atom(),
        "source" => project_source(),
        "sourceVersion" => String.t() | atom(),
        "tags" => list(tag()),
        "timeoutInMinutes" => integer(),
        "vpcConfig" => vpc_config(),
        "webhook" => webhook()
      }
      
  """
  @type project() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_input() :: %{
        required("policy") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type put_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_projects_output() :: %{
        "projects" => list(project()),
        "projectsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_projects_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_projects_output() :: %{
        "nextToken" => String.t() | atom(),
        "projects" => list(String.t() | atom())
      }
      
  """
  @type list_projects_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_output() :: %{
        "sandbox" => sandbox()
      }
      
  """
  @type start_sandbox_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_build_batch_config() :: %{
        "batchReportMode" => list(any()),
        "combineArtifacts" => boolean(),
        "restrictions" => batch_restrictions(),
        "serviceRole" => String.t() | atom(),
        "timeoutInMins" => integer()
      }
      
  """
  @type project_build_batch_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_build_batches_output() :: %{
        "buildBatches" => list(build_batch()),
        "buildBatchesNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_build_batches_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_report_group_output() :: %{
        "reportGroup" => report_group()
      }
      
  """
  @type update_report_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalidate_project_cache_input() :: %{
        required("projectName") => String.t() | atom()
      }
      
  """
  @type invalidate_project_cache_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_connection_output() :: %{
        "ssmSession" => s_smsession()
      }
      
  """
  @type start_sandbox_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_tracking_scaling_configuration() :: %{
        "metricType" => list(any()),
        "targetValue" => float()
      }
      
  """
  @type target_tracking_scaling_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_test_cases_output() :: %{
        "nextToken" => String.t() | atom(),
        "testCases" => list(test_case())
      }
      
  """
  @type describe_test_cases_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "securityGroupIds" => list(String.t() | atom()),
        "subnets" => list(String.t() | atom()),
        "vpcId" => String.t() | atom()
      }
      
  """
  @type vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_retry_config() :: %{
        "autoRetryLimit" => integer(),
        "autoRetryNumber" => integer(),
        "nextAutoRetry" => String.t() | atom(),
        "previousAutoRetry" => String.t() | atom()
      }
      
  """
  @type auto_retry_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_logs_config() :: %{
        "bucketOwnerAccess" => list(any()),
        "encryptionDisabled" => boolean(),
        "location" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type s3_logs_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_source_credentials_output() :: %{
        "sourceCredentialsInfos" => list(source_credentials_info())
      }
      
  """
  @type list_source_credentials_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_project_visibility_output() :: %{
        "projectArn" => String.t() | atom(),
        "projectVisibility" => list(any()),
        "publicProjectAlias" => String.t() | atom()
      }
      
  """
  @type update_project_visibility_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_build_output() :: %{
        "build" => build()
      }
      
  """
  @type start_build_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      o_auth_provider_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type o_auth_provider_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_status_config() :: %{
        "context" => String.t() | atom(),
        "targetUrl" => String.t() | atom()
      }
      
  """
  @type build_status_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_report_export_config() :: %{
        "bucket" => String.t() | atom(),
        "bucketOwner" => String.t() | atom(),
        "encryptionDisabled" => boolean(),
        "encryptionKey" => String.t() | atom(),
        "packaging" => list(any()),
        "path" => String.t() | atom()
      }
      
  """
  @type s3_report_export_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_build_batch_output() :: %{
        "buildBatch" => build_batch()
      }
      
  """
  @type start_build_batch_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fleet_output() :: %{
        "fleet" => fleet()
      }
      
  """
  @type create_fleet_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_webhook_input() :: %{
        optional("branchFilter") => String.t() | atom(),
        optional("buildType") => list(any()),
        optional("filterGroups") => list(list(webhook_filter())()),
        optional("manualCreation") => boolean(),
        optional("pullRequestBuildPolicy") => pull_request_build_policy(),
        optional("scopeConfiguration") => scope_configuration(),
        required("projectName") => String.t() | atom()
      }
      
  """
  @type create_webhook_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_sandbox_input() :: %{
        required("id") => String.t() | atom()
      }
      
  """
  @type stop_sandbox_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_report_input() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_report_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_fleets_output() :: %{
        "fleets" => list(fleet()),
        "fleetsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_fleets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_source() :: %{
        "auth" => source_auth(),
        "buildStatusConfig" => build_status_config(),
        "buildspec" => String.t() | atom(),
        "gitCloneDepth" => integer(),
        "gitSubmodulesConfig" => git_submodules_config(),
        "insecureSsl" => boolean(),
        "location" => String.t() | atom(),
        "reportBuildStatus" => boolean(),
        "sourceIdentifier" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type project_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_project_input() :: %{
        optional("autoRetryLimit") => integer(),
        optional("badgeEnabled") => boolean(),
        optional("buildBatchConfig") => project_build_batch_config(),
        optional("cache") => project_cache(),
        optional("concurrentBuildLimit") => integer(),
        optional("description") => String.t() | atom(),
        optional("encryptionKey") => String.t() | atom(),
        optional("fileSystemLocations") => list(project_file_system_location()),
        optional("logsConfig") => logs_config(),
        optional("queuedTimeoutInMinutes") => integer(),
        optional("secondaryArtifacts") => list(project_artifacts()),
        optional("secondarySourceVersions") => list(project_source_version()),
        optional("secondarySources") => list(project_source()),
        optional("sourceVersion") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("timeoutInMinutes") => integer(),
        optional("vpcConfig") => vpc_config(),
        required("artifacts") => project_artifacts(),
        required("environment") => project_environment(),
        required("name") => String.t() | atom(),
        required("serviceRole") => String.t() | atom(),
        required("source") => project_source()
      }
      
  """
  @type create_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fleets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_fleets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_credentials_info() :: %{
        "arn" => String.t() | atom(),
        "authType" => list(any()),
        "resource" => String.t() | atom(),
        "serverType" => list(any())
      }
      
  """
  @type source_credentials_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fleet_input() :: %{
        optional("baseCapacity") => integer(),
        optional("computeConfiguration") => compute_configuration(),
        optional("computeType") => list(any()),
        optional("environmentType") => list(any()),
        optional("fleetServiceRole") => String.t() | atom(),
        optional("imageId") => String.t() | atom(),
        optional("overflowBehavior") => list(any()),
        optional("proxyConfiguration") => proxy_configuration(),
        optional("scalingConfiguration") => scaling_configuration_input(),
        optional("tags") => list(tag()),
        optional("vpcConfig") => vpc_config(),
        required("arn") => String.t() | atom()
      }
      
  """
  @type update_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fleet_input() :: %{
        optional("computeConfiguration") => compute_configuration(),
        optional("fleetServiceRole") => String.t() | atom(),
        optional("imageId") => String.t() | atom(),
        optional("overflowBehavior") => list(any()),
        optional("proxyConfiguration") => proxy_configuration(),
        optional("scalingConfiguration") => scaling_configuration_input(),
        optional("tags") => list(tag()),
        optional("vpcConfig") => vpc_config(),
        required("baseCapacity") => integer(),
        required("computeType") => list(any()),
        required("environmentType") => list(any()),
        required("name") => String.t() | atom()
      }
      
  """
  @type create_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      webhook_filter() :: %{
        "excludeMatchedPattern" => boolean(),
        "pattern" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type webhook_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_batch_phase() :: %{
        "contexts" => list(phase_context()),
        "durationInSeconds" => float(),
        "endTime" => non_neg_integer(),
        "phaseStatus" => list(any()),
        "phaseType" => list(any()),
        "startTime" => non_neg_integer()
      }
      
  """
  @type build_batch_phase() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sandbox() :: %{
        "arn" => String.t() | atom(),
        "currentSession" => sandbox_session(),
        "encryptionKey" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "environment" => project_environment(),
        "fileSystemLocations" => list(project_file_system_location()),
        "id" => String.t() | atom(),
        "logConfig" => logs_config(),
        "projectName" => String.t() | atom(),
        "queuedTimeoutInMinutes" => integer(),
        "requestTime" => non_neg_integer(),
        "secondarySourceVersions" => list(project_source_version()),
        "secondarySources" => list(project_source()),
        "serviceRole" => String.t() | atom(),
        "source" => project_source(),
        "sourceVersion" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | atom(),
        "timeoutInMinutes" => integer(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type sandbox() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      logs_location() :: %{
        "cloudWatchLogs" => cloud_watch_logs_config(),
        "cloudWatchLogsArn" => String.t() | atom(),
        "deepLink" => String.t() | atom(),
        "groupName" => String.t() | atom(),
        "s3DeepLink" => String.t() | atom(),
        "s3Logs" => s3_logs_config(),
        "s3LogsArn" => String.t() | atom(),
        "streamName" => String.t() | atom()
      }
      
  """
  @type logs_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet_proxy_rule() :: %{
        "effect" => list(any()),
        "entities" => list(String.t() | atom()),
        "type" => list(any())
      }
      
  """
  @type fleet_proxy_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_output() :: %{}
      
  """
  @type delete_resource_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      scope_configuration() :: %{
        "domain" => String.t() | atom(),
        "name" => String.t() | atom(),
        "scope" => list(any())
      }
      
  """
  @type scope_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_command_executions_input() :: %{
        required("commandExecutionIds") => list(String.t() | atom()),
        required("sandboxId") => String.t() | atom()
      }
      
  """
  @type batch_get_command_executions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_coverage() :: %{
        "branchCoveragePercentage" => float(),
        "branchesCovered" => integer(),
        "branchesMissed" => integer(),
        "expired" => non_neg_integer(),
        "filePath" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lineCoveragePercentage" => float(),
        "linesCovered" => integer(),
        "linesMissed" => integer(),
        "reportARN" => String.t() | atom()
      }
      
  """
  @type code_coverage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      registry_credential() :: %{
        "credential" => String.t() | atom(),
        "credentialProvider" => list(any())
      }
      
  """
  @type registry_credential() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_batch() :: %{
        "arn" => String.t() | atom(),
        "artifacts" => build_artifacts(),
        "buildBatchConfig" => project_build_batch_config(),
        "buildBatchNumber" => float(),
        "buildBatchStatus" => list(any()),
        "buildGroups" => list(build_group()),
        "buildTimeoutInMinutes" => integer(),
        "cache" => project_cache(),
        "complete" => boolean(),
        "currentPhase" => String.t() | atom(),
        "debugSessionEnabled" => boolean(),
        "encryptionKey" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "environment" => project_environment(),
        "fileSystemLocations" => list(project_file_system_location()),
        "id" => String.t() | atom(),
        "initiator" => String.t() | atom(),
        "logConfig" => logs_config(),
        "phases" => list(build_batch_phase()),
        "projectName" => String.t() | atom(),
        "queuedTimeoutInMinutes" => integer(),
        "reportArns" => list(String.t() | atom()),
        "resolvedSourceVersion" => String.t() | atom(),
        "secondaryArtifacts" => list(build_artifacts()),
        "secondarySourceVersions" => list(project_source_version()),
        "secondarySources" => list(project_source()),
        "serviceRole" => String.t() | atom(),
        "source" => project_source(),
        "sourceVersion" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type build_batch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_sandboxes_for_project_output() :: %{
        "ids" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_sandboxes_for_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolved_artifact() :: %{
        "identifier" => String.t() | atom(),
        "location" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type resolved_artifact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_shared_report_groups_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_shared_report_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_project_output() :: %{
        "project" => project()
      }
      
  """
  @type update_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_report_group_input() :: %{
        optional("tags") => list(tag()),
        required("exportConfig") => report_export_config(),
        required("name") => String.t() | atom(),
        required("type") => list(any())
      }
      
  """
  @type create_report_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s_smsession() :: %{
        "sessionId" => String.t() | atom(),
        "streamUrl" => String.t() | atom(),
        "tokenValue" => String.t() | atom()
      }
      
  """
  @type s_smsession() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_sandboxes_output() :: %{
        "ids" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_sandboxes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_input() :: %{
        optional("filter") => build_batch_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_build_batches_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_case_filter() :: %{
        "keyword" => String.t() | atom(),
        "status" => String.t() | atom()
      }
      
  """
  @type test_case_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_input() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type get_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_input() :: %{
        optional("idempotencyToken") => String.t() | atom(),
        optional("projectName") => String.t() | atom()
      }
      
  """
  @type start_sandbox_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_projects_input() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_projects_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_batch_filter() :: %{
        "status" => list(any())
      }
      
  """
  @type build_batch_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_projects_input() :: %{
        required("names") => list(String.t() | atom())
      }
      
  """
  @type batch_get_projects_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_restrictions() :: %{
        "computeTypesAllowed" => list(String.t() | atom()),
        "fleetsAllowed" => list(String.t() | atom()),
        "maximumBuildsAllowed" => integer()
      }
      
  """
  @type batch_restrictions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_fleets_input() :: %{
        required("names") => list(String.t() | atom())
      }
      
  """
  @type batch_get_fleets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_filter() :: %{
        "status" => list(any())
      }
      
  """
  @type report_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_sandboxes_for_project_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        required("projectName") => String.t() | atom()
      }
      
  """
  @type list_sandboxes_for_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_configuration_input() :: %{
        "maxCapacity" => integer(),
        "scalingType" => list(any()),
        "targetTrackingScalingConfigs" => list(target_tracking_scaling_configuration())
      }
      
  """
  @type scaling_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_fleet() :: %{
        "fleetArn" => String.t() | atom()
      }
      
  """
  @type project_fleet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_webhook_input() :: %{
        required("projectName") => String.t() | atom()
      }
      
  """
  @type delete_webhook_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_project_output() :: %{}
      
  """
  @type delete_project_output() :: %{}

  @typedoc """

  ## Example:
      
      list_sandboxes_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_sandboxes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_project_input() :: %{
        required("name") => String.t() | atom()
      }
      
  """
  @type delete_project_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_build_policy() :: %{
        "approverRoles" => list(list(any())()),
        "requiresCommentApproval" => list(any())
      }
      
  """
  @type pull_request_build_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_test_cases_input() :: %{
        optional("filter") => test_case_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("reportArn") => String.t() | atom()
      }
      
  """
  @type describe_test_cases_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_image() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "versions" => list(String.t() | atom())
      }
      
  """
  @type environment_image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_delete_builds_output() :: %{
        "buildsDeleted" => list(String.t() | atom()),
        "buildsNotDeleted" => list(build_not_deleted())
      }
      
  """
  @type batch_delete_builds_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_report_group_input() :: %{
        optional("exportConfig") => report_export_config(),
        optional("tags") => list(tag()),
        required("arn") => String.t() | atom()
      }
      
  """
  @type update_report_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_phase() :: %{
        "contexts" => list(phase_context()),
        "durationInSeconds" => float(),
        "endTime" => non_neg_integer(),
        "phaseStatus" => list(any()),
        "phaseType" => list(any()),
        "startTime" => non_neg_integer()
      }
      
  """
  @type build_phase() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_for_project_output() :: %{
        "ids" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_build_batches_for_project_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalidate_project_cache_output() :: %{}
      
  """
  @type invalidate_project_cache_output() :: %{}

  @typedoc """

  ## Example:
      
      retry_build_input() :: %{
        optional("id") => String.t() | atom(),
        optional("idempotencyToken") => String.t() | atom()
      }
      
  """
  @type retry_build_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_build_batch_input() :: %{
        optional("artifactsOverride") => project_artifacts(),
        optional("buildBatchConfigOverride") => project_build_batch_config(),
        optional("buildTimeoutInMinutesOverride") => integer(),
        optional("buildspecOverride") => String.t() | atom(),
        optional("cacheOverride") => project_cache(),
        optional("certificateOverride") => String.t() | atom(),
        optional("computeTypeOverride") => list(any()),
        optional("debugSessionEnabled") => boolean(),
        optional("encryptionKeyOverride") => String.t() | atom(),
        optional("environmentTypeOverride") => list(any()),
        optional("environmentVariablesOverride") => list(environment_variable()),
        optional("gitCloneDepthOverride") => integer(),
        optional("gitSubmodulesConfigOverride") => git_submodules_config(),
        optional("idempotencyToken") => String.t() | atom(),
        optional("imageOverride") => String.t() | atom(),
        optional("imagePullCredentialsTypeOverride") => list(any()),
        optional("insecureSslOverride") => boolean(),
        optional("logsConfigOverride") => logs_config(),
        optional("privilegedModeOverride") => boolean(),
        optional("queuedTimeoutInMinutesOverride") => integer(),
        optional("registryCredentialOverride") => registry_credential(),
        optional("reportBuildBatchStatusOverride") => boolean(),
        optional("secondaryArtifactsOverride") => list(project_artifacts()),
        optional("secondarySourcesOverride") => list(project_source()),
        optional("secondarySourcesVersionOverride") => list(project_source_version()),
        optional("serviceRoleOverride") => String.t() | atom(),
        optional("sourceAuthOverride") => source_auth(),
        optional("sourceLocationOverride") => String.t() | atom(),
        optional("sourceTypeOverride") => list(any()),
        optional("sourceVersion") => String.t() | atom(),
        required("projectName") => String.t() | atom()
      }
      
  """
  @type start_build_batch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_language() :: %{
        "images" => list(environment_image()),
        "language" => list(any())
      }
      
  """
  @type environment_language() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_sandboxes_output() :: %{
        "sandboxes" => list(sandbox()),
        "sandboxesNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_sandboxes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sandbox_session() :: %{
        "currentPhase" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "logs" => logs_location(),
        "networkInterface" => network_interface(),
        "phases" => list(sandbox_session_phase()),
        "resolvedSourceVersion" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | atom()
      }
      
  """
  @type sandbox_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_configuration_output() :: %{
        "desiredCapacity" => integer(),
        "maxCapacity" => integer(),
        "scalingType" => list(any()),
        "targetTrackingScalingConfigs" => list(target_tracking_scaling_configuration())
      }
      
  """
  @type scaling_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report() :: %{
        "arn" => String.t() | atom(),
        "codeCoverageSummary" => code_coverage_report_summary(),
        "created" => non_neg_integer(),
        "executionId" => String.t() | atom(),
        "expired" => non_neg_integer(),
        "exportConfig" => report_export_config(),
        "name" => String.t() | atom(),
        "reportGroupArn" => String.t() | atom(),
        "status" => list(any()),
        "testSummary" => test_report_summary(),
        "truncated" => boolean(),
        "type" => list(any())
      }
      
  """
  @type report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_reports_input() :: %{
        required("reportArns") => list(String.t() | atom())
      }
      
  """
  @type batch_get_reports_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_build_input() :: %{
        required("id") => String.t() | atom()
      }
      
  """
  @type stop_build_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build_artifacts() :: %{
        "artifactIdentifier" => String.t() | atom(),
        "bucketOwnerAccess" => list(any()),
        "encryptionDisabled" => boolean(),
        "location" => String.t() | atom(),
        "md5sum" => String.t() | atom(),
        "overrideArtifactName" => boolean(),
        "sha256sum" => String.t() | atom()
      }
      
  """
  @type build_artifacts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_source_credentials_output() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type import_source_credentials_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_report_summary() :: %{
        "durationInNanoSeconds" => float(),
        "statusCounts" => map(),
        "total" => integer()
      }
      
  """
  @type test_report_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      webhook() :: %{
        "branchFilter" => String.t() | atom(),
        "buildType" => list(any()),
        "filterGroups" => list(list(webhook_filter())()),
        "lastModifiedSecret" => non_neg_integer(),
        "manualCreation" => boolean(),
        "payloadUrl" => String.t() | atom(),
        "scopeConfiguration" => scope_configuration(),
        "secret" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "url" => String.t() | atom()
      }
      
  """
  @type webhook() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_report_groups_output() :: %{
        "reportGroups" => list(report_group()),
        "reportGroupsNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_report_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_webhook_input() :: %{
        optional("branchFilter") => String.t() | atom(),
        optional("buildType") => list(any()),
        optional("filterGroups") => list(list(webhook_filter())()),
        optional("pullRequestBuildPolicy") => pull_request_build_policy(),
        optional("rotateSecret") => boolean(),
        required("projectName") => String.t() | atom()
      }
      
  """
  @type update_webhook_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet() :: %{
        "arn" => String.t() | atom(),
        "baseCapacity" => integer(),
        "computeConfiguration" => compute_configuration(),
        "computeType" => list(any()),
        "created" => non_neg_integer(),
        "environmentType" => list(any()),
        "fleetServiceRole" => String.t() | atom(),
        "id" => String.t() | atom(),
        "imageId" => String.t() | atom(),
        "lastModified" => non_neg_integer(),
        "name" => String.t() | atom(),
        "overflowBehavior" => list(any()),
        "proxyConfiguration" => proxy_configuration(),
        "scalingConfiguration" => scaling_configuration_output(),
        "status" => fleet_status(),
        "tags" => list(tag()),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type fleet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_badge() :: %{
        "badgeEnabled" => boolean(),
        "badgeRequestUrl" => String.t() | atom()
      }
      
  """
  @type project_badge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_report_group_trend_output() :: %{
        "rawData" => list(report_with_raw_data()),
        "stats" => report_group_trend_stats()
      }
      
  """
  @type get_report_group_trend_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_reports_for_report_group_output() :: %{
        "nextToken" => String.t() | atom(),
        "reports" => list(String.t() | atom())
      }
      
  """
  @type list_reports_for_report_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_environment() :: %{
        "certificate" => String.t() | atom(),
        "computeConfiguration" => compute_configuration(),
        "computeType" => list(any()),
        "dockerServer" => docker_server(),
        "environmentVariables" => list(environment_variable()),
        "fleet" => project_fleet(),
        "image" => String.t() | atom(),
        "imagePullCredentialsType" => list(any()),
        "privilegedMode" => boolean(),
        "registryCredential" => registry_credential(),
        "type" => list(any())
      }
      
  """
  @type project_environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      docker_server() :: %{
        "computeType" => list(any()),
        "securityGroupIds" => list(String.t() | atom()),
        "status" => docker_server_status()
      }
      
  """
  @type docker_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_builds_output() :: %{
        "ids" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_builds_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_report_groups_input() :: %{
        required("reportGroupArns") => list(String.t() | atom())
      }
      
  """
  @type batch_get_report_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_configuration() :: %{
        "disk" => float(),
        "instanceType" => String.t() | atom(),
        "machineType" => list(any()),
        "memory" => float(),
        "vCpu" => float()
      }
      
  """
  @type compute_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_group() :: %{
        "arn" => String.t() | atom(),
        "created" => non_neg_integer(),
        "exportConfig" => report_export_config(),
        "lastModified" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "tags" => list(tag()),
        "type" => list(any())
      }
      
  """
  @type report_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_auth() :: %{
        "resource" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type source_auth() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_group_trend_stats() :: %{
        "average" => String.t() | atom(),
        "max" => String.t() | atom(),
        "min" => String.t() | atom()
      }
      
  """
  @type report_group_trend_stats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_source_credentials_output() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type delete_source_credentials_output() :: %{(String.t() | atom()) => any()}

  @type batch_delete_builds_errors() :: invalid_input_exception()

  @type batch_get_build_batches_errors() :: invalid_input_exception()

  @type batch_get_builds_errors() :: invalid_input_exception()

  @type batch_get_command_executions_errors() :: invalid_input_exception()

  @type batch_get_fleets_errors() :: invalid_input_exception()

  @type batch_get_projects_errors() :: invalid_input_exception()

  @type batch_get_report_groups_errors() :: invalid_input_exception()

  @type batch_get_reports_errors() :: invalid_input_exception()

  @type batch_get_sandboxes_errors() :: invalid_input_exception()

  @type create_fleet_errors() ::
          resource_already_exists_exception()
          | invalid_input_exception()
          | account_limit_exceeded_exception()

  @type create_project_errors() ::
          resource_already_exists_exception()
          | invalid_input_exception()
          | account_limit_exceeded_exception()

  @type create_report_group_errors() ::
          resource_already_exists_exception()
          | invalid_input_exception()
          | account_limit_exceeded_exception()

  @type create_webhook_errors() ::
          resource_already_exists_exception()
          | o_auth_provider_exception()
          | invalid_input_exception()
          | resource_not_found_exception()

  @type delete_build_batch_errors() :: invalid_input_exception()

  @type delete_fleet_errors() :: invalid_input_exception()

  @type delete_project_errors() :: invalid_input_exception()

  @type delete_report_errors() :: invalid_input_exception()

  @type delete_report_group_errors() :: invalid_input_exception()

  @type delete_resource_policy_errors() :: invalid_input_exception()

  @type delete_source_credentials_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type delete_webhook_errors() ::
          o_auth_provider_exception() | invalid_input_exception() | resource_not_found_exception()

  @type describe_code_coverages_errors() :: invalid_input_exception()

  @type describe_test_cases_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type get_report_group_trend_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type get_resource_policy_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type import_source_credentials_errors() ::
          resource_already_exists_exception()
          | invalid_input_exception()
          | account_limit_exceeded_exception()

  @type invalidate_project_cache_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_build_batches_errors() :: invalid_input_exception()

  @type list_build_batches_for_project_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_builds_errors() :: invalid_input_exception()

  @type list_builds_for_project_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_command_executions_for_sandbox_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_fleets_errors() :: invalid_input_exception()

  @type list_projects_errors() :: invalid_input_exception()

  @type list_report_groups_errors() :: invalid_input_exception()

  @type list_reports_errors() :: invalid_input_exception()

  @type list_reports_for_report_group_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_sandboxes_errors() :: invalid_input_exception()

  @type list_sandboxes_for_project_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type list_shared_projects_errors() :: invalid_input_exception()

  @type list_shared_report_groups_errors() :: invalid_input_exception()

  @type list_source_credentials_errors() :: invalid_input_exception()

  @type put_resource_policy_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type retry_build_errors() ::
          invalid_input_exception()
          | account_limit_exceeded_exception()
          | resource_not_found_exception()

  @type retry_build_batch_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type start_build_errors() ::
          invalid_input_exception()
          | account_limit_exceeded_exception()
          | resource_not_found_exception()

  @type start_build_batch_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type start_command_execution_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type start_sandbox_errors() ::
          invalid_input_exception()
          | resource_not_found_exception()
          | account_suspended_exception()

  @type start_sandbox_connection_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type stop_build_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type stop_build_batch_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type stop_sandbox_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type update_fleet_errors() ::
          invalid_input_exception()
          | account_limit_exceeded_exception()
          | resource_not_found_exception()

  @type update_project_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type update_project_visibility_errors() ::
          invalid_input_exception() | resource_not_found_exception()

  @type update_report_group_errors() :: invalid_input_exception() | resource_not_found_exception()

  @type update_webhook_errors() ::
          o_auth_provider_exception() | invalid_input_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2016-10-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codebuild",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CodeBuild",
      signature_version: "v4",
      signing_name: "codebuild",
      target_prefix: "CodeBuild_20161006"
    }
  end

  @doc """
  Deletes one or more builds.
  """
  @spec batch_delete_builds(map(), batch_delete_builds_input(), list()) ::
          {:ok, batch_delete_builds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_builds_errors()}
  def batch_delete_builds(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteBuilds", input, options)
  end

  @doc """
  Retrieves information about one or more batch builds.
  """
  @spec batch_get_build_batches(map(), batch_get_build_batches_input(), list()) ::
          {:ok, batch_get_build_batches_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_build_batches_errors()}
  def batch_get_build_batches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetBuildBatches", input, options)
  end

  @doc """
  Gets information about one or more builds.
  """
  @spec batch_get_builds(map(), batch_get_builds_input(), list()) ::
          {:ok, batch_get_builds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_builds_errors()}
  def batch_get_builds(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetBuilds", input, options)
  end

  @doc """
  Gets information about the command executions.
  """
  @spec batch_get_command_executions(map(), batch_get_command_executions_input(), list()) ::
          {:ok, batch_get_command_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_command_executions_errors()}
  def batch_get_command_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetCommandExecutions", input, options)
  end

  @doc """
  Gets information about one or more compute fleets.
  """
  @spec batch_get_fleets(map(), batch_get_fleets_input(), list()) ::
          {:ok, batch_get_fleets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_fleets_errors()}
  def batch_get_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetFleets", input, options)
  end

  @doc """
  Gets information about one or more build projects.
  """
  @spec batch_get_projects(map(), batch_get_projects_input(), list()) ::
          {:ok, batch_get_projects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_projects_errors()}
  def batch_get_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetProjects", input, options)
  end

  @doc """

  Returns an array of report groups.
  """
  @spec batch_get_report_groups(map(), batch_get_report_groups_input(), list()) ::
          {:ok, batch_get_report_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_report_groups_errors()}
  def batch_get_report_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetReportGroups", input, options)
  end

  @doc """

  Returns an array of reports.
  """
  @spec batch_get_reports(map(), batch_get_reports_input(), list()) ::
          {:ok, batch_get_reports_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_reports_errors()}
  def batch_get_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetReports", input, options)
  end

  @doc """
  Gets information about the sandbox status.
  """
  @spec batch_get_sandboxes(map(), batch_get_sandboxes_input(), list()) ::
          {:ok, batch_get_sandboxes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_sandboxes_errors()}
  def batch_get_sandboxes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetSandboxes", input, options)
  end

  @doc """
  Creates a compute fleet.
  """
  @spec create_fleet(map(), create_fleet_input(), list()) ::
          {:ok, create_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleet", input, options)
  end

  @doc """
  Creates a build project.
  """
  @spec create_project(map(), create_project_input(), list()) ::
          {:ok, create_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """

  Creates a report group.

  A report group contains a collection of reports.
  """
  @spec create_report_group(map(), create_report_group_input(), list()) ::
          {:ok, create_report_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_report_group_errors()}
  def create_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReportGroup", input, options)
  end

  @doc """
  For an existing CodeBuild build project that has its source code stored in a
  GitHub or
  Bitbucket repository, enables CodeBuild to start rebuilding the source code
  every time a
  code change is pushed to the repository.

  If you enable webhooks for an CodeBuild project, and the project is used as a
  build
  step in CodePipeline, then two identical builds are created for each commit. One
  build is
  triggered through webhooks, and one through CodePipeline. Because billing is on
  a per-build
  basis, you are billed for both builds. Therefore, if you are using CodePipeline,
  we
  recommend that you disable webhooks in CodeBuild. In the CodeBuild console,
  clear the
  Webhook box. For more information, see step 5 in [Change a Build Project's Settings](https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).
  """
  @spec create_webhook(map(), create_webhook_input(), list()) ::
          {:ok, create_webhook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_webhook_errors()}
  def create_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWebhook", input, options)
  end

  @doc """
  Deletes a batch build.
  """
  @spec delete_build_batch(map(), delete_build_batch_input(), list()) ::
          {:ok, delete_build_batch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_build_batch_errors()}
  def delete_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBuildBatch", input, options)
  end

  @doc """
  Deletes a compute fleet.

  When you delete a compute fleet, its builds are not deleted.
  """
  @spec delete_fleet(map(), delete_fleet_input(), list()) ::
          {:ok, delete_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleet", input, options)
  end

  @doc """
  Deletes a build project.

  When you delete a project, its builds are not deleted.
  """
  @spec delete_project(map(), delete_project_input(), list()) ::
          {:ok, delete_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """

  Deletes a report.
  """
  @spec delete_report(map(), delete_report_input(), list()) ::
          {:ok, delete_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_report_errors()}
  def delete_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReport", input, options)
  end

  @doc """
  Deletes a report group.

  Before you delete a report group, you must delete its reports.
  """
  @spec delete_report_group(map(), delete_report_group_input(), list()) ::
          {:ok, delete_report_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_report_group_errors()}
  def delete_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReportGroup", input, options)
  end

  @doc """
  Deletes a resource policy that is identified by its resource ARN.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_input(), list()) ::
          {:ok, delete_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
  """
  @spec delete_source_credentials(map(), delete_source_credentials_input(), list()) ::
          {:ok, delete_source_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_source_credentials_errors()}
  def delete_source_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSourceCredentials", input, options)
  end

  @doc """
  For an existing CodeBuild build project that has its source code stored in a
  GitHub or
  Bitbucket repository, stops CodeBuild from rebuilding the source code every time
  a code
  change is pushed to the repository.
  """
  @spec delete_webhook(map(), delete_webhook_input(), list()) ::
          {:ok, delete_webhook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_webhook_errors()}
  def delete_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWebhook", input, options)
  end

  @doc """
  Retrieves one or more code coverage reports.
  """
  @spec describe_code_coverages(map(), describe_code_coverages_input(), list()) ::
          {:ok, describe_code_coverages_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_code_coverages_errors()}
  def describe_code_coverages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCodeCoverages", input, options)
  end

  @doc """

  Returns a list of details about test cases for a report.
  """
  @spec describe_test_cases(map(), describe_test_cases_input(), list()) ::
          {:ok, describe_test_cases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_test_cases_errors()}
  def describe_test_cases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTestCases", input, options)
  end

  @doc """
  Analyzes and accumulates test report values for the specified test reports.
  """
  @spec get_report_group_trend(map(), get_report_group_trend_input(), list()) ::
          {:ok, get_report_group_trend_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_report_group_trend_errors()}
  def get_report_group_trend(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReportGroupTrend", input, options)
  end

  @doc """
  Gets a resource policy that is identified by its resource ARN.
  """
  @spec get_resource_policy(map(), get_resource_policy_input(), list()) ::
          {:ok, get_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Imports the source repository credentials for an CodeBuild project that has its
  source code stored in a GitHub, GitHub Enterprise, GitLab, GitLab Self Managed,
  or Bitbucket repository.
  """
  @spec import_source_credentials(map(), import_source_credentials_input(), list()) ::
          {:ok, import_source_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_source_credentials_errors()}
  def import_source_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportSourceCredentials", input, options)
  end

  @doc """
  Resets the cache for a project.
  """
  @spec invalidate_project_cache(map(), invalidate_project_cache_input(), list()) ::
          {:ok, invalidate_project_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invalidate_project_cache_errors()}
  def invalidate_project_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InvalidateProjectCache", input, options)
  end

  @doc """
  Retrieves the identifiers of your build batches in the current region.
  """
  @spec list_build_batches(map(), list_build_batches_input(), list()) ::
          {:ok, list_build_batches_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_build_batches_errors()}
  def list_build_batches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuildBatches", input, options)
  end

  @doc """
  Retrieves the identifiers of the build batches for a specific project.
  """
  @spec list_build_batches_for_project(map(), list_build_batches_for_project_input(), list()) ::
          {:ok, list_build_batches_for_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_build_batches_for_project_errors()}
  def list_build_batches_for_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuildBatchesForProject", input, options)
  end

  @doc """
  Gets a list of build IDs, with each build ID representing a single build.
  """
  @spec list_builds(map(), list_builds_input(), list()) ::
          {:ok, list_builds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_builds_errors()}
  def list_builds(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuilds", input, options)
  end

  @doc """
  Gets a list of build identifiers for the specified build project, with each
  build
  identifier representing a single build.
  """
  @spec list_builds_for_project(map(), list_builds_for_project_input(), list()) ::
          {:ok, list_builds_for_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_builds_for_project_errors()}
  def list_builds_for_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuildsForProject", input, options)
  end

  @doc """
  Gets a list of command executions for a sandbox.
  """
  @spec list_command_executions_for_sandbox(
          map(),
          list_command_executions_for_sandbox_input(),
          list()
        ) ::
          {:ok, list_command_executions_for_sandbox_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_command_executions_for_sandbox_errors()}
  def list_command_executions_for_sandbox(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCommandExecutionsForSandbox", input, options)
  end

  @doc """
  Gets information about Docker images that are managed by CodeBuild.
  """
  @spec list_curated_environment_images(map(), list_curated_environment_images_input(), list()) ::
          {:ok, list_curated_environment_images_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_curated_environment_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCuratedEnvironmentImages", input, options)
  end

  @doc """
  Gets a list of compute fleet names with each compute fleet name representing a
  single compute fleet.
  """
  @spec list_fleets(map(), list_fleets_input(), list()) ::
          {:ok, list_fleets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleets", input, options)
  end

  @doc """
  Gets a list of build project names, with each build project name representing a
  single
  build project.
  """
  @spec list_projects(map(), list_projects_input(), list()) ::
          {:ok, list_projects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProjects", input, options)
  end

  @doc """

  Gets a list ARNs for the report groups in the current Amazon Web Services
  account.
  """
  @spec list_report_groups(map(), list_report_groups_input(), list()) ::
          {:ok, list_report_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_report_groups_errors()}
  def list_report_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReportGroups", input, options)
  end

  @doc """

  Returns a list of ARNs for the reports in the current Amazon Web Services
  account.
  """
  @spec list_reports(map(), list_reports_input(), list()) ::
          {:ok, list_reports_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reports_errors()}
  def list_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReports", input, options)
  end

  @doc """

  Returns a list of ARNs for the reports that belong to a `ReportGroup`.
  """
  @spec list_reports_for_report_group(map(), list_reports_for_report_group_input(), list()) ::
          {:ok, list_reports_for_report_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reports_for_report_group_errors()}
  def list_reports_for_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReportsForReportGroup", input, options)
  end

  @doc """
  Gets a list of sandboxes.
  """
  @spec list_sandboxes(map(), list_sandboxes_input(), list()) ::
          {:ok, list_sandboxes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sandboxes_errors()}
  def list_sandboxes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSandboxes", input, options)
  end

  @doc """
  Gets a list of sandboxes for a given project.
  """
  @spec list_sandboxes_for_project(map(), list_sandboxes_for_project_input(), list()) ::
          {:ok, list_sandboxes_for_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sandboxes_for_project_errors()}
  def list_sandboxes_for_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSandboxesForProject", input, options)
  end

  @doc """
  Gets a list of projects that are shared with other Amazon Web Services accounts
  or users.
  """
  @spec list_shared_projects(map(), list_shared_projects_input(), list()) ::
          {:ok, list_shared_projects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_shared_projects_errors()}
  def list_shared_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSharedProjects", input, options)
  end

  @doc """
  Gets a list of report groups that are shared with other Amazon Web Services
  accounts or users.
  """
  @spec list_shared_report_groups(map(), list_shared_report_groups_input(), list()) ::
          {:ok, list_shared_report_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_shared_report_groups_errors()}
  def list_shared_report_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSharedReportGroups", input, options)
  end

  @doc """
  Returns a list of `SourceCredentialsInfo` objects.
  """
  @spec list_source_credentials(map(), list_source_credentials_input(), list()) ::
          {:ok, list_source_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_source_credentials_errors()}
  def list_source_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSourceCredentials", input, options)
  end

  @doc """
  Stores a resource policy for the ARN of a `Project` or
  `ReportGroup` object.
  """
  @spec put_resource_policy(map(), put_resource_policy_input(), list()) ::
          {:ok, put_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Restarts a build.
  """
  @spec retry_build(map(), retry_build_input(), list()) ::
          {:ok, retry_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, retry_build_errors()}
  def retry_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RetryBuild", input, options)
  end

  @doc """
  Restarts a failed batch build.

  Only batch builds that have failed can be retried.
  """
  @spec retry_build_batch(map(), retry_build_batch_input(), list()) ::
          {:ok, retry_build_batch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, retry_build_batch_errors()}
  def retry_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RetryBuildBatch", input, options)
  end

  @doc """
  Starts running a build with the settings defined in the project.

  These setting include: how to run a build,
  where to get the source code, which build environment to use, which build
  commands to run, and where to store the build output.

  You can also start a build run by overriding some of the build settings in the
  project. The overrides only apply for that
  specific start build request. The settings in the project are unaltered.
  """
  @spec start_build(map(), start_build_input(), list()) ::
          {:ok, start_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_build_errors()}
  def start_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBuild", input, options)
  end

  @doc """
  Starts a batch build for a project.
  """
  @spec start_build_batch(map(), start_build_batch_input(), list()) ::
          {:ok, start_build_batch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_build_batch_errors()}
  def start_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBuildBatch", input, options)
  end

  @doc """
  Starts a command execution.
  """
  @spec start_command_execution(map(), start_command_execution_input(), list()) ::
          {:ok, start_command_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_command_execution_errors()}
  def start_command_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartCommandExecution", input, options)
  end

  @doc """
  Starts a sandbox.
  """
  @spec start_sandbox(map(), start_sandbox_input(), list()) ::
          {:ok, start_sandbox_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_sandbox_errors()}
  def start_sandbox(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSandbox", input, options)
  end

  @doc """
  Starts a sandbox connection.
  """
  @spec start_sandbox_connection(map(), start_sandbox_connection_input(), list()) ::
          {:ok, start_sandbox_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_sandbox_connection_errors()}
  def start_sandbox_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSandboxConnection", input, options)
  end

  @doc """
  Attempts to stop running a build.
  """
  @spec stop_build(map(), stop_build_input(), list()) ::
          {:ok, stop_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_build_errors()}
  def stop_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopBuild", input, options)
  end

  @doc """
  Stops a running batch build.
  """
  @spec stop_build_batch(map(), stop_build_batch_input(), list()) ::
          {:ok, stop_build_batch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_build_batch_errors()}
  def stop_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopBuildBatch", input, options)
  end

  @doc """
  Stops a sandbox.
  """
  @spec stop_sandbox(map(), stop_sandbox_input(), list()) ::
          {:ok, stop_sandbox_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_sandbox_errors()}
  def stop_sandbox(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopSandbox", input, options)
  end

  @doc """
  Updates a compute fleet.
  """
  @spec update_fleet(map(), update_fleet_input(), list()) ::
          {:ok, update_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fleet_errors()}
  def update_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleet", input, options)
  end

  @doc """
  Changes the settings of a build project.
  """
  @spec update_project(map(), update_project_input(), list()) ::
          {:ok, update_project_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProject", input, options)
  end

  @doc """
  Changes the public visibility for a project.

  The project's build results, logs, and
  artifacts are available to the general public. For more information, see [Public build
  projects](https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html)
  in the *CodeBuild User Guide*.

  The following should be kept in mind when making your projects public:

    
  All of a project's build results, logs, and artifacts, including builds that
  were run
  when the project was private, are available to the general public.

    
  All build logs and artifacts are available to the public. Environment variables,
  source
  code, and other sensitive information may have been output to the build logs and
  artifacts.
  You must be careful about what information is output to the build logs. Some
  best practice
  are:

      
  Do not store sensitive values in environment variables. We recommend that you
  use an Amazon EC2 Systems Manager Parameter Store
  or Secrets Manager to store sensitive values.

      
  Follow [Best practices for using
  webhooks](https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices)
  in the *CodeBuild User
  Guide* to limit which entities can trigger a build, and do
  not store the buildspec in the project itself, to ensure that your webhooks are
  as
  secure as possible.

    
  A malicious user can use public builds to distribute malicious artifacts. We
  recommend
  that you review all pull requests to verify that the pull request is a
  legitimate change. We
  also recommend that you validate any artifacts with their checksums to make sure
  that the
  correct artifacts are being downloaded.
  """
  @spec update_project_visibility(map(), update_project_visibility_input(), list()) ::
          {:ok, update_project_visibility_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_project_visibility_errors()}
  def update_project_visibility(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProjectVisibility", input, options)
  end

  @doc """

  Updates a report group.
  """
  @spec update_report_group(map(), update_report_group_input(), list()) ::
          {:ok, update_report_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_report_group_errors()}
  def update_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateReportGroup", input, options)
  end

  @doc """
  Updates the webhook associated with an CodeBuild build project.

  If you use Bitbucket for your repository, `rotateSecret` is ignored.
  """
  @spec update_webhook(map(), update_webhook_input(), list()) ::
          {:ok, update_webhook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_webhook_errors()}
  def update_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWebhook", input, options)
  end
end
