# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppTest do
  @moduledoc """
  AWS Mainframe Modernization Application Testing provides tools and resources for
  automated functional equivalence testing for your migration projects.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_test_configuration_response() :: %{
        "testConfigurationId" => String.t() | Atom.t(),
        "testConfigurationVersion" => integer()
      }

  """
  @type create_test_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_configuration_request() :: %{
        optional("testConfigurationVersion") => integer()
      }

  """
  @type get_test_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_test_suite_request() :: %{}

  """
  @type delete_test_suite_request() :: %{}

  @typedoc """

  ## Example:

      update_test_configuration_response() :: %{
        "testConfigurationId" => String.t() | Atom.t(),
        "testConfigurationVersion" => integer()
      }

  """
  @type update_test_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_test_case_response() :: %{}

  """
  @type delete_test_case_response() :: %{}

  @typedoc """

  ## Example:

      delete_test_run_response() :: %{}

  """
  @type delete_test_run_response() :: %{}

  @typedoc """

  ## Example:

      m2_non_managed_application_step_input() :: %{
        "actionType" => list(any()),
        "listenerPort" => [integer()],
        "runtime" => list(any()),
        "vpcEndpointServiceName" => [String.t() | Atom.t()],
        "webAppName" => [String.t() | Atom.t()]
      }

  """
  @type m2_non_managed_application_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_step_output() :: %{
        "dataSetDetails" => list(data_set()),
        "dataSetExportLocation" => String.t() | Atom.t(),
        "dmsOutputLocation" => String.t() | Atom.t()
      }

  """
  @type batch_step_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_cloud_formation_summary() :: %{
        "stepInput" => create_cloud_formation_step_input(),
        "stepOutput" => create_cloud_formation_step_output()
      }

  """
  @type create_cloud_formation_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_run_test_cases_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "testRunTestCases" => list(test_case_run_summary())
      }

  """
  @type list_test_run_test_cases_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_cloud_formation_step_output() :: %{}

  """
  @type delete_cloud_formation_step_output() :: %{}

  @typedoc """

  ## Example:

      data_set() :: %{
        "ccsid" => String.t() | Atom.t(),
        "format" => list(any()),
        "length" => [integer()],
        "name" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type data_set() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      input_file() :: %{
        "fileMetadata" => list(),
        "sourceLocation" => String.t() | Atom.t(),
        "targetLocation" => String.t() | Atom.t()
      }

  """
  @type input_file() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_cloud_formation_step_input() :: %{
        "stackId" => [String.t() | Atom.t()]
      }

  """
  @type delete_cloud_formation_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_test_suite_response() :: %{}

  """
  @type delete_test_suite_response() :: %{}

  @typedoc """

  ## Example:

      m2_non_managed_application() :: %{
        "listenerPort" => String.t() | Atom.t(),
        "runtime" => list(any()),
        "vpcEndpointServiceName" => String.t() | Atom.t(),
        "webAppName" => String.t() | Atom.t()
      }

  """
  @type m2_non_managed_application() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compare_data_sets_summary() :: %{
        "stepInput" => compare_data_sets_step_input(),
        "stepOutput" => compare_data_sets_step_output()
      }

  """
  @type compare_data_sets_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cloud_formation() :: %{
        "parameters" => map(),
        "templateLocation" => String.t() | Atom.t()
      }

  """
  @type cloud_formation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_test_suite_request() :: %{
        optional("afterSteps") => list(step()),
        optional("beforeSteps") => list(step()),
        optional("clientToken") => String.t() | Atom.t(),
        optional("description") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("name") => String.t() | Atom.t(),
        required("testCases") => list()
      }

  """
  @type create_test_suite_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_suites_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("testSuiteIds") => list(String.t() | Atom.t())
      }

  """
  @type list_test_suites_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      script_summary() :: %{
        "scriptLocation" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type script_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_test_run_request() :: %{}

  """
  @type delete_test_run_request() :: %{}

  @typedoc """

  ## Example:

      compare_database_c_d_c_step_output() :: %{
        "comparisonOutputLocation" => [String.t() | Atom.t()],
        "comparisonStatus" => list(any())
      }

  """
  @type compare_database_c_d_c_step_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_non_managed_application_step_output() :: %{}

  """
  @type m2_non_managed_application_step_output() :: %{}

  @typedoc """

  ## Example:

      m2_managed_application() :: %{
        "applicationId" => String.t() | Atom.t(),
        "listenerPort" => String.t() | Atom.t(),
        "runtime" => list(any()),
        "vpcEndpointServiceName" => String.t() | Atom.t()
      }

  """
  @type m2_managed_application() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_run_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("testCaseId") => String.t() | Atom.t(),
        optional("testSuiteId") => String.t() | Atom.t()
      }

  """
  @type list_test_run_steps_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compare_database_c_d_c_step_input() :: %{
        "outputLocation" => [String.t() | Atom.t()],
        "sourceLocation" => [String.t() | Atom.t()],
        "sourceMetadata" => source_database_metadata(),
        "targetLocation" => [String.t() | Atom.t()],
        "targetMetadata" => target_database_metadata()
      }

  """
  @type compare_database_c_d_c_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_test_configuration_response() :: %{}

  """
  @type delete_test_configuration_response() :: %{}

  @typedoc """

  ## Example:

      test_case_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => integer(),
        "name" => String.t() | Atom.t(),
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "testCaseArn" => String.t() | Atom.t(),
        "testCaseId" => String.t() | Atom.t()
      }

  """
  @type test_case_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compare_action_summary() :: %{
        "type" => list()
      }

  """
  @type compare_action_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_cases_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "testCases" => list(test_case_summary())
      }

  """
  @type list_test_cases_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_test_case_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("description") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("name") => String.t() | Atom.t(),
        required("steps") => list(step())
      }

  """
  @type create_test_case_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_non_managed_application_action() :: %{
        "actionType" => list(any()),
        "resource" => String.t() | Atom.t()
      }

  """
  @type m2_non_managed_application_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_suite_latest_version() :: %{
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "version" => integer()
      }

  """
  @type test_suite_latest_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_run_step_response() :: %{
        "afterStep" => [boolean()],
        "beforeStep" => [boolean()],
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "stepName" => String.t() | Atom.t(),
        "stepRunSummary" => list(),
        "testCaseId" => String.t() | Atom.t(),
        "testCaseVersion" => integer(),
        "testRunId" => String.t() | Atom.t(),
        "testSuiteId" => String.t() | Atom.t(),
        "testSuiteVersion" => integer()
      }

  """
  @type get_test_run_step_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_configuration_latest_version() :: %{
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "version" => integer()
      }

  """
  @type test_configuration_latest_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("testConfigurationIds") => list(String.t() | Atom.t())
      }

  """
  @type list_test_configurations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_run_step_request() :: %{
        optional("testCaseId") => String.t() | Atom.t(),
        optional("testSuiteId") => String.t() | Atom.t()
      }

  """
  @type get_test_run_step_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "resourceId" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "resourceId" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_managed_application_step_input() :: %{
        "actionType" => list(any()),
        "applicationId" => [String.t() | Atom.t()],
        "listenerPort" => [integer()],
        "properties" => m2_managed_action_properties(),
        "runtime" => [String.t() | Atom.t()],
        "vpcEndpointServiceName" => [String.t() | Atom.t()]
      }

  """
  @type m2_managed_application_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_suite_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => integer(),
        "name" => String.t() | Atom.t(),
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "testSuiteArn" => String.t() | Atom.t(),
        "testSuiteId" => String.t() | Atom.t()
      }

  """
  @type test_suite_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_managed_application_action() :: %{
        "actionType" => list(any()),
        "properties" => m2_managed_action_properties(),
        "resource" => String.t() | Atom.t()
      }

  """
  @type m2_managed_application_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_case_run_summary() :: %{
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "testCaseId" => String.t() | Atom.t(),
        "testCaseVersion" => integer(),
        "testRunId" => String.t() | Atom.t()
      }

  """
  @type test_case_run_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "quotaCode" => [String.t() | Atom.t()],
        "resourceId" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()],
        "serviceCode" => [String.t() | Atom.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_test_suite_response() :: %{
        "testSuiteId" => String.t() | Atom.t(),
        "testSuiteVersion" => integer()
      }

  """
  @type create_test_suite_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      mainframe_action() :: %{
        "actionType" => list(),
        "properties" => mainframe_action_properties(),
        "resource" => String.t() | Atom.t()
      }

  """
  @type mainframe_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      source_database_metadata() :: %{
        "captureTool" => list(any()),
        "type" => list(any())
      }

  """
  @type source_database_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_suite_request() :: %{
        optional("testSuiteVersion") => integer()
      }

  """
  @type get_test_suite_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_suites_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "testSuites" => list(test_suite_summary())
      }

  """
  @type list_test_suites_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_cloud_formation_summary() :: %{
        "stepInput" => delete_cloud_formation_step_input(),
        "stepOutput" => delete_cloud_formation_step_output()
      }

  """
  @type delete_cloud_formation_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | Atom.t()],
        "name" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_configuration_summary() :: %{
        "creationTime" => [non_neg_integer()],
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => integer(),
        "name" => String.t() | Atom.t(),
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "testConfigurationArn" => String.t() | Atom.t(),
        "testConfigurationId" => String.t() | Atom.t()
      }

  """
  @type test_configuration_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_test_run_response() :: %{
        "testRunId" => String.t() | Atom.t(),
        "testRunStatus" => list(any())
      }

  """
  @type start_test_run_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      target_database_metadata() :: %{
        "captureTool" => list(any()),
        "type" => list(any())
      }

  """
  @type target_database_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_test_case_request() :: %{}

  """
  @type delete_test_case_request() :: %{}

  @typedoc """

  ## Example:

      t_n3270_summary() :: %{
        "stepInput" => t_n3270_step_input(),
        "stepOutput" => t_n3270_step_output()
      }

  """
  @type t_n3270_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_test_suite_request() :: %{
        optional("afterSteps") => list(step()),
        optional("beforeSteps") => list(step()),
        optional("description") => String.t() | Atom.t(),
        optional("testCases") => list()
      }

  """
  @type update_test_suite_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_formation_step_input() :: %{
        "parameters" => map(),
        "templateLocation" => String.t() | Atom.t()
      }

  """
  @type create_cloud_formation_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_managed_application_summary() :: %{
        "applicationId" => String.t() | Atom.t(),
        "listenerPort" => [integer()],
        "runtime" => list(any())
      }

  """
  @type m2_managed_application_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      output_file() :: %{
        "fileLocation" => String.t() | Atom.t()
      }

  """
  @type output_file() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_summary() :: %{
        "stepInput" => batch_step_input(),
        "stepOutput" => batch_step_output()
      }

  """
  @type batch_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_managed_application_step_summary() :: %{
        "stepInput" => m2_managed_application_step_input(),
        "stepOutput" => m2_managed_application_step_output()
      }

  """
  @type m2_managed_application_step_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_step_input() :: %{
        "batchJobName" => String.t() | Atom.t(),
        "batchJobParameters" => map(),
        "exportDataSetNames" => list(String.t() | Atom.t()),
        "properties" => mainframe_action_properties(),
        "resource" => list()
      }

  """
  @type batch_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_test_case_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("steps") => list(step())
      }

  """
  @type update_test_case_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_cases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("testCaseIds") => list(String.t() | Atom.t())
      }

  """
  @type list_test_cases_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      database_c_d_c() :: %{
        "sourceMetadata" => source_database_metadata(),
        "targetMetadata" => target_database_metadata()
      }

  """
  @type database_c_d_c() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      mainframe_action_properties() :: %{
        "dmsTaskArn" => String.t() | Atom.t()
      }

  """
  @type mainframe_action_properties() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_case_latest_version() :: %{
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "version" => integer()
      }

  """
  @type test_case_latest_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_test_suite_response() :: %{
        "testSuiteId" => String.t() | Atom.t(),
        "testSuiteVersion" => integer()
      }

  """
  @type update_test_suite_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_settings() :: %{
        "kmsKeyId" => [String.t() | Atom.t()]
      }

  """
  @type service_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_run_steps_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "testRunSteps" => list(test_run_step_summary())
      }

  """
  @type list_test_run_steps_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_configuration_response() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | Atom.t(),
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => test_configuration_latest_version(),
        "name" => String.t() | Atom.t(),
        "properties" => map(),
        "resources" => list(resource()),
        "serviceSettings" => service_settings(),
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "tags" => map(),
        "testConfigurationArn" => String.t() | Atom.t(),
        "testConfigurationId" => String.t() | Atom.t(),
        "testConfigurationVersion" => integer()
      }

  """
  @type get_test_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch() :: %{
        "batchJobName" => String.t() | Atom.t(),
        "batchJobParameters" => map(),
        "exportDataSetNames" => list(String.t() | Atom.t())
      }

  """
  @type batch() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | Atom.t()],
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

      m2_non_managed_application_step_summary() :: %{
        "stepInput" => m2_non_managed_application_step_input(),
        "stepOutput" => m2_non_managed_application_step_output()
      }

  """
  @type m2_non_managed_application_step_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_run_test_cases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_test_run_test_cases_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compare_action() :: %{
        "input" => list(),
        "output" => list()
      }

  """
  @type compare_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_suite_response() :: %{
        "afterSteps" => list(step()),
        "beforeSteps" => list(step()),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | Atom.t(),
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => test_suite_latest_version(),
        "name" => String.t() | Atom.t(),
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "tags" => map(),
        "testCases" => list(),
        "testSuiteArn" => String.t() | Atom.t(),
        "testSuiteId" => String.t() | Atom.t(),
        "testSuiteVersion" => integer()
      }

  """
  @type get_test_suite_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      script() :: %{
        "scriptLocation" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type script() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "quotaCode" => [String.t() | Atom.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      t_n3270() :: %{
        "exportDataSetNames" => list(String.t() | Atom.t()),
        "script" => script()
      }

  """
  @type t_n3270() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compare_database_c_d_c_summary() :: %{
        "stepInput" => compare_database_c_d_c_step_input(),
        "stepOutput" => compare_database_c_d_c_step_output()
      }

  """
  @type compare_database_c_d_c_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compare_data_sets_step_input() :: %{
        "sourceDataSets" => list(data_set()),
        "sourceLocation" => String.t() | Atom.t(),
        "targetDataSets" => list(data_set()),
        "targetLocation" => String.t() | Atom.t()
      }

  """
  @type compare_data_sets_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_non_managed_application_summary() :: %{
        "listenerPort" => [integer()],
        "runtime" => list(any()),
        "vpcEndpointServiceName" => [String.t() | Atom.t()],
        "webAppName" => [String.t() | Atom.t()]
      }

  """
  @type m2_non_managed_application_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_runs_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "testRuns" => list(test_run_summary())
      }

  """
  @type list_test_runs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_run_step_summary() :: %{
        "afterStep" => [boolean()],
        "beforeStep" => [boolean()],
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "stepName" => String.t() | Atom.t(),
        "testCaseId" => String.t() | Atom.t(),
        "testCaseVersion" => integer(),
        "testRunId" => String.t() | Atom.t(),
        "testSuiteId" => String.t() | Atom.t(),
        "testSuiteVersion" => integer()
      }

  """
  @type test_run_step_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cloud_formation_action() :: %{
        "actionType" => list(any()),
        "resource" => String.t() | Atom.t()
      }

  """
  @type cloud_formation_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_test_case_response() :: %{
        "testCaseId" => String.t() | Atom.t(),
        "testCaseVersion" => integer()
      }

  """
  @type create_test_case_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_managed_application_step_output() :: %{
        "importDataSetSummary" => map()
      }

  """
  @type m2_managed_application_step_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      m2_managed_action_properties() :: %{
        "forceStop" => [boolean()],
        "importDataSetLocation" => String.t() | Atom.t()
      }

  """
  @type m2_managed_action_properties() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      t_n3270_step_output() :: %{
        "dataSetDetails" => list(data_set()),
        "dataSetExportLocation" => String.t() | Atom.t(),
        "dmsOutputLocation" => String.t() | Atom.t(),
        "scriptOutputLocation" => String.t() | Atom.t()
      }

  """
  @type t_n3270_step_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_cloud_formation_step_output() :: %{
        "exports" => map(),
        "stackId" => [String.t() | Atom.t()]
      }

  """
  @type create_cloud_formation_step_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "action" => list(),
        "description" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }

  """
  @type step() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      t_n3270_step_input() :: %{
        "exportDataSetNames" => list(String.t() | Atom.t()),
        "properties" => mainframe_action_properties(),
        "resource" => list(),
        "script" => script_summary()
      }

  """
  @type t_n3270_step_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_test_case_response() :: %{
        "testCaseId" => String.t() | Atom.t(),
        "testCaseVersion" => integer()
      }

  """
  @type update_test_case_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_configurations_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "testConfigurations" => list(test_configuration_summary())
      }

  """
  @type list_test_configurations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_case_request() :: %{
        optional("testCaseVersion") => integer()
      }

  """
  @type get_test_case_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      compare_data_sets_step_output() :: %{
        "comparisonOutputLocation" => String.t() | Atom.t(),
        "comparisonStatus" => list(any())
      }

  """
  @type compare_data_sets_step_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_run_summary() :: %{
        "runEndTime" => [non_neg_integer()],
        "runStartTime" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "testConfigurationId" => String.t() | Atom.t(),
        "testConfigurationVersion" => integer(),
        "testRunArn" => String.t() | Atom.t(),
        "testRunId" => String.t() | Atom.t(),
        "testSuiteId" => String.t() | Atom.t(),
        "testSuiteVersion" => integer()
      }

  """
  @type test_run_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_test_configuration_request() :: %{}

  """
  @type delete_test_configuration_request() :: %{}

  @typedoc """

  ## Example:

      create_test_configuration_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("description") => String.t() | Atom.t(),
        optional("properties") => map(),
        optional("serviceSettings") => service_settings(),
        optional("tags") => map(),
        required("name") => String.t() | Atom.t(),
        required("resources") => list(resource())
      }

  """
  @type create_test_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_test_case_response() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | Atom.t(),
        "lastUpdateTime" => [non_neg_integer()],
        "latestVersion" => test_case_latest_version(),
        "name" => String.t() | Atom.t(),
        "status" => list(any()),
        "statusReason" => [String.t() | Atom.t()],
        "steps" => list(step()),
        "tags" => map(),
        "testCaseArn" => String.t() | Atom.t(),
        "testCaseId" => String.t() | Atom.t(),
        "testCaseVersion" => integer()
      }

  """
  @type get_test_case_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_test_runs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("testRunIds") => list(String.t() | Atom.t()),
        optional("testSuiteId") => String.t() | Atom.t()
      }

  """
  @type list_test_runs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_test_configuration_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("properties") => map(),
        optional("resources") => list(resource()),
        optional("serviceSettings") => service_settings()
      }

  """
  @type update_test_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "name" => String.t() | Atom.t(),
        "type" => list()
      }

  """
  @type resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_test_run_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("tags") => map(),
        optional("testConfigurationId") => String.t() | Atom.t(),
        required("testSuiteId") => String.t() | Atom.t()
      }

  """
  @type start_test_run_request() :: %{String.t() | Atom.t() => any()}

  @type create_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_test_suite_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_test_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_test_suite_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type get_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_test_run_step_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_test_suite_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_cases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_run_steps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_run_test_cases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_suites_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_test_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
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

  @type update_test_case_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_test_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_test_suite_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-12-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apptest",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppTest",
      signature_version: "v4",
      signing_name: "apptest",
      target_prefix: nil
    }
  end

  @doc """
  Creates a test case.
  """
  @spec create_test_case(map(), create_test_case_request(), list()) ::
          {:ok, create_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_test_case_errors()}
  def create_test_case(%Client{} = client, input, options \\ []) do
    url_path = "/testcase"
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
  Creates a test configuration.
  """
  @spec create_test_configuration(map(), create_test_configuration_request(), list()) ::
          {:ok, create_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_test_configuration_errors()}
  def create_test_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/testconfiguration"
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
  Creates a test suite.
  """
  @spec create_test_suite(map(), create_test_suite_request(), list()) ::
          {:ok, create_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_test_suite_errors()}
  def create_test_suite(%Client{} = client, input, options \\ []) do
    url_path = "/testsuite"
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
  Deletes a test case.
  """
  @spec delete_test_case(map(), String.t() | Atom.t(), delete_test_case_request(), list()) ::
          {:ok, delete_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_test_case_errors()}
  def delete_test_case(%Client{} = client, test_case_id, input, options \\ []) do
    url_path = "/testcases/#{AWS.Util.encode_uri(test_case_id)}"
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
  Deletes a test configuration.
  """
  @spec delete_test_configuration(
          map(),
          String.t() | Atom.t(),
          delete_test_configuration_request(),
          list()
        ) ::
          {:ok, delete_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_test_configuration_errors()}
  def delete_test_configuration(%Client{} = client, test_configuration_id, input, options \\ []) do
    url_path = "/testconfigurations/#{AWS.Util.encode_uri(test_configuration_id)}"
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
  Deletes a test run.
  """
  @spec delete_test_run(map(), String.t() | Atom.t(), delete_test_run_request(), list()) ::
          {:ok, delete_test_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_test_run_errors()}
  def delete_test_run(%Client{} = client, test_run_id, input, options \\ []) do
    url_path = "/testruns/#{AWS.Util.encode_uri(test_run_id)}"
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
  Deletes a test suite.
  """
  @spec delete_test_suite(map(), String.t() | Atom.t(), delete_test_suite_request(), list()) ::
          {:ok, delete_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_test_suite_errors()}
  def delete_test_suite(%Client{} = client, test_suite_id, input, options \\ []) do
    url_path = "/testsuites/#{AWS.Util.encode_uri(test_suite_id)}"
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
  Gets a test case.
  """
  @spec get_test_case(map(), String.t() | Atom.t(), String.t() | Atom.t() | nil, list()) ::
          {:ok, get_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_test_case_errors()}
  def get_test_case(%Client{} = client, test_case_id, test_case_version \\ nil, options \\ []) do
    url_path = "/testcases/#{AWS.Util.encode_uri(test_case_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_case_version) do
        [{"testCaseVersion", test_case_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a test configuration.
  """
  @spec get_test_configuration(map(), String.t() | Atom.t(), String.t() | Atom.t() | nil, list()) ::
          {:ok, get_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_test_configuration_errors()}
  def get_test_configuration(
        %Client{} = client,
        test_configuration_id,
        test_configuration_version \\ nil,
        options \\ []
      ) do
    url_path = "/testconfigurations/#{AWS.Util.encode_uri(test_configuration_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_configuration_version) do
        [{"testConfigurationVersion", test_configuration_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a test run step.
  """
  @spec get_test_run_step(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, get_test_run_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_test_run_step_errors()}
  def get_test_run_step(
        %Client{} = client,
        step_name,
        test_run_id,
        test_case_id \\ nil,
        test_suite_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/testruns/#{AWS.Util.encode_uri(test_run_id)}/steps/#{AWS.Util.encode_uri(step_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(test_suite_id) do
        [{"testSuiteId", test_suite_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(test_case_id) do
        [{"testCaseId", test_case_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a test suite.
  """
  @spec get_test_suite(map(), String.t() | Atom.t(), String.t() | Atom.t() | nil, list()) ::
          {:ok, get_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_test_suite_errors()}
  def get_test_suite(%Client{} = client, test_suite_id, test_suite_version \\ nil, options \\ []) do
    url_path = "/testsuites/#{AWS.Util.encode_uri(test_suite_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_suite_version) do
        [{"testSuiteVersion", test_suite_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource.
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
  Lists test cases.
  """
  @spec list_test_cases(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_test_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_cases_errors()}
  def list_test_cases(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        test_case_ids \\ nil,
        options \\ []
      ) do
    url_path = "/testcases"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_case_ids) do
        [{"testCaseIds", test_case_ids} | query_params]
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
  Lists test configurations.
  """
  @spec list_test_configurations(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_test_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_configurations_errors()}
  def list_test_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        test_configuration_ids \\ nil,
        options \\ []
      ) do
    url_path = "/testconfigurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_configuration_ids) do
        [{"testConfigurationIds", test_configuration_ids} | query_params]
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
  Lists test run steps.
  """
  @spec list_test_run_steps(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_test_run_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_run_steps_errors()}
  def list_test_run_steps(
        %Client{} = client,
        test_run_id,
        max_results \\ nil,
        next_token \\ nil,
        test_case_id \\ nil,
        test_suite_id \\ nil,
        options \\ []
      ) do
    url_path = "/testruns/#{AWS.Util.encode_uri(test_run_id)}/steps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_suite_id) do
        [{"testSuiteId", test_suite_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(test_case_id) do
        [{"testCaseId", test_case_id} | query_params]
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
  Lists test run test cases.
  """
  @spec list_test_run_test_cases(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_test_run_test_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_run_test_cases_errors()}
  def list_test_run_test_cases(
        %Client{} = client,
        test_run_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/testruns/#{AWS.Util.encode_uri(test_run_id)}/testcases"
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
  Lists test runs.
  """
  @spec list_test_runs(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_test_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_runs_errors()}
  def list_test_runs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        test_run_ids \\ nil,
        test_suite_id \\ nil,
        options \\ []
      ) do
    url_path = "/testruns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_suite_id) do
        [{"testSuiteId", test_suite_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(test_run_ids) do
        [{"testrunIds", test_run_ids} | query_params]
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
  Lists test suites.
  """
  @spec list_test_suites(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_test_suites_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_suites_errors()}
  def list_test_suites(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        test_suite_ids \\ nil,
        options \\ []
      ) do
    url_path = "/testsuites"
    headers = []
    query_params = []

    query_params =
      if !is_nil(test_suite_ids) do
        [{"testSuiteIds", test_suite_ids} | query_params]
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
  Starts a test run.
  """
  @spec start_test_run(map(), start_test_run_request(), list()) ::
          {:ok, start_test_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_test_run_errors()}
  def start_test_run(%Client{} = client, input, options \\ []) do
    url_path = "/testrun"
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
  Specifies tags of a resource.
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
  Untags a resource.
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
  Updates a test case.
  """
  @spec update_test_case(map(), String.t() | Atom.t(), update_test_case_request(), list()) ::
          {:ok, update_test_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_test_case_errors()}
  def update_test_case(%Client{} = client, test_case_id, input, options \\ []) do
    url_path = "/testcases/#{AWS.Util.encode_uri(test_case_id)}"
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
  Updates a test configuration.
  """
  @spec update_test_configuration(
          map(),
          String.t() | Atom.t(),
          update_test_configuration_request(),
          list()
        ) ::
          {:ok, update_test_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_test_configuration_errors()}
  def update_test_configuration(%Client{} = client, test_configuration_id, input, options \\ []) do
    url_path = "/testconfigurations/#{AWS.Util.encode_uri(test_configuration_id)}"
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
  Updates a test suite.
  """
  @spec update_test_suite(map(), String.t() | Atom.t(), update_test_suite_request(), list()) ::
          {:ok, update_test_suite_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_test_suite_errors()}
  def update_test_suite(%Client{} = client, test_suite_id, input, options \\ []) do
    url_path = "/testsuites/#{AWS.Util.encode_uri(test_suite_id)}"
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
