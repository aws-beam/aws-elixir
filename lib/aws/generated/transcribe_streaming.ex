# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TranscribeStreaming do
  @moduledoc """
  Amazon Transcribe streaming offers two types of real-time transcription:
  **Standard** and **Medical**.

    * **Standard transcriptions** are the most common option. Refer to
  for details.

    * **Medical transcriptions** are tailored to medical professionals
  and incorporate medical terms. A common use case for this service is
  transcribing doctor-patient dialogue in real time, so doctors can focus on their
  patient instead of taking notes. Refer to for details.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
  Amazon Transcribe Medical and the transcription results are streamed to your
  application.

  For more information on streaming with Amazon Transcribe Medical, see
  [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
  """
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
      nil
    )
  end

  @doc """
  Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
  Amazon Transcribe and the transcription results are streamed to your
  application.

  The following are encoded as headers:

    * language-code

    * media-encoding

    * sample-rate

    * session-id

  For more information on streaming with Amazon Transcribe, see [Transcribing streaming
  audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
  """
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
      nil
    )
  end
end
