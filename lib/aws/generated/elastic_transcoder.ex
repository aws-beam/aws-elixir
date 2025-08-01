# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticTranscoder do
  @moduledoc """
  AWS Elastic Transcoder Service

  The AWS Elastic Transcoder Service.
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

      delete_preset_response() :: %{}

  """
  @type delete_preset_response() :: %{}

  @typedoc """

  ## Example:

      list_pipelines_response() :: %{
        "NextPageToken" => String.t() | atom(),
        "Pipelines" => list(pipeline())
      }

  """
  @type list_pipelines_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_playlist() :: %{
        "Format" => String.t() | atom(),
        "HlsContentProtection" => hls_content_protection(),
        "Name" => String.t() | atom(),
        "OutputKeys" => list(String.t() | atom()),
        "PlayReadyDrm" => play_ready_drm()
      }

  """
  @type create_job_playlist() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_response() :: %{
        "Pipeline" => pipeline(),
        "Warnings" => list(warning())
      }

  """
  @type update_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        "Job" => job()
      }

  """
  @type create_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pipelines_request() :: %{
        optional("Ascending") => String.t() | atom(),
        optional("PageToken") => String.t() | atom()
      }

  """
  @type list_pipelines_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_preset_request() :: %{
        optional("Audio") => audio_parameters(),
        optional("Description") => String.t() | atom(),
        optional("Thumbnails") => thumbnails(),
        optional("Video") => video_parameters(),
        required("Container") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_preset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      captions() :: %{
        "CaptionFormats" => list(caption_format()),
        "CaptionSources" => list(caption_source()),
        "MergePolicy" => String.t() | atom()
      }

  """
  @type captions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_presets_request() :: %{
        optional("Ascending") => String.t() | atom(),
        optional("PageToken") => String.t() | atom()
      }

  """
  @type list_presets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pipeline_response() :: %{
        "Pipeline" => pipeline(),
        "Warnings" => list(warning())
      }

  """
  @type create_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_role_request() :: %{
        required("InputBucket") => String.t() | atom(),
        required("OutputBucket") => String.t() | atom(),
        required("Role") => String.t() | atom(),
        required("Topics") => list(String.t() | atom())
      }

  """
  @type test_role_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_captions() :: %{
        "CaptionSources" => list(caption_source()),
        "MergePolicy" => String.t() | atom()
      }

  """
  @type input_captions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_pipeline_response() :: %{
        "Pipeline" => pipeline(),
        "Warnings" => list(warning())
      }

  """
  @type read_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pipeline() :: %{
        "Arn" => String.t() | atom(),
        "AwsKmsKeyArn" => String.t() | atom(),
        "ContentConfig" => pipeline_output_config(),
        "Id" => String.t() | atom(),
        "InputBucket" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Notifications" => notifications(),
        "OutputBucket" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "ThumbnailConfig" => pipeline_output_config()
      }

  """
  @type pipeline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_job_response() :: %{
        "Job" => job()
      }

  """
  @type read_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_pipeline_request() :: %{}

  """
  @type read_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      list_jobs_by_pipeline_response() :: %{
        "Jobs" => list(job()),
        "NextPageToken" => String.t() | atom()
      }

  """
  @type list_jobs_by_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("Input") => job_input(),
        optional("Inputs") => list(job_input()),
        optional("Output") => create_job_output(),
        optional("OutputKeyPrefix") => String.t() | atom(),
        optional("Outputs") => list(create_job_output()),
        optional("Playlists") => list(create_job_playlist()),
        optional("UserMetadata") => map(),
        required("PipelineId") => String.t() | atom()
      }

  """
  @type create_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_preset_response() :: %{
        "Preset" => preset()
      }

  """
  @type read_preset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_output() :: %{
        "AlbumArt" => job_album_art(),
        "AppliedColorSpaceConversion" => String.t() | atom(),
        "Captions" => captions(),
        "Composition" => list(clip()),
        "Duration" => float(),
        "DurationMillis" => float(),
        "Encryption" => encryption(),
        "FileSize" => float(),
        "FrameRate" => String.t() | atom(),
        "Height" => integer(),
        "Id" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "PresetId" => String.t() | atom(),
        "Rotate" => String.t() | atom(),
        "SegmentDuration" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StatusDetail" => String.t() | atom(),
        "ThumbnailEncryption" => encryption(),
        "ThumbnailPattern" => String.t() | atom(),
        "Watermarks" => list(job_watermark()),
        "Width" => integer()
      }

  """
  @type job_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_notifications_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type update_pipeline_notifications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clip() :: %{
        "TimeSpan" => time_span()
      }

  """
  @type clip() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detected_properties() :: %{
        "DurationMillis" => float(),
        "FileSize" => float(),
        "FrameRate" => String.t() | atom(),
        "Height" => integer(),
        "Width" => integer()
      }

  """
  @type detected_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hls_content_protection() :: %{
        "InitializationVector" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "KeyMd5" => String.t() | atom(),
        "KeyStoragePolicy" => String.t() | atom(),
        "LicenseAcquisitionUrl" => String.t() | atom(),
        "Method" => String.t() | atom()
      }

  """
  @type hls_content_protection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pipeline_request() :: %{
        optional("AwsKmsKeyArn") => String.t() | atom(),
        optional("ContentConfig") => pipeline_output_config(),
        optional("Notifications") => notifications(),
        optional("OutputBucket") => String.t() | atom(),
        optional("ThumbnailConfig") => pipeline_output_config(),
        required("InputBucket") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Role") => String.t() | atom()
      }

  """
  @type create_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_request() :: %{
        optional("AwsKmsKeyArn") => String.t() | atom(),
        optional("ContentConfig") => pipeline_output_config(),
        optional("InputBucket") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Notifications") => notifications(),
        optional("Role") => String.t() | atom(),
        optional("ThumbnailConfig") => pipeline_output_config()
      }

  """
  @type update_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_pipeline_request() :: %{}

  """
  @type delete_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      artwork() :: %{
        "AlbumArtFormat" => String.t() | atom(),
        "Encryption" => encryption(),
        "InputKey" => String.t() | atom(),
        "MaxHeight" => String.t() | atom(),
        "MaxWidth" => String.t() | atom(),
        "PaddingPolicy" => String.t() | atom(),
        "SizingPolicy" => String.t() | atom()
      }

  """
  @type artwork() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_by_status_response() :: %{
        "Jobs" => list(job()),
        "NextPageToken" => String.t() | atom()
      }

  """
  @type list_jobs_by_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      video_parameters() :: %{
        "AspectRatio" => String.t() | atom(),
        "BitRate" => String.t() | atom(),
        "Codec" => String.t() | atom(),
        "CodecOptions" => map(),
        "DisplayAspectRatio" => String.t() | atom(),
        "FixedGOP" => String.t() | atom(),
        "FrameRate" => String.t() | atom(),
        "KeyframesMaxDist" => String.t() | atom(),
        "MaxFrameRate" => String.t() | atom(),
        "MaxHeight" => String.t() | atom(),
        "MaxWidth" => String.t() | atom(),
        "PaddingPolicy" => String.t() | atom(),
        "Resolution" => String.t() | atom(),
        "SizingPolicy" => String.t() | atom(),
        "Watermarks" => list(preset_watermark())
      }

  """
  @type video_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_by_status_request() :: %{
        optional("Ascending") => String.t() | atom(),
        optional("PageToken") => String.t() | atom()
      }

  """
  @type list_jobs_by_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption() :: %{
        "InitializationVector" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "KeyMd5" => String.t() | atom(),
        "Mode" => String.t() | atom()
      }

  """
  @type encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pipeline_output_config() :: %{
        "Bucket" => String.t() | atom(),
        "Permissions" => list(permission()),
        "StorageClass" => String.t() | atom()
      }

  """
  @type pipeline_output_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audio_parameters() :: %{
        "AudioPackingMode" => String.t() | atom(),
        "BitRate" => String.t() | atom(),
        "Channels" => String.t() | atom(),
        "Codec" => String.t() | atom(),
        "CodecOptions" => audio_codec_options(),
        "SampleRate" => String.t() | atom()
      }

  """
  @type audio_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_status_request() :: %{
        required("Status") => String.t() | atom()
      }

  """
  @type update_pipeline_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_presets_response() :: %{
        "NextPageToken" => String.t() | atom(),
        "Presets" => list(preset())
      }

  """
  @type list_presets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_input() :: %{
        "AspectRatio" => String.t() | atom(),
        "Container" => String.t() | atom(),
        "DetectedProperties" => detected_properties(),
        "Encryption" => encryption(),
        "FrameRate" => String.t() | atom(),
        "InputCaptions" => input_captions(),
        "Interlaced" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "Resolution" => String.t() | atom(),
        "TimeSpan" => time_span()
      }

  """
  @type job_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_preset_request() :: %{}

  """
  @type delete_preset_request() :: %{}

  @typedoc """

  ## Example:

      preset_watermark() :: %{
        "HorizontalAlign" => String.t() | atom(),
        "HorizontalOffset" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MaxHeight" => String.t() | atom(),
        "MaxWidth" => String.t() | atom(),
        "Opacity" => String.t() | atom(),
        "SizingPolicy" => String.t() | atom(),
        "Target" => String.t() | atom(),
        "VerticalAlign" => String.t() | atom(),
        "VerticalOffset" => String.t() | atom()
      }

  """
  @type preset_watermark() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      incompatible_version_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type incompatible_version_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notifications() :: %{
        "Completed" => String.t() | atom(),
        "Error" => String.t() | atom(),
        "Progressing" => String.t() | atom(),
        "Warning" => String.t() | atom()
      }

  """
  @type notifications() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timing() :: %{
        "FinishTimeMillis" => float(),
        "StartTimeMillis" => float(),
        "SubmitTimeMillis" => float()
      }

  """
  @type timing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_preset_request() :: %{}

  """
  @type read_preset_request() :: %{}

  @typedoc """

  ## Example:

      warning() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type warning() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      caption_format() :: %{
        "Encryption" => encryption(),
        "Format" => String.t() | atom(),
        "Pattern" => String.t() | atom()
      }

  """
  @type caption_format() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audio_codec_options() :: %{
        "BitDepth" => String.t() | atom(),
        "BitOrder" => String.t() | atom(),
        "Profile" => String.t() | atom(),
        "Signed" => String.t() | atom()
      }

  """
  @type audio_codec_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_album_art() :: %{
        "Artwork" => list(artwork()),
        "MergePolicy" => String.t() | atom()
      }

  """
  @type job_album_art() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_watermark() :: %{
        "Encryption" => encryption(),
        "InputKey" => String.t() | atom(),
        "PresetWatermarkId" => String.t() | atom()
      }

  """
  @type job_watermark() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Input" => job_input(),
        "Inputs" => list(job_input()),
        "Output" => job_output(),
        "OutputKeyPrefix" => String.t() | atom(),
        "Outputs" => list(job_output()),
        "PipelineId" => String.t() | atom(),
        "Playlists" => list(playlist()),
        "Status" => String.t() | atom(),
        "Timing" => timing(),
        "UserMetadata" => map()
      }

  """
  @type job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_status_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type update_pipeline_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_job_request() :: %{}

  """
  @type read_job_request() :: %{}

  @typedoc """

  ## Example:

      thumbnails() :: %{
        "AspectRatio" => String.t() | atom(),
        "Format" => String.t() | atom(),
        "Interval" => String.t() | atom(),
        "MaxHeight" => String.t() | atom(),
        "MaxWidth" => String.t() | atom(),
        "PaddingPolicy" => String.t() | atom(),
        "Resolution" => String.t() | atom(),
        "SizingPolicy" => String.t() | atom()
      }

  """
  @type thumbnails() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      caption_source() :: %{
        "Encryption" => encryption(),
        "Key" => String.t() | atom(),
        "Label" => String.t() | atom(),
        "Language" => String.t() | atom(),
        "TimeOffset" => String.t() | atom()
      }

  """
  @type caption_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_by_pipeline_request() :: %{
        optional("Ascending") => String.t() | atom(),
        optional("PageToken") => String.t() | atom()
      }

  """
  @type list_jobs_by_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_preset_response() :: %{
        "Preset" => preset(),
        "Warning" => String.t() | atom()
      }

  """
  @type create_preset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_output() :: %{
        "AlbumArt" => job_album_art(),
        "Captions" => captions(),
        "Composition" => list(clip()),
        "Encryption" => encryption(),
        "Key" => String.t() | atom(),
        "PresetId" => String.t() | atom(),
        "Rotate" => String.t() | atom(),
        "SegmentDuration" => String.t() | atom(),
        "ThumbnailEncryption" => encryption(),
        "ThumbnailPattern" => String.t() | atom(),
        "Watermarks" => list(job_watermark())
      }

  """
  @type create_job_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      play_ready_drm() :: %{
        "Format" => String.t() | atom(),
        "InitializationVector" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "KeyId" => String.t() | atom(),
        "KeyMd5" => String.t() | atom(),
        "LicenseAcquisitionUrl" => String.t() | atom()
      }

  """
  @type play_ready_drm() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      playlist() :: %{
        "Format" => String.t() | atom(),
        "HlsContentProtection" => hls_content_protection(),
        "Name" => String.t() | atom(),
        "OutputKeys" => list(String.t() | atom()),
        "PlayReadyDrm" => play_ready_drm(),
        "Status" => String.t() | atom(),
        "StatusDetail" => String.t() | atom()
      }

  """
  @type playlist() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_response() :: %{}

  """
  @type cancel_job_response() :: %{}

  @typedoc """

  ## Example:

      preset() :: %{
        "Arn" => String.t() | atom(),
        "Audio" => audio_parameters(),
        "Container" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Thumbnails" => thumbnails(),
        "Type" => String.t() | atom(),
        "Video" => video_parameters()
      }

  """
  @type preset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_role_response() :: %{
        "Messages" => list(String.t() | atom()),
        "Success" => String.t() | atom()
      }

  """
  @type test_role_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_span() :: %{
        "Duration" => String.t() | atom(),
        "StartTime" => String.t() | atom()
      }

  """
  @type time_span() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permission() :: %{
        "Access" => list(String.t() | atom()),
        "Grantee" => String.t() | atom(),
        "GranteeType" => String.t() | atom()
      }

  """
  @type permission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pipeline_notifications_request() :: %{
        required("Notifications") => notifications()
      }

  """
  @type update_pipeline_notifications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_pipeline_response() :: %{}

  """
  @type delete_pipeline_response() :: %{}

  @type cancel_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type create_job_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_pipeline_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_preset_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | internal_service_exception()

  @type delete_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_preset_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_jobs_by_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_jobs_by_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_pipelines_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | internal_service_exception()

  @type list_presets_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | internal_service_exception()

  @type read_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type read_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type read_preset_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type test_role_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_pipeline_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_pipeline_notifications_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_pipeline_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | incompatible_version_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2012-09-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "elastictranscoder",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Elastic Transcoder",
      signature_version: "v4",
      signing_name: "elastictranscoder",
      target_prefix: nil
    }
  end

  @doc """
  The CancelJob operation cancels an unfinished job.

  You can only cancel a job that has a status of `Submitted`. To prevent a
  pipeline from starting to process a job while you're getting the job identifier,
  use
  `UpdatePipelineStatus` to temporarily pause the pipeline.
  """
  @spec cancel_job(map(), String.t() | atom(), cancel_job_request(), list()) ::
          {:ok, cancel_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_job_errors()}
  def cancel_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/jobs/#{AWS.Util.encode_uri(id)}"
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
  When you create a job, Elastic Transcoder returns JSON data that includes the
  values that you specified
  plus information about the job that is created.

  If you have specified more than one output for your jobs (for example, one
  output for the
  Kindle Fire and another output for the Apple iPhone 4s), you currently must use
  the Elastic Transcoder API to
  list the jobs (as opposed to the AWS Console).
  """
  @spec create_job(map(), create_job_request(), list()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/jobs"
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
  The CreatePipeline operation creates a pipeline with settings that you specify.
  """
  @spec create_pipeline(map(), create_pipeline_request(), list()) ::
          {:ok, create_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pipeline_errors()}
  def create_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/pipelines"
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
  The CreatePreset operation creates a preset with settings that you specify.

  Elastic Transcoder checks the CreatePreset settings to ensure that they meet
  Elastic Transcoder requirements
  and to determine whether they comply with H.264 standards. If your settings are
  not
  valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response
  (`ValidationException`) and
  does not create the preset. If the settings are valid for Elastic Transcoder but
  aren't strictly
  compliant with the H.264 standard, Elastic Transcoder creates the preset and
  returns a warning message
  in the response. This helps you determine whether your settings comply with the
  H.264
  standard while giving you greater flexibility with respect to the video that
  Elastic Transcoder
  produces.

  Elastic Transcoder uses the H.264 video-compression format. For more
  information, see the International
  Telecommunication Union publication *Recommendation ITU-T H.264: Advanced video
  coding
  for generic audiovisual services*.
  """
  @spec create_preset(map(), create_preset_request(), list()) ::
          {:ok, create_preset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_preset_errors()}
  def create_preset(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/presets"
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
  The DeletePipeline operation removes a pipeline.

  You can only delete a pipeline that has never been used or that is not currently
  in use
  (doesn't contain any active jobs). If the pipeline is currently in use,
  `DeletePipeline` returns an error.
  """
  @spec delete_pipeline(map(), String.t() | atom(), delete_pipeline_request(), list()) ::
          {:ok, delete_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pipeline_errors()}
  def delete_pipeline(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{AWS.Util.encode_uri(id)}"
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
  The DeletePreset operation removes a preset that you've added in an AWS region.

  You can't delete the default presets that are included with Elastic Transcoder.
  """
  @spec delete_preset(map(), String.t() | atom(), delete_preset_request(), list()) ::
          {:ok, delete_preset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_preset_errors()}
  def delete_preset(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/presets/#{AWS.Util.encode_uri(id)}"
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
  The ListJobsByPipeline operation gets a list of the jobs currently in a
  pipeline.

  Elastic Transcoder returns all of the jobs currently in the specified pipeline.
  The response body contains
  one element for each job that satisfies the search criteria.
  """
  @spec list_jobs_by_pipeline(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_jobs_by_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_by_pipeline_errors()}
  def list_jobs_by_pipeline(
        %Client{} = client,
        pipeline_id,
        ascending \\ nil,
        page_token \\ nil,
        options \\ []
      ) do
    url_path = "/2012-09-25/jobsByPipeline/#{AWS.Util.encode_uri(pipeline_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The ListJobsByStatus operation gets a list of jobs that have a specified status.

  The response
  body contains one element for each job that satisfies the search criteria.
  """
  @spec list_jobs_by_status(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_jobs_by_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_by_status_errors()}
  def list_jobs_by_status(
        %Client{} = client,
        status,
        ascending \\ nil,
        page_token \\ nil,
        options \\ []
      ) do
    url_path = "/2012-09-25/jobsByStatus/#{AWS.Util.encode_uri(status)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The ListPipelines operation gets a list of the pipelines associated with the
  current AWS account.
  """
  @spec list_pipelines(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pipelines_errors()}
  def list_pipelines(%Client{} = client, ascending \\ nil, page_token \\ nil, options \\ []) do
    url_path = "/2012-09-25/pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The ListPresets operation gets a list of the default presets included with
  Elastic Transcoder and the presets that
  you've added in an AWS region.
  """
  @spec list_presets(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_presets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_presets_errors()}
  def list_presets(%Client{} = client, ascending \\ nil, page_token \\ nil, options \\ []) do
    url_path = "/2012-09-25/presets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The ReadJob operation returns detailed information about a job.
  """
  @spec read_job(map(), String.t() | atom(), list()) ::
          {:ok, read_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, read_job_errors()}
  def read_job(%Client{} = client, id, options \\ []) do
    url_path = "/2012-09-25/jobs/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The ReadPipeline operation gets detailed information about a pipeline.
  """
  @spec read_pipeline(map(), String.t() | atom(), list()) ::
          {:ok, read_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, read_pipeline_errors()}
  def read_pipeline(%Client{} = client, id, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The ReadPreset operation gets detailed information about a preset.
  """
  @spec read_preset(map(), String.t() | atom(), list()) ::
          {:ok, read_preset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, read_preset_errors()}
  def read_preset(%Client{} = client, id, options \\ []) do
    url_path = "/2012-09-25/presets/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The TestRole operation tests the IAM role used to create the pipeline.

  The `TestRole` action lets you determine whether the IAM role you are using
  has sufficient permissions to let Elastic Transcoder perform tasks associated
  with the transcoding
  process. The action attempts to assume the specified IAM role, checks read
  access to the
  input and output buckets, and tries to send a test notification to Amazon SNS
  topics
  that you specify.
  """
  @spec test_role(map(), test_role_request(), list()) ::
          {:ok, test_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_role_errors()}
  def test_role(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/roleTests"
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
  Use the `UpdatePipeline` operation to update settings for a pipeline.

  When you change pipeline settings, your changes take effect immediately.
  Jobs that you have already submitted and that Elastic Transcoder has not started
  to process are
  affected in addition to jobs that you submit after you change settings.
  """
  @spec update_pipeline(map(), String.t() | atom(), update_pipeline_request(), list()) ::
          {:ok, update_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pipeline_errors()}
  def update_pipeline(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{AWS.Util.encode_uri(id)}"
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
  With the UpdatePipelineNotifications operation, you can update Amazon Simple
  Notification Service (Amazon SNS) notifications for a pipeline.

  When you update notifications for a pipeline, Elastic Transcoder returns the
  values that you specified in the request.
  """
  @spec update_pipeline_notifications(
          map(),
          String.t() | atom(),
          update_pipeline_notifications_request(),
          list()
        ) ::
          {:ok, update_pipeline_notifications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pipeline_notifications_errors()}
  def update_pipeline_notifications(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{AWS.Util.encode_uri(id)}/notifications"
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
  The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the
  pipeline
  stops or restarts the processing of jobs.

  Changing the pipeline status is useful if you want to cancel one or more jobs.
  You can't
  cancel jobs after Elastic Transcoder has started processing them; if you pause
  the pipeline to which
  you submitted the jobs, you have more time to get the job IDs for the jobs that
  you want
  to cancel, and to send a `CancelJob` request.
  """
  @spec update_pipeline_status(
          map(),
          String.t() | atom(),
          update_pipeline_status_request(),
          list()
        ) ::
          {:ok, update_pipeline_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pipeline_status_errors()}
  def update_pipeline_status(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{AWS.Util.encode_uri(id)}/status"
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
end
