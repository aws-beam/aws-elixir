# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaConvert do
  @moduledoc """
  AWS Elemental MediaConvert
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      cancel_job_request() :: %{}

  """
  @type cancel_job_request() :: %{}

  @typedoc """

  ## Example:

      video_overlay() :: %{
        "Crop" => video_overlay_crop(),
        "EndTimecode" => String.t(),
        "InitialPosition" => video_overlay_position(),
        "Input" => video_overlay_input(),
        "Playback" => list(any()),
        "StartTimecode" => String.t(),
        "Transitions" => list(video_overlay_transition())
      }

  """
  @type video_overlay() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deinterlacer() :: %{
        "Algorithm" => list(any()),
        "Control" => list(any()),
        "Mode" => list(any())
      }

  """
  @type deinterlacer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      xavc4k_intra_vbr_profile_settings() :: %{
        "XavcClass" => list(any())
      }

  """
  @type xavc4k_intra_vbr_profile_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_detail() :: %{
        "DurationInMs" => integer(),
        "VideoDetails" => video_detail()
      }

  """
  @type output_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mp4_settings() :: %{
        "AudioDuration" => list(any()),
        "C2paManifest" => list(any()),
        "CertificateSecret" => String.t(),
        "CslgAtom" => list(any()),
        "CttsVersion" => integer(),
        "FreeSpaceBox" => list(any()),
        "MoovPlacement" => list(any()),
        "Mp4MajorBrand" => String.t(),
        "SigningKmsKey" => String.t()
      }

  """
  @type mp4_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      acceleration_settings() :: %{
        "Mode" => list(any())
      }

  """
  @type acceleration_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_group_settings() :: %{
        "Destination" => String.t(),
        "DestinationSettings" => destination_settings()
      }

  """
  @type file_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_preset_response() :: %{}

  """
  @type delete_preset_response() :: %{}

  @typedoc """

  ## Example:

      motion_image_insertion_framerate() :: %{
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer()
      }

  """
  @type motion_image_insertion_framerate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mxf_settings() :: %{
        "AfdSignaling" => list(any()),
        "Profile" => list(any()),
        "XavcProfileSettings" => mxf_xavc_profile_settings()
      }

  """
  @type mxf_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_response() :: %{
        "Queue" => queue()
      }

  """
  @type get_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Arn") => String.t(),
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_job_template_request() :: %{
        optional("AccelerationSettings") => acceleration_settings(),
        optional("Category") => String.t(),
        optional("Description") => String.t(),
        optional("HopDestinations") => list(hop_destination()),
        optional("Priority") => integer(),
        optional("Queue") => String.t(),
        optional("Settings") => job_template_settings(),
        optional("StatusUpdateInterval") => list(any())
      }

  """
  @type update_job_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prores_settings() :: %{
        "ChromaSampling" => list(any()),
        "CodecProfile" => list(any()),
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "InterlaceMode" => list(any()),
        "ParControl" => list(any()),
        "ParDenominator" => integer(),
        "ParNumerator" => integer(),
        "PerFrameMetrics" => list(list(any())()),
        "ScanTypeConversionMode" => list(any()),
        "SlowPal" => list(any()),
        "Telecine" => list(any())
      }

  """
  @type prores_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_template_response() :: %{
        "JobTemplate" => job_template()
      }

  """
  @type create_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      advanced_input_filter_settings() :: %{
        "AddTexture" => list(any()),
        "Sharpening" => list(any())
      }

  """
  @type advanced_input_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queues_request() :: %{
        optional("ListBy") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Order") => list(any())
      }

  """
  @type list_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      partner_watermarking() :: %{
        "NexguardFileMarkerSettings" => nex_guard_file_marker_settings()
      }

  """
  @type partner_watermarking() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container() :: %{
        "Duration" => float(),
        "Format" => list(any()),
        "Tracks" => list(track())
      }

  """
  @type container() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rectangle() :: %{
        "Height" => integer(),
        "Width" => integer(),
        "X" => integer(),
        "Y" => integer()
      }

  """
  @type rectangle() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      force_include_rendition_size() :: %{
        "Height" => integer(),
        "Width" => integer()
      }

  """
  @type force_include_rendition_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mov_settings() :: %{
        "ClapAtom" => list(any()),
        "CslgAtom" => list(any()),
        "Mpeg2FourCCControl" => list(any()),
        "PaddingControl" => list(any()),
        "Reference" => list(any())
      }

  """
  @type mov_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        "Job" => job()
      }

  """
  @type create_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_template_response() :: %{}

  """
  @type delete_job_template_response() :: %{}

  @typedoc """

  ## Example:

      hls_caption_language_mapping() :: %{
        "CaptionChannel" => integer(),
        "CustomLanguageCode" => String.t(),
        "LanguageCode" => list(any()),
        "LanguageDescription" => String.t()
      }

  """
  @type hls_caption_language_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_preset_request() :: %{
        optional("Category") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("Settings") => preset_settings()
      }

  """
  @type create_preset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_encryption_settings() :: %{
        "EncryptionType" => list(any()),
        "KmsEncryptionContext" => String.t(),
        "KmsKeyArn" => String.t()
      }

  """
  @type s3_encryption_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mp2_settings() :: %{
        "Bitrate" => integer(),
        "Channels" => integer(),
        "SampleRate" => integer()
      }

  """
  @type mp2_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      extended_data_services() :: %{
        "CopyProtectionAction" => list(any()),
        "VchipAction" => list(any())
      }

  """
  @type extended_data_services() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_presets_request() :: %{
        optional("Category") => String.t(),
        optional("ListBy") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Order") => list(any())
      }

  """
  @type list_presets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_channel_tagging_settings() :: %{
        "ChannelTag" => list(any()),
        "ChannelTags" => list(list(any())())
      }

  """
  @type audio_channel_tagging_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nielsen_configuration() :: %{
        "BreakoutCode" => integer(),
        "DistributorId" => String.t()
      }

  """
  @type nielsen_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_selector() :: %{
        "CustomLanguageCode" => String.t(),
        "LanguageCode" => list(any()),
        "SourceSettings" => caption_source_settings()
      }

  """
  @type caption_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timecode_burnin() :: %{
        "FontSize" => integer(),
        "Position" => list(any()),
        "Prefix" => String.t()
      }

  """
  @type timecode_burnin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Order") => list(any()),
        optional("Queue") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_request() :: %{}

  """
  @type get_policy_request() :: %{}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_settings() :: %{
        "S3Settings" => s3_destination_settings()
      }

  """
  @type destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_codec_settings() :: %{
        "AacSettings" => aac_settings(),
        "Ac3Settings" => ac3_settings(),
        "AiffSettings" => aiff_settings(),
        "Codec" => list(any()),
        "Eac3AtmosSettings" => eac3_atmos_settings(),
        "Eac3Settings" => eac3_settings(),
        "FlacSettings" => flac_settings(),
        "Mp2Settings" => mp2_settings(),
        "Mp3Settings" => mp3_settings(),
        "OpusSettings" => opus_settings(),
        "VorbisSettings" => vorbis_settings(),
        "WavSettings" => wav_settings()
      }

  """
  @type audio_codec_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_tags() :: %{
        "Arn" => String.t(),
        "Tags" => map()
      }

  """
  @type resource_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aiff_settings() :: %{
        "BitDepth" => integer(),
        "Channels" => integer(),
        "SampleRate" => integer()
      }

  """
  @type aiff_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      esam_settings() :: %{
        "ManifestConfirmConditionNotification" => esam_manifest_confirm_condition_notification(),
        "ResponseSignalPreroll" => integer(),
        "SignalProcessingNotification" => esam_signal_processing_notification()
      }

  """
  @type esam_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      burnin_destination_settings() :: %{
        "Alignment" => list(any()),
        "ApplyFontColor" => list(any()),
        "BackgroundColor" => list(any()),
        "BackgroundOpacity" => integer(),
        "FallbackFont" => list(any()),
        "FontColor" => list(any()),
        "FontFileBold" => String.t(),
        "FontFileBoldItalic" => String.t(),
        "FontFileItalic" => String.t(),
        "FontFileRegular" => String.t(),
        "FontOpacity" => integer(),
        "FontResolution" => integer(),
        "FontScript" => list(any()),
        "FontSize" => integer(),
        "HexFontColor" => String.t(),
        "OutlineColor" => list(any()),
        "OutlineSize" => integer(),
        "RemoveRubyReserveAttributes" => list(any()),
        "ShadowColor" => list(any()),
        "ShadowOpacity" => integer(),
        "ShadowXOffset" => integer(),
        "ShadowYOffset" => integer(),
        "StylePassthrough" => list(any()),
        "TeletextSpacing" => list(any()),
        "XPosition" => integer(),
        "YPosition" => integer()
      }

  """
  @type burnin_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_rendition_group_settings() :: %{
        "RenditionGroupId" => String.t(),
        "RenditionLanguageCode" => list(any()),
        "RenditionName" => String.t()
      }

  """
  @type hls_rendition_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      xavc4k_profile_settings() :: %{
        "BitrateClass" => list(any()),
        "CodecProfile" => list(any()),
        "FlickerAdaptiveQuantization" => list(any()),
        "GopBReference" => list(any()),
        "GopClosedCadence" => integer(),
        "HrdBufferSize" => integer(),
        "QualityTuningLevel" => list(any()),
        "Slices" => integer()
      }

  """
  @type xavc4k_profile_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      color_corrector() :: %{
        "Brightness" => integer(),
        "ClipLimits" => clip_limits(),
        "ColorSpaceConversion" => list(any()),
        "Contrast" => integer(),
        "Hdr10Metadata" => hdr10_metadata(),
        "HdrToSdrToneMapper" => list(any()),
        "Hue" => integer(),
        "MaxLuminance" => integer(),
        "SampleRangeConversion" => list(any()),
        "Saturation" => integer(),
        "SdrReferenceWhiteLevel" => integer()
      }

  """
  @type color_corrector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aac_settings() :: %{
        "AudioDescriptionBroadcasterMix" => list(any()),
        "Bitrate" => integer(),
        "CodecProfile" => list(any()),
        "CodingMode" => list(any()),
        "LoudnessMeasurementMode" => list(any()),
        "RapInterval" => integer(),
        "RateControlMode" => list(any()),
        "RawFormat" => list(any()),
        "SampleRate" => integer(),
        "Specification" => list(any()),
        "TargetLoudnessRange" => integer(),
        "VbrQuality" => list(any())
      }

  """
  @type aac_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bandwidth_reduction_filter() :: %{
        "Sharpening" => list(any()),
        "Strength" => list(any())
      }

  """
  @type bandwidth_reduction_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata() :: %{
        "ETag" => String.t(),
        "FileSize" => float(),
        "LastModified" => non_neg_integer(),
        "MimeType" => String.t()
      }

  """
  @type metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_video_generator() :: %{
        "Channels" => integer(),
        "Duration" => integer(),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "SampleRate" => integer()
      }

  """
  @type input_video_generator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_endpoints_response() :: %{
        "Endpoints" => list(endpoint()),
        "NextToken" => String.t()
      }

  """
  @type describe_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_overlay_position() :: %{
        "Height" => integer(),
        "Unit" => list(any()),
        "Width" => integer(),
        "XPosition" => integer(),
        "YPosition" => integer()
      }

  """
  @type video_overlay_position() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_template() :: %{
        "AccelerationSettings" => acceleration_settings(),
        "Arn" => String.t(),
        "Category" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "HopDestinations" => list(hop_destination()),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t(),
        "Priority" => integer(),
        "Queue" => String.t(),
        "Settings" => job_template_settings(),
        "StatusUpdateInterval" => list(any()),
        "Type" => list(any())
      }

  """
  @type job_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      automated_abr_rule() :: %{
        "AllowedRenditions" => list(allowed_rendition_size()),
        "ForceIncludeRenditions" => list(force_include_rendition_size()),
        "MinBottomRenditionSize" => min_bottom_rendition_size(),
        "MinTopRenditionSize" => min_top_rendition_size(),
        "Type" => list(any())
      }

  """
  @type automated_abr_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      m3u8_settings() :: %{
        "AudioDuration" => list(any()),
        "AudioFramesPerPes" => integer(),
        "AudioPids" => list(integer()),
        "AudioPtsOffsetDelta" => integer(),
        "DataPTSControl" => list(any()),
        "MaxPcrInterval" => integer(),
        "NielsenId3" => list(any()),
        "PatInterval" => integer(),
        "PcrControl" => list(any()),
        "PcrPid" => integer(),
        "PmtInterval" => integer(),
        "PmtPid" => integer(),
        "PrivateMetadataPid" => integer(),
        "ProgramNumber" => integer(),
        "PtsOffset" => integer(),
        "PtsOffsetMode" => list(any()),
        "Scte35Pid" => integer(),
        "Scte35Source" => list(any()),
        "TimedMetadata" => list(any()),
        "TimedMetadataPid" => integer(),
        "TransportStreamId" => integer(),
        "VideoPid" => integer()
      }

  """
  @type m3u8_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_response() :: %{
        "Jobs" => list(job()),
        "NextToken" => String.t()
      }

  """
  @type list_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("AccelerationSettings") => acceleration_settings(),
        optional("BillingTagsSource") => list(any()),
        optional("ClientRequestToken") => String.t(),
        optional("HopDestinations") => list(hop_destination()),
        optional("JobEngineVersion") => String.t(),
        optional("JobTemplate") => String.t(),
        optional("Priority") => integer(),
        optional("Queue") => String.t(),
        optional("SimulateReservedQueue") => list(any()),
        optional("StatusUpdateInterval") => list(any()),
        optional("Tags") => map(),
        optional("UserMetadata") => map(),
        required("Role") => String.t(),
        required("Settings") => job_settings()
      }

  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nex_guard_file_marker_settings() :: %{
        "License" => String.t(),
        "Payload" => integer(),
        "Preset" => String.t(),
        "Strength" => list(any())
      }

  """
  @type nex_guard_file_marker_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ms_smooth_encryption_settings() :: %{
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type ms_smooth_encryption_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_sub_source_settings() :: %{
        "Pid" => integer()
      }

  """
  @type dvb_sub_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reservation_plan_settings() :: %{
        "Commitment" => list(any()),
        "RenewalType" => list(any()),
        "ReservedSlots" => integer()
      }

  """
  @type reservation_plan_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue() :: %{
        "Arn" => String.t(),
        "ConcurrentJobs" => integer(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t(),
        "PricingPlan" => list(any()),
        "ProgressingJobsCount" => integer(),
        "ReservationPlan" => reservation_plan(),
        "ServiceOverrides" => list(service_override()),
        "Status" => list(any()),
        "SubmittedJobsCount" => integer(),
        "Type" => list(any())
      }

  """
  @type queue() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_policy_response() :: %{}

  """
  @type delete_policy_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        optional("TagKeys") => list(String.t())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_request() :: %{
        optional("ConcurrentJobs") => integer(),
        optional("Description") => String.t(),
        optional("ReservationPlanSettings") => reservation_plan_settings(),
        optional("Status") => list(any())
      }

  """
  @type update_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flac_settings() :: %{
        "BitDepth" => integer(),
        "Channels" => integer(),
        "SampleRate" => integer()
      }

  """
  @type flac_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination_access_control() :: %{
        "CannedAcl" => list(any())
      }

  """
  @type s3_destination_access_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      static_key_provider() :: %{
        "KeyFormat" => String.t(),
        "KeyFormatVersions" => String.t(),
        "StaticKeyValue" => String.t(),
        "Url" => String.t()
      }

  """
  @type static_key_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_template_settings() :: %{
        "AdAvailOffset" => integer(),
        "AvailBlanking" => avail_blanking(),
        "ColorConversion3DLUTSettings" => list(color_conversion3_d_l_u_t_setting()),
        "Esam" => esam_settings(),
        "ExtendedDataServices" => extended_data_services(),
        "FollowSource" => integer(),
        "Inputs" => list(input_template()),
        "KantarWatermark" => kantar_watermark_settings(),
        "MotionImageInserter" => motion_image_inserter(),
        "NielsenConfiguration" => nielsen_configuration(),
        "NielsenNonLinearWatermark" => nielsen_non_linear_watermark_settings(),
        "OutputGroups" => list(output_group()),
        "TimecodeConfig" => timecode_config(),
        "TimedMetadataInsertion" => timed_metadata_insertion()
      }

  """
  @type job_template_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      track() :: %{
        "AudioProperties" => audio_properties(),
        "Codec" => list(any()),
        "DataProperties" => data_properties(),
        "Duration" => float(),
        "Index" => integer(),
        "TrackType" => list(any()),
        "VideoProperties" => video_properties()
      }

  """
  @type track() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      track_mapping() :: %{
        "AudioTrackIndexes" => list(integer()),
        "DataTrackIndexes" => list(integer()),
        "VideoTrackIndexes" => list(integer())
      }

  """
  @type track_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      speke_key_provider_cmaf() :: %{
        "CertificateArn" => String.t(),
        "DashSignaledSystemIds" => list(String.t()),
        "EncryptionContractConfiguration" => encryption_contract_configuration(),
        "HlsSignaledSystemIds" => list(String.t()),
        "ResourceId" => String.t(),
        "Url" => String.t()
      }

  """
  @type speke_key_provider_cmaf() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_description() :: %{
        "AfdSignaling" => list(any()),
        "AntiAlias" => list(any()),
        "ChromaPositionMode" => list(any()),
        "CodecSettings" => video_codec_settings(),
        "ColorMetadata" => list(any()),
        "Crop" => rectangle(),
        "DropFrameTimecode" => list(any()),
        "FixedAfd" => integer(),
        "Height" => integer(),
        "Position" => rectangle(),
        "RespondToAfd" => list(any()),
        "ScalingBehavior" => list(any()),
        "Sharpness" => integer(),
        "TimecodeInsertion" => list(any()),
        "TimecodeTrack" => list(any()),
        "VideoPreprocessors" => video_preprocessor(),
        "Width" => integer()
      }

  """
  @type video_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_template() :: %{
        "AdvancedInputFilter" => list(any()),
        "AdvancedInputFilterSettings" => advanced_input_filter_settings(),
        "AudioSelectorGroups" => map(),
        "AudioSelectors" => map(),
        "CaptionSelectors" => map(),
        "Crop" => rectangle(),
        "DeblockFilter" => list(any()),
        "DenoiseFilter" => list(any()),
        "DolbyVisionMetadataXml" => String.t(),
        "DynamicAudioSelectors" => map(),
        "FilterEnable" => list(any()),
        "FilterStrength" => integer(),
        "ImageInserter" => image_inserter(),
        "InputClippings" => list(input_clipping()),
        "InputScanType" => list(any()),
        "Position" => rectangle(),
        "ProgramNumber" => integer(),
        "PsiControl" => list(any()),
        "TimecodeSource" => list(any()),
        "TimecodeStart" => String.t(),
        "VideoOverlays" => list(video_overlay()),
        "VideoSelector" => video_selector()
      }

  """
  @type input_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_encryption_settings() :: %{
        "ConstantInitializationVector" => String.t(),
        "EncryptionMethod" => list(any()),
        "InitializationVectorInManifest" => list(any()),
        "OfflineEncrypted" => list(any()),
        "SpekeKeyProvider" => speke_key_provider(),
        "StaticKeyProvider" => static_key_provider(),
        "Type" => list(any())
      }

  """
  @type hls_encryption_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ttml_destination_settings() :: %{
        "StylePassthrough" => list(any())
      }

  """
  @type ttml_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      noise_reducer() :: %{
        "Filter" => list(any()),
        "FilterSettings" => noise_reducer_filter_settings(),
        "SpatialFilterSettings" => noise_reducer_spatial_filter_settings(),
        "TemporalFilterSettings" => noise_reducer_temporal_filter_settings()
      }

  """
  @type noise_reducer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_template_request() :: %{}

  """
  @type delete_job_template_request() :: %{}

  @typedoc """

  ## Example:

      associate_certificate_response() :: %{}

  """
  @type associate_certificate_response() :: %{}

  @typedoc """

  ## Example:

      timecode_config() :: %{
        "Anchor" => String.t(),
        "Source" => list(any()),
        "Start" => String.t(),
        "TimestampOffset" => String.t()
      }

  """
  @type timecode_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_selector_group() :: %{
        "AudioSelectorNames" => list(String.t())
      }

  """
  @type audio_selector_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_overlay_transition() :: %{
        "EndPosition" => video_overlay_position(),
        "EndTimecode" => String.t(),
        "StartTimecode" => String.t()
      }

  """
  @type video_overlay_transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_group_settings() :: %{
        "CmafGroupSettings" => cmaf_group_settings(),
        "DashIsoGroupSettings" => dash_iso_group_settings(),
        "FileGroupSettings" => file_group_settings(),
        "HlsGroupSettings" => hls_group_settings(),
        "MsSmoothGroupSettings" => ms_smooth_group_settings(),
        "PerFrameMetrics" => list(list(any())()),
        "Type" => list(any())
      }

  """
  @type output_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_group_settings() :: %{
        "AdditionalManifests" => list(cmaf_additional_manifest()),
        "BaseUrl" => String.t(),
        "ClientCache" => list(any()),
        "CodecSpecification" => list(any()),
        "DashIFrameTrickPlayNameModifier" => String.t(),
        "DashManifestStyle" => list(any()),
        "Destination" => String.t(),
        "DestinationSettings" => destination_settings(),
        "Encryption" => cmaf_encryption_settings(),
        "FragmentLength" => integer(),
        "ImageBasedTrickPlay" => list(any()),
        "ImageBasedTrickPlaySettings" => cmaf_image_based_trick_play_settings(),
        "ManifestCompression" => list(any()),
        "ManifestDurationFormat" => list(any()),
        "MinBufferTime" => integer(),
        "MinFinalSegmentLength" => float(),
        "MpdManifestBandwidthType" => list(any()),
        "MpdProfile" => list(any()),
        "PtsOffsetHandlingForBFrames" => list(any()),
        "SegmentControl" => list(any()),
        "SegmentLength" => integer(),
        "SegmentLengthControl" => list(any()),
        "StreamInfResolution" => list(any()),
        "TargetDurationCompatibilityMode" => list(any()),
        "VideoCompositionOffsets" => list(any()),
        "WriteDashManifest" => list(any()),
        "WriteHlsManifest" => list(any()),
        "WriteSegmentTimelineInRepresentation" => list(any())
      }

  """
  @type cmaf_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dynamic_audio_selector() :: %{
        "AudioDurationCorrection" => list(any()),
        "ExternalAudioFileInput" => String.t(),
        "LanguageCode" => list(any()),
        "Offset" => integer(),
        "SelectorType" => list(any())
      }

  """
  @type dynamic_audio_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_inserter() :: %{
        "InsertableImages" => list(insertable_image()),
        "SdrReferenceWhiteLevel" => integer()
      }

  """
  @type image_inserter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      esam_manifest_confirm_condition_notification() :: %{
        "MccXml" => String.t()
      }

  """
  @type esam_manifest_confirm_condition_notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_settings() :: %{
        "AdAvailOffset" => integer(),
        "AvailBlanking" => avail_blanking(),
        "ColorConversion3DLUTSettings" => list(color_conversion3_d_l_u_t_setting()),
        "Esam" => esam_settings(),
        "ExtendedDataServices" => extended_data_services(),
        "FollowSource" => integer(),
        "Inputs" => list(input()),
        "KantarWatermark" => kantar_watermark_settings(),
        "MotionImageInserter" => motion_image_inserter(),
        "NielsenConfiguration" => nielsen_configuration(),
        "NielsenNonLinearWatermark" => nielsen_non_linear_watermark_settings(),
        "OutputGroups" => list(output_group()),
        "TimecodeConfig" => timecode_config(),
        "TimedMetadataInsertion" => timed_metadata_insertion()
      }

  """
  @type job_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timed_metadata_insertion() :: %{
        "Id3Insertions" => list(id3_insertion())
      }

  """
  @type timed_metadata_insertion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ms_smooth_group_settings() :: %{
        "AdditionalManifests" => list(ms_smooth_additional_manifest()),
        "AudioDeduplication" => list(any()),
        "Destination" => String.t(),
        "DestinationSettings" => destination_settings(),
        "Encryption" => ms_smooth_encryption_settings(),
        "FragmentLength" => integer(),
        "FragmentLengthControl" => list(any()),
        "ManifestEncoding" => list(any())
      }

  """
  @type ms_smooth_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      min_top_rendition_size() :: %{
        "Height" => integer(),
        "Width" => integer()
      }

  """
  @type min_top_rendition_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_request() :: %{
        optional("InputFile") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Order") => list(any()),
        optional("Queue") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type search_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_settings() :: %{
        "AudioGroupId" => String.t(),
        "AudioOnlyContainer" => list(any()),
        "AudioRenditionSets" => String.t(),
        "AudioTrackType" => list(any()),
        "DescriptiveVideoServiceFlag" => list(any()),
        "IFrameOnlyManifest" => list(any()),
        "SegmentModifier" => String.t()
      }

  """
  @type hls_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_overlay_input_clipping() :: %{
        "EndTimecode" => String.t(),
        "StartTimecode" => String.t()
      }

  """
  @type video_overlay_input_clipping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input() :: %{
        "AdvancedInputFilter" => list(any()),
        "AdvancedInputFilterSettings" => advanced_input_filter_settings(),
        "AudioSelectorGroups" => map(),
        "AudioSelectors" => map(),
        "CaptionSelectors" => map(),
        "Crop" => rectangle(),
        "DeblockFilter" => list(any()),
        "DecryptionSettings" => input_decryption_settings(),
        "DenoiseFilter" => list(any()),
        "DolbyVisionMetadataXml" => String.t(),
        "DynamicAudioSelectors" => map(),
        "FileInput" => String.t(),
        "FilterEnable" => list(any()),
        "FilterStrength" => integer(),
        "ImageInserter" => image_inserter(),
        "InputClippings" => list(input_clipping()),
        "InputScanType" => list(any()),
        "Position" => rectangle(),
        "ProgramNumber" => integer(),
        "PsiControl" => list(any()),
        "SupplementalImps" => list(String.t()),
        "TamsSettings" => input_tams_settings(),
        "TimecodeSource" => list(any()),
        "TimecodeStart" => String.t(),
        "VideoGenerator" => input_video_generator(),
        "VideoOverlays" => list(video_overlay()),
        "VideoSelector" => video_selector()
      }

  """
  @type input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("Mode") => list(any()),
        optional("NextToken") => String.t()
      }

  """
  @type describe_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      color_conversion3_d_l_u_t_setting() :: %{
        "FileInput" => String.t(),
        "InputColorSpace" => list(any()),
        "InputMasteringLuminance" => integer(),
        "OutputColorSpace" => list(any()),
        "OutputMasteringLuminance" => integer()
      }

  """
  @type color_conversion3_d_l_u_t_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_template_response() :: %{
        "JobTemplate" => job_template()
      }

  """
  @type get_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reservation_plan() :: %{
        "Commitment" => list(any()),
        "ExpiresAt" => non_neg_integer(),
        "PurchasedAt" => non_neg_integer(),
        "RenewalType" => list(any()),
        "ReservedSlots" => integer(),
        "Status" => list(any())
      }

  """
  @type reservation_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_group() :: %{
        "AutomatedEncodingSettings" => automated_encoding_settings(),
        "CustomName" => String.t(),
        "Name" => String.t(),
        "OutputGroupSettings" => output_group_settings(),
        "Outputs" => list(output())
      }

  """
  @type output_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_queue_request() :: %{}

  """
  @type get_queue_request() :: %{}

  @typedoc """

  ## Example:

      audio_description() :: %{
        "AudioChannelTaggingSettings" => audio_channel_tagging_settings(),
        "AudioNormalizationSettings" => audio_normalization_settings(),
        "AudioSourceName" => String.t(),
        "AudioType" => integer(),
        "AudioTypeControl" => list(any()),
        "CodecSettings" => audio_codec_settings(),
        "CustomLanguageCode" => String.t(),
        "LanguageCode" => list(any()),
        "LanguageCodeControl" => list(any()),
        "RemixSettings" => remix_settings(),
        "StreamName" => String.t()
      }

  """
  @type audio_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      xavc_settings() :: %{
        "AdaptiveQuantization" => list(any()),
        "EntropyEncoding" => list(any()),
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "PerFrameMetrics" => list(list(any())()),
        "Profile" => list(any()),
        "SlowPal" => list(any()),
        "Softness" => integer(),
        "SpatialAdaptiveQuantization" => list(any()),
        "TemporalAdaptiveQuantization" => list(any()),
        "Xavc4kIntraCbgProfileSettings" => xavc4k_intra_cbg_profile_settings(),
        "Xavc4kIntraVbrProfileSettings" => xavc4k_intra_vbr_profile_settings(),
        "Xavc4kProfileSettings" => xavc4k_profile_settings(),
        "XavcHdIntraCbgProfileSettings" => xavc_hd_intra_cbg_profile_settings(),
        "XavcHdProfileSettings" => xavc_hd_profile_settings()
      }

  """
  @type xavc_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      preset_settings() :: %{
        "AudioDescriptions" => list(audio_description()),
        "CaptionDescriptions" => list(caption_description_preset()),
        "ContainerSettings" => container_settings(),
        "VideoDescription" => video_description()
      }

  """
  @type preset_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scc_destination_settings() :: %{
        "Framerate" => list(any())
      }

  """
  @type scc_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_codec_settings() :: %{
        "Av1Settings" => av1_settings(),
        "AvcIntraSettings" => avc_intra_settings(),
        "Codec" => list(any()),
        "FrameCaptureSettings" => frame_capture_settings(),
        "GifSettings" => gif_settings(),
        "H264Settings" => h264_settings(),
        "H265Settings" => h265_settings(),
        "Mpeg2Settings" => mpeg2_settings(),
        "ProresSettings" => prores_settings(),
        "UncompressedSettings" => uncompressed_settings(),
        "Vc3Settings" => vc3_settings(),
        "Vp8Settings" => vp8_settings(),
        "Vp9Settings" => vp9_settings(),
        "XavcSettings" => xavc_settings()
      }

  """
  @type video_codec_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      motion_image_insertion_offset() :: %{
        "ImageX" => integer(),
        "ImageY" => integer()
      }

  """
  @type motion_image_insertion_offset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_properties() :: %{
        "BitDepth" => integer(),
        "BitRate" => float(),
        "Channels" => integer(),
        "FrameRate" => frame_rate(),
        "LanguageCode" => String.t(),
        "SampleRate" => integer()
      }

  """
  @type audio_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_policy_response() :: %{
        "Policy" => policy()
      }

  """
  @type put_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_engine_version() :: %{
        "ExpirationDate" => non_neg_integer(),
        "Version" => String.t()
      }

  """
  @type job_engine_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      avc_intra_settings() :: %{
        "AvcIntraClass" => list(any()),
        "AvcIntraUhdSettings" => avc_intra_uhd_settings(),
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "InterlaceMode" => list(any()),
        "PerFrameMetrics" => list(list(any())()),
        "ScanTypeConversionMode" => list(any()),
        "SlowPal" => list(any()),
        "Telecine" => list(any())
      }

  """
  @type avc_intra_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eac3_settings() :: %{
        "AttenuationControl" => list(any()),
        "Bitrate" => integer(),
        "BitstreamMode" => list(any()),
        "CodingMode" => list(any()),
        "DcFilter" => list(any()),
        "Dialnorm" => integer(),
        "DynamicRangeCompressionLine" => list(any()),
        "DynamicRangeCompressionRf" => list(any()),
        "LfeControl" => list(any()),
        "LfeFilter" => list(any()),
        "LoRoCenterMixLevel" => float(),
        "LoRoSurroundMixLevel" => float(),
        "LtRtCenterMixLevel" => float(),
        "LtRtSurroundMixLevel" => float(),
        "MetadataControl" => list(any()),
        "PassthroughControl" => list(any()),
        "PhaseControl" => list(any()),
        "SampleRate" => integer(),
        "StereoDownmix" => list(any()),
        "SurroundExMode" => list(any()),
        "SurroundMode" => list(any())
      }

  """
  @type eac3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vp9_settings() :: %{
        "Bitrate" => integer(),
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "GopSize" => float(),
        "HrdBufferSize" => integer(),
        "MaxBitrate" => integer(),
        "ParControl" => list(any()),
        "ParDenominator" => integer(),
        "ParNumerator" => integer(),
        "QualityTuningLevel" => list(any()),
        "RateControlMode" => list(any())
      }

  """
  @type vp9_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_group_detail() :: %{
        "OutputDetails" => list(output_detail())
      }

  """
  @type output_group_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_destination_settings() :: %{
        "BurninDestinationSettings" => burnin_destination_settings(),
        "DestinationType" => list(any()),
        "DvbSubDestinationSettings" => dvb_sub_destination_settings(),
        "EmbeddedDestinationSettings" => embedded_destination_settings(),
        "ImscDestinationSettings" => imsc_destination_settings(),
        "SccDestinationSettings" => scc_destination_settings(),
        "SrtDestinationSettings" => srt_destination_settings(),
        "TeletextDestinationSettings" => teletext_destination_settings(),
        "TtmlDestinationSettings" => ttml_destination_settings(),
        "WebvttDestinationSettings" => webvtt_destination_settings()
      }

  """
  @type caption_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      speke_key_provider() :: %{
        "CertificateArn" => String.t(),
        "EncryptionContractConfiguration" => encryption_contract_configuration(),
        "ResourceId" => String.t(),
        "SystemIds" => list(String.t()),
        "Url" => String.t()
      }

  """
  @type speke_key_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_rate() :: %{
        "Denominator" => integer(),
        "Numerator" => integer()
      }

  """
  @type frame_rate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination_settings() :: %{
        "AccessControl" => s3_destination_access_control(),
        "Encryption" => s3_encryption_settings(),
        "StorageClass" => list(any())
      }

  """
  @type s3_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h265_settings() :: %{
        "PerFrameMetrics" => list(list(any())()),
        "ParControl" => list(any()),
        "TemporalAdaptiveQuantization" => list(any()),
        "DynamicSubGop" => list(any()),
        "HrdBufferSize" => integer(),
        "FramerateConversionAlgorithm" => list(any()),
        "CodecProfile" => list(any()),
        "NumberBFramesBetweenReferenceFrames" => integer(),
        "EndOfStreamMarkers" => list(any()),
        "NumberReferenceFrames" => integer(),
        "Bitrate" => integer(),
        "SlowPal" => list(any()),
        "BandwidthReductionFilter" => bandwidth_reduction_filter(),
        "RateControlMode" => list(any()),
        "GopSizeUnits" => list(any()),
        "MinIInterval" => integer(),
        "QvbrSettings" => h265_qvbr_settings(),
        "FlickerAdaptiveQuantization" => list(any()),
        "AdaptiveQuantization" => list(any()),
        "CodecLevel" => list(any()),
        "HrdBufferFinalFillPercentage" => integer(),
        "FramerateControl" => list(any()),
        "SpatialAdaptiveQuantization" => list(any()),
        "FramerateDenominator" => integer(),
        "Telecine" => list(any()),
        "Tiles" => list(any()),
        "TemporalIds" => list(any()),
        "UnregisteredSeiTimecode" => list(any()),
        "ScanTypeConversionMode" => list(any()),
        "Deblocking" => list(any()),
        "ParNumerator" => integer(),
        "GopClosedCadence" => integer(),
        "FramerateNumerator" => integer(),
        "InterlaceMode" => list(any()),
        "HrdBufferInitialFillPercentage" => integer(),
        "AlternateTransferFunctionSei" => list(any()),
        "ParDenominator" => integer(),
        "WriteMp4PackagingType" => list(any()),
        "GopSize" => float(),
        "SampleAdaptiveOffsetFilterMode" => list(any()),
        "GopBReference" => list(any()),
        "SceneChangeDetect" => list(any()),
        "Slices" => integer(),
        "QualityTuningLevel" => list(any()),
        "MaxBitrate" => integer()
      }

  """
  @type h265_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      av1_qvbr_settings() :: %{
        "QvbrQualityLevel" => integer(),
        "QvbrQualityLevelFineTune" => float()
      }

  """
  @type av1_qvbr_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      teletext_destination_settings() :: %{
        "PageNumber" => String.t(),
        "PageTypes" => list(list(any())())
      }

  """
  @type teletext_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_source_settings() :: %{
        "ByteRateLimit" => list(any()),
        "Convert608To708" => list(any()),
        "ConvertPaintToPop" => list(any()),
        "Framerate" => caption_source_framerate(),
        "SourceFile" => String.t(),
        "TimeDelta" => integer(),
        "TimeDeltaUnits" => list(any()),
        "UpconvertSTLToTeletext" => list(any())
      }

  """
  @type file_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "ResourceTags" => resource_tags()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_additional_manifest() :: %{
        "ManifestNameModifier" => String.t(),
        "SelectedOutputs" => list(String.t())
      }

  """
  @type hls_additional_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mxf_xavc_profile_settings() :: %{
        "DurationMode" => list(any()),
        "MaxAncDataSize" => integer()
      }

  """
  @type mxf_xavc_profile_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_iso_encryption_settings() :: %{
        "PlaybackDeviceCompatibility" => list(any()),
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type dash_iso_encryption_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dolby_vision() :: %{
        "L6Metadata" => dolby_vision_level6_metadata(),
        "L6Mode" => list(any()),
        "Mapping" => list(any()),
        "Profile" => list(any())
      }

  """
  @type dolby_vision() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_jobs_response() :: %{
        "Jobs" => list(job()),
        "NextToken" => String.t()
      }

  """
  @type search_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_description_preset() :: %{
        "CustomLanguageCode" => String.t(),
        "DestinationSettings" => caption_destination_settings(),
        "LanguageCode" => list(any()),
        "LanguageDescription" => String.t()
      }

  """
  @type caption_description_preset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_presets_response() :: %{
        "NextToken" => String.t(),
        "Presets" => list(preset())
      }

  """
  @type list_presets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      noise_reducer_temporal_filter_settings() :: %{
        "AggressiveMode" => integer(),
        "PostTemporalSharpening" => list(any()),
        "PostTemporalSharpeningStrength" => list(any()),
        "Speed" => integer(),
        "Strength" => integer()
      }

  """
  @type noise_reducer_temporal_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_versions_response() :: %{
        "NextToken" => String.t(),
        "Versions" => list(job_engine_version())
      }

  """
  @type list_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_request() :: %{
        optional("ConcurrentJobs") => integer(),
        optional("Description") => String.t(),
        optional("PricingPlan") => list(any()),
        optional("ReservationPlanSettings") => reservation_plan_settings(),
        optional("Status") => list(any()),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ancillary_source_settings() :: %{
        "Convert608To708" => list(any()),
        "SourceAncillaryChannelNumber" => integer(),
        "TerminateCaptions" => list(any())
      }

  """
  @type ancillary_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_messages() :: %{
        "Info" => list(String.t()),
        "Warning" => list(String.t())
      }

  """
  @type job_messages() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_preset_request() :: %{}

  """
  @type delete_preset_request() :: %{}

  @typedoc """

  ## Example:

      hls_image_based_trick_play_settings() :: %{
        "IntervalCadence" => list(any()),
        "ThumbnailHeight" => integer(),
        "ThumbnailInterval" => float(),
        "ThumbnailWidth" => integer(),
        "TileHeight" => integer(),
        "TileWidth" => integer()
      }

  """
  @type hls_image_based_trick_play_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_sub_destination_settings() :: %{
        "Alignment" => list(any()),
        "ApplyFontColor" => list(any()),
        "BackgroundColor" => list(any()),
        "BackgroundOpacity" => integer(),
        "DdsHandling" => list(any()),
        "DdsXCoordinate" => integer(),
        "DdsYCoordinate" => integer(),
        "FallbackFont" => list(any()),
        "FontColor" => list(any()),
        "FontFileBold" => String.t(),
        "FontFileBoldItalic" => String.t(),
        "FontFileItalic" => String.t(),
        "FontFileRegular" => String.t(),
        "FontOpacity" => integer(),
        "FontResolution" => integer(),
        "FontScript" => list(any()),
        "FontSize" => integer(),
        "Height" => integer(),
        "HexFontColor" => String.t(),
        "OutlineColor" => list(any()),
        "OutlineSize" => integer(),
        "ShadowColor" => list(any()),
        "ShadowOpacity" => integer(),
        "ShadowXOffset" => integer(),
        "ShadowYOffset" => integer(),
        "StylePassthrough" => list(any()),
        "SubtitlingType" => list(any()),
        "TeletextSpacing" => list(any()),
        "Width" => integer(),
        "XPosition" => integer(),
        "YPosition" => integer()
      }

  """
  @type dvb_sub_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      esam_signal_processing_notification() :: %{
        "SccXml" => String.t()
      }

  """
  @type esam_signal_processing_notification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_selector() :: %{
        "AlphaBehavior" => list(any()),
        "ColorSpace" => list(any()),
        "ColorSpaceUsage" => list(any()),
        "EmbeddedTimecodeOverride" => list(any()),
        "Hdr10Metadata" => hdr10_metadata(),
        "MaxLuminance" => integer(),
        "PadVideo" => list(any()),
        "Pid" => integer(),
        "ProgramNumber" => integer(),
        "Rotate" => list(any()),
        "SampleRange" => list(any())
      }

  """
  @type video_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hdr10_plus() :: %{
        "MasteringMonitorNits" => integer(),
        "TargetMonitorNits" => integer()
      }

  """
  @type hdr10_plus() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      opus_settings() :: %{
        "Bitrate" => integer(),
        "Channels" => integer(),
        "SampleRate" => integer()
      }

  """
  @type opus_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_certificate_request() :: %{}

  """
  @type disassociate_certificate_request() :: %{}

  @typedoc """

  ## Example:

      hls_group_settings() :: %{
        "AdMarkers" => list(list(any())()),
        "AdditionalManifests" => list(hls_additional_manifest()),
        "AudioOnlyHeader" => list(any()),
        "BaseUrl" => String.t(),
        "CaptionLanguageMappings" => list(hls_caption_language_mapping()),
        "CaptionLanguageSetting" => list(any()),
        "CaptionSegmentLengthControl" => list(any()),
        "ClientCache" => list(any()),
        "CodecSpecification" => list(any()),
        "Destination" => String.t(),
        "DestinationSettings" => destination_settings(),
        "DirectoryStructure" => list(any()),
        "Encryption" => hls_encryption_settings(),
        "ImageBasedTrickPlay" => list(any()),
        "ImageBasedTrickPlaySettings" => hls_image_based_trick_play_settings(),
        "ManifestCompression" => list(any()),
        "ManifestDurationFormat" => list(any()),
        "MinFinalSegmentLength" => float(),
        "MinSegmentLength" => integer(),
        "OutputSelection" => list(any()),
        "ProgramDateTime" => list(any()),
        "ProgramDateTimePeriod" => integer(),
        "ProgressiveWriteHlsManifest" => list(any()),
        "SegmentControl" => list(any()),
        "SegmentLength" => integer(),
        "SegmentLengthControl" => list(any()),
        "SegmentsPerSubdirectory" => integer(),
        "StreamInfResolution" => list(any()),
        "TargetDurationCompatibilityMode" => list(any()),
        "TimedMetadataId3Frame" => list(any()),
        "TimedMetadataId3Period" => integer(),
        "TimestampDeltaMilliseconds" => integer()
      }

  """
  @type hls_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_settings() :: %{
        "HlsSettings" => hls_settings()
      }

  """
  @type output_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_selector() :: %{
        "AudioDurationCorrection" => list(any()),
        "CustomLanguageCode" => String.t(),
        "DefaultSelection" => list(any()),
        "ExternalAudioFileInput" => String.t(),
        "HlsRenditionGroupSettings" => hls_rendition_group_settings(),
        "LanguageCode" => list(any()),
        "Offset" => integer(),
        "Pids" => list(integer()),
        "ProgramSelection" => integer(),
        "RemixSettings" => remix_settings(),
        "SelectorType" => list(any()),
        "Tracks" => list(integer())
      }

  """
  @type audio_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      av1_settings() :: %{
        "AdaptiveQuantization" => list(any()),
        "BitDepth" => list(any()),
        "FilmGrainSynthesis" => list(any()),
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "GopSize" => float(),
        "MaxBitrate" => integer(),
        "NumberBFramesBetweenReferenceFrames" => integer(),
        "PerFrameMetrics" => list(list(any())()),
        "QvbrSettings" => av1_qvbr_settings(),
        "RateControlMode" => list(any()),
        "Slices" => integer(),
        "SpatialAdaptiveQuantization" => list(any())
      }

  """
  @type av1_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_override() :: %{
        "Message" => String.t(),
        "Name" => String.t(),
        "OverrideValue" => String.t(),
        "Value" => String.t()
      }

  """
  @type service_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      xavc_hd_profile_settings() :: %{
        "BitrateClass" => list(any()),
        "FlickerAdaptiveQuantization" => list(any()),
        "GopBReference" => list(any()),
        "GopClosedCadence" => integer(),
        "HrdBufferSize" => integer(),
        "InterlaceMode" => list(any()),
        "QualityTuningLevel" => list(any()),
        "Slices" => integer(),
        "Telecine" => list(any())
      }

  """
  @type xavc_hd_profile_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_response() :: %{
        "Policy" => policy()
      }

  """
  @type get_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_detail() :: %{
        "HeightInPx" => integer(),
        "WidthInPx" => integer()
      }

  """
  @type video_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint() :: %{
        "Url" => String.t()
      }

  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_preprocessor() :: %{
        "ColorCorrector" => color_corrector(),
        "Deinterlacer" => deinterlacer(),
        "DolbyVision" => dolby_vision(),
        "Hdr10Plus" => hdr10_plus(),
        "ImageInserter" => image_inserter(),
        "NoiseReducer" => noise_reducer(),
        "PartnerWatermarking" => partner_watermarking(),
        "TimecodeBurnin" => timecode_burnin()
      }

  """
  @type video_preprocessor() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_certificate_request() :: %{
        required("Arn") => String.t()
      }

  """
  @type associate_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      avail_blanking() :: %{
        "AvailBlankingImage" => String.t()
      }

  """
  @type avail_blanking() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_additional_manifest() :: %{
        "ManifestNameModifier" => String.t(),
        "SelectedOutputs" => list(String.t())
      }

  """
  @type dash_additional_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_template_request() :: %{}

  """
  @type get_job_template_request() :: %{}

  @typedoc """

  ## Example:

      encryption_contract_configuration() :: %{
        "SpekeAudioPreset" => list(any()),
        "SpekeVideoPreset" => list(any())
      }

  """
  @type encryption_contract_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_preset_request() :: %{
        optional("Category") => String.t(),
        optional("Description") => String.t(),
        optional("Settings") => preset_settings()
      }

  """
  @type update_preset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      avc_intra_uhd_settings() :: %{
        "QualityTuningLevel" => list(any())
      }

  """
  @type avc_intra_uhd_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      motion_image_inserter() :: %{
        "Framerate" => motion_image_insertion_framerate(),
        "Input" => String.t(),
        "InsertionMode" => list(any()),
        "Offset" => motion_image_insertion_offset(),
        "Playback" => list(any()),
        "StartTime" => String.t()
      }

  """
  @type motion_image_inserter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timing() :: %{
        "FinishTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "SubmitTime" => non_neg_integer()
      }

  """
  @type timing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_policy_request() :: %{}

  """
  @type delete_policy_request() :: %{}

  @typedoc """

  ## Example:

      video_properties() :: %{
        "BitDepth" => integer(),
        "BitRate" => float(),
        "ColorPrimaries" => list(any()),
        "FrameRate" => frame_rate(),
        "Height" => integer(),
        "MatrixCoefficients" => list(any()),
        "TransferCharacteristics" => list(any()),
        "Width" => integer()
      }

  """
  @type video_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_preset_request() :: %{}

  """
  @type get_preset_request() :: %{}

  @typedoc """

  ## Example:

      teletext_source_settings() :: %{
        "PageNumber" => String.t()
      }

  """
  @type teletext_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_transition() :: %{
        "DestinationQueue" => String.t(),
        "SourceQueue" => String.t(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type queue_transition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_templates_request() :: %{
        optional("Category") => String.t(),
        optional("ListBy") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Order") => list(any())
      }

  """
  @type list_job_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      policy() :: %{
        "HttpInputs" => list(any()),
        "HttpsInputs" => list(any()),
        "S3Inputs" => list(any())
      }

  """
  @type policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      probe_result() :: %{
        "Container" => container(),
        "Metadata" => metadata(),
        "TrackMappings" => list(track_mapping())
      }

  """
  @type probe_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_additional_manifest() :: %{
        "ManifestNameModifier" => String.t(),
        "SelectedOutputs" => list(String.t())
      }

  """
  @type cmaf_additional_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_template_request() :: %{
        optional("AccelerationSettings") => acceleration_settings(),
        optional("Category") => String.t(),
        optional("Description") => String.t(),
        optional("HopDestinations") => list(hop_destination()),
        optional("Priority") => integer(),
        optional("Queue") => String.t(),
        optional("StatusUpdateInterval") => list(any()),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("Settings") => job_template_settings()
      }

  """
  @type create_job_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      automated_encoding_settings() :: %{
        "AbrSettings" => automated_abr_settings()
      }

  """
  @type automated_encoding_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_tdt_settings() :: %{
        "TdtInterval" => integer()
      }

  """
  @type dvb_tdt_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id3_insertion() :: %{
        "Id3" => String.t(),
        "Timecode" => String.t()
      }

  """
  @type id3_insertion() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hdr10_metadata() :: %{
        "BluePrimaryX" => integer(),
        "BluePrimaryY" => integer(),
        "GreenPrimaryX" => integer(),
        "GreenPrimaryY" => integer(),
        "MaxContentLightLevel" => integer(),
        "MaxFrameAverageLightLevel" => integer(),
        "MaxLuminance" => integer(),
        "MinLuminance" => integer(),
        "RedPrimaryX" => integer(),
        "RedPrimaryY" => integer(),
        "WhitePointX" => integer(),
        "WhitePointY" => integer()
      }

  """
  @type hdr10_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mp3_settings() :: %{
        "Bitrate" => integer(),
        "Channels" => integer(),
        "RateControlMode" => list(any()),
        "SampleRate" => integer(),
        "VbrQuality" => integer()
      }

  """
  @type mp3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      webvtt_destination_settings() :: %{
        "Accessibility" => list(any()),
        "StylePassthrough" => list(any())
      }

  """
  @type webvtt_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_job_template_response() :: %{
        "JobTemplate" => job_template()
      }

  """
  @type update_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      uncompressed_settings() :: %{
        "Fourcc" => list(any()),
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "InterlaceMode" => list(any()),
        "ScanTypeConversionMode" => list(any()),
        "SlowPal" => list(any()),
        "Telecine" => list(any())
      }

  """
  @type uncompressed_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_certificate_response() :: %{}

  """
  @type disassociate_certificate_response() :: %{}

  @typedoc """

  ## Example:

      remix_settings() :: %{
        "AudioDescriptionAudioChannel" => integer(),
        "AudioDescriptionDataChannel" => integer(),
        "ChannelMapping" => channel_mapping(),
        "ChannelsIn" => integer(),
        "ChannelsOut" => integer()
      }

  """
  @type remix_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mpeg2_settings() :: %{
        "PerFrameMetrics" => list(list(any())()),
        "ParControl" => list(any()),
        "TemporalAdaptiveQuantization" => list(any()),
        "DynamicSubGop" => list(any()),
        "HrdBufferSize" => integer(),
        "FramerateConversionAlgorithm" => list(any()),
        "IntraDcPrecision" => list(any()),
        "CodecProfile" => list(any()),
        "NumberBFramesBetweenReferenceFrames" => integer(),
        "Bitrate" => integer(),
        "SlowPal" => list(any()),
        "RateControlMode" => list(any()),
        "GopSizeUnits" => list(any()),
        "MinIInterval" => integer(),
        "Softness" => integer(),
        "AdaptiveQuantization" => list(any()),
        "CodecLevel" => list(any()),
        "HrdBufferFinalFillPercentage" => integer(),
        "FramerateControl" => list(any()),
        "SpatialAdaptiveQuantization" => list(any()),
        "FramerateDenominator" => integer(),
        "Telecine" => list(any()),
        "ScanTypeConversionMode" => list(any()),
        "ParNumerator" => integer(),
        "GopClosedCadence" => integer(),
        "FramerateNumerator" => integer(),
        "InterlaceMode" => list(any()),
        "HrdBufferInitialFillPercentage" => integer(),
        "ParDenominator" => integer(),
        "Syntax" => list(any()),
        "GopSize" => float(),
        "SceneChangeDetect" => list(any()),
        "QualityTuningLevel" => list(any()),
        "MaxBitrate" => integer()
      }

  """
  @type mpeg2_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_source_settings() :: %{
        "AncillarySourceSettings" => ancillary_source_settings(),
        "DvbSubSourceSettings" => dvb_sub_source_settings(),
        "EmbeddedSourceSettings" => embedded_source_settings(),
        "FileSourceSettings" => file_source_settings(),
        "SourceType" => list(any()),
        "TeletextSourceSettings" => teletext_source_settings(),
        "TrackSourceSettings" => track_source_settings(),
        "WebvttHlsSourceSettings" => webvtt_hls_source_settings()
      }

  """
  @type caption_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kantar_watermark_settings() :: %{
        "ChannelName" => String.t(),
        "ContentReference" => String.t(),
        "CredentialsSecretName" => String.t(),
        "FileOffset" => float(),
        "KantarLicenseId" => integer(),
        "KantarServerUrl" => String.t(),
        "LogDestination" => String.t(),
        "Metadata3" => String.t(),
        "Metadata4" => String.t(),
        "Metadata5" => String.t(),
        "Metadata6" => String.t(),
        "Metadata7" => String.t(),
        "Metadata8" => String.t()
      }

  """
  @type kantar_watermark_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hop_destination() :: %{
        "Priority" => integer(),
        "Queue" => String.t(),
        "WaitMinutes" => integer()
      }

  """
  @type hop_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_response() :: %{
        "Job" => job()
      }

  """
  @type get_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_preset_response() :: %{
        "Preset" => preset()
      }

  """
  @type update_preset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ms_smooth_additional_manifest() :: %{
        "ManifestNameModifier" => String.t(),
        "SelectedOutputs" => list(String.t())
      }

  """
  @type ms_smooth_additional_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vorbis_settings() :: %{
        "Channels" => integer(),
        "SampleRate" => integer(),
        "VbrQuality" => integer()
      }

  """
  @type vorbis_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      probe_response() :: %{
        "ProbeResults" => list(probe_result())
      }

  """
  @type probe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ac3_settings() :: %{
        "Bitrate" => integer(),
        "BitstreamMode" => list(any()),
        "CodingMode" => list(any()),
        "Dialnorm" => integer(),
        "DynamicRangeCompressionLine" => list(any()),
        "DynamicRangeCompressionProfile" => list(any()),
        "DynamicRangeCompressionRf" => list(any()),
        "LfeFilter" => list(any()),
        "MetadataControl" => list(any()),
        "SampleRate" => integer()
      }

  """
  @type ac3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      job() :: %{
        "AccelerationSettings" => acceleration_settings(),
        "AccelerationStatus" => list(any()),
        "Arn" => String.t(),
        "BillingTagsSource" => list(any()),
        "ClientRequestToken" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "CurrentPhase" => list(any()),
        "ErrorCode" => integer(),
        "ErrorMessage" => String.t(),
        "HopDestinations" => list(hop_destination()),
        "Id" => String.t(),
        "JobEngineVersionRequested" => String.t(),
        "JobEngineVersionUsed" => String.t(),
        "JobPercentComplete" => integer(),
        "JobTemplate" => String.t(),
        "Messages" => job_messages(),
        "OutputGroupDetails" => list(output_group_detail()),
        "Priority" => integer(),
        "Queue" => String.t(),
        "QueueTransitions" => list(queue_transition()),
        "RetryCount" => integer(),
        "Role" => String.t(),
        "Settings" => job_settings(),
        "SimulateReservedQueue" => list(any()),
        "Status" => list(any()),
        "StatusUpdateInterval" => list(any()),
        "Timing" => timing(),
        "UserMetadata" => map(),
        "Warnings" => list(warning_group())
      }

  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      embedded_source_settings() :: %{
        "Convert608To708" => list(any()),
        "Source608ChannelNumber" => integer(),
        "Source608TrackNumber" => integer(),
        "TerminateCaptions" => list(any())
      }

  """
  @type embedded_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_iso_image_based_trick_play_settings() :: %{
        "IntervalCadence" => list(any()),
        "ThumbnailHeight" => integer(),
        "ThumbnailInterval" => float(),
        "ThumbnailWidth" => integer(),
        "TileHeight" => integer(),
        "TileWidth" => integer()
      }

  """
  @type dash_iso_image_based_trick_play_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_settings() :: %{
        "CmfcSettings" => cmfc_settings(),
        "Container" => list(any()),
        "F4vSettings" => f4v_settings(),
        "M2tsSettings" => m2ts_settings(),
        "M3u8Settings" => m3u8_settings(),
        "MovSettings" => mov_settings(),
        "Mp4Settings" => mp4_settings(),
        "MpdSettings" => mpd_settings(),
        "MxfSettings" => mxf_settings()
      }

  """
  @type container_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_overlay_input() :: %{
        "FileInput" => String.t(),
        "InputClippings" => list(video_overlay_input_clipping()),
        "TimecodeSource" => list(any()),
        "TimecodeStart" => String.t()
      }

  """
  @type video_overlay_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      probe_input_file() :: %{
        "FileUrl" => String.t()
      }

  """
  @type probe_input_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_request() :: %{}

  """
  @type get_job_request() :: %{}

  @typedoc """

  ## Example:

      cmaf_encryption_settings() :: %{
        "ConstantInitializationVector" => String.t(),
        "EncryptionMethod" => list(any()),
        "InitializationVectorInManifest" => list(any()),
        "SpekeKeyProvider" => speke_key_provider_cmaf(),
        "StaticKeyProvider" => static_key_provider(),
        "Type" => list(any())
      }

  """
  @type cmaf_encryption_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_preset_response() :: %{
        "Preset" => preset()
      }

  """
  @type get_preset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_description() :: %{
        "CaptionSelectorName" => String.t(),
        "CustomLanguageCode" => String.t(),
        "DestinationSettings" => caption_destination_settings(),
        "LanguageCode" => list(any()),
        "LanguageDescription" => String.t()
      }

  """
  @type caption_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_overlay_crop() :: %{
        "Height" => integer(),
        "Unit" => list(any()),
        "Width" => integer(),
        "X" => integer(),
        "Y" => integer()
      }

  """
  @type video_overlay_crop() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nielsen_non_linear_watermark_settings() :: %{
        "ActiveWatermarkProcess" => list(any()),
        "AdiFilename" => String.t(),
        "AssetId" => String.t(),
        "AssetName" => String.t(),
        "CbetSourceId" => String.t(),
        "EpisodeId" => String.t(),
        "MetadataDestination" => String.t(),
        "SourceId" => integer(),
        "SourceWatermarkStatus" => list(any()),
        "TicServerUrl" => String.t(),
        "UniqueTicPerAudioTrack" => list(any())
      }

  """
  @type nielsen_non_linear_watermark_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_image_based_trick_play_settings() :: %{
        "IntervalCadence" => list(any()),
        "ThumbnailHeight" => integer(),
        "ThumbnailInterval" => float(),
        "ThumbnailWidth" => integer(),
        "TileHeight" => integer(),
        "TileWidth" => integer()
      }

  """
  @type cmaf_image_based_trick_play_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_capture_settings() :: %{
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "MaxCaptures" => integer(),
        "Quality" => integer()
      }

  """
  @type frame_capture_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      m2ts_settings() :: %{
        "TimedMetadataPid" => integer(),
        "KlvMetadata" => list(any()),
        "NullPacketBitrate" => float(),
        "PcrPid" => integer(),
        "DvbTeletextPid" => integer(),
        "AudioBufferModel" => list(any()),
        "DvbSdtSettings" => dvb_sdt_settings(),
        "TransportStreamId" => integer(),
        "PatInterval" => integer(),
        "Bitrate" => integer(),
        "PmtPid" => integer(),
        "MaxPcrInterval" => integer(),
        "EbpPlacement" => list(any()),
        "Scte35Esam" => m2ts_scte35_esam(),
        "Scte35Pid" => integer(),
        "FragmentTime" => float(),
        "AudioFramesPerPes" => integer(),
        "SegmentationMarkers" => list(any()),
        "DataPTSControl" => list(any()),
        "Scte35Source" => list(any()),
        "SegmentationTime" => float(),
        "PrivateMetadataPid" => integer(),
        "PcrControl" => list(any()),
        "MinEbpInterval" => integer(),
        "ForceTsVideoEbpOrder" => list(any()),
        "AudioDuration" => list(any()),
        "VideoPid" => integer(),
        "PreventBufferUnderflow" => list(any()),
        "DvbTdtSettings" => dvb_tdt_settings(),
        "DvbSubPids" => list(integer()),
        "AudioPids" => list(integer()),
        "PtsOffsetMode" => list(any()),
        "PtsOffset" => integer(),
        "AudioPtsOffsetDelta" => integer(),
        "BufferModel" => list(any()),
        "DvbNitSettings" => dvb_nit_settings(),
        "RateMode" => list(any()),
        "EbpAudioInterval" => list(any()),
        "NielsenId3" => list(any()),
        "ProgramNumber" => integer(),
        "EsRateInPes" => list(any()),
        "PmtInterval" => integer(),
        "SegmentationStyle" => list(any())
      }

  """
  @type m2ts_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_sdt_settings() :: %{
        "OutputSdt" => list(any()),
        "SdtInterval" => integer(),
        "ServiceName" => String.t(),
        "ServiceProviderName" => String.t()
      }

  """
  @type dvb_sdt_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queues_response() :: %{
        "NextToken" => String.t(),
        "Queues" => list(queue()),
        "TotalConcurrentJobs" => integer(),
        "UnallocatedConcurrentJobs" => integer()
      }

  """
  @type list_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_properties() :: %{
        "LanguageCode" => String.t()
      }

  """
  @type data_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      m2ts_scte35_esam() :: %{
        "Scte35EsamPid" => integer()
      }

  """
  @type m2ts_scte35_esam() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      warning_group() :: %{
        "Code" => integer(),
        "Count" => integer()
      }

  """
  @type warning_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      srt_destination_settings() :: %{
        "StylePassthrough" => list(any())
      }

  """
  @type srt_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      min_bottom_rendition_size() :: %{
        "Height" => integer(),
        "Width" => integer()
      }

  """
  @type min_bottom_rendition_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eac3_atmos_settings() :: %{
        "Bitrate" => integer(),
        "BitstreamMode" => list(any()),
        "CodingMode" => list(any()),
        "DialogueIntelligence" => list(any()),
        "DownmixControl" => list(any()),
        "DynamicRangeCompressionLine" => list(any()),
        "DynamicRangeCompressionRf" => list(any()),
        "DynamicRangeControl" => list(any()),
        "LoRoCenterMixLevel" => float(),
        "LoRoSurroundMixLevel" => float(),
        "LtRtCenterMixLevel" => float(),
        "LtRtSurroundMixLevel" => float(),
        "MeteringMode" => list(any()),
        "SampleRate" => integer(),
        "SpeechThreshold" => integer(),
        "StereoDownmix" => list(any()),
        "SurroundExMode" => list(any())
      }

  """
  @type eac3_atmos_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dolby_vision_level6_metadata() :: %{
        "MaxCll" => integer(),
        "MaxFall" => integer()
      }

  """
  @type dolby_vision_level6_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      f4v_settings() :: %{
        "MoovPlacement" => list(any())
      }

  """
  @type f4v_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_decryption_settings() :: %{
        "DecryptionMode" => list(any()),
        "EncryptedDecryptionKey" => String.t(),
        "InitializationVector" => String.t(),
        "KmsKeyRegion" => String.t()
      }

  """
  @type input_decryption_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_mapping() :: %{
        "OutputChannels" => list(output_channel_mapping())
      }

  """
  @type channel_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wav_settings() :: %{
        "BitDepth" => integer(),
        "Channels" => integer(),
        "Format" => list(any()),
        "SampleRate" => integer()
      }

  """
  @type wav_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_clipping() :: %{
        "EndTimecode" => String.t(),
        "StartTimecode" => String.t()
      }

  """
  @type input_clipping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_response() :: %{
        "Queue" => queue()
      }

  """
  @type update_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_request() :: %{}

  """
  @type delete_queue_request() :: %{}

  @typedoc """

  ## Example:

      automated_abr_settings() :: %{
        "MaxAbrBitrate" => integer(),
        "MaxQualityLevel" => float(),
        "MaxRenditions" => integer(),
        "MinAbrBitrate" => integer(),
        "Rules" => list(automated_abr_rule())
      }

  """
  @type automated_abr_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      xavc_hd_intra_cbg_profile_settings() :: %{
        "XavcClass" => list(any())
      }

  """
  @type xavc_hd_intra_cbg_profile_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      embedded_destination_settings() :: %{
        "Destination608ChannelNumber" => integer(),
        "Destination708ServiceNumber" => integer()
      }

  """
  @type embedded_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_policy_request() :: %{
        required("Policy") => policy()
      }

  """
  @type put_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_templates_response() :: %{
        "JobTemplates" => list(job_template()),
        "NextToken" => String.t()
      }

  """
  @type list_job_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mpd_settings() :: %{
        "AccessibilityCaptionHints" => list(any()),
        "AudioDuration" => list(any()),
        "CaptionContainerType" => list(any()),
        "KlvMetadata" => list(any()),
        "ManifestMetadataSignaling" => list(any()),
        "Scte35Esam" => list(any()),
        "Scte35Source" => list(any()),
        "TimedMetadata" => list(any()),
        "TimedMetadataBoxVersion" => list(any()),
        "TimedMetadataSchemeIdUri" => String.t(),
        "TimedMetadataValue" => String.t()
      }

  """
  @type mpd_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_preset_response() :: %{
        "Preset" => preset()
      }

  """
  @type create_preset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gif_settings() :: %{
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer()
      }

  """
  @type gif_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_source_framerate() :: %{
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer()
      }

  """
  @type caption_source_framerate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h265_qvbr_settings() :: %{
        "MaxAverageBitrate" => integer(),
        "QvbrQualityLevel" => integer(),
        "QvbrQualityLevelFineTune" => float()
      }

  """
  @type h265_qvbr_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_normalization_settings() :: %{
        "Algorithm" => list(any()),
        "AlgorithmControl" => list(any()),
        "CorrectionGateLevel" => integer(),
        "LoudnessLogging" => list(any()),
        "PeakCalculation" => list(any()),
        "TargetLkfs" => float(),
        "TruePeakLimiterThreshold" => float()
      }

  """
  @type audio_normalization_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_channel_mapping() :: %{
        "InputChannels" => list(integer()),
        "InputChannelsFineTune" => list(float())
      }

  """
  @type output_channel_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      probe_request() :: %{
        optional("InputFiles") => list(probe_input_file())
      }

  """
  @type probe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_iso_group_settings() :: %{
        "AdditionalManifests" => list(dash_additional_manifest()),
        "AudioChannelConfigSchemeIdUri" => list(any()),
        "BaseUrl" => String.t(),
        "DashIFrameTrickPlayNameModifier" => String.t(),
        "DashManifestStyle" => list(any()),
        "Destination" => String.t(),
        "DestinationSettings" => destination_settings(),
        "Encryption" => dash_iso_encryption_settings(),
        "FragmentLength" => integer(),
        "HbbtvCompliance" => list(any()),
        "ImageBasedTrickPlay" => list(any()),
        "ImageBasedTrickPlaySettings" => dash_iso_image_based_trick_play_settings(),
        "MinBufferTime" => integer(),
        "MinFinalSegmentLength" => float(),
        "MpdManifestBandwidthType" => list(any()),
        "MpdProfile" => list(any()),
        "PtsOffsetHandlingForBFrames" => list(any()),
        "SegmentControl" => list(any()),
        "SegmentLength" => integer(),
        "SegmentLengthControl" => list(any()),
        "VideoCompositionOffsets" => list(any()),
        "WriteSegmentTimelineInRepresentation" => list(any())
      }

  """
  @type dash_iso_group_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      imsc_destination_settings() :: %{
        "Accessibility" => list(any()),
        "StylePassthrough" => list(any())
      }

  """
  @type imsc_destination_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_tams_settings() :: %{
        "AuthConnectionArn" => String.t(),
        "GapHandling" => list(any()),
        "SourceId" => String.t(),
        "Timerange" => String.t()
      }

  """
  @type input_tams_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_queue_response() :: %{}

  """
  @type delete_queue_response() :: %{}

  @typedoc """

  ## Example:

      cancel_job_response() :: %{}

  """
  @type cancel_job_response() :: %{}

  @typedoc """

  ## Example:

      clip_limits() :: %{
        "MaximumRGBTolerance" => integer(),
        "MaximumYUV" => integer(),
        "MinimumRGBTolerance" => integer(),
        "MinimumYUV" => integer()
      }

  """
  @type clip_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      preset() :: %{
        "Arn" => String.t(),
        "Category" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "LastUpdated" => non_neg_integer(),
        "Name" => String.t(),
        "Settings" => preset_settings(),
        "Type" => list(any())
      }

  """
  @type preset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      noise_reducer_spatial_filter_settings() :: %{
        "PostFilterSharpenStrength" => integer(),
        "Speed" => integer(),
        "Strength" => integer()
      }

  """
  @type noise_reducer_spatial_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vp8_settings() :: %{
        "Bitrate" => integer(),
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "GopSize" => float(),
        "HrdBufferSize" => integer(),
        "MaxBitrate" => integer(),
        "ParControl" => list(any()),
        "ParDenominator" => integer(),
        "ParNumerator" => integer(),
        "QualityTuningLevel" => list(any()),
        "RateControlMode" => list(any())
      }

  """
  @type vp8_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h264_qvbr_settings() :: %{
        "MaxAverageBitrate" => integer(),
        "QvbrQualityLevel" => integer(),
        "QvbrQualityLevelFineTune" => float()
      }

  """
  @type h264_qvbr_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dvb_nit_settings() :: %{
        "NetworkId" => integer(),
        "NetworkName" => String.t(),
        "NitInterval" => integer()
      }

  """
  @type dvb_nit_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vc3_settings() :: %{
        "FramerateControl" => list(any()),
        "FramerateConversionAlgorithm" => list(any()),
        "FramerateDenominator" => integer(),
        "FramerateNumerator" => integer(),
        "InterlaceMode" => list(any()),
        "ScanTypeConversionMode" => list(any()),
        "SlowPal" => list(any()),
        "Telecine" => list(any()),
        "Vc3Class" => list(any())
      }

  """
  @type vc3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      track_source_settings() :: %{
        "TrackNumber" => integer()
      }

  """
  @type track_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmfc_settings() :: %{
        "AudioDuration" => list(any()),
        "AudioGroupId" => String.t(),
        "AudioRenditionSets" => String.t(),
        "AudioTrackType" => list(any()),
        "DescriptiveVideoServiceFlag" => list(any()),
        "IFrameOnlyManifest" => list(any()),
        "KlvMetadata" => list(any()),
        "ManifestMetadataSignaling" => list(any()),
        "Scte35Esam" => list(any()),
        "Scte35Source" => list(any()),
        "TimedMetadata" => list(any()),
        "TimedMetadataBoxVersion" => list(any()),
        "TimedMetadataSchemeIdUri" => String.t(),
        "TimedMetadataValue" => String.t()
      }

  """
  @type cmfc_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_response() :: %{
        "Queue" => queue()
      }

  """
  @type create_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output() :: %{
        "AudioDescriptions" => list(audio_description()),
        "CaptionDescriptions" => list(caption_description()),
        "ContainerSettings" => container_settings(),
        "Extension" => String.t(),
        "NameModifier" => String.t(),
        "OutputSettings" => output_settings(),
        "Preset" => String.t(),
        "VideoDescription" => video_description()
      }

  """
  @type output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insertable_image() :: %{
        "Duration" => integer(),
        "FadeIn" => integer(),
        "FadeOut" => integer(),
        "Height" => integer(),
        "ImageInserterInput" => String.t(),
        "ImageX" => integer(),
        "ImageY" => integer(),
        "Layer" => integer(),
        "Opacity" => integer(),
        "StartTime" => String.t(),
        "Width" => integer()
      }

  """
  @type insertable_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      h264_settings() :: %{
        "PerFrameMetrics" => list(list(any())()),
        "ParControl" => list(any()),
        "TemporalAdaptiveQuantization" => list(any()),
        "DynamicSubGop" => list(any()),
        "HrdBufferSize" => integer(),
        "FramerateConversionAlgorithm" => list(any()),
        "CodecProfile" => list(any()),
        "NumberBFramesBetweenReferenceFrames" => integer(),
        "EndOfStreamMarkers" => list(any()),
        "NumberReferenceFrames" => integer(),
        "Bitrate" => integer(),
        "SlowPal" => list(any()),
        "BandwidthReductionFilter" => bandwidth_reduction_filter(),
        "RateControlMode" => list(any()),
        "GopSizeUnits" => list(any()),
        "MinIInterval" => integer(),
        "QvbrSettings" => h264_qvbr_settings(),
        "EntropyEncoding" => list(any()),
        "FieldEncoding" => list(any()),
        "FlickerAdaptiveQuantization" => list(any()),
        "SaliencyAwareEncoding" => list(any()),
        "Softness" => integer(),
        "AdaptiveQuantization" => list(any()),
        "CodecLevel" => list(any()),
        "HrdBufferFinalFillPercentage" => integer(),
        "FramerateControl" => list(any()),
        "SpatialAdaptiveQuantization" => list(any()),
        "FramerateDenominator" => integer(),
        "Telecine" => list(any()),
        "RepeatPps" => list(any()),
        "UnregisteredSeiTimecode" => list(any()),
        "ScanTypeConversionMode" => list(any()),
        "ParNumerator" => integer(),
        "GopClosedCadence" => integer(),
        "FramerateNumerator" => integer(),
        "InterlaceMode" => list(any()),
        "HrdBufferInitialFillPercentage" => integer(),
        "ParDenominator" => integer(),
        "WriteMp4PackagingType" => list(any()),
        "Syntax" => list(any()),
        "GopSize" => float(),
        "GopBReference" => list(any()),
        "SceneChangeDetect" => list(any()),
        "Slices" => integer(),
        "QualityTuningLevel" => list(any()),
        "MaxBitrate" => integer()
      }

  """
  @type h264_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      allowed_rendition_size() :: %{
        "Height" => integer(),
        "Required" => list(any()),
        "Width" => integer()
      }

  """
  @type allowed_rendition_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      noise_reducer_filter_settings() :: %{
        "Strength" => integer()
      }

  """
  @type noise_reducer_filter_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      webvtt_hls_source_settings() :: %{
        "RenditionGroupId" => String.t(),
        "RenditionLanguageCode" => list(any()),
        "RenditionName" => String.t()
      }

  """
  @type webvtt_hls_source_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      xavc4k_intra_cbg_profile_settings() :: %{
        "XavcClass" => list(any())
      }

  """
  @type xavc4k_intra_cbg_profile_settings() :: %{String.t() => any()}

  @type associate_certificate_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type cancel_job_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_job_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_job_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_preset_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_queue_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_job_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_preset_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_queue_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_endpoints_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type disassociate_certificate_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_job_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_job_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_preset_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_queue_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_job_templates_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_jobs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_presets_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_queues_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type probe_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type put_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type search_jobs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_job_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_preset_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_queue_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-08-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediaconvert",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaConvert",
      signature_version: "v4",
      signing_name: "mediaconvert",
      target_prefix: nil
    }
  end

  @doc """
  Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS
  Elemental MediaConvert.
  """
  @spec associate_certificate(map(), associate_certificate_request(), list()) ::
          {:ok, associate_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_certificate_errors()}
  def associate_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/certificates"
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
      201
    )
  end

  @doc """
  Permanently cancel a job.

  Once you have canceled a job, you can't start it again.
  """
  @spec cancel_job(map(), String.t(), cancel_job_request(), list()) ::
          {:ok, cancel_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_job_errors()}
  def cancel_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/2017-08-29/jobs/#{AWS.Util.encode_uri(id)}"
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
      202
    )
  end

  @doc """
  Create a new transcoding job.

  For information about jobs and job settings, see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  @spec create_job(map(), create_job_request(), list()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/jobs"
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
      201
    )
  end

  @doc """
  Create a new job template.

  For information about job templates see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  @spec create_job_template(map(), create_job_template_request(), list()) ::
          {:ok, create_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_template_errors()}
  def create_job_template(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/jobTemplates"
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
      201
    )
  end

  @doc """
  Create a new preset.

  For information about job templates see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  @spec create_preset(map(), create_preset_request(), list()) ::
          {:ok, create_preset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_preset_errors()}
  def create_preset(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/presets"
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
      201
    )
  end

  @doc """
  Create a new transcoding queue.

  For information about queues, see Working With Queues in the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
  """
  @spec create_queue(map(), create_queue_request(), list()) ::
          {:ok, create_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_queue_errors()}
  def create_queue(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/queues"
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
      201
    )
  end

  @doc """
  Permanently delete a job template you have created.
  """
  @spec delete_job_template(map(), String.t(), delete_job_template_request(), list()) ::
          {:ok, delete_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_template_errors()}
  def delete_job_template(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/jobTemplates/#{AWS.Util.encode_uri(name)}"
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
      202
    )
  end

  @doc """
  Permanently delete a policy that you created.
  """
  @spec delete_policy(map(), delete_policy_request(), list()) ::
          {:ok, delete_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/policy"
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
  Permanently delete a preset you have created.
  """
  @spec delete_preset(map(), String.t(), delete_preset_request(), list()) ::
          {:ok, delete_preset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_preset_errors()}
  def delete_preset(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/presets/#{AWS.Util.encode_uri(name)}"
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
      202
    )
  end

  @doc """
  Permanently delete a queue you have created.
  """
  @spec delete_queue(map(), String.t(), delete_queue_request(), list()) ::
          {:ok, delete_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queue_errors()}
  def delete_queue(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/queues/#{AWS.Util.encode_uri(name)}"
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
      202
    )
  end

  @doc """
  Send a request with an empty body to the regional API endpoint to get your
  account API endpoint.

  Note that DescribeEndpoints is no longer required. We recommend that you send
  your requests directly to the regional endpoint instead.
  """
  @spec describe_endpoints(map(), describe_endpoints_request(), list()) ::
          {:ok, describe_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_endpoints_errors()}
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/endpoints"
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
  Removes an association between the Amazon Resource Name (ARN) of an AWS
  Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert
  resource.
  """
  @spec disassociate_certificate(map(), String.t(), disassociate_certificate_request(), list()) ::
          {:ok, disassociate_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_certificate_errors()}
  def disassociate_certificate(%Client{} = client, arn, input, options \\ []) do
    url_path = "/2017-08-29/certificates/#{AWS.Util.encode_uri(arn)}"
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
      202
    )
  end

  @doc """
  Retrieve the JSON for a specific transcoding job.
  """
  @spec get_job(map(), String.t(), list()) ::
          {:ok, get_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, id, options \\ []) do
    url_path = "/2017-08-29/jobs/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the JSON for a specific job template.
  """
  @spec get_job_template(map(), String.t(), list()) ::
          {:ok, get_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_template_errors()}
  def get_job_template(%Client{} = client, name, options \\ []) do
    url_path = "/2017-08-29/jobTemplates/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the JSON for your policy.
  """
  @spec get_policy(map(), list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, options \\ []) do
    url_path = "/2017-08-29/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the JSON for a specific preset.
  """
  @spec get_preset(map(), String.t(), list()) ::
          {:ok, get_preset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_preset_errors()}
  def get_preset(%Client{} = client, name, options \\ []) do
    url_path = "/2017-08-29/presets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the JSON for a specific queue.
  """
  @spec get_queue(map(), String.t(), list()) ::
          {:ok, get_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_queue_errors()}
  def get_queue(%Client{} = client, name, options \\ []) do
    url_path = "/2017-08-29/queues/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of up to twenty of your job templates.

  This will return the templates themselves, not just a list of them. To retrieve
  the next twenty templates, use the nextToken string returned with the array
  """
  @spec list_job_templates(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_job_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_job_templates_errors()}
  def list_job_templates(
        %Client{} = client,
        category \\ nil,
        list_by \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/jobTemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
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

    query_params =
      if !is_nil(list_by) do
        [{"listBy", list_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(category) do
        [{"category", category} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of up to twenty of your most recently created jobs.

  This array includes in-process, completed, and errored jobs. This will return
  the jobs themselves, not just a list of the jobs. To retrieve the twenty next
  most recent jobs, use the nextToken string returned with the array.
  """
  @spec list_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        queue \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(queue) do
        [{"queue", queue} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
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
  Retrieve a JSON array of up to twenty of your presets.

  This will return the presets themselves, not just a list of them. To retrieve
  the next twenty presets, use the nextToken string returned with the array.
  """
  @spec list_presets(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_presets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_presets_errors()}
  def list_presets(
        %Client{} = client,
        category \\ nil,
        list_by \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/presets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
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

    query_params =
      if !is_nil(list_by) do
        [{"listBy", list_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(category) do
        [{"category", category} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of up to twenty of your queues.

  This will return the queues themselves, not just a list of them. To retrieve the
  next twenty queues, use the nextToken string returned with the array.
  """
  @spec list_queues(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queues_errors()}
  def list_queues(
        %Client{} = client,
        list_by \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/queues"
    headers = []
    query_params = []

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
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

    query_params =
      if !is_nil(list_by) do
        [{"listBy", list_by} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the tags for a MediaConvert resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/2017-08-29/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of all available Job engine versions and the date they
  expire.
  """
  @spec list_versions(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_versions_errors()}
  def list_versions(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2017-08-29/versions"
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
  Use Probe to obtain detailed information about your input media files.

  Probe returns a JSON that includes container, codec, frame rate, resolution,
  track count, audio layout, captions, and more. You can use this information to
  learn more about your media files, or to help make decisions while automating
  your transcoding workflow.
  """
  @spec probe(map(), probe_request(), list()) ::
          {:ok, probe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, probe_errors()}
  def probe(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/probe"
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
  Create or change your policy.

  For more information about policies, see the user guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  @spec put_policy(map(), put_policy_request(), list()) ::
          {:ok, put_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_policy_errors()}
  def put_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/policy"
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
  Retrieve a JSON array that includes job details for up to twenty of your most
  recent jobs.

  Optionally filter results further according to input file, queue, or status. To
  retrieve the twenty next most recent jobs, use the nextToken string returned
  with the array.
  """
  @spec search_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, search_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_jobs_errors()}
  def search_jobs(
        %Client{} = client,
        input_file \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        queue \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/search"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(queue) do
        [{"queue", queue} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
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

    query_params =
      if !is_nil(input_file) do
        [{"inputFile", input_file} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Add tags to a MediaConvert queue, preset, or job template.

  For information about tagging, see the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/tags"
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
  Remove tags from a MediaConvert queue, preset, or job template.

  For information about tagging, see the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/2017-08-29/tags/#{AWS.Util.encode_uri(arn)}"
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
  Modify one of your existing job templates.
  """
  @spec update_job_template(map(), String.t(), update_job_template_request(), list()) ::
          {:ok, update_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_job_template_errors()}
  def update_job_template(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/jobTemplates/#{AWS.Util.encode_uri(name)}"
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
  Modify one of your existing presets.
  """
  @spec update_preset(map(), String.t(), update_preset_request(), list()) ::
          {:ok, update_preset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_preset_errors()}
  def update_preset(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/presets/#{AWS.Util.encode_uri(name)}"
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
  Modify one of your existing queues.
  """
  @spec update_queue(map(), String.t(), update_queue_request(), list()) ::
          {:ok, update_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_errors()}
  def update_queue(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/queues/#{AWS.Util.encode_uri(name)}"
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
