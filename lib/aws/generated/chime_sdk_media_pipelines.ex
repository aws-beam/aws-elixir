# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKMediaPipelines do
  @moduledoc """
  The Amazon Chime SDK media pipeline APIs in this section allow software
  developers to
  create Amazon Chime SDK media pipelines that capture, concatenate, or stream
  your Amazon Chime SDK meetings.

  For more information about media pipelines, see [Amazon Chime SDK media pipelines](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_media_capture_pipeline_response() :: %{
        "MediaCapturePipeline" => media_capture_pipeline()
      }

  """
  @type create_media_capture_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_data_stream_sink_configuration() :: %{
        "InsightsTarget" => String.t()
      }

  """
  @type kinesis_data_stream_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recording_stream_configuration() :: %{
        "StreamArn" => String.t()
      }

  """
  @type recording_stream_configuration() :: %{String.t() => any()}

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

      update_media_insights_pipeline_configuration_response() :: %{
        "MediaInsightsPipelineConfiguration" => media_insights_pipeline_configuration()
      }

  """
  @type update_media_insights_pipeline_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_channel_concatenation_configuration() :: %{
        "State" => list(any())
      }

  """
  @type data_channel_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_voice_tone_analysis_task_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("KinesisVideoStreamSourceTaskConfiguration") => kinesis_video_stream_source_task_configuration(),
        required("LanguageCode") => list(any())
      }

  """
  @type start_voice_tone_analysis_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_concatenation_configuration() :: %{
        "State" => list(any())
      }

  """
  @type video_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_speaker_search_task_response() :: %{
        "SpeakerSearchTask" => speaker_search_task()
      }

  """
  @type start_speaker_search_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_media_pipeline_kinesis_video_stream_pool_request() :: %{}

  """
  @type delete_media_pipeline_kinesis_video_stream_pool_request() :: %{}

  @typedoc """

  ## Example:

      create_media_concatenation_pipeline_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("Sinks") => list(concatenation_sink()()),
        required("Sources") => list(concatenation_source()())
      }

  """
  @type create_media_concatenation_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_capture_pipeline_response() :: %{
        "MediaCapturePipeline" => media_capture_pipeline()
      }

  """
  @type get_media_capture_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      video_artifacts_configuration() :: %{
        "MuxType" => list(any()),
        "State" => list(any())
      }

  """
  @type video_artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_failure_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      meeting_events_concatenation_configuration() :: %{
        "State" => list(any())
      }

  """
  @type meeting_events_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chime_sdk_meeting_live_connector_configuration() :: %{
        "Arn" => String.t(),
        "CompositedVideo" => composited_video_artifacts_configuration(),
        "MuxType" => list(any()),
        "SourceConfiguration" => source_configuration()
      }

  """
  @type chime_sdk_meeting_live_connector_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_pipeline_kinesis_video_stream_pool_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("PoolName") => String.t(),
        required("StreamConfiguration") => kinesis_video_stream_configuration()
      }

  """
  @type create_media_pipeline_kinesis_video_stream_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_capture_pipeline_request() :: %{}

  """
  @type get_media_capture_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      delete_media_pipeline_request() :: %{}

  """
  @type delete_media_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      list_media_pipeline_kinesis_video_stream_pools_response() :: %{
        "KinesisVideoStreamPools" => list(kinesis_video_stream_pool_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_media_pipeline_kinesis_video_stream_pools_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_insights_pipeline_configuration_request() :: %{}

  """
  @type get_media_insights_pipeline_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_media_pipeline_request() :: %{}

  """
  @type get_media_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      sqs_queue_sink_configuration() :: %{
        "InsightsTarget" => String.t()
      }

  """
  @type sqs_queue_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      selected_video_streams() :: %{
        "AttendeeIds" => list(String.t()()),
        "ExternalUserIds" => list(String.t()())
      }

  """
  @type selected_video_streams() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      live_connector_r_t_m_p_configuration() :: %{
        "AudioChannels" => list(any()),
        "AudioSampleRate" => String.t(),
        "Url" => String.t()
      }

  """
  @type live_connector_r_t_m_p_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_video_stream_source_task_configuration() :: %{
        "ChannelId" => integer(),
        "FragmentNumber" => String.t(),
        "StreamArn" => String.t()
      }

  """
  @type kinesis_video_stream_source_task_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_recording_sink_configuration() :: %{
        "Destination" => String.t(),
        "RecordingFileFormat" => list(any())
      }

  """
  @type s3_recording_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type unauthorized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_concatenation_configuration() :: %{
        "State" => list(any())
      }

  """
  @type audio_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composited_video_concatenation_configuration() :: %{
        "State" => list(any())
      }

  """
  @type composited_video_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      speaker_search_task() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "SpeakerSearchTaskId" => String.t(),
        "SpeakerSearchTaskStatus" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type speaker_search_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_insights_pipeline_element_status() :: %{
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type media_insights_pipeline_element_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_pipelines_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_media_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concatenation_sink() :: %{
        "S3BucketSinkConfiguration" => s3_bucket_sink_configuration(),
        "Type" => list(any())
      }

  """
  @type concatenation_sink() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_speaker_search_task_response() :: %{
        "SpeakerSearchTask" => speaker_search_task()
      }

  """
  @type get_speaker_search_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_speaker_search_task_request() :: %{}

  """
  @type stop_speaker_search_task_request() :: %{}

  @typedoc """

  ## Example:

      content_artifacts_configuration() :: %{
        "MuxType" => list(any()),
        "State" => list(any())
      }

  """
  @type content_artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttled_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type throttled_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vertical_layout_configuration() :: %{
        "TileAspectRatio" => String.t(),
        "TileCount" => integer(),
        "TileOrder" => list(any()),
        "TilePosition" => list(any())
      }

  """
  @type vertical_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_insights_pipeline_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_media_insights_pipeline_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_capture_pipelines_response() :: %{
        "MediaCapturePipelines" => list(media_capture_pipeline_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_media_capture_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => timestamp_range()
      }

  """
  @type fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_pipeline_kinesis_video_stream_pool_response() :: %{
        "KinesisVideoStreamPoolConfiguration" => kinesis_video_stream_pool_configuration()
      }

  """
  @type create_media_pipeline_kinesis_video_stream_pool_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sentiment_configuration() :: %{
        "RuleName" => String.t(),
        "SentimentType" => list(any()),
        "TimePeriod" => integer()
      }

  """
  @type sentiment_configuration() :: %{String.t() => any()}

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

      live_connector_sink_configuration() :: %{
        "RTMPConfiguration" => live_connector_r_t_m_p_configuration(),
        "SinkType" => list(any())
      }

  """
  @type live_connector_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sns_topic_sink_configuration() :: %{
        "InsightsTarget" => String.t()
      }

  """
  @type sns_topic_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      presenter_only_configuration() :: %{
        "PresenterPosition" => list(any())
      }

  """
  @type presenter_only_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_tone_analysis_task_response() :: %{
        "VoiceToneAnalysisTask" => voice_tone_analysis_task()
      }

  """
  @type get_voice_tone_analysis_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_media_capture_pipeline_request() :: %{}

  """
  @type delete_media_capture_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      get_media_insights_pipeline_configuration_response() :: %{
        "MediaInsightsPipelineConfiguration" => media_insights_pipeline_configuration()
      }

  """
  @type get_media_insights_pipeline_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_video_stream_configuration_update() :: %{
        "DataRetentionInHours" => integer()
      }

  """
  @type kinesis_video_stream_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_voice_tone_analysis_task_response() :: %{
        "VoiceToneAnalysisTask" => voice_tone_analysis_task()
      }

  """
  @type start_voice_tone_analysis_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_concatenation_pipeline_response() :: %{
        "MediaConcatenationPipeline" => media_concatenation_pipeline()
      }

  """
  @type create_media_concatenation_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      live_connector_source_configuration() :: %{
        "ChimeSdkMeetingLiveConnectorConfiguration" => chime_sdk_meeting_live_connector_configuration(),
        "SourceType" => list(any())
      }

  """
  @type live_connector_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_insights_pipeline_configuration() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Elements" => list(media_insights_pipeline_configuration_element()()),
        "MediaInsightsPipelineConfigurationArn" => String.t(),
        "MediaInsightsPipelineConfigurationId" => String.t(),
        "MediaInsightsPipelineConfigurationName" => String.t(),
        "RealTimeAlertConfiguration" => real_time_alert_configuration(),
        "ResourceAccessRoleArn" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type media_insights_pipeline_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      horizontal_layout_configuration() :: %{
        "TileAspectRatio" => String.t(),
        "TileCount" => integer(),
        "TileOrder" => list(any()),
        "TilePosition" => list(any())
      }

  """
  @type horizontal_layout_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      issue_detection_configuration() :: %{
        "RuleName" => String.t()
      }

  """
  @type issue_detection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_capture_pipeline() :: %{
        "ChimeSdkMeetingConfiguration" => chime_sdk_meeting_configuration(),
        "CreatedTimestamp" => non_neg_integer(),
        "MediaPipelineArn" => String.t(),
        "MediaPipelineId" => String.t(),
        "SinkArn" => String.t(),
        "SinkType" => list(any()),
        "SourceArn" => String.t(),
        "SourceType" => list(any()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type media_capture_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_concatenation_pipeline() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "MediaPipelineArn" => String.t(),
        "MediaPipelineId" => String.t(),
        "Sinks" => list(concatenation_sink()()),
        "Sources" => list(concatenation_source()()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type media_concatenation_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_video_stream_configuration() :: %{
        "DataRetentionInHours" => integer(),
        "Region" => String.t()
      }

  """
  @type kinesis_video_stream_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      amazon_transcribe_call_analytics_processor_configuration() :: %{
        "CallAnalyticsStreamCategories" => list(String.t()()),
        "ContentIdentificationType" => list(any()),
        "ContentRedactionType" => list(any()),
        "EnablePartialResultsStabilization" => boolean(),
        "FilterPartialResults" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageModelName" => String.t(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t(),
        "PostCallAnalyticsSettings" => post_call_analytics_settings(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyName" => String.t()
      }

  """
  @type amazon_transcribe_call_analytics_processor_configuration() :: %{String.t() => any()}

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

      kinesis_video_stream_pool_summary() :: %{
        "PoolArn" => String.t(),
        "PoolId" => String.t(),
        "PoolName" => String.t()
      }

  """
  @type kinesis_video_stream_pool_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_speaker_search_task_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("KinesisVideoStreamSourceTaskConfiguration") => kinesis_video_stream_source_task_configuration(),
        required("VoiceProfileDomainArn") => String.t()
      }

  """
  @type start_speaker_search_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_pipeline_kinesis_video_stream_pools_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_media_pipeline_kinesis_video_stream_pools_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composited_video_artifacts_configuration() :: %{
        "GridViewConfiguration" => grid_view_configuration(),
        "Layout" => list(any()),
        "Resolution" => list(any())
      }

  """
  @type composited_video_artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_definition() :: %{
        "ChannelId" => integer(),
        "ParticipantRole" => list(any())
      }

  """
  @type channel_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_media_insights_pipeline_configuration_request() :: %{
        optional("RealTimeAlertConfiguration") => real_time_alert_configuration(),
        required("Elements") => list(media_insights_pipeline_configuration_element()()),
        required("ResourceAccessRoleArn") => String.t()
      }

  """
  @type update_media_insights_pipeline_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_alert_rule() :: %{
        "IssueDetectionConfiguration" => issue_detection_configuration(),
        "KeywordMatchConfiguration" => keyword_match_configuration(),
        "SentimentConfiguration" => sentiment_configuration(),
        "Type" => list(any())
      }

  """
  @type real_time_alert_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_media_insights_pipeline_configuration_request() :: %{}

  """
  @type delete_media_insights_pipeline_configuration_request() :: %{}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_pipeline_kinesis_video_stream_pool_response() :: %{
        "KinesisVideoStreamPoolConfiguration" => kinesis_video_stream_pool_configuration()
      }

  """
  @type get_media_pipeline_kinesis_video_stream_pool_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_live_connector_pipeline() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "MediaPipelineArn" => String.t(),
        "MediaPipelineId" => String.t(),
        "Sinks" => list(live_connector_sink_configuration()()),
        "Sources" => list(live_connector_source_configuration()()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type media_live_connector_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_pipelines_response() :: %{
        "MediaPipelines" => list(media_pipeline_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_media_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_insights_pipeline_configuration_element() :: %{
        "AmazonTranscribeCallAnalyticsProcessorConfiguration" => amazon_transcribe_call_analytics_processor_configuration(),
        "AmazonTranscribeProcessorConfiguration" => amazon_transcribe_processor_configuration(),
        "KinesisDataStreamSinkConfiguration" => kinesis_data_stream_sink_configuration(),
        "LambdaFunctionSinkConfiguration" => lambda_function_sink_configuration(),
        "S3RecordingSinkConfiguration" => s3_recording_sink_configuration(),
        "SnsTopicSinkConfiguration" => sns_topic_sink_configuration(),
        "SqsQueueSinkConfiguration" => sqs_queue_sink_configuration(),
        "Type" => list(any()),
        "VoiceAnalyticsProcessorConfiguration" => voice_analytics_processor_configuration(),
        "VoiceEnhancementSinkConfiguration" => voice_enhancement_sink_configuration()
      }

  """
  @type media_insights_pipeline_configuration_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_artifacts_configuration() :: %{
        "MuxType" => list(any())
      }

  """
  @type audio_artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_stream_sink() :: %{
        "MediaStreamType" => list(any()),
        "ReservedStreamCapacity" => integer(),
        "SinkArn" => String.t(),
        "SinkType" => list(any())
      }

  """
  @type media_stream_sink() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_capture_pipelines_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_media_capture_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_analytics_processor_configuration() :: %{
        "SpeakerSearchStatus" => list(any()),
        "VoiceToneAnalysisStatus" => list(any())
      }

  """
  @type voice_analytics_processor_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_live_connector_pipeline_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("Sinks") => list(live_connector_sink_configuration()()),
        required("Sources") => list(live_connector_source_configuration()())
      }

  """
  @type create_media_live_connector_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_capture_pipeline_source_configuration() :: %{
        "ChimeSdkMeetingConfiguration" => chime_sdk_meeting_concatenation_configuration(),
        "MediaPipelineArn" => String.t()
      }

  """
  @type media_capture_pipeline_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_call_analytics_settings() :: %{
        "ContentRedactionOutput" => list(any()),
        "DataAccessRoleArn" => String.t(),
        "OutputEncryptionKMSKeyId" => String.t(),
        "OutputLocation" => String.t()
      }

  """
  @type post_call_analytics_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_function_sink_configuration() :: %{
        "InsightsTarget" => String.t()
      }

  """
  @type lambda_function_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_configuration() :: %{
        "SelectedVideoStreams" => selected_video_streams()
      }

  """
  @type source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_tone_analysis_task() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceToneAnalysisTaskId" => String.t(),
        "VoiceToneAnalysisTaskStatus" => list(any())
      }

  """
  @type voice_tone_analysis_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_attribute() :: %{
        "BorderColor" => list(any()),
        "BorderThickness" => integer(),
        "CornerRadius" => integer(),
        "HighlightColor" => list(any())
      }

  """
  @type video_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chime_sdk_meeting_configuration() :: %{
        "ArtifactsConfiguration" => artifacts_configuration(),
        "SourceConfiguration" => source_configuration()
      }

  """
  @type chime_sdk_meeting_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_pipeline_summary() :: %{
        "MediaPipelineArn" => String.t(),
        "MediaPipelineId" => String.t()
      }

  """
  @type media_pipeline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_capture_pipeline_summary() :: %{
        "MediaPipelineArn" => String.t(),
        "MediaPipelineId" => String.t()
      }

  """
  @type media_capture_pipeline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_video_stream_source_runtime_configuration() :: %{
        "MediaEncoding" => list(any()),
        "MediaSampleRate" => integer(),
        "Streams" => list(stream_configuration()())
      }

  """
  @type kinesis_video_stream_source_runtime_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_insights_pipeline() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "ElementStatuses" => list(media_insights_pipeline_element_status()()),
        "KinesisVideoStreamRecordingSourceRuntimeConfiguration" => kinesis_video_stream_recording_source_runtime_configuration(),
        "KinesisVideoStreamSourceRuntimeConfiguration" => kinesis_video_stream_source_runtime_configuration(),
        "MediaInsightsPipelineConfigurationArn" => String.t(),
        "MediaInsightsRuntimeMetadata" => map(),
        "MediaPipelineArn" => String.t(),
        "MediaPipelineId" => String.t(),
        "S3RecordingSinkRuntimeConfiguration" => s3_recording_sink_runtime_configuration(),
        "Status" => list(any())
      }

  """
  @type media_insights_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concatenation_source() :: %{
        "MediaCapturePipelineSourceConfiguration" => media_capture_pipeline_source_configuration(),
        "Type" => list(any())
      }

  """
  @type concatenation_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_stream_pipeline() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "MediaPipelineArn" => String.t(),
        "MediaPipelineId" => String.t(),
        "Sinks" => list(media_stream_sink()()),
        "Sources" => list(media_stream_source()()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type media_stream_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_stream_source() :: %{
        "SourceArn" => String.t(),
        "SourceType" => list(any())
      }

  """
  @type media_stream_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_media_pipeline_kinesis_video_stream_pool_response() :: %{
        "KinesisVideoStreamPoolConfiguration" => kinesis_video_stream_pool_configuration()
      }

  """
  @type update_media_pipeline_kinesis_video_stream_pool_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_voice_tone_analysis_task_request() :: %{}

  """
  @type stop_voice_tone_analysis_task_request() :: %{}

  @typedoc """

  ## Example:

      s3_recording_sink_runtime_configuration() :: %{
        "Destination" => String.t(),
        "RecordingFileFormat" => list(any())
      }

  """
  @type s3_recording_sink_runtime_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_insights_pipeline_configuration_summary() :: %{
        "MediaInsightsPipelineConfigurationArn" => String.t(),
        "MediaInsightsPipelineConfigurationId" => String.t(),
        "MediaInsightsPipelineConfigurationName" => String.t()
      }

  """
  @type media_insights_pipeline_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_insights_pipeline_configurations_response() :: %{
        "MediaInsightsPipelineConfigurations" => list(media_insights_pipeline_configuration_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_media_insights_pipeline_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }

  """
  @type timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_concatenation_configuration() :: %{
        "State" => list(any())
      }

  """
  @type content_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_pipeline_kinesis_video_stream_pool_request() :: %{}

  """
  @type get_media_pipeline_kinesis_video_stream_pool_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_media_capture_pipeline_request() :: %{
        optional("ChimeSdkMeetingConfiguration") => chime_sdk_meeting_configuration(),
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("SinkArn") => String.t(),
        required("SinkType") => list(any()),
        required("SourceArn") => String.t(),
        required("SourceType") => list(any())
      }

  """
  @type create_media_capture_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_live_connector_pipeline_response() :: %{
        "MediaLiveConnectorPipeline" => media_live_connector_pipeline()
      }

  """
  @type create_media_live_connector_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_insights_pipeline_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("KinesisVideoStreamRecordingSourceRuntimeConfiguration") => kinesis_video_stream_recording_source_runtime_configuration(),
        optional("KinesisVideoStreamSourceRuntimeConfiguration") => kinesis_video_stream_source_runtime_configuration(),
        optional("MediaInsightsRuntimeMetadata") => map(),
        optional("S3RecordingSinkRuntimeConfiguration") => s3_recording_sink_runtime_configuration(),
        optional("Tags") => list(tag()()),
        required("MediaInsightsPipelineConfigurationArn") => String.t()
      }

  """
  @type create_media_insights_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_pipeline_response() :: %{
        "MediaPipeline" => media_pipeline()
      }

  """
  @type get_media_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_video_stream_recording_source_runtime_configuration() :: %{
        "FragmentSelector" => fragment_selector(),
        "Streams" => list(recording_stream_configuration()())
      }

  """
  @type kinesis_video_stream_recording_source_runtime_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_enhancement_sink_configuration() :: %{
        "Disabled" => boolean()
      }

  """
  @type voice_enhancement_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      artifacts_concatenation_configuration() :: %{
        "Audio" => audio_concatenation_configuration(),
        "CompositedVideo" => composited_video_concatenation_configuration(),
        "Content" => content_concatenation_configuration(),
        "DataChannel" => data_channel_concatenation_configuration(),
        "MeetingEvents" => meeting_events_concatenation_configuration(),
        "TranscriptionMessages" => transcription_messages_concatenation_configuration(),
        "Video" => video_concatenation_configuration()
      }

  """
  @type artifacts_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_insights_pipeline_configuration_response() :: %{
        "MediaInsightsPipelineConfiguration" => media_insights_pipeline_configuration()
      }

  """
  @type create_media_insights_pipeline_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_pipeline() :: %{
        "MediaCapturePipeline" => media_capture_pipeline(),
        "MediaConcatenationPipeline" => media_concatenation_pipeline(),
        "MediaInsightsPipeline" => media_insights_pipeline(),
        "MediaLiveConnectorPipeline" => media_live_connector_pipeline(),
        "MediaStreamPipeline" => media_stream_pipeline()
      }

  """
  @type media_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_speaker_only_configuration() :: %{
        "ActiveSpeakerPosition" => list(any())
      }

  """
  @type active_speaker_only_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_media_insights_pipeline_status_request() :: %{
        required("UpdateStatus") => list(any())
      }

  """
  @type update_media_insights_pipeline_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_stream_pipeline_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Tags") => list(tag()()),
        required("Sinks") => list(media_stream_sink()()),
        required("Sources") => list(media_stream_source()())
      }

  """
  @type create_media_stream_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      keyword_match_configuration() :: %{
        "Keywords" => list(String.t()()),
        "Negate" => boolean(),
        "RuleName" => String.t()
      }

  """
  @type keyword_match_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t(),
        "RequestId" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grid_view_configuration() :: %{
        "ActiveSpeakerOnlyConfiguration" => active_speaker_only_configuration(),
        "CanvasOrientation" => list(any()),
        "ContentShareLayout" => list(any()),
        "HorizontalLayoutConfiguration" => horizontal_layout_configuration(),
        "PresenterOnlyConfiguration" => presenter_only_configuration(),
        "VerticalLayoutConfiguration" => vertical_layout_configuration(),
        "VideoAttribute" => video_attribute()
      }

  """
  @type grid_view_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_tone_analysis_task_request() :: %{}

  """
  @type get_voice_tone_analysis_task_request() :: %{}

  @typedoc """

  ## Example:

      real_time_alert_configuration() :: %{
        "Disabled" => boolean(),
        "Rules" => list(real_time_alert_rule()())
      }

  """
  @type real_time_alert_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_stream_pipeline_response() :: %{
        "MediaStreamPipeline" => media_stream_pipeline()
      }

  """
  @type create_media_stream_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_speaker_search_task_request() :: %{}

  """
  @type get_speaker_search_task_request() :: %{}

  @typedoc """

  ## Example:

      create_media_insights_pipeline_configuration_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("RealTimeAlertConfiguration") => real_time_alert_configuration(),
        optional("Tags") => list(tag()()),
        required("Elements") => list(media_insights_pipeline_configuration_element()()),
        required("MediaInsightsPipelineConfigurationName") => String.t(),
        required("ResourceAccessRoleArn") => String.t()
      }

  """
  @type create_media_insights_pipeline_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transcription_messages_concatenation_configuration() :: %{
        "State" => list(any())
      }

  """
  @type transcription_messages_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      amazon_transcribe_processor_configuration() :: %{
        "ContentIdentificationType" => list(any()),
        "ContentRedactionType" => list(any()),
        "EnablePartialResultsStabilization" => boolean(),
        "FilterPartialResults" => boolean(),
        "IdentifyLanguage" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageModelName" => String.t(),
        "LanguageOptions" => String.t(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t(),
        "PreferredLanguage" => list(any()),
        "ShowSpeakerLabel" => boolean(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyFilterNames" => String.t(),
        "VocabularyName" => String.t(),
        "VocabularyNames" => String.t()
      }

  """
  @type amazon_transcribe_processor_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket_sink_configuration() :: %{
        "Destination" => String.t()
      }

  """
  @type s3_bucket_sink_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      artifacts_configuration() :: %{
        "Audio" => audio_artifacts_configuration(),
        "CompositedVideo" => composited_video_artifacts_configuration(),
        "Content" => content_artifacts_configuration(),
        "Video" => video_artifacts_configuration()
      }

  """
  @type artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_insights_pipeline_response() :: %{
        "MediaInsightsPipeline" => media_insights_pipeline()
      }

  """
  @type create_media_insights_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chime_sdk_meeting_concatenation_configuration() :: %{
        "ArtifactsConfiguration" => artifacts_concatenation_configuration()
      }

  """
  @type chime_sdk_meeting_concatenation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_media_pipeline_kinesis_video_stream_pool_request() :: %{
        optional("StreamConfiguration") => kinesis_video_stream_configuration_update()
      }

  """
  @type update_media_pipeline_kinesis_video_stream_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_video_stream_pool_configuration() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "PoolArn" => String.t(),
        "PoolId" => String.t(),
        "PoolName" => String.t(),
        "PoolSize" => integer(),
        "PoolStatus" => list(any()),
        "StreamConfiguration" => kinesis_video_stream_configuration(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type kinesis_video_stream_pool_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_configuration() :: %{
        "FragmentNumber" => String.t(),
        "StreamArn" => String.t(),
        "StreamChannelDefinition" => stream_channel_definition()
      }

  """
  @type stream_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_channel_definition() :: %{
        "ChannelDefinitions" => list(channel_definition()()),
        "NumberOfChannels" => integer()
      }

  """
  @type stream_channel_definition() :: %{String.t() => any()}

  @type create_media_capture_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_media_concatenation_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_media_insights_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_media_insights_pipeline_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_media_live_connector_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_media_pipeline_kinesis_video_stream_pool_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_media_stream_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_media_capture_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_media_insights_pipeline_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_media_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_media_pipeline_kinesis_video_stream_pool_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_media_capture_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_media_insights_pipeline_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_media_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_media_pipeline_kinesis_video_stream_pool_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_speaker_search_task_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_media_capture_pipelines_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_media_insights_pipeline_configurations_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_media_pipeline_kinesis_video_stream_pools_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_media_pipelines_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type start_speaker_search_task_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type start_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type stop_speaker_search_task_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type stop_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_media_insights_pipeline_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_media_insights_pipeline_status_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_media_pipeline_kinesis_video_stream_pool_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2021-07-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "media-pipelines-chime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Chime SDK Media Pipelines",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Creates a media pipeline.
  """
  @spec create_media_capture_pipeline(map(), create_media_capture_pipeline_request(), list()) ::
          {:ok, create_media_capture_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_capture_pipeline_errors()}
  def create_media_capture_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-capture-pipelines"
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
      201
    )
  end

  @doc """
  Creates a media concatenation pipeline.
  """
  @spec create_media_concatenation_pipeline(
          map(),
          create_media_concatenation_pipeline_request(),
          list()
        ) ::
          {:ok, create_media_concatenation_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_concatenation_pipeline_errors()}
  def create_media_concatenation_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-concatenation-pipelines"
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
      201
    )
  end

  @doc """
  Creates a media insights pipeline.
  """
  @spec create_media_insights_pipeline(map(), create_media_insights_pipeline_request(), list()) ::
          {:ok, create_media_insights_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_insights_pipeline_errors()}
  def create_media_insights_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/media-insights-pipelines"
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
      201
    )
  end

  @doc """
  A structure that contains the static configurations for a media insights
  pipeline.
  """
  @spec create_media_insights_pipeline_configuration(
          map(),
          create_media_insights_pipeline_configuration_request(),
          list()
        ) ::
          {:ok, create_media_insights_pipeline_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_insights_pipeline_configuration_errors()}
  def create_media_insights_pipeline_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/media-insights-pipeline-configurations"
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
      201
    )
  end

  @doc """
  Creates a media live connector pipeline in an Amazon Chime SDK meeting.
  """
  @spec create_media_live_connector_pipeline(
          map(),
          create_media_live_connector_pipeline_request(),
          list()
        ) ::
          {:ok, create_media_live_connector_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_live_connector_pipeline_errors()}
  def create_media_live_connector_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-live-connector-pipelines"
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
      201
    )
  end

  @doc """
  Creates an Kinesis video stream pool for the media pipeline.
  """
  @spec create_media_pipeline_kinesis_video_stream_pool(
          map(),
          create_media_pipeline_kinesis_video_stream_pool_request(),
          list()
        ) ::
          {:ok, create_media_pipeline_kinesis_video_stream_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_pipeline_kinesis_video_stream_pool_errors()}
  def create_media_pipeline_kinesis_video_stream_pool(%Client{} = client, input, options \\ []) do
    url_path = "/media-pipeline-kinesis-video-stream-pools"
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
      201
    )
  end

  @doc """
  Creates a streaming media pipeline.
  """
  @spec create_media_stream_pipeline(map(), create_media_stream_pipeline_request(), list()) ::
          {:ok, create_media_stream_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_stream_pipeline_errors()}
  def create_media_stream_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/sdk-media-stream-pipelines"
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
      201
    )
  end

  @doc """
  Deletes the media pipeline.
  """
  @spec delete_media_capture_pipeline(
          map(),
          String.t(),
          delete_media_capture_pipeline_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_media_capture_pipeline_errors()}
  def delete_media_capture_pipeline(%Client{} = client, media_pipeline_id, input, options \\ []) do
    url_path = "/sdk-media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
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
      204
    )
  end

  @doc """
  Deletes the specified configuration settings.
  """
  @spec delete_media_insights_pipeline_configuration(
          map(),
          String.t(),
          delete_media_insights_pipeline_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_media_insights_pipeline_configuration_errors()}
  def delete_media_insights_pipeline_configuration(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/media-insights-pipeline-configurations/#{AWS.Util.encode_uri(identifier)}"
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
      204
    )
  end

  @doc """
  Deletes the media pipeline.
  """
  @spec delete_media_pipeline(map(), String.t(), delete_media_pipeline_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_media_pipeline_errors()}
  def delete_media_pipeline(%Client{} = client, media_pipeline_id, input, options \\ []) do
    url_path = "/sdk-media-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
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
      204
    )
  end

  @doc """
  Deletes an Kinesis video stream pool.
  """
  @spec delete_media_pipeline_kinesis_video_stream_pool(
          map(),
          String.t(),
          delete_media_pipeline_kinesis_video_stream_pool_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_media_pipeline_kinesis_video_stream_pool_errors()}
  def delete_media_pipeline_kinesis_video_stream_pool(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/media-pipeline-kinesis-video-stream-pools/#{AWS.Util.encode_uri(identifier)}"
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
      204
    )
  end

  @doc """
  Gets an existing media pipeline.
  """
  @spec get_media_capture_pipeline(map(), String.t(), list()) ::
          {:ok, get_media_capture_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_capture_pipeline_errors()}
  def get_media_capture_pipeline(%Client{} = client, media_pipeline_id, options \\ []) do
    url_path = "/sdk-media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the configuration settings for a media insights pipeline.
  """
  @spec get_media_insights_pipeline_configuration(map(), String.t(), list()) ::
          {:ok, get_media_insights_pipeline_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_insights_pipeline_configuration_errors()}
  def get_media_insights_pipeline_configuration(%Client{} = client, identifier, options \\ []) do
    url_path = "/media-insights-pipeline-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an existing media pipeline.
  """
  @spec get_media_pipeline(map(), String.t(), list()) ::
          {:ok, get_media_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_pipeline_errors()}
  def get_media_pipeline(%Client{} = client, media_pipeline_id, options \\ []) do
    url_path = "/sdk-media-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Kinesis video stream pool.
  """
  @spec get_media_pipeline_kinesis_video_stream_pool(map(), String.t(), list()) ::
          {:ok, get_media_pipeline_kinesis_video_stream_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_pipeline_kinesis_video_stream_pool_errors()}
  def get_media_pipeline_kinesis_video_stream_pool(%Client{} = client, identifier, options \\ []) do
    url_path = "/media-pipeline-kinesis-video-stream-pools/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified speaker search task.
  """
  @spec get_speaker_search_task(map(), String.t(), String.t(), list()) ::
          {:ok, get_speaker_search_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_speaker_search_task_errors()}
  def get_speaker_search_task(
        %Client{} = client,
        identifier,
        speaker_search_task_id,
        options \\ []
      ) do
    url_path =
      "/media-insights-pipelines/#{AWS.Util.encode_uri(identifier)}/speaker-search-tasks/#{AWS.Util.encode_uri(speaker_search_task_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a voice tone analysis task.
  """
  @spec get_voice_tone_analysis_task(map(), String.t(), String.t(), list()) ::
          {:ok, get_voice_tone_analysis_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_tone_analysis_task_errors()}
  def get_voice_tone_analysis_task(
        %Client{} = client,
        identifier,
        voice_tone_analysis_task_id,
        options \\ []
      ) do
    url_path =
      "/media-insights-pipelines/#{AWS.Util.encode_uri(identifier)}/voice-tone-analysis-tasks/#{AWS.Util.encode_uri(voice_tone_analysis_task_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of media pipelines.
  """
  @spec list_media_capture_pipelines(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_media_capture_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_media_capture_pipelines_errors()}
  def list_media_capture_pipelines(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sdk-media-capture-pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the available media insights pipeline configurations.
  """
  @spec list_media_insights_pipeline_configurations(
          map(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_media_insights_pipeline_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_media_insights_pipeline_configurations_errors()}
  def list_media_insights_pipeline_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/media-insights-pipeline-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the video stream pools in the media pipeline.
  """
  @spec list_media_pipeline_kinesis_video_stream_pools(
          map(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_media_pipeline_kinesis_video_stream_pools_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_media_pipeline_kinesis_video_stream_pools_errors()}
  def list_media_pipeline_kinesis_video_stream_pools(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/media-pipeline-kinesis-video-stream-pools"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of media pipelines.
  """
  @spec list_media_pipelines(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_media_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_media_pipelines_errors()}
  def list_media_pipelines(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sdk-media-pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags available for a media pipeline.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"arn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a speaker search task.

  Before starting any speaker search tasks, you must provide all notices and
  obtain all consents from the speaker as required under applicable privacy and
  biometrics laws, and as required under the
  [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime
  SDK.
  """
  @spec start_speaker_search_task(map(), String.t(), start_speaker_search_task_request(), list()) ::
          {:ok, start_speaker_search_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_speaker_search_task_errors()}
  def start_speaker_search_task(%Client{} = client, identifier, input, options \\ []) do
    url_path =
      "/media-insights-pipelines/#{AWS.Util.encode_uri(identifier)}/speaker-search-tasks?operation=start"

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
      201
    )
  end

  @doc """
  Starts a voice tone analysis task.

  For more information about voice tone analysis, see
  [Using Amazon Chime SDK voice analytics](https://docs.aws.amazon.com/chime-sdk/latest/dg/voice-analytics.html)
  in the *Amazon Chime SDK Developer Guide*.

  Before starting any voice tone analysis tasks, you must provide all notices and
  obtain all consents from the speaker as required under applicable privacy and
  biometrics laws, and as required under the
  [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime
  SDK.
  """
  @spec start_voice_tone_analysis_task(
          map(),
          String.t(),
          start_voice_tone_analysis_task_request(),
          list()
        ) ::
          {:ok, start_voice_tone_analysis_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_voice_tone_analysis_task_errors()}
  def start_voice_tone_analysis_task(%Client{} = client, identifier, input, options \\ []) do
    url_path =
      "/media-insights-pipelines/#{AWS.Util.encode_uri(identifier)}/voice-tone-analysis-tasks?operation=start"

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
      201
    )
  end

  @doc """
  Stops a speaker search task.
  """
  @spec stop_speaker_search_task(
          map(),
          String.t(),
          String.t(),
          stop_speaker_search_task_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_speaker_search_task_errors()}
  def stop_speaker_search_task(
        %Client{} = client,
        identifier,
        speaker_search_task_id,
        input,
        options \\ []
      ) do
    url_path =
      "/media-insights-pipelines/#{AWS.Util.encode_uri(identifier)}/speaker-search-tasks/#{AWS.Util.encode_uri(speaker_search_task_id)}?operation=stop"

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
      204
    )
  end

  @doc """
  Stops a voice tone analysis task.
  """
  @spec stop_voice_tone_analysis_task(
          map(),
          String.t(),
          String.t(),
          stop_voice_tone_analysis_task_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_voice_tone_analysis_task_errors()}
  def stop_voice_tone_analysis_task(
        %Client{} = client,
        identifier,
        voice_tone_analysis_task_id,
        input,
        options \\ []
      ) do
    url_path =
      "/media-insights-pipelines/#{AWS.Util.encode_uri(identifier)}/voice-tone-analysis-tasks/#{AWS.Util.encode_uri(voice_tone_analysis_task_id)}?operation=stop"

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
      204
    )
  end

  @doc """
  The ARN of the media pipeline that you want to tag.

  Consists of the pipeline's endpoint region, resource ID, and pipeline ID.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
      204
    )
  end

  @doc """
  Removes any tags from a media pipeline.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
      204
    )
  end

  @doc """
  Updates the media insights pipeline's configuration settings.
  """
  @spec update_media_insights_pipeline_configuration(
          map(),
          String.t(),
          update_media_insights_pipeline_configuration_request(),
          list()
        ) ::
          {:ok, update_media_insights_pipeline_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_media_insights_pipeline_configuration_errors()}
  def update_media_insights_pipeline_configuration(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/media-insights-pipeline-configurations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the status of a media insights pipeline.
  """
  @spec update_media_insights_pipeline_status(
          map(),
          String.t(),
          update_media_insights_pipeline_status_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_media_insights_pipeline_status_errors()}
  def update_media_insights_pipeline_status(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/media-insights-pipeline-status/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an Kinesis video stream pool in a media pipeline.
  """
  @spec update_media_pipeline_kinesis_video_stream_pool(
          map(),
          String.t(),
          update_media_pipeline_kinesis_video_stream_pool_request(),
          list()
        ) ::
          {:ok, update_media_pipeline_kinesis_video_stream_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_media_pipeline_kinesis_video_stream_pool_errors()}
  def update_media_pipeline_kinesis_video_stream_pool(
        %Client{} = client,
        identifier,
        input,
        options \\ []
      ) do
    url_path = "/media-pipeline-kinesis-video-stream-pools/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
