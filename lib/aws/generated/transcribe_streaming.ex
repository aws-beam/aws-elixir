# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TranscribeStreaming do
  @moduledoc """
  Amazon Transcribe streaming offers three main types of real-time transcription:
  **Standard**, **Medical**, and
  **Call Analytics**.

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
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      issue_detected() :: %{
        "CharacterOffsets" => character_offsets()
      }

  """
  @type issue_detected() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_medical_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("EnableChannelIdentification") => boolean(),
        optional("NumberOfChannels") => integer(),
        optional("SessionId") => String.t(),
        optional("ShowSpeakerLabel") => boolean(),
        optional("VocabularyName") => String.t(),
        required("AudioStream") => list(),
        required("LanguageCode") => list(any()),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer(),
        required("Specialty") => list(any()),
        required("Type") => list(any())
      }

  """
  @type start_medical_stream_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      points_of_interest() :: %{
        "TimestampRanges" => list(timestamp_range()())
      }

  """
  @type points_of_interest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity() :: %{
        "Category" => String.t(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "StartTime" => float(),
        "Type" => String.t()
      }

  """
  @type entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      character_offsets() :: %{
        "Begin" => integer(),
        "End" => integer()
      }

  """
  @type character_offsets() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_event() :: %{
        "AudioChunk" => binary()
      }

  """
  @type audio_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      medical_alternative() :: %{
        "Entities" => list(medical_entity()()),
        "Items" => list(medical_item()()),
        "Transcript" => String.t()
      }

  """
  @type medical_alternative() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category_event() :: %{
        "MatchedCategories" => list(String.t()()),
        "MatchedDetails" => map()
      }

  """
  @type category_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      language_with_score() :: %{
        "LanguageCode" => list(any()),
        "Score" => float()
      }

  """
  @type language_with_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transcript() :: %{
        "Results" => list(result()())
      }

  """
  @type transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      medical_entity() :: %{
        "Category" => String.t(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "StartTime" => float()
      }

  """
  @type medical_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      medical_transcript() :: %{
        "Results" => list(medical_result()())
      }

  """
  @type medical_transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_call_analytics_stream_transcription_response() :: %{
        "CallAnalyticsTranscriptResultStream" => list(),
        "ContentIdentificationType" => list(any()),
        "ContentRedactionType" => list(any()),
        "EnablePartialResultsStabilization" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageModelName" => String.t(),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t(),
        "RequestId" => String.t(),
        "SessionId" => String.t(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyName" => String.t()
      }

  """
  @type start_call_analytics_stream_transcription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      item() :: %{
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "Speaker" => String.t(),
        "Stable" => boolean(),
        "StartTime" => float(),
        "Type" => list(any()),
        "VocabularyFilterMatch" => boolean()
      }

  """
  @type item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_medical_stream_transcription_response() :: %{
        "ContentIdentificationType" => list(any()),
        "EnableChannelIdentification" => boolean(),
        "LanguageCode" => list(any()),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "NumberOfChannels" => integer(),
        "RequestId" => String.t(),
        "SessionId" => String.t(),
        "ShowSpeakerLabel" => boolean(),
        "Specialty" => list(any()),
        "TranscriptResultStream" => list(),
        "Type" => list(any()),
        "VocabularyName" => String.t()
      }

  """
  @type start_medical_stream_transcription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      call_analytics_item() :: %{
        "BeginOffsetMillis" => float(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndOffsetMillis" => float(),
        "Stable" => boolean(),
        "Type" => list(any()),
        "VocabularyFilterMatch" => boolean()
      }

  """
  @type call_analytics_item() :: %{String.t() => any()}

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

      result() :: %{
        "Alternatives" => list(alternative()()),
        "ChannelId" => String.t(),
        "EndTime" => float(),
        "IsPartial" => boolean(),
        "LanguageCode" => list(any()),
        "LanguageIdentification" => list(language_with_score()()),
        "ResultId" => String.t(),
        "StartTime" => float()
      }

  """
  @type result() :: %{String.t() => any()}

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

      call_analytics_entity() :: %{
        "BeginOffsetMillis" => float(),
        "Category" => String.t(),
        "Confidence" => float(),
        "Content" => String.t(),
        "EndOffsetMillis" => float(),
        "Type" => String.t()
      }

  """
  @type call_analytics_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

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
        "LanguageModelName" => String.t(),
        "LanguageOptions" => String.t(),
        "MediaEncoding" => list(any()),
        "MediaSampleRateHertz" => integer(),
        "NumberOfChannels" => integer(),
        "PartialResultsStability" => list(any()),
        "PiiEntityTypes" => String.t(),
        "PreferredLanguage" => list(any()),
        "RequestId" => String.t(),
        "SessionId" => String.t(),
        "ShowSpeakerLabel" => boolean(),
        "TranscriptResultStream" => list(),
        "VocabularyFilterMethod" => list(any()),
        "VocabularyFilterName" => String.t(),
        "VocabularyFilterNames" => String.t(),
        "VocabularyName" => String.t(),
        "VocabularyNames" => String.t()
      }

  """
  @type start_stream_transcription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      medical_transcript_event() :: %{
        "Transcript" => medical_transcript()
      }

  """
  @type medical_transcript_event() :: %{String.t() => any()}

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
        optional("LanguageModelName") => String.t(),
        optional("LanguageOptions") => String.t(),
        optional("NumberOfChannels") => integer(),
        optional("PartialResultsStability") => list(any()),
        optional("PiiEntityTypes") => String.t(),
        optional("PreferredLanguage") => list(any()),
        optional("SessionId") => String.t(),
        optional("ShowSpeakerLabel") => boolean(),
        optional("VocabularyFilterMethod") => list(any()),
        optional("VocabularyFilterName") => String.t(),
        optional("VocabularyFilterNames") => String.t(),
        optional("VocabularyName") => String.t(),
        optional("VocabularyNames") => String.t(),
        required("AudioStream") => list(),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer()
      }

  """
  @type start_stream_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      medical_result() :: %{
        "Alternatives" => list(medical_alternative()()),
        "ChannelId" => String.t(),
        "EndTime" => float(),
        "IsPartial" => boolean(),
        "ResultId" => String.t(),
        "StartTime" => float()
      }

  """
  @type medical_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_call_analytics_stream_transcription_request() :: %{
        optional("ContentIdentificationType") => list(any()),
        optional("ContentRedactionType") => list(any()),
        optional("EnablePartialResultsStabilization") => boolean(),
        optional("LanguageModelName") => String.t(),
        optional("PartialResultsStability") => list(any()),
        optional("PiiEntityTypes") => String.t(),
        optional("SessionId") => String.t(),
        optional("VocabularyFilterMethod") => list(any()),
        optional("VocabularyFilterName") => String.t(),
        optional("VocabularyName") => String.t(),
        required("AudioStream") => list(),
        required("LanguageCode") => list(any()),
        required("MediaEncoding") => list(any()),
        required("MediaSampleRateHertz") => integer()
      }

  """
  @type start_call_analytics_stream_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timestamp_range() :: %{
        "BeginOffsetMillis" => float(),
        "EndOffsetMillis" => float()
      }

  """
  @type timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_event() :: %{
        "ChannelDefinitions" => list(channel_definition()()),
        "PostCallAnalyticsSettings" => post_call_analytics_settings()
      }

  """
  @type configuration_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_event() :: %{
        "BeginOffsetMillis" => float(),
        "EndOffsetMillis" => float(),
        "Entities" => list(call_analytics_entity()()),
        "IsPartial" => boolean(),
        "IssuesDetected" => list(issue_detected()()),
        "Items" => list(call_analytics_item()()),
        "ParticipantRole" => list(any()),
        "Sentiment" => list(any()),
        "Transcript" => String.t(),
        "UtteranceId" => String.t()
      }

  """
  @type utterance_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      medical_item() :: %{
        "Confidence" => float(),
        "Content" => String.t(),
        "EndTime" => float(),
        "Speaker" => String.t(),
        "StartTime" => float(),
        "Type" => list(any())
      }

  """
  @type medical_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transcript_event() :: %{
        "Transcript" => transcript()
      }

  """
  @type transcript_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alternative() :: %{
        "Entities" => list(entity()()),
        "Items" => list(item()()),
        "Transcript" => String.t()
      }

  """
  @type alternative() :: %{String.t() => any()}

  @type start_call_analytics_stream_transcription_errors() ::
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
      protocol: "rest-json",
      service_id: "Transcribe Streaming",
      signature_version: "v4",
      signing_name: "transcribe",
      target_prefix: nil
    }
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

  `language-code`

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
          | {:error, start_call_analytics_stream_transcription_errors()}
  def start_call_analytics_stream_transcription(%Client{} = client, input, options \\ []) do
    url_path = "/call-analytics-stream-transcription"

    {headers, input} =
      [
        {"ContentIdentificationType", "x-amzn-transcribe-content-identification-type"},
        {"ContentRedactionType", "x-amzn-transcribe-content-redaction-type"},
        {"EnablePartialResultsStabilization",
         "x-amzn-transcribe-enable-partial-results-stabilization"},
        {"LanguageCode", "x-amzn-transcribe-language-code"},
        {"LanguageModelName", "x-amzn-transcribe-language-model-name"},
        {"MediaEncoding", "x-amzn-transcribe-media-encoding"},
        {"MediaSampleRateHertz", "x-amzn-transcribe-sample-rate"},
        {"PartialResultsStability", "x-amzn-transcribe-partial-results-stability"},
        {"PiiEntityTypes", "x-amzn-transcribe-pii-entity-types"},
        {"SessionId", "x-amzn-transcribe-session-id"},
        {"VocabularyFilterMethod", "x-amzn-transcribe-vocabulary-filter-method"},
        {"VocabularyFilterName", "x-amzn-transcribe-vocabulary-filter-name"},
        {"VocabularyName", "x-amzn-transcribe-vocabulary-name"}
      ]
      |> Request.build_params(input)

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
          {"x-amzn-transcribe-language-code", "LanguageCode"},
          {"x-amzn-transcribe-language-model-name", "LanguageModelName"},
          {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
          {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
          {"x-amzn-transcribe-partial-results-stability", "PartialResultsStability"},
          {"x-amzn-transcribe-pii-entity-types", "PiiEntityTypes"},
          {"x-amzn-request-id", "RequestId"},
          {"x-amzn-transcribe-session-id", "SessionId"},
          {"x-amzn-transcribe-vocabulary-filter-method", "VocabularyFilterMethod"},
          {"x-amzn-transcribe-vocabulary-filter-name", "VocabularyFilterName"},
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
      headers,
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
      headers,
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
        {"ShowSpeakerLabel", "x-amzn-transcribe-show-speaker-label"},
        {"VocabularyFilterMethod", "x-amzn-transcribe-vocabulary-filter-method"},
        {"VocabularyFilterName", "x-amzn-transcribe-vocabulary-filter-name"},
        {"VocabularyFilterNames", "x-amzn-transcribe-vocabulary-filter-names"},
        {"VocabularyName", "x-amzn-transcribe-vocabulary-name"},
        {"VocabularyNames", "x-amzn-transcribe-vocabulary-names"}
      ]
      |> Request.build_params(input)

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
      headers,
      input,
      options,
      200
    )
  end
end
