# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideo do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  update_signaling_channel_output() :: %{

  }
  """
  @type update_signaling_channel_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_stream_input() :: %{
    optional("DeviceName") => String.t(),
    optional("MediaType") => String.t(),
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t(),
    required("CurrentVersion") => String.t()
  }
  """
  @type update_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_signaling_channel_input() :: %{
    optional("ChannelType") => list(any()),
    optional("SingleMasterConfiguration") => single_master_configuration(),
    optional("Tags") => list(tag()()),
    required("ChannelName") => String.t()
  }
  """
  @type create_signaling_channel_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  media_source_config() :: %{
    "MediaUriSecretArn" => String.t(),
    "MediaUriType" => list(any())
  }
  """
  @type media_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_stream_output() :: %{

  }
  """
  @type update_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_in_use_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_image_generation_configuration_output() :: %{
    "ImageGenerationConfiguration" => image_generation_configuration()
  }
  """
  @type describe_image_generation_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_signaling_channel_output() :: %{
    "ChannelARN" => String.t()
  }
  """
  @type create_signaling_channel_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_stream_output() :: %{
    "NextToken" => String.t(),
    "Tags" => map()
  }
  """
  @type list_tags_for_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  version_mismatch_exception() :: %{
    "Message" => String.t()
  }
  """
  @type version_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_signaling_channel_input() :: %{
    optional("CurrentVersion") => String.t(),
    required("ChannelARN") => String.t()
  }
  """
  @type delete_signaling_channel_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  no_data_retention_exception() :: %{
    "Message" => String.t()
  }
  """
  @type no_data_retention_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_edge_configuration_update_output() :: %{
    "CreationTime" => non_neg_integer(),
    "EdgeConfig" => edge_config(),
    "FailedStatusDetails" => String.t(),
    "LastUpdatedTime" => non_neg_integer(),
    "StreamARN" => String.t(),
    "StreamName" => String.t(),
    "SyncStatus" => list(any())
  }
  """
  @type start_edge_configuration_update_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_edge_configuration_output() :: %{

  }
  """
  @type delete_edge_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_signaling_channels_output() :: %{
    "ChannelInfoList" => list(channel_info()()),
    "NextToken" => String.t()
  }
  """
  @type list_signaling_channels_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_stream_input() :: %{
    optional("CurrentVersion") => String.t(),
    required("StreamARN") => String.t()
  }
  """
  @type delete_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_data_retention_output() :: %{

  }
  """
  @type update_data_retention_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  channel_name_condition() :: %{
    "ComparisonOperator" => list(any()),
    "ComparisonValue" => String.t()
  }
  """
  @type channel_name_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  last_uploader_status() :: %{
    "JobStatusDetails" => String.t(),
    "LastCollectedTime" => non_neg_integer(),
    "LastUpdatedTime" => non_neg_integer(),
    "UploaderStatus" => list(any())
  }
  """
  @type last_uploader_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_output() :: %{
    "NextToken" => String.t(),
    "Tags" => map()
  }
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_signaling_channel_endpoint_output() :: %{
    "ResourceEndpointList" => list(resource_endpoint_list_item()())
  }
  """
  @type get_signaling_channel_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_media_storage_configuration_output() :: %{
    "MediaStorageConfiguration" => media_storage_configuration()
  }
  """
  @type describe_media_storage_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  local_size_config() :: %{
    "MaxLocalMediaSizeInMB" => integer(),
    "StrategyOnFullSize" => list(any())
  }
  """
  @type local_size_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_stream_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t(),
    required("Tags") => map()
  }
  """
  @type tag_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_edge_configuration_update_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t(),
    required("EdgeConfig") => edge_config()
  }
  """
  @type start_edge_configuration_update_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_streams_output() :: %{
    "NextToken" => String.t(),
    "StreamInfoList" => list(stream_info()())
  }
  """
  @type list_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_destination_config() :: %{
    "Uri" => String.t()
  }
  """
  @type notification_destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_edge_configuration_output() :: %{
    "CreationTime" => non_neg_integer(),
    "EdgeAgentStatus" => edge_agent_status(),
    "EdgeConfig" => edge_config(),
    "FailedStatusDetails" => String.t(),
    "LastUpdatedTime" => non_neg_integer(),
    "StreamARN" => String.t(),
    "StreamName" => String.t(),
    "SyncStatus" => list(any())
  }
  """
  @type describe_edge_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stream_name_condition() :: %{
    "ComparisonOperator" => list(any()),
    "ComparisonValue" => String.t()
  }
  """
  @type stream_name_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_media_storage_configuration_input() :: %{
    optional("ChannelARN") => String.t(),
    optional("ChannelName") => String.t()
  }
  """
  @type describe_media_storage_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_device_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_device_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  channel_info() :: %{
    "ChannelARN" => String.t(),
    "ChannelName" => String.t(),
    "ChannelStatus" => list(any()),
    "ChannelType" => list(any()),
    "CreationTime" => non_neg_integer(),
    "SingleMasterConfiguration" => single_master_configuration(),
    "Version" => String.t()
  }
  """
  @type channel_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_mapped_resource_configuration_output() :: %{
    "MappedResourceConfigurationList" => list(mapped_resource_configuration_list_item()()),
    "NextToken" => String.t()
  }
  """
  @type describe_mapped_resource_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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
  update_media_storage_configuration_input() :: %{
    required("ChannelARN") => String.t(),
    required("MediaStorageConfiguration") => media_storage_configuration()
  }
  """
  @type update_media_storage_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_image_generation_configuration_output() :: %{

  }
  """
  @type update_image_generation_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tags_per_resource_exceeded_limit_exception() :: %{
    "Message" => String.t()
  }
  """
  @type tags_per_resource_exceeded_limit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  account_stream_limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type account_stream_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_notification_configuration_output() :: %{
    "NotificationConfiguration" => notification_configuration()
  }
  """
  @type describe_notification_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  mapped_resource_configuration_list_item() :: %{
    "ARN" => String.t(),
    "Type" => String.t()
  }
  """
  @type mapped_resource_configuration_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_image_generation_configuration_input() :: %{
    optional("ImageGenerationConfiguration") => image_generation_configuration(),
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type update_image_generation_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  single_master_channel_endpoint_configuration() :: %{
    "Protocols" => list(list(any())()),
    "Role" => list(any())
  }
  """
  @type single_master_channel_endpoint_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_edge_configuration_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type describe_edge_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_notification_configuration_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type describe_notification_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  client_limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type client_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  uploader_config() :: %{
    "ScheduleConfig" => schedule_config()
  }
  """
  @type uploader_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_input() :: %{
    required("ResourceARN") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_signaling_channel_output() :: %{
    "ChannelInfo" => channel_info()
  }
  """
  @type describe_signaling_channel_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stream_edge_configuration_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type stream_edge_configuration_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_stream_output() :: %{

  }
  """
  @type untag_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_configuration() :: %{
    "DestinationConfig" => notification_destination_config(),
    "Status" => list(any())
  }
  """
  @type notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_edge_agent_configurations_output() :: %{
    "EdgeConfigs" => list(list_edge_agent_configurations_edge_config()()),
    "NextToken" => String.t()
  }
  """
  @type list_edge_agent_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_output() :: %{

  }
  """
  @type tag_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_signaling_channel_input() :: %{
    optional("SingleMasterConfiguration") => single_master_configuration(),
    required("ChannelARN") => String.t(),
    required("CurrentVersion") => String.t()
  }
  """
  @type update_signaling_channel_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  schedule_config() :: %{
    "DurationInSeconds" => integer(),
    "ScheduleExpression" => String.t()
  }
  """
  @type schedule_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_media_storage_configuration_output() :: %{

  }
  """
  @type update_media_storage_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_stream_output() :: %{

  }
  """
  @type tag_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  device_stream_limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type device_stream_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  account_channel_limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type account_channel_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_signaling_channel_endpoint_input() :: %{
    optional("SingleMasterChannelEndpointConfiguration") => single_master_channel_endpoint_configuration(),
    required("ChannelARN") => String.t()
  }
  """
  @type get_signaling_channel_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  single_master_configuration() :: %{
    "MessageTtlSeconds" => integer()
  }
  """
  @type single_master_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_streams_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("StreamNameCondition") => stream_name_condition()
  }
  """
  @type list_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_authorized_exception() :: %{
    "Message" => String.t()
  }
  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deletion_config() :: %{
    "DeleteAfterUpload" => boolean(),
    "EdgeRetentionInHours" => integer(),
    "LocalSizeConfig" => local_size_config()
  }
  """
  @type deletion_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_edge_configuration_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type delete_edge_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_stream_output() :: %{
    "StreamInfo" => stream_info()
  }
  """
  @type describe_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  image_generation_configuration() :: %{
    "DestinationConfig" => image_generation_destination_config(),
    "Format" => list(any()),
    "FormatConfig" => map(),
    "HeightPixels" => integer(),
    "ImageSelectorType" => list(any()),
    "SamplingInterval" => integer(),
    "Status" => list(any()),
    "WidthPixels" => integer()
  }
  """
  @type image_generation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_input() :: %{
    required("ResourceARN") => String.t(),
    required("TagKeyList") => list(String.t()())
  }
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_stream_input() :: %{
    optional("NextToken") => String.t(),
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type list_tags_for_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_edge_agent_configurations_edge_config() :: %{
    "CreationTime" => non_neg_integer(),
    "EdgeConfig" => edge_config(),
    "FailedStatusDetails" => String.t(),
    "LastUpdatedTime" => non_neg_integer(),
    "StreamARN" => String.t(),
    "StreamName" => String.t(),
    "SyncStatus" => list(any())
  }
  """
  @type list_edge_agent_configurations_edge_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_argument_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_data_endpoint_output() :: %{
    "DataEndpoint" => String.t()
  }
  """
  @type get_data_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_signaling_channel_output() :: %{

  }
  """
  @type delete_signaling_channel_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_edge_agent_configurations_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("HubDeviceArn") => String.t()
  }
  """
  @type list_edge_agent_configurations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_input() :: %{
    optional("NextToken") => String.t(),
    required("ResourceARN") => String.t()
  }
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_output() :: %{

  }
  """
  @type untag_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_signaling_channels_input() :: %{
    optional("ChannelNameCondition") => channel_name_condition(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_signaling_channels_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_resource_format_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_resource_format_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_signaling_channel_input() :: %{
    optional("ChannelARN") => String.t(),
    optional("ChannelName") => String.t()
  }
  """
  @type describe_signaling_channel_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_notification_configuration_output() :: %{

  }
  """
  @type update_notification_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  edge_config() :: %{
    "DeletionConfig" => deletion_config(),
    "HubDeviceArn" => String.t(),
    "RecorderConfig" => recorder_config(),
    "UploaderConfig" => uploader_config()
  }
  """
  @type edge_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_stream_input() :: %{
    optional("DataRetentionInHours") => integer(),
    optional("DeviceName") => String.t(),
    optional("KmsKeyId") => String.t(),
    optional("MediaType") => String.t(),
    optional("Tags") => map(),
    required("StreamName") => String.t()
  }
  """
  @type create_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  edge_agent_status() :: %{
    "LastRecorderStatus" => last_recorder_status(),
    "LastUploaderStatus" => last_uploader_status()
  }
  """
  @type edge_agent_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_endpoint_list_item() :: %{
    "Protocol" => list(any()),
    "ResourceEndpoint" => String.t()
  }
  """
  @type resource_endpoint_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_notification_configuration_input() :: %{
    optional("NotificationConfiguration") => notification_configuration(),
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type update_notification_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stream_info() :: %{
    "CreationTime" => non_neg_integer(),
    "DataRetentionInHours" => integer(),
    "DeviceName" => String.t(),
    "KmsKeyId" => String.t(),
    "MediaType" => String.t(),
    "Status" => list(any()),
    "StreamARN" => String.t(),
    "StreamName" => String.t(),
    "Version" => String.t()
  }
  """
  @type stream_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_data_endpoint_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t(),
    required("APIName") => list(any())
  }
  """
  @type get_data_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  last_recorder_status() :: %{
    "JobStatusDetails" => String.t(),
    "LastCollectedTime" => non_neg_integer(),
    "LastUpdatedTime" => non_neg_integer(),
    "RecorderStatus" => list(any())
  }
  """
  @type last_recorder_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_stream_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type describe_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_stream_output() :: %{
    "StreamARN" => String.t()
  }
  """
  @type create_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recorder_config() :: %{
    "MediaSourceConfig" => media_source_config(),
    "ScheduleConfig" => schedule_config()
  }
  """
  @type recorder_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  image_generation_destination_config() :: %{
    "DestinationRegion" => String.t(),
    "Uri" => String.t()
  }
  """
  @type image_generation_destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_data_retention_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t(),
    required("CurrentVersion") => String.t(),
    required("DataRetentionChangeInHours") => integer(),
    required("Operation") => list(any())
  }
  """
  @type update_data_retention_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_image_generation_configuration_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type describe_image_generation_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_mapped_resource_configuration_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t()
  }
  """
  @type describe_mapped_resource_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_stream_input() :: %{
    optional("StreamARN") => String.t(),
    optional("StreamName") => String.t(),
    required("TagKeyList") => list(String.t()())
  }
  """
  @type untag_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_stream_output() :: %{

  }
  """
  @type delete_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  media_storage_configuration() :: %{
    "Status" => list(any()),
    "StreamARN" => String.t()
  }
  """
  @type media_storage_configuration() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2017-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisvideo",
      global?: false,
      protocol: "rest-json",
      service_id: "Kinesis Video",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """
  Creates a signaling channel.

  `CreateSignalingChannel` is an asynchronous operation.
  """
  @spec create_signaling_channel(map(), create_signaling_channel_input(), list()) ::
          {:ok, create_signaling_channel_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, account_channel_limit_exceeded_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, tags_per_resource_exceeded_limit_exception()}
  def create_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/createSignalingChannel"
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
  Creates a new Kinesis video stream.

  When you create a new stream, Kinesis Video Streams assigns it a version number.
  When you change the stream's metadata, Kinesis Video Streams updates the
  version.

  `CreateStream` is an asynchronous operation.

  For information about how the service works, see [How it Works](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html).

  You must have permissions for the `KinesisVideo:CreateStream`
  action.
  """
  @spec create_stream(map(), create_stream_input(), list()) ::
          {:ok, create_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, account_stream_limit_exceeded_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, device_stream_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_device_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, tags_per_resource_exceeded_limit_exception()}
  def create_stream(%Client{} = client, input, options \\ []) do
    url_path = "/createStream"
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
  An asynchronous API that deletes a stream’s existing edge configuration, as well
  as the corresponding media from the Edge Agent.

  When you invoke this API, the sync status is set to `DELETING`. A deletion
  process starts, in which active edge jobs are stopped and all media is deleted
  from the edge device. The time to delete varies, depending on the total amount
  of stored media. If the deletion process fails, the sync status changes to
  `DELETE_FAILED`. You will need to re-try the deletion.

  When the deletion process has completed successfully, the edge configuration is
  no longer accessible.
  """
  @spec delete_edge_configuration(map(), delete_edge_configuration_input(), list()) ::
          {:ok, delete_edge_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, stream_edge_configuration_not_found_exception()}
  def delete_edge_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/deleteEdgeConfiguration"
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
  Deletes a specified signaling channel.

  `DeleteSignalingChannel` is an
  asynchronous operation. If you don't specify the channel's current version, the
  most
  recent version is deleted.
  """
  @spec delete_signaling_channel(map(), delete_signaling_channel_input(), list()) ::
          {:ok, delete_signaling_channel_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, version_mismatch_exception()}
  def delete_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/deleteSignalingChannel"
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
  Deletes a Kinesis video stream and the data contained in the stream.

  This method marks the stream for deletion, and makes the data in the stream
  inaccessible immediately.

  To ensure that you have the latest version of the stream before deleting it, you
  can specify the stream version. Kinesis Video Streams assigns a version to each
  stream.
  When you update a stream, Kinesis Video Streams assigns a new version number. To
  get the
  latest stream version, use the `DescribeStream` API.

  This operation requires permission for the `KinesisVideo:DeleteStream`
  action.
  """
  @spec delete_stream(map(), delete_stream_input(), list()) ::
          {:ok, delete_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, version_mismatch_exception()}
  def delete_stream(%Client{} = client, input, options \\ []) do
    url_path = "/deleteStream"
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
  Describes a stream’s edge configuration that was set using the
  `StartEdgeConfigurationUpdate` API and the latest status of the edge
  agent's recorder and uploader jobs.

  Use this API to get the status of the configuration
  to determine if the configuration is in sync with the Edge Agent. Use this API
  to
  evaluate the health of the Edge Agent.
  """
  @spec describe_edge_configuration(map(), describe_edge_configuration_input(), list()) ::
          {:ok, describe_edge_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, stream_edge_configuration_not_found_exception()}
  def describe_edge_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeEdgeConfiguration"
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
  Gets the `ImageGenerationConfiguration` for a given Kinesis video stream.
  """
  @spec describe_image_generation_configuration(
          map(),
          describe_image_generation_configuration_input(),
          list()
        ) ::
          {:ok, describe_image_generation_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def describe_image_generation_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeImageGenerationConfiguration"
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
  Returns the most current information about the stream.

  The `streamName`
  or `streamARN` should be provided in the input.
  """
  @spec describe_mapped_resource_configuration(
          map(),
          describe_mapped_resource_configuration_input(),
          list()
        ) ::
          {:ok, describe_mapped_resource_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def describe_mapped_resource_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeMappedResourceConfiguration"
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
  Returns the most current information about the channel.

  Specify the `ChannelName`
  or `ChannelARN` in the input.
  """
  @spec describe_media_storage_configuration(
          map(),
          describe_media_storage_configuration_input(),
          list()
        ) ::
          {:ok, describe_media_storage_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def describe_media_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeMediaStorageConfiguration"
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
  Gets the `NotificationConfiguration` for a given Kinesis video stream.
  """
  @spec describe_notification_configuration(
          map(),
          describe_notification_configuration_input(),
          list()
        ) ::
          {:ok, describe_notification_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def describe_notification_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeNotificationConfiguration"
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
  Returns the most current information about the signaling channel.

  You must specify
  either the name or the Amazon Resource Name (ARN) of the channel that you want
  to
  describe.
  """
  @spec describe_signaling_channel(map(), describe_signaling_channel_input(), list()) ::
          {:ok, describe_signaling_channel_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def describe_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/describeSignalingChannel"
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
  Returns the most current information about the specified stream.

  You must specify
  either the `StreamName` or the `StreamARN`.
  """
  @spec describe_stream(map(), describe_stream_input(), list()) ::
          {:ok, describe_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_not_found_exception()}
  def describe_stream(%Client{} = client, input, options \\ []) do
    url_path = "/describeStream"
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
  Gets an endpoint for a specified stream for either reading or writing.

  Use this
  endpoint in your application to read from the specified stream (using the
  `GetMedia` or `GetMediaForFragmentList` operations) or write
  to it (using the `PutMedia` operation).

  The returned endpoint does not have the API name appended. The client needs to
  add the API name to the returned endpoint.

  In the request, specify the stream either by `StreamName` or
  `StreamARN`.
  """
  @spec get_data_endpoint(map(), get_data_endpoint_input(), list()) ::
          {:ok, get_data_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_not_found_exception()}
  def get_data_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/getDataEndpoint"
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
  Provides an endpoint for the specified signaling channel to send and receive
  messages.

  This API uses the `SingleMasterChannelEndpointConfiguration` input parameter,
  which consists of the `Protocols` and `Role` properties.

  `Protocols` is used to determine the communication mechanism. For example,
  if you specify `WSS` as the protocol, this API produces a secure websocket
  endpoint. If you specify `HTTPS` as the protocol, this API generates an HTTPS
  endpoint.

  `Role` determines the messaging permissions. A `MASTER` role
  results in this API generating an endpoint that a client can use to communicate
  with any
  of the viewers on the channel. A `VIEWER` role results in this API generating
  an endpoint that a client can use to communicate only with a `MASTER`.
  """
  @spec get_signaling_channel_endpoint(map(), get_signaling_channel_endpoint_input(), list()) ::
          {:ok, get_signaling_channel_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
  def get_signaling_channel_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/getSignalingChannelEndpoint"
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
  Returns an array of edge configurations associated with the specified Edge
  Agent.

  In the request, you must specify the Edge Agent `HubDeviceArn`.
  """
  @spec list_edge_agent_configurations(map(), list_edge_agent_configurations_input(), list()) ::
          {:ok, list_edge_agent_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, not_authorized_exception()}
  def list_edge_agent_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/listEdgeAgentConfigurations"
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
  Returns an array of `ChannelInfo` objects.

  Each object describes a
  signaling channel. To retrieve only those channels that satisfy a specific
  condition,
  you can specify a `ChannelNameCondition`.
  """
  @spec list_signaling_channels(map(), list_signaling_channels_input(), list()) ::
          {:ok, list_signaling_channels_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
  def list_signaling_channels(%Client{} = client, input, options \\ []) do
    url_path = "/listSignalingChannels"
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
  Returns an array of `StreamInfo` objects.

  Each object describes a
  stream. To retrieve only streams that satisfy a specific condition, you can
  specify a
  `StreamNameCondition`.
  """
  @spec list_streams(map(), list_streams_input(), list()) ::
          {:ok, list_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
  def list_streams(%Client{} = client, input, options \\ []) do
    url_path = "/listStreams"
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
  Returns a list of tags associated with the specified signaling channel.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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
  Returns a list of tags associated with the specified stream.

  In the request, you must specify either the `StreamName` or the
  `StreamARN`.
  """
  @spec list_tags_for_stream(map(), list_tags_for_stream_input(), list()) ::
          {:ok, list_tags_for_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_resource_format_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_not_found_exception()}
  def list_tags_for_stream(%Client{} = client, input, options \\ []) do
    url_path = "/listTagsForStream"
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
  An asynchronous API that updates a stream’s existing edge configuration.

  The Kinesis Video Stream will sync the stream’s edge configuration with the Edge
  Agent IoT Greengrass
  component that runs on an IoT Hub Device, setup at your premise. The time to
  sync can vary
  and depends on the connectivity of the Hub Device.
  The `SyncStatus` will be updated as the edge configuration is acknowledged,
  and synced with the Edge Agent.

  If this API is invoked for the first time, a new edge configuration will be
  created for the stream,
  and the sync status will be set to `SYNCING`. You will have to wait for the sync
  status
  to reach a terminal state such as: `IN_SYNC`, or `SYNC_FAILED`, before using
  this API again.
  If you invoke this API during the syncing process, a `ResourceInUseException`
  will be thrown.
  The connectivity of the stream’s edge configuration and the Edge Agent will be
  retried for 15 minutes. After 15 minutes,
  the status will transition into the `SYNC_FAILED` state.

  To move an edge configuration from one device to another, use
  `DeleteEdgeConfiguration` to delete
  the current edge configuration. You can then invoke StartEdgeConfigurationUpdate
  with an updated Hub Device ARN.
  """
  @spec start_edge_configuration_update(map(), start_edge_configuration_update_input(), list()) ::
          {:ok, start_edge_configuration_update_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, no_data_retention_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
  def start_edge_configuration_update(%Client{} = client, input, options \\ []) do
    url_path = "/startEdgeConfigurationUpdate"
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
  Adds one or more tags to a signaling channel.

  A *tag* is a
  key-value pair (the value is optional) that you can define and assign to Amazon
  Web Services resources.
  If you specify a tag that already exists, the tag value is replaced with the
  value that
  you specify in the request. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management and Cost Management User
  Guide*.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, tags_per_resource_exceeded_limit_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
  Adds one or more tags to a stream.

  A *tag* is a key-value pair
  (the value is optional) that you can define and assign to Amazon Web Services
  resources. If you specify
  a tag that already exists, the tag value is replaced with the value that you
  specify in
  the request. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management and Cost Management User Guide*.

  You must provide either the `StreamName` or the
  `StreamARN`.

  This operation requires permission for the `KinesisVideo:TagStream`
  action.

  A Kinesis video stream can support up to 50 tags.
  """
  @spec tag_stream(map(), tag_stream_input(), list()) ::
          {:ok, tag_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_resource_format_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, tags_per_resource_exceeded_limit_exception()}
  def tag_stream(%Client{} = client, input, options \\ []) do
    url_path = "/tagStream"
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
  Removes one or more tags from a signaling channel.

  In the request, specify only a tag
  key or keys; don't specify the value. If you specify a tag key that does not
  exist, it's
  ignored.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
  Removes one or more tags from a stream.

  In the request, specify only a tag key or
  keys; don't specify the value. If you specify a tag key that does not exist,
  it's
  ignored.

  In the request, you must provide the `StreamName` or
  `StreamARN`.
  """
  @spec untag_stream(map(), untag_stream_input(), list()) ::
          {:ok, untag_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_resource_format_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_not_found_exception()}
  def untag_stream(%Client{} = client, input, options \\ []) do
    url_path = "/untagStream"
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
  Increases or decreases the stream's data retention period by the value that you
  specify.

  To indicate whether you want to increase or decrease the data retention period,
  specify the `Operation` parameter in the request body. In the request, you
  must specify either the `StreamName` or the `StreamARN`.

  This operation requires permission for the
  `KinesisVideo:UpdateDataRetention` action.

  Changing the data retention period affects the data in the stream as
  follows:

    *
  If the data retention period is increased, existing data is retained for
  the new retention period. For example, if the data retention period is increased
  from one hour to seven hours, all existing data is retained for seven
  hours.

    *
  If the data retention period is decreased, existing data is retained for
  the new retention period. For example, if the data retention period is decreased
  from seven hours to one hour, all existing data is retained for one hour, and
  any data older than one hour is deleted immediately.
  """
  @spec update_data_retention(map(), update_data_retention_input(), list()) ::
          {:ok, update_data_retention_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, version_mismatch_exception()}
  def update_data_retention(%Client{} = client, input, options \\ []) do
    url_path = "/updateDataRetention"
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
  Updates the `StreamInfo` and `ImageProcessingConfiguration` fields.
  """
  @spec update_image_generation_configuration(
          map(),
          update_image_generation_configuration_input(),
          list()
        ) ::
          {:ok, update_image_generation_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, no_data_retention_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
  def update_image_generation_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateImageGenerationConfiguration"
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
  Associates a `SignalingChannel` to a stream to store the media.

  There are
  two signaling modes that you can specify :

    *
  If `StorageStatus` is enabled, the data will be stored in the
  `StreamARN` provided. In order for WebRTC Ingestion to work, the stream must
  have data retention
  enabled.

    *
  If `StorageStatus` is disabled, no data will be stored, and the
  `StreamARN` parameter will not be needed.

  If `StorageStatus` is enabled, direct peer-to-peer (master-viewer) connections
  no
  longer occur. Peers connect directly to the storage session. You must call the
  `JoinStorageSession` API to trigger an SDP offer send and establish a
  connection between a peer and the storage session.
  """
  @spec update_media_storage_configuration(
          map(),
          update_media_storage_configuration_input(),
          list()
        ) ::
          {:ok, update_media_storage_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, no_data_retention_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
  def update_media_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateMediaStorageConfiguration"
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
  Updates the notification information for a stream.
  """
  @spec update_notification_configuration(
          map(),
          update_notification_configuration_input(),
          list()
        ) ::
          {:ok, update_notification_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, no_data_retention_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
  def update_notification_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateNotificationConfiguration"
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
  Updates the existing signaling channel.

  This is an asynchronous operation and takes
  time to complete.

  If the `MessageTtlSeconds` value is updated (either increased or reduced),
  it only applies to new messages sent via this channel after it's been updated.
  Existing
  messages are still expired as per the previous `MessageTtlSeconds`
  value.
  """
  @spec update_signaling_channel(map(), update_signaling_channel_input(), list()) ::
          {:ok, update_signaling_channel_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, version_mismatch_exception()}
  def update_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/updateSignalingChannel"
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
  Updates stream metadata, such as the device name and media type.

  You must provide the stream name or the Amazon Resource Name (ARN) of the
  stream.

  To make sure that you have the latest version of the stream before updating it,
  you
  can specify the stream version. Kinesis Video Streams assigns a version to each
  stream.
  When you update a stream, Kinesis Video Streams assigns a new version number. To
  get the
  latest stream version, use the `DescribeStream` API.

  `UpdateStream` is an asynchronous operation, and takes time to
  complete.
  """
  @spec update_stream(map(), update_stream_input(), list()) ::
          {:ok, update_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, client_limit_exceeded_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, not_authorized_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, version_mismatch_exception()}
  def update_stream(%Client{} = client, input, options \\ []) do
    url_path = "/updateStream"
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
