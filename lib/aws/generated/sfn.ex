# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SFN do
  @moduledoc """
  Step Functions

  Step Functions is a service that lets you coordinate the components of
  distributed applications
  and microservices using visual workflows.

  You can use Step Functions to build applications from individual components,
  each of which performs
  a discrete function, or *task*, allowing you to scale and change
  applications quickly. Step Functions provides a console that helps visualize the
  components of your
  application as a series of steps. Step Functions automatically triggers and
  tracks each step, and
  retries steps when there are errors, so your application executes predictably
  and in the right
  order every time. Step Functions logs the state of each step, so you can quickly
  diagnose and debug any
  issues.

  Step Functions manages operations and underlying infrastructure to ensure your
  application is
  available at any scale. You can run tasks on Amazon Web Services, your own
  servers, or any system that has
  access to Amazon Web Services. You can access and use Step Functions using the
  console, the Amazon Web Services SDKs, or an HTTP API.
  For more information about Step Functions, see the *
  [Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html)
  *.

  If you use the Step Functions API actions using Amazon Web Services SDK
  integrations, make sure the API actions are in camel case and parameter names
  are in Pascal case. For example, you could use Step Functions API action
  `startSyncExecution` and specify its parameter as `StateMachineArn`.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      state_machine_version_list_item() :: %{
        "creationDate" => non_neg_integer(),
        "stateMachineVersionArn" => String.t()
      }
      
  """
  @type state_machine_version_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_state_machine_for_execution_input() :: %{
        required("executionArn") => String.t()
      }
      
  """
  @type describe_state_machine_for_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_executions_output() :: %{
        "executions" => list(execution_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_executions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type resource_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_machine_type_not_supported() :: %{
        "message" => String.t()
      }
      
  """
  @type state_machine_type_not_supported() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_does_not_exist() :: %{
        "message" => String.t()
      }
      
  """
  @type execution_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_state_machine_aliases_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("stateMachineArn") => String.t()
      }
      
  """
  @type list_state_machine_aliases_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_succeeded_event_details() :: %{
        "output" => String.t(),
        "outputDetails" => history_event_execution_data_details()
      }
      
  """
  @type execution_succeeded_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_required_parameter() :: %{
        "message" => String.t()
      }
      
  """
  @type missing_required_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_machine_alias_list_item() :: %{
        "creationDate" => non_neg_integer(),
        "stateMachineAliasArn" => String.t()
      }
      
  """
  @type state_machine_alias_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_events_execution_data_details() :: %{
        "included" => boolean()
      }
      
  """
  @type cloud_watch_events_execution_data_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_execution_input() :: %{
        required("executionArn") => String.t()
      }
      
  """
  @type describe_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_execution_output() :: %{
        "cause" => String.t(),
        "error" => String.t(),
        "executionArn" => String.t(),
        "input" => String.t(),
        "inputDetails" => cloud_watch_events_execution_data_details(),
        "mapRunArn" => String.t(),
        "name" => String.t(),
        "output" => String.t(),
        "outputDetails" => cloud_watch_events_execution_data_details(),
        "redriveCount" => integer(),
        "redriveDate" => non_neg_integer(),
        "redriveStatus" => list(any()),
        "redriveStatusReason" => String.t(),
        "startDate" => non_neg_integer(),
        "stateMachineAliasArn" => String.t(),
        "stateMachineArn" => String.t(),
        "stateMachineVersionArn" => String.t(),
        "status" => list(any()),
        "stopDate" => non_neg_integer(),
        "traceHeader" => String.t()
      }
      
  """
  @type describe_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_state_machine_alias_output() :: %{
        "updateDate" => non_neg_integer()
      }
      
  """
  @type update_state_machine_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_state_machine_output() :: %{}
      
  """
  @type delete_state_machine_output() :: %{}

  @typedoc """

  ## Example:
      
      map_run_item_counts() :: %{
        "aborted" => float(),
        "failed" => float(),
        "failuresNotRedrivable" => float(),
        "pending" => float(),
        "pendingRedrive" => float(),
        "resultsWritten" => float(),
        "running" => float(),
        "succeeded" => float(),
        "timedOut" => float(),
        "total" => float()
      }
      
  """
  @type map_run_item_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_state_machine_version_output() :: %{}
      
  """
  @type delete_state_machine_version_output() :: %{}

  @typedoc """

  ## Example:
      
      list_state_machine_aliases_output() :: %{
        "nextToken" => String.t(),
        "stateMachineAliases" => list(state_machine_alias_list_item()())
      }
      
  """
  @type list_state_machine_aliases_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t(),
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type task_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_state_machine_input() :: %{
        required("stateMachineArn") => String.t()
      }
      
  """
  @type describe_state_machine_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_state_machine_alias_input() :: %{
        required("stateMachineAliasArn") => String.t()
      }
      
  """
  @type describe_state_machine_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_execution_output() :: %{
        "executionArn" => String.t(),
        "startDate" => non_neg_integer()
      }
      
  """
  @type start_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      map_run_started_event_details() :: %{
        "mapRunArn" => String.t()
      }
      
  """
  @type map_run_started_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tracing_configuration() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tracing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_state_machines_output() :: %{
        "nextToken" => String.t(),
        "stateMachines" => list(state_machine_list_item()())
      }
      
  """
  @type list_state_machines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_state_machine_alias_input() :: %{
        optional("description") => String.t(),
        required("name") => String.t(),
        required("routingConfiguration") => list(routing_configuration_list_item()())
      }
      
  """
  @type create_state_machine_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_output() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      map_run_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type map_run_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_task_failure_output() :: %{}
      
  """
  @type send_task_failure_output() :: %{}

  @typedoc """

  ## Example:
      
      activity_schedule_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type activity_schedule_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_entered_event_details() :: %{
        "input" => String.t(),
        "inputDetails" => history_event_execution_data_details(),
        "name" => String.t()
      }
      
  """
  @type state_entered_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_token() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_activity_input() :: %{
        required("activityArn") => String.t()
      }
      
  """
  @type delete_activity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_state_machine_alias_input() :: %{
        required("stateMachineAliasArn") => String.t()
      }
      
  """
  @type delete_state_machine_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_machine_list_item() :: %{
        "creationDate" => non_neg_integer(),
        "name" => String.t(),
        "stateMachineArn" => String.t(),
        "type" => list(any())
      }
      
  """
  @type state_machine_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_state_machine_output() :: %{
        "creationDate" => non_neg_integer(),
        "stateMachineArn" => String.t(),
        "stateMachineVersionArn" => String.t()
      }
      
  """
  @type create_state_machine_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_aborted_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type execution_aborted_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_redriven_event_details() :: %{
        "redriveCount" => integer()
      }
      
  """
  @type execution_redriven_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_start_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type lambda_function_start_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type lambda_function_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_state_machine_alias_output() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "name" => String.t(),
        "routingConfiguration" => list(routing_configuration_list_item()()),
        "stateMachineAliasArn" => String.t(),
        "updateDate" => non_neg_integer()
      }
      
  """
  @type describe_state_machine_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redrive_execution_output() :: %{
        "redriveDate" => non_neg_integer()
      }
      
  """
  @type redrive_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_sync_execution_output() :: %{
        "billingDetails" => billing_details(),
        "cause" => String.t(),
        "error" => String.t(),
        "executionArn" => String.t(),
        "input" => String.t(),
        "inputDetails" => cloud_watch_events_execution_data_details(),
        "name" => String.t(),
        "output" => String.t(),
        "outputDetails" => cloud_watch_events_execution_data_details(),
        "startDate" => non_neg_integer(),
        "stateMachineArn" => String.t(),
        "status" => list(any()),
        "stopDate" => non_neg_integer(),
        "traceHeader" => String.t()
      }
      
  """
  @type start_sync_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_task_failure_input() :: %{
        optional("cause") => String.t(),
        optional("error") => String.t(),
        required("taskToken") => String.t()
      }
      
  """
  @type send_task_failure_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_configuration() :: %{
        "destinations" => list(log_destination()()),
        "includeExecutionData" => boolean(),
        "level" => list(any())
      }
      
  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_activity_task_output() :: %{
        "input" => String.t(),
        "taskToken" => String.t()
      }
      
  """
  @type get_activity_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_activity_output() :: %{
        "activityArn" => String.t(),
        "creationDate" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type describe_activity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_timed_out_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t(),
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type task_timed_out_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      history_event_execution_data_details() :: %{
        "truncated" => boolean()
      }
      
  """
  @type history_event_execution_data_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_map_run_output() :: %{}
      
  """
  @type update_map_run_output() :: %{}

  @typedoc """

  ## Example:
      
      task_started_event_details() :: %{
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type task_started_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_activity_output() :: %{}
      
  """
  @type delete_activity_output() :: %{}

  @typedoc """

  ## Example:
      
      redrive_execution_input() :: %{
        optional("clientToken") => String.t(),
        required("executionArn") => String.t()
      }
      
  """
  @type redrive_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_execution_history_input() :: %{
        optional("includeExecutionData") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("reverseOrder") => boolean(),
        required("executionArn") => String.t()
      }
      
  """
  @type get_execution_history_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_state_machine_for_execution_output() :: %{
        "definition" => String.t(),
        "label" => String.t(),
        "loggingConfiguration" => logging_configuration(),
        "mapRunArn" => String.t(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "roleArn" => String.t(),
        "stateMachineArn" => String.t(),
        "tracingConfiguration" => tracing_configuration(),
        "updateDate" => non_neg_integer()
      }
      
  """
  @type describe_state_machine_for_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_execution_history_output() :: %{
        "events" => list(history_event()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_execution_history_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_state_machines_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_state_machines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inspection_data_request() :: %{
        "body" => String.t(),
        "headers" => String.t(),
        "method" => String.t(),
        "protocol" => String.t(),
        "url" => String.t()
      }
      
  """
  @type inspection_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_machine_already_exists() :: %{
        "message" => String.t()
      }
      
  """
  @type state_machine_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_not_redrivable() :: %{
        "message" => String.t()
      }
      
  """
  @type execution_not_redrivable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_task_success_output() :: %{}
      
  """
  @type send_task_success_output() :: %{}

  @typedoc """

  ## Example:
      
      activity_succeeded_event_details() :: %{
        "output" => String.t(),
        "outputDetails" => history_event_execution_data_details()
      }
      
  """
  @type activity_succeeded_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_timed_out() :: %{
        "message" => String.t()
      }
      
  """
  @type task_timed_out() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_task_heartbeat_input() :: %{
        required("taskToken") => String.t()
      }
      
  """
  @type send_task_heartbeat_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_succeeded_event_details() :: %{
        "output" => String.t(),
        "outputDetails" => history_event_execution_data_details(),
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type task_succeeded_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inspection_data() :: %{
        "afterInputPath" => String.t(),
        "afterParameters" => String.t(),
        "afterResultPath" => String.t(),
        "afterResultSelector" => String.t(),
        "input" => String.t(),
        "request" => inspection_data_request(),
        "response" => inspection_data_response(),
        "result" => String.t()
      }
      
  """
  @type inspection_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_state_machine_version_input() :: %{
        optional("description") => String.t(),
        optional("revisionId") => String.t(),
        required("stateMachineArn") => String.t()
      }
      
  """
  @type publish_state_machine_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_schedule_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type lambda_function_schedule_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_destination() :: %{
        "cloudWatchLogsLogGroup" => cloud_watch_logs_log_group()
      }
      
  """
  @type log_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type execution_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_activity_task_input() :: %{
        optional("workerName") => String.t(),
        required("activityArn") => String.t()
      }
      
  """
  @type get_activity_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_exited_event_details() :: %{
        "name" => String.t(),
        "output" => String.t(),
        "outputDetails" => history_event_execution_data_details()
      }
      
  """
  @type state_exited_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_state_machine_input() :: %{
        optional("loggingConfiguration") => logging_configuration(),
        optional("publish") => boolean(),
        optional("tags") => list(tag()()),
        optional("tracingConfiguration") => tracing_configuration(),
        optional("type") => list(any()),
        optional("versionDescription") => String.t(),
        required("definition") => String.t(),
        required("name") => String.t(),
        required("roleArn") => String.t()
      }
      
  """
  @type create_state_machine_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_log_group() :: %{
        "logGroupArn" => String.t()
      }
      
  """
  @type cloud_watch_logs_log_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_state_machine_alias_output() :: %{}
      
  """
  @type delete_state_machine_alias_output() :: %{}

  @typedoc """

  ## Example:
      
      activity_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type activity_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_activity_input() :: %{
        optional("tags") => list(tag()()),
        required("name") => String.t()
      }
      
  """
  @type create_activity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_succeeded_event_details() :: %{
        "output" => String.t(),
        "outputDetails" => history_event_execution_data_details()
      }
      
  """
  @type lambda_function_succeeded_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type execution_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_timed_out_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type lambda_function_timed_out_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_scheduled_event_details() :: %{
        "input" => String.t(),
        "inputDetails" => history_event_execution_data_details(),
        "resource" => String.t(),
        "taskCredentials" => task_credentials(),
        "timeoutInSeconds" => float()
      }
      
  """
  @type lambda_function_scheduled_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_submit_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t(),
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type task_submit_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_state_machine_output() :: %{
        "revisionId" => String.t(),
        "stateMachineVersionArn" => String.t(),
        "updateDate" => non_neg_integer()
      }
      
  """
  @type update_state_machine_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_activity_input() :: %{
        required("activityArn") => String.t()
      }
      
  """
  @type describe_activity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tracing_configuration() :: %{
        "enabled" => boolean()
      }
      
  """
  @type tracing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_execution_output() :: %{
        "stopDate" => non_neg_integer()
      }
      
  """
  @type stop_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_worker_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type activity_worker_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_timed_out_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type execution_timed_out_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      billing_details() :: %{
        "billedDurationInMilliseconds" => float(),
        "billedMemoryUsedInMB" => float()
      }
      
  """
  @type billing_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_started_event_details() :: %{
        "input" => String.t(),
        "inputDetails" => history_event_execution_data_details(),
        "roleArn" => String.t(),
        "stateMachineAliasArn" => String.t(),
        "stateMachineVersionArn" => String.t()
      }
      
  """
  @type execution_started_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      history_event() :: %{
        "executionRedrivenEventDetails" => execution_redriven_event_details(),
        "mapIterationFailedEventDetails" => map_iteration_event_details(),
        "mapRunRedrivenEventDetails" => map_run_redriven_event_details(),
        "taskSucceededEventDetails" => task_succeeded_event_details(),
        "id" => float(),
        "lambdaFunctionScheduleFailedEventDetails" => lambda_function_schedule_failed_event_details(),
        "taskFailedEventDetails" => task_failed_event_details(),
        "stateExitedEventDetails" => state_exited_event_details(),
        "timestamp" => non_neg_integer(),
        "executionFailedEventDetails" => execution_failed_event_details(),
        "lambdaFunctionTimedOutEventDetails" => lambda_function_timed_out_event_details(),
        "taskScheduledEventDetails" => task_scheduled_event_details(),
        "mapIterationAbortedEventDetails" => map_iteration_event_details(),
        "mapRunFailedEventDetails" => map_run_failed_event_details(),
        "taskStartFailedEventDetails" => task_start_failed_event_details(),
        "lambdaFunctionSucceededEventDetails" => lambda_function_succeeded_event_details(),
        "taskStartedEventDetails" => task_started_event_details(),
        "activitySucceededEventDetails" => activity_succeeded_event_details(),
        "mapRunStartedEventDetails" => map_run_started_event_details(),
        "taskTimedOutEventDetails" => task_timed_out_event_details(),
        "type" => list(any()),
        "activityTimedOutEventDetails" => activity_timed_out_event_details(),
        "activityScheduleFailedEventDetails" => activity_schedule_failed_event_details(),
        "executionAbortedEventDetails" => execution_aborted_event_details(),
        "activityFailedEventDetails" => activity_failed_event_details(),
        "stateEnteredEventDetails" => state_entered_event_details(),
        "mapIterationSucceededEventDetails" => map_iteration_event_details(),
        "activityStartedEventDetails" => activity_started_event_details(),
        "activityScheduledEventDetails" => activity_scheduled_event_details(),
        "executionTimedOutEventDetails" => execution_timed_out_event_details(),
        "taskSubmittedEventDetails" => task_submitted_event_details(),
        "mapIterationStartedEventDetails" => map_iteration_event_details(),
        "lambdaFunctionScheduledEventDetails" => lambda_function_scheduled_event_details(),
        "executionSucceededEventDetails" => execution_succeeded_event_details(),
        "previousEventId" => float(),
        "lambdaFunctionStartFailedEventDetails" => lambda_function_start_failed_event_details(),
        "executionStartedEventDetails" => execution_started_event_details(),
        "lambdaFunctionFailedEventDetails" => lambda_function_failed_event_details(),
        "mapStateStartedEventDetails" => map_state_started_event_details(),
        "taskSubmitFailedEventDetails" => task_submit_failed_event_details()
      }
      
  """
  @type history_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_machine_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type state_machine_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      map_iteration_event_details() :: %{
        "index" => integer(),
        "name" => String.t()
      }
      
  """
  @type map_iteration_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_state_machine_alias_input() :: %{
        optional("description") => String.t(),
        optional("routingConfiguration") => list(routing_configuration_list_item()()),
        required("stateMachineAliasArn") => String.t()
      }
      
  """
  @type update_state_machine_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_start_failed_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t(),
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type task_start_failed_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      map_run_execution_counts() :: %{
        "aborted" => float(),
        "failed" => float(),
        "failuresNotRedrivable" => float(),
        "pending" => float(),
        "pendingRedrive" => float(),
        "resultsWritten" => float(),
        "running" => float(),
        "succeeded" => float(),
        "timedOut" => float(),
        "total" => float()
      }
      
  """
  @type map_run_execution_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_state_machine_definition_output() :: %{
        "diagnostics" => list(validate_state_machine_definition_diagnostic()()),
        "result" => list(any())
      }
      
  """
  @type validate_state_machine_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_state_machine_input() :: %{
        optional("definition") => String.t(),
        optional("loggingConfiguration") => logging_configuration(),
        optional("publish") => boolean(),
        optional("roleArn") => String.t(),
        optional("tracingConfiguration") => tracing_configuration(),
        optional("versionDescription") => String.t(),
        required("stateMachineArn") => String.t()
      }
      
  """
  @type update_state_machine_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_machine_does_not_exist() :: %{
        "message" => String.t()
      }
      
  """
  @type state_machine_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      map_state_started_event_details() :: %{
        "length" => integer()
      }
      
  """
  @type map_state_started_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      map_run_list_item() :: %{
        "executionArn" => String.t(),
        "mapRunArn" => String.t(),
        "startDate" => non_neg_integer(),
        "stateMachineArn" => String.t(),
        "stopDate" => non_neg_integer()
      }
      
  """
  @type map_run_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_list_item() :: %{
        "activityArn" => String.t(),
        "creationDate" => non_neg_integer(),
        "name" => String.t()
      }
      
  """
  @type activity_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_definition() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_state_machine_input() :: %{
        required("stateMachineArn") => String.t()
      }
      
  """
  @type delete_state_machine_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_map_runs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("executionArn") => String.t()
      }
      
  """
  @type list_map_runs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_does_not_exist() :: %{
        "message" => String.t()
      }
      
  """
  @type task_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_already_exists() :: %{
        "message" => String.t()
      }
      
  """
  @type execution_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_activity_output() :: %{
        "activityArn" => String.t(),
        "creationDate" => non_neg_integer()
      }
      
  """
  @type create_activity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_limit_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type activity_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_name() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_submitted_event_details() :: %{
        "output" => String.t(),
        "outputDetails" => history_event_execution_data_details(),
        "resource" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type task_submitted_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      map_run_redriven_event_details() :: %{
        "mapRunArn" => String.t(),
        "redriveCount" => integer()
      }
      
  """
  @type map_run_redriven_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_state_output() :: %{
        "cause" => String.t(),
        "error" => String.t(),
        "inspectionData" => inspection_data(),
        "nextState" => String.t(),
        "output" => String.t(),
        "status" => list(any())
      }
      
  """
  @type test_state_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_map_run_input() :: %{
        optional("maxConcurrency") => integer(),
        optional("toleratedFailureCount") => float(),
        optional("toleratedFailurePercentage") => float(),
        required("mapRunArn") => String.t()
      }
      
  """
  @type update_map_run_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_sync_execution_input() :: %{
        optional("input") => String.t(),
        optional("name") => String.t(),
        optional("traceHeader") => String.t(),
        required("stateMachineArn") => String.t()
      }
      
  """
  @type start_sync_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_state_machine_definition_input() :: %{
        optional("type") => list(any()),
        required("definition") => String.t()
      }
      
  """
  @type validate_state_machine_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_task_success_input() :: %{
        required("output") => String.t(),
        required("taskToken") => String.t()
      }
      
  """
  @type send_task_success_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_configuration_list_item() :: %{
        "stateMachineVersionArn" => String.t(),
        "weight" => integer()
      }
      
  """
  @type routing_configuration_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_list_item() :: %{
        "executionArn" => String.t(),
        "itemCount" => integer(),
        "mapRunArn" => String.t(),
        "name" => String.t(),
        "redriveCount" => integer(),
        "redriveDate" => non_neg_integer(),
        "startDate" => non_neg_integer(),
        "stateMachineAliasArn" => String.t(),
        "stateMachineArn" => String.t(),
        "stateMachineVersionArn" => String.t(),
        "status" => list(any()),
        "stopDate" => non_neg_integer()
      }
      
  """
  @type execution_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_scheduled_event_details() :: %{
        "heartbeatInSeconds" => float(),
        "input" => String.t(),
        "inputDetails" => history_event_execution_data_details(),
        "resource" => String.t(),
        "timeoutInSeconds" => float()
      }
      
  """
  @type activity_scheduled_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_timed_out_event_details() :: %{
        "cause" => String.t(),
        "error" => String.t()
      }
      
  """
  @type activity_timed_out_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_credentials() :: %{
        "roleArn" => String.t()
      }
      
  """
  @type task_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_task_heartbeat_output() :: %{}
      
  """
  @type send_task_heartbeat_output() :: %{}

  @typedoc """

  ## Example:
      
      create_state_machine_alias_output() :: %{
        "creationDate" => non_neg_integer(),
        "stateMachineAliasArn" => String.t()
      }
      
  """
  @type create_state_machine_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_map_run_output() :: %{
        "executionArn" => String.t(),
        "executionCounts" => map_run_execution_counts(),
        "itemCounts" => map_run_item_counts(),
        "mapRunArn" => String.t(),
        "maxConcurrency" => integer(),
        "redriveCount" => integer(),
        "redriveDate" => non_neg_integer(),
        "startDate" => non_neg_integer(),
        "status" => list(any()),
        "stopDate" => non_neg_integer(),
        "toleratedFailureCount" => float(),
        "toleratedFailurePercentage" => float()
      }
      
  """
  @type describe_map_run_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_state_input() :: %{
        optional("input") => String.t(),
        optional("inspectionLevel") => list(any()),
        optional("revealSecrets") => boolean(),
        required("definition") => String.t(),
        required("roleArn") => String.t()
      }
      
  """
  @type test_state_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_logging_configuration() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_state_machine_versions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("stateMachineArn") => String.t()
      }
      
  """
  @type list_state_machine_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      state_machine_deleting() :: %{
        "message" => String.t()
      }
      
  """
  @type state_machine_deleting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_activities_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_activities_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_state_machine_versions_output() :: %{
        "nextToken" => String.t(),
        "stateMachineVersions" => list(state_machine_version_list_item()())
      }
      
  """
  @type list_state_machine_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_does_not_exist() :: %{
        "message" => String.t()
      }
      
  """
  @type activity_does_not_exist() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_state_machine_version_input() :: %{
        required("stateMachineVersionArn") => String.t()
      }
      
  """
  @type delete_state_machine_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_state_machine_definition_diagnostic() :: %{
        "code" => String.t(),
        "location" => String.t(),
        "message" => String.t(),
        "severity" => list(any())
      }
      
  """
  @type validate_state_machine_definition_diagnostic() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_activities_output() :: %{
        "activities" => list(activity_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_activities_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type too_many_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activity_started_event_details() :: %{
        "workerName" => String.t()
      }
      
  """
  @type activity_started_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_map_runs_output() :: %{
        "mapRuns" => list(map_run_list_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_map_runs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_executions_input() :: %{
        optional("mapRunArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("redriveFilter") => list(any()),
        optional("stateMachineArn") => String.t(),
        optional("statusFilter") => list(any())
      }
      
  """
  @type list_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inspection_data_response() :: %{
        "body" => String.t(),
        "headers" => String.t(),
        "protocol" => String.t(),
        "statusCode" => String.t(),
        "statusMessage" => String.t()
      }
      
  """
  @type inspection_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_execution_input() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      task_scheduled_event_details() :: %{
        "heartbeatInSeconds" => float(),
        "parameters" => String.t(),
        "region" => String.t(),
        "resource" => String.t(),
        "resourceType" => String.t(),
        "taskCredentials" => task_credentials(),
        "timeoutInSeconds" => float()
      }
      
  """
  @type task_scheduled_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_state_machine_version_output() :: %{
        "creationDate" => non_neg_integer(),
        "stateMachineVersionArn" => String.t()
      }
      
  """
  @type publish_state_machine_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_execution_input() :: %{
        optional("input") => String.t(),
        optional("name") => String.t(),
        optional("traceHeader") => String.t(),
        required("stateMachineArn") => String.t()
      }
      
  """
  @type start_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_map_run_input() :: %{
        required("mapRunArn") => String.t()
      }
      
  """
  @type describe_map_run_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_arn() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_execution_input() :: %{
        optional("cause") => String.t(),
        optional("error") => String.t(),
        required("executionArn") => String.t()
      }
      
  """
  @type stop_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_state_machine_output() :: %{
        "creationDate" => non_neg_integer(),
        "definition" => String.t(),
        "description" => String.t(),
        "label" => String.t(),
        "loggingConfiguration" => logging_configuration(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "roleArn" => String.t(),
        "stateMachineArn" => String.t(),
        "status" => list(any()),
        "tracingConfiguration" => tracing_configuration(),
        "type" => list(any())
      }
      
  """
  @type describe_state_machine_output() :: %{String.t() => any()}

  @type create_activity_errors() :: too_many_tags() | invalid_name() | activity_limit_exceeded()

  @type create_state_machine_errors() ::
          invalid_arn()
          | too_many_tags()
          | state_machine_deleting()
          | invalid_logging_configuration()
          | validation_exception()
          | invalid_name()
          | invalid_definition()
          | state_machine_limit_exceeded()
          | conflict_exception()
          | state_machine_already_exists()
          | invalid_tracing_configuration()
          | state_machine_type_not_supported()

  @type create_state_machine_alias_errors() ::
          invalid_arn()
          | state_machine_deleting()
          | validation_exception()
          | invalid_name()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found()

  @type delete_activity_errors() :: invalid_arn()

  @type delete_state_machine_errors() :: invalid_arn() | validation_exception()

  @type delete_state_machine_alias_errors() ::
          invalid_arn() | validation_exception() | conflict_exception() | resource_not_found()

  @type delete_state_machine_version_errors() ::
          invalid_arn() | validation_exception() | conflict_exception()

  @type describe_activity_errors() :: invalid_arn() | activity_does_not_exist()

  @type describe_execution_errors() :: invalid_arn() | execution_does_not_exist()

  @type describe_map_run_errors() :: invalid_arn() | resource_not_found()

  @type describe_state_machine_errors() :: invalid_arn() | state_machine_does_not_exist()

  @type describe_state_machine_alias_errors() ::
          invalid_arn() | validation_exception() | resource_not_found()

  @type describe_state_machine_for_execution_errors() ::
          invalid_arn() | execution_does_not_exist()

  @type get_activity_task_errors() ::
          invalid_arn() | activity_does_not_exist() | activity_worker_limit_exceeded()

  @type get_execution_history_errors() ::
          invalid_arn() | invalid_token() | execution_does_not_exist()

  @type list_activities_errors() :: invalid_token()

  @type list_executions_errors() ::
          invalid_arn()
          | validation_exception()
          | state_machine_does_not_exist()
          | invalid_token()
          | state_machine_type_not_supported()
          | resource_not_found()

  @type list_map_runs_errors() :: invalid_arn() | invalid_token() | execution_does_not_exist()

  @type list_state_machine_aliases_errors() ::
          invalid_arn()
          | state_machine_deleting()
          | state_machine_does_not_exist()
          | invalid_token()
          | resource_not_found()

  @type list_state_machine_versions_errors() ::
          invalid_arn() | validation_exception() | invalid_token()

  @type list_state_machines_errors() :: invalid_token()

  @type list_tags_for_resource_errors() :: invalid_arn() | resource_not_found()

  @type publish_state_machine_version_errors() ::
          invalid_arn()
          | state_machine_deleting()
          | validation_exception()
          | state_machine_does_not_exist()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type redrive_execution_errors() ::
          invalid_arn()
          | validation_exception()
          | execution_limit_exceeded()
          | execution_not_redrivable()
          | execution_does_not_exist()

  @type send_task_failure_errors() :: task_does_not_exist() | task_timed_out() | invalid_token()

  @type send_task_heartbeat_errors() :: task_does_not_exist() | task_timed_out() | invalid_token()

  @type send_task_success_errors() ::
          task_does_not_exist() | task_timed_out() | invalid_token() | invalid_output()

  @type start_execution_errors() ::
          invalid_arn()
          | invalid_execution_input()
          | state_machine_deleting()
          | validation_exception()
          | invalid_name()
          | execution_already_exists()
          | state_machine_does_not_exist()
          | execution_limit_exceeded()

  @type start_sync_execution_errors() ::
          invalid_arn()
          | invalid_execution_input()
          | state_machine_deleting()
          | invalid_name()
          | state_machine_does_not_exist()
          | state_machine_type_not_supported()

  @type stop_execution_errors() ::
          invalid_arn() | validation_exception() | execution_does_not_exist()

  @type tag_resource_errors() :: invalid_arn() | too_many_tags() | resource_not_found()

  @type test_state_errors() ::
          invalid_arn()
          | invalid_execution_input()
          | validation_exception()
          | invalid_definition()

  @type untag_resource_errors() :: invalid_arn() | resource_not_found()

  @type update_map_run_errors() :: invalid_arn() | validation_exception() | resource_not_found()

  @type update_state_machine_errors() ::
          invalid_arn()
          | state_machine_deleting()
          | invalid_logging_configuration()
          | validation_exception()
          | invalid_definition()
          | state_machine_does_not_exist()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | invalid_tracing_configuration()
          | missing_required_parameter()

  @type update_state_machine_alias_errors() ::
          invalid_arn()
          | state_machine_deleting()
          | validation_exception()
          | conflict_exception()
          | resource_not_found()

  @type validate_state_machine_definition_errors() :: validation_exception()

  def metadata do
    %{
      api_version: "2016-11-23",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "states",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "SFN",
      signature_version: "v4",
      signing_name: "states",
      target_prefix: "AWSStepFunctions"
    }
  end

  @doc """
  Creates an activity.

  An activity is a task that you write in any programming language and
  host on any machine that has access to Step Functions. Activities must poll Step
  Functions using the
  `GetActivityTask` API action and respond using `SendTask*` API
  actions. This function lets Step Functions know the existence of your activity
  and returns an
  identifier for use in a state machine and when polling from the activity.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  `CreateActivity` is an idempotent API. Subsequent requests won’t create a
  duplicate resource if it was already created. `CreateActivity`'s idempotency
  check is based on the activity `name`. If a following request has different
  `tags` values, Step Functions will ignore these differences and treat it as an
  idempotent request of the previous. In this case, `tags` will not be updated,
  even if they are different.
  """
  @spec create_activity(map(), create_activity_input(), list()) ::
          {:ok, create_activity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_activity_errors()}
  def create_activity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateActivity", input, options)
  end

  @doc """
  Creates a state machine.

  A state machine consists of a collection of states that can do
  work (`Task` states), determine to which states to transition next
  (`Choice` states), stop an execution with an error (`Fail` states),
  and so on. State machines are specified using a JSON-based, structured language.
  For more
  information, see [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
  in the Step Functions User Guide.

  If you set the `publish` parameter of this API action to `true`, it
  publishes version `1` as the first revision of the state machine.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  `CreateStateMachine` is an idempotent API. Subsequent requests won’t create a
  duplicate resource if it was already created. `CreateStateMachine`'s idempotency
  check is based on the state machine `name`, `definition`,
  `type`, `LoggingConfiguration`, and
  `TracingConfiguration`. The check is also based on the `publish` and
  `versionDescription` parameters. If a following request has a different
  `roleArn` or `tags`, Step Functions will ignore these differences and treat
  it as an idempotent request of the previous. In this case, `roleArn` and
  `tags` will not be updated, even if they are different.
  """
  @spec create_state_machine(map(), create_state_machine_input(), list()) ::
          {:ok, create_state_machine_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_state_machine_errors()}
  def create_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStateMachine", input, options)
  end

  @doc """
  Creates an
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html) for a state machine that points to one or two
  [versions](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  of the same state machine.

  You can set your application to call `StartExecution` with an alias and update
  the version the alias uses without changing the client's code.

  You can also map an alias to split `StartExecution` requests between two
  versions of a state machine. To do this, add a second `RoutingConfig` object in
  the
  `routingConfiguration` parameter. You must also specify the percentage of
  execution run requests each version should receive in both `RoutingConfig`
  objects.
  Step Functions randomly chooses which version runs a given execution based on
  the
  percentage you specify.

  To create an alias that points to a single version, specify a single
  `RoutingConfig` object with a `weight` set to 100.

  You can create up to 100 aliases for each state machine. You must delete unused
  aliases using the `DeleteStateMachineAlias` API action.

  `CreateStateMachineAlias` is an idempotent API. Step Functions bases the
  idempotency check on the `stateMachineArn`, `description`,
  `name`, and `routingConfiguration` parameters. Requests that contain
  the same values for these parameters return a successful idempotent response
  without creating
  a duplicate resource.

  ## Related operations:

    *

  `DescribeStateMachineAlias`

    *

  `ListStateMachineAliases`

    *

  `UpdateStateMachineAlias`

    *

  `DeleteStateMachineAlias`
  """
  @spec create_state_machine_alias(map(), create_state_machine_alias_input(), list()) ::
          {:ok, create_state_machine_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_state_machine_alias_errors()}
  def create_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStateMachineAlias", input, options)
  end

  @doc """
  Deletes an activity.
  """
  @spec delete_activity(map(), delete_activity_input(), list()) ::
          {:ok, delete_activity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_activity_errors()}
  def delete_activity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteActivity", input, options)
  end

  @doc """
  Deletes a state machine.

  This is an asynchronous operation. It sets the state machine's
  status to `DELETING` and begins the deletion process. A state machine is deleted
  only when all its executions are completed. On the next state transition, the
  state machine's executions are terminated.

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    *
  The following qualified state machine ARN refers to a *Distributed Map state*
  with a label `mapStateLabel` in a state machine named `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    *
  The following unqualified state machine ARN refers to a state machine named
  `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine`

  This API action also deletes all
  [versions](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html) and
  [aliases](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
  associated with a state machine.

  For `EXPRESS` state machines, the deletion happens eventually (usually in
  less than a minute). Running executions may emit logs after `DeleteStateMachine`
  API is called.
  """
  @spec delete_state_machine(map(), delete_state_machine_input(), list()) ::
          {:ok, delete_state_machine_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_state_machine_errors()}
  def delete_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStateMachine", input, options)
  end

  @doc """
  Deletes a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

  After you delete a state machine alias, you can't use it to start executions.
  When you
  delete a state machine alias, Step Functions doesn't delete the state machine
  versions
  that alias references.

  ## Related operations:

    *

  `CreateStateMachineAlias`

    *

  `DescribeStateMachineAlias`

    *

  `ListStateMachineAliases`

    *

  `UpdateStateMachineAlias`
  """
  @spec delete_state_machine_alias(map(), delete_state_machine_alias_input(), list()) ::
          {:ok, delete_state_machine_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_state_machine_alias_errors()}
  def delete_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStateMachineAlias", input, options)
  end

  @doc """
  Deletes a state machine
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html).  After
  you delete a version, you can't call `StartExecution` using that version's ARN
  or use
  the
  version with a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

  Deleting a state machine version won't terminate its in-progress executions.

  You can't delete a state machine version currently referenced by one or more
  aliases. Before you delete a version, you must either delete the aliases or
  update them to point to another state machine version.

  ## Related operations:

    *

  `PublishStateMachineVersion`

    *

  `ListStateMachineVersions`
  """
  @spec delete_state_machine_version(map(), delete_state_machine_version_input(), list()) ::
          {:ok, delete_state_machine_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_state_machine_version_errors()}
  def delete_state_machine_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStateMachineVersion", input, options)
  end

  @doc """
  Describes an activity.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  @spec describe_activity(map(), describe_activity_input(), list()) ::
          {:ok, describe_activity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_activity_errors()}
  def describe_activity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeActivity", input, options)
  end

  @doc """
  Provides information about a state machine execution, such as the state machine
  associated with the execution, the execution input and output, and relevant
  execution metadata.

  If you've
  [redriven](https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html)
  an execution, you can use this API action to return information about the
  redrives of that execution. In addition, you can use this API action to return
  the Map Run Amazon Resource Name (ARN) if the execution was dispatched by a Map
  Run.

  If you specify a version or alias ARN when you call the `StartExecution`
  API action, `DescribeExecution` returns that ARN.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  Executions of an `EXPRESS` state machine aren't supported by `DescribeExecution`
  unless a Map Run dispatched them.
  """
  @spec describe_execution(map(), describe_execution_input(), list()) ::
          {:ok, describe_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_execution_errors()}
  def describe_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExecution", input, options)
  end

  @doc """
  Provides information about a Map Run's configuration, progress, and results.

  If you've
  [redriven](https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html) a Map Run, this API action also returns information about the redrives of that
  Map Run. For more information, see [Examining Map
  Run](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html)
  in the *Step Functions Developer Guide*.
  """
  @spec describe_map_run(map(), describe_map_run_input(), list()) ::
          {:ok, describe_map_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_map_run_errors()}
  def describe_map_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMapRun", input, options)
  end

  @doc """
  Provides information about a state machine's definition, its IAM role Amazon
  Resource Name (ARN), and configuration.

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    *
  The following qualified state machine ARN refers to a *Distributed Map state*
  with a label `mapStateLabel` in a state machine named `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    *
  The following qualified state machine ARN refers to an alias named `PROD`.

  `arn::states:::stateMachine:`

  If you provide a qualified state machine ARN that refers to a version ARN or an
  alias ARN, the request starts execution for that version or alias.

    *
  The following unqualified state machine ARN refers to a state machine named
  `myStateMachine`.

  `arn::states:::stateMachine:`

  This API action returns the details for a state machine version if the
  `stateMachineArn` you specify is a state machine version ARN.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  @spec describe_state_machine(map(), describe_state_machine_input(), list()) ::
          {:ok, describe_state_machine_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_state_machine_errors()}
  def describe_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStateMachine", input, options)
  end

  @doc """
  Returns details about a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

  ## Related operations:

    *

  `CreateStateMachineAlias`

    *

  `ListStateMachineAliases`

    *

  `UpdateStateMachineAlias`

    *

  `DeleteStateMachineAlias`
  """
  @spec describe_state_machine_alias(map(), describe_state_machine_alias_input(), list()) ::
          {:ok, describe_state_machine_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_state_machine_alias_errors()}
  def describe_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStateMachineAlias", input, options)
  end

  @doc """
  Provides information about a state machine's definition, its execution role ARN,
  and
  configuration.

  If a Map Run dispatched the execution, this action returns the Map Run
  Amazon Resource Name (ARN) in the response.
  The
  state machine returned is the state machine associated with the
  Map Run.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  This API action is not supported by `EXPRESS` state machines.
  """
  @spec describe_state_machine_for_execution(
          map(),
          describe_state_machine_for_execution_input(),
          list()
        ) ::
          {:ok, describe_state_machine_for_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_state_machine_for_execution_errors()}
  def describe_state_machine_for_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStateMachineForExecution", input, options)
  end

  @doc """
  Used by workers to retrieve a task (with the specified activity ARN) which has
  been
  scheduled for execution by a running state machine.

  This initiates a long poll, where the
  service holds the HTTP connection open and responds as soon as a task becomes
  available (i.e.
  an execution of a task of this type is needed.) The maximum time the service
  holds on to the
  request before responding is 60 seconds. If no task is available within 60
  seconds, the poll
  returns a `taskToken` with a null string.

  This API action isn't logged in CloudTrail.

  Workers should set their client side socket timeout to at least 65 seconds (5
  seconds
  higher than the maximum time the service may hold the poll request).

  Polling with `GetActivityTask` can cause latency in some implementations. See
  [Avoid Latency When Polling for Activity
  Tasks](https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html)
  in the Step Functions Developer Guide.
  """
  @spec get_activity_task(map(), get_activity_task_input(), list()) ::
          {:ok, get_activity_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_activity_task_errors()}
  def get_activity_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetActivityTask", input, options)
  end

  @doc """
  Returns the history of the specified execution as a list of events.

  By default, the
  results are returned in ascending order of the `timeStamp` of the events. Use
  the
  `reverseOrder` parameter to get the latest events first.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page.
  Make the call again using the returned token to retrieve the next page. Keep all
  other arguments unchanged. Each pagination token expires after 24 hours. Using
  an expired pagination token will return an *HTTP 400 InvalidToken* error.

  This API action is not supported by `EXPRESS` state machines.
  """
  @spec get_execution_history(map(), get_execution_history_input(), list()) ::
          {:ok, get_execution_history_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_execution_history_errors()}
  def get_execution_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetExecutionHistory", input, options)
  end

  @doc """
  Lists the existing activities.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page.
  Make the call again using the returned token to retrieve the next page. Keep all
  other arguments unchanged. Each pagination token expires after 24 hours. Using
  an expired pagination token will return an *HTTP 400 InvalidToken* error.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  @spec list_activities(map(), list_activities_input(), list()) ::
          {:ok, list_activities_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_activities_errors()}
  def list_activities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListActivities", input, options)
  end

  @doc """
  Lists all executions of a state machine or a Map Run.

  You can list all executions related to a state machine by specifying a state
  machine Amazon Resource Name (ARN), or those related to a Map Run by specifying
  a Map Run ARN. Using this API action, you can also list all
  [redriven](https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html) executions.

  You can also provide a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
  ARN or
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  ARN to list the executions associated with a specific alias or version.

  Results are
  sorted by time, with the most recent execution first.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page.
  Make the call again using the returned token to retrieve the next page. Keep all
  other arguments unchanged. Each pagination token expires after 24 hours. Using
  an expired pagination token will return an *HTTP 400 InvalidToken* error.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  This API action is not supported by `EXPRESS` state machines.
  """
  @spec list_executions(map(), list_executions_input(), list()) ::
          {:ok, list_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_executions_errors()}
  def list_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExecutions", input, options)
  end

  @doc """
  Lists all Map Runs that were started by a given state machine execution.

  Use this API action to obtain Map Run ARNs, and then call `DescribeMapRun` to
  obtain more information, if needed.
  """
  @spec list_map_runs(map(), list_map_runs_input(), list()) ::
          {:ok, list_map_runs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_map_runs_errors()}
  def list_map_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMapRuns", input, options)
  end

  @doc """
  Lists
  [aliases](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html) for a specified state machine ARN.

  Results are sorted by time, with the most recently created aliases listed first.

  To list aliases that reference a state machine
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html),
  you can specify the version ARN in the `stateMachineArn` parameter.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page.
  Make the call again using the returned token to retrieve the next page. Keep all
  other arguments unchanged. Each pagination token expires after 24 hours. Using
  an expired pagination token will return an *HTTP 400 InvalidToken* error.

  ## Related operations:

    *

  `CreateStateMachineAlias`

    *

  `DescribeStateMachineAlias`

    *

  `UpdateStateMachineAlias`

    *

  `DeleteStateMachineAlias`
  """
  @spec list_state_machine_aliases(map(), list_state_machine_aliases_input(), list()) ::
          {:ok, list_state_machine_aliases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_state_machine_aliases_errors()}
  def list_state_machine_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStateMachineAliases", input, options)
  end

  @doc """
  Lists
  [versions](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  for the specified state machine Amazon Resource Name (ARN).

  The results are sorted in descending order of the version creation time.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page.
  Make the call again using the returned token to retrieve the next page. Keep all
  other arguments unchanged. Each pagination token expires after 24 hours. Using
  an expired pagination token will return an *HTTP 400 InvalidToken* error.

  ## Related operations:

    *

  `PublishStateMachineVersion`

    *

  `DeleteStateMachineVersion`
  """
  @spec list_state_machine_versions(map(), list_state_machine_versions_input(), list()) ::
          {:ok, list_state_machine_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_state_machine_versions_errors()}
  def list_state_machine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStateMachineVersions", input, options)
  end

  @doc """
  Lists the existing state machines.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page.
  Make the call again using the returned token to retrieve the next page. Keep all
  other arguments unchanged. Each pagination token expires after 24 hours. Using
  an expired pagination token will return an *HTTP 400 InvalidToken* error.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  @spec list_state_machines(map(), list_state_machines_input(), list()) ::
          {:ok, list_state_machines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_state_machines_errors()}
  def list_state_machines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStateMachines", input, options)
  end

  @doc """
  List tags for a given resource.

  Tags may only contain Unicode letters, digits, white space, or these symbols: `_
  . : / = + - @`.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates a
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  from the
  current revision of a state machine.

  Use versions to create immutable snapshots of your state
  machine. You can start executions from versions either directly or with an
  alias. To create an
  alias, use `CreateStateMachineAlias`.

  You can publish up to 1000 versions for each state machine. You must manually
  delete unused versions using the `DeleteStateMachineVersion` API action.

  `PublishStateMachineVersion` is an idempotent API. It doesn't create a
  duplicate state machine version if it already exists for the current revision.
  Step Functions bases `PublishStateMachineVersion`'s idempotency check on the
  `stateMachineArn`, `name`, and `revisionId` parameters.
  Requests with the same parameters return a successful idempotent response. If
  you don't
  specify a `revisionId`, Step Functions checks for a previously published
  version of the state machine's current revision.

  ## Related operations:

    *

  `DeleteStateMachineVersion`

    *

  `ListStateMachineVersions`
  """
  @spec publish_state_machine_version(map(), publish_state_machine_version_input(), list()) ::
          {:ok, publish_state_machine_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_state_machine_version_errors()}
  def publish_state_machine_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PublishStateMachineVersion", input, options)
  end

  @doc """
  Restarts unsuccessful executions of Standard workflows that didn't complete
  successfully in the last 14 days.

  These include failed, aborted, or timed out executions. When you
  [redrive](https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html) an execution, it continues the failed execution from the unsuccessful step and
  uses the same input. Step Functions preserves the results and execution history
  of the successful steps, and doesn't rerun these steps when you redrive an
  execution. Redriven executions use the same state machine definition and
  execution ARN as the original execution attempt.

  For workflows that include an [Inline
  Map](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html)
  or
  [Parallel](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html) state, `RedriveExecution` API action reschedules and redrives only the
  iterations and branches that failed or aborted.

  To redrive a workflow that includes a Distributed Map state whose Map Run
  failed, you must redrive the [parent
  workflow](https://docs.aws.amazon.com/step-functions/latest/dg/use-dist-map-orchestrate-large-scale-parallel-workloads.html#dist-map-orchestrate-parallel-workloads-key-terms).
  The parent workflow redrives all the unsuccessful states, including a failed Map
  Run. If a Map Run was not started in the original execution attempt, the
  redriven parent workflow starts the Map Run.

  This API action is not supported by `EXPRESS` state machines.

  However, you can restart the unsuccessful executions of Express child workflows
  in a Distributed Map by redriving its Map Run. When you redrive a Map Run, the
  Express child workflows are rerun using the `StartExecution` API action. For
  more information, see [Redriving Map Runs](https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html).

  You can redrive executions if your original execution meets the following
  conditions:

    *
  The execution status isn't `SUCCEEDED`.

    *
  Your workflow execution has not exceeded the redrivable period of 14 days.
  Redrivable period refers to the time during which you can redrive a given
  execution. This period starts from the day a state machine completes its
  execution.

    *
  The workflow execution has not exceeded the maximum open time of one year. For
  more information about state machine quotas, see [Quotas related to state machine
  executions](https://docs.aws.amazon.com/step-functions/latest/dg/limits-overview.html#service-limits-state-machine-executions).

    *
  The execution event history count is less than 24,999. Redriven executions
  append their event history to the existing event history. Make sure your
  workflow execution contains less than 24,999 events to accommodate the
  `ExecutionRedriven` history event and at least one other history event.
  """
  @spec redrive_execution(map(), redrive_execution_input(), list()) ::
          {:ok, redrive_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, redrive_execution_errors()}
  def redrive_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RedriveExecution", input, options)
  end

  @doc """
  Used by activity workers, Task states using the
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token) pattern, and optionally Task states using the [job
  run](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
  pattern to report that the task identified by the `taskToken` failed.
  """
  @spec send_task_failure(map(), send_task_failure_input(), list()) ::
          {:ok, send_task_failure_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_task_failure_errors()}
  def send_task_failure(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTaskFailure", input, options)
  end

  @doc """
  Used by activity workers and Task states using the
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token) pattern, and optionally Task states using the [job
  run](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
  pattern to report to Step Functions that the task represented by the specified
  `taskToken` is still making progress.

  This action resets the
  `Heartbeat` clock. The `Heartbeat` threshold is specified in the state
  machine's Amazon States Language definition (`HeartbeatSeconds`). This action
  does not in itself
  create an event in the execution history. However, if the task times out, the
  execution
  history contains an `ActivityTimedOut` entry for activities, or a
  `TaskTimedOut` entry for tasks using the [job run](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
  or
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)

  pattern.

  The `Timeout` of a task, defined in the state machine's Amazon States Language
  definition, is
  its maximum allowed duration, regardless of the number of `SendTaskHeartbeat`
  requests received. Use `HeartbeatSeconds` to configure the timeout interval
  for heartbeats.
  """
  @spec send_task_heartbeat(map(), send_task_heartbeat_input(), list()) ::
          {:ok, send_task_heartbeat_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_task_heartbeat_errors()}
  def send_task_heartbeat(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTaskHeartbeat", input, options)
  end

  @doc """
  Used by activity workers, Task states using the
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token) pattern, and optionally Task states using the [job
  run](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
  pattern to report that the task identified by the `taskToken` completed
  successfully.
  """
  @spec send_task_success(map(), send_task_success_input(), list()) ::
          {:ok, send_task_success_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_task_success_errors()}
  def send_task_success(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTaskSuccess", input, options)
  end

  @doc """
  Starts a state machine execution.

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    *
  The following qualified state machine ARN refers to a *Distributed Map state*
  with a label `mapStateLabel` in a state machine named `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    *
  The following qualified state machine ARN refers to an alias named `PROD`.

  `arn::states:::stateMachine:`

  If you provide a qualified state machine ARN that refers to a version ARN or an
  alias ARN, the request starts execution for that version or alias.

    *
  The following unqualified state machine ARN refers to a state machine named
  `myStateMachine`.

  `arn::states:::stateMachine:`

  If you start an execution with an unqualified state machine ARN, Step Functions
  uses the latest revision of the state machine for the execution.

  To start executions of a state machine
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html), call
  `StartExecution` and provide the version ARN or the ARN of an
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
  that points to the version.

  `StartExecution` is idempotent for `STANDARD` workflows. For a
  `STANDARD` workflow, if you call `StartExecution` with the same name
  and input as a running execution, the call succeeds and return the same response
  as the
  original request. If the execution is closed or if the input is different, it
  returns a
  `400 ExecutionAlreadyExists` error. You can reuse names after 90 days.

  `StartExecution` isn't idempotent for `EXPRESS` workflows.
  """
  @spec start_execution(map(), start_execution_input(), list()) ::
          {:ok, start_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_execution_errors()}
  def start_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExecution", input, options)
  end

  @doc """
  Starts a Synchronous Express state machine execution.

  `StartSyncExecution`
  is not available for `STANDARD` workflows.

  `StartSyncExecution` will return a `200 OK` response, even if your
  execution fails, because the status code in the API response doesn't reflect
  function
  errors. Error codes are reserved for errors that prevent your execution from
  running, such
  as permissions errors, limit errors, or issues with your state machine code and
  configuration.

  This API action isn't logged in CloudTrail.
  """
  @spec start_sync_execution(map(), start_sync_execution_input(), list()) ::
          {:ok, start_sync_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_sync_execution_errors()}
  def start_sync_execution(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "sync-")

    Request.request_post(client, meta, "StartSyncExecution", input, options)
  end

  @doc """
  Stops an execution.

  This API action is not supported by `EXPRESS` state machines.
  """
  @spec stop_execution(map(), stop_execution_input(), list()) ::
          {:ok, stop_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_execution_errors()}
  def stop_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopExecution", input, options)
  end

  @doc """
  Add a tag to a Step Functions resource.

  An array of key-value pairs. For more information, see [Using Cost Allocation
  Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Amazon Web Services Billing and Cost Management User
  Guide*, and [Controlling Access Using IAM Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).

  Tags may only contain Unicode letters, digits, white space, or these symbols: `_
  . : / = + - @`.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Accepts the definition of a single state and executes it.

  You can test a state without creating a state machine or updating an existing
  state machine. Using this API, you can test the following:

    *
  A state's [input and output processing](https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-input-output-dataflow)
  data flow

    *
  An [Amazon Web Services service integration](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-services.html)
  request and response

    *
  An [HTTP Task](https://docs.aws.amazon.com/step-functions/latest/dg/connect-third-party-apis.html)
  request and response

  You can call this API on only one state at a time. The states that you can test
  include the following:

    *

  [All Task types](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-task-state.html#task-types)
  except
  [Activity](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html) 

    *

  [Pass](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-pass-state.html)

    *

  [Wait](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-wait-state.html) 

    *

  [Choice](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-choice-state.html)

    *

  [Succeed](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-succeed-state.html) 

    *

  [Fail](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-fail-state.html)

  The `TestState` API assumes an IAM role which must contain the required IAM
  permissions for the resources your state is accessing. For information about the
  permissions a state might need, see [IAM permissions to test a state](https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions).

  The `TestState` API can run for up to five minutes. If the execution of a state
  exceeds this duration, it fails with the `States.Timeout` error.

  `TestState` doesn't support [Activity tasks](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html),
  `.sync` or `.waitForTaskToken`
  [service integration patterns](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html),
  [Parallel](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html), or
  [Map](https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html)
  states.
  """
  @spec test_state(map(), test_state_input(), list()) ::
          {:ok, test_state_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_state_errors()}
  def test_state(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "sync-")

    Request.request_post(client, meta, "TestState", input, options)
  end

  @doc """
  Remove a tag from a Step Functions resource
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an in-progress Map Run's configuration to include changes to the
  settings that control maximum concurrency and Map Run failure.
  """
  @spec update_map_run(map(), update_map_run_input(), list()) ::
          {:ok, update_map_run_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_map_run_errors()}
  def update_map_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMapRun", input, options)
  end

  @doc """
  Updates an existing state machine by modifying its `definition`,
  `roleArn`, or `loggingConfiguration`.

  Running executions will continue
  to use the previous `definition` and `roleArn`. You must include at
  least one of `definition` or `roleArn` or you will receive a
  `MissingRequiredParameter` error.

  A qualified state machine ARN refers to a *Distributed Map state* defined within
  a state machine. For example, the qualified state machine ARN
  `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel`
  refers to a *Distributed Map state* with a label `mapStateLabel` in the state
  machine named `stateMachineName`.

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    *
  The following qualified state machine ARN refers to a *Distributed Map state*
  with a label `mapStateLabel` in a state machine named `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    *
  The following qualified state machine ARN refers to an alias named `PROD`.

  `arn::states:::stateMachine:`

  If you provide a qualified state machine ARN that refers to a version ARN or an
  alias ARN, the request starts execution for that version or alias.

    *
  The following unqualified state machine ARN refers to a state machine named
  `myStateMachine`.

  `arn::states:::stateMachine:`

  After you update your state machine, you can set the `publish` parameter to
  `true` in the same action to publish a new
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html).
  This
  way, you can opt-in to strict versioning of your state machine.

  Step Functions assigns monotonically increasing integers for state machine
  versions, starting at version number 1.

  All `StartExecution` calls within a few seconds use the updated
  `definition` and `roleArn`. Executions started immediately after you
  call `UpdateStateMachine` may use the previous state machine
  `definition` and `roleArn`.
  """
  @spec update_state_machine(map(), update_state_machine_input(), list()) ::
          {:ok, update_state_machine_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_state_machine_errors()}
  def update_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStateMachine", input, options)
  end

  @doc """
  Updates the configuration of an existing state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
  by modifying its `description` or `routingConfiguration`.

  You must specify at least one of the `description` or `routingConfiguration`
  parameters to update a state machine alias.

  `UpdateStateMachineAlias` is an idempotent API. Step Functions bases the
  idempotency check on the `stateMachineAliasArn`, `description`, and
  `routingConfiguration` parameters. Requests with the same parameters return an
  idempotent response.

  This operation is eventually consistent. All `StartExecution` requests
  made within a few seconds use the latest alias configuration. Executions started
  immediately
  after calling `UpdateStateMachineAlias` may use the previous routing
  configuration.

  ## Related operations:

    *

  `CreateStateMachineAlias`

    *

  `DescribeStateMachineAlias`

    *

  `ListStateMachineAliases`

    *

  `DeleteStateMachineAlias`
  """
  @spec update_state_machine_alias(map(), update_state_machine_alias_input(), list()) ::
          {:ok, update_state_machine_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_state_machine_alias_errors()}
  def update_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStateMachineAlias", input, options)
  end

  @doc """
  Validates the syntax of a state machine definition.

  You can validate that a state machine definition is correct without
  creating a state machine resource. Step Functions will implicitly perform the
  same
  syntax check when you invoke `CreateStateMachine` and
  `UpdateStateMachine`. State machine definitions are specified using a
  JSON-based, structured language. For more information on Amazon States Language
  see [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
  (ASL).

  Suggested uses for `ValidateStateMachineDefinition`:

    *
  Integrate automated checks into your code review or Continuous Integration
  (CI) process to validate state machine definitions before starting
  deployments.

    *
  Run the validation from a Git pre-commit hook to check your state machine
  definitions before committing them to your source repository.

  Errors found in the state machine definition will be returned in the response as
  a list of **diagnostic elements**, rather than raise an exception.
  """
  @spec validate_state_machine_definition(
          map(),
          validate_state_machine_definition_input(),
          list()
        ) ::
          {:ok, validate_state_machine_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_state_machine_definition_errors()}
  def validate_state_machine_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ValidateStateMachineDefinition", input, options)
  end
end
