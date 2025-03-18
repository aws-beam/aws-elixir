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
        "NextPageToken" => String.t(),
        "Pipelines" => list(pipeline()())
      }

  """
  @type list_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_playlist() :: %{
        "Format" => String.t(),
        "HlsContentProtection" => hls_content_protection(),
        "Name" => String.t(),
        "OutputKeys" => list(String.t()()),
        "PlayReadyDrm" => play_ready_drm()
      }

  """
  @type create_job_playlist() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_response() :: %{
        "Pipeline" => pipeline(),
        "Warnings" => list(warning()())
      }

  """
  @type update_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        "Job" => job()
      }

  """
  @type create_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipelines_request() :: %{
        optional("Ascending") => String.t(),
        optional("PageToken") => String.t()
      }

  """
  @type list_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_preset_request() :: %{
        optional("Audio") => audio_parameters(),
        optional("Description") => String.t(),
        optional("Thumbnails") => thumbnails(),
        optional("Video") => video_parameters(),
        required("Container") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_preset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      captions() :: %{
        "CaptionFormats" => list(caption_format()()),
        "CaptionSources" => list(caption_source()()),
        "MergePolicy" => String.t()
      }

  """
  @type captions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_presets_request() :: %{
        optional("Ascending") => String.t(),
        optional("PageToken") => String.t()
      }

  """
  @type list_presets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_pipeline_response() :: %{
        "Pipeline" => pipeline(),
        "Warnings" => list(warning()())
      }

  """
  @type create_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_role_request() :: %{
        required("InputBucket") => String.t(),
        required("OutputBucket") => String.t(),
        required("Role") => String.t(),
        required("Topics") => list(String.t()())
      }

  """
  @type test_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_captions() :: %{
        "CaptionSources" => list(caption_source()()),
        "MergePolicy" => String.t()
      }

  """
  @type input_captions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_pipeline_response() :: %{
        "Pipeline" => pipeline(),
        "Warnings" => list(warning()())
      }

  """
  @type read_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline() :: %{
        "Arn" => String.t(),
        "AwsKmsKeyArn" => String.t(),
        "ContentConfig" => pipeline_output_config(),
        "Id" => String.t(),
        "InputBucket" => String.t(),
        "Name" => String.t(),
        "Notifications" => notifications(),
        "OutputBucket" => String.t(),
        "Role" => String.t(),
        "Status" => String.t(),
        "ThumbnailConfig" => pipeline_output_config()
      }

  """
  @type pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_job_response() :: %{
        "Job" => job()
      }

  """
  @type read_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_pipeline_request() :: %{}

  """
  @type read_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      list_jobs_by_pipeline_response() :: %{
        "Jobs" => list(job()()),
        "NextPageToken" => String.t()
      }

  """
  @type list_jobs_by_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("Input") => job_input(),
        optional("Inputs") => list(job_input()()),
        optional("Output") => create_job_output(),
        optional("OutputKeyPrefix") => String.t(),
        optional("Outputs") => list(create_job_output()()),
        optional("Playlists") => list(create_job_playlist()()),
        optional("UserMetadata") => map(),
        required("PipelineId") => String.t()
      }

  """
  @type create_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_preset_response() :: %{
        "Preset" => preset()
      }

  """
  @type read_preset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_output() :: %{
        "AlbumArt" => job_album_art(),
        "AppliedColorSpaceConversion" => String.t(),
        "Captions" => captions(),
        "Composition" => list(clip()()),
        "Duration" => float(),
        "DurationMillis" => float(),
        "Encryption" => encryption(),
        "FileSize" => float(),
        "FrameRate" => String.t(),
        "Height" => integer(),
        "Id" => String.t(),
        "Key" => String.t(),
        "PresetId" => String.t(),
        "Rotate" => String.t(),
        "SegmentDuration" => String.t(),
        "Status" => String.t(),
        "StatusDetail" => String.t(),
        "ThumbnailEncryption" => encryption(),
        "ThumbnailPattern" => String.t(),
        "Watermarks" => list(job_watermark()()),
        "Width" => integer()
      }

  """
  @type job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_notifications_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type update_pipeline_notifications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      clip() :: %{
        "TimeSpan" => time_span()
      }

  """
  @type clip() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      detected_properties() :: %{
        "DurationMillis" => float(),
        "FileSize" => float(),
        "FrameRate" => String.t(),
        "Height" => integer(),
        "Width" => integer()
      }

  """
  @type detected_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_content_protection() :: %{
        "InitializationVector" => String.t(),
        "Key" => String.t(),
        "KeyMd5" => String.t(),
        "KeyStoragePolicy" => String.t(),
        "LicenseAcquisitionUrl" => String.t(),
        "Method" => String.t()
      }

  """
  @type hls_content_protection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_pipeline_request() :: %{
        optional("AwsKmsKeyArn") => String.t(),
        optional("ContentConfig") => pipeline_output_config(),
        optional("Notifications") => notifications(),
        optional("OutputBucket") => String.t(),
        optional("ThumbnailConfig") => pipeline_output_config(),
        required("InputBucket") => String.t(),
        required("Name") => String.t(),
        required("Role") => String.t()
      }

  """
  @type create_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_request() :: %{
        optional("AwsKmsKeyArn") => String.t(),
        optional("ContentConfig") => pipeline_output_config(),
        optional("InputBucket") => String.t(),
        optional("Name") => String.t(),
        optional("Notifications") => notifications(),
        optional("Role") => String.t(),
        optional("ThumbnailConfig") => pipeline_output_config()
      }

  """
  @type update_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_pipeline_request() :: %{}

  """
  @type delete_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      artwork() :: %{
        "AlbumArtFormat" => String.t(),
        "Encryption" => encryption(),
        "InputKey" => String.t(),
        "MaxHeight" => String.t(),
        "MaxWidth" => String.t(),
        "PaddingPolicy" => String.t(),
        "SizingPolicy" => String.t()
      }

  """
  @type artwork() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_by_status_response() :: %{
        "Jobs" => list(job()()),
        "NextPageToken" => String.t()
      }

  """
  @type list_jobs_by_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_parameters() :: %{
        "AspectRatio" => String.t(),
        "BitRate" => String.t(),
        "Codec" => String.t(),
        "CodecOptions" => map(),
        "DisplayAspectRatio" => String.t(),
        "FixedGOP" => String.t(),
        "FrameRate" => String.t(),
        "KeyframesMaxDist" => String.t(),
        "MaxFrameRate" => String.t(),
        "MaxHeight" => String.t(),
        "MaxWidth" => String.t(),
        "PaddingPolicy" => String.t(),
        "Resolution" => String.t(),
        "SizingPolicy" => String.t(),
        "Watermarks" => list(preset_watermark()())
      }

  """
  @type video_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_by_status_request() :: %{
        optional("Ascending") => String.t(),
        optional("PageToken") => String.t()
      }

  """
  @type list_jobs_by_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption() :: %{
        "InitializationVector" => String.t(),
        "Key" => String.t(),
        "KeyMd5" => String.t(),
        "Mode" => String.t()
      }

  """
  @type encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_output_config() :: %{
        "Bucket" => String.t(),
        "Permissions" => list(permission()()),
        "StorageClass" => String.t()
      }

  """
  @type pipeline_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_parameters() :: %{
        "AudioPackingMode" => String.t(),
        "BitRate" => String.t(),
        "Channels" => String.t(),
        "Codec" => String.t(),
        "CodecOptions" => audio_codec_options(),
        "SampleRate" => String.t()
      }

  """
  @type audio_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_status_request() :: %{
        required("Status") => String.t()
      }

  """
  @type update_pipeline_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_presets_response() :: %{
        "NextPageToken" => String.t(),
        "Presets" => list(preset()())
      }

  """
  @type list_presets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_input() :: %{
        "AspectRatio" => String.t(),
        "Container" => String.t(),
        "DetectedProperties" => detected_properties(),
        "Encryption" => encryption(),
        "FrameRate" => String.t(),
        "InputCaptions" => input_captions(),
        "Interlaced" => String.t(),
        "Key" => String.t(),
        "Resolution" => String.t(),
        "TimeSpan" => time_span()
      }

  """
  @type job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_preset_request() :: %{}

  """
  @type delete_preset_request() :: %{}

  @typedoc """

  ## Example:

      preset_watermark() :: %{
        "HorizontalAlign" => String.t(),
        "HorizontalOffset" => String.t(),
        "Id" => String.t(),
        "MaxHeight" => String.t(),
        "MaxWidth" => String.t(),
        "Opacity" => String.t(),
        "SizingPolicy" => String.t(),
        "Target" => String.t(),
        "VerticalAlign" => String.t(),
        "VerticalOffset" => String.t()
      }

  """
  @type preset_watermark() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      incompatible_version_exception() :: %{
        "message" => String.t()
      }

  """
  @type incompatible_version_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notifications() :: %{
        "Completed" => String.t(),
        "Error" => String.t(),
        "Progressing" => String.t(),
        "Warning" => String.t()
      }

  """
  @type notifications() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timing() :: %{
        "FinishTimeMillis" => float(),
        "StartTimeMillis" => float(),
        "SubmitTimeMillis" => float()
      }

  """
  @type timing() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_preset_request() :: %{}

  """
  @type read_preset_request() :: %{}

  @typedoc """

  ## Example:

      warning() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_format() :: %{
        "Encryption" => encryption(),
        "Format" => String.t(),
        "Pattern" => String.t()
      }

  """
  @type caption_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_codec_options() :: %{
        "BitDepth" => String.t(),
        "BitOrder" => String.t(),
        "Profile" => String.t(),
        "Signed" => String.t()
      }

  """
  @type audio_codec_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_album_art() :: %{
        "Artwork" => list(artwork()()),
        "MergePolicy" => String.t()
      }

  """
  @type job_album_art() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_watermark() :: %{
        "Encryption" => encryption(),
        "InputKey" => String.t(),
        "PresetWatermarkId" => String.t()
      }

  """
  @type job_watermark() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Input" => job_input(),
        "Inputs" => list(job_input()()),
        "Output" => job_output(),
        "OutputKeyPrefix" => String.t(),
        "Outputs" => list(job_output()()),
        "PipelineId" => String.t(),
        "Playlists" => list(playlist()()),
        "Status" => String.t(),
        "Timing" => timing(),
        "UserMetadata" => map()
      }

  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_status_response() :: %{
        "Pipeline" => pipeline()
      }

  """
  @type update_pipeline_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_job_request() :: %{}

  """
  @type read_job_request() :: %{}

  @typedoc """

  ## Example:

      thumbnails() :: %{
        "AspectRatio" => String.t(),
        "Format" => String.t(),
        "Interval" => String.t(),
        "MaxHeight" => String.t(),
        "MaxWidth" => String.t(),
        "PaddingPolicy" => String.t(),
        "Resolution" => String.t(),
        "SizingPolicy" => String.t()
      }

  """
  @type thumbnails() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      caption_source() :: %{
        "Encryption" => encryption(),
        "Key" => String.t(),
        "Label" => String.t(),
        "Language" => String.t(),
        "TimeOffset" => String.t()
      }

  """
  @type caption_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_by_pipeline_request() :: %{
        optional("Ascending") => String.t(),
        optional("PageToken") => String.t()
      }

  """
  @type list_jobs_by_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_preset_response() :: %{
        "Preset" => preset(),
        "Warning" => String.t()
      }

  """
  @type create_preset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_output() :: %{
        "AlbumArt" => job_album_art(),
        "Captions" => captions(),
        "Composition" => list(clip()()),
        "Encryption" => encryption(),
        "Key" => String.t(),
        "PresetId" => String.t(),
        "Rotate" => String.t(),
        "SegmentDuration" => String.t(),
        "ThumbnailEncryption" => encryption(),
        "ThumbnailPattern" => String.t(),
        "Watermarks" => list(job_watermark()())
      }

  """
  @type create_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      play_ready_drm() :: %{
        "Format" => String.t(),
        "InitializationVector" => String.t(),
        "Key" => String.t(),
        "KeyId" => String.t(),
        "KeyMd5" => String.t(),
        "LicenseAcquisitionUrl" => String.t()
      }

  """
  @type play_ready_drm() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      playlist() :: %{
        "Format" => String.t(),
        "HlsContentProtection" => hls_content_protection(),
        "Name" => String.t(),
        "OutputKeys" => list(String.t()()),
        "PlayReadyDrm" => play_ready_drm(),
        "Status" => String.t(),
        "StatusDetail" => String.t()
      }

  """
  @type playlist() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_job_response() :: %{}

  """
  @type cancel_job_response() :: %{}

  @typedoc """

  ## Example:

      preset() :: %{
        "Arn" => String.t(),
        "Audio" => audio_parameters(),
        "Container" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Thumbnails" => thumbnails(),
        "Type" => String.t(),
        "Video" => video_parameters()
      }

  """
  @type preset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_role_response() :: %{
        "Messages" => list(String.t()()),
        "Success" => String.t()
      }

  """
  @type test_role_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_span() :: %{
        "Duration" => String.t(),
        "StartTime" => String.t()
      }

  """
  @type time_span() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission() :: %{
        "Access" => list(String.t()()),
        "Grantee" => String.t(),
        "GranteeType" => String.t()
      }

  """
  @type permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_notifications_request() :: %{
        required("Notifications") => notifications()
      }

  """
  @type update_pipeline_notifications_request() :: %{String.t() => any()}

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
  @spec cancel_job(map(), String.t(), cancel_job_request(), list()) ::
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
  @spec delete_pipeline(map(), String.t(), delete_pipeline_request(), list()) ::
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
  @spec delete_preset(map(), String.t(), delete_preset_request(), list()) ::
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
  @spec list_jobs_by_pipeline(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
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
  @spec list_jobs_by_status(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
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
  @spec list_pipelines(map(), String.t() | nil, String.t() | nil, list()) ::
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
  @spec list_presets(map(), String.t() | nil, String.t() | nil, list()) ::
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
  @spec read_job(map(), String.t(), list()) ::
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
  @spec read_pipeline(map(), String.t(), list()) ::
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
  @spec read_preset(map(), String.t(), list()) ::
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
  @spec update_pipeline(map(), String.t(), update_pipeline_request(), list()) ::
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
          String.t(),
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
  @spec update_pipeline_status(map(), String.t(), update_pipeline_status_request(), list()) ::
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
