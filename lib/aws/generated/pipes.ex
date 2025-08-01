# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Pipes do
  @moduledoc """
  Amazon EventBridge Pipes connects event sources to targets.

  Pipes reduces the need
  for specialized knowledge and integration code when developing event driven
  architectures.
  This helps ensures consistency across your company’s applications. With Pipes,
  the target
  can be any available EventBridge target. To set up a pipe, you select the event
  source, add optional event filtering, define optional enrichment, and select the
  target for
  the event data.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      pipe_source_rabbit_mq_broker_parameters() :: %{
        "BatchSize" => integer(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "QueueName" => String.t() | Atom.t(),
        "VirtualHost" => String.t() | Atom.t()
      }

  """
  @type pipe_source_rabbit_mq_broker_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_active_mq_broker_parameters() :: %{
        "BatchSize" => integer(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer()
      }

  """
  @type update_pipe_source_active_mq_broker_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_pipe_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentState" => String.t() | Atom.t(),
        "DesiredState" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type delete_pipe_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        "tags" => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_sage_maker_pipeline_parameters() :: %{
        "PipelineParameterList" => list(sage_maker_pipeline_parameter())
      }

  """
  @type pipe_target_sage_maker_pipeline_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_log_configuration() :: %{
        "CloudwatchLogsLogDestination" => cloudwatch_logs_log_destination(),
        "FirehoseLogDestination" => firehose_log_destination(),
        "IncludeExecutionData" => list(String.t() | Atom.t()),
        "Level" => String.t() | Atom.t(),
        "S3LogDestination" => s3_log_destination()
      }

  """
  @type pipe_log_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cloudwatch_logs_log_destination_parameters() :: %{
        "LogGroupArn" => String.t() | Atom.t()
      }

  """
  @type cloudwatch_logs_log_destination_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_retry_strategy() :: %{
        "Attempts" => integer()
      }

  """
  @type batch_retry_strategy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentState" => String.t() | Atom.t(),
        "DesiredState" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type update_pipe_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecs_environment_variable() :: %{
        "name" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type ecs_environment_variable() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_self_managed_kafka_parameters() :: %{
        "BatchSize" => integer(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "ServerRootCaCertificate" => String.t() | Atom.t(),
        "Vpc" => self_managed_kafka_access_configuration_vpc()
      }

  """
  @type update_pipe_source_self_managed_kafka_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("DesiredState") => String.t() | Atom.t(),
        optional("Enrichment") => String.t() | Atom.t(),
        optional("EnrichmentParameters") => pipe_enrichment_parameters(),
        optional("KmsKeyIdentifier") => String.t() | Atom.t(),
        optional("LogConfiguration") => pipe_log_configuration_parameters(),
        optional("SourceParameters") => update_pipe_source_parameters(),
        optional("Target") => String.t() | Atom.t(),
        optional("TargetParameters") => pipe_target_parameters(),
        required("RoleArn") => String.t() | Atom.t()
      }

  """
  @type update_pipe_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "Filters" => list(filter())
      }

  """
  @type filter_criteria() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_pipes_request() :: %{
        optional("CurrentState") => String.t() | Atom.t(),
        optional("DesiredState") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        optional("NamePrefix") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("SourcePrefix") => String.t() | Atom.t(),
        optional("TargetPrefix") => String.t() | Atom.t()
      }

  """
  @type list_pipes_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecs_inference_accelerator_override() :: %{
        "deviceName" => String.t() | Atom.t(),
        "deviceType" => String.t() | Atom.t()
      }

  """
  @type ecs_inference_accelerator_override() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_pipe_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentState" => String.t() | Atom.t(),
        "DesiredState" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type start_pipe_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_array_properties() :: %{
        "Size" => integer()
      }

  """
  @type batch_array_properties() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      multi_measure_attribute_mapping() :: %{
        "MeasureValue" => String.t() | Atom.t(),
        "MeasureValueType" => String.t() | Atom.t(),
        "MultiMeasureAttributeName" => String.t() | Atom.t()
      }

  """
  @type multi_measure_attribute_mapping() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_state_machine_parameters() :: %{
        "InvocationType" => String.t() | Atom.t()
      }

  """
  @type pipe_target_state_machine_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_event_bridge_event_bus_parameters() :: %{
        "DetailType" => String.t() | Atom.t(),
        "EndpointId" => String.t() | Atom.t(),
        "Resources" => list(String.t() | Atom.t()),
        "Source" => String.t() | Atom.t(),
        "Time" => String.t() | Atom.t()
      }

  """
  @type pipe_target_event_bridge_event_bus_parameters() :: %{String.t() | Atom.t() => any()}

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

      batch_resource_requirement() :: %{
        "Type" => String.t() | Atom.t(),
        "Value" => [String.t() | Atom.t()]
      }

  """
  @type batch_resource_requirement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_pipe_request() :: %{}

  """
  @type describe_pipe_request() :: %{}

  @typedoc """

  ## Example:

      s3_log_destination() :: %{
        "BucketName" => String.t() | Atom.t(),
        "BucketOwner" => String.t() | Atom.t(),
        "OutputFormat" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t()
      }

  """
  @type s3_log_destination() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_rabbit_mq_broker_parameters() :: %{
        "BatchSize" => integer(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer()
      }

  """
  @type update_pipe_source_rabbit_mq_broker_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_source_managed_streaming_kafka_parameters() :: %{
        "BatchSize" => integer(),
        "ConsumerGroupID" => String.t() | Atom.t(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "StartingPosition" => String.t() | Atom.t(),
        "TopicName" => String.t() | Atom.t()
      }

  """
  @type pipe_source_managed_streaming_kafka_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        "tagKeys" => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firehose_log_destination_parameters() :: %{
        "DeliveryStreamArn" => String.t() | Atom.t()
      }

  """
  @type firehose_log_destination_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_pipe_request() :: %{}

  """
  @type start_pipe_request() :: %{}

  @typedoc """

  ## Example:

      cloudwatch_logs_log_destination() :: %{
        "LogGroupArn" => String.t() | Atom.t()
      }

  """
  @type cloudwatch_logs_log_destination() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentState" => String.t() | Atom.t(),
        "DesiredState" => String.t() | Atom.t(),
        "Enrichment" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "Source" => String.t() | Atom.t(),
        "StateReason" => String.t() | Atom.t(),
        "Target" => String.t() | Atom.t()
      }

  """
  @type pipe() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_parameters() :: %{
        "BatchJobParameters" => pipe_target_batch_job_parameters(),
        "CloudWatchLogsParameters" => pipe_target_cloud_watch_logs_parameters(),
        "EcsTaskParameters" => pipe_target_ecs_task_parameters(),
        "EventBridgeEventBusParameters" => pipe_target_event_bridge_event_bus_parameters(),
        "HttpParameters" => pipe_target_http_parameters(),
        "InputTemplate" => String.t() | Atom.t(),
        "KinesisStreamParameters" => pipe_target_kinesis_stream_parameters(),
        "LambdaFunctionParameters" => pipe_target_lambda_function_parameters(),
        "RedshiftDataParameters" => pipe_target_redshift_data_parameters(),
        "SageMakerPipelineParameters" => pipe_target_sage_maker_pipeline_parameters(),
        "SqsQueueParameters" => pipe_target_sqs_queue_parameters(),
        "StepFunctionStateMachineParameters" => pipe_target_state_machine_parameters(),
        "TimestreamParameters" => pipe_target_timestream_parameters()
      }

  """
  @type pipe_target_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_source_parameters() :: %{
        "ActiveMQBrokerParameters" => pipe_source_active_mq_broker_parameters(),
        "DynamoDBStreamParameters" => pipe_source_dynamo_db_stream_parameters(),
        "FilterCriteria" => filter_criteria(),
        "KinesisStreamParameters" => pipe_source_kinesis_stream_parameters(),
        "ManagedStreamingKafkaParameters" => pipe_source_managed_streaming_kafka_parameters(),
        "RabbitMQBrokerParameters" => pipe_source_rabbit_mq_broker_parameters(),
        "SelfManagedKafkaParameters" => pipe_source_self_managed_kafka_parameters(),
        "SqsQueueParameters" => pipe_source_sqs_queue_parameters()
      }

  """
  @type pipe_source_parameters() :: %{String.t() | Atom.t() => any()}

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

      single_measure_mapping() :: %{
        "MeasureName" => String.t() | Atom.t(),
        "MeasureValue" => String.t() | Atom.t(),
        "MeasureValueType" => String.t() | Atom.t()
      }

  """
  @type single_measure_mapping() :: %{String.t() | Atom.t() => any()}

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

      pipe_target_batch_job_parameters() :: %{
        "ArrayProperties" => batch_array_properties(),
        "ContainerOverrides" => batch_container_overrides(),
        "DependsOn" => list(batch_job_dependency()),
        "JobDefinition" => [String.t() | Atom.t()],
        "JobName" => [String.t() | Atom.t()],
        "Parameters" => map(),
        "RetryStrategy" => batch_retry_strategy()
      }

  """
  @type pipe_target_batch_job_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_source_sqs_queue_parameters() :: %{
        "BatchSize" => integer(),
        "MaximumBatchingWindowInSeconds" => integer()
      }

  """
  @type pipe_source_sqs_queue_parameters() :: %{String.t() | Atom.t() => any()}

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

      pipe_target_http_parameters() :: %{
        "HeaderParameters" => map(),
        "PathParameterValues" => list(String.t() | Atom.t()),
        "QueryStringParameters" => map()
      }

  """
  @type pipe_target_http_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_sqs_queue_parameters() :: %{
        "MessageDeduplicationId" => String.t() | Atom.t(),
        "MessageGroupId" => String.t() | Atom.t()
      }

  """
  @type pipe_target_sqs_queue_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_kinesis_stream_parameters() :: %{
        "PartitionKey" => String.t() | Atom.t()
      }

  """
  @type pipe_target_kinesis_stream_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_pipes_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Pipes" => list(pipe())
      }

  """
  @type list_pipes_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_cloud_watch_logs_parameters() :: %{
        "LogStreamName" => String.t() | Atom.t(),
        "Timestamp" => String.t() | Atom.t()
      }

  """
  @type pipe_target_cloud_watch_logs_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      s3_log_destination_parameters() :: %{
        "BucketName" => String.t() | Atom.t(),
        "BucketOwner" => String.t() | Atom.t(),
        "OutputFormat" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t()
      }

  """
  @type s3_log_destination_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_pipe_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("DesiredState") => String.t() | Atom.t(),
        optional("Enrichment") => String.t() | Atom.t(),
        optional("EnrichmentParameters") => pipe_enrichment_parameters(),
        optional("KmsKeyIdentifier") => String.t() | Atom.t(),
        optional("LogConfiguration") => pipe_log_configuration_parameters(),
        optional("SourceParameters") => pipe_source_parameters(),
        optional("Tags") => map(),
        optional("TargetParameters") => pipe_target_parameters(),
        required("RoleArn") => String.t() | Atom.t(),
        required("Source") => String.t() | Atom.t(),
        required("Target") => String.t() | Atom.t()
      }

  """
  @type create_pipe_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      multi_measure_mapping() :: %{
        "MultiMeasureAttributeMappings" => list(multi_measure_attribute_mapping()),
        "MultiMeasureName" => String.t() | Atom.t()
      }

  """
  @type multi_measure_mapping() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t() | Atom.t(),
        "name" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Pattern" => String.t() | Atom.t()
      }

  """
  @type filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecs_container_override() :: %{
        "Command" => list(String.t() | Atom.t()),
        "Cpu" => [integer()],
        "Environment" => list(ecs_environment_variable()),
        "EnvironmentFiles" => list(ecs_environment_file()),
        "Memory" => [integer()],
        "MemoryReservation" => [integer()],
        "Name" => String.t() | Atom.t(),
        "ResourceRequirements" => list(ecs_resource_requirement())
      }

  """
  @type ecs_container_override() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecs_environment_file() :: %{
        "type" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type ecs_environment_file() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_pipe_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentState" => String.t() | Atom.t(),
        "DesiredState" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type stop_pipe_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecs_task_override() :: %{
        "ContainerOverrides" => list(ecs_container_override()),
        "Cpu" => String.t() | Atom.t(),
        "EphemeralStorage" => ecs_ephemeral_storage(),
        "ExecutionRoleArn" => String.t() | Atom.t(),
        "InferenceAcceleratorOverrides" => list(ecs_inference_accelerator_override()),
        "Memory" => String.t() | Atom.t(),
        "TaskRoleArn" => String.t() | Atom.t()
      }

  """
  @type ecs_task_override() :: %{String.t() | Atom.t() => any()}

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
        "type" => String.t() | Atom.t()
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

      pipe_source_kinesis_stream_parameters() :: %{
        "BatchSize" => integer(),
        "DeadLetterConfig" => dead_letter_config(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "MaximumRecordAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer(),
        "OnPartialBatchItemFailure" => String.t() | Atom.t(),
        "ParallelizationFactor" => integer(),
        "StartingPosition" => String.t() | Atom.t(),
        "StartingPositionTimestamp" => non_neg_integer()
      }

  """
  @type pipe_source_kinesis_stream_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_ecs_task_parameters() :: %{
        "CapacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "EnableECSManagedTags" => boolean(),
        "EnableExecuteCommand" => boolean(),
        "Group" => String.t() | Atom.t(),
        "LaunchType" => String.t() | Atom.t(),
        "NetworkConfiguration" => network_configuration(),
        "Overrides" => ecs_task_override(),
        "PlacementConstraints" => list(placement_constraint()),
        "PlacementStrategy" => list(placement_strategy()),
        "PlatformVersion" => String.t() | Atom.t(),
        "PropagateTags" => String.t() | Atom.t(),
        "ReferenceId" => String.t() | Atom.t(),
        "Tags" => list(tag()),
        "TaskCount" => integer(),
        "TaskDefinitionArn" => String.t() | Atom.t()
      }

  """
  @type pipe_target_ecs_task_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_pipe_request() :: %{}

  """
  @type delete_pipe_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_pipe_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentState" => String.t() | Atom.t(),
        "DesiredState" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type create_pipe_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_target_timestream_parameters() :: %{
        "DimensionMappings" => list(dimension_mapping()),
        "EpochTimeUnit" => String.t() | Atom.t(),
        "MultiMeasureMappings" => list(multi_measure_mapping()),
        "SingleMeasureMappings" => list(single_measure_mapping()),
        "TimeFieldType" => String.t() | Atom.t(),
        "TimeValue" => String.t() | Atom.t(),
        "TimestampFormat" => String.t() | Atom.t(),
        "VersionValue" => String.t() | Atom.t()
      }

  """
  @type pipe_target_timestream_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dead_letter_config() :: %{
        "Arn" => String.t() | Atom.t()
      }

  """
  @type dead_letter_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
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

      pipe_target_lambda_function_parameters() :: %{
        "InvocationType" => String.t() | Atom.t()
      }

  """
  @type pipe_target_lambda_function_parameters() :: %{String.t() | Atom.t() => any()}

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

      pipe_target_redshift_data_parameters() :: %{
        "Database" => String.t() | Atom.t(),
        "DbUser" => String.t() | Atom.t(),
        "SecretManagerArn" => String.t() | Atom.t(),
        "Sqls" => list(String.t() | Atom.t()),
        "StatementName" => String.t() | Atom.t(),
        "WithEvent" => boolean()
      }

  """
  @type pipe_target_redshift_data_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_source_dynamo_db_stream_parameters() :: %{
        "BatchSize" => integer(),
        "DeadLetterConfig" => dead_letter_config(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "MaximumRecordAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer(),
        "OnPartialBatchItemFailure" => String.t() | Atom.t(),
        "ParallelizationFactor" => integer(),
        "StartingPosition" => String.t() | Atom.t()
      }

  """
  @type pipe_source_dynamo_db_stream_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_managed_streaming_kafka_parameters() :: %{
        "BatchSize" => integer(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer()
      }

  """
  @type update_pipe_source_managed_streaming_kafka_parameters() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      batch_job_dependency() :: %{
        "JobId" => [String.t() | Atom.t()],
        "Type" => String.t() | Atom.t()
      }

  """
  @type batch_job_dependency() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_pipe_request() :: %{}

  """
  @type stop_pipe_request() :: %{}

  @typedoc """

  ## Example:

      aws_vpc_configuration() :: %{
        "AssignPublicIp" => String.t() | Atom.t(),
        "SecurityGroups" => list(String.t() | Atom.t()),
        "Subnets" => list(String.t() | Atom.t())
      }

  """
  @type aws_vpc_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_log_configuration_parameters() :: %{
        "CloudwatchLogsLogDestination" => cloudwatch_logs_log_destination_parameters(),
        "FirehoseLogDestination" => firehose_log_destination_parameters(),
        "IncludeExecutionData" => list(String.t() | Atom.t()),
        "Level" => String.t() | Atom.t(),
        "S3LogDestination" => s3_log_destination_parameters()
      }

  """
  @type pipe_log_configuration_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecs_ephemeral_storage() :: %{
        "sizeInGiB" => integer()
      }

  """
  @type ecs_ephemeral_storage() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ecs_resource_requirement() :: %{
        "type" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type ecs_resource_requirement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_kinesis_stream_parameters() :: %{
        "BatchSize" => integer(),
        "DeadLetterConfig" => dead_letter_config(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "MaximumRecordAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer(),
        "OnPartialBatchItemFailure" => String.t() | Atom.t(),
        "ParallelizationFactor" => integer()
      }

  """
  @type update_pipe_source_kinesis_stream_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_source_self_managed_kafka_parameters() :: %{
        "AdditionalBootstrapServers" => list(String.t() | Atom.t()),
        "BatchSize" => integer(),
        "ConsumerGroupID" => String.t() | Atom.t(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "ServerRootCaCertificate" => String.t() | Atom.t(),
        "StartingPosition" => String.t() | Atom.t(),
        "TopicName" => String.t() | Atom.t(),
        "Vpc" => self_managed_kafka_access_configuration_vpc()
      }

  """
  @type pipe_source_self_managed_kafka_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_container_overrides() :: %{
        "Command" => list(String.t() | Atom.t()),
        "Environment" => list(batch_environment_variable()),
        "InstanceType" => [String.t() | Atom.t()],
        "ResourceRequirements" => list(batch_resource_requirement())
      }

  """
  @type batch_container_overrides() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_environment_variable() :: %{
        "Name" => [String.t() | Atom.t()],
        "Value" => [String.t() | Atom.t()]
      }

  """
  @type batch_environment_variable() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_enrichment_http_parameters() :: %{
        "HeaderParameters" => map(),
        "PathParameterValues" => list(String.t() | Atom.t()),
        "QueryStringParameters" => map()
      }

  """
  @type pipe_enrichment_http_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dimension_mapping() :: %{
        "DimensionName" => String.t() | Atom.t(),
        "DimensionValue" => String.t() | Atom.t(),
        "DimensionValueType" => String.t() | Atom.t()
      }

  """
  @type dimension_mapping() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_sqs_queue_parameters() :: %{
        "BatchSize" => integer(),
        "MaximumBatchingWindowInSeconds" => integer()
      }

  """
  @type update_pipe_source_sqs_queue_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      firehose_log_destination() :: %{
        "DeliveryStreamArn" => String.t() | Atom.t()
      }

  """
  @type firehose_log_destination() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_enrichment_parameters() :: %{
        "HttpParameters" => pipe_enrichment_http_parameters(),
        "InputTemplate" => String.t() | Atom.t()
      }

  """
  @type pipe_enrichment_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_parameters() :: %{
        "ActiveMQBrokerParameters" => update_pipe_source_active_mq_broker_parameters(),
        "DynamoDBStreamParameters" => update_pipe_source_dynamo_db_stream_parameters(),
        "FilterCriteria" => filter_criteria(),
        "KinesisStreamParameters" => update_pipe_source_kinesis_stream_parameters(),
        "ManagedStreamingKafkaParameters" => update_pipe_source_managed_streaming_kafka_parameters(),
        "RabbitMQBrokerParameters" => update_pipe_source_rabbit_mq_broker_parameters(),
        "SelfManagedKafkaParameters" => update_pipe_source_self_managed_kafka_parameters(),
        "SqsQueueParameters" => update_pipe_source_sqs_queue_parameters()
      }

  """
  @type update_pipe_source_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      self_managed_kafka_access_configuration_vpc() :: %{
        "SecurityGroup" => list(String.t() | Atom.t()),
        "Subnets" => list(String.t() | Atom.t())
      }

  """
  @type self_managed_kafka_access_configuration_vpc() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_pipe_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CurrentState" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "DesiredState" => String.t() | Atom.t(),
        "Enrichment" => String.t() | Atom.t(),
        "EnrichmentParameters" => pipe_enrichment_parameters(),
        "KmsKeyIdentifier" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LogConfiguration" => pipe_log_configuration(),
        "Name" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t(),
        "Source" => String.t() | Atom.t(),
        "SourceParameters" => pipe_source_parameters(),
        "StateReason" => String.t() | Atom.t(),
        "Tags" => map(),
        "Target" => String.t() | Atom.t(),
        "TargetParameters" => pipe_target_parameters()
      }

  """
  @type describe_pipe_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      placement_strategy() :: %{
        "field" => String.t() | Atom.t(),
        "type" => String.t() | Atom.t()
      }

  """
  @type placement_strategy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_pipe_source_dynamo_db_stream_parameters() :: %{
        "BatchSize" => integer(),
        "DeadLetterConfig" => dead_letter_config(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "MaximumRecordAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer(),
        "OnPartialBatchItemFailure" => String.t() | Atom.t(),
        "ParallelizationFactor" => integer()
      }

  """
  @type update_pipe_source_dynamo_db_stream_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pipe_source_active_mq_broker_parameters() :: %{
        "BatchSize" => integer(),
        "Credentials" => list(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "QueueName" => String.t() | Atom.t()
      }

  """
  @type pipe_source_active_mq_broker_parameters() :: %{String.t() | Atom.t() => any()}

  @type create_pipe_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_pipe_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_exception()
          | not_found_exception()
          | conflict_exception()

  @type describe_pipe_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_exception()
          | not_found_exception()

  @type list_pipes_errors() ::
          throttling_exception() | validation_exception() | internal_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_exception() | not_found_exception()

  @type start_pipe_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_exception()
          | not_found_exception()
          | conflict_exception()

  @type stop_pipe_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_exception()
          | not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_exception() | not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_exception() | not_found_exception()

  @type update_pipe_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_exception()
          | not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2015-10-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pipes",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Pipes",
      signature_version: "v4",
      signing_name: "pipes",
      target_prefix: nil
    }
  end

  @doc """
  Create a pipe.

  Amazon EventBridge Pipes connect event sources to targets and reduces
  the need for specialized knowledge and integration code.
  """
  @spec create_pipe(map(), String.t() | Atom.t(), create_pipe_request(), list()) ::
          {:ok, create_pipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pipe_errors()}
  def create_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
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
  Delete an existing pipe.

  For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  @spec delete_pipe(map(), String.t() | Atom.t(), delete_pipe_request(), list()) ::
          {:ok, delete_pipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pipe_errors()}
  def delete_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
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
  Get the information about an existing pipe.

  For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  @spec describe_pipe(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_pipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_pipe_errors()}
  def describe_pipe(%Client{} = client, name, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the pipes associated with this account.

  For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  @spec list_pipes(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_pipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pipes_errors()}
  def list_pipes(
        %Client{} = client,
        current_state \\ nil,
        desired_state \\ nil,
        limit \\ nil,
        name_prefix \\ nil,
        next_token \\ nil,
        source_prefix \\ nil,
        target_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/v1/pipes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_prefix) do
        [{"TargetPrefix", target_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(source_prefix) do
        [{"SourcePrefix", source_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix) do
        [{"NamePrefix", name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"Limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(desired_state) do
        [{"DesiredState", desired_state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(current_state) do
        [{"CurrentState", current_state} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the tags associated with a pipe.
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
  Start an existing pipe.
  """
  @spec start_pipe(map(), String.t() | Atom.t(), start_pipe_request(), list()) ::
          {:ok, start_pipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_pipe_errors()}
  def start_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}/start"
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
  Stop an existing pipe.
  """
  @spec stop_pipe(map(), String.t() | Atom.t(), stop_pipe_request(), list()) ::
          {:ok, stop_pipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_pipe_errors()}
  def stop_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}/stop"
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
  Assigns one or more tags (key-value pairs) to the specified pipe.

  Tags can help you
  organize and categorize your resources. You can also use them to scope user
  permissions by
  granting a user permission to access or change only resources with certain tag
  values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly
  as strings of characters.

  You can use the `TagResource` action with a pipe that already has tags. If
  you specify a new tag key, this tag is appended to the list of tags associated
  with the
  pipe. If you specify a tag key that is already associated with the pipe, the new
  tag value
  that you specify replaces the previous value for that tag.

  You can associate as many as 50 tags with a pipe.
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
  Removes one or more tags from the specified pipes.
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
  Update an existing pipe.

  When you call `UpdatePipe`, EventBridge only the
  updates fields you have specified in the request; the rest remain unchanged. The
  exception
  to this is if you modify any Amazon Web Services-service specific fields in the
  `SourceParameters`, `EnrichmentParameters`, or
  `TargetParameters` objects. For example,
  `DynamoDBStreamParameters` or `EventBridgeEventBusParameters`.
  EventBridge updates the fields in these objects atomically as one and overrides
  existing
  values. This is by design, and means that if you don't specify an optional field
  in one of
  these `Parameters` objects, EventBridge sets that field to its system-default
  value during the update.

  For more information about pipes, see [
  Amazon EventBridge
  Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html)
  in the Amazon EventBridge User Guide.
  """
  @spec update_pipe(map(), String.t() | Atom.t(), update_pipe_request(), list()) ::
          {:ok, update_pipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pipe_errors()}
  def update_pipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/pipes/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
