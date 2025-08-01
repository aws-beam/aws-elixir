# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudWatchEvents do
  @moduledoc """
  Amazon EventBridge helps you to respond to state changes in your Amazon Web
  Services resources.

  When your
  resources change state, they automatically send events to an event stream. You
  can create
  rules that match selected events in the stream and route them to targets to take
  action. You
  can also use rules to take action on a predetermined schedule. For example, you
  can configure
  rules to:

    *
  Automatically invoke an Lambda function to update DNS entries when an event
  notifies you that Amazon EC2 instance enters the running state.

    *
  Direct specific API records from CloudTrail to an Amazon Kinesis data stream for
  detailed analysis of potential security or availability risks.

    *
  Periodically invoke a built-in target to create a snapshot of an Amazon EBS
  volume.

  For more information about the features of Amazon EventBridge, see the [Amazon EventBridge User
  Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      cancel_replay_request() :: %{
        required("ReplayName") => String.t() | Atom.t()
      }
      
  """
  @type cancel_replay_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_bus_request() :: %{
        optional("Name") => String.t() | Atom.t()
      }
      
  """
  @type describe_event_bus_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_request() :: %{
        optional("AuthParameters") => update_connection_auth_request_parameters(),
        optional("AuthorizationType") => list(any()),
        optional("Description") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type update_connection_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deauthorize_connection_response() :: %{
        "ConnectionArn" => String.t() | Atom.t(),
        "ConnectionState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastAuthorizedTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type deauthorize_connection_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_bus_request() :: %{
        optional("EventSourceName") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type create_event_bus_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_retry_strategy() :: %{
        "Attempts" => integer()
      }
      
  """
  @type batch_retry_strategy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_archives_response() :: %{
        "Archives" => list(archive()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_archives_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_partner_events_request_entry() :: %{
        "Detail" => String.t() | Atom.t(),
        "DetailType" => String.t() | Atom.t(),
        "Resources" => list(String.t() | Atom.t()),
        "Source" => String.t() | Atom.t(),
        "Time" => non_neg_integer()
      }
      
  """
  @type put_partner_events_request_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_query_string_parameter() :: %{
        "IsValueSecret" => boolean(),
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type connection_query_string_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_o_auth_request_parameters() :: %{
        "AuthorizationEndpoint" => String.t() | Atom.t(),
        "ClientParameters" => update_connection_o_auth_client_request_parameters(),
        "HttpMethod" => list(any()),
        "OAuthHttpParameters" => connection_http_parameters()
      }
      
  """
  @type update_connection_o_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_rule_response() :: %{
        "RuleArn" => String.t() | Atom.t()
      }
      
  """
  @type put_rule_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      run_command_target() :: %{
        "Key" => String.t() | Atom.t(),
        "Values" => list(String.t() | Atom.t())
      }
      
  """
  @type run_command_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_event_pattern_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_event_pattern_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_source_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreatedBy" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "ExpirationTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type describe_event_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      policy_length_exceeded_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type policy_length_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      put_targets_result_entry() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "TargetId" => String.t() | Atom.t()
      }
      
  """
  @type put_targets_result_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type describe_connection_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_api_destination_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type describe_api_destination_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      enable_rule_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type enable_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_archive_request() :: %{
        required("ArchiveName") => String.t() | Atom.t()
      }
      
  """
  @type describe_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      test_event_pattern_request() :: %{
        required("Event") => String.t() | Atom.t(),
        required("EventPattern") => String.t() | Atom.t()
      }
      
  """
  @type test_event_pattern_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_auth_response_parameters() :: %{
        "ApiKeyAuthParameters" => connection_api_key_auth_response_parameters(),
        "BasicAuthParameters" => connection_basic_auth_response_parameters(),
        "InvocationHttpParameters" => connection_http_parameters(),
        "OAuthParameters" => connection_o_auth_response_parameters()
      }
      
  """
  @type connection_auth_response_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_event_source_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type deactivate_event_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_sources_response() :: %{
        "EventSources" => list(event_source()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_event_sources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_array_properties() :: %{
        "Size" => integer()
      }
      
  """
  @type batch_array_properties() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      partner_event_source_account() :: %{
        "Account" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "ExpirationTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type partner_event_source_account() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_o_auth_request_parameters() :: %{
        "AuthorizationEndpoint" => String.t() | Atom.t(),
        "ClientParameters" => create_connection_o_auth_client_request_parameters(),
        "HttpMethod" => list(any()),
        "OAuthHttpParameters" => connection_http_parameters()
      }
      
  """
  @type create_connection_o_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_partner_event_source_request() :: %{
        required("Account") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type create_partner_event_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_connections_response() :: %{
        "Connections" => list(connection()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_connections_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_parameters() :: %{
        "ArrayProperties" => batch_array_properties(),
        "JobDefinition" => String.t() | Atom.t(),
        "JobName" => String.t() | Atom.t(),
        "RetryStrategy" => batch_retry_strategy()
      }
      
  """
  @type batch_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_sources_request() :: %{
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_event_sources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      run_command_parameters() :: %{
        "RunCommandTargets" => list(run_command_target())
      }
      
  """
  @type run_command_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_parameters() :: %{
        "HeaderParameters" => map(),
        "PathParameterValues" => list(String.t() | Atom.t()),
        "QueryStringParameters" => map()
      }
      
  """
  @type http_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sage_maker_pipeline_parameter() :: %{
        "Name" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type sage_maker_pipeline_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_header_parameter() :: %{
        "IsValueSecret" => boolean(),
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type connection_header_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_api_destination_response() :: %{}
      
  """
  @type delete_api_destination_response() :: %{}

  @typedoc """

  ## Example:
      
      create_event_bus_response() :: %{
        "EventBusArn" => String.t() | Atom.t()
      }
      
  """
  @type create_event_bus_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_events_response() :: %{
        "Entries" => list(put_events_result_entry()),
        "FailedEntryCount" => integer()
      }
      
  """
  @type put_events_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_events_request_entry() :: %{
        "Detail" => String.t() | Atom.t(),
        "DetailType" => String.t() | Atom.t(),
        "EventBusName" => String.t() | Atom.t(),
        "Resources" => list(String.t() | Atom.t()),
        "Source" => String.t() | Atom.t(),
        "Time" => non_neg_integer(),
        "TraceHeader" => String.t() | Atom.t()
      }
      
  """
  @type put_events_request_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_state_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replay_response() :: %{
        "Description" => String.t() | Atom.t(),
        "Destination" => replay_destination(),
        "EventEndTime" => non_neg_integer(),
        "EventLastReplayedTime" => non_neg_integer(),
        "EventSourceArn" => String.t() | Atom.t(),
        "EventStartTime" => non_neg_integer(),
        "ReplayArn" => String.t() | Atom.t(),
        "ReplayEndTime" => non_neg_integer(),
        "ReplayName" => String.t() | Atom.t(),
        "ReplayStartTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type describe_replay_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_api_key_auth_response_parameters() :: %{
        "ApiKeyName" => String.t() | Atom.t()
      }
      
  """
  @type connection_api_key_auth_response_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      replay() :: %{
        "EventEndTime" => non_neg_integer(),
        "EventLastReplayedTime" => non_neg_integer(),
        "EventSourceArn" => String.t() | Atom.t(),
        "EventStartTime" => non_neg_integer(),
        "ReplayEndTime" => non_neg_integer(),
        "ReplayName" => String.t() | Atom.t(),
        "ReplayStartTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type replay() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_rules_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      event_source() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreatedBy" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "ExpirationTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type event_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_auth_request_parameters() :: %{
        "ApiKeyAuthParameters" => update_connection_api_key_auth_request_parameters(),
        "BasicAuthParameters" => update_connection_basic_auth_request_parameters(),
        "InvocationHttpParameters" => connection_http_parameters(),
        "OAuthParameters" => update_connection_o_auth_request_parameters()
      }
      
  """
  @type update_connection_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_partner_event_source_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }
      
  """
  @type describe_partner_event_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_archive_response() :: %{}
      
  """
  @type delete_archive_response() :: %{}

  @typedoc """

  ## Example:
      
      update_connection_api_key_auth_request_parameters() :: %{
        "ApiKeyName" => String.t() | Atom.t(),
        "ApiKeyValue" => String.t() | Atom.t()
      }
      
  """
  @type update_connection_api_key_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_archive_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("EventPattern") => String.t() | Atom.t(),
        optional("RetentionDays") => integer(),
        required("ArchiveName") => String.t() | Atom.t(),
        required("EventSourceArn") => String.t() | Atom.t()
      }
      
  """
  @type create_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        optional("Force") => boolean(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type delete_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_archive_request() :: %{
        required("ArchiveName") => String.t() | Atom.t()
      }
      
  """
  @type delete_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_partner_event_source_accounts_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("EventSourceName") => String.t() | Atom.t()
      }
      
  """
  @type list_partner_event_source_accounts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connection_response() :: %{
        "AuthParameters" => connection_auth_response_parameters(),
        "AuthorizationType" => list(any()),
        "ConnectionArn" => String.t() | Atom.t(),
        "ConnectionState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "LastAuthorizedTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "SecretArn" => String.t() | Atom.t(),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type describe_connection_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      remove_targets_result_entry() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "TargetId" => String.t() | Atom.t()
      }
      
  """
  @type remove_targets_result_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_api_destination_response() :: %{
        "ApiDestinationArn" => String.t() | Atom.t(),
        "ApiDestinationState" => list(any()),
        "ConnectionArn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "HttpMethod" => list(any()),
        "InvocationEndpoint" => String.t() | Atom.t(),
        "InvocationRateLimitPerSecond" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t()
      }
      
  """
  @type describe_api_destination_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "Arn" => String.t() | Atom.t(),
        "BatchParameters" => batch_parameters(),
        "DeadLetterConfig" => dead_letter_config(),
        "EcsParameters" => ecs_parameters(),
        "HttpParameters" => http_parameters(),
        "Id" => String.t() | Atom.t(),
        "Input" => String.t() | Atom.t(),
        "InputPath" => String.t() | Atom.t(),
        "InputTransformer" => input_transformer(),
        "KinesisParameters" => kinesis_parameters(),
        "RedshiftDataParameters" => redshift_data_parameters(),
        "RetryPolicy" => retry_policy(),
        "RoleArn" => String.t() | Atom.t(),
        "RunCommandParameters" => run_command_parameters(),
        "SageMakerPipelineParameters" => sage_maker_pipeline_parameters(),
        "SqsParameters" => sqs_parameters()
      }
      
  """
  @type target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_connections_request() :: %{
        optional("ConnectionState") => list(any()),
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_connections_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_archives_request() :: %{
        optional("EventSourceArn") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("State") => list(any())
      }
      
  """
  @type list_archives_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_archive_response() :: %{
        "ArchiveArn" => String.t() | Atom.t(),
        "ArchiveName" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "EventCount" => float(),
        "EventPattern" => String.t() | Atom.t(),
        "EventSourceArn" => String.t() | Atom.t(),
        "RetentionDays" => integer(),
        "SizeBytes" => float(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type describe_archive_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_replays_request() :: %{
        optional("EventSourceArn") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("State") => list(any())
      }
      
  """
  @type list_replays_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_data_parameters() :: %{
        "Database" => String.t() | Atom.t(),
        "DbUser" => String.t() | Atom.t(),
        "SecretManagerArn" => String.t() | Atom.t(),
        "Sql" => String.t() | Atom.t(),
        "StatementName" => String.t() | Atom.t(),
        "WithEvent" => boolean()
      }
      
  """
  @type redshift_data_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_replay_response() :: %{
        "ReplayArn" => String.t() | Atom.t(),
        "ReplayStartTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type start_replay_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deauthorize_connection_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type deauthorize_connection_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      input_transformer() :: %{
        "InputPathsMap" => map(),
        "InputTemplate" => String.t() | Atom.t()
      }
      
  """
  @type input_transformer() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_http_parameters() :: %{
        "BodyParameters" => list(connection_body_parameter()),
        "HeaderParameters" => list(connection_header_parameter()),
        "QueryStringParameters" => list(connection_query_string_parameter())
      }
      
  """
  @type connection_http_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_api_destination_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("InvocationRateLimitPerSecond") => integer(),
        required("ConnectionArn") => String.t() | Atom.t(),
        required("HttpMethod") => list(any()),
        required("InvocationEndpoint") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type create_api_destination_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_events_request() :: %{
        required("Entries") => list(put_events_request_entry())
      }
      
  """
  @type put_events_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "AuthorizationType" => list(any()),
        "ConnectionArn" => String.t() | Atom.t(),
        "ConnectionState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastAuthorizedTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type connection() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      activate_event_source_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type activate_event_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      replay_destination() :: %{
        "Arn" => String.t() | Atom.t(),
        "FilterArns" => list(String.t() | Atom.t())
      }
      
  """
  @type replay_destination() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_replays_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Replays" => list(replay())
      }
      
  """
  @type list_replays_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_buses_request() :: %{
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_event_buses_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_source_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type describe_event_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_api_destination_response() :: %{
        "ApiDestinationArn" => String.t() | Atom.t(),
        "ApiDestinationState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type create_api_destination_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      remove_permission_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        optional("RemoveAllPermissions") => boolean(),
        optional("StatementId") => String.t() | Atom.t()
      }
      
  """
  @type remove_permission_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sage_maker_pipeline_parameters() :: %{
        "PipelineParameterList" => list(sage_maker_pipeline_parameter())
      }
      
  """
  @type sage_maker_pipeline_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      managed_rule_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type managed_rule_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      disable_rule_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type disable_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_response() :: %{
        "ConnectionArn" => String.t() | Atom.t(),
        "ConnectionState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastAuthorizedTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type update_connection_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sqs_parameters() :: %{
        "MessageGroupId" => String.t() | Atom.t()
      }
      
  """
  @type sqs_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_permission_request() :: %{
        optional("Action") => String.t() | Atom.t(),
        optional("Condition") => condition(),
        optional("EventBusName") => String.t() | Atom.t(),
        optional("Policy") => String.t() | Atom.t(),
        optional("Principal") => String.t() | Atom.t(),
        optional("StatementId") => String.t() | Atom.t()
      }
      
  """
  @type put_permission_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_api_destinations_response() :: %{
        "ApiDestinations" => list(api_destination()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_api_destinations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_bus_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type delete_event_bus_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "Key" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type condition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_partner_events_response() :: %{
        "Entries" => list(put_partner_events_result_entry()),
        "FailedEntryCount" => integer()
      }
      
  """
  @type put_partner_events_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      partner_event_source() :: %{
        "Arn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }
      
  """
  @type partner_event_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      operation_disabled_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type operation_disabled_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "Arn" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "EventBusName" => String.t() | Atom.t(),
        "EventPattern" => String.t() | Atom.t(),
        "ManagedBy" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t(),
        "ScheduleExpression" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_events_result_entry() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "EventId" => String.t() | Atom.t()
      }
      
  """
  @type put_events_result_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_api_destination_request() :: %{
        optional("ConnectionArn") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("HttpMethod") => list(any()),
        optional("InvocationEndpoint") => String.t() | Atom.t(),
        optional("InvocationRateLimitPerSecond") => integer(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type update_api_destination_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_api_key_auth_request_parameters() :: %{
        "ApiKeyName" => String.t() | Atom.t(),
        "ApiKeyValue" => String.t() | Atom.t()
      }
      
  """
  @type create_connection_api_key_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type describe_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_o_auth_client_request_parameters() :: %{
        "ClientID" => String.t() | Atom.t(),
        "ClientSecret" => String.t() | Atom.t()
      }
      
  """
  @type create_connection_o_auth_client_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_provider_strategy_item() :: %{
        "base" => integer(),
        "capacityProvider" => String.t() | Atom.t(),
        "weight" => integer()
      }
      
  """
  @type capacity_provider_strategy_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      placement_constraint() :: %{
        "expression" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type placement_constraint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      network_configuration() :: %{
        "awsvpcConfiguration" => aws_vpc_configuration()
      }
      
  """
  @type network_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      api_destination() :: %{
        "ApiDestinationArn" => String.t() | Atom.t(),
        "ApiDestinationState" => list(any()),
        "ConnectionArn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "HttpMethod" => list(any()),
        "InvocationEndpoint" => String.t() | Atom.t(),
        "InvocationRateLimitPerSecond" => integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t()
      }
      
  """
  @type api_destination() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type internal_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_rules_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Rules" => list(rule())
      }
      
  """
  @type list_rules_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_partner_event_source_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type describe_partner_event_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_partner_event_source_response() :: %{
        "EventSourceArn" => String.t() | Atom.t()
      }
      
  """
  @type create_partner_event_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_connection_basic_auth_request_parameters() :: %{
        "Password" => String.t() | Atom.t(),
        "Username" => String.t() | Atom.t()
      }
      
  """
  @type update_connection_basic_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_partner_event_sources_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("NamePrefix") => String.t() | Atom.t()
      }
      
  """
  @type list_partner_event_sources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_bus_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Policy" => String.t() | Atom.t()
      }
      
  """
  @type describe_event_bus_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      remove_targets_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        optional("Force") => boolean(),
        required("Ids") => list(String.t() | Atom.t()),
        required("Rule") => String.t() | Atom.t()
      }
      
  """
  @type remove_targets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      dead_letter_config() :: %{
        "Arn" => String.t() | Atom.t()
      }
      
  """
  @type dead_letter_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_api_destination_response() :: %{
        "ApiDestinationArn" => String.t() | Atom.t(),
        "ApiDestinationState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type update_api_destination_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_replay_response() :: %{
        "ReplayArn" => String.t() | Atom.t(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type cancel_replay_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_response() :: %{
        "ConnectionArn" => String.t() | Atom.t(),
        "ConnectionState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastAuthorizedTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type delete_connection_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_rule_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("EventBusName") => String.t() | Atom.t(),
        optional("EventPattern") => String.t() | Atom.t(),
        optional("RoleArn") => String.t() | Atom.t(),
        optional("ScheduleExpression") => String.t() | Atom.t(),
        optional("State") => list(any()),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type put_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_partner_event_sources_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "PartnerEventSources" => list(partner_event_source())
      }
      
  """
  @type list_partner_event_sources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replay_request() :: %{
        required("ReplayName") => String.t() | Atom.t()
      }
      
  """
  @type describe_replay_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_api_destinations_request() :: %{
        optional("ConnectionArn") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_api_destinations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_archive_response() :: %{
        "ArchiveArn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type create_archive_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_replay_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        required("Destination") => replay_destination(),
        required("EventEndTime") => non_neg_integer(),
        required("EventSourceArn") => String.t() | Atom.t(),
        required("EventStartTime") => non_neg_integer(),
        required("ReplayName") => String.t() | Atom.t()
      }
      
  """
  @type start_replay_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_o_auth_response_parameters() :: %{
        "AuthorizationEndpoint" => String.t() | Atom.t(),
        "ClientParameters" => connection_o_auth_client_response_parameters(),
        "HttpMethod" => list(any()),
        "OAuthHttpParameters" => connection_http_parameters()
      }
      
  """
  @type connection_o_auth_response_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      archive() :: %{
        "ArchiveName" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "EventCount" => float(),
        "EventSourceArn" => String.t() | Atom.t(),
        "RetentionDays" => integer(),
        "SizeBytes" => float(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type archive() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      remove_targets_response() :: %{
        "FailedEntries" => list(remove_targets_result_entry()),
        "FailedEntryCount" => integer()
      }
      
  """
  @type remove_targets_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_response() :: %{
        "ConnectionArn" => String.t() | Atom.t(),
        "ConnectionState" => list(any()),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer()
      }
      
  """
  @type create_connection_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_buses_response() :: %{
        "EventBuses" => list(event_bus()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_event_buses_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_archive_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("EventPattern") => String.t() | Atom.t(),
        optional("RetentionDays") => integer(),
        required("ArchiveName") => String.t() | Atom.t()
      }
      
  """
  @type update_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_names_by_target_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("TargetArn") => String.t() | Atom.t()
      }
      
  """
  @type list_rule_names_by_target_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      aws_vpc_configuration() :: %{
        "AssignPublicIp" => list(any()),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "Subnets" => list(String.t() | Atom.t())
      }
      
  """
  @type aws_vpc_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_partner_events_result_entry() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "EventId" => String.t() | Atom.t()
      }
      
  """
  @type put_partner_events_result_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_basic_auth_request_parameters() :: %{
        "Password" => String.t() | Atom.t(),
        "Username" => String.t() | Atom.t()
      }
      
  """
  @type create_connection_basic_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_partner_events_request() :: %{
        required("Entries") => list(put_partner_events_request_entry())
      }
      
  """
  @type put_partner_events_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_parameters() :: %{
        "PartitionKeyPath" => String.t() | Atom.t()
      }
      
  """
  @type kinesis_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_targets_by_rule_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Targets" => list(target())
      }
      
  """
  @type list_targets_by_rule_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type delete_connection_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_archive_response() :: %{
        "ArchiveArn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => String.t() | Atom.t()
      }
      
  """
  @type update_archive_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      test_event_pattern_response() :: %{
        "Result" => boolean()
      }
      
  """
  @type test_event_pattern_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      illegal_status_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type illegal_status_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_targets_by_rule_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("Rule") => String.t() | Atom.t()
      }
      
  """
  @type list_targets_by_rule_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      retry_policy() :: %{
        "MaximumEventAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer()
      }
      
  """
  @type retry_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_body_parameter() :: %{
        "IsValueSecret" => boolean(),
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type connection_body_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_basic_auth_response_parameters() :: %{
        "Username" => String.t() | Atom.t()
      }
      
  """
  @type connection_basic_auth_response_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_targets_request() :: %{
        optional("EventBusName") => String.t() | Atom.t(),
        required("Rule") => String.t() | Atom.t(),
        required("Targets") => list(target())
      }
      
  """
  @type put_targets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        required("AuthParameters") => create_connection_auth_request_parameters(),
        required("AuthorizationType") => list(any()),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type create_connection_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_connection_o_auth_client_request_parameters() :: %{
        "ClientID" => String.t() | Atom.t(),
        "ClientSecret" => String.t() | Atom.t()
      }
      
  """
  @type update_connection_o_auth_client_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      event_bus() :: %{
        "Arn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Policy" => String.t() | Atom.t()
      }
      
  """
  @type event_bus() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_auth_request_parameters() :: %{
        "ApiKeyAuthParameters" => create_connection_api_key_auth_request_parameters(),
        "BasicAuthParameters" => create_connection_basic_auth_request_parameters(),
        "InvocationHttpParameters" => connection_http_parameters(),
        "OAuthParameters" => create_connection_o_auth_request_parameters()
      }
      
  """
  @type create_connection_auth_request_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_api_destination_request() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type delete_api_destination_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      connection_o_auth_client_response_parameters() :: %{
        "ClientID" => String.t() | Atom.t()
      }
      
  """
  @type connection_o_auth_client_response_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rule_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreatedBy" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "EventBusName" => String.t() | Atom.t(),
        "EventPattern" => String.t() | Atom.t(),
        "ManagedBy" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t(),
        "ScheduleExpression" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type describe_rule_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_partner_event_source_accounts_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "PartnerEventSourceAccounts" => list(partner_event_source_account())
      }
      
  """
  @type list_partner_event_source_accounts_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_names_by_target_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "RuleNames" => list(String.t() | Atom.t())
      }
      
  """
  @type list_rule_names_by_target_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_partner_event_source_request() :: %{
        required("Account") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type delete_partner_event_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      placement_strategy() :: %{
        "field" => String.t() | Atom.t(),
        "type" => list(any())
      }
      
  """
  @type placement_strategy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_parameters() :: %{
        "CapacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "EnableECSManagedTags" => boolean(),
        "EnableExecuteCommand" => boolean(),
        "Group" => String.t() | Atom.t(),
        "LaunchType" => list(any()),
        "NetworkConfiguration" => network_configuration(),
        "PlacementConstraints" => list(placement_constraint()),
        "PlacementStrategy" => list(placement_strategy()),
        "PlatformVersion" => String.t() | Atom.t(),
        "PropagateTags" => list(any()),
        "ReferenceId" => String.t() | Atom.t(),
        "Tags" => list(tag()),
        "TaskCount" => integer(),
        "TaskDefinitionArn" => String.t() | Atom.t()
      }
      
  """
  @type ecs_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_targets_response() :: %{
        "FailedEntries" => list(put_targets_result_entry()),
        "FailedEntryCount" => integer()
      }
      
  """
  @type put_targets_response() :: %{String.t() | Atom.t() => any()}

  @type activate_event_source_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | operation_disabled_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type cancel_replay_errors() ::
          illegal_status_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type create_api_destination_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type create_archive_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()
          | invalid_event_pattern_exception()

  @type create_connection_errors() ::
          resource_already_exists_exception() | limit_exceeded_exception() | internal_exception()

  @type create_event_bus_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | operation_disabled_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type create_partner_event_source_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | operation_disabled_exception()

  @type deactivate_event_source_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | operation_disabled_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type deauthorize_connection_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type delete_api_destination_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type delete_archive_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type delete_connection_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type delete_event_bus_errors() :: concurrent_modification_exception() | internal_exception()

  @type delete_partner_event_source_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | operation_disabled_exception()

  @type delete_rule_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()

  @type describe_api_destination_errors() :: internal_exception() | resource_not_found_exception()

  @type describe_archive_errors() ::
          resource_already_exists_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type describe_connection_errors() :: internal_exception() | resource_not_found_exception()

  @type describe_event_bus_errors() :: internal_exception() | resource_not_found_exception()

  @type describe_event_source_errors() ::
          internal_exception() | operation_disabled_exception() | resource_not_found_exception()

  @type describe_partner_event_source_errors() ::
          internal_exception() | operation_disabled_exception() | resource_not_found_exception()

  @type describe_replay_errors() :: internal_exception() | resource_not_found_exception()

  @type describe_rule_errors() :: internal_exception() | resource_not_found_exception()

  @type disable_rule_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()

  @type enable_rule_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()

  @type list_api_destinations_errors() :: internal_exception()

  @type list_archives_errors() :: internal_exception() | resource_not_found_exception()

  @type list_connections_errors() :: internal_exception()

  @type list_event_buses_errors() :: internal_exception()

  @type list_event_sources_errors() :: internal_exception() | operation_disabled_exception()

  @type list_partner_event_source_accounts_errors() ::
          internal_exception() | operation_disabled_exception() | resource_not_found_exception()

  @type list_partner_event_sources_errors() ::
          internal_exception() | operation_disabled_exception()

  @type list_replays_errors() :: internal_exception()

  @type list_rule_names_by_target_errors() ::
          internal_exception() | resource_not_found_exception()

  @type list_rules_errors() :: internal_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: internal_exception() | resource_not_found_exception()

  @type list_targets_by_rule_errors() :: internal_exception() | resource_not_found_exception()

  @type put_events_errors() :: internal_exception()

  @type put_partner_events_errors() :: internal_exception() | operation_disabled_exception()

  @type put_permission_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | operation_disabled_exception()
          | resource_not_found_exception()
          | policy_length_exceeded_exception()

  @type put_rule_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()
          | invalid_event_pattern_exception()

  @type put_targets_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()

  @type remove_permission_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | operation_disabled_exception()
          | resource_not_found_exception()

  @type remove_targets_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()

  @type start_replay_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | internal_exception()
          | resource_not_found_exception()
          | invalid_event_pattern_exception()

  @type tag_resource_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()

  @type test_event_pattern_errors() :: internal_exception() | invalid_event_pattern_exception()

  @type untag_resource_errors() ::
          concurrent_modification_exception()
          | internal_exception()
          | managed_rule_exception()
          | resource_not_found_exception()

  @type update_api_destination_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type update_archive_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()
          | invalid_event_pattern_exception()

  @type update_connection_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | internal_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2015-10-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "events",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CloudWatch Events",
      signature_version: "v4",
      signing_name: "events",
      target_prefix: "AWSEvents"
    }
  end

  @doc """
  Activates a partner event source that has been deactivated.

  Once activated, your matching
  event bus will start receiving events from the event source.
  """
  @spec activate_event_source(map(), activate_event_source_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_event_source_errors()}
  def activate_event_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ActivateEventSource", input, options)
  end

  @doc """
  Cancels the specified replay.
  """
  @spec cancel_replay(map(), cancel_replay_request(), list()) ::
          {:ok, cancel_replay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_replay_errors()}
  def cancel_replay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelReplay", input, options)
  end

  @doc """
  Creates an API destination, which is an HTTP invocation endpoint configured as a
  target
  for events.
  """
  @spec create_api_destination(map(), create_api_destination_request(), list()) ::
          {:ok, create_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_api_destination_errors()}
  def create_api_destination(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApiDestination", input, options)
  end

  @doc """
  Creates an archive of events with the specified settings.

  When you create an archive,
  incoming events might not immediately start being sent to the archive. Allow a
  short period of
  time for changes to take effect. If you do not specify a pattern to filter
  events sent to the
  archive, all events are sent to the archive except replayed events. Replayed
  events are not
  sent to an archive.
  """
  @spec create_archive(map(), create_archive_request(), list()) ::
          {:ok, create_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_archive_errors()}
  def create_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateArchive", input, options)
  end

  @doc """
  Creates a connection.

  A connection defines the authorization type and credentials to use
  for authorization with an API destination HTTP endpoint.
  """
  @spec create_connection(map(), create_connection_request(), list()) ::
          {:ok, create_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_errors()}
  def create_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a new event bus within your account.

  This can be a custom event bus which you can
  use to receive events from your custom applications and services, or it can be a
  partner event
  bus which can be matched to a partner event source.
  """
  @spec create_event_bus(map(), create_event_bus_request(), list()) ::
          {:ok, create_event_bus_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_bus_errors()}
  def create_event_bus(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEventBus", input, options)
  end

  @doc """
  Called by an SaaS partner to create a partner event source.

  This operation is not used by
  Amazon Web Services customers.

  Each partner event source can be used by one Amazon Web Services account to
  create a matching partner
  event bus in that Amazon Web Services account. A SaaS partner must create one
  partner event source for each
  Amazon Web Services account that wants to receive those event types.

  A partner event source creates events based on resources within the SaaS
  partner's service
  or application.

  An Amazon Web Services account that creates a partner event bus that matches the
  partner event source can
  use that event bus to receive events from the partner, and then process them
  using Amazon Web Services Events
  rules and targets.

  Partner event source names follow this format:

  ```

  *partner_name*/*event_namespace*/*event_name*

  ```

  *partner_name* is determined during partner registration and identifies
  the partner to Amazon Web Services customers. *event_namespace* is determined by
  the
  partner and is a way for the partner to categorize their events.
  *event_name* is determined by the partner, and should uniquely identify
  an event-generating resource within the partner system. The combination of
  *event_namespace* and *event_name* should help Amazon Web Services
  customers decide whether to create an event bus to receive these events.
  """
  @spec create_partner_event_source(map(), create_partner_event_source_request(), list()) ::
          {:ok, create_partner_event_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_partner_event_source_errors()}
  def create_partner_event_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePartnerEventSource", input, options)
  end

  @doc """
  You can use this operation to temporarily stop receiving events from the
  specified partner
  event source.

  The matching event bus is not deleted.

  When you deactivate a partner event source, the source goes into PENDING state.
  If it
  remains in PENDING state for more than two weeks, it is deleted.

  To activate a deactivated partner event source, use
  [ActivateEventSource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ActivateEventSource.html).
  """
  @spec deactivate_event_source(map(), deactivate_event_source_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deactivate_event_source_errors()}
  def deactivate_event_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeactivateEventSource", input, options)
  end

  @doc """
  Removes all authorization parameters from the connection.

  This lets you remove the secret
  from the connection so you can reuse it without having to create a new
  connection.
  """
  @spec deauthorize_connection(map(), deauthorize_connection_request(), list()) ::
          {:ok, deauthorize_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deauthorize_connection_errors()}
  def deauthorize_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeauthorizeConnection", input, options)
  end

  @doc """
  Deletes the specified API destination.
  """
  @spec delete_api_destination(map(), delete_api_destination_request(), list()) ::
          {:ok, delete_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_api_destination_errors()}
  def delete_api_destination(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApiDestination", input, options)
  end

  @doc """
  Deletes the specified archive.
  """
  @spec delete_archive(map(), delete_archive_request(), list()) ::
          {:ok, delete_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_archive_errors()}
  def delete_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteArchive", input, options)
  end

  @doc """
  Deletes a connection.
  """
  @spec delete_connection(map(), delete_connection_request(), list()) ::
          {:ok, delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_errors()}
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Deletes the specified custom event bus or partner event bus.

  All rules associated with
  this event bus need to be deleted. You can't delete your account's default event
  bus.
  """
  @spec delete_event_bus(map(), delete_event_bus_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_bus_errors()}
  def delete_event_bus(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEventBus", input, options)
  end

  @doc """
  This operation is used by SaaS partners to delete a partner event source.

  This operation
  is not used by Amazon Web Services customers.

  When you delete an event source, the status of the corresponding partner event
  bus in the
  Amazon Web Services customer account becomes DELETED.
  """
  @spec delete_partner_event_source(map(), delete_partner_event_source_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_partner_event_source_errors()}
  def delete_partner_event_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePartnerEventSource", input, options)
  end

  @doc """
  Deletes the specified rule.

  Before you can delete the rule, you must remove all targets, using
  [RemoveTargets](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemoveTargets.html).

  When you delete a rule, incoming events might continue to match to the deleted
  rule. Allow
  a short period of time for changes to take effect.

  If you call delete rule multiple times for the same rule, all calls will
  succeed. When you
  call delete rule for a non-existent custom eventbus, `ResourceNotFoundException`
  is
  returned.

  Managed rules are rules created and managed by another Amazon Web Services
  service on your behalf. These
  rules are created by those other Amazon Web Services services to support
  functionality in those services. You
  can delete these rules using the `Force` option, but you should do so only if
  you
  are sure the other service is not still using that rule.
  """
  @spec delete_rule(map(), delete_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRule", input, options)
  end

  @doc """
  Retrieves details about an API destination.
  """
  @spec describe_api_destination(map(), describe_api_destination_request(), list()) ::
          {:ok, describe_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_api_destination_errors()}
  def describe_api_destination(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApiDestination", input, options)
  end

  @doc """
  Retrieves details about an archive.
  """
  @spec describe_archive(map(), describe_archive_request(), list()) ::
          {:ok, describe_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_archive_errors()}
  def describe_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeArchive", input, options)
  end

  @doc """
  Retrieves details about a connection.
  """
  @spec describe_connection(map(), describe_connection_request(), list()) ::
          {:ok, describe_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connection_errors()}
  def describe_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnection", input, options)
  end

  @doc """
  Displays details about an event bus in your account.

  This can include the external Amazon Web Services
  accounts that are permitted to write events to your default event bus, and the
  associated
  policy. For custom event buses and partner event buses, it displays the name,
  ARN, policy,
  state, and creation time.

  To enable your account to receive events from other accounts on its default
  event bus,
  use
  [PutPermission](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html).   For more information about partner event buses, see
  [CreateEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html).
  """
  @spec describe_event_bus(map(), describe_event_bus_request(), list()) ::
          {:ok, describe_event_bus_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_event_bus_errors()}
  def describe_event_bus(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventBus", input, options)
  end

  @doc """
  This operation lists details about a partner event source that is shared with
  your
  account.
  """
  @spec describe_event_source(map(), describe_event_source_request(), list()) ::
          {:ok, describe_event_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_event_source_errors()}
  def describe_event_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventSource", input, options)
  end

  @doc """
  An SaaS partner can use this operation to list details about a partner event
  source that
  they have created.

  Amazon Web Services customers do not use this operation. Instead, Amazon Web
  Services customers can use
  [DescribeEventSource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventSource.html)
  to see details about a partner event source that is
  shared with them.
  """
  @spec describe_partner_event_source(map(), describe_partner_event_source_request(), list()) ::
          {:ok, describe_partner_event_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_partner_event_source_errors()}
  def describe_partner_event_source(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePartnerEventSource", input, options)
  end

  @doc """
  Retrieves details about a replay.

  Use `DescribeReplay` to determine the
  progress of a running replay. A replay processes events to replay based on the
  time in the
  event, and replays them using 1 minute intervals. If you use `StartReplay` and
  specify an `EventStartTime` and an `EventEndTime` that covers a 20
  minute time range, the events are replayed from the first minute of that 20
  minute range
  first. Then the events from the second minute are replayed. You can use
  `DescribeReplay` to determine the progress of a replay. The value returned for
  `EventLastReplayedTime` indicates the time within the specified time range
  associated with the last event replayed.
  """
  @spec describe_replay(map(), describe_replay_request(), list()) ::
          {:ok, describe_replay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_replay_errors()}
  def describe_replay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeReplay", input, options)
  end

  @doc """
  Describes the specified rule.

  DescribeRule does not list the targets of a rule. To see the targets associated
  with a
  rule, use
  [ListTargetsByRule](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html).
  """
  @spec describe_rule(map(), describe_rule_request(), list()) ::
          {:ok, describe_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rule_errors()}
  def describe_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRule", input, options)
  end

  @doc """
  Disables the specified rule.

  A disabled rule won't match any events, and won't
  self-trigger if it has a schedule expression.

  When you disable a rule, incoming events might continue to match to the disabled
  rule.
  Allow a short period of time for changes to take effect.
  """
  @spec disable_rule(map(), disable_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_rule_errors()}
  def disable_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableRule", input, options)
  end

  @doc """
  Enables the specified rule.

  If the rule does not exist, the operation fails.

  When you enable a rule, incoming events might not immediately start matching to
  a newly
  enabled rule. Allow a short period of time for changes to take effect.
  """
  @spec enable_rule(map(), enable_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_rule_errors()}
  def enable_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableRule", input, options)
  end

  @doc """
  Retrieves a list of API destination in the account in the current Region.
  """
  @spec list_api_destinations(map(), list_api_destinations_request(), list()) ::
          {:ok, list_api_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_api_destinations_errors()}
  def list_api_destinations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApiDestinations", input, options)
  end

  @doc """
  Lists your archives.

  You can either list all the archives or you can provide a prefix to
  match to the archive names. Filter parameters are exclusive.
  """
  @spec list_archives(map(), list_archives_request(), list()) ::
          {:ok, list_archives_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_archives_errors()}
  def list_archives(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArchives", input, options)
  end

  @doc """
  Retrieves a list of connections from the account.
  """
  @spec list_connections(map(), list_connections_request(), list()) ::
          {:ok, list_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connections_errors()}
  def list_connections(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListConnections", input, options)
  end

  @doc """
  Lists all the event buses in your account, including the default event bus,
  custom event
  buses, and partner event buses.
  """
  @spec list_event_buses(map(), list_event_buses_request(), list()) ::
          {:ok, list_event_buses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_buses_errors()}
  def list_event_buses(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEventBuses", input, options)
  end

  @doc """
  You can use this to see all the partner event sources that have been shared with
  your Amazon Web Services
  account.

  For more information about partner event sources, see
  [CreateEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html).
  """
  @spec list_event_sources(map(), list_event_sources_request(), list()) ::
          {:ok, list_event_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_sources_errors()}
  def list_event_sources(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEventSources", input, options)
  end

  @doc """
  An SaaS partner can use this operation to display the Amazon Web Services
  account ID that a particular
  partner event source name is associated with.

  This operation is not used by Amazon Web Services
  customers.
  """
  @spec list_partner_event_source_accounts(
          map(),
          list_partner_event_source_accounts_request(),
          list()
        ) ::
          {:ok, list_partner_event_source_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_partner_event_source_accounts_errors()}
  def list_partner_event_source_accounts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPartnerEventSourceAccounts", input, options)
  end

  @doc """
  An SaaS partner can use this operation to list all the partner event source
  names that
  they have created.

  This operation is not used by Amazon Web Services customers.
  """
  @spec list_partner_event_sources(map(), list_partner_event_sources_request(), list()) ::
          {:ok, list_partner_event_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_partner_event_sources_errors()}
  def list_partner_event_sources(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPartnerEventSources", input, options)
  end

  @doc """
  Lists your replays.

  You can either list all the replays or you can provide a prefix to
  match to the replay names. Filter parameters are exclusive.
  """
  @spec list_replays(map(), list_replays_request(), list()) ::
          {:ok, list_replays_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_replays_errors()}
  def list_replays(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListReplays", input, options)
  end

  @doc """
  Lists the rules for the specified target.

  You can see which of the rules in Amazon
  EventBridge can invoke a specific target in your account.
  """
  @spec list_rule_names_by_target(map(), list_rule_names_by_target_request(), list()) ::
          {:ok, list_rule_names_by_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rule_names_by_target_errors()}
  def list_rule_names_by_target(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRuleNamesByTarget", input, options)
  end

  @doc """
  Lists your Amazon EventBridge rules.

  You can either list all the rules or you can provide
  a prefix to match to the rule names.

  ListRules does not list the targets of a rule. To see the targets associated
  with a rule,
  use
  [ListTargetsByRule](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html).
  """
  @spec list_rules(map(), list_rules_request(), list()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rules_errors()}
  def list_rules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRules", input, options)
  end

  @doc """
  Displays the tags associated with an EventBridge resource.

  In EventBridge, rules and event
  buses can be tagged.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the targets assigned to the specified rule.
  """
  @spec list_targets_by_rule(map(), list_targets_by_rule_request(), list()) ::
          {:ok, list_targets_by_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_targets_by_rule_errors()}
  def list_targets_by_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTargetsByRule", input, options)
  end

  @doc """
  Sends custom events to Amazon EventBridge so that they can be matched to rules.
  """
  @spec put_events(map(), put_events_request(), list()) ::
          {:ok, put_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_events_errors()}
  def put_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutEvents", input, options)
  end

  @doc """
  This is used by SaaS partners to write events to a customer's partner event bus.

  Amazon Web Services
  customers do not use this operation.
  """
  @spec put_partner_events(map(), put_partner_events_request(), list()) ::
          {:ok, put_partner_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_partner_events_errors()}
  def put_partner_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutPartnerEvents", input, options)
  end

  @doc """
  Running `PutPermission` permits the specified Amazon Web Services account or
  Amazon Web Services organization
  to put events to the specified *event bus*.

  Amazon EventBridge (CloudWatch
  Events) rules in your account are triggered by these events arriving to an event
  bus in your
  account.

  For another account to send events to your account, that external account must
  have an
  EventBridge rule with your account's event bus as a target.

  To enable multiple Amazon Web Services accounts to put events to your event bus,
  run
  `PutPermission` once for each of these accounts. Or, if all the accounts are
  members of the same Amazon Web Services organization, you can run
  `PutPermission` once specifying
  `Principal` as "*" and specifying the Amazon Web Services organization ID in
  `Condition`, to grant permissions to all accounts in that organization.

  If you grant permissions using an organization, then accounts in that
  organization must
  specify a `RoleArn` with proper permissions when they use `PutTarget` to
  add your account's event bus as a target. For more information, see [Sending and Receiving Events Between Amazon Web Services
  Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html)
  in the *Amazon EventBridge User
  Guide*.

  The permission policy on the event bus cannot exceed 10 KB in size.
  """
  @spec put_permission(map(), put_permission_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_permission_errors()}
  def put_permission(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutPermission", input, options)
  end

  @doc """
  Creates or updates the specified rule.

  Rules are enabled by default, or based on value of
  the state. You can disable a rule using
  [DisableRule](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DisableRule.html).   A single rule watches for events from a single event bus. Events generated by
  Amazon Web Services services
  go to your account's default event bus. Events generated by SaaS partner
  services or
  applications go to the matching partner event bus. If you have custom
  applications or
  services, you can specify whether their events go to your default event bus or a
  custom event
  bus that you have created. For more information, see
  [CreateEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html).

  If you are updating an existing rule, the rule is replaced with what you specify
  in this
  `PutRule` command. If you omit arguments in `PutRule`, the old values
  for those arguments are not kept. Instead, they are replaced with null values.

  When you create or update a rule, incoming events might not immediately start
  matching to
  new or updated rules. Allow a short period of time for changes to take effect.

  A rule must contain at least an EventPattern or ScheduleExpression. Rules with
  EventPatterns are triggered when a matching event is observed. Rules with
  ScheduleExpressions
  self-trigger based on the given schedule. A rule can have both an EventPattern
  and a
  ScheduleExpression, in which case the rule triggers on matching events as well
  as on a
  schedule.

  When you initially create a rule, you can optionally assign one or more tags to
  the rule.
  Tags can help you organize and categorize your resources. You can also use them
  to scope user
  permissions, by granting a user permission to access or change only rules with
  certain tag
  values. To use the `PutRule` operation and assign tags, you must have both the
  `events:PutRule` and `events:TagResource` permissions.

  If you are updating an existing rule, any tags you specify in the `PutRule`
  operation are ignored. To update the tags of an existing rule, use
  [TagResource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_TagResource.html) and
  [UntagResource](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UntagResource.html).

  Most services in Amazon Web Services treat : or / as the same character in
  Amazon Resource Names (ARNs).
  However, EventBridge uses an exact match in event patterns and rules. Be sure to
  use the
  correct ARN characters when creating event patterns so that they match the ARN
  syntax in the
  event you want to match.

  In EventBridge, it is possible to create rules that lead to infinite loops,
  where a rule
  is fired repeatedly. For example, a rule might detect that ACLs have changed on
  an S3 bucket,
  and trigger software to change them to the desired state. If the rule is not
  written
  carefully, the subsequent change to the ACLs fires the rule again, creating an
  infinite
  loop.

  To prevent this, write the rules so that the triggered actions do not re-fire
  the same
  rule. For example, your rule could fire only if ACLs are found to be in a bad
  state, instead
  of after any change.

  An infinite loop can quickly cause higher than expected charges. We recommend
  that you use
  budgeting, which alerts you when charges exceed your specified limit. For more
  information,
  see [Managing Your Costs with Budgets](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html).
  """
  @spec put_rule(map(), put_rule_request(), list()) ::
          {:ok, put_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_rule_errors()}
  def put_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRule", input, options)
  end

  @doc """
  Adds the specified targets to the specified rule, or updates the targets if they
  are
  already associated with the rule.

  Targets are the resources that are invoked when a rule is triggered.

  You can configure the following as targets for Events:

    *

  [API destination](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-destinations.html)

    *
  Amazon API Gateway REST API endpoints

    *
  API Gateway

    *
  Batch job queue

    *
  CloudWatch Logs group

    *
  CodeBuild project

    *
  CodePipeline

    *
  Amazon EC2 `CreateSnapshot` API call

    *
  Amazon EC2 `RebootInstances` API call

    *
  Amazon EC2 `StopInstances` API call

    *
  Amazon EC2 `TerminateInstances` API call

    *
  Amazon ECS tasks

    *
  Event bus in a different Amazon Web Services account or Region.

  You can use an event bus in the US East (N. Virginia) us-east-1, US West
  (Oregon)
  us-west-2, or Europe (Ireland) eu-west-1 Regions as a target for a rule.

    *
  Firehose delivery stream (Kinesis Data Firehose)

    *
  Inspector assessment template (Amazon Inspector)

    *
  Kinesis stream (Kinesis Data Stream)

    *
  Lambda function

    *
  Redshift clusters (Data API statement execution)

    *
  Amazon SNS topic

    *
  Amazon SQS queues (includes FIFO queues

    *
  SSM Automation

    *
  SSM OpsItem

    *
  SSM Run Command

    *
  Step Functions state machines

  Creating rules with built-in targets is supported only in the Amazon Web
  Services Management Console. The
  built-in targets are `EC2 CreateSnapshot API call`,

  ```
  EC2 RebootInstances API
  call
  ```

  , `EC2 StopInstances API call`, and

  ```
  EC2 TerminateInstances API
  call
  ```

  .

  For some target types, `PutTargets` provides target-specific parameters. If the
  target is a Kinesis data stream, you can optionally specify which shard the
  event goes to by
  using the `KinesisParameters` argument. To invoke a command on multiple EC2
  instances with one rule, you can use the `RunCommandParameters` field.

  To be able to make API calls against the resources that you own, Amazon
  EventBridge
  needs the appropriate permissions. For Lambda and Amazon SNS
  resources, EventBridge relies on resource-based policies. For EC2 instances,
  Kinesis Data Streams,
  Step Functions state machines and API Gateway REST APIs, EventBridge relies on
  IAM roles that you specify in the `RoleARN` argument in `PutTargets`.
  For more information, see [Authentication and Access
  Control](https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html)
  in the *Amazon EventBridge User Guide*.

  If another Amazon Web Services account is in the same region and has granted you
  permission (using
  `PutPermission`), you can send events to that account. Set that account's event
  bus as a target of the rules in your account. To send the matched events to the
  other account,
  specify that account's event bus as the `Arn` value when you run
  `PutTargets`. If your account sends events to another account, your account is
  charged for each sent event. Each event sent to another account is charged as a
  custom event.
  The account receiving the event is not charged. For more information, see
  [Amazon EventBridge Pricing](http://aws.amazon.com/eventbridge/pricing/).

  `Input`, `InputPath`, and `InputTransformer` are not
  available with `PutTarget` if the target is an event bus of a different Amazon
  Web Services
  account.

  If you are setting the event bus of another account as the target, and that
  account
  granted permission to your account through an organization instead of directly
  by the account
  ID, then you must specify a `RoleArn` with proper permissions in the
  `Target` structure. For more information, see [Sending and Receiving Events Between Amazon Web Services
  Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html)
  in the *Amazon EventBridge User
  Guide*.

  For more information about enabling cross-account events, see
  [PutPermission](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html).

  **Input**, **InputPath**, and
  **InputTransformer** are mutually exclusive and optional
  parameters of a target. When a rule is triggered due to a matched event:

    *
  If none of the following arguments are specified for a target, then the entire
  event
  is passed to the target in JSON format (unless the target is Amazon EC2 Run
  Command or
  Amazon ECS task, in which case nothing from the event is passed to the target).

    *
  If **Input** is specified in the form of valid JSON, then
  the matched event is overridden with this constant.

    *
  If **InputPath** is specified in the form of JSONPath
  (for example, `$.detail`), then only the part of the event specified in the
  path is passed to the target (for example, only the detail part of the event is
  passed).

    *
  If **InputTransformer** is specified, then one or more
  specified JSONPaths are extracted from the event and used as values in a
  template that you
  specify as the input to the target.

  When you specify `InputPath` or `InputTransformer`, you must use
  JSON dot notation, not bracket notation.

  When you add targets to a rule and the associated rule triggers soon after, new
  or updated
  targets might not be immediately invoked. Allow a short period of time for
  changes to take
  effect.

  This action can partially fail if too many requests are made at the same time.
  If that
  happens, `FailedEntryCount` is non-zero in the response and each entry in
  `FailedEntries` provides the ID of the failed target and the error code.
  """
  @spec put_targets(map(), put_targets_request(), list()) ::
          {:ok, put_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_targets_errors()}
  def put_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutTargets", input, options)
  end

  @doc """
  Revokes the permission of another Amazon Web Services account to be able to put
  events to the specified
  event bus.

  Specify the account to revoke by the `StatementId` value that you
  associated with the account when you granted it permission with `PutPermission`.
  You can find the `StatementId` by using
  [DescribeEventBus](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventBus.html).
  """
  @spec remove_permission(map(), remove_permission_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_permission_errors()}
  def remove_permission(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemovePermission", input, options)
  end

  @doc """
  Removes the specified targets from the specified rule.

  When the rule is triggered, those
  targets are no longer be invoked.

  When you remove a target, when the associated rule triggers, removed targets
  might
  continue to be invoked. Allow a short period of time for changes to take effect.

  This action can partially fail if too many requests are made at the same time.
  If that
  happens, `FailedEntryCount` is non-zero in the response and each entry in
  `FailedEntries` provides the ID of the failed target and the error code.
  """
  @spec remove_targets(map(), remove_targets_request(), list()) ::
          {:ok, remove_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_targets_errors()}
  def remove_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTargets", input, options)
  end

  @doc """
  Starts the specified replay.

  Events are not necessarily replayed in the exact same order
  that they were added to the archive. A replay processes events to replay based
  on the time in
  the event, and replays them using 1 minute intervals. If you specify an
  `EventStartTime` and an `EventEndTime` that covers a 20 minute time
  range, the events are replayed from the first minute of that 20 minute range
  first. Then the
  events from the second minute are replayed. You can use `DescribeReplay` to
  determine the progress of a replay. The value returned for
  `EventLastReplayedTime`
  indicates the time within the specified time range associated with the last
  event
  replayed.
  """
  @spec start_replay(map(), start_replay_request(), list()) ::
          {:ok, start_replay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_replay_errors()}
  def start_replay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartReplay", input, options)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified EventBridge
  resource.

  Tags can
  help you organize and categorize your resources. You can also use them to scope
  user
  permissions by granting a user permission to access or change only resources
  with certain tag
  values. In EventBridge, rules and event buses can be tagged.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of
  characters.

  You can use the `TagResource` action with a resource that already has tags. If
  you specify a new tag key, this tag is appended to the list of tags associated
  with the
  resource. If you specify a tag key that is already associated with the resource,
  the new tag
  value that you specify replaces the previous value for that tag.

  You can associate as many as 50 tags with a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Tests whether the specified event pattern matches the provided event.

  Most services in Amazon Web Services treat : or / as the same character in
  Amazon Resource Names (ARNs).
  However, EventBridge uses an exact match in event patterns and rules. Be sure to
  use the
  correct ARN characters when creating event patterns so that they match the ARN
  syntax in the
  event you want to match.
  """
  @spec test_event_pattern(map(), test_event_pattern_request(), list()) ::
          {:ok, test_event_pattern_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_event_pattern_errors()}
  def test_event_pattern(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestEventPattern", input, options)
  end

  @doc """
  Removes one or more tags from the specified EventBridge resource.

  In Amazon EventBridge
  (CloudWatch Events), rules and event buses can be tagged.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an API destination.
  """
  @spec update_api_destination(map(), update_api_destination_request(), list()) ::
          {:ok, update_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_api_destination_errors()}
  def update_api_destination(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApiDestination", input, options)
  end

  @doc """
  Updates the specified archive.
  """
  @spec update_archive(map(), update_archive_request(), list()) ::
          {:ok, update_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_archive_errors()}
  def update_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateArchive", input, options)
  end

  @doc """
  Updates settings for a connection.
  """
  @spec update_connection(map(), update_connection_request(), list()) ::
          {:ok, update_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connection_errors()}
  def update_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConnection", input, options)
  end
end
