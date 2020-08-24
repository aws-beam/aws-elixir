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
        {"LanguageCode", "x-amzn-transcribe-language-code"},
        {"MediaEncoding", "x-amzn-transcribe-media-encoding"},
        {"MediaSampleRateHertz", "x-amzn-transcribe-sample-rate"},
        {"SessionId", "x-amzn-transcribe-session-id"},
        {"VocabularyFilterMethod", "x-amzn-transcribe-vocabulary-filter-method"},
        {"VocabularyFilterName", "x-amzn-transcribe-vocabulary-filter-name"},
        {"VocabularyName", "x-amzn-transcribe-vocabulary-name"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"x-amzn-transcribe-language-code", "LanguageCode"},
            {"x-amzn-transcribe-media-encoding", "MediaEncoding"},
            {"x-amzn-transcribe-sample-rate", "MediaSampleRateHertz"},
            {"x-amzn-request-id", "RequestId"},
            {"x-amzn-transcribe-session-id", "SessionId"},
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
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
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
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
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
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
