# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kinesis do
  @moduledoc """
  Amazon Kinesis Data Streams Service API Reference

  Amazon Kinesis Data Streams is a managed service that scales elastically for
  real-time
  processing of streaming big data.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      kms_disabled_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type kms_disabled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_shards_output() :: %{
        "NextToken" => String.t() | atom(),
        "Shards" => list(shard())
      }
      
  """
  @type list_shards_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      consumer_description() :: %{
        "ConsumerARN" => String.t() | atom(),
        "ConsumerCreationTimestamp" => non_neg_integer(),
        "ConsumerName" => String.t() | atom(),
        "ConsumerStatus" => list(any()),
        "StreamARN" => String.t() | atom()
      }
      
  """
  @type consumer_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "ApproximateArrivalTimestamp" => non_neg_integer(),
        "Data" => binary(),
        "EncryptionType" => list(any()),
        "PartitionKey" => String.t() | atom(),
        "SequenceNumber" => String.t() | atom()
      }
      
  """
  @type record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_limits_output() :: %{
        "OnDemandStreamCount" => integer(),
        "OnDemandStreamCountLimit" => integer(),
        "OpenShardCount" => integer(),
        "ShardLimit" => integer()
      }
      
  """
  @type describe_limits_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_failure_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_enhanced_monitoring_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("ShardLevelMetrics") => list(list(any())())
      }
      
  """
  @type enable_enhanced_monitoring_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_shards_input() :: %{
        optional("ExclusiveStartShardId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ShardFilter") => shard_filter(),
        optional("StreamARN") => String.t() | atom(),
        optional("StreamCreationTimestamp") => non_neg_integer(),
        optional("StreamName") => String.t() | atom()
      }
      
  """
  @type list_shards_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_opt_in_required() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type kms_opt_in_required() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_stream_consumers_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StreamCreationTimestamp") => non_neg_integer(),
        required("StreamARN") => String.t() | atom()
      }
      
  """
  @type list_stream_consumers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_output() :: %{
        "Policy" => String.t() | atom()
      }
      
  """
  @type get_resource_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      starting_position() :: %{
        "SequenceNumber" => String.t() | atom(),
        "Timestamp" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type starting_position() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type kms_throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_shard_count_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("ScalingType") => list(any()),
        required("TargetShardCount") => integer()
      }
      
  """
  @type update_shard_count_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_stream_output() :: %{
        "HasMoreTags" => boolean(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_stream_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stream_description() :: %{
        "EncryptionType" => list(any()),
        "EnhancedMonitoring" => list(enhanced_metrics()),
        "HasMoreShards" => boolean(),
        "KeyId" => String.t() | atom(),
        "RetentionPeriodHours" => integer(),
        "Shards" => list(shard()),
        "StreamARN" => String.t() | atom(),
        "StreamCreationTimestamp" => non_neg_integer(),
        "StreamModeDetails" => stream_mode_details(),
        "StreamName" => String.t() | atom(),
        "StreamStatus" => list(any())
      }
      
  """
  @type stream_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      decrease_stream_retention_period_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("RetentionPeriodHours") => integer()
      }
      
  """
  @type decrease_stream_retention_period_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stream_description_summary() :: %{
        "ConsumerCount" => integer(),
        "EncryptionType" => list(any()),
        "EnhancedMonitoring" => list(enhanced_metrics()),
        "KeyId" => String.t() | atom(),
        "OpenShardCount" => integer(),
        "RetentionPeriodHours" => integer(),
        "StreamARN" => String.t() | atom(),
        "StreamCreationTimestamp" => non_neg_integer(),
        "StreamModeDetails" => stream_mode_details(),
        "StreamName" => String.t() | atom(),
        "StreamStatus" => list(any())
      }
      
  """
  @type stream_description_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_stream_consumer_input() :: %{
        optional("ConsumerARN") => String.t() | atom(),
        optional("ConsumerName") => String.t() | atom(),
        optional("StreamARN") => String.t() | atom()
      }
      
  """
  @type deregister_stream_consumer_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      increase_stream_retention_period_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("RetentionPeriodHours") => integer()
      }
      
  """
  @type increase_stream_retention_period_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_stream_input() :: %{
        optional("EnforceConsumerDeletion") => boolean(),
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom()
      }
      
  """
  @type delete_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_input() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type delete_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_records_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("Records") => list(put_records_request_entry())
      }
      
  """
  @type put_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_records_output() :: %{
        "ChildShards" => list(child_shard()),
        "MillisBehindLatest" => float(),
        "NextShardIterator" => String.t() | atom(),
        "Records" => list(record())
      }
      
  """
  @type get_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_stream_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("Tags") => map()
      }
      
  """
  @type add_tags_to_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_streams_output() :: %{
        "HasMoreStreams" => boolean(),
        "NextToken" => String.t() | atom(),
        "StreamNames" => list(String.t() | atom()),
        "StreamSummaries" => list(stream_summary())
      }
      
  """
  @type list_streams_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expired_next_token_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type expired_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_stream_consumer_output() :: %{
        "Consumer" => consumer()
      }
      
  """
  @type register_stream_consumer_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hash_key_range() :: %{
        "EndingHashKey" => String.t() | atom(),
        "StartingHashKey" => String.t() | atom()
      }
      
  """
  @type hash_key_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type provisioned_throughput_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_records_result_entry() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "SequenceNumber" => String.t() | atom(),
        "ShardId" => String.t() | atom()
      }
      
  """
  @type put_records_result_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_input() :: %{
        required("Policy") => String.t() | atom(),
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type put_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_stream_consumer_input() :: %{
        optional("Tags") => map(),
        required("ConsumerName") => String.t() | atom(),
        required("StreamARN") => String.t() | atom()
      }
      
  """
  @type register_stream_consumer_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_input() :: %{
        optional("StartingSequenceNumber") => String.t() | atom(),
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        optional("Timestamp") => non_neg_integer(),
        required("ShardId") => String.t() | atom(),
        required("ShardIteratorType") => list(any())
      }
      
  """
  @type get_shard_iterator_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_stream_consumer_input() :: %{
        optional("ConsumerARN") => String.t() | atom(),
        optional("ConsumerName") => String.t() | atom(),
        optional("StreamARN") => String.t() | atom()
      }
      
  """
  @type describe_stream_consumer_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_stream_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type remove_tags_from_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_shards_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("AdjacentShardToMerge") => String.t() | atom(),
        required("ShardToMerge") => String.t() | atom()
      }
      
  """
  @type merge_shards_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_output() :: %{
        "ShardIterator" => String.t() | atom()
      }
      
  """
  @type get_shard_iterator_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expired_iterator_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type expired_iterator_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_stream_summary_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom()
      }
      
  """
  @type describe_stream_summary_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_stream_consumers_output() :: %{
        "Consumers" => list(consumer()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_stream_consumers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_limits_input() :: %{}
      
  """
  @type describe_limits_input() :: %{}

  @typedoc """

  ## Example:
      
      kms_access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type kms_access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_record_output() :: %{
        "EncryptionType" => list(any()),
        "SequenceNumber" => String.t() | atom(),
        "ShardId" => String.t() | atom()
      }
      
  """
  @type put_record_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_streams_input() :: %{
        optional("ExclusiveStartStreamName") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_streams_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      shard() :: %{
        "AdjacentParentShardId" => String.t() | atom(),
        "HashKeyRange" => hash_key_range(),
        "ParentShardId" => String.t() | atom(),
        "SequenceNumberRange" => sequence_number_range(),
        "ShardId" => String.t() | atom()
      }
      
  """
  @type shard() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_shard_input() :: %{
        required("ConsumerARN") => String.t() | atom(),
        required("ShardId") => String.t() | atom(),
        required("StartingPosition") => starting_position()
      }
      
  """
  @type subscribe_to_shard_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_stream_output() :: %{
        "StreamDescription" => stream_description()
      }
      
  """
  @type describe_stream_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_stream_encryption_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("EncryptionType") => list(any()),
        required("KeyId") => String.t() | atom()
      }
      
  """
  @type stop_stream_encryption_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_records_input() :: %{
        optional("Limit") => integer(),
        optional("StreamARN") => String.t() | atom(),
        required("ShardIterator") => String.t() | atom()
      }
      
  """
  @type get_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type kms_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stream_mode_details() :: %{
        "StreamMode" => list(any())
      }
      
  """
  @type stream_mode_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_stream_input() :: %{
        optional("ExclusiveStartTagKey") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom()
      }
      
  """
  @type list_tags_for_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enhanced_monitoring_output() :: %{
        "CurrentShardLevelMetrics" => list(list(any())()),
        "DesiredShardLevelMetrics" => list(list(any())()),
        "StreamARN" => String.t() | atom(),
        "StreamName" => String.t() | atom()
      }
      
  """
  @type enhanced_monitoring_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_input() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type get_resource_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_argument_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_stream_mode_input() :: %{
        required("StreamARN") => String.t() | atom(),
        required("StreamModeDetails") => stream_mode_details()
      }
      
  """
  @type update_stream_mode_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sequence_number_range() :: %{
        "EndingSequenceNumber" => String.t() | atom(),
        "StartingSequenceNumber" => String.t() | atom()
      }
      
  """
  @type sequence_number_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_shard_event() :: %{
        "ChildShards" => list(child_shard()),
        "ContinuationSequenceNumber" => String.t() | atom(),
        "MillisBehindLatest" => float(),
        "Records" => list(record())
      }
      
  """
  @type subscribe_to_shard_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      child_shard() :: %{
        "HashKeyRange" => hash_key_range(),
        "ParentShards" => list(String.t() | atom()),
        "ShardId" => String.t() | atom()
      }
      
  """
  @type child_shard() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stream_summary() :: %{
        "StreamARN" => String.t() | atom(),
        "StreamCreationTimestamp" => non_neg_integer(),
        "StreamModeDetails" => stream_mode_details(),
        "StreamName" => String.t() | atom(),
        "StreamStatus" => list(any())
      }
      
  """
  @type stream_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      shard_filter() :: %{
        "ShardId" => String.t() | atom(),
        "Timestamp" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type shard_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      consumer() :: %{
        "ConsumerARN" => String.t() | atom(),
        "ConsumerCreationTimestamp" => non_neg_integer(),
        "ConsumerName" => String.t() | atom(),
        "ConsumerStatus" => list(any())
      }
      
  """
  @type consumer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_stream_input() :: %{
        optional("ShardCount") => integer(),
        optional("StreamModeDetails") => stream_mode_details(),
        optional("Tags") => map(),
        required("StreamName") => String.t() | atom()
      }
      
  """
  @type create_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_records_request_entry() :: %{
        "Data" => binary(),
        "ExplicitHashKey" => String.t() | atom(),
        "PartitionKey" => String.t() | atom()
      }
      
  """
  @type put_records_request_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_stream_encryption_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("EncryptionType") => list(any()),
        required("KeyId") => String.t() | atom()
      }
      
  """
  @type start_stream_encryption_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_enhanced_monitoring_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("ShardLevelMetrics") => list(list(any())())
      }
      
  """
  @type disable_enhanced_monitoring_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_shard_count_output() :: %{
        "CurrentShardCount" => integer(),
        "StreamARN" => String.t() | atom(),
        "StreamName" => String.t() | atom(),
        "TargetShardCount" => integer()
      }
      
  """
  @type update_shard_count_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_stream_consumer_output() :: %{
        "ConsumerDescription" => consumer_description()
      }
      
  """
  @type describe_stream_consumer_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enhanced_metrics() :: %{
        "ShardLevelMetrics" => list(list(any())())
      }
      
  """
  @type enhanced_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      split_shard_input() :: %{
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("NewStartingHashKey") => String.t() | atom(),
        required("ShardToSplit") => String.t() | atom()
      }
      
  """
  @type split_shard_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_record_input() :: %{
        optional("ExplicitHashKey") => String.t() | atom(),
        optional("SequenceNumberForOrdering") => String.t() | atom(),
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom(),
        required("Data") => binary(),
        required("PartitionKey") => String.t() | atom()
      }
      
  """
  @type put_record_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_state_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type kms_invalid_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_stream_input() :: %{
        optional("ExclusiveStartShardId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("StreamARN") => String.t() | atom(),
        optional("StreamName") => String.t() | atom()
      }
      
  """
  @type describe_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscribe_to_shard_output() :: %{
        "EventStream" => list()
      }
      
  """
  @type subscribe_to_shard_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_records_output() :: %{
        "EncryptionType" => list(any()),
        "FailedRecordCount" => integer(),
        "Records" => list(put_records_result_entry())
      }
      
  """
  @type put_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_stream_summary_output() :: %{
        "StreamDescriptionSummary" => stream_description_summary()
      }
      
  """
  @type describe_stream_summary_output() :: %{(String.t() | atom()) => any()}

  @type add_tags_to_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_stream_errors() ::
          limit_exceeded_exception() | invalid_argument_exception() | resource_in_use_exception()

  @type decrease_stream_retention_period_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_resource_policy_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type deregister_stream_consumer_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type describe_limits_errors() :: limit_exceeded_exception()

  @type describe_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type describe_stream_consumer_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type describe_stream_summary_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disable_enhanced_monitoring_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type enable_enhanced_monitoring_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type get_records_errors() ::
          kms_invalid_state_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | expired_iterator_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | internal_failure_exception()
          | kms_disabled_exception()

  @type get_resource_policy_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type get_shard_iterator_errors() ::
          invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | internal_failure_exception()

  @type increase_stream_retention_period_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type list_shards_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | expired_next_token_exception()
          | resource_in_use_exception()

  @type list_stream_consumers_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | expired_next_token_exception()
          | resource_in_use_exception()

  @type list_streams_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | expired_next_token_exception()

  @type list_tags_for_resource_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type list_tags_for_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type merge_shards_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type put_record_errors() ::
          kms_invalid_state_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | internal_failure_exception()
          | kms_disabled_exception()

  @type put_records_errors() ::
          kms_invalid_state_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | internal_failure_exception()
          | kms_disabled_exception()

  @type put_resource_policy_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type register_stream_consumer_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type remove_tags_from_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type split_shard_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type start_stream_encryption_errors() ::
          kms_invalid_state_exception()
          | limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | kms_disabled_exception()

  @type stop_stream_encryption_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type subscribe_to_shard_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type untag_resource_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_shard_count_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | invalid_argument_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_stream_mode_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2013-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesis",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Kinesis",
      signature_version: "v4",
      signing_name: "kinesis",
      target_prefix: "Kinesis_20131202"
    }
  end

  @doc """
  Adds or updates tags for the specified Kinesis data stream.

  You can assign up to 50
  tags to a data stream.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  If tags have already been assigned to the stream, `AddTagsToStream`
  overwrites any existing tags that correspond to the specified tag keys.

  `AddTagsToStream` has a limit of five transactions per second per
  account.
  """
  @spec add_tags_to_stream(map(), add_tags_to_stream_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_stream_errors()}
  def add_tags_to_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToStream", input, options)
  end

  @doc """
  Creates a Kinesis data stream.

  A stream captures and transports data records that are
  continuously emitted from different data sources or *producers*.
  Scale-out within a stream is explicitly supported by means of shards, which are
  uniquely
  identified groups of data records in a stream.

  You can create your data stream using either on-demand or provisioned capacity
  mode.
  Data streams with an on-demand mode require no capacity planning and
  automatically scale
  to handle gigabytes of write and read throughput per minute. With the on-demand
  mode,
  Kinesis Data Streams automatically manages the shards in order to provide the
  necessary
  throughput. For the data streams with a provisioned mode, you must specify the
  number of
  shards for the data stream. Each shard can support reads up to five transactions
  per
  second, up to a maximum data read total of 2 MiB per second. Each shard can
  support
  writes up to 1,000 records per second, up to a maximum data write total of 1 MiB
  per
  second. If the amount of data input increases or decreases, you can add or
  remove
  shards.

  The stream name identifies the stream. The name is scoped to the Amazon Web
  Services
  account used by the application. It is also scoped by Amazon Web Services
  Region. That
  is, two streams in two different accounts can have the same name, and two
  streams in the
  same account, but in two different Regions, can have the same name.

  `CreateStream` is an asynchronous operation. Upon receiving a
  `CreateStream` request, Kinesis Data Streams immediately returns and sets
  the stream status to `CREATING`. After the stream is created, Kinesis Data
  Streams sets the stream status to `ACTIVE`. You should perform read and write
  operations only on an `ACTIVE` stream.

  You receive a `LimitExceededException` when making a
  `CreateStream` request when you try to do one of the following:

    *
  Have more than five streams in the `CREATING` state at any point in
  time.

    *
  Create more shards than are authorized for your account.

  For the default shard limit for an Amazon Web Services account, see [Amazon Kinesis Data Streams
  Limits](https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
  in the *Amazon Kinesis Data Streams
  Developer Guide*. To increase this limit, [contact Amazon Web Services Support](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

  You can use `DescribeStreamSummary` to check the stream status, which
  is returned in `StreamStatus`.

  `CreateStream` has a limit of five transactions per second per
  account.

  You can add tags to the stream when making a `CreateStream` request by setting
  the `Tags` parameter. If you pass the `Tags` parameter, in addition to having
  the `kinesis:CreateStream` permission, you must also have the
  `kinesis:AddTagsToStream` permission for the stream that will be created. The
  `kinesis:TagResource` permission won’t work to tag streams on creation. Tags
  will take effect from the `CREATING` status of the stream, but you can't make
  any updates to the tags until the stream is in `ACTIVE` state.
  """
  @spec create_stream(map(), create_stream_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stream_errors()}
  def create_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStream", input, options)
  end

  @doc """
  Decreases the Kinesis data stream's retention period, which is the length of
  time data
  records are accessible after they are added to the stream.

  The minimum value of a
  stream's retention period is 24 hours.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  This operation may result in lost data. For example, if the stream's retention
  period
  is 48 hours and is decreased to 24 hours, any data already in the stream that is
  older
  than 24 hours is inaccessible.
  """
  @spec decrease_stream_retention_period(map(), decrease_stream_retention_period_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, decrease_stream_retention_period_errors()}
  def decrease_stream_retention_period(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DecreaseStreamRetentionPeriod", input, options)
  end

  @doc """
  Delete a policy for the specified data stream or consumer.

  Request patterns can be one of the following:

    *
  Data stream pattern: `arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+`

    *
  Consumer pattern:
  `^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+`
  """
  @spec delete_resource_policy(map(), delete_resource_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a Kinesis data stream and all its shards and data.

  You must shut down any
  applications that are operating on the stream before you delete the stream. If
  an
  application attempts to operate on a deleted stream, it receives the exception
  `ResourceNotFoundException`.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  If the stream is in the `ACTIVE` state, you can delete it. After a
  `DeleteStream` request, the specified stream is in the
  `DELETING` state until Kinesis Data Streams completes the
  deletion.

  **Note:** Kinesis Data Streams might continue to accept
  data read and write operations, such as `PutRecord`, `PutRecords`, and
  `GetRecords`, on a stream in the
  `DELETING` state until the stream deletion is complete.

  When you delete a stream, any shards in that stream are also deleted, and any
  tags are
  dissociated from the stream.

  You can use the `DescribeStreamSummary` operation to check the state
  of the stream, which is returned in `StreamStatus`.

  `DeleteStream` has a limit of five transactions per second per
  account.
  """
  @spec delete_stream(map(), delete_stream_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_stream_errors()}
  def delete_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStream", input, options)
  end

  @doc """
  To deregister a consumer, provide its ARN.

  Alternatively, you can provide the ARN of
  the data stream and the name you gave the consumer when you registered it. You
  may also
  provide all three parameters, as long as they don't conflict with each other. If
  you
  don't know the name or ARN of the consumer that you want to deregister, you can
  use the
  `ListStreamConsumers` operation to get a list of the descriptions of
  all the consumers that are currently registered with a given data stream. The
  description of a consumer contains its name and ARN.

  This operation has a limit of five transactions per second per stream.
  """
  @spec deregister_stream_consumer(map(), deregister_stream_consumer_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_stream_consumer_errors()}
  def deregister_stream_consumer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterStreamConsumer", input, options)
  end

  @doc """
  Describes the shard limits and usage for the account.

  If you update your account limits, the old limits might be returned for a few
  minutes.

  This operation has a limit of one transaction per second per account.
  """
  @spec describe_limits(map(), describe_limits_input(), list()) ::
          {:ok, describe_limits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_limits_errors()}
  def describe_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLimits", input, options)
  end

  @doc """
  Describes the specified Kinesis data stream.

  This API has been revised. It's highly recommended that you use the
  `DescribeStreamSummary` API to get a summarized description of the
  specified Kinesis data stream and the `ListShards` API to list the
  shards in a specified data stream and obtain information about each shard.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  The information returned includes the stream name, Amazon Resource Name (ARN),
  creation time, enhanced metric configuration, and shard map. The shard map is an
  array
  of shard objects. For each shard object, there is the hash key and sequence
  number
  ranges that the shard spans, and the IDs of any earlier shards that played in a
  role in
  creating the shard. Every record ingested in the stream is identified by a
  sequence
  number, which is assigned when the record is put into the stream.

  You can limit the number of shards returned by each call. For more information,
  see
  [Retrieving Shards from a
  Stream](https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html)
  in the *Amazon Kinesis Data Streams Developer
  Guide*.

  There are no guarantees about the chronological order shards returned. To
  process
  shards in chronological order, use the ID of the parent shard to track the
  lineage to
  the oldest shard.

  This operation has a limit of 10 transactions per second per account.
  """
  @spec describe_stream(map(), describe_stream_input(), list()) ::
          {:ok, describe_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stream_errors()}
  def describe_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStream", input, options)
  end

  @doc """
  To get the description of a registered consumer, provide the ARN of the
  consumer.

  Alternatively, you can provide the ARN of the data stream and the name you gave
  the
  consumer when you registered it. You may also provide all three parameters, as
  long as
  they don't conflict with each other. If you don't know the name or ARN of the
  consumer
  that you want to describe, you can use the `ListStreamConsumers`
  operation to get a list of the descriptions of all the consumers that are
  currently
  registered with a given data stream.

  This operation has a limit of 20 transactions per second per stream.

  When making a cross-account call with `DescribeStreamConsumer`, make sure to
  provide the ARN of the consumer.
  """
  @spec describe_stream_consumer(map(), describe_stream_consumer_input(), list()) ::
          {:ok, describe_stream_consumer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stream_consumer_errors()}
  def describe_stream_consumer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStreamConsumer", input, options)
  end

  @doc """
  Provides a summarized description of the specified Kinesis data stream without
  the
  shard list.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  The information returned includes the stream name, Amazon Resource Name (ARN),
  status,
  record retention period, approximate creation time, monitoring, encryption
  details, and
  open shard count.

  `DescribeStreamSummary` has a limit of 20 transactions per second per
  account.
  """
  @spec describe_stream_summary(map(), describe_stream_summary_input(), list()) ::
          {:ok, describe_stream_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stream_summary_errors()}
  def describe_stream_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStreamSummary", input, options)
  end

  @doc """
  Disables enhanced monitoring.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.
  """
  @spec disable_enhanced_monitoring(map(), disable_enhanced_monitoring_input(), list()) ::
          {:ok, enhanced_monitoring_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_enhanced_monitoring_errors()}
  def disable_enhanced_monitoring(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableEnhancedMonitoring", input, options)
  end

  @doc """
  Enables enhanced Kinesis data stream monitoring for shard-level metrics.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.
  """
  @spec enable_enhanced_monitoring(map(), enable_enhanced_monitoring_input(), list()) ::
          {:ok, enhanced_monitoring_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_enhanced_monitoring_errors()}
  def enable_enhanced_monitoring(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableEnhancedMonitoring", input, options)
  end

  @doc """
  Gets data records from a Kinesis data stream's shard.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  Specify a shard iterator using the `ShardIterator` parameter. The shard
  iterator specifies the position in the shard from which you want to start
  reading data
  records sequentially. If there are no records available in the portion of the
  shard that
  the iterator points to, `GetRecords` returns an empty list. It might
  take multiple calls to get to a portion of the shard that contains records.

  You can scale by provisioning multiple shards per stream while considering
  service
  limits (for more information, see [Amazon Kinesis Data Streams Limits](https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
  in the *Amazon Kinesis Data Streams Developer
  Guide*). Your application should have one thread per shard, each reading
  continuously from its stream. To read from a stream continually, call
  `GetRecords` in a loop. Use `GetShardIterator` to get the
  shard iterator to specify in the first `GetRecords` call. `GetRecords` returns a
  new shard iterator in
  `NextShardIterator`. Specify the shard iterator returned in
  `NextShardIterator` in subsequent calls to `GetRecords`.
  If the shard has been closed, the shard iterator can't return more data and
  `GetRecords` returns `null` in `NextShardIterator`.
  You can terminate the loop when the shard is closed, or when the shard iterator
  reaches
  the record with the sequence number or other attribute that marks it as the last
  record
  to process.

  Each data record can be up to 1 MiB in size, and each shard can read up to 2 MiB
  per
  second. You can ensure that your calls don't exceed the maximum supported size
  or
  throughput by using the `Limit` parameter to specify the maximum number of
  records that `GetRecords` can return. Consider your average record size
  when determining this limit. The maximum number of records that can be returned
  per call
  is 10,000.

  The size of the data returned by `GetRecords` varies depending on the
  utilization of the shard. It is recommended that consumer applications retrieve
  records
  via the `GetRecords` command using the 5 TPS limit to remain caught up.
  Retrieving records less frequently can lead to consumer applications falling
  behind. The
  maximum size of data that `GetRecords` can return is 10 MiB. If a call
  returns this amount of data, subsequent calls made within the next 5 seconds
  throw
  `ProvisionedThroughputExceededException`. If there is insufficient
  provisioned throughput on the stream, subsequent calls made within the next 1
  second
  throw `ProvisionedThroughputExceededException`. `GetRecords`
  doesn't return any data when it throws an exception. For this reason, we
  recommend that
  you wait 1 second between calls to `GetRecords`. However, it's possible
  that the application will get exceptions for longer than 1 second.

  To detect whether the application is falling behind in processing, you can use
  the
  `MillisBehindLatest` response attribute. You can also monitor the stream
  using CloudWatch metrics and other mechanisms (see
  [Monitoring](https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html) in
  the *Amazon
  Kinesis Data Streams Developer Guide*).

  Each Amazon Kinesis record includes a value, `ApproximateArrivalTimestamp`,
  that is set when a stream successfully receives and stores a record. This is
  commonly
  referred to as a server-side time stamp, whereas a client-side time stamp is set
  when a
  data producer creates or sends the record to a stream (a data producer is any
  data
  source putting data records into a stream, for example with `PutRecords`). The
  time stamp has millisecond precision. There are no guarantees about the time
  stamp accuracy, or that the time stamp is always increasing. For example,
  records in a
  shard or across a stream might have time stamps that are out of order.

  This operation has a limit of five transactions per second per shard.
  """
  @spec get_records(map(), get_records_input(), list()) ::
          {:ok, get_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_records_errors()}
  def get_records(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecords", input, options)
  end

  @doc """
  Returns a policy attached to the specified data stream or consumer.

  Request patterns can be one of the following:

    *
  Data stream pattern: `arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+`

    *
  Consumer pattern:
  `^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+`
  """
  @spec get_resource_policy(map(), get_resource_policy_input(), list()) ::
          {:ok, get_resource_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Gets an Amazon Kinesis shard iterator.

  A shard iterator expires 5 minutes after it is
  returned to the requester.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  A shard iterator specifies the shard position from which to start reading data
  records
  sequentially. The position is specified using the sequence number of a data
  record in a
  shard. A sequence number is the identifier associated with every record ingested
  in the
  stream, and is assigned when a record is put into the stream. Each stream has
  one or
  more shards.

  You must specify the shard iterator type. For example, you can set the
  `ShardIteratorType` parameter to read exactly from the position denoted
  by a specific sequence number by using the `AT_SEQUENCE_NUMBER` shard
  iterator type. Alternatively, the parameter can read right after the sequence
  number by
  using the `AFTER_SEQUENCE_NUMBER` shard iterator type, using sequence numbers
  returned by earlier calls to `PutRecord`, `PutRecords`,
  `GetRecords`, or `DescribeStream`. In the request,
  you can specify the shard iterator type `AT_TIMESTAMP` to read records from
  an arbitrary point in time, `TRIM_HORIZON` to cause
  `ShardIterator` to point to the last untrimmed record in the shard in the
  system (the oldest data record in the shard), or `LATEST` so that you always
  read the most recent data in the shard.

  When you read repeatedly from a stream, use a `GetShardIterator`
  request to get the first shard iterator for use in your first `GetRecords`
  request and for subsequent reads use the shard iterator returned by the
  `GetRecords` request in `NextShardIterator`. A new shard
  iterator is returned by every `GetRecords` request in
  `NextShardIterator`, which you use in the `ShardIterator`
  parameter of the next `GetRecords` request.

  If a `GetShardIterator` request is made too often, you receive a
  `ProvisionedThroughputExceededException`. For more information about
  throughput limits, see `GetRecords`, and [Streams Limits](https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
  in the
  *Amazon Kinesis Data Streams Developer Guide*.

  If the shard is closed, `GetShardIterator` returns a valid iterator
  for the last sequence number of the shard. A shard can be closed as a result of
  using
  `SplitShard` or `MergeShards`.

  `GetShardIterator` has a limit of five transactions per second per
  account per open shard.
  """
  @spec get_shard_iterator(map(), get_shard_iterator_input(), list()) ::
          {:ok, get_shard_iterator_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_shard_iterator_errors()}
  def get_shard_iterator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetShardIterator", input, options)
  end

  @doc """
  Increases the Kinesis data stream's retention period, which is the length of
  time data
  records are accessible after they are added to the stream.

  The maximum value of a
  stream's retention period is 8760 hours (365 days).

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  If you choose a longer stream retention period, this operation increases the
  time
  period during which records that have not yet expired are accessible. However,
  it does
  not make previous, expired data (older than the stream's previous retention
  period)
  accessible after the operation has been called. For example, if a stream's
  retention
  period is set to 24 hours and is increased to 168 hours, any data that is older
  than 24
  hours remains inaccessible to consumer applications.
  """
  @spec increase_stream_retention_period(map(), increase_stream_retention_period_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, increase_stream_retention_period_errors()}
  def increase_stream_retention_period(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "IncreaseStreamRetentionPeriod", input, options)
  end

  @doc """
  Lists the shards in a stream and provides information about each shard.

  This operation
  has a limit of 1000 transactions per second per data stream.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  This action does not list expired shards. For information about expired shards,
  see
  [Data Routing, Data Persistence, and Shard State after a Reshard](https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing).

  This API is a new operation that is used by the Amazon Kinesis Client Library
  (KCL). If you have a fine-grained IAM policy that only allows specific
  operations,
  you must update your policy to allow calls to this API. For more information,
  see
  [Controlling Access to Amazon Kinesis Data Streams Resources Using IAM](https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html).
  """
  @spec list_shards(map(), list_shards_input(), list()) ::
          {:ok, list_shards_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_shards_errors()}
  def list_shards(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListShards", input, options)
  end

  @doc """
  Lists the consumers registered to receive data from a stream using enhanced
  fan-out,
  and provides information about each consumer.

  This operation has a limit of 5 transactions per second per stream.
  """
  @spec list_stream_consumers(map(), list_stream_consumers_input(), list()) ::
          {:ok, list_stream_consumers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_stream_consumers_errors()}
  def list_stream_consumers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStreamConsumers", input, options)
  end

  @doc """
  Lists your Kinesis data streams.

  The number of streams may be too large to return from a single call to
  `ListStreams`. You can limit the number of returned streams using the
  `Limit` parameter. If you do not specify a value for the
  `Limit` parameter, Kinesis Data Streams uses the default limit, which is
  currently 100.

  You can detect if there are more streams available to list by using the
  `HasMoreStreams` flag from the returned output. If there are more streams
  available, you can request more streams by using the name of the last stream
  returned by
  the `ListStreams` request in the `ExclusiveStartStreamName`
  parameter in a subsequent request to `ListStreams`. The group of stream names
  returned by the subsequent request is then added to the list. You can continue
  this
  process until all the stream names have been collected in the list.

  `ListStreams` has a limit of five transactions per second per
  account.
  """
  @spec list_streams(map(), list_streams_input(), list()) ::
          {:ok, list_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_streams_errors()}
  def list_streams(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStreams", input, options)
  end

  @doc """
  List all tags added to the specified Kinesis resource.

  Each tag is a label consisting of a user-defined key and value. Tags can help
  you manage, identify, organize, search for, and filter resources.

  For more information about tagging Kinesis resources, see [Tag your Amazon Kinesis Data Streams
  resources](https://docs.aws.amazon.com/streams/latest/dev/tagging.html).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the tags for the specified Kinesis data stream.

  This operation has a limit of
  five transactions per second per account.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.
  """
  @spec list_tags_for_stream(map(), list_tags_for_stream_input(), list()) ::
          {:ok, list_tags_for_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_stream_errors()}
  def list_tags_for_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForStream", input, options)
  end

  @doc """
  Merges two adjacent shards in a Kinesis data stream and combines them into a
  single
  shard to reduce the stream's capacity to ingest and transport data.

  This API is only
  supported for the data streams with the provisioned capacity mode. Two shards
  are
  considered adjacent if the union of the hash key ranges for the two shards form
  a
  contiguous set with no gaps. For example, if you have two shards, one with a
  hash key
  range of 276...381 and the other with a hash key range of 382...454, then you
  could
  merge these two shards into a single shard that would have a hash key range of
  276...454. After the merge, the single child shard receives data for all hash
  key values
  covered by the two parent shards.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  `MergeShards` is called when there is a need to reduce the overall capacity
  of a stream because of excess capacity that is not being used. You must specify
  the
  shard to be merged and the adjacent shard for a stream. For more information
  about
  merging shards, see [Merge Two Shards](https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html)
  in the *Amazon Kinesis Data Streams Developer
  Guide*.

  If the stream is in the `ACTIVE` state, you can call
  `MergeShards`. If a stream is in the `CREATING`,
  `UPDATING`, or `DELETING` state, `MergeShards`
  returns a `ResourceInUseException`. If the specified stream does not exist,
  `MergeShards` returns a `ResourceNotFoundException`.

  You can use `DescribeStreamSummary` to check the state of the stream,
  which is returned in `StreamStatus`.

  `MergeShards` is an asynchronous operation. Upon receiving a
  `MergeShards` request, Amazon Kinesis Data Streams immediately returns a
  response and sets the `StreamStatus` to `UPDATING`. After the
  operation is completed, Kinesis Data Streams sets the `StreamStatus` to
  `ACTIVE`. Read and write operations continue to work while the stream is
  in the `UPDATING` state.

  You use `DescribeStreamSummary` and the `ListShards`
  APIs to determine the shard IDs that are specified in the `MergeShards`
  request.

  If you try to operate on too many streams in parallel using `CreateStream`,
  `DeleteStream`, `MergeShards`,
  or `SplitShard`, you receive a `LimitExceededException`.

  `MergeShards` has a limit of five transactions per second per account.
  """
  @spec merge_shards(map(), merge_shards_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_shards_errors()}
  def merge_shards(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergeShards", input, options)
  end

  @doc """
  Writes a single data record into an Amazon Kinesis data stream.

  Call
  `PutRecord` to send data into the stream for real-time ingestion and
  subsequent processing, one record at a time. Each shard can support writes up to
  1,000
  records per second, up to a maximum data write total of 1 MiB per second.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  You must specify the name of the stream that captures, stores, and transports
  the
  data; a partition key; and the data blob itself.

  The data blob can be any type of data; for example, a segment from a log file,
  geographic/location data, website clickstream data, and so on.

  The partition key is used by Kinesis Data Streams to distribute data across
  shards.
  Kinesis Data Streams segregates the data records that belong to a stream into
  multiple
  shards, using the partition key associated with each data record to determine
  the shard
  to which a given data record belongs.

  Partition keys are Unicode strings, with a maximum length limit of 256
  characters for
  each key. An MD5 hash function is used to map partition keys to 128-bit integer
  values
  and to map associated data records to shards using the hash key ranges of the
  shards.
  You can override hashing the partition key to determine the shard by explicitly
  specifying a hash value using the `ExplicitHashKey` parameter. For more
  information, see [Adding Data to a Stream](https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream)
  in the *Amazon Kinesis Data Streams
  Developer Guide*.

  `PutRecord` returns the shard ID of where the data record was placed and the
  sequence number that was assigned to the data record.

  Sequence numbers increase over time and are specific to a shard within a stream,
  not
  across all shards within a stream. To guarantee strictly increasing ordering,
  write
  serially to a shard and use the `SequenceNumberForOrdering` parameter. For
  more information, see [Adding Data to a Stream](https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream)
  in the *Amazon Kinesis Data Streams
  Developer Guide*.

  After you write a record to a stream, you cannot modify that record or its order
  within the stream.

  If a `PutRecord` request cannot be processed because of insufficient
  provisioned throughput on the shard involved in the request, `PutRecord`
  throws `ProvisionedThroughputExceededException`.

  By default, data records are accessible for 24 hours from the time that they are
  added
  to a stream. You can use `IncreaseStreamRetentionPeriod` or
  `DecreaseStreamRetentionPeriod` to modify this retention period.
  """
  @spec put_record(map(), put_record_input(), list()) ::
          {:ok, put_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_record_errors()}
  def put_record(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRecord", input, options)
  end

  @doc """
  Writes multiple data records into a Kinesis data stream in a single call (also
  referred to as a `PutRecords` request).

  Use this operation to send data into
  the stream for data ingestion and processing.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  Each `PutRecords` request can support up to 500 records. Each record in the
  request can be as large as 1 MiB, up to a limit of 5 MiB for the entire request,
  including partition keys. Each shard can support writes up to 1,000 records per
  second,
  up to a maximum data write total of 1 MiB per second.

  You must specify the name of the stream that captures, stores, and transports
  the
  data; and an array of request `Records`, with each record in the array
  requiring a partition key and data blob. The record size limit applies to the
  total size
  of the partition key and data blob.

  The data blob can be any type of data; for example, a segment from a log file,
  geographic/location data, website clickstream data, and so on.

  The partition key is used by Kinesis Data Streams as input to a hash function
  that
  maps the partition key and associated data to a specific shard. An MD5 hash
  function is
  used to map partition keys to 128-bit integer values and to map associated data
  records
  to shards. As a result of this hashing mechanism, all data records with the same
  partition key map to the same shard within the stream. For more information, see
  [Adding Data to a Stream](https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream)
  in the *Amazon Kinesis Data Streams
  Developer Guide*.

  Each record in the `Records` array may include an optional parameter,
  `ExplicitHashKey`, which overrides the partition key to shard mapping.
  This parameter allows a data producer to determine explicitly the shard where
  the record
  is stored. For more information, see [Adding Multiple Records with PutRecords](https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords)
  in the *Amazon Kinesis
  Data Streams Developer Guide*.

  The `PutRecords` response includes an array of response
  `Records`. Each record in the response array directly correlates with a
  record in the request array using natural ordering, from the top to the bottom
  of the
  request and response. The response `Records` array always includes the same
  number of records as the request array.

  The response `Records` array includes both successfully and unsuccessfully
  processed records. Kinesis Data Streams attempts to process all records in each
  `PutRecords` request. A single record failure does not stop the
  processing of subsequent records. As a result, PutRecords doesn't guarantee the
  ordering
  of records. If you need to read records in the same order they are written to
  the
  stream, use `PutRecord` instead of `PutRecords`, and write to
  the same shard.

  A successfully processed record includes `ShardId` and
  `SequenceNumber` values. The `ShardId` parameter identifies
  the shard in the stream where the record is stored. The `SequenceNumber`
  parameter is an identifier assigned to the put record, unique to all records in
  the
  stream.

  An unsuccessfully processed record includes `ErrorCode` and
  `ErrorMessage` values. `ErrorCode` reflects the type of error
  and can be one of the following values:
  `ProvisionedThroughputExceededException` or `InternalFailure`.
  `ErrorMessage` provides more detailed information about the
  `ProvisionedThroughputExceededException` exception including the account
  ID, stream name, and shard ID of the record that was throttled. For more
  information
  about partially successful responses, see [Adding Multiple Records with PutRecords](https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords)
  in the *Amazon Kinesis
  Data Streams Developer Guide*.

  After you write a record to a stream, you cannot modify that record or its order
  within the stream.

  By default, data records are accessible for 24 hours from the time that they are
  added
  to a stream. You can use `IncreaseStreamRetentionPeriod` or
  `DecreaseStreamRetentionPeriod` to modify this retention period.
  """
  @spec put_records(map(), put_records_input(), list()) ::
          {:ok, put_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_records_errors()}
  def put_records(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRecords", input, options)
  end

  @doc """
  Attaches a resource-based policy to a data stream or registered consumer.

  If you are using an identity other than the root user of
  the Amazon Web Services account that owns the resource, the calling identity
  must have the `PutResourcePolicy` permissions on the
  specified Kinesis Data Streams resource and belong to the owner's account in
  order to use this operation.
  If you don't have `PutResourcePolicy` permissions, Amazon Kinesis Data Streams
  returns a `403 Access Denied error`.
  If you receive a `ResourceNotFoundException`, check to see if you passed a valid
  stream or consumer resource.

  Request patterns can be one of the following:

    *
  Data stream pattern: `arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+`

    *
  Consumer pattern:
  `^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+` 

  For more information, see [Controlling Access to Amazon Kinesis Data Streams
  Resources Using
  IAM](https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html).
  """
  @spec put_resource_policy(map(), put_resource_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Registers a consumer with a Kinesis data stream.

  When you use this operation, the
  consumer you register can then call `SubscribeToShard` to receive data
  from the stream using enhanced fan-out, at a rate of up to 2 MiB per second for
  every
  shard you subscribe to. This rate is unaffected by the total number of consumers
  that
  read from the same stream.

  You can add tags to the registered consumer when making a
  `RegisterStreamConsumer` request by setting the `Tags` parameter. If you pass
  the `Tags` parameter, in addition to having the `kinesis:RegisterStreamConsumer`
  permission, you must also have the `kinesis:TagResource` permission for the
  consumer that will be registered. Tags will take effect from the `CREATING`
  status of the consumer.

  You can register up to 20 consumers per stream. A given consumer can only be
  registered with one stream at a time.

  For an example of how to use this operation, see [Enhanced Fan-Out Using the Kinesis Data Streams
  API](https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html).

  The use of this operation has a limit of five transactions per second per
  account.
  Also, only 5 consumers can be created simultaneously. In other words, you cannot
  have
  more than 5 consumers in a `CREATING` status at the same time. Registering a
  6th consumer while there are 5 in a `CREATING` status results in a
  `LimitExceededException`.
  """
  @spec register_stream_consumer(map(), register_stream_consumer_input(), list()) ::
          {:ok, register_stream_consumer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_stream_consumer_errors()}
  def register_stream_consumer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterStreamConsumer", input, options)
  end

  @doc """
  Removes tags from the specified Kinesis data stream.

  Removed tags are deleted and
  cannot be recovered after this operation successfully completes.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  If you specify a tag that does not exist, it is ignored.

  `RemoveTagsFromStream` has a limit of five transactions per second per
  account.
  """
  @spec remove_tags_from_stream(map(), remove_tags_from_stream_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_stream_errors()}
  def remove_tags_from_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromStream", input, options)
  end

  @doc """
  Splits a shard into two new shards in the Kinesis data stream, to increase the
  stream's capacity to ingest and transport data.

  `SplitShard` is called when
  there is a need to increase the overall capacity of a stream because of an
  expected
  increase in the volume of data records being ingested. This API is only
  supported for
  the data streams with the provisioned capacity mode.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  You can also use `SplitShard` when a shard appears to be approaching its
  maximum utilization; for example, the producers sending data into the specific
  shard are
  suddenly sending more than previously anticipated. You can also call
  `SplitShard` to increase stream capacity, so that more Kinesis Data
  Streams applications can simultaneously read data from the stream for real-time
  processing.

  You must specify the shard to be split and the new hash key, which is the
  position in
  the shard where the shard gets split in two. In many cases, the new hash key
  might be
  the average of the beginning and ending hash key, but it can be any hash key
  value in
  the range being mapped into the shard. For more information, see [Split a Shard](https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html)
  in the *Amazon Kinesis Data Streams Developer
  Guide*.

  You can use `DescribeStreamSummary` and the `ListShards` APIs to determine the
  shard ID and hash key values for the `ShardToSplit`
  and `NewStartingHashKey` parameters that are specified in the
  `SplitShard` request.

  `SplitShard` is an asynchronous operation. Upon receiving a
  `SplitShard` request, Kinesis Data Streams immediately returns a response
  and sets the stream status to `UPDATING`. After the operation is completed,
  Kinesis Data Streams sets the stream status to `ACTIVE`. Read and write
  operations continue to work while the stream is in the `UPDATING` state.

  You can use `DescribeStreamSummary` to check the status of the stream,
  which is returned in `StreamStatus`. If the stream is in the
  `ACTIVE` state, you can call `SplitShard`.

  If the specified stream does not exist, `DescribeStreamSummary`
  returns a `ResourceNotFoundException`. If you try to create more shards than
  are authorized for your account, you receive a `LimitExceededException`.

  For the default shard limit for an Amazon Web Services account, see [Kinesis Data Streams
  Limits](https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
  in the *Amazon Kinesis Data Streams Developer
  Guide*. To increase this limit, [contact Amazon Web Services Support](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

  If you try to operate on too many streams simultaneously using `CreateStream`,
  `DeleteStream`, `MergeShards`, and/or `SplitShard`, you receive a
  `LimitExceededException`.

  `SplitShard` has a limit of five transactions per second per account.
  """
  @spec split_shard(map(), split_shard_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, split_shard_errors()}
  def split_shard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SplitShard", input, options)
  end

  @doc """
  Enables or updates server-side encryption using an Amazon Web Services KMS key
  for a
  specified stream.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  Starting encryption is an asynchronous operation. Upon receiving the request,
  Kinesis
  Data Streams returns immediately and sets the status of the stream to
  `UPDATING`. After the update is complete, Kinesis Data Streams sets the
  status of the stream back to `ACTIVE`. Updating or applying encryption
  normally takes a few seconds to complete, but it can take minutes. You can
  continue to
  read and write data to your stream while its status is `UPDATING`. Once the
  status of the stream is `ACTIVE`, encryption begins for records written to
  the stream.

  API Limits: You can successfully apply a new Amazon Web Services KMS key for
  server-side encryption 25 times in a rolling 24-hour period.

  Note: It can take up to 5 seconds after the stream is in an `ACTIVE` status
  before all records written to the stream are encrypted. After you enable
  encryption, you
  can verify that encryption is applied by inspecting the API response from
  `PutRecord` or `PutRecords`.
  """
  @spec start_stream_encryption(map(), start_stream_encryption_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_stream_encryption_errors()}
  def start_stream_encryption(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartStreamEncryption", input, options)
  end

  @doc """
  Disables server-side encryption for a specified stream.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  Stopping encryption is an asynchronous operation. Upon receiving the request,
  Kinesis
  Data Streams returns immediately and sets the status of the stream to
  `UPDATING`. After the update is complete, Kinesis Data Streams sets the
  status of the stream back to `ACTIVE`. Stopping encryption normally takes a
  few seconds to complete, but it can take minutes. You can continue to read and
  write
  data to your stream while its status is `UPDATING`. Once the status of the
  stream is `ACTIVE`, records written to the stream are no longer encrypted by
  Kinesis Data Streams.

  API Limits: You can successfully disable server-side encryption 25 times in a
  rolling
  24-hour period.

  Note: It can take up to 5 seconds after the stream is in an `ACTIVE` status
  before all records written to the stream are no longer subject to encryption.
  After you
  disabled encryption, you can verify that encryption is not applied by inspecting
  the API
  response from `PutRecord` or `PutRecords`.
  """
  @spec stop_stream_encryption(map(), stop_stream_encryption_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_stream_encryption_errors()}
  def stop_stream_encryption(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopStreamEncryption", input, options)
  end

  @doc """
  This operation establishes an HTTP/2 connection between the consumer you specify
  in
  the `ConsumerARN` parameter and the shard you specify in the
  `ShardId` parameter.

  After the connection is successfully established,
  Kinesis Data Streams pushes records from the shard to the consumer over this
  connection.
  Before you call this operation, call `RegisterStreamConsumer` to
  register the consumer with Kinesis Data Streams.

  When the `SubscribeToShard` call succeeds, your consumer starts receiving
  events of type `SubscribeToShardEvent` over the HTTP/2 connection for up
  to 5 minutes, after which time you need to call `SubscribeToShard` again to
  renew the subscription if you want to continue to receive records.

  You can make one call to `SubscribeToShard` per second per registered
  consumer per shard. For example, if you have a 4000 shard stream and two
  registered
  stream consumers, you can make one `SubscribeToShard` request per second for
  each combination of shard and registered consumer, allowing you to subscribe
  both
  consumers to all 4000 shards in one second.

  If you call `SubscribeToShard` again with the same `ConsumerARN`
  and `ShardId` within 5 seconds of a successful call, you'll get a
  `ResourceInUseException`. If you call `SubscribeToShard` 5
  seconds or more after a successful call, the second call takes over the
  subscription and
  the previous connection expires or fails with a
  `ResourceInUseException`.

  For an example of how to use this operation, see [Enhanced Fan-Out Using the Kinesis Data Streams
  API](https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html).
  """
  @spec subscribe_to_shard(map(), subscribe_to_shard_input(), list()) ::
          {:ok, subscribe_to_shard_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, subscribe_to_shard_errors()}
  def subscribe_to_shard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubscribeToShard", input, options)
  end

  @doc """
  Adds or updates tags for the specified Kinesis resource.

  Each tag is a label consisting of a user-defined key and value. Tags can help
  you manage, identify, organize, search for, and filter resources. You can assign
  up to 50 tags to a Kinesis resource.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified Kinesis resource.

  Removed tags are deleted and can't be recovered after this operation completes
  successfully.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the shard count of the specified stream to the specified number of
  shards.

  This API is only supported for the data streams with the provisioned capacity
  mode.

  When invoking this API, you must use either the `StreamARN` or the
  `StreamName` parameter, or both. It is recommended that you use the
  `StreamARN` input parameter when you invoke this API.

  Updating the shard count is an asynchronous operation. Upon receiving the
  request,
  Kinesis Data Streams returns immediately and sets the status of the stream to
  `UPDATING`. After the update is complete, Kinesis Data Streams sets the
  status of the stream back to `ACTIVE`. Depending on the size of the stream,
  the scaling action could take a few minutes to complete. You can continue to
  read and
  write data to your stream while its status is `UPDATING`.

  To update the shard count, Kinesis Data Streams performs splits or merges on
  individual shards. This can cause short-lived shards to be created, in addition
  to the
  final shards. These short-lived shards count towards your total shard limit for
  your
  account in the Region.

  When using this operation, we recommend that you specify a target shard count
  that is
  a multiple of 25% (25%, 50%, 75%, 100%). You can specify any target value within
  your
  shard limit. However, if you specify a target that isn't a multiple of 25%, the
  scaling
  action might take longer to complete.

  This operation has the following default limits. By default, you cannot do the
  following:

    *
  Scale more than ten times per rolling 24-hour period per stream

    *
  Scale up to more than double your current shard count for a stream

    *
  Scale down below half your current shard count for a stream

    *
  Scale up to more than 10000 shards in a stream

    *
  Scale a stream with more than 10000 shards down unless the result is less than
  10000 shards

    *
  Scale up to more than the shard limit for your account

    *
  Make over 10 TPS. TPS over 10 will trigger the LimitExceededException

  For the default limits for an Amazon Web Services account, see [Streams Limits](https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
  in the *Amazon Kinesis Data Streams Developer
  Guide*. To request an increase in the call rate limit, the shard limit for
  this API, or your overall shard limit, use the [limits form](https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&limitType=service-code-kinesis).
  """
  @spec update_shard_count(map(), update_shard_count_input(), list()) ::
          {:ok, update_shard_count_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_shard_count_errors()}
  def update_shard_count(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateShardCount", input, options)
  end

  @doc """
  Updates the capacity mode of the data stream.

  Currently, in Kinesis Data Streams, you
  can choose between an **on-demand** capacity mode and a
  **provisioned** capacity mode for your data stream.
  """
  @spec update_stream_mode(map(), update_stream_mode_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_stream_mode_errors()}
  def update_stream_mode(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStreamMode", input, options)
  end
end
