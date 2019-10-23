# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

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
    path = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
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
  def describe_voices(client, options \\ []) do
    path = "/v1/voices"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Returns the content of the specified pronunciation lexicon stored in an AWS
  Region. For more information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def get_lexicon(client, name, options \\ []) do
    path = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specific SpeechSynthesisTask object based on its TaskID. This
  object contains information about the given speech synthesis task,
  including the status of the task, and a link to the S3 bucket containing
  the output of the task.
  """
  def get_speech_synthesis_task(client, task_id, options \\ []) do
    path = "/v1/synthesisTasks/#{URI.encode(task_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Returns a list of pronunciation lexicons stored in an AWS Region. For more
  information, see [Managing
  Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def list_lexicons(client, options \\ []) do
    path = "/v1/lexicons"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Returns a list of SpeechSynthesisTask objects ordered by their creation
  date. This operation can filter the tasks by their status, for example,
  allowing users to list only tasks that are completed.
  """
  def list_speech_synthesis_tasks(client, options \\ []) do
    path = "/v1/synthesisTasks"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
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
    path = "/v1/lexicons/#{URI.encode(name)}"
    headers = []
    request(client, :put, path, headers, input, options, 200)
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
    path = "/v1/synthesisTasks"
    headers = []
    request(client, :post, path, headers, input, options, 200)
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
    path = "/v1/speech"
    headers = []
    case request(client, :post, path, headers, input, options, 200) do
      {:ok, body, response} ->
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

  @spec request(AWS.Client.t(), binary(), binary(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, headers, input, options, success_status_code) do
    client = %{client | service: "polly"}
    host = get_host("polly", client)
    url = get_url(host, path, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token} | headers]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"} | headers
    ]

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
        reason = Poison.Parser.parse!(body, %{})["message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}/"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
