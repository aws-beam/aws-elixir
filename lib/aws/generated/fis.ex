# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Fis do
  @moduledoc """
  Amazon Web Services Fault Injection Service is a managed service that enables
  you to perform fault injection
  experiments on your Amazon Web Services workloads.

  For more information, see the [Fault Injection Service User Guide](https://docs.aws.amazon.com/fis/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      target_account_configuration() :: %{
        "accountId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "roleArn" => String.t() | Atom.t()
      }

  """
  @type target_account_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_summary() :: %{
        "arn" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "tags" => map(),
        "targets" => map()
      }

  """
  @type action_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_experiments_response() :: %{
        "experiments" => list(experiment_summary()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_experiments_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_experiment_resolved_targets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("targetName") => String.t() | Atom.t()
      }

  """
  @type list_experiment_resolved_targets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_report_configuration_outputs() :: %{
        "s3Configuration" => experiment_report_configuration_outputs_s3_configuration()
      }

  """
  @type experiment_report_configuration_outputs() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_summary() :: %{
        "arn" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "experimentOptions" => experiment_options(),
        "experimentTemplateId" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "state" => experiment_state(),
        "tags" => map()
      }

  """
  @type experiment_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_experiment_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => experiment_target_account_configuration()
      }

  """
  @type get_experiment_target_account_configuration_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_experiment_template_report_configuration_input() :: %{
        "dataSources" => experiment_template_report_configuration_data_sources_input(),
        "outputs" => experiment_template_report_configuration_outputs_input(),
        "postExperimentDuration" => String.t() | Atom.t(),
        "preExperimentDuration" => String.t() | Atom.t()
      }

  """
  @type create_experiment_template_report_configuration_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_experiment_response() :: %{
        "experiment" => experiment()
      }

  """
  @type get_experiment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }

  """
  @type update_target_account_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_target() :: %{
        "filters" => list(experiment_template_target_filter()),
        "parameters" => map(),
        "resourceArns" => list(String.t() | Atom.t()),
        "resourceTags" => map(),
        "resourceType" => String.t() | Atom.t(),
        "selectionMode" => String.t() | Atom.t()
      }

  """
  @type experiment_template_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_safety_lever_request() :: %{}

  """
  @type get_safety_lever_request() :: %{}

  @typedoc """

  ## Example:

      experiment_target_account_configuration() :: %{
        "accountId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "roleArn" => String.t() | Atom.t()
      }

  """
  @type experiment_target_account_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      experiment_report_configuration_data_sources() :: %{
        "cloudWatchDashboards" => list(experiment_report_configuration_cloud_watch_dashboard())
      }

  """
  @type experiment_report_configuration_data_sources() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_experiment_templates_response() :: %{
        "experimentTemplates" => list(experiment_template_summary()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_experiment_templates_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_request() :: %{
        optional("actions") => map(),
        optional("description") => String.t() | Atom.t(),
        optional("experimentOptions") => update_experiment_template_experiment_options_input(),
        optional("experimentReportConfiguration") => update_experiment_template_report_configuration_input(),
        optional("logConfiguration") => update_experiment_template_log_configuration_input(),
        optional("roleArn") => String.t() | Atom.t(),
        optional("stopConditions") => list(update_experiment_template_stop_condition_input()),
        optional("targets") => map()
      }

  """
  @type update_experiment_template_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_target_resource_type_response() :: %{
        "targetResourceType" => target_resource_type()
      }

  """
  @type get_target_resource_type_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_s3_log_configuration() :: %{
        "bucketName" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type experiment_s3_log_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_action_state() :: %{
        "reason" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type experiment_action_state() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_action() :: %{
        "actionId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "endTime" => non_neg_integer(),
        "parameters" => map(),
        "startAfter" => list(String.t() | Atom.t()),
        "startTime" => non_neg_integer(),
        "state" => experiment_action_state(),
        "targets" => map()
      }

  """
  @type experiment_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      target_account_configuration_summary() :: %{
        "accountId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "roleArn" => String.t() | Atom.t()
      }

  """
  @type target_account_configuration_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_report_s3_report() :: %{
        "arn" => String.t() | Atom.t(),
        "reportType" => String.t() | Atom.t()
      }

  """
  @type experiment_report_s3_report() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_experiment_template_request() :: %{}

  """
  @type get_experiment_template_request() :: %{}

  @typedoc """

  ## Example:

      experiment_template_s3_log_configuration_input() :: %{
        "bucketName" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type experiment_template_s3_log_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_target_filter() :: %{
        "path" => String.t() | Atom.t(),
        "values" => list(String.t() | Atom.t())
      }

  """
  @type experiment_template_target_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_target_account_configuration_request() :: %{
        optional("description") => String.t() | Atom.t(),
        optional("roleArn") => String.t() | Atom.t()
      }

  """
  @type update_target_account_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_safety_lever_state_response() :: %{
        "safetyLever" => safety_lever()
      }

  """
  @type update_safety_lever_state_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_log_configuration() :: %{
        "cloudWatchLogsConfiguration" => experiment_cloud_watch_logs_log_configuration(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_s3_log_configuration()
      }

  """
  @type experiment_log_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        optional("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_experiment_template_request() :: %{}

  """
  @type delete_experiment_template_request() :: %{}

  @typedoc """

  ## Example:

      report_configuration_s3_output_input() :: %{
        "bucketName" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type report_configuration_s3_output_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }

  """
  @type create_target_account_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_report_configuration_outputs_s3_configuration() :: %{
        "bucketName" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type experiment_report_configuration_outputs_s3_configuration() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_experiment_target_account_configurations_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "targetAccountConfigurations" => list(experiment_target_account_configuration_summary())
      }

  """
  @type list_experiment_target_account_configurations_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      experiment_report_configuration_cloud_watch_dashboard() :: %{
        "dashboardIdentifier" => String.t() | Atom.t()
      }

  """
  @type experiment_report_configuration_cloud_watch_dashboard() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      delete_target_account_configuration_request() :: %{}

  """
  @type delete_target_account_configuration_request() :: %{}

  @typedoc """

  ## Example:

      experiment_template_cloud_watch_logs_log_configuration_input() :: %{
        "logGroupArn" => String.t() | Atom.t()
      }

  """
  @type experiment_template_cloud_watch_logs_log_configuration_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_target_account_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_target_account_configurations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      target_resource_type_summary() :: %{
        "description" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type target_resource_type_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_action_input_item() :: %{
        "actionId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "parameters" => map(),
        "startAfter" => list(String.t() | Atom.t()),
        "targets" => map()
      }

  """
  @type update_experiment_template_action_input_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_target_filter() :: %{
        "path" => String.t() | Atom.t(),
        "values" => list(String.t() | Atom.t())
      }

  """
  @type experiment_target_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      report_configuration_cloud_watch_dashboard_input() :: %{
        "dashboardIdentifier" => String.t() | Atom.t()
      }

  """
  @type report_configuration_cloud_watch_dashboard_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_experiment_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_experiment_templates_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_log_configuration_input() :: %{
        "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration_input(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_template_s3_log_configuration_input()
      }

  """
  @type update_experiment_template_log_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_state() :: %{
        "error" => experiment_error(),
        "reason" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type experiment_state() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_experiment_request() :: %{}

  """
  @type get_experiment_request() :: %{}

  @typedoc """

  ## Example:

      create_experiment_template_log_configuration_input() :: %{
        "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration_input(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_template_s3_log_configuration_input()
      }

  """
  @type create_experiment_template_log_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resolved_target() :: %{
        "resourceType" => String.t() | Atom.t(),
        "targetInformation" => map(),
        "targetName" => String.t() | Atom.t()
      }

  """
  @type resolved_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_target_resource_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_target_resource_types_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_summary() :: %{
        "arn" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "lastUpdateTime" => non_neg_integer(),
        "tags" => map()
      }

  """
  @type experiment_template_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_target_account_configuration_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("description") => String.t() | Atom.t(),
        required("roleArn") => String.t() | Atom.t()
      }

  """
  @type create_target_account_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_report_configuration_data_sources_input() :: %{
        "cloudWatchDashboards" => list(report_configuration_cloud_watch_dashboard_input())
      }

  """
  @type experiment_template_report_configuration_data_sources_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      target_resource_type_parameter() :: %{
        "description" => String.t() | Atom.t(),
        "required" => boolean()
      }

  """
  @type target_resource_type_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_experiment_template_request() :: %{
        optional("experimentOptions") => create_experiment_template_experiment_options_input(),
        optional("experimentReportConfiguration") => create_experiment_template_report_configuration_input(),
        optional("logConfiguration") => create_experiment_template_log_configuration_input(),
        optional("tags") => map(),
        optional("targets") => map(),
        required("actions") => map(),
        required("clientToken") => String.t() | Atom.t(),
        required("description") => String.t() | Atom.t(),
        required("roleArn") => String.t() | Atom.t(),
        required("stopConditions") => list(create_experiment_template_stop_condition_input())
      }

  """
  @type create_experiment_template_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_action_request() :: %{}

  """
  @type get_action_request() :: %{}

  @typedoc """

  ## Example:

      experiment_template_report_configuration_cloud_watch_dashboard() :: %{
        "dashboardIdentifier" => String.t() | Atom.t()
      }

  """
  @type experiment_template_report_configuration_cloud_watch_dashboard() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      experiment_report_configuration() :: %{
        "dataSources" => experiment_report_configuration_data_sources(),
        "outputs" => experiment_report_configuration_outputs(),
        "postExperimentDuration" => String.t() | Atom.t(),
        "preExperimentDuration" => String.t() | Atom.t()
      }

  """
  @type experiment_report_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_target() :: %{
        "filters" => list(experiment_target_filter()),
        "parameters" => map(),
        "resourceArns" => list(String.t() | Atom.t()),
        "resourceTags" => map(),
        "resourceType" => String.t() | Atom.t(),
        "selectionMode" => String.t() | Atom.t()
      }

  """
  @type experiment_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_action_response() :: %{
        "action" => action()
      }

  """
  @type get_action_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_experiment_target_account_configurations_request() :: %{
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_experiment_target_account_configurations_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_s3_log_configuration() :: %{
        "bucketName" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type experiment_template_s3_log_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_actions_response() :: %{
        "actions" => list(action_summary()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_actions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_report() :: %{
        "s3Reports" => list(experiment_report_s3_report()),
        "state" => experiment_report_state()
      }

  """
  @type experiment_report() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_report_configuration_outputs_input() :: %{
        "s3Configuration" => report_configuration_s3_output_input()
      }

  """
  @type experiment_template_report_configuration_outputs_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      list_actions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_actions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_stop_condition() :: %{
        "source" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type experiment_stop_condition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      target_resource_type() :: %{
        "description" => String.t() | Atom.t(),
        "parameters" => map(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type target_resource_type() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_safety_lever_state_request() :: %{
        required("state") => update_safety_lever_state_input()
      }

  """
  @type update_safety_lever_state_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_target() :: %{
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type action_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_target_account_configurations_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "targetAccountConfigurations" => list(target_account_configuration_summary())
      }

  """
  @type list_target_account_configurations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_error() :: %{
        "accountId" => String.t() | Atom.t(),
        "code" => String.t() | Atom.t(),
        "location" => String.t() | Atom.t()
      }

  """
  @type experiment_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_report_state() :: %{
        "error" => experiment_report_error(),
        "reason" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type experiment_report_state() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_report_configuration_outputs() :: %{
        "s3Configuration" => report_configuration_s3_output()
      }

  """
  @type experiment_template_report_configuration_outputs() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_experiment_request() :: %{}

  """
  @type stop_experiment_request() :: %{}

  @typedoc """

  ## Example:

      experiment_template_stop_condition() :: %{
        "source" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type experiment_template_stop_condition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_action() :: %{
        "actionId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "parameters" => map(),
        "startAfter" => list(String.t() | Atom.t()),
        "targets" => map()
      }

  """
  @type experiment_template_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }

  """
  @type delete_experiment_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_report_configuration_data_sources() :: %{
        "cloudWatchDashboards" => list(experiment_template_report_configuration_cloud_watch_dashboard())
      }

  """
  @type experiment_template_report_configuration_data_sources() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      action() :: %{
        "arn" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "parameters" => map(),
        "tags" => map(),
        "targets" => map()
      }

  """
  @type action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template() :: %{
        "actions" => map(),
        "arn" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | Atom.t(),
        "experimentOptions" => experiment_template_experiment_options(),
        "experimentReportConfiguration" => experiment_template_report_configuration(),
        "id" => String.t() | Atom.t(),
        "lastUpdateTime" => non_neg_integer(),
        "logConfiguration" => experiment_template_log_configuration(),
        "roleArn" => String.t() | Atom.t(),
        "stopConditions" => list(experiment_template_stop_condition()),
        "tags" => map(),
        "targetAccountConfigurationsCount" => float(),
        "targets" => map()
      }

  """
  @type experiment_template() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_experiment_response() :: %{
        "experiment" => experiment()
      }

  """
  @type start_experiment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_target_account_configuration_request() :: %{}

  """
  @type get_target_account_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_safety_lever_response() :: %{
        "safetyLever" => safety_lever()
      }

  """
  @type get_safety_lever_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }

  """
  @type update_experiment_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_experiment_resolved_targets_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "resolvedTargets" => list(resolved_target())
      }

  """
  @type list_experiment_resolved_targets_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_experiment_target_account_configuration_request() :: %{}

  """
  @type get_experiment_target_account_configuration_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }

  """
  @type get_experiment_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_experiment_template_action_input() :: %{
        "actionId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "parameters" => map(),
        "startAfter" => list(String.t() | Atom.t()),
        "targets" => map()
      }

  """
  @type create_experiment_template_action_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_target_input_filter() :: %{
        "path" => String.t() | Atom.t(),
        "values" => list(String.t() | Atom.t())
      }

  """
  @type experiment_template_target_input_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_report_error() :: %{
        "code" => String.t() | Atom.t()
      }

  """
  @type experiment_report_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | Atom.t()
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

      list_target_resource_types_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "targetResourceTypes" => list(target_resource_type_summary())
      }

  """
  @type list_target_resource_types_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }

  """
  @type get_target_account_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_target_account_configuration_summary() :: %{
        "accountId" => String.t() | Atom.t(),
        "description" => String.t() | Atom.t(),
        "roleArn" => String.t() | Atom.t()
      }

  """
  @type experiment_target_account_configuration_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_safety_lever_state_input() :: %{
        "reason" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type update_safety_lever_state_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_options() :: %{
        "accountTargeting" => list(any()),
        "actionsMode" => list(any()),
        "emptyTargetResolutionMode" => list(any())
      }

  """
  @type experiment_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_experiments_request() :: %{
        optional("experimentTemplateId") => String.t() | Atom.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_experiments_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_experiment_request() :: %{
        optional("experimentOptions") => start_experiment_experiment_options_input(),
        optional("tags") => map(),
        required("clientToken") => String.t() | Atom.t(),
        required("experimentTemplateId") => String.t() | Atom.t()
      }

  """
  @type start_experiment_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_report_configuration_input() :: %{
        "dataSources" => experiment_template_report_configuration_data_sources_input(),
        "outputs" => experiment_template_report_configuration_outputs_input(),
        "postExperimentDuration" => String.t() | Atom.t(),
        "preExperimentDuration" => String.t() | Atom.t()
      }

  """
  @type update_experiment_template_report_configuration_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      create_experiment_template_experiment_options_input() :: %{
        "accountTargeting" => list(any()),
        "emptyTargetResolutionMode" => list(any())
      }

  """
  @type create_experiment_template_experiment_options_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_target_resource_type_request() :: %{}

  """
  @type get_target_resource_type_request() :: %{}

  @typedoc """

  ## Example:

      experiment_template_experiment_options() :: %{
        "accountTargeting" => list(any()),
        "emptyTargetResolutionMode" => list(any())
      }

  """
  @type experiment_template_experiment_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_experiment_template_stop_condition_input() :: %{
        "source" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type create_experiment_template_stop_condition_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_experiment_template_response() :: %{
        "experimentTemplate" => experiment_template()
      }

  """
  @type create_experiment_template_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_experiment_template_target_input() :: %{
        "filters" => list(experiment_template_target_input_filter()),
        "parameters" => map(),
        "resourceArns" => list(String.t() | Atom.t()),
        "resourceTags" => map(),
        "resourceType" => String.t() | Atom.t(),
        "selectionMode" => String.t() | Atom.t()
      }

  """
  @type create_experiment_template_target_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      report_configuration_s3_output() :: %{
        "bucketName" => String.t() | Atom.t(),
        "prefix" => String.t() | Atom.t()
      }

  """
  @type report_configuration_s3_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      action_parameter() :: %{
        "description" => String.t() | Atom.t(),
        "required" => boolean()
      }

  """
  @type action_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_experiment_experiment_options_input() :: %{
        "actionsMode" => list(any())
      }

  """
  @type start_experiment_experiment_options_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_target_account_configuration_response() :: %{
        "targetAccountConfiguration" => target_account_configuration()
      }

  """
  @type delete_target_account_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_experiment_response() :: %{
        "experiment" => experiment()
      }

  """
  @type stop_experiment_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_target_input() :: %{
        "filters" => list(experiment_template_target_input_filter()),
        "parameters" => map(),
        "resourceArns" => list(String.t() | Atom.t()),
        "resourceTags" => map(),
        "resourceType" => String.t() | Atom.t(),
        "selectionMode" => String.t() | Atom.t()
      }

  """
  @type update_experiment_template_target_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_report_configuration() :: %{
        "dataSources" => experiment_template_report_configuration_data_sources(),
        "outputs" => experiment_template_report_configuration_outputs(),
        "postExperimentDuration" => String.t() | Atom.t(),
        "preExperimentDuration" => String.t() | Atom.t()
      }

  """
  @type experiment_template_report_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_experiment_options_input() :: %{
        "emptyTargetResolutionMode" => list(any())
      }

  """
  @type update_experiment_template_experiment_options_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment() :: %{
        "actions" => map(),
        "arn" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "endTime" => non_neg_integer(),
        "experimentOptions" => experiment_options(),
        "experimentReport" => experiment_report(),
        "experimentReportConfiguration" => experiment_report_configuration(),
        "experimentTemplateId" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "logConfiguration" => experiment_log_configuration(),
        "roleArn" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "state" => experiment_state(),
        "stopConditions" => list(experiment_stop_condition()),
        "tags" => map(),
        "targetAccountConfigurationsCount" => float(),
        "targets" => map()
      }

  """
  @type experiment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_log_configuration() :: %{
        "cloudWatchLogsConfiguration" => experiment_template_cloud_watch_logs_log_configuration(),
        "logSchemaVersion" => integer(),
        "s3Configuration" => experiment_template_s3_log_configuration()
      }

  """
  @type experiment_template_log_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      safety_lever() :: %{
        "arn" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "state" => safety_lever_state()
      }

  """
  @type safety_lever() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_experiment_template_stop_condition_input() :: %{
        "source" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type update_experiment_template_stop_condition_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_cloud_watch_logs_log_configuration() :: %{
        "logGroupArn" => String.t() | Atom.t()
      }

  """
  @type experiment_cloud_watch_logs_log_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      experiment_template_cloud_watch_logs_log_configuration() :: %{
        "logGroupArn" => String.t() | Atom.t()
      }

  """
  @type experiment_template_cloud_watch_logs_log_configuration() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      safety_lever_state() :: %{
        "reason" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type safety_lever_state() :: %{String.t() | Atom.t() => any()}

  @type create_experiment_template_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_target_account_configuration_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_experiment_template_errors() ::
          validation_exception() | resource_not_found_exception()

  @type delete_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_action_errors() :: validation_exception() | resource_not_found_exception()

  @type get_experiment_errors() :: validation_exception() | resource_not_found_exception()

  @type get_experiment_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_experiment_template_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_safety_lever_errors() :: resource_not_found_exception()

  @type get_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_target_resource_type_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_actions_errors() :: validation_exception()

  @type list_experiment_resolved_targets_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_experiment_target_account_configurations_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_experiment_templates_errors() :: validation_exception()

  @type list_experiments_errors() :: validation_exception()

  @type list_target_account_configurations_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_target_resource_types_errors() :: validation_exception()

  @type start_experiment_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_experiment_errors() :: validation_exception() | resource_not_found_exception()

  @type update_experiment_template_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_safety_lever_state_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_target_account_configuration_errors() ::
          validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fis",
      global?: false,
      hostname: nil,
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
  in the *Fault Injection Service User Guide*.
  """
  @spec create_experiment_template(map(), create_experiment_template_request(), list()) ::
          {:ok, create_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_experiment_template_errors()}
  def create_experiment_template(%Client{} = client, input, options \\ []) do
    url_path = "/experimentTemplates"
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
  Creates a target account configuration for the experiment template.

  A target account configuration
  is required when `accountTargeting` of `experimentOptions` is set to
  `multi-account`.
  For more information, see [experiment options](https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html)
  in the *Fault Injection Service User Guide*.
  """
  @spec create_target_account_configuration(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          create_target_account_configuration_request(),
          list()
        ) ::
          {:ok, create_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_target_account_configuration_errors()}
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
  Deletes the specified experiment template.
  """
  @spec delete_experiment_template(
          map(),
          String.t() | Atom.t(),
          delete_experiment_template_request(),
          list()
        ) ::
          {:ok, delete_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_experiment_template_errors()}
  def delete_experiment_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
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
  Deletes the specified target account configuration of the experiment template.
  """
  @spec delete_target_account_configuration(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_target_account_configuration_request(),
          list()
        ) ::
          {:ok, delete_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_target_account_configuration_errors()}
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
  Gets information about the specified FIS action.
  """
  @spec get_action(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_action_errors()}
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
  @spec get_experiment(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_experiment_errors()}
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
  @spec get_experiment_target_account_configuration(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, get_experiment_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_experiment_target_account_configuration_errors()}
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
  @spec get_experiment_template(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_experiment_template_errors()}
  def get_experiment_template(%Client{} = client, id, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets information about the specified safety lever.
  """
  @spec get_safety_lever(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_safety_lever_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_safety_lever_errors()}
  def get_safety_lever(%Client{} = client, id, options \\ []) do
    url_path = "/safetyLevers/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified target account configuration of the
  experiment template.
  """
  @spec get_target_account_configuration(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, get_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_target_account_configuration_errors()}
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
  @spec get_target_resource_type(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_target_resource_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_target_resource_type_errors()}
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
  @spec list_actions(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_actions_errors()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_experiment_resolved_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_experiment_resolved_targets_errors()}
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
  @spec list_experiment_target_account_configurations(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_experiment_target_account_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_experiment_target_account_configurations_errors()}
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
  @spec list_experiment_templates(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_experiment_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_experiment_templates_errors()}
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
  @spec list_experiments(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_experiments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_experiments_errors()}
  def list_experiments(
        %Client{} = client,
        experiment_template_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
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

    query_params =
      if !is_nil(experiment_template_id) do
        [{"experimentTemplateId", experiment_template_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_target_account_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_target_account_configurations_errors()}
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
  @spec list_target_resource_types(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_target_resource_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_target_resource_types_errors()}
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
          | {:error, term()}
          | {:error, start_experiment_errors()}
  def start_experiment(%Client{} = client, input, options \\ []) do
    url_path = "/experiments"
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
  Stops the specified experiment.
  """
  @spec stop_experiment(map(), String.t() | Atom.t(), stop_experiment_request(), list()) ::
          {:ok, stop_experiment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_experiment_errors()}
  def stop_experiment(%Client{} = client, id, input, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"
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
  Applies the specified tags to the specified resource.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the specified experiment template.
  """
  @spec update_experiment_template(
          map(),
          String.t() | Atom.t(),
          update_experiment_template_request(),
          list()
        ) ::
          {:ok, update_experiment_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_experiment_template_errors()}
  def update_experiment_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
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

  Updates the specified safety lever state.
  """
  @spec update_safety_lever_state(
          map(),
          String.t() | Atom.t(),
          update_safety_lever_state_request(),
          list()
        ) ::
          {:ok, update_safety_lever_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_safety_lever_state_errors()}
  def update_safety_lever_state(%Client{} = client, id, input, options \\ []) do
    url_path = "/safetyLevers/#{AWS.Util.encode_uri(id)}/state"
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
  Updates the target account configuration for the specified experiment template.
  """
  @spec update_target_account_configuration(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_target_account_configuration_request(),
          list()
        ) ::
          {:ok, update_target_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_target_account_configuration_errors()}
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
