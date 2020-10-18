# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Polly do
  @moduledoc """
  Amazon Polly is a web service that makes it easy to synthesize speech from
  text.

  The Amazon Polly service provides API operations for synthesizing
  high-quality speech from plain text and Speech Synthesis Markup Language
  (SSML), along with managing pronunciations lexicons that enable you to get
  the best results for your application domain.
  """

  @doc """
  Deletes the specified pronunciation lexicon stored in an AWS Region. A
  lexicon which has been deleted is not available for speech synthesis, nor
  is it possible to retrieve it using either the `GetLexicon` or
  `ListLexicon` APIs.

  For more information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def delete_lexicon(client, name, input, options \\ []) do
    path_ = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns the list of voices that are available for use when requesting
  speech synthesis. Each voice speaks a specified language, is either male or
  female, and is identified by an ID, which is the ASCII version of the voice
  name.

  When synthesizing speech ( `SynthesizeSpeech` ), you provide the voice ID
  for the voice you want from the list of voices returned by
  `DescribeVoices`.

  For example, you want your news reader application to read news in a
  specific language, but giving a user the option to choose the voice. Using
  the `DescribeVoices` operation you can provide the user with a list of
  available voices to select from.

  You can optionally specify a language code to filter the available voices.
  For example, if you specify `en-US`, the operation returns a list of all
  available US English voices.

  This operation requires permissions to perform the `polly:DescribeVoices`
  action.
  """
  def describe_voices(client, engine \\ nil, include_additional_language_codes \\ nil, language_code \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/voices"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(language_code) do
      [{"LanguageCode", language_code} | query_]
    else
      query_
    end
    query_ = if !is_nil(include_additional_language_codes) do
      [{"IncludeAdditionalLanguageCodes", include_additional_language_codes} | query_]
    else
      query_
    end
    query_ = if !is_nil(engine) do
      [{"Engine", engine} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the content of the specified pronunciation lexicon stored in an AWS
  Region. For more information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def get_lexicon(client, name, options \\ []) do
    path_ = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specific SpeechSynthesisTask object based on its TaskID. This
  object contains information about the given speech synthesis task,
  including the status of the task, and a link to the S3 bucket containing
  the output of the task.
  """
  def get_speech_synthesis_task(client, task_id, options \\ []) do
    path_ = "/v1/synthesisTasks/#{URI.encode(task_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of pronunciation lexicons stored in an AWS Region. For more
  information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def list_lexicons(client, next_token \\ nil, options \\ []) do
    path_ = "/v1/lexicons"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of SpeechSynthesisTask objects ordered by their creation
  date. This operation can filter the tasks by their status, for example,
  allowing users to list only tasks that are completed.
  """
  def list_speech_synthesis_tasks(client, max_results \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/v1/synthesisTasks"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"Status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same
  name already exists in the region, it is overwritten by the new lexicon.
  Lexicon operations have eventual consistency, therefore, it might take some
  time before the lexicon is available to the SynthesizeSpeech operation.

  For more information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def put_lexicon(client, name, input, options \\ []) do
    path_ = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Allows the creation of an asynchronous synthesis task, by starting a new
  `SpeechSynthesisTask`. This operation requires all the standard information
  needed for speech synthesis, plus the name of an Amazon S3 bucket for the
  service to store the output of the synthesis task and two optional
  parameters (OutputS3KeyPrefix and SnsTopicArn). Once the synthesis task is
  created, this operation will return a SpeechSynthesisTask object, which
  will include an identifier of this task as well as the current status.
  """
  def start_speech_synthesis_task(client, input, options \\ []) do
    path_ = "/v1/synthesisTasks"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML
  input must be valid, well-formed SSML. Some alphabets might not be
  available with all the voices (for example, Cyrillic might not be read at
  all by English voices) unless phoneme mapping is used. For more
  information, see [How it
  Works](https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).
  """
  def synthesize_speech(client, input, options \\ []) do
    path_ = "/v1/speech"
    headers = []
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, 200) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Content-Type", "ContentType"},
            {"x-amzn-RequestCharacters", "RequestCharacters"},
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
    client = %{client | service: "polly"}
    host = build_host("polly", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end
