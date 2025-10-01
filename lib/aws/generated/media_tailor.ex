# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaTailor do
  @moduledoc """
  Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad
  insertion and linear channels.

  With MediaTailor, you can assemble existing content into a linear stream and
  serve targeted ads to viewers while maintaining broadcast quality in
  over-the-top (OTT) video applications. For information about using the service,
  including detailed information about the settings covered in this guide, see the
  [AWS Elemental MediaTailor User Guide](https://docs.aws.amazon.com/mediatailor/latest/ug/).

  Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations
  and channels the same as you do through the console. For example, you specify ad
  insertion behavior and mapping information for the origin server and the ad
  decision server (ADS).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_channel_policy_request() :: %{
        required("Policy") => String.t() | atom()
      }

  """
  @type put_channel_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_program_response() :: %{}

  """
  @type delete_program_response() :: %{}

  @typedoc """

  ## Example:

      live_pre_roll_configuration() :: %{
        "AdDecisionServerUrl" => String.t() | atom(),
        "MaxDurationSeconds" => integer()
      }

  """
  @type live_pre_roll_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_request() :: %{}

  """
  @type delete_channel_request() :: %{}

  @typedoc """

  ## Example:

      response_output_item() :: %{
        "DashPlaylistSettings" => dash_playlist_settings(),
        "HlsPlaylistSettings" => hls_playlist_settings(),
        "ManifestName" => String.t() | atom(),
        "PlaybackUrl" => String.t() | atom(),
        "SourceGroup" => String.t() | atom()
      }

  """
  @type response_output_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_channel_policy_response() :: %{}

  """
  @type put_channel_policy_response() :: %{}

  @typedoc """

  ## Example:

      vod_source() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "HttpPackageConfigurations" => list(http_package_configuration()),
        "LastModifiedTime" => non_neg_integer(),
        "SourceLocationName" => String.t() | atom(),
        "Tags" => map(),
        "VodSourceName" => String.t() | atom()
      }

  """
  @type vod_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_vod_source_request() :: %{}

  """
  @type describe_vod_source_request() :: %{}

  @typedoc """

  ## Example:

      configure_logs_for_playback_configuration_response() :: %{
        optional("AdsInteractionLog") => ads_interaction_log(),
        optional("EnabledLoggingStrategies") => list(list(any())()),
        optional("ManifestServiceInteractionLog") => manifest_service_interaction_log(),
        optional("PlaybackConfigurationName") => String.t() | atom(),
        required("PercentEnabled") => integer()
      }

  """
  @type configure_logs_for_playback_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_vod_source_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map(),
        optional("VodSourceName") => String.t() | atom()
      }

  """
  @type update_vod_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vod_source_request() :: %{}

  """
  @type delete_vod_source_request() :: %{}

  @typedoc """

  ## Example:

      describe_vod_source_response() :: %{
        optional("AdBreakOpportunities") => list(ad_break_opportunity()),
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map(),
        optional("VodSourceName") => String.t() | atom()
      }

  """
  @type describe_vod_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("Audiences") => list([String.t() | atom()]()),
        optional("ChannelName") => String.t() | atom(),
        optional("ChannelState") => list(any()),
        optional("CreationTime") => non_neg_integer(),
        optional("FillerSlate") => slate_source(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("Outputs") => list(response_output_item()),
        optional("PlaybackMode") => String.t() | atom(),
        optional("Tags") => map(),
        optional("Tier") => String.t() | atom(),
        optional("TimeShiftConfiguration") => time_shift_configuration()
      }

  """
  @type create_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configure_logs_for_channel_request() :: %{
        required("ChannelName") => String.t() | atom(),
        required("LogTypes") => list(list(any())())
      }

  """
  @type configure_logs_for_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_playback_configuration_request() :: %{}

  """
  @type delete_playback_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_vod_source_response() :: %{}

  """
  @type delete_vod_source_response() :: %{}

  @typedoc """

  ## Example:

      delete_channel_response() :: %{}

  """
  @type delete_channel_response() :: %{}

  @typedoc """

  ## Example:

      playback_configuration() :: %{
        "AdConditioningConfiguration" => ad_conditioning_configuration(),
        "AdDecisionServerUrl" => String.t() | atom(),
        "AvailSuppression" => avail_suppression(),
        "Bumper" => bumper(),
        "CdnConfiguration" => cdn_configuration(),
        "ConfigurationAliases" => map(),
        "DashConfiguration" => dash_configuration(),
        "HlsConfiguration" => hls_configuration(),
        "InsertionMode" => list(any()),
        "LivePreRollConfiguration" => live_pre_roll_configuration(),
        "LogConfiguration" => log_configuration(),
        "ManifestProcessingRules" => manifest_processing_rules(),
        "Name" => String.t() | atom(),
        "PersonalizationThresholdSeconds" => integer(),
        "PlaybackConfigurationArn" => String.t() | atom(),
        "PlaybackEndpointPrefix" => String.t() | atom(),
        "SessionInitializationEndpointPrefix" => String.t() | atom(),
        "SlateAdUrl" => String.t() | atom(),
        "Tags" => map(),
        "TranscodeProfileName" => String.t() | atom(),
        "VideoContentSourceUrl" => String.t() | atom()
      }

  """
  @type playback_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_schedule_request() :: %{
        optional("Audience") => String.t() | atom(),
        optional("DurationMinutes") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_channel_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_alerts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type list_alerts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_prefetch_schedules_response() :: %{
        optional("Items") => list(prefetch_schedule()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_prefetch_schedules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prefetch_consumption() :: %{
        "AvailMatchingCriteria" => list(avail_matching_criteria()),
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }

  """
  @type prefetch_consumption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_policy_request() :: %{}

  """
  @type delete_channel_policy_request() :: %{}

  @typedoc """

  ## Example:

      ad_conditioning_configuration() :: %{
        "StreamingMediaFileConditioning" => list(any())
      }

  """
  @type ad_conditioning_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_vod_sources_response() :: %{
        optional("Items") => list(vod_source()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_vod_sources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configure_logs_for_playback_configuration_request() :: %{
        "AdsInteractionLog" => ads_interaction_log(),
        "EnabledLoggingStrategies" => list(list(any())()),
        "ManifestServiceInteractionLog" => manifest_service_interaction_log(),
        "PercentEnabled" => integer(),
        "PlaybackConfigurationName" => String.t() | atom()
      }

  """
  @type configure_logs_for_playback_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_shaping_retrieval_window() :: %{
        "RetrievalWindowDurationSeconds" => integer()
      }

  """
  @type traffic_shaping_retrieval_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_source_location_response() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("HttpConfiguration") => http_configuration(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type update_source_location_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      default_segment_delivery_configuration() :: %{
        "BaseUrl" => String.t() | atom()
      }

  """
  @type default_segment_delivery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recurring_retrieval() :: %{
        "DelayAfterAvailEndSeconds" => integer(),
        "DynamicVariables" => map(),
        "TrafficShapingRetrievalWindow" => traffic_shaping_retrieval_window(),
        "TrafficShapingTpsConfiguration" => traffic_shaping_tps_configuration(),
        "TrafficShapingType" => list(any())
      }

  """
  @type recurring_retrieval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_schedule_response() :: %{
        optional("Items") => list(schedule_entry()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_channel_schedule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ad_break_opportunity() :: %{
        "OffsetMillis" => float()
      }

  """
  @type ad_break_opportunity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_prefetch_schedule_request() :: %{}

  """
  @type get_prefetch_schedule_request() :: %{}

  @typedoc """

  ## Example:

      manifest_processing_rules() :: %{
        "AdMarkerPassthrough" => ad_marker_passthrough()
      }

  """
  @type manifest_processing_rules() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_playlist_settings() :: %{
        "ManifestWindowSeconds" => integer(),
        "MinBufferTimeSeconds" => integer(),
        "MinUpdatePeriodSeconds" => integer(),
        "SuggestedPresentationDelaySeconds" => integer()
      }

  """
  @type dash_playlist_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_channel_request() :: %{}

  """
  @type stop_channel_request() :: %{}

  @typedoc """

  ## Example:

      audience_media() :: %{
        "AlternateMedia" => list(alternate_media()),
        "Audience" => String.t() | atom()
      }

  """
  @type audience_media() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_source_location_response() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("HttpConfiguration") => http_configuration(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type describe_source_location_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_playback_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_playback_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_prefetch_schedule_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("Consumption") => prefetch_consumption(),
        optional("Name") => String.t() | atom(),
        optional("PlaybackConfigurationName") => String.t() | atom(),
        optional("RecurringPrefetchConfiguration") => recurring_prefetch_configuration(),
        optional("Retrieval") => prefetch_retrieval(),
        optional("ScheduleType") => list(any()),
        optional("StreamId") => String.t() | atom()
      }

  """
  @type get_prefetch_schedule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clip_range() :: %{
        "EndOffsetMillis" => float(),
        "StartOffsetMillis" => float()
      }

  """
  @type clip_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_shaping_tps_configuration() :: %{
        "PeakConcurrentUsers" => integer(),
        "PeakTps" => integer()
      }

  """
  @type traffic_shaping_tps_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_program_response() :: %{
        optional("AdBreaks") => list(ad_break()),
        optional("Arn") => String.t() | atom(),
        optional("AudienceMedia") => list(audience_media()),
        optional("ChannelName") => String.t() | atom(),
        optional("ClipRange") => clip_range(),
        optional("CreationTime") => non_neg_integer(),
        optional("DurationMillis") => float(),
        optional("LiveSourceName") => String.t() | atom(),
        optional("ProgramName") => String.t() | atom(),
        optional("ScheduledStartTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("VodSourceName") => String.t() | atom()
      }

  """
  @type create_program_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_live_sources_response() :: %{
        optional("Items") => list(live_source()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_live_sources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_source_location_response() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("HttpConfiguration") => http_configuration(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type create_source_location_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_live_source_request() :: %{
        required("HttpPackageConfigurations") => list(http_package_configuration())
      }

  """
  @type update_live_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      secrets_manager_access_token_configuration() :: %{
        "HeaderName" => String.t() | atom(),
        "SecretArn" => String.t() | atom(),
        "SecretStringKey" => String.t() | atom()
      }

  """
  @type secrets_manager_access_token_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_channel_response() :: %{}

  """
  @type stop_channel_response() :: %{}

  @typedoc """

  ## Example:

      start_channel_request() :: %{}

  """
  @type start_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_playback_configuration_request() :: %{}

  """
  @type get_playback_configuration_request() :: %{}

  @typedoc """

  ## Example:

      http_configuration() :: %{
        "BaseUrl" => String.t() | atom()
      }

  """
  @type http_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cdn_configuration() :: %{
        "AdSegmentUrlPrefix" => String.t() | atom(),
        "ContentSegmentUrlPrefix" => String.t() | atom()
      }

  """
  @type cdn_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      avail_suppression() :: %{
        "FillPolicy" => list(any()),
        "Mode" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type avail_suppression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_program_schedule_configuration() :: %{
        "ClipRange" => clip_range(),
        "Transition" => update_program_transition()
      }

  """
  @type update_program_schedule_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_package_configuration() :: %{
        "Path" => String.t() | atom(),
        "SourceGroup" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type http_package_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_live_source_request() :: %{
        optional("Tags") => map(),
        required("HttpPackageConfigurations") => list(http_package_configuration())
      }

  """
  @type create_live_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_prefetch_schedule_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("Consumption") => prefetch_consumption(),
        optional("Name") => String.t() | atom(),
        optional("PlaybackConfigurationName") => String.t() | atom(),
        optional("RecurringPrefetchConfiguration") => recurring_prefetch_configuration(),
        optional("Retrieval") => prefetch_retrieval(),
        optional("ScheduleType") => list(any()),
        optional("StreamId") => String.t() | atom()
      }

  """
  @type create_prefetch_schedule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_policy_response() :: %{}

  """
  @type delete_channel_policy_response() :: %{}

  @typedoc """

  ## Example:

      describe_channel_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("Audiences") => list([String.t() | atom()]()),
        optional("ChannelName") => String.t() | atom(),
        optional("ChannelState") => list(any()),
        optional("CreationTime") => non_neg_integer(),
        optional("FillerSlate") => slate_source(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("Outputs") => list(response_output_item()),
        optional("PlaybackMode") => String.t() | atom(),
        optional("Tags") => map(),
        optional("Tier") => String.t() | atom(),
        optional("TimeShiftConfiguration") => time_shift_configuration(),
        required("LogConfiguration") => log_configuration_for_channel()
      }

  """
  @type describe_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_configuration_for_channel() :: %{
        "LogTypes" => list(list(any())())
      }

  """
  @type log_configuration_for_channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_channel_request() :: %{}

  """
  @type describe_channel_request() :: %{}

  @typedoc """

  ## Example:

      alternate_media() :: %{
        "AdBreaks" => list(ad_break()),
        "ClipRange" => clip_range(),
        "DurationMillis" => float(),
        "LiveSourceName" => String.t() | atom(),
        "ScheduledStartTimeMillis" => float(),
        "SourceLocationName" => String.t() | atom(),
        "VodSourceName" => String.t() | atom()
      }

  """
  @type alternate_media() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      live_source() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "HttpPackageConfigurations" => list(http_package_configuration()),
        "LastModifiedTime" => non_neg_integer(),
        "LiveSourceName" => String.t() | atom(),
        "SourceLocationName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type live_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_entry() :: %{
        "ApproximateDurationSeconds" => float(),
        "ApproximateStartTime" => non_neg_integer(),
        "Arn" => String.t() | atom(),
        "Audiences" => list([String.t() | atom()]()),
        "ChannelName" => String.t() | atom(),
        "LiveSourceName" => String.t() | atom(),
        "ProgramName" => String.t() | atom(),
        "ScheduleAdBreaks" => list(schedule_ad_break()),
        "ScheduleEntryType" => list(any()),
        "SourceLocationName" => String.t() | atom(),
        "VodSourceName" => String.t() | atom()
      }

  """
  @type schedule_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("Audiences") => list([String.t() | atom()]()),
        optional("FillerSlate") => slate_source(),
        optional("Tags") => map(),
        optional("Tier") => list(any()),
        optional("TimeShiftConfiguration") => time_shift_configuration(),
        required("Outputs") => list(request_output_item()),
        required("PlaybackMode") => list(any())
      }

  """
  @type create_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_source_location_request() :: %{}

  """
  @type describe_source_location_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_policy_response() :: %{
        optional("Policy") => String.t() | atom()
      }

  """
  @type get_channel_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prefetch_retrieval() :: %{
        "DynamicVariables" => map(),
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "TrafficShapingRetrievalWindow" => traffic_shaping_retrieval_window(),
        "TrafficShapingTpsConfiguration" => traffic_shaping_tps_configuration(),
        "TrafficShapingType" => list(any())
      }

  """
  @type prefetch_retrieval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configure_logs_for_channel_response() :: %{
        optional("ChannelName") => String.t() | atom(),
        optional("LogTypes") => list(list(any())())
      }

  """
  @type configure_logs_for_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        optional("Items") => list(channel()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_channels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_prefetch_schedule_request() :: %{
        optional("Consumption") => prefetch_consumption(),
        optional("RecurringPrefetchConfiguration") => recurring_prefetch_configuration(),
        optional("Retrieval") => prefetch_retrieval(),
        optional("ScheduleType") => list(any()),
        optional("StreamId") => String.t() | atom()
      }

  """
  @type create_prefetch_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ads_interaction_log() :: %{
        "ExcludeEventTypes" => list(list(any())()),
        "PublishOptInEventTypes" => list(list(any())())
      }

  """
  @type ads_interaction_log() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_prefetch_schedule_response() :: %{}

  """
  @type delete_prefetch_schedule_response() :: %{}

  @typedoc """

  ## Example:

      manifest_service_interaction_log() :: %{
        "ExcludeEventTypes" => list(list(any())())
      }

  """
  @type manifest_service_interaction_log() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("Audiences") => list([String.t() | atom()]()),
        optional("FillerSlate") => slate_source(),
        optional("TimeShiftConfiguration") => time_shift_configuration(),
        required("Outputs") => list(request_output_item())
      }

  """
  @type update_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_configuration() :: %{
        "ManifestEndpointPrefix" => String.t() | atom(),
        "MpdLocation" => String.t() | atom(),
        "OriginManifestType" => list(any())
      }

  """
  @type dash_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_source_location_request() :: %{}

  """
  @type delete_source_location_request() :: %{}

  @typedoc """

  ## Example:

      update_source_location_request() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()),
        required("HttpConfiguration") => http_configuration()
      }

  """
  @type update_source_location_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_source_locations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_source_locations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_shift_configuration() :: %{
        "MaxTimeDelaySeconds" => integer()
      }

  """
  @type time_shift_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_program_response() :: %{
        optional("AdBreaks") => list(ad_break()),
        optional("Arn") => String.t() | atom(),
        optional("AudienceMedia") => list(audience_media()),
        optional("ChannelName") => String.t() | atom(),
        optional("ClipRange") => clip_range(),
        optional("CreationTime") => non_neg_integer(),
        optional("DurationMillis") => [float()],
        optional("LiveSourceName") => String.t() | atom(),
        optional("ProgramName") => String.t() | atom(),
        optional("ScheduledStartTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("VodSourceName") => String.t() | atom()
      }

  """
  @type describe_program_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ad_break() :: %{
        "AdBreakMetadata" => list(key_value_pair()),
        "MessageType" => list(any()),
        "OffsetMillis" => float(),
        "Slate" => slate_source(),
        "SpliceInsertMessage" => splice_insert_message(),
        "TimeSignalMessage" => time_signal_message()
      }

  """
  @type ad_break() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slate_source() :: %{
        "SourceLocationName" => String.t() | atom(),
        "VodSourceName" => String.t() | atom()
      }

  """
  @type slate_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ad_marker_passthrough() :: %{
        "Enabled" => boolean()
      }

  """
  @type ad_marker_passthrough() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_vod_sources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_vod_sources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_program_request() :: %{
        optional("AdBreaks") => list(ad_break()),
        optional("AudienceMedia") => list(audience_media()),
        optional("LiveSourceName") => String.t() | atom(),
        optional("VodSourceName") => String.t() | atom(),
        required("ScheduleConfiguration") => schedule_configuration(),
        required("SourceLocationName") => String.t() | atom()
      }

  """
  @type create_program_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_prefetch_schedule_request() :: %{}

  """
  @type delete_prefetch_schedule_request() :: %{}

  @typedoc """

  ## Example:

      segmentation_descriptor() :: %{
        "SegmentNum" => [integer()],
        "SegmentationEventId" => [integer()],
        "SegmentationTypeId" => [integer()],
        "SegmentationUpid" => [String.t() | atom()],
        "SegmentationUpidType" => [integer()],
        "SegmentsExpected" => [integer()],
        "SubSegmentNum" => [integer()],
        "SubSegmentsExpected" => [integer()]
      }

  """
  @type segmentation_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transition() :: %{
        "DurationMillis" => float(),
        "RelativePosition" => list(any()),
        "RelativeProgram" => String.t() | atom(),
        "ScheduledStartTimeMillis" => float(),
        "Type" => String.t() | atom()
      }

  """
  @type transition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_program_request() :: %{
        optional("AdBreaks") => list(ad_break()),
        optional("AudienceMedia") => list(audience_media()),
        required("ScheduleConfiguration") => update_program_schedule_configuration()
      }

  """
  @type update_program_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_playback_configuration_response() :: %{
        optional("AdConditioningConfiguration") => ad_conditioning_configuration(),
        optional("AdDecisionServerUrl") => String.t() | atom(),
        optional("AvailSuppression") => avail_suppression(),
        optional("Bumper") => bumper(),
        optional("CdnConfiguration") => cdn_configuration(),
        optional("ConfigurationAliases") => map(),
        optional("DashConfiguration") => dash_configuration(),
        optional("HlsConfiguration") => hls_configuration(),
        optional("InsertionMode") => list(any()),
        optional("LivePreRollConfiguration") => live_pre_roll_configuration(),
        optional("LogConfiguration") => log_configuration(),
        optional("ManifestProcessingRules") => manifest_processing_rules(),
        optional("Name") => String.t() | atom(),
        optional("PersonalizationThresholdSeconds") => integer(),
        optional("PlaybackConfigurationArn") => String.t() | atom(),
        optional("PlaybackEndpointPrefix") => String.t() | atom(),
        optional("SessionInitializationEndpointPrefix") => String.t() | atom(),
        optional("SlateAdUrl") => String.t() | atom(),
        optional("Tags") => map(),
        optional("TranscodeProfileName") => String.t() | atom(),
        optional("VideoContentSourceUrl") => String.t() | atom()
      }

  """
  @type get_playback_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_program_request() :: %{}

  """
  @type describe_program_request() :: %{}

  @typedoc """

  ## Example:

      delete_live_source_response() :: %{}

  """
  @type delete_live_source_response() :: %{}

  @typedoc """

  ## Example:

      source_location() :: %{
        "AccessConfiguration" => access_configuration(),
        "Arn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DefaultSegmentDeliveryConfiguration" => default_segment_delivery_configuration(),
        "HttpConfiguration" => http_configuration(),
        "LastModifiedTime" => non_neg_integer(),
        "SegmentDeliveryConfigurations" => list(segment_delivery_configuration()),
        "SourceLocationName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type source_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_signal_message() :: %{
        "SegmentationDescriptors" => list(segmentation_descriptor())
      }

  """
  @type time_signal_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_value_pair() :: %{
        "Key" => [String.t() | atom()],
        "Value" => [String.t() | atom()]
      }

  """
  @type key_value_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_live_source_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("LiveSourceName") => String.t() | atom(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type update_live_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_live_source_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("LiveSourceName") => String.t() | atom(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type create_live_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_output_item() :: %{
        "DashPlaylistSettings" => dash_playlist_settings(),
        "HlsPlaylistSettings" => hls_playlist_settings(),
        "ManifestName" => String.t() | atom(),
        "SourceGroup" => String.t() | atom()
      }

  """
  @type request_output_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_configuration() :: %{
        "ClipRange" => clip_range(),
        "Transition" => transition()
      }

  """
  @type schedule_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alert() :: %{
        "AlertCode" => String.t() | atom(),
        "AlertMessage" => String.t() | atom(),
        "Category" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "RelatedResourceArns" => list(String.t() | atom()),
        "ResourceArn" => String.t() | atom()
      }

  """
  @type alert() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_program_request() :: %{}

  """
  @type delete_program_request() :: %{}

  @typedoc """

  ## Example:

      delete_playback_configuration_response() :: %{}

  """
  @type delete_playback_configuration_response() :: %{}

  @typedoc """

  ## Example:

      channel() :: %{
        "Arn" => String.t() | atom(),
        "Audiences" => list([String.t() | atom()]()),
        "ChannelName" => String.t() | atom(),
        "ChannelState" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "FillerSlate" => slate_source(),
        "LastModifiedTime" => non_neg_integer(),
        "LogConfiguration" => log_configuration_for_channel(),
        "Outputs" => list(response_output_item()),
        "PlaybackMode" => String.t() | atom(),
        "Tags" => map(),
        "Tier" => String.t() | atom()
      }

  """
  @type channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_vod_source_request() :: %{
        required("HttpPackageConfigurations") => list(http_package_configuration())
      }

  """
  @type update_vod_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_channel_response() :: %{}

  """
  @type start_channel_response() :: %{}

  @typedoc """

  ## Example:

      put_playback_configuration_request() :: %{
        optional("AdConditioningConfiguration") => ad_conditioning_configuration(),
        optional("AdDecisionServerUrl") => String.t() | atom(),
        optional("AvailSuppression") => avail_suppression(),
        optional("Bumper") => bumper(),
        optional("CdnConfiguration") => cdn_configuration(),
        optional("ConfigurationAliases") => map(),
        optional("DashConfiguration") => dash_configuration_for_put(),
        optional("InsertionMode") => list(any()),
        optional("LivePreRollConfiguration") => live_pre_roll_configuration(),
        optional("ManifestProcessingRules") => manifest_processing_rules(),
        optional("PersonalizationThresholdSeconds") => integer(),
        optional("SlateAdUrl") => String.t() | atom(),
        optional("Tags") => map(),
        optional("TranscodeProfileName") => String.t() | atom(),
        optional("VideoContentSourceUrl") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type put_playback_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_program_response() :: %{
        optional("AdBreaks") => list(ad_break()),
        optional("Arn") => String.t() | atom(),
        optional("AudienceMedia") => list(audience_media()),
        optional("ChannelName") => String.t() | atom(),
        optional("ClipRange") => clip_range(),
        optional("CreationTime") => non_neg_integer(),
        optional("DurationMillis") => float(),
        optional("LiveSourceName") => String.t() | atom(),
        optional("ProgramName") => String.t() | atom(),
        optional("ScheduledStartTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("VodSourceName") => String.t() | atom()
      }

  """
  @type update_program_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recurring_prefetch_configuration() :: %{
        "EndTime" => non_neg_integer(),
        "RecurringConsumption" => recurring_consumption(),
        "RecurringRetrieval" => recurring_retrieval(),
        "StartTime" => non_neg_integer()
      }

  """
  @type recurring_prefetch_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_alerts_response() :: %{
        optional("Items") => list(alert()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_alerts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_ad_break() :: %{
        "ApproximateDurationSeconds" => float(),
        "ApproximateStartTime" => non_neg_integer(),
        "SourceLocationName" => String.t() | atom(),
        "VodSourceName" => String.t() | atom()
      }

  """
  @type schedule_ad_break() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hls_configuration() :: %{
        "ManifestEndpointPrefix" => String.t() | atom()
      }

  """
  @type hls_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vod_source_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map(),
        optional("VodSourceName") => String.t() | atom()
      }

  """
  @type create_vod_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_prefetch_schedules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ScheduleType") => list(any()),
        optional("StreamId") => String.t() | atom()
      }

  """
  @type list_prefetch_schedules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      avail_matching_criteria() :: %{
        "DynamicVariable" => String.t() | atom(),
        "Operator" => list(any())
      }

  """
  @type avail_matching_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recurring_consumption() :: %{
        "AvailMatchingCriteria" => list(avail_matching_criteria()),
        "RetrievedAdExpirationSeconds" => integer()
      }

  """
  @type recurring_consumption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vod_source_request() :: %{
        optional("Tags") => map(),
        required("HttpPackageConfigurations") => list(http_package_configuration())
      }

  """
  @type create_vod_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_channel_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("Audiences") => list([String.t() | atom()]()),
        optional("ChannelName") => String.t() | atom(),
        optional("ChannelState") => list(any()),
        optional("CreationTime") => non_neg_integer(),
        optional("FillerSlate") => slate_source(),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("Outputs") => list(response_output_item()),
        optional("PlaybackMode") => String.t() | atom(),
        optional("Tags") => map(),
        optional("Tier") => String.t() | atom(),
        optional("TimeShiftConfiguration") => time_shift_configuration()
      }

  """
  @type update_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_playback_configuration_response() :: %{
        optional("AdConditioningConfiguration") => ad_conditioning_configuration(),
        optional("AdDecisionServerUrl") => String.t() | atom(),
        optional("AvailSuppression") => avail_suppression(),
        optional("Bumper") => bumper(),
        optional("CdnConfiguration") => cdn_configuration(),
        optional("ConfigurationAliases") => map(),
        optional("DashConfiguration") => dash_configuration(),
        optional("HlsConfiguration") => hls_configuration(),
        optional("InsertionMode") => list(any()),
        optional("LivePreRollConfiguration") => live_pre_roll_configuration(),
        optional("LogConfiguration") => log_configuration(),
        optional("ManifestProcessingRules") => manifest_processing_rules(),
        optional("Name") => String.t() | atom(),
        optional("PersonalizationThresholdSeconds") => integer(),
        optional("PlaybackConfigurationArn") => String.t() | atom(),
        optional("PlaybackEndpointPrefix") => String.t() | atom(),
        optional("SessionInitializationEndpointPrefix") => String.t() | atom(),
        optional("SlateAdUrl") => String.t() | atom(),
        optional("Tags") => map(),
        optional("TranscodeProfileName") => String.t() | atom(),
        optional("VideoContentSourceUrl") => String.t() | atom()
      }

  """
  @type put_playback_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_policy_request() :: %{}

  """
  @type get_channel_policy_request() :: %{}

  @typedoc """

  ## Example:

      describe_live_source_response() :: %{
        optional("Arn") => String.t() | atom(),
        optional("CreationTime") => non_neg_integer(),
        optional("HttpPackageConfigurations") => list(http_package_configuration()),
        optional("LastModifiedTime") => non_neg_integer(),
        optional("LiveSourceName") => String.t() | atom(),
        optional("SourceLocationName") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type describe_live_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      segment_delivery_configuration() :: %{
        "BaseUrl" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type segment_delivery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_configuration() :: %{
        "AccessType" => list(any()),
        "SecretsManagerAccessTokenConfiguration" => secrets_manager_access_token_configuration()
      }

  """
  @type access_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_source_location_request() :: %{
        optional("AccessConfiguration") => access_configuration(),
        optional("DefaultSegmentDeliveryConfiguration") => default_segment_delivery_configuration(),
        optional("SegmentDeliveryConfigurations") => list(segment_delivery_configuration()),
        optional("Tags") => map(),
        required("HttpConfiguration") => http_configuration()
      }

  """
  @type create_source_location_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_configuration() :: %{
        "AdsInteractionLog" => ads_interaction_log(),
        "EnabledLoggingStrategies" => list(list(any())()),
        "ManifestServiceInteractionLog" => manifest_service_interaction_log(),
        "PercentEnabled" => integer()
      }

  """
  @type log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_source_location_response() :: %{}

  """
  @type delete_source_location_response() :: %{}

  @typedoc """

  ## Example:

      list_live_sources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_live_sources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_program_transition() :: %{
        "DurationMillis" => float(),
        "ScheduledStartTimeMillis" => float()
      }

  """
  @type update_program_transition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_channels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_source_locations_response() :: %{
        optional("Items") => list(source_location()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_source_locations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bumper() :: %{
        "EndUrl" => String.t() | atom(),
        "StartUrl" => String.t() | atom()
      }

  """
  @type bumper() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_configuration_for_put() :: %{
        "MpdLocation" => String.t() | atom(),
        "OriginManifestType" => list(any())
      }

  """
  @type dash_configuration_for_put() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_live_source_request() :: %{}

  """
  @type delete_live_source_request() :: %{}

  @typedoc """

  ## Example:

      prefetch_schedule() :: %{
        "Arn" => String.t() | atom(),
        "Consumption" => prefetch_consumption(),
        "Name" => String.t() | atom(),
        "PlaybackConfigurationName" => String.t() | atom(),
        "RecurringPrefetchConfiguration" => recurring_prefetch_configuration(),
        "Retrieval" => prefetch_retrieval(),
        "ScheduleType" => list(any()),
        "StreamId" => String.t() | atom()
      }

  """
  @type prefetch_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_playback_configurations_response() :: %{
        optional("Items") => list(playback_configuration()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_playback_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hls_playlist_settings() :: %{
        "AdMarkupType" => list(list(any())()),
        "ManifestWindowSeconds" => integer()
      }

  """
  @type hls_playlist_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_live_source_request() :: %{}

  """
  @type describe_live_source_request() :: %{}

  @typedoc """

  ## Example:

      splice_insert_message() :: %{
        "AvailNum" => integer(),
        "AvailsExpected" => integer(),
        "SpliceEventId" => integer(),
        "UniqueProgramId" => integer()
      }

  """
  @type splice_insert_message() :: %{(String.t() | atom()) => any()}

  @type list_tags_for_resource_errors() :: bad_request_exception()

  @type tag_resource_errors() :: bad_request_exception()

  @type untag_resource_errors() :: bad_request_exception()

  def metadata do
    %{
      api_version: "2018-04-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.mediatailor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaTailor",
      signature_version: "v4",
      signing_name: "mediatailor",
      target_prefix: nil
    }
  end

  @doc """
  Configures Amazon CloudWatch log settings for a channel.
  """
  @spec configure_logs_for_channel(map(), configure_logs_for_channel_request(), list()) ::
          {:ok, configure_logs_for_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def configure_logs_for_channel(%Client{} = client, input, options \\ []) do
    url_path = "/configureLogs/channel"
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

  @doc """
  Defines where AWS Elemental MediaTailor sends logs for the playback
  configuration.
  """
  @spec configure_logs_for_playback_configuration(
          map(),
          configure_logs_for_playback_configuration_request(),
          list()
        ) ::
          {:ok, configure_logs_for_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def configure_logs_for_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configureLogs/playbackConfiguration"
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

  @doc """
  Creates a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  @spec create_channel(map(), String.t() | atom(), create_channel_request(), list()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  The live source configuration.
  """
  @spec create_live_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_live_source_request(),
          list()
        ) ::
          {:ok, create_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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
  Creates a prefetch schedule for a playback configuration.

  A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain
  ads before an ad break happens. For more information about ad prefetching, see
  [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.
  """
  @spec create_prefetch_schedule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_prefetch_schedule_request(),
          list()
        ) ::
          {:ok, create_prefetch_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_prefetch_schedule(
        %Client{} = client,
        name,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
  Creates a program within a channel.

  For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.
  """
  @spec create_program(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_program_request(),
          list()
        ) ::
          {:ok, create_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Creates a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  @spec create_source_location(
          map(),
          String.t() | atom(),
          create_source_location_request(),
          list()
        ) ::
          {:ok, create_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  The VOD source configuration parameters.
  """
  @spec create_vod_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_vod_source_request(),
          list()
        ) ::
          {:ok, create_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
  Deletes a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  @spec delete_channel(map(), String.t() | atom(), delete_channel_request(), list()) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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
  The channel policy to delete.
  """
  @spec delete_channel_policy(map(), String.t() | atom(), delete_channel_policy_request(), list()) ::
          {:ok, delete_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
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
  The live source to delete.
  """
  @spec delete_live_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_live_source_request(),
          list()
        ) ::
          {:ok, delete_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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
  Deletes a playback configuration.

  For information about MediaTailor configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  @spec delete_playback_configuration(
          map(),
          String.t() | atom(),
          delete_playback_configuration_request(),
          list()
        ) ::
          {:ok, delete_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_playback_configuration(%Client{} = client, name, input, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"
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
  Deletes a prefetch schedule for a specific playback configuration.

  If you call `DeletePrefetchSchedule` on an expired prefetch schedule,
  MediaTailor returns an HTTP 404 status code. For more information about ad
  prefetching, see [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.
  """
  @spec delete_prefetch_schedule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_prefetch_schedule_request(),
          list()
        ) ::
          {:ok, delete_prefetch_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_prefetch_schedule(
        %Client{} = client,
        name,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

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
  Deletes a program within a channel.

  For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.
  """
  @spec delete_program(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_program_request(),
          list()
        ) ::
          {:ok, delete_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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
  Deletes a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  @spec delete_source_location(
          map(),
          String.t() | atom(),
          delete_source_location_request(),
          list()
        ) ::
          {:ok, delete_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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
  The video on demand (VOD) source to delete.
  """
  @spec delete_vod_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_vod_source_request(),
          list()
        ) ::
          {:ok, delete_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
  Describes a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  @spec describe_channel(map(), String.t() | atom(), list()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_channel(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The live source to describe.
  """
  @spec describe_live_source(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a program within a channel.

  For information about programs, see [Working with programs](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html)
  in the *MediaTailor User Guide*.
  """
  @spec describe_program(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_program(%Client{} = client, channel_name, program_name, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  @spec describe_source_location(map(), String.t() | atom(), list()) ::
          {:ok, describe_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_source_location(%Client{} = client, source_location_name, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides details about a specific video on demand (VOD) source in a specific
  source location.
  """
  @spec describe_vod_source(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the channel's IAM policy.

  IAM policies are used to control access to your channel.
  """
  @spec get_channel_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_channel_policy(%Client{} = client, channel_name, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about your channel's schedule.
  """
  @spec get_channel_schedule(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_channel_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_channel_schedule(
        %Client{} = client,
        channel_name,
        audience \\ nil,
        duration_minutes \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/schedule"
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
      if !is_nil(duration_minutes) do
        [{"durationMinutes", duration_minutes} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(audience) do
        [{"audience", audience} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a playback configuration.

  For information about MediaTailor configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  @spec get_playback_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_playback_configuration(%Client{} = client, name, options \\ []) do
    url_path = "/playbackConfiguration/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a prefetch schedule for a playback configuration.

  A prefetch schedule allows you to tell MediaTailor to fetch and prepare certain
  ads before an ad break happens. For more information about ad prefetching, see
  [Using ad prefetching](https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
  in the *MediaTailor User Guide*.
  """
  @spec get_prefetch_schedule(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_prefetch_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_prefetch_schedule(%Client{} = client, name, playback_configuration_name, options \\ []) do
    url_path =
      "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the alerts that are associated with a MediaTailor channel assembly
  resource.
  """
  @spec list_alerts(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_alerts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_alerts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_arn,
        options \\ []
      ) do
    url_path = "/alerts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
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
  Retrieves information about the channels that are associated with the current
  AWS account.
  """
  @spec list_channels(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_channels(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/channels"
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
  Lists the live sources contained in a source location.

  A source represents a piece of content.
  """
  @spec list_live_sources(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_live_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_live_sources(
        %Client{} = client,
        source_location_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSources"
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
  Retrieves existing playback configurations.

  For information about MediaTailor configurations, see [Working with Configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  @spec list_playback_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_playback_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_playback_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/playbackConfigurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the prefetch schedules for a playback configuration.
  """
  @spec list_prefetch_schedules(
          map(),
          String.t() | atom(),
          list_prefetch_schedules_request(),
          list()
        ) ::
          {:ok, list_prefetch_schedules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_prefetch_schedules(
        %Client{} = client,
        playback_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/prefetchSchedule/#{AWS.Util.encode_uri(playback_configuration_name)}"
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
  Lists the source locations for a channel.

  A source location defines the host server URL, and contains a list of sources.
  """
  @spec list_source_locations(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_source_locations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_source_locations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sourceLocations"
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
  A list of tags that are associated with this resource.

  Tags are key-value pairs that you can associate with Amazon resources to help
  with organization, access control, and cost tracking. For more information, see
  [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
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
  Lists the VOD sources contained in a source location.

  A source represents a piece of content.
  """
  @spec list_vod_sources(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_vod_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_vod_sources(
        %Client{} = client,
        source_location_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSources"
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
  Creates an IAM policy for the channel.

  IAM policies are used to control access to your channel.
  """
  @spec put_channel_policy(map(), String.t() | atom(), put_channel_policy_request(), list()) ::
          {:ok, put_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def put_channel_policy(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/policy"
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

  @doc """
  Creates a playback configuration.

  For information about MediaTailor configurations, see [Working with configurations in AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html).
  """
  @spec put_playback_configuration(map(), put_playback_configuration_request(), list()) ::
          {:ok, put_playback_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def put_playback_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/playbackConfiguration"
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

  @doc """
  Starts a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  @spec start_channel(map(), String.t() | atom(), start_channel_request(), list()) ::
          {:ok, start_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def start_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/start"
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

  @doc """
  Stops a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  @spec stop_channel(map(), String.t() | atom(), stop_channel_request(), list()) ::
          {:ok, stop_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def stop_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}/stop"
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

  @doc """
  The resource to tag.

  Tags are key-value pairs that you can associate with Amazon resources to help
  with organization, access control, and cost tracking. For more information, see
  [Tagging AWS Elemental MediaTailor Resources](https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html).
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  The resource to untag.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Updates a channel.

  For information about MediaTailor channels, see [Working with channels](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html)
  in the *MediaTailor User Guide*.
  """
  @spec update_channel(map(), String.t() | atom(), update_channel_request(), list()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channel/#{AWS.Util.encode_uri(channel_name)}"
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

  @doc """
  Updates a live source's configuration.
  """
  @spec update_live_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_live_source_request(),
          list()
        ) ::
          {:ok, update_live_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_live_source(
        %Client{} = client,
        live_source_name,
        source_location_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/liveSource/#{AWS.Util.encode_uri(live_source_name)}"

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

  @doc """
  Updates a program within a channel.
  """
  @spec update_program(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_program_request(),
          list()
        ) ::
          {:ok, update_program_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_program(%Client{} = client, channel_name, program_name, input, options \\ []) do
    url_path =
      "/channel/#{AWS.Util.encode_uri(channel_name)}/program/#{AWS.Util.encode_uri(program_name)}"

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

  @doc """
  Updates a source location.

  A source location is a container for sources. For more information about source
  locations, see [Working with source locations](https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html)
  in the *MediaTailor User Guide*.
  """
  @spec update_source_location(
          map(),
          String.t() | atom(),
          update_source_location_request(),
          list()
        ) ::
          {:ok, update_source_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_source_location(%Client{} = client, source_location_name, input, options \\ []) do
    url_path = "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}"
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

  @doc """
  Updates a VOD source's configuration.
  """
  @spec update_vod_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_vod_source_request(),
          list()
        ) ::
          {:ok, update_vod_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_vod_source(
        %Client{} = client,
        source_location_name,
        vod_source_name,
        input,
        options \\ []
      ) do
    url_path =
      "/sourceLocation/#{AWS.Util.encode_uri(source_location_name)}/vodSource/#{AWS.Util.encode_uri(vod_source_name)}"

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
