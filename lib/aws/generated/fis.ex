# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Fis do
  @moduledoc """
  Fault Injection Simulator is a managed service that enables you to perform fault
  injection
  experiments on your Amazon Web Services workloads.

  For more information, see the [Fault Injection Simulator User Guide](https://docs.aws.amazon.com/fis/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  target_account_configuration() :: %{
    "accountId" => String.t(),
    "description" => String.t(),
    "roleArn" => String.t()
  }
  """
  @type target_account_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  action_summary() :: %{
    "description" => String.t(),
    "id" => String.t(),
    "tags" => map(),
    "targets" => map()
  }
  """
  @type action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiments_response() :: %{
    "experiments" => list(experiment_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_experiments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiment_resolved_targets_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("targetName") => String.t()
  }
  """
  @type list_experiment_resolved_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_summary() :: %{
    "creationTime" => non_neg_integer(),
    "experimentTemplateId" => String.t(),
    "id" => String.t(),
    "state" => experiment_state(),
    "tags" => map()
  }
  """
  @type experiment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_experiment_target_account_configuration_response() :: %{
    "targetAccountConfiguration" => experiment_target_account_configuration()
  }
  """
  @type get_experiment_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_experiment_response() :: %{
    "experiment" => experiment()
  }
  """
  @type get_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_target_account_configuration_response() :: %{
    "targetAccountConfiguration" => target_account_configuration()
  }
  """
  @type update_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_target() :: %{
    "filters" => list(experiment_template_target_filter()()),
    "parameters" => map(),
    "resourceArns" => list(String.t()()),
    "resourceTags" => map(),
    "resourceType" => String.t(),
    "selectionMode" => String.t()
  }
  """
  @type experiment_template_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_target_account_configuration() :: %{
    "accountId" => String.t(),
    "description" => String.t(),
    "roleArn" => String.t()
  }
  """
  @type experiment_target_account_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiment_templates_response() :: %{
    "experimentTemplates" => list(experiment_template_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_experiment_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experiment_template_request() :: %{
    optional("actions") => map(),
    optional("description") => String.t(),
    optional("experimentOptions") => update_experiment_template_experiment_options_input(),
    optional("logConfiguration") => update_experiment_template_log_configuration_input(),
    optional("roleArn") => String.t(),
    optional("stopConditions") => list(update_experiment_template_stop_condition_input()()),
    optional("targets") => map()
  }
  """
  @type update_experiment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_target_resource_type_response() :: %{
    "targetResourceType" => target_resource_type()
  }
  """
  @type get_target_resource_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_s3_log_configuration() :: %{
    "bucketName" => String.t(),
    "prefix" => String.t()
  }
  """
  @type experiment_s3_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_action_state() :: %{
    "reason" => String.t(),
    "status" => list(any())
  }
  """
  @type experiment_action_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_action() :: %{
    "actionId" => String.t(),
    "description" => String.t(),
    "endTime" => non_neg_integer(),
    "parameters" => map(),
    "startAfter" => list(String.t()()),
    "startTime" => non_neg_integer(),
    "state" => experiment_action_state(),
    "targets" => map()
  }
  """
  @type experiment_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target_account_configuration_summary() :: %{
    "accountId" => String.t(),
    "description" => String.t(),
    "roleArn" => String.t()
  }
  """
  @type target_account_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_experiment_template_request() :: %{

  }
  """
  @type get_experiment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_s3_log_configuration_input() :: %{
    "bucketName" => String.t(),
    "prefix" => String.t()
  }
  """
  @type experiment_template_s3_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_target_filter() :: %{
    "path" => String.t(),
    "values" => list(String.t()())
  }
  """
  @type experiment_template_target_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_target_account_configuration_request() :: %{
    optional("description") => String.t(),
    optional("roleArn") => String.t()
  }
  """
  @type update_target_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_log_configuration() :: %{
    "cloudWatchLogsConfiguration" => experiment_cloud_watch_logs_log_configuration(),
    "logSchemaVersion" => integer(),
    "s3Configuration" => experiment_s3_log_configuration()
  }
  """
  @type experiment_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    optional("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_experiment_template_request() :: %{

  }
  """
  @type delete_experiment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_target_account_configuration_response() :: %{
    "targetAccountConfiguration" => target_account_configuration()
  }
  """
  @type create_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiment_target_account_configurations_response() :: %{
    "nextToken" => String.t(),
    "targetAccountConfigurations" => list(experiment_target_account_configuration_summary()())
  }
  """
  @type list_experiment_target_account_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_target_account_configuration_request() :: %{

  }
  """
  @type delete_target_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_cloud_watch_logs_log_configuration_input() :: %{
    "logGroupArn" => String.t()
  }
  """
  @type experiment_template_cloud_watch_logs_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_target_account_configurations_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_target_account_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target_resource_type_summary() :: %{
    "description" => String.t(),
    "resourceType" => String.t()
  }
  """
  @type target_resource_type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experiment_template_action_input_item() :: %{
    "actionId" => String.t(),
    "description" => String.t(),
    "parameters" => map(),
    "startAfter" => list(String.t()()),
    "targets" => map()
  }
  """
  @type update_experiment_template_action_input_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_target_filter() :: %{
    "path" => String.t(),
    "values" => list(String.t()())
  }
  """
  @type experiment_target_filter() :: %{String.t() => any()}

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
  list_experiment_templates_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_experiment_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experiment_template_log_configuration_input() :: %{
    "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration_input(),
    "logSchemaVersion" => integer(),
    "s3Configuration" => experiment_template_s3_log_configuration_input()
  }
  """
  @type update_experiment_template_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_state() :: %{
    "reason" => String.t(),
    "status" => list(any())
  }
  """
  @type experiment_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_experiment_request() :: %{

  }
  """
  @type get_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experiment_template_log_configuration_input() :: %{
    "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration_input(),
    "logSchemaVersion" => integer(),
    "s3Configuration" => experiment_template_s3_log_configuration_input()
  }
  """
  @type create_experiment_template_log_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resolved_target() :: %{
    "resourceType" => String.t(),
    "targetInformation" => map(),
    "targetName" => String.t()
  }
  """
  @type resolved_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_target_resource_types_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_target_resource_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_summary() :: %{
    "creationTime" => non_neg_integer(),
    "description" => String.t(),
    "id" => String.t(),
    "lastUpdateTime" => non_neg_integer(),
    "tags" => map()
  }
  """
  @type experiment_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_target_account_configuration_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    required("roleArn") => String.t()
  }
  """
  @type create_target_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target_resource_type_parameter() :: %{
    "description" => String.t(),
    "required" => boolean()
  }
  """
  @type target_resource_type_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experiment_template_request() :: %{
    optional("experimentOptions") => create_experiment_template_experiment_options_input(),
    optional("logConfiguration") => create_experiment_template_log_configuration_input(),
    optional("tags") => map(),
    optional("targets") => map(),
    required("actions") => map(),
    required("clientToken") => String.t(),
    required("description") => String.t(),
    required("roleArn") => String.t(),
    required("stopConditions") => list(create_experiment_template_stop_condition_input()())
  }
  """
  @type create_experiment_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_action_request() :: %{

  }
  """
  @type get_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_target() :: %{
    "filters" => list(experiment_target_filter()()),
    "parameters" => map(),
    "resourceArns" => list(String.t()()),
    "resourceTags" => map(),
    "resourceType" => String.t(),
    "selectionMode" => String.t()
  }
  """
  @type experiment_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_action_response() :: %{
    "action" => action()
  }
  """
  @type get_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiment_target_account_configurations_request() :: %{
    optional("nextToken") => String.t()
  }
  """
  @type list_experiment_target_account_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_s3_log_configuration() :: %{
    "bucketName" => String.t(),
    "prefix" => String.t()
  }
  """
  @type experiment_template_s3_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_actions_response() :: %{
    "actions" => list(action_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_actions_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_stop_condition() :: %{
    "source" => String.t(),
    "value" => String.t()
  }
  """
  @type experiment_stop_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target_resource_type() :: %{
    "description" => String.t(),
    "parameters" => map(),
    "resourceType" => String.t()
  }
  """
  @type target_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  action_target() :: %{
    "resourceType" => String.t()
  }
  """
  @type action_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_target_account_configurations_response() :: %{
    "nextToken" => String.t(),
    "targetAccountConfigurations" => list(target_account_configuration_summary()())
  }
  """
  @type list_target_account_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_experiment_request() :: %{

  }
  """
  @type stop_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_stop_condition() :: %{
    "source" => String.t(),
    "value" => String.t()
  }
  """
  @type experiment_template_stop_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_action() :: %{
    "actionId" => String.t(),
    "description" => String.t(),
    "parameters" => map(),
    "startAfter" => list(String.t()()),
    "targets" => map()
  }
  """
  @type experiment_template_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_experiment_template_response() :: %{
    "experimentTemplate" => experiment_template()
  }
  """
  @type delete_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  action() :: %{
    "description" => String.t(),
    "id" => String.t(),
    "parameters" => map(),
    "tags" => map(),
    "targets" => map()
  }
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template() :: %{
    "actions" => map(),
    "creationTime" => non_neg_integer(),
    "description" => String.t(),
    "experimentOptions" => experiment_template_experiment_options(),
    "id" => String.t(),
    "lastUpdateTime" => non_neg_integer(),
    "logConfiguration" => experiment_template_log_configuration(),
    "roleArn" => String.t(),
    "stopConditions" => list(experiment_template_stop_condition()()),
    "tags" => map(),
    "targetAccountConfigurationsCount" => float(),
    "targets" => map()
  }
  """
  @type experiment_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_experiment_response() :: %{
    "experiment" => experiment()
  }
  """
  @type start_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_target_account_configuration_request() :: %{

  }
  """
  @type get_target_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experiment_template_response() :: %{
    "experimentTemplate" => experiment_template()
  }
  """
  @type update_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiment_resolved_targets_response() :: %{
    "nextToken" => String.t(),
    "resolvedTargets" => list(resolved_target()())
  }
  """
  @type list_experiment_resolved_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_experiment_target_account_configuration_request() :: %{

  }
  """
  @type get_experiment_target_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_experiment_template_response() :: %{
    "experimentTemplate" => experiment_template()
  }
  """
  @type get_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experiment_template_action_input() :: %{
    "actionId" => String.t(),
    "description" => String.t(),
    "parameters" => map(),
    "startAfter" => list(String.t()()),
    "targets" => map()
  }
  """
  @type create_experiment_template_action_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_target_input_filter() :: %{
    "path" => String.t(),
    "values" => list(String.t()())
  }
  """
  @type experiment_template_target_input_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "message" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_target_resource_types_response() :: %{
    "nextToken" => String.t(),
    "targetResourceTypes" => list(target_resource_type_summary()())
  }
  """
  @type list_target_resource_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_target_account_configuration_response() :: %{
    "targetAccountConfiguration" => target_account_configuration()
  }
  """
  @type get_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_target_account_configuration_summary() :: %{
    "accountId" => String.t(),
    "description" => String.t(),
    "roleArn" => String.t()
  }
  """
  @type experiment_target_account_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_options() :: %{
    "accountTargeting" => list(any()),
    "emptyTargetResolutionMode" => list(any())
  }
  """
  @type experiment_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiments_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_experiments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_experiment_request() :: %{
    optional("tags") => map(),
    required("clientToken") => String.t(),
    required("experimentTemplateId") => String.t()
  }
  """
  @type start_experiment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experiment_template_experiment_options_input() :: %{
    "accountTargeting" => list(any()),
    "emptyTargetResolutionMode" => list(any())
  }
  """
  @type create_experiment_template_experiment_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_target_resource_type_request() :: %{

  }
  """
  @type get_target_resource_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_experiment_options() :: %{
    "accountTargeting" => list(any()),
    "emptyTargetResolutionMode" => list(any())
  }
  """
  @type experiment_template_experiment_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experiment_template_stop_condition_input() :: %{
    "source" => String.t(),
    "value" => String.t()
  }
  """
  @type create_experiment_template_stop_condition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experiment_template_response() :: %{
    "experimentTemplate" => experiment_template()
  }
  """
  @type create_experiment_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experiment_template_target_input() :: %{
    "filters" => list(experiment_template_target_input_filter()()),
    "parameters" => map(),
    "resourceArns" => list(String.t()()),
    "resourceTags" => map(),
    "resourceType" => String.t(),
    "selectionMode" => String.t()
  }
  """
  @type create_experiment_template_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  action_parameter() :: %{
    "description" => String.t(),
    "required" => boolean()
  }
  """
  @type action_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_target_account_configuration_response() :: %{
    "targetAccountConfiguration" => target_account_configuration()
  }
  """
  @type delete_target_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_experiment_response() :: %{
    "experiment" => experiment()
  }
  """
  @type stop_experiment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experiment_template_target_input() :: %{
    "filters" => list(experiment_template_target_input_filter()()),
    "parameters" => map(),
    "resourceArns" => list(String.t()()),
    "resourceTags" => map(),
    "resourceType" => String.t(),
    "selectionMode" => String.t()
  }
  """
  @type update_experiment_template_target_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experiment_template_experiment_options_input() :: %{
    "emptyTargetResolutionMode" => list(any())
  }
  """
  @type update_experiment_template_experiment_options_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment() :: %{
    "actions" => map(),
    "creationTime" => non_neg_integer(),
    "endTime" => non_neg_integer(),
    "experimentOptions" => experiment_options(),
    "experimentTemplateId" => String.t(),
    "id" => String.t(),
    "logConfiguration" => experiment_log_configuration(),
    "roleArn" => String.t(),
    "startTime" => non_neg_integer(),
    "state" => experiment_state(),
    "stopConditions" => list(experiment_stop_condition()()),
    "tags" => map(),
    "targetAccountConfigurationsCount" => float(),
    "targets" => map()
  }
  """
  @type experiment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_log_configuration() :: %{
    "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration(),
    "logSchemaVersion" => integer(),
    "s3Configuration" => experiment_template_s3_log_configuration()
  }
  """
  @type experiment_template_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experiment_template_stop_condition_input() :: %{
    "source" => String.t(),
    "value" => String.t()
  }
  """
  @type update_experiment_template_stop_condition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_cloud_watch_logs_log_configuration() :: %{
    "logGroupArn" => String.t()
  }
  """
  @type experiment_cloud_watch_logs_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiment_template_cloud_watch_logs_log_configuration() :: %{
    "logGroupArn" => String.t()
  }
  """
  @type experiment_template_cloud_watch_logs_log_configuration() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2020-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fis",
      global?: false,
      protocol: "rest-json",
      service_id: "fis",
      signature_version: "v4",
      signing_name: "fis",
      target_prefix: nil
    }
  end

  @doc """
  Creates an experiment template.

  An experiment template includes the following components:

    *

  **Targets**: A target can be a specific resource in
  your Amazon Web Services environment, or one or more resources that match
  criteria that you
  specify, for example, resources that have specific tags.

    *

  **Actions**: The actions to carry out on the
  target. You can specify multiple actions, the duration of each action, and when
  to start each action during an experiment.

    *

  **Stop conditions**: If a stop condition is
  triggered while an experiment is running, the experiment is automatically
  stopped. You can define a stop condition as a CloudWatch alarm.

  For more information, see [experiment templates](https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html)
  in the *Fault Injection Simulator User Guide*.
  """
  @spec create_experiment_template(map(), create_experiment_template_request(), list()) ::
          {:ok, create_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, validation_exception()}
  def create_experiment_template(%Client{} = client, input, options \\ []) do
    url_path = "/experimentTemplates"
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
  Creates a target account configuration for the experiment template.

  A target account configuration
  is required when `accountTargeting` of `experimentOptions` is set to
  `multi-account`.
  For more information, see [experiment options](https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html)
  in the *Fault Injection Simulator User Guide*.
  """
  @spec create_target_account_configuration(
          map(),
          String.t(),
          String.t(),
          create_target_account_configuration_request(),
          list()
        ) ::
          {:ok, create_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, validation_exception()}
  def create_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
  Deletes the specified experiment template.
  """
  @spec delete_experiment_template(
          map(),
          String.t(),
          delete_experiment_template_request(),
          list()
        ) ::
          {:ok, delete_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def delete_experiment_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
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
  Deletes the specified target account configuration of the experiment template.
  """
  @spec delete_target_account_configuration(
          map(),
          String.t(),
          String.t(),
          delete_target_account_configuration_request(),
          list()
        ) ::
          {:ok, delete_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def delete_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
  Gets information about the specified FIS action.
  """
  @spec get_action(map(), String.t(), list()) ::
          {:ok, get_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_action(%Client{} = client, id, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified experiment.
  """
  @spec get_experiment(map(), String.t(), list()) ::
          {:ok, get_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_experiment(%Client{} = client, id, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified target account configuration of the
  experiment.
  """
  @spec get_experiment_target_account_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, get_experiment_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_experiment_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_id,
        options \\ []
      ) do
    url_path =
      "/experiments/#{AWS.Util.encode_uri(experiment_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified experiment template.
  """
  @spec get_experiment_template(map(), String.t(), list()) ::
          {:ok, get_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_experiment_template(%Client{} = client, id, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified target account configuration of the
  experiment template.
  """
  @spec get_target_account_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, get_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified resource type.
  """
  @spec get_target_resource_type(map(), String.t(), list()) ::
          {:ok, get_target_resource_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_target_resource_type(%Client{} = client, resource_type, options \\ []) do
    url_path = "/targetResourceTypes/#{AWS.Util.encode_uri(resource_type)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the available FIS actions.
  """
  @spec list_actions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validation_exception()}
  def list_actions(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/actions"
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
  Lists the resolved targets information of the specified experiment.
  """
  @spec list_experiment_resolved_targets(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_experiment_resolved_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_experiment_resolved_targets(
        %Client{} = client,
        experiment_id,
        max_results \\ nil,
        next_token \\ nil,
        target_name \\ nil,
        options \\ []
      ) do
    url_path = "/experiments/#{AWS.Util.encode_uri(experiment_id)}/resolvedTargets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_name) do
        [{"targetName", target_name} | query_params]
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
  Lists the target account configurations of the specified experiment.
  """
  @spec list_experiment_target_account_configurations(map(), String.t(), String.t() | nil, list()) ::
          {:ok, list_experiment_target_account_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_experiment_target_account_configurations(
        %Client{} = client,
        experiment_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/experiments/#{AWS.Util.encode_uri(experiment_id)}/targetAccountConfigurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists your experiment templates.
  """
  @spec list_experiment_templates(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_experiment_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validation_exception()}
  def list_experiment_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/experimentTemplates"
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
  Lists your experiments.
  """
  @spec list_experiments(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_experiments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validation_exception()}
  def list_experiments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/experiments"
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
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the target account configurations of the specified experiment template.
  """
  @spec list_target_account_configurations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_target_account_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_target_account_configurations(
        %Client{} = client,
        experiment_template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations"

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
  Lists the target resource types.
  """
  @spec list_target_resource_types(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_target_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validation_exception()}
  def list_target_resource_types(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/targetResourceTypes"
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
  Starts running an experiment from the specified experiment template.
  """
  @spec start_experiment(map(), start_experiment_request(), list()) ::
          {:ok, start_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, validation_exception()}
  def start_experiment(%Client{} = client, input, options \\ []) do
    url_path = "/experiments"
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
  Stops the specified experiment.
  """
  @spec stop_experiment(map(), String.t(), stop_experiment_request(), list()) ::
          {:ok, stop_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def stop_experiment(%Client{} = client, id, input, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"
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
  Applies the specified tags to the specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the specified experiment template.
  """
  @spec update_experiment_template(
          map(),
          String.t(),
          update_experiment_template_request(),
          list()
        ) ::
          {:ok, update_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, validation_exception()}
  def update_experiment_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
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
  Updates the target account configuration for the specified experiment template.
  """
  @spec update_target_account_configuration(
          map(),
          String.t(),
          String.t(),
          update_target_account_configuration_request(),
          list()
        ) ::
          {:ok, update_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def update_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

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
