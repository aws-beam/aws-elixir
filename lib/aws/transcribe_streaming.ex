# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TranscribeStreaming do
  @moduledoc """
  Operations and objects for transcribing streaming speech to text.
  """

  @doc """
  Starts a bidirectional HTTP2 stream where audio is streamed to Amazon
  Transcribe and the transcription results are streamed to your application.

  The following are encoded as HTTP2 headers:

  <ul> <li> x-amzn-transcribe-language-code

  </li> <li> x-amzn-transcribe-media-encoding

  </li> <li> x-amzn-transcribe-sample-rate

  </li> <li> x-amzn-transcribe-session-id

  </li> </ul>
  """
  def start_stream_transcription(client, input, options \\ []) do
    path_ = "/stream-transcription"
    {headers, input} =
      [
        {"EnableChannelIdentification", "x-amzn-transcribe-enable-channel-identification"},
        {"LanguageCode", "x-amzn-transcribe-language-code"},
        {"MediaEncoding", "x-amzn-transcribe-media-encoding"},
        {"MediaSampleRateHertz", "x-amzn-transcribe-sample-rate"},
        {"NumberOfChannels", "x-amzn-transcribe-number-of-channels"},
        {"SessionId", "x-amzn-transcribe-session-id"},
        {"ShowSpeakerLabel", "x-amzn-transcribe-show-speaker-label"},
        {"VocabularyFilterMethod", "x-amzn-transcribe-vocabulary-filter-method"},
        {"VocabularyFilterName", "x-amzn-transcribe-vocabulary-filter-name"},
        {"VocabularyName", "x-amzn-transcribe-vocabulary-name"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"x-amzn-transcribe-enable-channel-identification", "EnableChannelIdentification"},
            {"x-amzn-transcribe-language-code", "LanguageCode"},
            {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
            {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
            {"x-amzn-transcribe-number-of-channels", "NumberOfChannels"},
            {"x-amzn-request-id", "RequestId"},
            {"x-amzn-transcribe-session-id", "SessionId"},
            {"x-amzn-transcribe-show-speaker-label", "ShowSpeakerLabel"},
            {"x-amzn-transcribe-vocabulary-filter-method", "VocabularyFilterMethod"},
            {"x-amzn-transcribe-vocabulary-filter-name", "VocabularyFilterName"},
            {"x-amzn-transcribe-vocabulary-name", "VocabularyName"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "transcribe"}
    host = build_host("transcribestreaming", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
  end



  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
