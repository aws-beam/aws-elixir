# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EventBridge do
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
    required("ReplayName") => String.t()
  }
  """
  @type cancel_replay_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_event_bus_request() :: %{
    optional("Name") => String.t()
  }
  """
  @type describe_event_bus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connection_request() :: %{
    optional("AuthParameters") => update_connection_auth_request_parameters(),
    optional("AuthorizationType") => list(any()),
    optional("Description") => String.t(),
    required("Name") => String.t()
  }
  """
  @type update_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deauthorize_connection_response() :: %{
    "ConnectionArn" => String.t(),
    "ConnectionState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "LastAuthorizedTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer()
  }
  """
  @type deauthorize_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_event_bus_request() :: %{
    optional("EventSourceName") => String.t(),
    optional("Tags") => list(tag()()),
    required("Name") => String.t()
  }
  """
  @type create_event_bus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_retry_strategy() :: %{
    "Attempts" => integer()
  }
  """
  @type batch_retry_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_archives_response() :: %{
    "Archives" => list(archive()()),
    "NextToken" => String.t()
  }
  """
  @type list_archives_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_partner_events_request_entry() :: %{
    "Detail" => String.t(),
    "DetailType" => String.t(),
    "Resources" => list(String.t()()),
    "Source" => String.t(),
    "Time" => non_neg_integer()
  }
  """
  @type put_partner_events_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_query_string_parameter() :: %{
    "IsValueSecret" => boolean(),
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type connection_query_string_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connection_o_auth_request_parameters() :: %{
    "AuthorizationEndpoint" => String.t(),
    "ClientParameters" => update_connection_o_auth_client_request_parameters(),
    "HttpMethod" => list(any()),
    "OAuthHttpParameters" => connection_http_parameters()
  }
  """
  @type update_connection_o_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_rule_response() :: %{
    "RuleArn" => String.t()
  }
  """
  @type put_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  run_command_target() :: %{
    "Key" => String.t(),
    "Values" => list(String.t()())
  }
  """
  @type run_command_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_event_pattern_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_event_pattern_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_endpoint_response() :: %{
    "Arn" => String.t(),
    "EndpointId" => String.t(),
    "EndpointUrl" => String.t(),
    "EventBuses" => list(endpoint_event_bus()()),
    "Name" => String.t(),
    "ReplicationConfig" => replication_config(),
    "RoleArn" => String.t(),
    "RoutingConfig" => routing_config(),
    "State" => list(any())
  }
  """
  @type update_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_event_source_response() :: %{
    "Arn" => String.t(),
    "CreatedBy" => String.t(),
    "CreationTime" => non_neg_integer(),
    "ExpirationTime" => non_neg_integer(),
    "Name" => String.t(),
    "State" => list(any())
  }
  """
  @type describe_event_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  policy_length_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type policy_length_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_targets_result_entry() :: %{
    "ErrorCode" => String.t(),
    "ErrorMessage" => String.t(),
    "TargetId" => String.t()
  }
  """
  @type put_targets_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_connection_request() :: %{
    required("Name") => String.t()
  }
  """
  @type describe_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_api_destination_request() :: %{
    required("Name") => String.t()
  }
  """
  @type describe_api_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  enable_rule_request() :: %{
    optional("EventBusName") => String.t(),
    required("Name") => String.t()
  }
  """
  @type enable_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_archive_request() :: %{
    required("ArchiveName") => String.t()
  }
  """
  @type describe_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  test_event_pattern_request() :: %{
    required("Event") => String.t(),
    required("EventPattern") => String.t()
  }
  """
  @type test_event_pattern_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_auth_response_parameters() :: %{
    "ApiKeyAuthParameters" => connection_api_key_auth_response_parameters(),
    "BasicAuthParameters" => connection_basic_auth_response_parameters(),
    "InvocationHttpParameters" => connection_http_parameters(),
    "OAuthParameters" => connection_o_auth_response_parameters()
  }
  """
  @type connection_auth_response_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deactivate_event_source_request() :: %{
    required("Name") => String.t()
  }
  """
  @type deactivate_event_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_event_sources_response() :: %{
    "EventSources" => list(event_source()()),
    "NextToken" => String.t()
  }
  """
  @type list_event_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_array_properties() :: %{
    "Size" => integer()
  }
  """
  @type batch_array_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  partner_event_source_account() :: %{
    "Account" => String.t(),
    "CreationTime" => non_neg_integer(),
    "ExpirationTime" => non_neg_integer(),
    "State" => list(any())
  }
  """
  @type partner_event_source_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connection_o_auth_request_parameters() :: %{
    "AuthorizationEndpoint" => String.t(),
    "ClientParameters" => create_connection_o_auth_client_request_parameters(),
    "HttpMethod" => list(any()),
    "OAuthHttpParameters" => connection_http_parameters()
  }
  """
  @type create_connection_o_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_partner_event_source_request() :: %{
    required("Account") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_partner_event_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_connections_response() :: %{
    "Connections" => list(connection()()),
    "NextToken" => String.t()
  }
  """
  @type list_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_parameters() :: %{
    "ArrayProperties" => batch_array_properties(),
    "JobDefinition" => String.t(),
    "JobName" => String.t(),
    "RetryStrategy" => batch_retry_strategy()
  }
  """
  @type batch_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_event_sources_request() :: %{
    optional("Limit") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t()
  }
  """
  @type list_event_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  run_command_parameters() :: %{
    "RunCommandTargets" => list(run_command_target()())
  }
  """
  @type run_command_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_endpoint_request() :: %{
    optional("Description") => String.t(),
    optional("ReplicationConfig") => replication_config(),
    optional("RoleArn") => String.t(),
    required("EventBuses") => list(endpoint_event_bus()()),
    required("Name") => String.t(),
    required("RoutingConfig") => routing_config()
  }
  """
  @type create_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  http_parameters() :: %{
    "HeaderParameters" => map(),
    "PathParameterValues" => list(String.t()()),
    "QueryStringParameters" => map()
  }
  """
  @type http_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  app_sync_parameters() :: %{
    "GraphQLOperation" => String.t()
  }
  """
  @type app_sync_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sage_maker_pipeline_parameter() :: %{
    "Name" => String.t(),
    "Value" => String.t()
  }
  """
  @type sage_maker_pipeline_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_header_parameter() :: %{
    "IsValueSecret" => boolean(),
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type connection_header_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_api_destination_response() :: %{

  }
  """
  @type delete_api_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_event_bus_response() :: %{
    "EventBusArn" => String.t()
  }
  """
  @type create_event_bus_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_endpoint_request() :: %{
    optional("Description") => String.t(),
    optional("EventBuses") => list(endpoint_event_bus()()),
    optional("ReplicationConfig") => replication_config(),
    optional("RoleArn") => String.t(),
    optional("RoutingConfig") => routing_config(),
    required("Name") => String.t()
  }
  """
  @type update_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_events_response() :: %{
    "Entries" => list(put_events_result_entry()()),
    "FailedEntryCount" => integer()
  }
  """
  @type put_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  routing_config() :: %{
    "FailoverConfig" => failover_config()
  }
  """
  @type routing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_events_request_entry() :: %{
    "Detail" => String.t(),
    "DetailType" => String.t(),
    "EventBusName" => String.t(),
    "Resources" => list(String.t()()),
    "Source" => String.t(),
    "Time" => non_neg_integer(),
    "TraceHeader" => String.t()
  }
  """
  @type put_events_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_state_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_replay_response() :: %{
    "Description" => String.t(),
    "Destination" => replay_destination(),
    "EventEndTime" => non_neg_integer(),
    "EventLastReplayedTime" => non_neg_integer(),
    "EventSourceArn" => String.t(),
    "EventStartTime" => non_neg_integer(),
    "ReplayArn" => String.t(),
    "ReplayEndTime" => non_neg_integer(),
    "ReplayName" => String.t(),
    "ReplayStartTime" => non_neg_integer(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type describe_replay_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_api_key_auth_response_parameters() :: %{
    "ApiKeyName" => String.t()
  }
  """
  @type connection_api_key_auth_response_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replay() :: %{
    "EventEndTime" => non_neg_integer(),
    "EventLastReplayedTime" => non_neg_integer(),
    "EventSourceArn" => String.t(),
    "EventStartTime" => non_neg_integer(),
    "ReplayEndTime" => non_neg_integer(),
    "ReplayName" => String.t(),
    "ReplayStartTime" => non_neg_integer(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type replay() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rules_request() :: %{
    optional("EventBusName") => String.t(),
    optional("Limit") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t()
  }
  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  event_source() :: %{
    "Arn" => String.t(),
    "CreatedBy" => String.t(),
    "CreationTime" => non_neg_integer(),
    "ExpirationTime" => non_neg_integer(),
    "Name" => String.t(),
    "State" => list(any())
  }
  """
  @type event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connection_auth_request_parameters() :: %{
    "ApiKeyAuthParameters" => update_connection_api_key_auth_request_parameters(),
    "BasicAuthParameters" => update_connection_basic_auth_request_parameters(),
    "InvocationHttpParameters" => connection_http_parameters(),
    "OAuthParameters" => update_connection_o_auth_request_parameters()
  }
  """
  @type update_connection_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_event_bus() :: %{
    "EventBusArn" => String.t()
  }
  """
  @type endpoint_event_bus() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_partner_event_source_response() :: %{
    "Arn" => String.t(),
    "Name" => String.t()
  }
  """
  @type describe_partner_event_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_archive_response() :: %{

  }
  """
  @type delete_archive_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connection_api_key_auth_request_parameters() :: %{
    "ApiKeyName" => String.t(),
    "ApiKeyValue" => String.t()
  }
  """
  @type update_connection_api_key_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_archive_request() :: %{
    optional("Description") => String.t(),
    optional("EventPattern") => String.t(),
    optional("RetentionDays") => integer(),
    required("ArchiveName") => String.t(),
    required("EventSourceArn") => String.t()
  }
  """
  @type create_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_rule_request() :: %{
    optional("EventBusName") => String.t(),
    optional("Force") => boolean(),
    required("Name") => String.t()
  }
  """
  @type delete_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_archive_request() :: %{
    required("ArchiveName") => String.t()
  }
  """
  @type delete_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_partner_event_source_accounts_request() :: %{
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    required("EventSourceName") => String.t()
  }
  """
  @type list_partner_event_source_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_connection_response() :: %{
    "AuthParameters" => connection_auth_response_parameters(),
    "AuthorizationType" => list(any()),
    "ConnectionArn" => String.t(),
    "ConnectionState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "Description" => String.t(),
    "LastAuthorizedTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t(),
    "SecretArn" => String.t(),
    "StateReason" => String.t()
  }
  """
  @type describe_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_targets_result_entry() :: %{
    "ErrorCode" => String.t(),
    "ErrorMessage" => String.t(),
    "TargetId" => String.t()
  }
  """
  @type remove_targets_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_api_destination_response() :: %{
    "ApiDestinationArn" => String.t(),
    "ApiDestinationState" => list(any()),
    "ConnectionArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "Description" => String.t(),
    "HttpMethod" => list(any()),
    "InvocationEndpoint" => String.t(),
    "InvocationRateLimitPerSecond" => integer(),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t()
  }
  """
  @type describe_api_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target() :: %{
    "AppSyncParameters" => app_sync_parameters(),
    "Arn" => String.t(),
    "BatchParameters" => batch_parameters(),
    "DeadLetterConfig" => dead_letter_config(),
    "EcsParameters" => ecs_parameters(),
    "HttpParameters" => http_parameters(),
    "Id" => String.t(),
    "Input" => String.t(),
    "InputPath" => String.t(),
    "InputTransformer" => input_transformer(),
    "KinesisParameters" => kinesis_parameters(),
    "RedshiftDataParameters" => redshift_data_parameters(),
    "RetryPolicy" => retry_policy(),
    "RoleArn" => String.t(),
    "RunCommandParameters" => run_command_parameters(),
    "SageMakerPipelineParameters" => sage_maker_pipeline_parameters(),
    "SqsParameters" => sqs_parameters()
  }
  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_connections_request() :: %{
    optional("ConnectionState") => list(any()),
    optional("Limit") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t()
  }
  """
  @type list_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_archives_request() :: %{
    optional("EventSourceArn") => String.t(),
    optional("Limit") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t(),
    optional("State") => list(any())
  }
  """
  @type list_archives_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_archive_response() :: %{
    "ArchiveArn" => String.t(),
    "ArchiveName" => String.t(),
    "CreationTime" => non_neg_integer(),
    "Description" => String.t(),
    "EventCount" => float(),
    "EventPattern" => String.t(),
    "EventSourceArn" => String.t(),
    "RetentionDays" => integer(),
    "SizeBytes" => float(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type describe_archive_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_replays_request() :: %{
    optional("EventSourceArn") => String.t(),
    optional("Limit") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t(),
    optional("State") => list(any())
  }
  """
  @type list_replays_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  redshift_data_parameters() :: %{
    "Database" => String.t(),
    "DbUser" => String.t(),
    "SecretManagerArn" => String.t(),
    "Sql" => String.t(),
    "Sqls" => list(String.t()()),
    "StatementName" => String.t(),
    "WithEvent" => boolean()
  }
  """
  @type redshift_data_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_replay_response() :: %{
    "ReplayArn" => String.t(),
    "ReplayStartTime" => non_neg_integer(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type start_replay_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  secondary() :: %{
    "Route" => String.t()
  }
  """
  @type secondary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deauthorize_connection_request() :: %{
    required("Name") => String.t()
  }
  """
  @type deauthorize_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_transformer() :: %{
    "InputPathsMap" => map(),
    "InputTemplate" => String.t()
  }
  """
  @type input_transformer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_http_parameters() :: %{
    "BodyParameters" => list(connection_body_parameter()()),
    "HeaderParameters" => list(connection_header_parameter()()),
    "QueryStringParameters" => list(connection_query_string_parameter()())
  }
  """
  @type connection_http_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_api_destination_request() :: %{
    optional("Description") => String.t(),
    optional("InvocationRateLimitPerSecond") => integer(),
    required("ConnectionArn") => String.t(),
    required("HttpMethod") => list(any()),
    required("InvocationEndpoint") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_api_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_endpoint_response() :: %{

  }
  """
  @type delete_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_endpoints_response() :: %{
    "Endpoints" => list(endpoint()()),
    "NextToken" => String.t()
  }
  """
  @type list_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_events_request() :: %{
    optional("EndpointId") => String.t(),
    required("Entries") => list(put_events_request_entry()())
  }
  """
  @type put_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection() :: %{
    "AuthorizationType" => list(any()),
    "ConnectionArn" => String.t(),
    "ConnectionState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "LastAuthorizedTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t(),
    "StateReason" => String.t()
  }
  """
  @type connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  primary() :: %{
    "HealthCheck" => String.t()
  }
  """
  @type primary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  activate_event_source_request() :: %{
    required("Name") => String.t()
  }
  """
  @type activate_event_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replay_destination() :: %{
    "Arn" => String.t(),
    "FilterArns" => list(String.t()())
  }
  """
  @type replay_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_replays_response() :: %{
    "NextToken" => String.t(),
    "Replays" => list(replay()())
  }
  """
  @type list_replays_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_event_buses_request() :: %{
    optional("Limit") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t()
  }
  """
  @type list_event_buses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_event_source_request() :: %{
    required("Name") => String.t()
  }
  """
  @type describe_event_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_api_destination_response() :: %{
    "ApiDestinationArn" => String.t(),
    "ApiDestinationState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer()
  }
  """
  @type create_api_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_permission_request() :: %{
    optional("EventBusName") => String.t(),
    optional("RemoveAllPermissions") => boolean(),
    optional("StatementId") => String.t()
  }
  """
  @type remove_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_endpoint_request() :: %{
    optional("HomeRegion") => String.t(),
    required("Name") => String.t()
  }
  """
  @type describe_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sage_maker_pipeline_parameters() :: %{
    "PipelineParameterList" => list(sage_maker_pipeline_parameter()())
  }
  """
  @type sage_maker_pipeline_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  managed_rule_exception() :: %{
    "message" => String.t()
  }
  """
  @type managed_rule_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disable_rule_request() :: %{
    optional("EventBusName") => String.t(),
    required("Name") => String.t()
  }
  """
  @type disable_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connection_response() :: %{
    "ConnectionArn" => String.t(),
    "ConnectionState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "LastAuthorizedTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer()
  }
  """
  @type update_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sqs_parameters() :: %{
    "MessageGroupId" => String.t()
  }
  """
  @type sqs_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_permission_request() :: %{
    optional("Action") => String.t(),
    optional("Condition") => condition(),
    optional("EventBusName") => String.t(),
    optional("Policy") => String.t(),
    optional("Principal") => String.t(),
    optional("StatementId") => String.t()
  }
  """
  @type put_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_api_destinations_response() :: %{
    "ApiDestinations" => list(api_destination()()),
    "NextToken" => String.t()
  }
  """
  @type list_api_destinations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_event_bus_request() :: %{
    required("Name") => String.t()
  }
  """
  @type delete_event_bus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  condition() :: %{
    "Key" => String.t(),
    "Type" => String.t(),
    "Value" => String.t()
  }
  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_partner_events_response() :: %{
    "Entries" => list(put_partner_events_result_entry()()),
    "FailedEntryCount" => integer()
  }
  """
  @type put_partner_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  partner_event_source() :: %{
    "Arn" => String.t(),
    "Name" => String.t()
  }
  """
  @type partner_event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  operation_disabled_exception() :: %{
    "message" => String.t()
  }
  """
  @type operation_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rule() :: %{
    "Arn" => String.t(),
    "Description" => String.t(),
    "EventBusName" => String.t(),
    "EventPattern" => String.t(),
    "ManagedBy" => String.t(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "ScheduleExpression" => String.t(),
    "State" => list(any())
  }
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_events_result_entry() :: %{
    "ErrorCode" => String.t(),
    "ErrorMessage" => String.t(),
    "EventId" => String.t()
  }
  """
  @type put_events_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_api_destination_request() :: %{
    optional("ConnectionArn") => String.t(),
    optional("Description") => String.t(),
    optional("HttpMethod") => list(any()),
    optional("InvocationEndpoint") => String.t(),
    optional("InvocationRateLimitPerSecond") => integer(),
    required("Name") => String.t()
  }
  """
  @type update_api_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint() :: %{
    "Arn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "Description" => String.t(),
    "EndpointId" => String.t(),
    "EndpointUrl" => String.t(),
    "EventBuses" => list(endpoint_event_bus()()),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t(),
    "ReplicationConfig" => replication_config(),
    "RoleArn" => String.t(),
    "RoutingConfig" => routing_config(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connection_api_key_auth_request_parameters() :: %{
    "ApiKeyName" => String.t(),
    "ApiKeyValue" => String.t()
  }
  """
  @type create_connection_api_key_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_endpoints_request() :: %{
    optional("HomeRegion") => String.t(),
    optional("MaxResults") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t()
  }
  """
  @type list_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_rule_request() :: %{
    optional("EventBusName") => String.t(),
    required("Name") => String.t()
  }
  """
  @type describe_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connection_o_auth_client_request_parameters() :: %{
    "ClientID" => String.t(),
    "ClientSecret" => String.t()
  }
  """
  @type create_connection_o_auth_client_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  capacity_provider_strategy_item() :: %{
    "base" => integer(),
    "capacityProvider" => String.t(),
    "weight" => integer()
  }
  """
  @type capacity_provider_strategy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_endpoint_request() :: %{
    required("Name") => String.t()
  }
  """
  @type delete_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  placement_constraint() :: %{
    "expression" => String.t(),
    "type" => list(any())
  }
  """
  @type placement_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_configuration() :: %{
    "awsvpcConfiguration" => aws_vpc_configuration()
  }
  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  api_destination() :: %{
    "ApiDestinationArn" => String.t(),
    "ApiDestinationState" => list(any()),
    "ConnectionArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "HttpMethod" => list(any()),
    "InvocationEndpoint" => String.t(),
    "InvocationRateLimitPerSecond" => integer(),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t()
  }
  """
  @type api_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_exception() :: %{
    "message" => String.t()
  }
  """
  @type internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rules_response() :: %{
    "NextToken" => String.t(),
    "Rules" => list(rule()())
  }
  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_endpoint_response() :: %{
    "Arn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "Description" => String.t(),
    "EndpointId" => String.t(),
    "EndpointUrl" => String.t(),
    "EventBuses" => list(endpoint_event_bus()()),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t(),
    "ReplicationConfig" => replication_config(),
    "RoleArn" => String.t(),
    "RoutingConfig" => routing_config(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type describe_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_partner_event_source_request() :: %{
    required("Name") => String.t()
  }
  """
  @type describe_partner_event_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_partner_event_source_response() :: %{
    "EventSourceArn" => String.t()
  }
  """
  @type create_partner_event_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connection_basic_auth_request_parameters() :: %{
    "Password" => String.t(),
    "Username" => String.t()
  }
  """
  @type update_connection_basic_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_partner_event_sources_request() :: %{
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    required("NamePrefix") => String.t()
  }
  """
  @type list_partner_event_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_event_bus_response() :: %{
    "Arn" => String.t(),
    "Name" => String.t(),
    "Policy" => String.t()
  }
  """
  @type describe_event_bus_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_targets_request() :: %{
    optional("EventBusName") => String.t(),
    optional("Force") => boolean(),
    required("Ids") => list(String.t()()),
    required("Rule") => String.t()
  }
  """
  @type remove_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dead_letter_config() :: %{
    "Arn" => String.t()
  }
  """
  @type dead_letter_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  concurrent_modification_exception() :: %{
    "message" => String.t()
  }
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_api_destination_response() :: %{
    "ApiDestinationArn" => String.t(),
    "ApiDestinationState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer()
  }
  """
  @type update_api_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cancel_replay_response() :: %{
    "ReplayArn" => String.t(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type cancel_replay_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_connection_response() :: %{
    "ConnectionArn" => String.t(),
    "ConnectionState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "LastAuthorizedTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer()
  }
  """
  @type delete_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("ResourceARN") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_rule_request() :: %{
    optional("Description") => String.t(),
    optional("EventBusName") => String.t(),
    optional("EventPattern") => String.t(),
    optional("RoleArn") => String.t(),
    optional("ScheduleExpression") => String.t(),
    optional("State") => list(any()),
    optional("Tags") => list(tag()()),
    required("Name") => String.t()
  }
  """
  @type put_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_partner_event_sources_response() :: %{
    "NextToken" => String.t(),
    "PartnerEventSources" => list(partner_event_source()())
  }
  """
  @type list_partner_event_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_replay_request() :: %{
    required("ReplayName") => String.t()
  }
  """
  @type describe_replay_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_api_destinations_request() :: %{
    optional("ConnectionArn") => String.t(),
    optional("Limit") => integer(),
    optional("NamePrefix") => String.t(),
    optional("NextToken") => String.t()
  }
  """
  @type list_api_destinations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_archive_response() :: %{
    "ArchiveArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type create_archive_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_replay_request() :: %{
    optional("Description") => String.t(),
    required("Destination") => replay_destination(),
    required("EventEndTime") => non_neg_integer(),
    required("EventSourceArn") => String.t(),
    required("EventStartTime") => non_neg_integer(),
    required("ReplayName") => String.t()
  }
  """
  @type start_replay_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_o_auth_response_parameters() :: %{
    "AuthorizationEndpoint" => String.t(),
    "ClientParameters" => connection_o_auth_client_response_parameters(),
    "HttpMethod" => list(any()),
    "OAuthHttpParameters" => connection_http_parameters()
  }
  """
  @type connection_o_auth_response_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  archive() :: %{
    "ArchiveName" => String.t(),
    "CreationTime" => non_neg_integer(),
    "EventCount" => float(),
    "EventSourceArn" => String.t(),
    "RetentionDays" => integer(),
    "SizeBytes" => float(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type archive() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_targets_response() :: %{
    "FailedEntries" => list(remove_targets_result_entry()()),
    "FailedEntryCount" => integer()
  }
  """
  @type remove_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connection_response() :: %{
    "ConnectionArn" => String.t(),
    "ConnectionState" => list(any()),
    "CreationTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer()
  }
  """
  @type create_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_event_buses_response() :: %{
    "EventBuses" => list(event_bus()()),
    "NextToken" => String.t()
  }
  """
  @type list_event_buses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_archive_request() :: %{
    optional("Description") => String.t(),
    optional("EventPattern") => String.t(),
    optional("RetentionDays") => integer(),
    required("ArchiveName") => String.t()
  }
  """
  @type update_archive_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rule_names_by_target_request() :: %{
    optional("EventBusName") => String.t(),
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    required("TargetArn") => String.t()
  }
  """
  @type list_rule_names_by_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  aws_vpc_configuration() :: %{
    "AssignPublicIp" => list(any()),
    "SecurityGroups" => list(String.t()()),
    "Subnets" => list(String.t()())
  }
  """
  @type aws_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_endpoint_response() :: %{
    "Arn" => String.t(),
    "EventBuses" => list(endpoint_event_bus()()),
    "Name" => String.t(),
    "ReplicationConfig" => replication_config(),
    "RoleArn" => String.t(),
    "RoutingConfig" => routing_config(),
    "State" => list(any())
  }
  """
  @type create_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_partner_events_result_entry() :: %{
    "ErrorCode" => String.t(),
    "ErrorMessage" => String.t(),
    "EventId" => String.t()
  }
  """
  @type put_partner_events_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connection_basic_auth_request_parameters() :: %{
    "Password" => String.t(),
    "Username" => String.t()
  }
  """
  @type create_connection_basic_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_partner_events_request() :: %{
    required("Entries") => list(put_partner_events_request_entry()())
  }
  """
  @type put_partner_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_already_exists_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_parameters() :: %{
    "PartitionKeyPath" => String.t()
  }
  """
  @type kinesis_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_targets_by_rule_response() :: %{
    "NextToken" => String.t(),
    "Targets" => list(target()())
  }
  """
  @type list_targets_by_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_connection_request() :: %{
    required("Name") => String.t()
  }
  """
  @type delete_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_config() :: %{
    "State" => list(any())
  }
  """
  @type replication_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_archive_response() :: %{
    "ArchiveArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "State" => list(any()),
    "StateReason" => String.t()
  }
  """
  @type update_archive_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  test_event_pattern_response() :: %{
    "Result" => boolean()
  }
  """
  @type test_event_pattern_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  illegal_status_exception() :: %{
    "message" => String.t()
  }
  """
  @type illegal_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_targets_by_rule_request() :: %{
    optional("EventBusName") => String.t(),
    optional("Limit") => integer(),
    optional("NextToken") => String.t(),
    required("Rule") => String.t()
  }
  """
  @type list_targets_by_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  retry_policy() :: %{
    "MaximumEventAgeInSeconds" => integer(),
    "MaximumRetryAttempts" => integer()
  }
  """
  @type retry_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_body_parameter() :: %{
    "IsValueSecret" => boolean(),
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type connection_body_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  failover_config() :: %{
    "Primary" => primary(),
    "Secondary" => secondary()
  }
  """
  @type failover_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_basic_auth_response_parameters() :: %{
    "Username" => String.t()
  }
  """
  @type connection_basic_auth_response_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_targets_request() :: %{
    optional("EventBusName") => String.t(),
    required("Rule") => String.t(),
    required("Targets") => list(target()())
  }
  """
  @type put_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connection_request() :: %{
    optional("Description") => String.t(),
    required("AuthParameters") => create_connection_auth_request_parameters(),
    required("AuthorizationType") => list(any()),
    required("Name") => String.t()
  }
  """
  @type create_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connection_o_auth_client_request_parameters() :: %{
    "ClientID" => String.t(),
    "ClientSecret" => String.t()
  }
  """
  @type update_connection_o_auth_client_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  event_bus() :: %{
    "Arn" => String.t(),
    "Name" => String.t(),
    "Policy" => String.t()
  }
  """
  @type event_bus() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connection_auth_request_parameters() :: %{
    "ApiKeyAuthParameters" => create_connection_api_key_auth_request_parameters(),
    "BasicAuthParameters" => create_connection_basic_auth_request_parameters(),
    "InvocationHttpParameters" => connection_http_parameters(),
    "OAuthParameters" => create_connection_o_auth_request_parameters()
  }
  """
  @type create_connection_auth_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_api_destination_request() :: %{
    required("Name") => String.t()
  }
  """
  @type delete_api_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_o_auth_client_response_parameters() :: %{
    "ClientID" => String.t()
  }
  """
  @type connection_o_auth_client_response_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_rule_response() :: %{
    "Arn" => String.t(),
    "CreatedBy" => String.t(),
    "Description" => String.t(),
    "EventBusName" => String.t(),
    "EventPattern" => String.t(),
    "ManagedBy" => String.t(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "ScheduleExpression" => String.t(),
    "State" => list(any())
  }
  """
  @type describe_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_partner_event_source_accounts_response() :: %{
    "NextToken" => String.t(),
    "PartnerEventSourceAccounts" => list(partner_event_source_account()())
  }
  """
  @type list_partner_event_source_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rule_names_by_target_response() :: %{
    "NextToken" => String.t(),
    "RuleNames" => list(String.t()())
  }
  """
  @type list_rule_names_by_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_partner_event_source_request() :: %{
    required("Account") => String.t(),
    required("Name") => String.t()
  }
  """
  @type delete_partner_event_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  placement_strategy() :: %{
    "field" => String.t(),
    "type" => list(any())
  }
  """
  @type placement_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ecs_parameters() :: %{
    "CapacityProviderStrategy" => list(capacity_provider_strategy_item()()),
    "EnableECSManagedTags" => boolean(),
    "EnableExecuteCommand" => boolean(),
    "Group" => String.t(),
    "LaunchType" => list(any()),
    "NetworkConfiguration" => network_configuration(),
    "PlacementConstraints" => list(placement_constraint()()),
    "PlacementStrategy" => list(placement_strategy()()),
    "PlatformVersion" => String.t(),
    "PropagateTags" => list(any()),
    "ReferenceId" => String.t(),
    "Tags" => list(tag()()),
    "TaskCount" => integer(),
    "TaskDefinitionArn" => String.t()
  }
  """
  @type ecs_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_targets_response() :: %{
    "FailedEntries" => list(put_targets_result_entry()()),
    "FailedEntryCount" => integer()
  }
  """
  @type put_targets_response() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2015-10-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "events",
      global?: false,
      protocol: "json",
      service_id: "EventBridge",
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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_state_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_not_found_exception()}
  def activate_event_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivateEventSource", input, options)
  end

  @doc """
  Cancels the specified replay.
  """
  @spec cancel_replay(map(), cancel_replay_request(), list()) ::
          {:ok, cancel_replay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, illegal_status_exception()}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def cancel_replay(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelReplay", input, options)
  end

  @doc """
  Creates an API destination, which is an HTTP invocation endpoint configured as a
  target
  for events.

  API destinations do not support private destinations, such as interface VPC
  endpoints.

  For more information, see [API destinations](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-destinations.html)
  in the *EventBridge User Guide*.
  """
  @spec create_api_destination(map(), create_api_destination_request(), list()) ::
          {:ok, create_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
  def create_api_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_event_pattern_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
  def create_archive(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
  def create_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a global endpoint.

  Global endpoints improve your application's availability by making it
  regional-fault tolerant. To do this, you define a primary and secondary Region
  with event buses in each Region. You also create a Amazon Route 53 health check
  that will tell EventBridge to route events to the secondary Region when an
  "unhealthy" state
  is encountered and events will be routed back to the primary Region when the
  health check reports a "healthy" state.
  """
  @spec create_endpoint(map(), create_endpoint_request(), list()) ::
          {:ok, create_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
  def create_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpoint", input, options)
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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_state_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
  def create_event_bus(%Client{} = client, input, options \\ []) do
    meta = metadata()

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

    *

  *partner_name* is determined during partner registration, and
  identifies the partner to Amazon Web Services customers.

    *

  *event_namespace* is determined by the partner, and is a way for
  the partner to categorize their events.

    *

  *event_name* is determined by the partner, and should uniquely identify
  an event-generating resource within the partner system.

  The *event_name* must be unique across all Amazon Web Services customers. This
  is because the event source is a shared resource
  between the partner and customer accounts, and each partner event source unique
  in the partner account.

  The combination of
  *event_namespace* and *event_name* should help Amazon Web Services
  customers decide whether to create an event bus to receive these events.
  """
  @spec create_partner_event_source(map(), create_partner_event_source_request(), list()) ::
          {:ok, create_partner_event_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_already_exists_exception()}
  def create_partner_event_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_state_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_not_found_exception()}
  def deactivate_event_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def deauthorize_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeauthorizeConnection", input, options)
  end

  @doc """
  Deletes the specified API destination.
  """
  @spec delete_api_destination(map(), delete_api_destination_request(), list()) ::
          {:ok, delete_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def delete_api_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApiDestination", input, options)
  end

  @doc """
  Deletes the specified archive.
  """
  @spec delete_archive(map(), delete_archive_request(), list()) ::
          {:ok, delete_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def delete_archive(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteArchive", input, options)
  end

  @doc """
  Deletes a connection.
  """
  @spec delete_connection(map(), delete_connection_request(), list()) ::
          {:ok, delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Delete an existing global endpoint.

  For more information about global endpoints, see [Making applications Regional-fault tolerant with global endpoints and event
  replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
  in the *Amazon EventBridge User Guide*.
  """
  @spec delete_endpoint(map(), delete_endpoint_request(), list()) ::
          {:ok, delete_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpoint", input, options)
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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
  def delete_event_bus(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
  def delete_partner_event_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def delete_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRule", input, options)
  end

  @doc """
  Retrieves details about an API destination.
  """
  @spec describe_api_destination(map(), describe_api_destination_request(), list()) ::
          {:ok, describe_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def describe_api_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApiDestination", input, options)
  end

  @doc """
  Retrieves details about an archive.
  """
  @spec describe_archive(map(), describe_archive_request(), list()) ::
          {:ok, describe_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
  def describe_archive(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeArchive", input, options)
  end

  @doc """
  Retrieves details about a connection.
  """
  @spec describe_connection(map(), describe_connection_request(), list()) ::
          {:ok, describe_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def describe_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnection", input, options)
  end

  @doc """
  Get the information about an existing global endpoint.

  For more information about global endpoints, see [Making applications Regional-fault tolerant with global endpoints and event
  replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
  in the *Amazon EventBridge User Guide*.
  """
  @spec describe_endpoint(map(), describe_endpoint_request(), list()) ::
          {:ok, describe_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def describe_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoint", input, options)
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
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def describe_event_bus(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_not_found_exception()}
  def describe_event_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_not_found_exception()}
  def describe_partner_event_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def describe_replay(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def describe_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def disable_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def enable_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableRule", input, options)
  end

  @doc """
  Retrieves a list of API destination in the account in the current Region.
  """
  @spec list_api_destinations(map(), list_api_destinations_request(), list()) ::
          {:ok, list_api_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
  def list_api_destinations(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def list_archives(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListArchives", input, options)
  end

  @doc """
  Retrieves a list of connections from the account.
  """
  @spec list_connections(map(), list_connections_request(), list()) ::
          {:ok, list_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
  def list_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConnections", input, options)
  end

  @doc """
  List the global endpoints associated with this account.

  For more information about global endpoints, see [Making applications Regional-fault tolerant with global endpoints and event
  replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
  in the *Amazon EventBridge User Guide*.
  """
  @spec list_endpoints(map(), list_endpoints_request(), list()) ::
          {:ok, list_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
  def list_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpoints", input, options)
  end

  @doc """
  Lists all the event buses in your account, including the default event bus,
  custom event
  buses, and partner event buses.
  """
  @spec list_event_buses(map(), list_event_buses_request(), list()) ::
          {:ok, list_event_buses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
  def list_event_buses(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
  def list_event_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_not_found_exception()}
  def list_partner_event_source_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
  def list_partner_event_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
  def list_replays(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReplays", input, options)
  end

  @doc """
  Lists the rules for the specified target.

  You can see which of the rules in Amazon
  EventBridge can invoke a specific target in your account.

  The maximum number of results per page for requests is 100.
  """
  @spec list_rule_names_by_target(map(), list_rule_names_by_target_request(), list()) ::
          {:ok, list_rule_names_by_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def list_rule_names_by_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRuleNamesByTarget", input, options)
  end

  @doc """
  Lists your Amazon EventBridge rules.

  You can either list all the rules or you can provide
  a prefix to match to the rule names.

  The maximum number of results per page for requests is 100.

  ListRules does not list the targets of a rule. To see the targets associated
  with a rule,
  use
  [ListTargetsByRule](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html).
  """
  @spec list_rules(map(), list_rules_request(), list()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def list_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the targets assigned to the specified rule.

  The maximum number of results per page for requests is 100.
  """
  @spec list_targets_by_rule(map(), list_targets_by_rule_request(), list()) ::
          {:ok, list_targets_by_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def list_targets_by_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTargetsByRule", input, options)
  end

  @doc """
  Sends custom events to Amazon EventBridge so that they can be matched to rules.

  The maximum size for a PutEvents event entry is 256 KB. Entry size is calculated
  including the event and any necessary characters and keys of the JSON
  representation of the event.
  To learn more, see
  [Calculating PutEvents event entry size](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-putevent-size.html)
  in the *Amazon EventBridge User Guide*

  PutEvents accepts the data in JSON format. For the JSON number
  (integer) data type, the constraints are: a minimum value of
  -9,223,372,036,854,775,808 and a maximum value of 9,223,372,036,854,775,807.

  PutEvents will only process nested JSON up to 1100 levels deep.
  """
  @spec put_events(map(), put_events_request(), list()) ::
          {:ok, put_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
  def put_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutEvents", input, options)
  end

  @doc """
  This is used by SaaS partners to write events to a customer's partner event bus.

  Amazon Web Services
  customers do not use this operation.

  For information on calculating event batch size, see
  [Calculating EventBridge PutEvents event entry size](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-putevent-size.html)
  in the *EventBridge User Guide*.
  """
  @spec put_partner_events(map(), put_partner_events_request(), list()) ::
          {:ok, put_partner_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
  def put_partner_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, policy_length_exceeded_exception()}
          | {:error, resource_not_found_exception()}
  def put_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_event_pattern_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def put_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRule", input, options)
  end

  @doc """
  Adds the specified targets to the specified rule, or updates the targets if they
  are
  already associated with the rule.

  Targets are the resources that are invoked when a rule is triggered.

  The maximum number of entries per request is 10.

  Each rule can have up to five (5) targets associated with it at one time.

  For a list of services you can configure as targets for events, see [EventBridge targets](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-targets.html)
  in the *Amazon EventBridge User Guide*.

  Creating rules with built-in targets is supported only in the Amazon Web
  Services Management Console. The
  built-in targets are:

    *

  `Amazon EBS CreateSnapshot API call`

    *

  `Amazon EC2 RebootInstances API call`

    *

  `Amazon EC2 StopInstances API call`

    *

  ```
  Amazon EC2 TerminateInstances API
  call
  ```

  For some target types, `PutTargets` provides target-specific parameters. If the
  target is a Kinesis data stream, you can optionally specify which shard the
  event goes to by
  using the `KinesisParameters` argument. To invoke a command on multiple EC2
  instances with one rule, you can use the `RunCommandParameters` field.

  To be able to make API calls against the resources that you own, Amazon
  EventBridge
  needs the appropriate permissions:

    *
  For Lambda and Amazon SNS
  resources, EventBridge relies on resource-based policies.

    *
  For EC2 instances, Kinesis Data Streams,
  Step Functions state machines and API Gateway APIs, EventBridge relies on
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

  If you have an IAM role on a cross-account event bus target,
  a `PutTargets` call without a role on the same target (same `Id` and `Arn`) will
  not remove the role.

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def put_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, operation_disabled_exception()}
          | {:error, resource_not_found_exception()}
  def remove_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemovePermission", input, options)
  end

  @doc """
  Removes the specified targets from the specified rule.

  When the rule is triggered, those
  targets are no longer be invoked.

  A successful execution of `RemoveTargets` doesn't guarantee all targets are
  removed from the rule, it means that the target(s) listed in the request are
  removed.

  When you remove a target, when the associated rule triggers, removed targets
  might
  continue to be invoked. Allow a short period of time for changes to take effect.

  This action can partially fail if too many requests are made at the same time.
  If that
  happens, `FailedEntryCount` is non-zero in the response and each entry in
  `FailedEntries` provides the ID of the failed target and the error code.

  The maximum number of entries per request is 10.
  """
  @spec remove_targets(map(), remove_targets_request(), list()) ::
          {:ok, remove_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def remove_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, invalid_event_pattern_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
  def start_replay(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, internal_exception()}
          | {:error, invalid_event_pattern_exception()}
  def test_event_pattern(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, managed_rule_exception()}
          | {:error, resource_not_found_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an API destination.
  """
  @spec update_api_destination(map(), update_api_destination_request(), list()) ::
          {:ok, update_api_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
  def update_api_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApiDestination", input, options)
  end

  @doc """
  Updates the specified archive.
  """
  @spec update_archive(map(), update_archive_request(), list()) ::
          {:ok, update_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, invalid_event_pattern_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
  def update_archive(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateArchive", input, options)
  end

  @doc """
  Updates settings for a connection.
  """
  @spec update_connection(map(), update_connection_request(), list()) ::
          {:ok, update_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
  def update_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnection", input, options)
  end

  @doc """
  Update an existing endpoint.

  For more information about global endpoints, see [Making applications Regional-fault tolerant with global endpoints and event
  replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
  in the *Amazon EventBridge User Guide*.
  """
  @spec update_endpoint(map(), update_endpoint_request(), list()) ::
          {:ok, update_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, internal_exception()}
          | {:error, resource_not_found_exception()}
  def update_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpoint", input, options)
  end
end
