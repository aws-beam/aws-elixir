# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TranscribeStreaming do
  @moduledoc """
  Amazon Transcribe streaming offers four main types of real-time transcription:
  **Standard**, **Medical**,
  **Call Analytics**,
  and **Health Scribe**.

    *

  **Standard transcriptions** are the most common option. Refer
  to for details.

    *

  **Medical transcriptions** are tailored to medical professionals
  and incorporate medical terms. A common use case for this service is
  transcribing doctor-patient
  dialogue in real time, so doctors can focus on their patient instead of taking
  notes. Refer to
  for details.

    *

  **Call Analytics transcriptions** are designed for use with call
  center audio on two different channels; if you're looking for insight into
  customer service calls, use this
  option. Refer to for details.

    *

  **HealthScribe transcriptions** are designed to
  automatically create clinical notes from patient-clinician conversations using
  generative AI.
  Refer to [here] for details.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      issue_detected() :: %{
        "CharacterOffsets" => character_offsets()
      }

  """
  @type issue_detected() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_medical_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("EnableChannelIdentification") => boolean(),
        optional("NumberOfChannels") => integer(),
        optional("SessionId") => String.t() | atom(),
        optional("ShowSpeakerLabel") => boolean(),
        optional("VocabularyName") => String.t() | atom(),
        required("AudioStream") => list(),
        required("LanguageCode") => list(any()),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer(),
        required("Specialty") => list(any()),
        required("Type") => list(any())
      }

  """
  @type start_medical_stream_transcription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_encryption_settings() :: %{
        "KmsEncryptionContext" => map(),
        "KmsKeyId" => String.t() | atom()
      }

  """
  @type medical_scribe_encryption_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_medical_scribe_stream_response() :: %{
        "LanguageCode" => list(any()),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "RequestId" => String.t() | atom(),
        "ResultStream" => list(),
        "SessionId" => String.t() | atom()
      }

  """
  @type start_medical_scribe_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      points_of_interest() :: %{
        "TimestampRanges" => list(timestamp_range())
      }

  """
  @type points_of_interest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_stream_details() :: %{
        "ChannelDefinitions" => list(medical_scribe_channel_definition()),
        "EncryptionSettings" => medical_scribe_encryption_settings(),
        "LanguageCode" => list(any()),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "MedicalScribeContextProvided" => boolean(),
        "PostStreamAnalyticsResult" => medical_scribe_post_stream_analytics_result(),
        "PostStreamAnalyticsSettings" => medical_scribe_post_stream_analytics_settings(),
        "ResourceAccessRoleArn" => String.t() | atom(),
        "SessionId" => String.t() | atom(),
        "StreamCreatedAt" => non_neg_integer(),
        "StreamEndedAt" => non_neg_integer(),
        "StreamStatus" => list(any()),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t() | atom(),
        "VocabularyName" => String.t() | atom()
      }

  """
  @type medical_scribe_stream_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_audio_event() :: %{
        "AudioChunk" => binary()
      }

  """
  @type medical_scribe_audio_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_post_stream_analytics_settings() :: %{
        "ClinicalNoteGenerationSettings" => clinical_note_generation_settings()
      }

  """
  @type medical_scribe_post_stream_analytics_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      entity() :: %{
        "Category" => String.t() | atom(),
        "Confidence" => float(),
        "Content" => String.t() | atom(),
        "EndTime" => float(),
        "StartTime" => float(),
        "Type" => String.t() | atom()
      }

  """
  @type entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      character_offsets() :: %{
        "Begin" => integer(),
        "End" => integer()
      }

  """
  @type character_offsets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audio_event() :: %{
        "AudioChunk" => binary()
      }

  """
  @type audio_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clinical_note_generation_settings() :: %{
        "NoteTemplate" => list(any()),
        "OutputBucketName" => String.t() | atom()
      }

  """
  @type clinical_note_generation_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_alternative() :: %{
        "Entities" => list(medical_entity()),
        "Items" => list(medical_item()),
        "Transcript" => String.t() | atom()
      }

  """
  @type medical_alternative() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      call_analytics_language_with_score() :: %{
        "LanguageCode" => list(any()),
        "Score" => float()
      }

  """
  @type call_analytics_language_with_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      category_event() :: %{
        "MatchedCategories" => list(String.t() | atom()),
        "MatchedDetails" => map()
      }

  """
  @type category_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_post_stream_analytics_result() :: %{
        "ClinicalNoteGenerationResult" => clinical_note_generation_result()
      }

  """
  @type medical_scribe_post_stream_analytics_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_configuration_event() :: %{
        "ChannelDefinitions" => list(medical_scribe_channel_definition()),
        "EncryptionSettings" => medical_scribe_encryption_settings(),
        "MedicalScribeContext" => medical_scribe_context(),
        "PostStreamAnalyticsSettings" => medical_scribe_post_stream_analytics_settings(),
        "ResourceAccessRoleArn" => String.t() | atom(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t() | atom(),
        "VocabularyName" => String.t() | atom()
      }

  """
  @type medical_scribe_configuration_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      language_with_score() :: %{
        "LanguageCode" => list(any()),
        "Score" => float()
      }

  """
  @type language_with_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transcript() :: %{
        "Results" => list(result())
      }

  """
  @type transcript() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_transcript_event() :: %{
        "TranscriptSegment" => medical_scribe_transcript_segment()
      }

  """
  @type medical_scribe_transcript_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_entity() :: %{
        "Category" => String.t() | atom(),
        "Confidence" => float(),
        "Content" => String.t() | atom(),
        "EndTime" => float(),
        "StartTime" => float()
      }

  """
  @type medical_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_transcript() :: %{
        "Results" => list(medical_result())
      }

  """
  @type medical_transcript() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_medical_scribe_stream_response() :: %{
        "MedicalScribeStreamDetails" => medical_scribe_stream_details()
      }

  """
  @type get_medical_scribe_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_call_analytics_stream_transcription_response() :: %{
        "CallAnalyticsTranscriptResultStream" => list(),
        "ContentIdentificationType" => list(any()),
        "ContentRedactionType" => list(any()),
        "EnablePartialResultsStabilization" => boolean(),
        "IdentifyLanguage" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageModelName" => String.t() | atom(),
        "LanguageOptions" => String.t() | atom(),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t() | atom(),
        "PreferredLanguage" => list(any()),
        "RequestId" => String.t() | atom(),
        "SessionId" => String.t() | atom(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t() | atom(),
        "VocabularyFilterNames" => String.t() | atom(),
        "VocabularyName" => String.t() | atom(),
        "VocabularyNames" => String.t() | atom()
      }

  """
  @type start_call_analytics_stream_transcription_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      item() :: %{
        "Confidence" => float(),
        "Content" => String.t() | atom(),
        "EndTime" => float(),
        "Speaker" => String.t() | atom(),
        "Stable" => boolean(),
        "StartTime" => float(),
        "Type" => list(any()),
        "VocabularyFilterMatch" => boolean()
      }

  """
  @type item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_medical_stream_transcription_response() :: %{
        "ContentIdentificationType" => list(any()),
        "EnableChannelIdentification" => boolean(),
        "LanguageCode" => list(any()),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "NumberOfChannels" => integer(),
        "RequestId" => String.t() | atom(),
        "SessionId" => String.t() | atom(),
        "ShowSpeakerLabel" => boolean(),
        "Specialty" => list(any()),
        "TranscriptResultStream" => list(),
        "Type" => list(any()),
        "VocabularyName" => String.t() | atom()
      }

  """
  @type start_medical_stream_transcription_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      call_analytics_item() :: %{
        "BeginOffsetMillis" => float(),
        "Confidence" => float(),
        "Content" => String.t() | atom(),
        "EndOffsetMillis" => float(),
        "Stable" => boolean(),
        "Type" => list(any()),
        "VocabularyFilterMatch" => boolean()
      }

  """
  @type call_analytics_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      channel_definition() :: %{
        "ChannelId" => integer(),
        "ParticipantRole" => list(any())
      }

  """
  @type channel_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      result() :: %{
        "Alternatives" => list(alternative()),
        "ChannelId" => String.t() | atom(),
        "EndTime" => float(),
        "IsPartial" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageIdentification" => list(language_with_score()),
        "ResultId" => String.t() | atom(),
        "StartTime" => float()
      }

  """
  @type result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      post_call_analytics_settings() :: %{
        "ContentRedactionOutput" => list(any()),
        "DataAccessRoleArn" => String.t() | atom(),
        "OutputEncryptionKMSKeyId" => String.t() | atom(),
        "OutputLocation" => String.t() | atom()
      }

  """
  @type post_call_analytics_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      call_analytics_entity() :: %{
        "BeginOffsetMillis" => float(),
        "Category" => String.t() | atom(),
        "Confidence" => float(),
        "Content" => String.t() | atom(),
        "EndOffsetMillis" => float(),
        "Type" => String.t() | atom()
      }

  """
  @type call_analytics_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_stream_transcription_response() :: %{
        "ContentIdentificationType" => list(any()),
        "ContentRedactionType" => list(any()),
        "EnableChannelIdentification" => boolean(),
        "EnablePartialResultsStabilization" => boolean(),
        "IdentifyLanguage" => boolean(),
        "IdentifyMultipleLanguages" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageModelName" => String.t() | atom(),
        "LanguageOptions" => String.t() | atom(),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "NumberOfChannels" => integer(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t() | atom(),
        "PreferredLanguage" => list(any()),
        "RequestId" => String.t() | atom(),
        "SessionId" => String.t() | atom(),
        "SessionResumeWindow" => integer(),
        "ShowSpeakerLabel" => boolean(),
        "TranscriptResultStream" => list(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t() | atom(),
        "VocabularyFilterNames" => String.t() | atom(),
        "VocabularyName" => String.t() | atom(),
        "VocabularyNames" => String.t() | atom()
      }

  """
  @type start_stream_transcription_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_patient_context() :: %{
        "Pronouns" => list(any())
      }

  """
  @type medical_scribe_patient_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_transcript_event() :: %{
        "Transcript" => medical_transcript()
      }

  """
  @type medical_transcript_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("ContentRedactionType") => list(any()),
        optional("EnableChannelIdentification") => boolean(),
        optional("EnablePartialResultsStabilization") => boolean(),
        optional("IdentifyLanguage") => boolean(),
        optional("IdentifyMultipleLanguages") => boolean(),
        optional("LanguageCode") => list(any()),
        optional("LanguageModelName") => String.t() | atom(),
        optional("LanguageOptions") => String.t() | atom(),
        optional("NumberOfChannels") => integer(),
        optional("PartialResultsStability") => list(any()),
        optional("PiiEntityTypes") => String.t() | atom(),
        optional("PreferredLanguage") => list(any()),
        optional("SessionId") => String.t() | atom(),
        optional("SessionResumeWindow") => integer(),
        optional("ShowSpeakerLabel") => boolean(),
        optional("VocabularyFilterMethod") => list(any()),
        optional("VocabularyFilterName") => String.t() | atom(),
        optional("VocabularyFilterNames") => String.t() | atom(),
        optional("VocabularyName") => String.t() | atom(),
        optional("VocabularyNames") => String.t() | atom(),
        required("AudioStream") => list(),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer()
      }

  """
  @type start_stream_transcription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_result() :: %{
        "Alternatives" => list(medical_alternative()),
        "ChannelId" => String.t() | atom(),
        "EndTime" => float(),
        "IsPartial" => boolean(),
        "ResultId" => String.t() | atom(),
        "StartTime" => float()
      }

  """
  @type medical_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_call_analytics_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("ContentRedactionType") => list(any()),
        optional("EnablePartialResultsStabilization") => boolean(),
        optional("IdentifyLanguage") => boolean(),
        optional("LanguageCode") => list(any()),
        optional("LanguageModelName") => String.t() | atom(),
        optional("LanguageOptions") => String.t() | atom(),
        optional("PartialResultsStability") => list(any()),
        optional("PiiEntityTypes") => String.t() | atom(),
        optional("PreferredLanguage") => list(any()),
        optional("SessionId") => String.t() | atom(),
        optional("VocabularyFilterMethod") => list(any()),
        optional("VocabularyFilterName") => String.t() | atom(),
        optional("VocabularyFilterNames") => String.t() | atom(),
        optional("VocabularyName") => String.t() | atom(),
        optional("VocabularyNames") => String.t() | atom(),
        required("AudioStream") => list(),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer()
      }

  """
  @type start_call_analytics_stream_transcription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timestamp_range() :: %{
        "BeginOffsetMillis" => float(),
        "EndOffsetMillis" => float()
      }

  """
  @type timestamp_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_event() :: %{
        "ChannelDefinitions" => list(channel_definition()),
        "PostCallAnalyticsSettings" => post_call_analytics_settings()
      }

  """
  @type configuration_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_medical_scribe_stream_request() :: %{
        optional("SessionId") => String.t() | atom(),
        required("InputStream") => list(),
        required("LanguageCode") => list(any()),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer()
      }

  """
  @type start_medical_scribe_stream_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_medical_scribe_stream_request() :: %{}

  """
  @type get_medical_scribe_stream_request() :: %{}

  @typedoc """

  ## Example:

      utterance_event() :: %{
        "BeginOffsetMillis" => float(),
        "EndOffsetMillis" => float(),
        "Entities" => list(call_analytics_entity()),
        "IsPartial" => boolean(),
        "IssuesDetected" => list(issue_detected()),
        "Items" => list(call_analytics_item()),
        "LanguageCode" => list(any()),
        "LanguageIdentification" => list(call_analytics_language_with_score()),
        "ParticipantRole" => list(any()),
        "Sentiment" => list(any()),
        "Transcript" => String.t() | atom(),
        "UtteranceId" => String.t() | atom()
      }

  """
  @type utterance_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_transcript_item() :: %{
        "BeginAudioTime" => float(),
        "Confidence" => float(),
        "Content" => String.t() | atom(),
        "EndAudioTime" => float(),
        "Type" => list(any()),
        "VocabularyFilterMatch" => boolean()
      }

  """
  @type medical_scribe_transcript_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_session_control_event() :: %{
        "Type" => list(any())
      }

  """
  @type medical_scribe_session_control_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_transcript_segment() :: %{
        "BeginAudioTime" => float(),
        "ChannelId" => String.t() | atom(),
        "Content" => String.t() | atom(),
        "EndAudioTime" => float(),
        "IsPartial" => boolean(),
        "Items" => list(medical_scribe_transcript_item()),
        "SegmentId" => String.t() | atom()
      }

  """
  @type medical_scribe_transcript_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_context() :: %{
        "PatientContext" => medical_scribe_patient_context()
      }

  """
  @type medical_scribe_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_item() :: %{
        "Confidence" => float(),
        "Content" => String.t() | atom(),
        "EndTime" => float(),
        "Speaker" => String.t() | atom(),
        "StartTime" => float(),
        "Type" => list(any())
      }

  """
  @type medical_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_channel_definition() :: %{
        "ChannelId" => integer(),
        "ParticipantRole" => list(any())
      }

  """
  @type medical_scribe_channel_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transcript_event() :: %{
        "Transcript" => transcript()
      }

  """
  @type transcript_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clinical_note_generation_result() :: %{
        "ClinicalNoteOutputLocation" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "Status" => list(any()),
        "TranscriptOutputLocation" => String.t() | atom()
      }

  """
  @type clinical_note_generation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alternative() :: %{
        "Entities" => list(entity()),
        "Items" => list(item()),
        "Transcript" => String.t() | atom()
      }

  """
  @type alternative() :: %{(String.t() | atom()) => any()}

  @type get_medical_scribe_stream_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type start_call_analytics_stream_transcription_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_medical_scribe_stream_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_medical_stream_transcription_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_stream_transcription_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "transcribestreaming",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Transcribe Streaming",
      signature_version: "v4",
      signing_name: "transcribe",
      target_prefix: nil
    }
  end

  @doc """
  Provides details about the specified Amazon Web Services HealthScribe streaming
  session.

  To view the status of the streaming session, check the `StreamStatus` field in
  the response. To get the
  details of post-stream analytics, including its status, check the
  `PostStreamAnalyticsResult` field in the response.
  """
  @spec get_medical_scribe_stream(map(), String.t() | atom(), list()) ::
          {:ok, get_medical_scribe_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_medical_scribe_stream_errors()}
  def get_medical_scribe_stream(%Client{} = client, session_id, options \\ []) do
    url_path = "/medical-scribe-stream/#{AWS.Util.encode_uri(session_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
  Amazon Transcribe and the transcription results are streamed to your
  application.

  Use this operation
  for [Call Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html)
  transcriptions.

  The following parameters are required:

    *

  `language-code` or `identify-language`

    *

  `media-encoding`

    *

  `sample-rate`

  For more information on streaming with Amazon Transcribe, see [Transcribing streaming
  audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
  """
  @spec start_call_analytics_stream_transcription(
          map(),
          start_call_analytics_stream_transcription_request(),
          list()
        ) ::
          {:ok, start_call_analytics_stream_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_call_analytics_stream_transcription_errors()}
  def start_call_analytics_stream_transcription(%Client{} = client, input, options \\ []) do
    url_path = "/call-analytics-stream-transcription"

    {headers, input} =
      [
        {"ContentIdentificationType", "x-amzn-transcribe-content-identification-type"},
        {"ContentRedactionType", "x-amzn-transcribe-content-redaction-type"},
        {"EnablePartialResultsStabilization",
         "x-amzn-transcribe-enable-partial-results-stabilization"},
        {"IdentifyLanguage", "x-amzn-transcribe-identify-language"},
        {"LanguageCode", "x-amzn-transcribe-language-code"},
        {"LanguageModelName", "x-amzn-transcribe-language-model-name"},
        {"LanguageOptions", "x-amzn-transcribe-language-options"},
        {"MediaEncoding", "x-amzn-transcribe-media-encoding"},
        {"MediaSampleRateHertz", "x-amzn-transcribe-sample-rate"},
        {"PartialResultsStability", "x-amzn-transcribe-partial-results-stability"},
        {"PiiEntityTypes", "x-amzn-transcribe-pii-entity-types"},
        {"PreferredLanguage", "x-amzn-transcribe-preferred-language"},
        {"SessionId", "x-amzn-transcribe-session-id"},
        {"VocabularyFilterMethod", "x-amzn-transcribe-vocabulary-filter-method"},
        {"VocabularyFilterName", "x-amzn-transcribe-vocabulary-filter-name"},
        {"VocabularyFilterNames", "x-amzn-transcribe-vocabulary-filter-names"},
        {"VocabularyName", "x-amzn-transcribe-vocabulary-name"},
        {"VocabularyNames", "x-amzn-transcribe-vocabulary-names"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-transcribe-content-identification-type", "ContentIdentificationType"},
          {"x-amzn-transcribe-content-redaction-type", "ContentRedactionType"},
          {"x-amzn-transcribe-enable-partial-results-stabilization",
           "EnablePartialResultsStabilization"},
          {"x-amzn-transcribe-identify-language", "IdentifyLanguage"},
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-language-model-name", "LanguageModelName"},
          {"x-amzn-transcribe-language-options", "LanguageOptions"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-transcribe-partial-results-stability", "PartialResultsStability"},
          {"x-amzn-transcribe-pii-entity-types", "PiiEntityTypes"},
          {"x-amzn-transcribe-preferred-language", "PreferredLanguage"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"},
          {"x-amzn-transcribe-vocabulary-filter-method", "VocabularyFilterMethod"},
          {"x-amzn-transcribe-vocabulary-filter-name", "VocabularyFilterName"},
          {"x-amzn-transcribe-vocabulary-filter-names", "VocabularyFilterNames"},
          {"x-amzn-transcribe-vocabulary-name", "VocabularyName"},
          {"x-amzn-transcribe-vocabulary-names", "VocabularyNames"}
        ]
      )

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
  Starts a bidirectional HTTP/2 stream, where audio is streamed to
  Amazon Web Services HealthScribe
  and the transcription results are streamed to your application.

  When you start a stream, you first specify the stream configuration in a
  `MedicalScribeConfigurationEvent`.
  This event includes channel definitions, encryption settings, medical scribe
  context, and post-stream analytics settings, such as the output configuration
  for aggregated transcript and clinical note generation. These are additional
  streaming session configurations beyond those provided in your initial start
  request headers. Whether you are starting a new session or resuming an existing
  session,
  your first event must be a `MedicalScribeConfigurationEvent`.

  After you send a `MedicalScribeConfigurationEvent`, you start `AudioEvents` and
  Amazon Web Services HealthScribe
  responds with real-time transcription results. When you are finished, to start
  processing the results with the post-stream analytics, send a
  `MedicalScribeSessionControlEvent` with a `Type` of
  `END_OF_SESSION` and Amazon Web Services HealthScribe starts the analytics.

  You can pause or resume streaming.
  To pause streaming, complete the input stream without sending the
  `MedicalScribeSessionControlEvent`.
  To resume streaming, call the `StartMedicalScribeStream` and specify the same
  SessionId you used to start the stream.

  The following parameters are required:

    *

  `language-code`

    *

  `media-encoding`

    *

  `media-sample-rate-hertz`

  For more information on streaming with
  Amazon Web Services HealthScribe,
  see [Amazon Web Services HealthScribe](https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe-streaming.html).
  """
  @spec start_medical_scribe_stream(map(), start_medical_scribe_stream_request(), list()) ::
          {:ok, start_medical_scribe_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_medical_scribe_stream_errors()}
  def start_medical_scribe_stream(%Client{} = client, input, options \\ []) do
    url_path = "/medical-scribe-stream"

    {headers, input} =
      [
        {"LanguageCode", "x-amzn-transcribe-language-code"},
        {"MediaEncoding", "x-amzn-transcribe-media-encoding"},
        {"MediaSampleRateHertz", "x-amzn-transcribe-sample-rate"},
        {"SessionId", "x-amzn-transcribe-session-id"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"}
        ]
      )

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
  Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
  Amazon Transcribe Medical and the transcription results are streamed to your
  application.

  The following parameters are required:

    *

  `language-code`

    *

  `media-encoding`

    *

  `sample-rate`

  For more information on streaming with Amazon Transcribe Medical, see
  [Transcribing streaming
  audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
  """
  @spec start_medical_stream_transcription(
          map(),
          start_medical_stream_transcription_request(),
          list()
        ) ::
          {:ok, start_medical_stream_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_medical_stream_transcription_errors()}
  def start_medical_stream_transcription(%Client{} = client, input, options \\ []) do
    url_path = "/medical-stream-transcription"

    {headers, input} =
      [
        {"ContentIdentificationType", "x-amzn-transcribe-content-identification-type"},
        {"EnableChannelIdentification", "x-amzn-transcribe-enable-channel-identification"},
        {"LanguageCode", "x-amzn-transcribe-language-code"},
        {"MediaEncoding", "x-amzn-transcribe-media-encoding"},
        {"MediaSampleRateHertz", "x-amzn-transcribe-sample-rate"},
        {"NumberOfChannels", "x-amzn-transcribe-number-of-channels"},
        {"SessionId", "x-amzn-transcribe-session-id"},
        {"ShowSpeakerLabel", "x-amzn-transcribe-show-speaker-label"},
        {"Specialty", "x-amzn-transcribe-specialty"},
        {"Type", "x-amzn-transcribe-type"},
        {"VocabularyName", "x-amzn-transcribe-vocabulary-name"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-transcribe-content-identification-type", "ContentIdentificationType"},
          {"x-amzn-transcribe-enable-channel-identification", "EnableChannelIdentification"},
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-transcribe-number-of-channels", "NumberOfChannels"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"},
          {"x-amzn-transcribe-show-speaker-label", "ShowSpeakerLabel"},
          {"x-amzn-transcribe-specialty", "Specialty"},
          {"x-amzn-transcribe-type", "Type"},
          {"x-amzn-transcribe-vocabulary-name", "VocabularyName"}
        ]
      )

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
  Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
  Amazon Transcribe and the transcription results are streamed to your
  application.

  The following parameters are required:

    *

  `language-code` or `identify-language` or `identify-multiple-language`

    *

  `media-encoding`

    *

  `sample-rate`

  For more information on streaming with Amazon Transcribe, see [Transcribing streaming
  audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
  """
  @spec start_stream_transcription(map(), start_stream_transcription_request(), list()) ::
          {:ok, start_stream_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_stream_transcription_errors()}
  def start_stream_transcription(%Client{} = client, input, options \\ []) do
    url_path = "/stream-transcription"

    {headers, input} =
      [
        {"ContentIdentificationType", "x-amzn-transcribe-content-identification-type"},
        {"ContentRedactionType", "x-amzn-transcribe-content-redaction-type"},
        {"EnableChannelIdentification", "x-amzn-transcribe-enable-channel-identification"},
        {"EnablePartialResultsStabilization",
         "x-amzn-transcribe-enable-partial-results-stabilization"},
        {"IdentifyLanguage", "x-amzn-transcribe-identify-language"},
        {"IdentifyMultipleLanguages", "x-amzn-transcribe-identify-multiple-languages"},
        {"LanguageCode", "x-amzn-transcribe-language-code"},
        {"LanguageModelName", "x-amzn-transcribe-language-model-name"},
        {"LanguageOptions", "x-amzn-transcribe-language-options"},
        {"MediaEncoding", "x-amzn-transcribe-media-encoding"},
        {"MediaSampleRateHertz", "x-amzn-transcribe-sample-rate"},
        {"NumberOfChannels", "x-amzn-transcribe-number-of-channels"},
        {"PartialResultsStability", "x-amzn-transcribe-partial-results-stability"},
        {"PiiEntityTypes", "x-amzn-transcribe-pii-entity-types"},
        {"PreferredLanguage", "x-amzn-transcribe-preferred-language"},
        {"SessionId", "x-amzn-transcribe-session-id"},
        {"SessionResumeWindow", "x-amzn-transcribe-session-resume-window"},
        {"ShowSpeakerLabel", "x-amzn-transcribe-show-speaker-label"},
        {"VocabularyFilterMethod", "x-amzn-transcribe-vocabulary-filter-method"},
        {"VocabularyFilterName", "x-amzn-transcribe-vocabulary-filter-name"},
        {"VocabularyFilterNames", "x-amzn-transcribe-vocabulary-filter-names"},
        {"VocabularyName", "x-amzn-transcribe-vocabulary-name"},
        {"VocabularyNames", "x-amzn-transcribe-vocabulary-names"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-transcribe-content-identification-type", "ContentIdentificationType"},
          {"x-amzn-transcribe-content-redaction-type", "ContentRedactionType"},
          {"x-amzn-transcribe-enable-channel-identification", "EnableChannelIdentification"},
          {"x-amzn-transcribe-enable-partial-results-stabilization",
           "EnablePartialResultsStabilization"},
          {"x-amzn-transcribe-identify-language", "IdentifyLanguage"},
          {"x-amzn-transcribe-identify-multiple-languages", "IdentifyMultipleLanguages"},
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-language-model-name", "LanguageModelName"},
          {"x-amzn-transcribe-language-options", "LanguageOptions"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-transcribe-number-of-channels", "NumberOfChannels"},
          {"x-amzn-transcribe-partial-results-stability", "PartialResultsStability"},
          {"x-amzn-transcribe-pii-entity-types", "PiiEntityTypes"},
          {"x-amzn-transcribe-preferred-language", "PreferredLanguage"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"},
          {"x-amzn-transcribe-session-resume-window", "SessionResumeWindow"},
          {"x-amzn-transcribe-show-speaker-label", "ShowSpeakerLabel"},
          {"x-amzn-transcribe-vocabulary-filter-method", "VocabularyFilterMethod"},
          {"x-amzn-transcribe-vocabulary-filter-name", "VocabularyFilterName"},
          {"x-amzn-transcribe-vocabulary-filter-names", "VocabularyFilterNames"},
          {"x-amzn-transcribe-vocabulary-name", "VocabularyName"},
          {"x-amzn-transcribe-vocabulary-names", "VocabularyNames"}
        ]
      )

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
