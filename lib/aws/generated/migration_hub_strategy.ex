# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubStrategy do
  @moduledoc """
  Migration Hub Strategy Recommendations

  This API reference provides descriptions, syntax, and other details about each
  of the
  actions and data types for Migration Hub Strategy Recommendations (Strategy
  Recommendations).

  The topic for each action shows the API
  request parameters and the response. Alternatively, you can use one of the AWS
  SDKs to
  access an API that is tailored to the programming language or platform that
  you're using. For
  more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      ip_address_based_remote_info() :: %{
        "authType" => String.t(),
        "ipAddressConfigurationTimeStamp" => String.t(),
        "osType" => String.t()
      }

  """
  @type ip_address_based_remote_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_latest_assessment_id_request() :: %{}

  """
  @type get_latest_assessment_id_request() :: %{}

  @typedoc """

  ## Example:

      start_import_file_task_request() :: %{
        optional("dataSourceType") => String.t(),
        optional("groupId") => list(group()()),
        optional("s3bucketForReportData") => String.t(),
        required("S3Bucket") => String.t(),
        required("name") => String.t(),
        required("s3key") => String.t()
      }

  """
  @type start_import_file_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_latest_assessment_id_response() :: %{
        optional("id") => String.t()
      }

  """
  @type get_latest_assessment_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_database_migration_preference() :: %{
        "targetDatabaseEngine" => list(String.t()())
      }

  """
  @type no_database_migration_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      heterogeneous() :: %{
        "targetDatabaseEngine" => list(String.t()())
      }

  """
  @type heterogeneous() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_exception() :: %{
        "message" => String.t()
      }

  """
  @type dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collectors_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_import_file_task_response() :: %{
        optional("id") => String.t()
      }

  """
  @type start_import_file_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_component_details_response() :: %{
        optional("applicationComponentDetail") => application_component_detail(),
        optional("associatedApplications") => list(associated_application()()),
        optional("associatedServerIds") => list(String.t()()),
        optional("moreApplicationResource") => boolean()
      }

  """
  @type get_application_component_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_status_summary() :: %{
        "count" => integer(),
        "runTimeAssessmentStatus" => String.t()
      }

  """
  @type server_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_s_info() :: %{
        "type" => String.t(),
        "version" => String.t()
      }

  """
  @type o_s_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_unit_error() :: %{
        "appUnitErrorCategory" => String.t()
      }

  """
  @type app_unit_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      strategy_summary() :: %{
        "count" => integer(),
        "strategy" => String.t()
      }

  """
  @type strategy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collector() :: %{
        "collectorHealth" => String.t(),
        "collectorId" => String.t(),
        "collectorVersion" => String.t(),
        "configurationSummary" => configuration_summary(),
        "hostName" => String.t(),
        "ipAddress" => String.t(),
        "lastActivityTimeStamp" => String.t(),
        "registeredTimeStamp" => String.t()
      }

  """
  @type collector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collectors_response() :: %{
        optional("Collectors") => list(collector()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_collectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      system_info() :: %{
        "cpuArchitecture" => String.t(),
        "fileSystemType" => String.t(),
        "networkInfoList" => list(network_info()()),
        "osInfo" => o_s_info()
      }

  """
  @type system_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      homogeneous() :: %{
        "targetDatabaseEngine" => list(String.t()())
      }

  """
  @type homogeneous() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_server_details_response() :: %{
        optional("associatedApplications") => list(associated_application()()),
        optional("nextToken") => String.t(),
        optional("serverDetail") => server_detail()
      }

  """
  @type get_server_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_server_config_request() :: %{
        optional("strategyOption") => strategy_option(),
        required("serverId") => String.t()
      }

  """
  @type update_server_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_assessment_request() :: %{
        required("assessmentId") => String.t()
      }

  """
  @type stop_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_servers_request() :: %{
        optional("filterValue") => String.t(),
        optional("groupIdFilter") => list(group()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serverCriteria") => String.t(),
        optional("sort") => String.t()
      }

  """
  @type list_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antipattern_severity_summary() :: %{
        "count" => integer(),
        "severity" => String.t()
      }

  """
  @type antipattern_severity_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prioritize_business_goals() :: %{
        "businessGoals" => business_goals()
      }

  """
  @type prioritize_business_goals() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_file_task_response() :: %{
        optional("completionTime") => non_neg_integer(),
        optional("id") => String.t(),
        optional("importName") => String.t(),
        optional("inputS3Bucket") => String.t(),
        optional("inputS3Key") => String.t(),
        optional("numberOfRecordsFailed") => integer(),
        optional("numberOfRecordsSuccess") => integer(),
        optional("startTime") => non_neg_integer(),
        optional("status") => String.t(),
        optional("statusReportS3Bucket") => String.t(),
        optional("statusReportS3Key") => String.t()
      }

  """
  @type get_import_file_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_object() :: %{
        "s3Bucket" => String.t(),
        "s3key" => String.t()
      }

  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_application() :: %{
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type associated_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portfolio_summary_request() :: %{}

  """
  @type get_portfolio_summary_request() :: %{}

  @typedoc """

  ## Example:

      list_application_components_request() :: %{
        optional("applicationComponentCriteria") => String.t(),
        optional("filterValue") => String.t(),
        optional("groupIdFilter") => list(group()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sort") => String.t()
      }

  """
  @type list_application_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_component_strategies_request() :: %{}

  """
  @type get_application_component_strategies_request() :: %{}

  @typedoc """

  ## Example:

      no_management_preference() :: %{
        "targetDestination" => list(String.t()())
      }

  """
  @type no_management_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_summary() :: %{
        "ipAddressBasedRemoteInfoList" => list(ip_address_based_remote_info()()),
        "pipelineInfoList" => list(pipeline_info()()),
        "remoteSourceCodeAnalysisServerInfo" => remote_source_code_analysis_server_info(),
        "vcenterBasedRemoteInfoList" => list(vcenter_based_remote_info()()),
        "versionControlInfoList" => list(version_control_info()())
      }

  """
  @type configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_assessment_response() :: %{}

  """
  @type stop_assessment_response() :: %{}

  @typedoc """

  ## Example:

      application_component_status_summary() :: %{
        "count" => integer(),
        "srcCodeOrDbAnalysisStatus" => String.t()
      }

  """
  @type application_component_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_info() :: %{
        "pipelineConfigurationTimeStamp" => String.t(),
        "pipelineType" => String.t()
      }

  """
  @type pipeline_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyzable_servers_response() :: %{
        "analyzableServers" => list(analyzable_server_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_analyzable_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_error() :: %{
        "serverErrorCategory" => String.t()
      }

  """
  @type server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      version_control_info() :: %{
        "versionControlConfigurationTimeStamp" => String.t(),
        "versionControlType" => String.t()
      }

  """
  @type version_control_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_import_file_task_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_import_file_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_preferences() :: %{
        "databaseManagementPreference" => String.t(),
        "databaseMigrationPreference" => list()
      }

  """
  @type database_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      strategy_option() :: %{
        "isPreferred" => boolean(),
        "strategy" => String.t(),
        "targetDestination" => String.t(),
        "toolName" => String.t()
      }

  """
  @type strategy_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
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

      recommendation_set() :: %{
        "strategy" => String.t(),
        "targetDestination" => String.t(),
        "transformationTool" => transformation_tool()
      }

  """
  @type recommendation_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_managed_resources() :: %{
        "targetDestination" => list(String.t()())
      }

  """
  @type aws_managed_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_component_strategy() :: %{
        "isPreferred" => boolean(),
        "recommendation" => recommendation_set(),
        "status" => String.t()
      }

  """
  @type application_component_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_component_detail() :: %{
        "analysisStatus" => String.t(),
        "antipatternReportS3Object" => s3_object(),
        "antipatternReportStatus" => String.t(),
        "antipatternReportStatusMessage" => String.t(),
        "appType" => String.t(),
        "appUnitError" => app_unit_error(),
        "associatedServerId" => String.t(),
        "databaseConfigDetail" => database_config_detail(),
        "id" => String.t(),
        "inclusionStatus" => String.t(),
        "lastAnalyzedTimestamp" => non_neg_integer(),
        "listAntipatternSeveritySummary" => list(antipattern_severity_summary()()),
        "moreServerAssociationExists" => boolean(),
        "name" => String.t(),
        "osDriver" => String.t(),
        "osVersion" => String.t(),
        "recommendationSet" => recommendation_set(),
        "resourceSubType" => String.t(),
        "resultList" => list(result()()),
        "runtimeStatus" => String.t(),
        "runtimeStatusMessage" => String.t(),
        "sourceCodeRepositories" => list(source_code_repository()()),
        "statusMessage" => String.t()
      }

  """
  @type application_component_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_detail() :: %{
        "antipatternReportS3Object" => s3_object(),
        "antipatternReportStatus" => String.t(),
        "antipatternReportStatusMessage" => String.t(),
        "applicationComponentStrategySummary" => list(strategy_summary()()),
        "dataCollectionStatus" => String.t(),
        "id" => String.t(),
        "lastAnalyzedTimestamp" => non_neg_integer(),
        "listAntipatternSeveritySummary" => list(antipattern_severity_summary()()),
        "name" => String.t(),
        "recommendationSet" => recommendation_set(),
        "serverError" => server_error(),
        "serverType" => String.t(),
        "statusMessage" => String.t(),
        "systemInfo" => system_info()
      }

  """
  @type server_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_server_strategies_response() :: %{
        optional("serverStrategies") => list(server_strategy()())
      }

  """
  @type get_server_strategies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation_report_details() :: %{
        "completionTime" => non_neg_integer(),
        "s3Bucket" => String.t(),
        "s3Keys" => list(String.t()()),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusMessage" => String.t()
      }

  """
  @type recommendation_report_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_server_strategies_request() :: %{}

  """
  @type get_server_strategies_request() :: %{}

  @typedoc """

  ## Example:

      result() :: %{
        "analysisStatus" => list(),
        "analysisType" => String.t(),
        "antipatternReportResultList" => list(antipattern_report_result()()),
        "statusMessage" => String.t()
      }

  """
  @type result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      business_goals() :: %{
        "licenseCostReduction" => integer(),
        "modernizeInfrastructureWithCloudNativeTechnologies" => integer(),
        "reduceOperationalOverheadWithManagedServices" => integer(),
        "speedOfMigration" => integer()
      }

  """
  @type business_goals() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_strategy() :: %{
        "isPreferred" => boolean(),
        "numberOfApplicationComponents" => integer(),
        "recommendation" => recommendation_set(),
        "status" => String.t()
      }

  """
  @type server_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_assessment_request() :: %{
        optional("assessmentDataSourceType") => String.t(),
        optional("assessmentTargets") => list(assessment_target()()),
        optional("s3bucketForAnalysisData") => String.t(),
        optional("s3bucketForReportData") => String.t()
      }

  """
  @type start_assessment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_component_strategies_response() :: %{
        optional("applicationComponentStrategies") => list(application_component_strategy()())
      }

  """
  @type get_application_component_strategies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recommendation_report_details_request() :: %{}

  """
  @type get_recommendation_report_details_request() :: %{}

  @typedoc """

  ## Example:

      list_import_file_task_response() :: %{
        optional("nextToken") => String.t(),
        optional("taskInfos") => list(import_file_task_information()())
      }

  """
  @type list_import_file_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_recommendation_report_generation_request() :: %{
        optional("groupIdFilter") => list(group()()),
        optional("outputFormat") => String.t()
      }

  """
  @type start_recommendation_report_generation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_info() :: %{
        "interfaceName" => String.t(),
        "ipAddress" => String.t(),
        "macAddress" => String.t(),
        "netMask" => String.t()
      }

  """
  @type network_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_portfolio_preferences_response() :: %{}

  """
  @type put_portfolio_preferences_response() :: %{}

  @typedoc """

  ## Example:

      source_code_repository() :: %{
        "branch" => String.t(),
        "projectName" => String.t(),
        "repository" => String.t(),
        "versionControlType" => String.t()
      }

  """
  @type source_code_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assessment_request() :: %{}

  """
  @type get_assessment_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_preferences() :: %{
        "managementPreference" => list()
      }

  """
  @type application_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_component_summary() :: %{
        "appType" => String.t(),
        "count" => integer()
      }

  """
  @type application_component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_summary() :: %{
        "ServerOsType" => String.t(),
        "count" => integer()
      }

  """
  @type server_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analyzable_server_summary() :: %{
        "hostname" => String.t(),
        "ipAddress" => String.t(),
        "source" => String.t(),
        "vmId" => String.t()
      }

  """
  @type analyzable_server_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_component_config_request() :: %{
        optional("appType") => String.t(),
        optional("configureOnly") => boolean(),
        optional("inclusionStatus") => String.t(),
        optional("secretsManagerKey") => String.t(),
        optional("sourceCodeList") => list(source_code()()),
        optional("strategyOption") => strategy_option(),
        required("applicationComponentId") => String.t()
      }

  """
  @type update_application_component_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_file_task_request() :: %{}

  """
  @type get_import_file_task_request() :: %{}

  @typedoc """

  ## Example:

      transformation_tool() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "tranformationToolInstallationLink" => String.t()
      }

  """
  @type transformation_tool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_assessment_response() :: %{
        optional("assessmentTargets") => list(assessment_target()()),
        optional("dataCollectionDetails") => data_collection_details(),
        optional("id") => String.t()
      }

  """
  @type get_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_component_details_request() :: %{}

  """
  @type get_application_component_details_request() :: %{}

  @typedoc """

  ## Example:

      get_server_details_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_server_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_collection_details() :: %{
        "completionTime" => non_neg_integer(),
        "failed" => integer(),
        "inProgress" => integer(),
        "servers" => integer(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "success" => integer()
      }

  """
  @type data_collection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_components_response() :: %{
        optional("applicationComponentInfos") => list(application_component_detail()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_application_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portfolio_preferences_response() :: %{
        optional("applicationMode") => String.t(),
        optional("applicationPreferences") => application_preferences(),
        optional("databasePreferences") => database_preferences(),
        optional("prioritizeBusinessGoals") => prioritize_business_goals()
      }

  """
  @type get_portfolio_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portfolio_preferences_request() :: %{}

  """
  @type get_portfolio_preferences_request() :: %{}

  @typedoc """

  ## Example:

      get_recommendation_report_details_response() :: %{
        optional("id") => String.t(),
        optional("recommendationReportDetails") => recommendation_report_details()
      }

  """
  @type get_recommendation_report_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_config_detail() :: %{
        "secretName" => String.t()
      }

  """
  @type database_config_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_linked_role_lock_client_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_linked_role_lock_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "name" => String.t(),
        "value" => String.t()
      }

  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_code() :: %{
        "location" => String.t(),
        "projectName" => String.t(),
        "sourceVersion" => String.t(),
        "versionControl" => String.t()
      }

  """
  @type source_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_server_config_response() :: %{}

  """
  @type update_server_config_response() :: %{}

  @typedoc """

  ## Example:

      list_servers_response() :: %{
        optional("nextToken") => String.t(),
        optional("serverInfos") => list(server_detail()())
      }

  """
  @type list_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_recommendation_report_generation_response() :: %{
        optional("id") => String.t()
      }

  """
  @type start_recommendation_report_generation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_portfolio_preferences_request() :: %{
        optional("applicationMode") => String.t(),
        optional("applicationPreferences") => application_preferences(),
        optional("databasePreferences") => database_preferences(),
        optional("prioritizeBusinessGoals") => prioritize_business_goals()
      }

  """
  @type put_portfolio_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_assessment_response() :: %{
        optional("assessmentId") => String.t()
      }

  """
  @type start_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analyzable_servers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sort") => String.t()
      }

  """
  @type list_analyzable_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remote_source_code_analysis_server_info() :: %{
        "remoteSourceCodeAnalysisServerConfigurationTimestamp" => String.t()
      }

  """
  @type remote_source_code_analysis_server_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_component_config_response() :: %{}

  """
  @type update_application_component_config_response() :: %{}

  @typedoc """

  ## Example:

      vcenter_based_remote_info() :: %{
        "osType" => String.t(),
        "vcenterConfigurationTimeStamp" => String.t()
      }

  """
  @type vcenter_based_remote_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      self_manage_resources() :: %{
        "targetDestination" => list(String.t()())
      }

  """
  @type self_manage_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_target() :: %{
        "condition" => String.t(),
        "name" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type assessment_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assessment_summary() :: %{
        "antipatternReportS3Object" => s3_object(),
        "antipatternReportStatus" => String.t(),
        "antipatternReportStatusMessage" => String.t(),
        "lastAnalyzedTimestamp" => non_neg_integer(),
        "listAntipatternSeveritySummary" => list(antipattern_severity_summary()()),
        "listApplicationComponentStatusSummary" => list(application_component_status_summary()()),
        "listApplicationComponentStrategySummary" => list(strategy_summary()()),
        "listApplicationComponentSummary" => list(application_component_summary()()),
        "listServerStatusSummary" => list(server_status_summary()()),
        "listServerStrategySummary" => list(strategy_summary()()),
        "listServerSummary" => list(server_summary()())
      }

  """
  @type assessment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      antipattern_report_result() :: %{
        "analyzerName" => list(),
        "antiPatternReportS3Object" => s3_object(),
        "antipatternReportStatus" => String.t(),
        "antipatternReportStatusMessage" => String.t()
      }

  """
  @type antipattern_report_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_file_task_information() :: %{
        "completionTime" => non_neg_integer(),
        "id" => String.t(),
        "importName" => String.t(),
        "inputS3Bucket" => String.t(),
        "inputS3Key" => String.t(),
        "numberOfRecordsFailed" => integer(),
        "numberOfRecordsSuccess" => integer(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusReportS3Bucket" => String.t(),
        "statusReportS3Key" => String.t()
      }

  """
  @type import_file_task_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portfolio_summary_response() :: %{
        optional("assessmentSummary") => assessment_summary()
      }

  """
  @type get_portfolio_summary_response() :: %{String.t() => any()}

  @type get_application_component_details_errors() ::
          throttling_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_application_component_strategies_errors() ::
          throttling_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_assessment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_import_file_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_latest_assessment_id_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | dependency_exception()

  @type get_portfolio_preferences_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_portfolio_summary_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type get_recommendation_report_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_server_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_server_strategies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_analyzable_servers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_application_components_errors() ::
          service_linked_role_lock_client_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_collectors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_import_file_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_servers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type put_portfolio_preferences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type start_assessment_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type start_import_file_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type start_recommendation_report_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type stop_assessment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_application_component_config_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_server_config_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-02-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "migrationhub-strategy",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MigrationHubStrategy",
      signature_version: "v4",
      signing_name: "migrationhub-strategy",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves details about an application component.
  """
  @spec get_application_component_details(map(), String.t(), list()) ::
          {:ok, get_application_component_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_component_details_errors()}
  def get_application_component_details(
        %Client{} = client,
        application_component_id,
        options \\ []
      ) do
    url_path =
      "/get-applicationcomponent-details/#{AWS.Util.encode_uri(application_component_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all the recommended strategies and tools for an application
  component
  running on a server.
  """
  @spec get_application_component_strategies(map(), String.t(), list()) ::
          {:ok, get_application_component_strategies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_component_strategies_errors()}
  def get_application_component_strategies(
        %Client{} = client,
        application_component_id,
        options \\ []
      ) do
    url_path =
      "/get-applicationcomponent-strategies/#{AWS.Util.encode_uri(application_component_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status of an on-going assessment.
  """
  @spec get_assessment(map(), String.t(), list()) ::
          {:ok, get_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_assessment_errors()}
  def get_assessment(%Client{} = client, id, options \\ []) do
    url_path = "/get-assessment/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details about a specific import task.
  """
  @spec get_import_file_task(map(), String.t(), list()) ::
          {:ok, get_import_file_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_file_task_errors()}
  def get_import_file_task(%Client{} = client, id, options \\ []) do
    url_path = "/get-import-file-task/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the latest ID of a specific assessment task.
  """
  @spec get_latest_assessment_id(map(), list()) ::
          {:ok, get_latest_assessment_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_latest_assessment_id_errors()}
  def get_latest_assessment_id(%Client{} = client, options \\ []) do
    url_path = "/get-latest-assessment-id"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves your migration and modernization preferences.
  """
  @spec get_portfolio_preferences(map(), list()) ::
          {:ok, get_portfolio_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_portfolio_preferences_errors()}
  def get_portfolio_preferences(%Client{} = client, options \\ []) do
    url_path = "/get-portfolio-preferences"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves overall summary including the number of servers to rehost and the
  overall
  number of anti-patterns.
  """
  @spec get_portfolio_summary(map(), list()) ::
          {:ok, get_portfolio_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_portfolio_summary_errors()}
  def get_portfolio_summary(%Client{} = client, options \\ []) do
    url_path = "/get-portfolio-summary"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about the specified recommendation report.
  """
  @spec get_recommendation_report_details(map(), String.t(), list()) ::
          {:ok, get_recommendation_report_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recommendation_report_details_errors()}
  def get_recommendation_report_details(%Client{} = client, id, options \\ []) do
    url_path = "/get-recommendation-report-details/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specified server.
  """
  @spec get_server_details(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_server_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_server_details_errors()}
  def get_server_details(
        %Client{} = client,
        server_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/get-server-details/#{AWS.Util.encode_uri(server_id)}"
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
  Retrieves recommended strategies and tools for the specified server.
  """
  @spec get_server_strategies(map(), String.t(), list()) ::
          {:ok, get_server_strategies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_server_strategies_errors()}
  def get_server_strategies(%Client{} = client, server_id, options \\ []) do
    url_path = "/get-server-strategies/#{AWS.Util.encode_uri(server_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all the servers fetched from customer vCenter using Strategy
  Recommendation Collector.
  """
  @spec list_analyzable_servers(map(), list_analyzable_servers_request(), list()) ::
          {:ok, list_analyzable_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_analyzable_servers_errors()}
  def list_analyzable_servers(%Client{} = client, input, options \\ []) do
    url_path = "/list-analyzable-servers"
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
  Retrieves a list of all the application components (processes).
  """
  @spec list_application_components(map(), list_application_components_request(), list()) ::
          {:ok, list_application_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_application_components_errors()}
  def list_application_components(%Client{} = client, input, options \\ []) do
    url_path = "/list-applicationcomponents"
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
  Retrieves a list of all the installed collectors.
  """
  @spec list_collectors(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_collectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_collectors_errors()}
  def list_collectors(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/list-collectors"
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
  Retrieves a list of all the imports performed.
  """
  @spec list_import_file_task(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_import_file_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_import_file_task_errors()}
  def list_import_file_task(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/list-import-file-task"
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
  Returns a list of all the servers.
  """
  @spec list_servers(map(), list_servers_request(), list()) ::
          {:ok, list_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_servers_errors()}
  def list_servers(%Client{} = client, input, options \\ []) do
    url_path = "/list-servers"
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
  Saves the specified migration and modernization preferences.
  """
  @spec put_portfolio_preferences(map(), put_portfolio_preferences_request(), list()) ::
          {:ok, put_portfolio_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_portfolio_preferences_errors()}
  def put_portfolio_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/put-portfolio-preferences"
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
  Starts the assessment of an on-premises environment.
  """
  @spec start_assessment(map(), start_assessment_request(), list()) ::
          {:ok, start_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_assessment_errors()}
  def start_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/start-assessment"
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
  Starts a file import.
  """
  @spec start_import_file_task(map(), start_import_file_task_request(), list()) ::
          {:ok, start_import_file_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_import_file_task_errors()}
  def start_import_file_task(%Client{} = client, input, options \\ []) do
    url_path = "/start-import-file-task"
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
  Starts generating a recommendation report.
  """
  @spec start_recommendation_report_generation(
          map(),
          start_recommendation_report_generation_request(),
          list()
        ) ::
          {:ok, start_recommendation_report_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_recommendation_report_generation_errors()}
  def start_recommendation_report_generation(%Client{} = client, input, options \\ []) do
    url_path = "/start-recommendation-report-generation"
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
  Stops the assessment of an on-premises environment.
  """
  @spec stop_assessment(map(), stop_assessment_request(), list()) ::
          {:ok, stop_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_assessment_errors()}
  def stop_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/stop-assessment"
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
  Updates the configuration of an application component.
  """
  @spec update_application_component_config(
          map(),
          update_application_component_config_request(),
          list()
        ) ::
          {:ok, update_application_component_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_component_config_errors()}
  def update_application_component_config(%Client{} = client, input, options \\ []) do
    url_path = "/update-applicationcomponent-config/"
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
  Updates the configuration of the specified server.
  """
  @spec update_server_config(map(), update_server_config_request(), list()) ::
          {:ok, update_server_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_server_config_errors()}
  def update_server_config(%Client{} = client, input, options \\ []) do
    url_path = "/update-server-config/"
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
end
