# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubOrchestrator do
  @moduledoc """
  This API reference provides descriptions, syntax, and other details about each
  of the
  actions and data types for AWS Migration Hub Orchestrator.

  The topic for each action shows the API
  request parameters and responses. Alternatively, you can use one of the AWS SDKs
  to
  access an API that is tailored to the programming language or platform that
  you're
  using.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_workflow_steps_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("workflowStepsSummary") => list(workflow_step_summary())
      }

  """
  @type list_workflow_steps_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_workflow_steps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_step_request() :: %{
        optional("description") => String.t() | atom(),
        optional("next") => list(String.t() | atom()),
        optional("outputs") => list(workflow_step_output()),
        optional("previous") => list(String.t() | atom()),
        optional("stepTarget") => list(String.t() | atom()),
        optional("workflowStepAutomationConfiguration") => workflow_step_automation_configuration(),
        required("name") => String.t() | atom(),
        required("stepActionType") => String.t() | atom(),
        required("stepGroupId") => String.t() | atom(),
        required("workflowId") => String.t() | atom()
      }

  """
  @type create_workflow_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_migration_workflow_response() :: %{
        optional("arn") => [String.t() | atom()],
        optional("id") => String.t() | atom(),
        optional("lastStopTime") => [non_neg_integer()],
        optional("status") => String.t() | atom(),
        optional("statusMessage") => [String.t() | atom()]
      }

  """
  @type stop_migration_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_migration_workflow_request() :: %{
        optional("applicationConfigurationId") => [String.t() | atom()],
        optional("description") => [String.t() | atom()],
        optional("stepTargets") => list(String.t() | atom()),
        optional("tags") => map(),
        required("inputParameters") => map(),
        required("name") => [String.t() | atom()],
        required("templateId") => [String.t() | atom()]
      }

  """
  @type create_migration_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_migration_workflow_request() :: %{}

  """
  @type start_migration_workflow_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_workflow_step_group_request() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("next") => list(String.t() | atom()),
        optional("previous") => list(String.t() | atom()),
        required("workflowId") => String.t() | atom()
      }

  """
  @type update_workflow_step_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_template_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        optional("templateDescription") => [String.t() | atom()],
        required("templateName") => [String.t() | atom()],
        required("templateSource") => list()
      }

  """
  @type create_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_output() :: %{
        "dataType" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "required" => [boolean()]
      }

  """
  @type step_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      migration_workflow_summary() :: %{
        "adsApplicationConfigurationName" => [String.t() | atom()],
        "completedSteps" => [integer()],
        "creationTime" => [non_neg_integer()],
        "endTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "status" => String.t() | atom(),
        "statusMessage" => [String.t() | atom()],
        "templateId" => [String.t() | atom()],
        "totalSteps" => [integer()]
      }

  """
  @type migration_workflow_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workflow_step_request() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("next") => list(String.t() | atom()),
        optional("outputs") => list(workflow_step_output()),
        optional("previous") => list(String.t() | atom()),
        optional("status") => String.t() | atom(),
        optional("stepActionType") => String.t() | atom(),
        optional("stepTarget") => list(String.t() | atom()),
        optional("workflowStepAutomationConfiguration") => workflow_step_automation_configuration(),
        required("stepGroupId") => String.t() | atom(),
        required("workflowId") => String.t() | atom()
      }

  """
  @type update_workflow_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_migration_workflow_request() :: %{
        optional("description") => [String.t() | atom()],
        optional("inputParameters") => map(),
        optional("name") => [String.t() | atom()],
        optional("stepTargets") => list(String.t() | atom())
      }

  """
  @type update_migration_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_migration_workflows_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("migrationWorkflowSummary") => list(migration_workflow_summary())
      }

  """
  @type list_migration_workflows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_template_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("templateDescription") => [String.t() | atom()],
        optional("templateName") => [String.t() | atom()]
      }

  """
  @type update_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_step_group_request() :: %{
        required("workflowId") => String.t() | atom()
      }

  """
  @type get_workflow_step_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      plugin_summary() :: %{
        "hostname" => [String.t() | atom()],
        "ipAddress" => String.t() | atom(),
        "pluginId" => String.t() | atom(),
        "registeredTime" => [String.t() | atom()],
        "status" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type plugin_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      platform_command() :: %{
        "linux" => [String.t() | atom()],
        "windows" => [String.t() | atom()]
      }

  """
  @type platform_command() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_step_response() :: %{
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("endTime") => [non_neg_integer()],
        optional("lastStartTime") => [non_neg_integer()],
        optional("name") => [String.t() | atom()],
        optional("next") => list(String.t() | atom()),
        optional("noOfSrvCompleted") => [integer()],
        optional("noOfSrvFailed") => [integer()],
        optional("outputs") => list(workflow_step_output()),
        optional("owner") => String.t() | atom(),
        optional("previous") => list(String.t() | atom()),
        optional("scriptOutputLocation") => [String.t() | atom()],
        optional("status") => String.t() | atom(),
        optional("statusMessage") => [String.t() | atom()],
        optional("stepActionType") => String.t() | atom(),
        optional("stepGroupId") => [String.t() | atom()],
        optional("stepId") => [String.t() | atom()],
        optional("stepTarget") => list(String.t() | atom()),
        optional("totalNoOfSrv") => [integer()],
        optional("workflowId") => [String.t() | atom()],
        optional("workflowStepAutomationConfiguration") => workflow_step_automation_configuration()
      }

  """
  @type get_workflow_step_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_step_request() :: %{
        required("stepGroupId") => String.t() | atom(),
        required("workflowId") => String.t() | atom()
      }

  """
  @type get_workflow_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_template_step_request() :: %{
        required("stepGroupId") => String.t() | atom(),
        required("templateId") => String.t() | atom()
      }

  """
  @type get_template_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_migration_workflow_template_response() :: %{
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("id") => [String.t() | atom()],
        optional("inputs") => list(template_input()),
        optional("name") => [String.t() | atom()],
        optional("owner") => [String.t() | atom()],
        optional("status") => String.t() | atom(),
        optional("statusMessage") => [String.t() | atom()],
        optional("tags") => map(),
        optional("templateArn") => [String.t() | atom()],
        optional("templateClass") => [String.t() | atom()],
        optional("tools") => list(tool())
      }

  """
  @type get_migration_workflow_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_migration_workflow_response() :: %{
        optional("arn") => [String.t() | atom()],
        optional("id") => String.t() | atom(),
        optional("status") => String.t() | atom()
      }

  """
  @type delete_migration_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_template_request() :: %{}

  """
  @type delete_template_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_migration_workflow_response() :: %{
        optional("arn") => [String.t() | atom()],
        optional("id") => String.t() | atom(),
        optional("lastStartTime") => [non_neg_integer()],
        optional("status") => String.t() | atom(),
        optional("statusMessage") => [String.t() | atom()]
      }

  """
  @type start_migration_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_migration_workflow_response() :: %{
        optional("adsApplicationConfigurationId") => [String.t() | atom()],
        optional("arn") => [String.t() | atom()],
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("id") => String.t() | atom(),
        optional("name") => [String.t() | atom()],
        optional("status") => String.t() | atom(),
        optional("stepTargets") => list(String.t() | atom()),
        optional("tags") => map(),
        optional("templateId") => [String.t() | atom()],
        optional("workflowInputs") => map()
      }

  """
  @type create_migration_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template_step_group_summary() :: %{
        "id" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "next" => list(String.t() | atom()),
        "previous" => list(String.t() | atom())
      }

  """
  @type template_step_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template_summary() :: %{
        "arn" => [String.t() | atom()],
        "description" => [String.t() | atom()],
        "id" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type template_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_step_group_request() :: %{
        optional("description") => String.t() | atom(),
        optional("next") => list(String.t() | atom()),
        optional("previous") => list(String.t() | atom()),
        required("name") => String.t() | atom(),
        required("workflowId") => String.t() | atom()
      }

  """
  @type create_workflow_step_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_automation_configuration() :: %{
        "command" => platform_command(),
        "runEnvironment" => String.t() | atom(),
        "scriptLocationS3Bucket" => [String.t() | atom()],
        "scriptLocationS3Key" => platform_script_key(),
        "targetType" => String.t() | atom()
      }

  """
  @type step_automation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_template_step_group_response() :: %{
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("id") => [String.t() | atom()],
        optional("lastModifiedTime") => [non_neg_integer()],
        optional("name") => [String.t() | atom()],
        optional("next") => list(String.t() | atom()),
        optional("previous") => list(String.t() | atom()),
        optional("status") => String.t() | atom(),
        optional("templateId") => [String.t() | atom()],
        optional("tools") => list(tool())
      }

  """
  @type get_template_step_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_migration_workflow_response() :: %{
        optional("adsApplicationConfigurationId") => [String.t() | atom()],
        optional("adsApplicationName") => [String.t() | atom()],
        optional("arn") => [String.t() | atom()],
        optional("completedSteps") => [integer()],
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("endTime") => [non_neg_integer()],
        optional("id") => String.t() | atom(),
        optional("lastModifiedTime") => [non_neg_integer()],
        optional("lastStartTime") => [non_neg_integer()],
        optional("lastStopTime") => [non_neg_integer()],
        optional("name") => [String.t() | atom()],
        optional("status") => String.t() | atom(),
        optional("statusMessage") => [String.t() | atom()],
        optional("tags") => map(),
        optional("templateId") => [String.t() | atom()],
        optional("tools") => list(tool()),
        optional("totalSteps") => [integer()],
        optional("workflowBucket") => [String.t() | atom()],
        optional("workflowInputs") => map()
      }

  """
  @type get_migration_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_migration_workflow_request() :: %{}

  """
  @type stop_migration_workflow_request() :: %{}

  @typedoc """

  ## Example:

      platform_script_key() :: %{
        "linux" => String.t() | atom(),
        "windows" => String.t() | atom()
      }

  """
  @type platform_script_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_plugins_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("plugins") => list(plugin_summary())
      }

  """
  @type list_plugins_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_step_summary() :: %{
        "description" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "next" => list(String.t() | atom()),
        "noOfSrvCompleted" => [integer()],
        "noOfSrvFailed" => [integer()],
        "owner" => String.t() | atom(),
        "previous" => list(String.t() | atom()),
        "scriptLocation" => [String.t() | atom()],
        "status" => String.t() | atom(),
        "statusMessage" => [String.t() | atom()],
        "stepActionType" => String.t() | atom(),
        "stepId" => [String.t() | atom()],
        "totalNoOfSrv" => [integer()]
      }

  """
  @type workflow_step_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_step_group_summary() :: %{
        "id" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "next" => list(String.t() | atom()),
        "owner" => String.t() | atom(),
        "previous" => list(String.t() | atom()),
        "status" => String.t() | atom()
      }

  """
  @type workflow_step_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_migration_workflow_request() :: %{}

  """
  @type delete_migration_workflow_request() :: %{}

  @typedoc """

  ## Example:

      list_plugins_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_plugins_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_workflow_step_response() :: %{
        optional("id") => [String.t() | atom()],
        optional("status") => String.t() | atom(),
        optional("stepGroupId") => [String.t() | atom()],
        optional("workflowId") => [String.t() | atom()]
      }

  """
  @type retry_workflow_step_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_template_response() :: %{
        "tags" => map(),
        "templateArn" => [String.t() | atom()],
        "templateId" => [String.t() | atom()]
      }

  """
  @type update_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template_input() :: %{
        "dataType" => String.t() | atom(),
        "inputName" => String.t() | atom(),
        "required" => [boolean()]
      }

  """
  @type template_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_step_request() :: %{
        required("stepGroupId") => String.t() | atom(),
        required("workflowId") => String.t() | atom()
      }

  """
  @type delete_workflow_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_step_group_response() :: %{
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("id") => [String.t() | atom()],
        optional("name") => [String.t() | atom()],
        optional("next") => list(String.t() | atom()),
        optional("previous") => list(String.t() | atom()),
        optional("tools") => list(tool()),
        optional("workflowId") => [String.t() | atom()]
      }

  """
  @type create_workflow_step_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_migration_workflow_response() :: %{
        optional("adsApplicationConfigurationId") => [String.t() | atom()],
        optional("arn") => [String.t() | atom()],
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("id") => String.t() | atom(),
        optional("lastModifiedTime") => [non_neg_integer()],
        optional("name") => [String.t() | atom()],
        optional("status") => String.t() | atom(),
        optional("stepTargets") => list(String.t() | atom()),
        optional("tags") => map(),
        optional("templateId") => [String.t() | atom()],
        optional("workflowInputs") => map()
      }

  """
  @type update_migration_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_step_output() :: %{
        "dataType" => String.t() | atom(),
        "name" => String.t() | atom(),
        "required" => [boolean()],
        "value" => list()
      }

  """
  @type workflow_step_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_workflow_step_request() :: %{
        required("stepGroupId") => String.t() | atom(),
        required("workflowId") => String.t() | atom()
      }

  """
  @type retry_workflow_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_migration_workflow_template_request() :: %{}

  """
  @type get_migration_workflow_template_request() :: %{}

  @typedoc """

  ## Example:

      delete_workflow_step_response() :: %{}

  """
  @type delete_workflow_step_response() :: %{}

  @typedoc """

  ## Example:

      list_workflow_step_groups_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("workflowStepGroupsSummary") => list(workflow_step_group_summary())
      }

  """
  @type list_workflow_step_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_step_response() :: %{
        optional("id") => [String.t() | atom()],
        optional("name") => [String.t() | atom()],
        optional("stepGroupId") => [String.t() | atom()],
        optional("workflowId") => [String.t() | atom()]
      }

  """
  @type create_workflow_step_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workflow_step_group_response() :: %{
        optional("description") => [String.t() | atom()],
        optional("id") => [String.t() | atom()],
        optional("lastModifiedTime") => [non_neg_integer()],
        optional("name") => [String.t() | atom()],
        optional("next") => list(String.t() | atom()),
        optional("previous") => list(String.t() | atom()),
        optional("tools") => list(tool()),
        optional("workflowId") => [String.t() | atom()]
      }

  """
  @type update_workflow_step_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_step_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_template_step_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
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

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_migration_workflow_request() :: %{}

  """
  @type get_migration_workflow_request() :: %{}

  @typedoc """

  ## Example:

      template_step_summary() :: %{
        "id" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "next" => list(String.t() | atom()),
        "owner" => String.t() | atom(),
        "previous" => list(String.t() | atom()),
        "stepActionType" => String.t() | atom(),
        "stepGroupId" => [String.t() | atom()],
        "targetType" => String.t() | atom(),
        "templateId" => [String.t() | atom()]
      }

  """
  @type template_step_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_step_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("workflowId") => String.t() | atom()
      }

  """
  @type list_workflow_step_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("stepGroupId") => String.t() | atom(),
        required("templateId") => String.t() | atom()
      }

  """
  @type list_template_steps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workflow_step_response() :: %{
        optional("id") => String.t() | atom(),
        optional("name") => [String.t() | atom()],
        optional("stepGroupId") => [String.t() | atom()],
        optional("workflowId") => [String.t() | atom()]
      }

  """
  @type update_workflow_step_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_template_response() :: %{
        "tags" => map(),
        "templateArn" => [String.t() | atom()],
        "templateId" => [String.t() | atom()]
      }

  """
  @type create_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_step_group_response() :: %{
        optional("creationTime") => [non_neg_integer()],
        optional("description") => [String.t() | atom()],
        optional("endTime") => [non_neg_integer()],
        optional("id") => String.t() | atom(),
        optional("lastModifiedTime") => [non_neg_integer()],
        optional("name") => [String.t() | atom()],
        optional("next") => list(String.t() | atom()),
        optional("owner") => String.t() | atom(),
        optional("previous") => list(String.t() | atom()),
        optional("status") => String.t() | atom(),
        optional("tools") => list(tool()),
        optional("workflowId") => [String.t() | atom()]
      }

  """
  @type get_workflow_step_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_template_response() :: %{}

  """
  @type delete_template_response() :: %{}

  @typedoc """

  ## Example:

      get_template_step_response() :: %{
        optional("creationTime") => [String.t() | atom()],
        optional("description") => [String.t() | atom()],
        optional("id") => String.t() | atom(),
        optional("name") => [String.t() | atom()],
        optional("next") => list(String.t() | atom()),
        optional("outputs") => list(step_output()),
        optional("previous") => list(String.t() | atom()),
        optional("stepActionType") => String.t() | atom(),
        optional("stepAutomationConfiguration") => step_automation_configuration(),
        optional("stepGroupId") => String.t() | atom(),
        optional("templateId") => String.t() | atom()
      }

  """
  @type get_template_step_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_migration_workflow_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_migration_workflow_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_template_step_group_request() :: %{}

  """
  @type get_template_step_group_request() :: %{}

  @typedoc """

  ## Example:

      workflow_step_automation_configuration() :: %{
        "command" => platform_command(),
        "runEnvironment" => String.t() | atom(),
        "scriptLocationS3Bucket" => String.t() | atom(),
        "scriptLocationS3Key" => platform_script_key(),
        "targetType" => String.t() | atom()
      }

  """
  @type workflow_step_automation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_migration_workflow_templates_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("templateSummary") => list(template_summary())
      }

  """
  @type list_migration_workflow_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_steps_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("templateStepSummaryList") => list(template_step_summary())
      }

  """
  @type list_template_steps_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tool() :: %{
        "name" => [String.t() | atom()],
        "url" => [String.t() | atom()]
      }

  """
  @type tool() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_step_groups_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("templateStepGroupSummary") => list(template_step_group_summary())
      }

  """
  @type list_template_step_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_step_group_response() :: %{}

  """
  @type delete_workflow_step_group_response() :: %{}

  @typedoc """

  ## Example:

      delete_workflow_step_group_request() :: %{
        required("workflowId") => String.t() | atom()
      }

  """
  @type delete_workflow_step_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_migration_workflows_request() :: %{
        optional("adsApplicationConfigurationName") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("name") => [String.t() | atom()],
        optional("nextToken") => String.t() | atom(),
        optional("status") => String.t() | atom(),
        optional("templateId") => String.t() | atom()
      }

  """
  @type list_migration_workflows_request() :: %{(String.t() | atom()) => any()}

  @type create_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_workflow_step_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_workflow_step_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_workflow_step_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_workflow_step_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_step_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_step_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_step_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_step_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_plugins_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type list_template_step_groups_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_template_steps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_templates_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type list_workflow_step_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workflow_steps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_workflows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type retry_workflow_step_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_workflow_step_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_workflow_step_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-08-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "migrationhub-orchestrator",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MigrationHubOrchestrator",
      signature_version: "v4",
      signing_name: "migrationhub-orchestrator",
      target_prefix: nil
    }
  end

  @doc """
  Creates a migration workflow template.
  """
  @spec create_template(map(), create_template_request(), list()) ::
          {:ok, create_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_template_errors()}
  def create_template(%Client{} = client, input, options \\ []) do
    url_path = "/template"
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
  Create a workflow to orchestrate your migrations.
  """
  @spec create_workflow(map(), create_migration_workflow_request(), list()) ::
          {:ok, create_migration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_errors()}
  def create_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/migrationworkflow/"
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
  Create a step in the migration workflow.
  """
  @spec create_workflow_step(map(), create_workflow_step_request(), list()) ::
          {:ok, create_workflow_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_step_errors()}
  def create_workflow_step(%Client{} = client, input, options \\ []) do
    url_path = "/workflowstep"
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
  Create a step group in a migration workflow.
  """
  @spec create_workflow_step_group(map(), create_workflow_step_group_request(), list()) ::
          {:ok, create_workflow_step_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_step_group_errors()}
  def create_workflow_step_group(%Client{} = client, input, options \\ []) do
    url_path = "/workflowstepgroups"
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
  Deletes a migration workflow template.
  """
  @spec delete_template(map(), String.t() | atom(), delete_template_request(), list()) ::
          {:ok, delete_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_template_errors()}
  def delete_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/template/#{AWS.Util.encode_uri(id)}"
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
  Delete a migration workflow.

  You must pause a running workflow in Migration Hub Orchestrator console to
  delete it.
  """
  @spec delete_workflow(map(), String.t() | atom(), delete_migration_workflow_request(), list()) ::
          {:ok, delete_migration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}"
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
      202
    )
  end

  @doc """
  Delete a step in a migration workflow.

  Pause the workflow to delete a running
  step.
  """
  @spec delete_workflow_step(map(), String.t() | atom(), delete_workflow_step_request(), list()) ::
          {:ok, delete_workflow_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_step_errors()}
  def delete_workflow_step(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstep/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"stepGroupId", "stepGroupId"},
        {"workflowId", "workflowId"}
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
  Delete a step group in a migration workflow.
  """
  @spec delete_workflow_step_group(
          map(),
          String.t() | atom(),
          delete_workflow_step_group_request(),
          list()
        ) ::
          {:ok, delete_workflow_step_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_step_group_errors()}
  def delete_workflow_step_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstepgroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"workflowId", "workflowId"}
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
      202
    )
  end

  @doc """
  Get the template you want to use for creating a migration workflow.
  """
  @spec get_template(map(), String.t() | atom(), list()) ::
          {:ok, get_migration_workflow_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_template_errors()}
  def get_template(%Client{} = client, id, options \\ []) do
    url_path = "/migrationworkflowtemplate/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a specific step in a template.
  """
  @spec get_template_step(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_template_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_template_step_errors()}
  def get_template_step(%Client{} = client, id, step_group_id, template_id, options \\ []) do
    url_path = "/templatestep/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_id) do
        [{"templateId", template_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(step_group_id) do
        [{"stepGroupId", step_group_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a step group in a template.
  """
  @spec get_template_step_group(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_template_step_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_template_step_group_errors()}
  def get_template_step_group(%Client{} = client, id, template_id, options \\ []) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_id)}/stepgroups/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get migration workflow.
  """
  @spec get_workflow(map(), String.t() | atom(), list()) ::
          {:ok, get_migration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_errors()}
  def get_workflow(%Client{} = client, id, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a step in the migration workflow.
  """
  @spec get_workflow_step(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_workflow_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_step_errors()}
  def get_workflow_step(%Client{} = client, id, step_group_id, workflow_id, options \\ []) do
    url_path = "/workflowstep/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_id) do
        [{"workflowId", workflow_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(step_group_id) do
        [{"stepGroupId", step_group_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the step group of a migration workflow.
  """
  @spec get_workflow_step_group(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_workflow_step_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_step_group_errors()}
  def get_workflow_step_group(%Client{} = client, id, workflow_id, options \\ []) do
    url_path = "/workflowstepgroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_id) do
        [{"workflowId", workflow_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List AWS Migration Hub Orchestrator plugins.
  """
  @spec list_plugins(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_plugins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_plugins_errors()}
  def list_plugins(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/plugins"
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
  List the tags added to a resource.
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
  List the step groups in a template.
  """
  @spec list_template_step_groups(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_template_step_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_template_step_groups_errors()}
  def list_template_step_groups(
        %Client{} = client,
        template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templatestepgroups/#{AWS.Util.encode_uri(template_id)}"
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
  List the steps in a template.
  """
  @spec list_template_steps(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_template_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_template_steps_errors()}
  def list_template_steps(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        step_group_id,
        template_id,
        options \\ []
      ) do
    url_path = "/templatesteps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_id) do
        [{"templateId", template_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(step_group_id) do
        [{"stepGroupId", step_group_id} | query_params]
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
  List the templates available in Migration Hub Orchestrator to create a migration
  workflow.
  """
  @spec list_templates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_migration_workflow_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_templates_errors()}
  def list_templates(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/migrationworkflowtemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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
  List the step groups in a migration workflow.
  """
  @spec list_workflow_step_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_workflow_step_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_step_groups_errors()}
  def list_workflow_step_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        workflow_id,
        options \\ []
      ) do
    url_path = "/workflowstepgroups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_id) do
        [{"workflowId", workflow_id} | query_params]
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
  List the steps in a workflow.
  """
  @spec list_workflow_steps(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_workflow_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_steps_errors()}
  def list_workflow_steps(
        %Client{} = client,
        step_group_id,
        workflow_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workflow/#{AWS.Util.encode_uri(workflow_id)}/workflowstepgroups/#{AWS.Util.encode_uri(step_group_id)}/workflowsteps"

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
  List the migration workflows.
  """
  @spec list_workflows(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_migration_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflows_errors()}
  def list_workflows(
        %Client{} = client,
        ads_application_configuration_name \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        status \\ nil,
        template_id \\ nil,
        options \\ []
      ) do
    url_path = "/migrationworkflows"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_id) do
        [{"templateId", template_id} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(ads_application_configuration_name) do
        [{"adsApplicationConfigurationName", ads_application_configuration_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retry a failed step in a migration workflow.
  """
  @spec retry_workflow_step(map(), String.t() | atom(), retry_workflow_step_request(), list()) ::
          {:ok, retry_workflow_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, retry_workflow_step_errors()}
  def retry_workflow_step(%Client{} = client, id, input, options \\ []) do
    url_path = "/retryworkflowstep/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"stepGroupId", "stepGroupId"},
        {"workflowId", "workflowId"}
      ]
      |> Request.build_params(input)

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
  Start a migration workflow.
  """
  @spec start_workflow(map(), String.t() | atom(), start_migration_workflow_request(), list()) ::
          {:ok, start_migration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_workflow_errors()}
  def start_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}/start"
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
  Stop an ongoing migration workflow.
  """
  @spec stop_workflow(map(), String.t() | atom(), stop_migration_workflow_request(), list()) ::
          {:ok, stop_migration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_workflow_errors()}
  def stop_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}/stop"
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
  Tag a resource by specifying its Amazon Resource Name (ARN).
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
  Deletes the tags for a resource.
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
  Updates a migration workflow template.
  """
  @spec update_template(map(), String.t() | atom(), update_template_request(), list()) ::
          {:ok, update_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_template_errors()}
  def update_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/template/#{AWS.Util.encode_uri(id)}"
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
  Update a migration workflow.
  """
  @spec update_workflow(map(), String.t() | atom(), update_migration_workflow_request(), list()) ::
          {:ok, update_migration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_errors()}
  def update_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}"
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
  Update a step in a migration workflow.
  """
  @spec update_workflow_step(map(), String.t() | atom(), update_workflow_step_request(), list()) ::
          {:ok, update_workflow_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_step_errors()}
  def update_workflow_step(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstep/#{AWS.Util.encode_uri(id)}"
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
  Update the step group in a migration workflow.
  """
  @spec update_workflow_step_group(
          map(),
          String.t() | atom(),
          update_workflow_step_group_request(),
          list()
        ) ::
          {:ok, update_workflow_step_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_step_group_errors()}
  def update_workflow_step_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstepgroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"workflowId", "workflowId"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end
end
