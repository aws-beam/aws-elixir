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
  @type update_fleet_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_source_version() :: %{
        "sourceIdentifier" => String.t() | Atom.t(),
        "sourceVersion" => String.t() | Atom.t()
      }
      
  """
  @type project_source_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      phase_context() :: %{
        "message" => String.t() | Atom.t(),
        "statusCode" => String.t() | Atom.t()
      }
      
  """
  @type phase_context() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_sandboxes_input() :: %{
        required("ids") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_sandboxes_input() :: %{String.t() | Atom.t() => any()}

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
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any()),
        required("sandboxId") => String.t() | Atom.t()
      }
      
  """
  @type list_command_executions_for_sandbox_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_report_group_input() :: %{
        optional("deleteReports") => boolean(),
        required("arn") => String.t() | Atom.t()
      }
      
  """
  @type delete_report_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_build_batches_input() :: %{
        required("ids") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_build_batches_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_report_groups_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_report_groups_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_for_project_output() :: %{
        "ids" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_builds_for_project_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_build_batch_input() :: %{
        required("id") => String.t() | Atom.t()
      }
      
  """
  @type stop_build_batch_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_for_project_input() :: %{
        optional("filter") => build_batch_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("projectName") => String.t() | Atom.t(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_build_batches_for_project_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      command_execution() :: %{
        "command" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "exitCode" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "logs" => logs_location(),
        "sandboxArn" => String.t() | Atom.t(),
        "sandboxId" => String.t() | Atom.t(),
        "standardErrContent" => String.t() | Atom.t(),
        "standardOutputContent" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | Atom.t(),
        "submitTime" => non_neg_integer(),
        "type" => list(any())
      }
      
  """
  @type command_execution() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_build_batch_input() :: %{
        required("id") => String.t() | Atom.t()
      }
      
  """
  @type delete_build_batch_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_command_executions_output() :: %{
        "commandExecutions" => list(command_execution()),
        "commandExecutionsNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_command_executions_output() :: %{String.t() | Atom.t() => any()}

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
  @type stop_sandbox_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      git_submodules_config() :: %{
        "fetchSubmodules" => boolean()
      }
      
  """
  @type git_submodules_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_output() :: %{
        "ids" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_build_batches_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_connection_input() :: %{
        required("sandboxId") => String.t() | Atom.t()
      }
      
  """
  @type start_sandbox_connection_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      proxy_configuration() :: %{
        "defaultBehavior" => list(any()),
        "orderedProxyRules" => list(fleet_proxy_rule())
      }
      
  """
  @type proxy_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      logs_config() :: %{
        "cloudWatchLogs" => cloud_watch_logs_config(),
        "s3Logs" => s3_logs_config()
      }
      
  """
  @type logs_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_output() :: %{
        "policy" => String.t() | Atom.t()
      }
      
  """
  @type get_resource_policy_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_output() :: %{
        "fleets" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_fleets_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build() :: %{
        "fileSystemLocations" => list(project_file_system_location()),
        "cache" => project_cache(),
        "id" => String.t() | Atom.t(),
        "phases" => list(build_phase()),
        "artifacts" => build_artifacts(),
        "reportArns" => list(String.t() | Atom.t()),
        "buildNumber" => float(),
        "serviceRole" => String.t() | Atom.t(),
        "secondarySources" => list(project_source()),
        "buildStatus" => list(any()),
        "sourceVersion" => String.t() | Atom.t(),
        "secondaryArtifacts" => list(build_artifacts()),
        "queuedTimeoutInMinutes" => integer(),
        "buildComplete" => boolean(),
        "source" => project_source(),
        "resolvedSourceVersion" => String.t() | Atom.t(),
        "logs" => logs_location(),
        "exportedEnvironmentVariables" => list(exported_environment_variable()),
        "startTime" => non_neg_integer(),
        "secondarySourceVersions" => list(project_source_version()),
        "networkInterface" => network_interface(),
        "environment" => project_environment(),
        "arn" => String.t() | Atom.t(),
        "projectName" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "autoRetryConfig" => auto_retry_config(),
        "initiator" => String.t() | Atom.t(),
        "vpcConfig" => vpc_config(),
        "buildBatchArn" => String.t() | Atom.t(),
        "timeoutInMinutes" => integer(),
        "encryptionKey" => String.t() | Atom.t(),
        "currentPhase" => String.t() | Atom.t(),
        "debugSession" => debug_session()
      }
      
  """
  @type build() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_input() :: %{
        optional("artifacts") => project_artifacts(),
        optional("autoRetryLimit") => integer(),
        optional("badgeEnabled") => boolean(),
        optional("buildBatchConfig") => project_build_batch_config(),
        optional("cache") => project_cache(),
        optional("concurrentBuildLimit") => integer(),
        optional("description") => String.t() | Atom.t(),
        optional("encryptionKey") => String.t() | Atom.t(),
        optional("environment") => project_environment(),
        optional("fileSystemLocations") => list(project_file_system_location()),
        optional("logsConfig") => logs_config(),
        optional("queuedTimeoutInMinutes") => integer(),
        optional("secondaryArtifacts") => list(project_artifacts()),
        optional("secondarySourceVersions") => list(project_source_version()),
        optional("secondarySources") => list(project_source()),
        optional("serviceRole") => String.t() | Atom.t(),
        optional("source") => project_source(),
        optional("sourceVersion") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        optional("timeoutInMinutes") => integer(),
        optional("vpcConfig") => vpc_config(),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type update_project_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build_group() :: %{
        "currentBuildSummary" => build_summary(),
        "dependsOn" => list(String.t() | Atom.t()),
        "identifier" => String.t() | Atom.t(),
        "ignoreFailure" => boolean(),
        "priorBuildSummaryList" => list(build_summary())
      }
      
  """
  @type build_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_for_project_input() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any()),
        required("projectName") => String.t() | Atom.t()
      }
      
  """
  @type list_builds_for_project_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_builds_input() :: %{
        required("ids") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_builds_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_build_batch_output() :: %{
        "buildBatch" => build_batch()
      }
      
  """
  @type stop_build_batch_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_file_system_location() :: %{
        "identifier" => String.t() | Atom.t(),
        "location" => String.t() | Atom.t(),
        "mountOptions" => String.t() | Atom.t(),
        "mountPoint" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type project_file_system_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_reports_input() :: %{
        optional("filter") => report_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_reports_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_source_credentials_input() :: %{}
      
  """
  @type list_source_credentials_input() :: %{}

  @typedoc """

  ## Example:
      
      list_report_groups_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "reportGroups" => list(String.t() | Atom.t())
      }
      
  """
  @type list_report_groups_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_shared_projects_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_shared_projects_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      environment_variable() :: %{
        "name" => String.t() | Atom.t(),
        "type" => list(any()),
        "value" => String.t() | Atom.t()
      }
      
  """
  @type environment_variable() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_config() :: %{
        "groupName" => String.t() | Atom.t(),
        "status" => list(any()),
        "streamName" => String.t() | Atom.t()
      }
      
  """
  @type cloud_watch_logs_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      docker_server_status() :: %{
        "message" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t()
      }
      
  """
  @type docker_server_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "networkInterfaceId" => String.t() | Atom.t(),
        "subnetId" => String.t() | Atom.t()
      }
      
  """
  @type network_interface() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      retry_build_output() :: %{
        "build" => build()
      }
      
  """
  @type retry_build_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      report_with_raw_data() :: %{
        "data" => String.t() | Atom.t(),
        "reportArn" => String.t() | Atom.t()
      }
      
  """
  @type report_with_raw_data() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sandbox_session_phase() :: %{
        "contexts" => list(phase_context()),
        "durationInSeconds" => float(),
        "endTime" => non_neg_integer(),
        "phaseStatus" => list(any()),
        "phaseType" => String.t() | Atom.t(),
        "startTime" => non_neg_integer()
      }
      
  """
  @type sandbox_session_phase() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_report_group_output() :: %{
        "reportGroup" => report_group()
      }
      
  """
  @type create_report_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_input() :: %{
        required("arn") => String.t() | Atom.t()
      }
      
  """
  @type delete_fleet_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_webhook_output() :: %{
        "webhook" => webhook()
      }
      
  """
  @type update_webhook_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_report_group_trend_input() :: %{
        optional("numOfReports") => integer(),
        required("reportGroupArn") => String.t() | Atom.t(),
        required("trendField") => list(any())
      }
      
  """
  @type get_report_group_trend_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_artifacts() :: %{
        "artifactIdentifier" => String.t() | Atom.t(),
        "bucketOwnerAccess" => list(any()),
        "encryptionDisabled" => boolean(),
        "location" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "namespaceType" => list(any()),
        "overrideArtifactName" => boolean(),
        "packaging" => list(any()),
        "path" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type project_artifacts() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      exported_environment_variable() :: %{
        "name" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }
      
  """
  @type exported_environment_variable() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_shared_projects_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "projects" => list(String.t() | Atom.t())
      }
      
  """
  @type list_shared_projects_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_builds_output() :: %{
        "builds" => list(build()),
        "buildsNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_builds_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_output() :: %{
        "project" => project()
      }
      
  """
  @type create_project_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_build_output() :: %{
        "build" => build()
      }
      
  """
  @type stop_build_output() :: %{String.t() | Atom.t() => any()}

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
  @type environment_platform() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_output() :: %{
        "resourceArn" => String.t() | Atom.t()
      }
      
  """
  @type put_resource_policy_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_input() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_builds_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      account_suspended_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type account_suspended_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      report_export_config() :: %{
        "exportConfigType" => list(any()),
        "s3Destination" => s3_report_export_config()
      }
      
  """
  @type report_export_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_code_coverages_input() :: %{
        optional("maxLineCoveragePercentage") => float(),
        optional("maxResults") => integer(),
        optional("minLineCoveragePercentage") => float(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("reportArn") => String.t() | Atom.t()
      }
      
  """
  @type describe_code_coverages_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_source_credentials_input() :: %{
        required("arn") => String.t() | Atom.t()
      }
      
  """
  @type delete_source_credentials_input() :: %{String.t() | Atom.t() => any()}

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
  @type code_coverage_report_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_input() :: %{
        required("resourceArn") => String.t() | Atom.t()
      }
      
  """
  @type delete_resource_policy_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_cache() :: %{
        "cacheNamespace" => String.t() | Atom.t(),
        "location" => String.t() | Atom.t(),
        "modes" => list(list(any())()),
        "type" => list(any())
      }
      
  """
  @type project_cache() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_command_execution_output() :: %{
        "commandExecution" => command_execution()
      }
      
  """
  @type start_command_execution_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_command_executions_for_sandbox_output() :: %{
        "commandExecutions" => list(command_execution()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_command_executions_for_sandbox_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build_not_deleted() :: %{
        "id" => String.t() | Atom.t(),
        "statusCode" => String.t() | Atom.t()
      }
      
  """
  @type build_not_deleted() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      test_case() :: %{
        "durationInNanoSeconds" => float(),
        "expired" => non_neg_integer(),
        "message" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t(),
        "reportArn" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t(),
        "testRawDataPath" => String.t() | Atom.t(),
        "testSuiteName" => String.t() | Atom.t()
      }
      
  """
  @type test_case() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_visibility_input() :: %{
        optional("resourceAccessRole") => String.t() | Atom.t(),
        required("projectArn") => String.t() | Atom.t(),
        required("projectVisibility") => list(any())
      }
      
  """
  @type update_project_visibility_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_status() :: %{
        "context" => list(any()),
        "message" => String.t() | Atom.t(),
        "statusCode" => list(any())
      }
      
  """
  @type fleet_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_build_batch_output() :: %{
        "buildsDeleted" => list(String.t() | Atom.t()),
        "buildsNotDeleted" => list(build_not_deleted()),
        "statusCode" => String.t() | Atom.t()
      }
      
  """
  @type delete_build_batch_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build_summary() :: %{
        "arn" => String.t() | Atom.t(),
        "buildStatus" => list(any()),
        "primaryArtifact" => resolved_artifact(),
        "requestedOn" => non_neg_integer(),
        "secondaryArtifacts" => list(resolved_artifact())
      }
      
  """
  @type build_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      import_source_credentials_input() :: %{
        optional("shouldOverwrite") => boolean(),
        optional("username") => String.t() | Atom.t(),
        required("authType") => list(any()),
        required("serverType") => list(any()),
        required("token") => String.t() | Atom.t()
      }
      
  """
  @type import_source_credentials_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_reports_output() :: %{
        "reports" => list(report()),
        "reportsNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_reports_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_reports_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "reports" => list(String.t() | Atom.t())
      }
      
  """
  @type list_reports_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_webhook_output() :: %{
        "webhook" => webhook()
      }
      
  """
  @type create_webhook_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_command_execution_input() :: %{
        optional("type") => list(any()),
        required("command") => String.t() | Atom.t(),
        required("sandboxId") => String.t() | Atom.t()
      }
      
  """
  @type start_command_execution_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_report_group_output() :: %{}
      
  """
  @type delete_report_group_output() :: %{}

  @typedoc """

  ## Example:
      
      start_build_input() :: %{
        optional("encryptionKeyOverride") => String.t() | Atom.t(),
        optional("idempotencyToken") => String.t() | Atom.t(),
        optional("certificateOverride") => String.t() | Atom.t(),
        optional("computeTypeOverride") => list(any()),
        optional("autoRetryLimitOverride") => integer(),
        optional("artifactsOverride") => project_artifacts(),
        optional("buildStatusConfigOverride") => build_status_config(),
        optional("gitSubmodulesConfigOverride") => git_submodules_config(),
        optional("debugSessionEnabled") => boolean(),
        optional("buildspecOverride") => String.t() | Atom.t(),
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
        required("projectName") => String.t() | Atom.t(),
        optional("secondarySourcesOverride") => list(project_source()),
        optional("sourceVersion") => String.t() | Atom.t(),
        optional("sourceLocationOverride") => String.t() | Atom.t(),
        optional("serviceRoleOverride") => String.t() | Atom.t(),
        optional("logsConfigOverride") => logs_config(),
        optional("secondaryArtifactsOverride") => list(project_artifacts()),
        optional("imageOverride") => String.t() | Atom.t(),
        optional("imagePullCredentialsTypeOverride") => list(any()),
        optional("registryCredentialOverride") => registry_credential(),
        optional("insecureSslOverride") => boolean()
      }
      
  """
  @type start_build_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_reports_for_report_group_input() :: %{
        optional("filter") => report_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any()),
        required("reportGroupArn") => String.t() | Atom.t()
      }
      
  """
  @type list_reports_for_report_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_builds_input() :: %{
        required("ids") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_delete_builds_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_curated_environment_images_output() :: %{
        "platforms" => list(environment_platform())
      }
      
  """
  @type list_curated_environment_images_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_code_coverages_output() :: %{
        "codeCoverages" => list(code_coverage()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type describe_code_coverages_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_shared_report_groups_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "reportGroups" => list(String.t() | Atom.t())
      }
      
  """
  @type list_shared_report_groups_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      retry_build_batch_output() :: %{
        "buildBatch" => build_batch()
      }
      
  """
  @type retry_build_batch_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      account_limit_exceeded_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type account_limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      retry_build_batch_input() :: %{
        optional("id") => String.t() | Atom.t(),
        optional("idempotencyToken") => String.t() | Atom.t(),
        optional("retryType") => list(any())
      }
      
  """
  @type retry_build_batch_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      debug_session() :: %{
        "sessionEnabled" => boolean(),
        "sessionTarget" => String.t() | Atom.t()
      }
      
  """
  @type debug_session() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project() :: %{
        "arn" => String.t() | Atom.t(),
        "artifacts" => project_artifacts(),
        "autoRetryLimit" => integer(),
        "badge" => project_badge(),
        "buildBatchConfig" => project_build_batch_config(),
        "cache" => project_cache(),
        "concurrentBuildLimit" => integer(),
        "created" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "encryptionKey" => String.t() | Atom.t(),
        "environment" => project_environment(),
        "fileSystemLocations" => list(project_file_system_location()),
        "lastModified" => non_neg_integer(),
        "logsConfig" => logs_config(),
        "name" => String.t() | Atom.t(),
        "projectVisibility" => list(any()),
        "publicProjectAlias" => String.t() | Atom.t(),
        "queuedTimeoutInMinutes" => integer(),
        "resourceAccessRole" => String.t() | Atom.t(),
        "secondaryArtifacts" => list(project_artifacts()),
        "secondarySourceVersions" => list(project_source_version()),
        "secondarySources" => list(project_source()),
        "serviceRole" => String.t() | Atom.t(),
        "source" => project_source(),
        "sourceVersion" => String.t() | Atom.t(),
        "tags" => list(tag()),
        "timeoutInMinutes" => integer(),
        "vpcConfig" => vpc_config(),
        "webhook" => webhook()
      }
      
  """
  @type project() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_input() :: %{
        required("policy") => String.t() | Atom.t(),
        required("resourceArn") => String.t() | Atom.t()
      }
      
  """
  @type put_resource_policy_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_projects_output() :: %{
        "projects" => list(project()),
        "projectsNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_projects_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "projects" => list(String.t() | Atom.t())
      }
      
  """
  @type list_projects_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_output() :: %{
        "sandbox" => sandbox()
      }
      
  """
  @type start_sandbox_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_build_batch_config() :: %{
        "batchReportMode" => list(any()),
        "combineArtifacts" => boolean(),
        "restrictions" => batch_restrictions(),
        "serviceRole" => String.t() | Atom.t(),
        "timeoutInMins" => integer()
      }
      
  """
  @type project_build_batch_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_build_batches_output() :: %{
        "buildBatches" => list(build_batch()),
        "buildBatchesNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_build_batches_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_report_group_output() :: %{
        "reportGroup" => report_group()
      }
      
  """
  @type update_report_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalidate_project_cache_input() :: %{
        required("projectName") => String.t() | Atom.t()
      }
      
  """
  @type invalidate_project_cache_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_connection_output() :: %{
        "ssmSession" => s_smsession()
      }
      
  """
  @type start_sandbox_connection_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_scaling_configuration() :: %{
        "metricType" => list(any()),
        "targetValue" => float()
      }
      
  """
  @type target_tracking_scaling_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_test_cases_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "testCases" => list(test_case())
      }
      
  """
  @type describe_test_cases_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "securityGroupIds" => list(String.t() | Atom.t()),
        "subnets" => list(String.t() | Atom.t()),
        "vpcId" => String.t() | Atom.t()
      }
      
  """
  @type vpc_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      auto_retry_config() :: %{
        "autoRetryLimit" => integer(),
        "autoRetryNumber" => integer(),
        "nextAutoRetry" => String.t() | Atom.t(),
        "previousAutoRetry" => String.t() | Atom.t()
      }
      
  """
  @type auto_retry_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      s3_logs_config() :: %{
        "bucketOwnerAccess" => list(any()),
        "encryptionDisabled" => boolean(),
        "location" => String.t() | Atom.t(),
        "status" => list(any())
      }
      
  """
  @type s3_logs_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_source_credentials_output() :: %{
        "sourceCredentialsInfos" => list(source_credentials_info())
      }
      
  """
  @type list_source_credentials_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_visibility_output() :: %{
        "projectArn" => String.t() | Atom.t(),
        "projectVisibility" => list(any()),
        "publicProjectAlias" => String.t() | Atom.t()
      }
      
  """
  @type update_project_visibility_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_build_output() :: %{
        "build" => build()
      }
      
  """
  @type start_build_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      o_auth_provider_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type o_auth_provider_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build_status_config() :: %{
        "context" => String.t() | Atom.t(),
        "targetUrl" => String.t() | Atom.t()
      }
      
  """
  @type build_status_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      s3_report_export_config() :: %{
        "bucket" => String.t() | Atom.t(),
        "bucketOwner" => String.t() | Atom.t(),
        "encryptionDisabled" => boolean(),
        "encryptionKey" => String.t() | Atom.t(),
        "packaging" => list(any()),
        "path" => String.t() | Atom.t()
      }
      
  """
  @type s3_report_export_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_build_batch_output() :: %{
        "buildBatch" => build_batch()
      }
      
  """
  @type start_build_batch_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_output() :: %{
        "fleet" => fleet()
      }
      
  """
  @type create_fleet_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_webhook_input() :: %{
        optional("branchFilter") => String.t() | Atom.t(),
        optional("buildType") => list(any()),
        optional("filterGroups") => list(list(webhook_filter())()),
        optional("manualCreation") => boolean(),
        optional("scopeConfiguration") => scope_configuration(),
        required("projectName") => String.t() | Atom.t()
      }
      
  """
  @type create_webhook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_sandbox_input() :: %{
        required("id") => String.t() | Atom.t()
      }
      
  """
  @type stop_sandbox_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_report_input() :: %{
        required("arn") => String.t() | Atom.t()
      }
      
  """
  @type delete_report_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_fleets_output() :: %{
        "fleets" => list(fleet()),
        "fleetsNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_fleets_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_source() :: %{
        "auth" => source_auth(),
        "buildStatusConfig" => build_status_config(),
        "buildspec" => String.t() | Atom.t(),
        "gitCloneDepth" => integer(),
        "gitSubmodulesConfig" => git_submodules_config(),
        "insecureSsl" => boolean(),
        "location" => String.t() | Atom.t(),
        "reportBuildStatus" => boolean(),
        "sourceIdentifier" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type project_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_input() :: %{
        optional("autoRetryLimit") => integer(),
        optional("badgeEnabled") => boolean(),
        optional("buildBatchConfig") => project_build_batch_config(),
        optional("cache") => project_cache(),
        optional("concurrentBuildLimit") => integer(),
        optional("description") => String.t() | Atom.t(),
        optional("encryptionKey") => String.t() | Atom.t(),
        optional("fileSystemLocations") => list(project_file_system_location()),
        optional("logsConfig") => logs_config(),
        optional("queuedTimeoutInMinutes") => integer(),
        optional("secondaryArtifacts") => list(project_artifacts()),
        optional("secondarySourceVersions") => list(project_source_version()),
        optional("secondarySources") => list(project_source()),
        optional("sourceVersion") => String.t() | Atom.t(),
        optional("tags") => list(tag()),
        optional("timeoutInMinutes") => integer(),
        optional("vpcConfig") => vpc_config(),
        required("artifacts") => project_artifacts(),
        required("environment") => project_environment(),
        required("name") => String.t() | Atom.t(),
        required("serviceRole") => String.t() | Atom.t(),
        required("source") => project_source()
      }
      
  """
  @type create_project_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_fleets_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      source_credentials_info() :: %{
        "arn" => String.t() | Atom.t(),
        "authType" => list(any()),
        "resource" => String.t() | Atom.t(),
        "serverType" => list(any())
      }
      
  """
  @type source_credentials_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_input() :: %{
        optional("baseCapacity") => integer(),
        optional("computeConfiguration") => compute_configuration(),
        optional("computeType") => list(any()),
        optional("environmentType") => list(any()),
        optional("fleetServiceRole") => String.t() | Atom.t(),
        optional("imageId") => String.t() | Atom.t(),
        optional("overflowBehavior") => list(any()),
        optional("proxyConfiguration") => proxy_configuration(),
        optional("scalingConfiguration") => scaling_configuration_input(),
        optional("tags") => list(tag()),
        optional("vpcConfig") => vpc_config(),
        required("arn") => String.t() | Atom.t()
      }
      
  """
  @type update_fleet_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_input() :: %{
        optional("computeConfiguration") => compute_configuration(),
        optional("fleetServiceRole") => String.t() | Atom.t(),
        optional("imageId") => String.t() | Atom.t(),
        optional("overflowBehavior") => list(any()),
        optional("proxyConfiguration") => proxy_configuration(),
        optional("scalingConfiguration") => scaling_configuration_input(),
        optional("tags") => list(tag()),
        optional("vpcConfig") => vpc_config(),
        required("baseCapacity") => integer(),
        required("computeType") => list(any()),
        required("environmentType") => list(any()),
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type create_fleet_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      webhook_filter() :: %{
        "excludeMatchedPattern" => boolean(),
        "pattern" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type webhook_filter() :: %{String.t() | Atom.t() => any()}

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
  @type build_batch_phase() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sandbox() :: %{
        "arn" => String.t() | Atom.t(),
        "currentSession" => sandbox_session(),
        "encryptionKey" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "environment" => project_environment(),
        "fileSystemLocations" => list(project_file_system_location()),
        "id" => String.t() | Atom.t(),
        "logConfig" => logs_config(),
        "projectName" => String.t() | Atom.t(),
        "queuedTimeoutInMinutes" => integer(),
        "requestTime" => non_neg_integer(),
        "secondarySourceVersions" => list(project_source_version()),
        "secondarySources" => list(project_source()),
        "serviceRole" => String.t() | Atom.t(),
        "source" => project_source(),
        "sourceVersion" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | Atom.t(),
        "timeoutInMinutes" => integer(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type sandbox() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      logs_location() :: %{
        "cloudWatchLogs" => cloud_watch_logs_config(),
        "cloudWatchLogsArn" => String.t() | Atom.t(),
        "deepLink" => String.t() | Atom.t(),
        "groupName" => String.t() | Atom.t(),
        "s3DeepLink" => String.t() | Atom.t(),
        "s3Logs" => s3_logs_config(),
        "s3LogsArn" => String.t() | Atom.t(),
        "streamName" => String.t() | Atom.t()
      }
      
  """
  @type logs_location() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_proxy_rule() :: %{
        "effect" => list(any()),
        "entities" => list(String.t() | Atom.t()),
        "type" => list(any())
      }
      
  """
  @type fleet_proxy_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_output() :: %{}
      
  """
  @type delete_resource_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      scope_configuration() :: %{
        "domain" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "scope" => list(any())
      }
      
  """
  @type scope_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_command_executions_input() :: %{
        required("commandExecutionIds") => list(String.t() | Atom.t()),
        required("sandboxId") => String.t() | Atom.t()
      }
      
  """
  @type batch_get_command_executions_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      code_coverage() :: %{
        "branchCoveragePercentage" => float(),
        "branchesCovered" => integer(),
        "branchesMissed" => integer(),
        "expired" => non_neg_integer(),
        "filePath" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "lineCoveragePercentage" => float(),
        "linesCovered" => integer(),
        "linesMissed" => integer(),
        "reportARN" => String.t() | Atom.t()
      }
      
  """
  @type code_coverage() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      registry_credential() :: %{
        "credential" => String.t() | Atom.t(),
        "credentialProvider" => list(any())
      }
      
  """
  @type registry_credential() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build_batch() :: %{
        "arn" => String.t() | Atom.t(),
        "artifacts" => build_artifacts(),
        "buildBatchConfig" => project_build_batch_config(),
        "buildBatchNumber" => float(),
        "buildBatchStatus" => list(any()),
        "buildGroups" => list(build_group()),
        "buildTimeoutInMinutes" => integer(),
        "cache" => project_cache(),
        "complete" => boolean(),
        "currentPhase" => String.t() | Atom.t(),
        "debugSessionEnabled" => boolean(),
        "encryptionKey" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "environment" => project_environment(),
        "fileSystemLocations" => list(project_file_system_location()),
        "id" => String.t() | Atom.t(),
        "initiator" => String.t() | Atom.t(),
        "logConfig" => logs_config(),
        "phases" => list(build_batch_phase()),
        "projectName" => String.t() | Atom.t(),
        "queuedTimeoutInMinutes" => integer(),
        "reportArns" => list(String.t() | Atom.t()),
        "resolvedSourceVersion" => String.t() | Atom.t(),
        "secondaryArtifacts" => list(build_artifacts()),
        "secondarySourceVersions" => list(project_source_version()),
        "secondarySources" => list(project_source()),
        "serviceRole" => String.t() | Atom.t(),
        "source" => project_source(),
        "sourceVersion" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type build_batch() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_sandboxes_for_project_output() :: %{
        "ids" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_sandboxes_for_project_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resolved_artifact() :: %{
        "identifier" => String.t() | Atom.t(),
        "location" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type resolved_artifact() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_shared_report_groups_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_shared_report_groups_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_output() :: %{
        "project" => project()
      }
      
  """
  @type update_project_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_report_group_input() :: %{
        optional("tags") => list(tag()),
        required("exportConfig") => report_export_config(),
        required("name") => String.t() | Atom.t(),
        required("type") => list(any())
      }
      
  """
  @type create_report_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      s_smsession() :: %{
        "sessionId" => String.t() | Atom.t(),
        "streamUrl" => String.t() | Atom.t(),
        "tokenValue" => String.t() | Atom.t()
      }
      
  """
  @type s_smsession() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_sandboxes_output() :: %{
        "ids" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_sandboxes_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_input() :: %{
        optional("filter") => build_batch_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_build_batches_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      test_case_filter() :: %{
        "keyword" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t()
      }
      
  """
  @type test_case_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_input() :: %{
        required("resourceArn") => String.t() | Atom.t()
      }
      
  """
  @type get_resource_policy_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_sandbox_input() :: %{
        optional("idempotencyToken") => String.t() | Atom.t(),
        optional("projectName") => String.t() | Atom.t()
      }
      
  """
  @type start_sandbox_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_input() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_projects_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build_batch_filter() :: %{
        "status" => list(any())
      }
      
  """
  @type build_batch_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_projects_input() :: %{
        required("names") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_projects_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_restrictions() :: %{
        "computeTypesAllowed" => list(String.t() | Atom.t()),
        "fleetsAllowed" => list(String.t() | Atom.t()),
        "maximumBuildsAllowed" => integer()
      }
      
  """
  @type batch_restrictions() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_fleets_input() :: %{
        required("names") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_fleets_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      report_filter() :: %{
        "status" => list(any())
      }
      
  """
  @type report_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_sandboxes_for_project_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any()),
        required("projectName") => String.t() | Atom.t()
      }
      
  """
  @type list_sandboxes_for_project_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_configuration_input() :: %{
        "maxCapacity" => integer(),
        "scalingType" => list(any()),
        "targetTrackingScalingConfigs" => list(target_tracking_scaling_configuration())
      }
      
  """
  @type scaling_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_fleet() :: %{
        "fleetArn" => String.t() | Atom.t()
      }
      
  """
  @type project_fleet() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_webhook_input() :: %{
        required("projectName") => String.t() | Atom.t()
      }
      
  """
  @type delete_webhook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_output() :: %{}
      
  """
  @type delete_project_output() :: %{}

  @typedoc """

  ## Example:
      
      list_sandboxes_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("sortOrder") => list(any())
      }
      
  """
  @type list_sandboxes_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_input() :: %{
        required("name") => String.t() | Atom.t()
      }
      
  """
  @type delete_project_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_test_cases_input() :: %{
        optional("filter") => test_case_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        required("reportArn") => String.t() | Atom.t()
      }
      
  """
  @type describe_test_cases_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      environment_image() :: %{
        "description" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "versions" => list(String.t() | Atom.t())
      }
      
  """
  @type environment_image() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_builds_output() :: %{
        "buildsDeleted" => list(String.t() | Atom.t()),
        "buildsNotDeleted" => list(build_not_deleted())
      }
      
  """
  @type batch_delete_builds_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_report_group_input() :: %{
        optional("exportConfig") => report_export_config(),
        optional("tags") => list(tag()),
        required("arn") => String.t() | Atom.t()
      }
      
  """
  @type update_report_group_input() :: %{String.t() | Atom.t() => any()}

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
  @type build_phase() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_build_batches_for_project_output() :: %{
        "ids" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_build_batches_for_project_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalidate_project_cache_output() :: %{}
      
  """
  @type invalidate_project_cache_output() :: %{}

  @typedoc """

  ## Example:
      
      retry_build_input() :: %{
        optional("id") => String.t() | Atom.t(),
        optional("idempotencyToken") => String.t() | Atom.t()
      }
      
  """
  @type retry_build_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_build_batch_input() :: %{
        optional("artifactsOverride") => project_artifacts(),
        optional("buildBatchConfigOverride") => project_build_batch_config(),
        optional("buildTimeoutInMinutesOverride") => integer(),
        optional("buildspecOverride") => String.t() | Atom.t(),
        optional("cacheOverride") => project_cache(),
        optional("certificateOverride") => String.t() | Atom.t(),
        optional("computeTypeOverride") => list(any()),
        optional("debugSessionEnabled") => boolean(),
        optional("encryptionKeyOverride") => String.t() | Atom.t(),
        optional("environmentTypeOverride") => list(any()),
        optional("environmentVariablesOverride") => list(environment_variable()),
        optional("gitCloneDepthOverride") => integer(),
        optional("gitSubmodulesConfigOverride") => git_submodules_config(),
        optional("idempotencyToken") => String.t() | Atom.t(),
        optional("imageOverride") => String.t() | Atom.t(),
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
        optional("serviceRoleOverride") => String.t() | Atom.t(),
        optional("sourceAuthOverride") => source_auth(),
        optional("sourceLocationOverride") => String.t() | Atom.t(),
        optional("sourceTypeOverride") => list(any()),
        optional("sourceVersion") => String.t() | Atom.t(),
        required("projectName") => String.t() | Atom.t()
      }
      
  """
  @type start_build_batch_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      environment_language() :: %{
        "images" => list(environment_image()),
        "language" => list(any())
      }
      
  """
  @type environment_language() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_sandboxes_output() :: %{
        "sandboxes" => list(sandbox()),
        "sandboxesNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_sandboxes_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sandbox_session() :: %{
        "currentPhase" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "id" => String.t() | Atom.t(),
        "logs" => logs_location(),
        "networkInterface" => network_interface(),
        "phases" => list(sandbox_session_phase()),
        "resolvedSourceVersion" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | Atom.t()
      }
      
  """
  @type sandbox_session() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_configuration_output() :: %{
        "desiredCapacity" => integer(),
        "maxCapacity" => integer(),
        "scalingType" => list(any()),
        "targetTrackingScalingConfigs" => list(target_tracking_scaling_configuration())
      }
      
  """
  @type scaling_configuration_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      report() :: %{
        "arn" => String.t() | Atom.t(),
        "codeCoverageSummary" => code_coverage_report_summary(),
        "created" => non_neg_integer(),
        "executionId" => String.t() | Atom.t(),
        "expired" => non_neg_integer(),
        "exportConfig" => report_export_config(),
        "name" => String.t() | Atom.t(),
        "reportGroupArn" => String.t() | Atom.t(),
        "status" => list(any()),
        "testSummary" => test_report_summary(),
        "truncated" => boolean(),
        "type" => list(any())
      }
      
  """
  @type report() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_reports_input() :: %{
        required("reportArns") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_reports_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_build_input() :: %{
        required("id") => String.t() | Atom.t()
      }
      
  """
  @type stop_build_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      build_artifacts() :: %{
        "artifactIdentifier" => String.t() | Atom.t(),
        "bucketOwnerAccess" => list(any()),
        "encryptionDisabled" => boolean(),
        "location" => String.t() | Atom.t(),
        "md5sum" => String.t() | Atom.t(),
        "overrideArtifactName" => boolean(),
        "sha256sum" => String.t() | Atom.t()
      }
      
  """
  @type build_artifacts() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      import_source_credentials_output() :: %{
        "arn" => String.t() | Atom.t()
      }
      
  """
  @type import_source_credentials_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      test_report_summary() :: %{
        "durationInNanoSeconds" => float(),
        "statusCounts" => map(),
        "total" => integer()
      }
      
  """
  @type test_report_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      webhook() :: %{
        "branchFilter" => String.t() | Atom.t(),
        "buildType" => list(any()),
        "filterGroups" => list(list(webhook_filter())()),
        "lastModifiedSecret" => non_neg_integer(),
        "manualCreation" => boolean(),
        "payloadUrl" => String.t() | Atom.t(),
        "scopeConfiguration" => scope_configuration(),
        "secret" => String.t() | Atom.t(),
        "status" => list(any()),
        "statusMessage" => String.t() | Atom.t(),
        "url" => String.t() | Atom.t()
      }
      
  """
  @type webhook() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_report_groups_output() :: %{
        "reportGroups" => list(report_group()),
        "reportGroupsNotFound" => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_report_groups_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_webhook_input() :: %{
        optional("branchFilter") => String.t() | Atom.t(),
        optional("buildType") => list(any()),
        optional("filterGroups") => list(list(webhook_filter())()),
        optional("rotateSecret") => boolean(),
        required("projectName") => String.t() | Atom.t()
      }
      
  """
  @type update_webhook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fleet() :: %{
        "arn" => String.t() | Atom.t(),
        "baseCapacity" => integer(),
        "computeConfiguration" => compute_configuration(),
        "computeType" => list(any()),
        "created" => non_neg_integer(),
        "environmentType" => list(any()),
        "fleetServiceRole" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "imageId" => String.t() | Atom.t(),
        "lastModified" => non_neg_integer(),
        "name" => String.t() | Atom.t(),
        "overflowBehavior" => list(any()),
        "proxyConfiguration" => proxy_configuration(),
        "scalingConfiguration" => scaling_configuration_output(),
        "status" => fleet_status(),
        "tags" => list(tag()),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type fleet() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_badge() :: %{
        "badgeEnabled" => boolean(),
        "badgeRequestUrl" => String.t() | Atom.t()
      }
      
  """
  @type project_badge() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_report_group_trend_output() :: %{
        "rawData" => list(report_with_raw_data()),
        "stats" => report_group_trend_stats()
      }
      
  """
  @type get_report_group_trend_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_reports_for_report_group_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "reports" => list(String.t() | Atom.t())
      }
      
  """
  @type list_reports_for_report_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      project_environment() :: %{
        "certificate" => String.t() | Atom.t(),
        "computeConfiguration" => compute_configuration(),
        "computeType" => list(any()),
        "dockerServer" => docker_server(),
        "environmentVariables" => list(environment_variable()),
        "fleet" => project_fleet(),
        "image" => String.t() | Atom.t(),
        "imagePullCredentialsType" => list(any()),
        "privilegedMode" => boolean(),
        "registryCredential" => registry_credential(),
        "type" => list(any())
      }
      
  """
  @type project_environment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      docker_server() :: %{
        "computeType" => list(any()),
        "securityGroupIds" => list(String.t() | Atom.t()),
        "status" => docker_server_status()
      }
      
  """
  @type docker_server() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_output() :: %{
        "ids" => list(String.t() | Atom.t()),
        "nextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_builds_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_report_groups_input() :: %{
        required("reportGroupArns") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_report_groups_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      compute_configuration() :: %{
        "disk" => float(),
        "instanceType" => String.t() | Atom.t(),
        "machineType" => list(any()),
        "memory" => float(),
        "vCpu" => float()
      }
      
  """
  @type compute_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      report_group() :: %{
        "arn" => String.t() | Atom.t(),
        "created" => non_neg_integer(),
        "exportConfig" => report_export_config(),
        "lastModified" => non_neg_integer(),
        "name" => String.t() | Atom.t(),
        "status" => list(any()),
        "tags" => list(tag()),
        "type" => list(any())
      }
      
  """
  @type report_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      source_auth() :: %{
        "resource" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type source_auth() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      report_group_trend_stats() :: %{
        "average" => String.t() | Atom.t(),
        "max" => String.t() | Atom.t(),
        "min" => String.t() | Atom.t()
      }
      
  """
  @type report_group_trend_stats() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_source_credentials_output() :: %{
        "arn" => String.t() | Atom.t()
      }
      
  """
  @type delete_source_credentials_output() :: %{String.t() | Atom.t() => any()}

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWebhook", input, options)
  end
end
