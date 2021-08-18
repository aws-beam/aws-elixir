# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Polly do
  @moduledoc """
  Amazon Polly is a web service that makes it easy to synthesize speech from text.

  The Amazon Polly service provides API operations for synthesizing high-quality
  speech from plain text and Speech Synthesis Markup Language (SSML), along with
  managing pronunciations lexicons that enable you to get the best results for
  your application domain.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2016-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "polly",
      global?: false,
      protocol: "rest-json",
      service_id: "Polly",
      signature_version: "v4",
      signing_name: "polly",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified pronunciation lexicon stored in an AWS Region.

  A lexicon which has been deleted is not available for speech synthesis, nor is
  it possible to retrieve it using either the `GetLexicon` or `ListLexicon` APIs.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def delete_lexicon(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the list of voices that are available for use when requesting speech
  synthesis.

  Each voice speaks a specified language, is either male or female, and is
  identified by an ID, which is the ASCII version of the voice name.

  When synthesizing speech ( `SynthesizeSpeech` ), you provide the voice ID for
  the voice you want from the list of voices returned by `DescribeVoices`.

  For example, you want your news reader application to read news in a specific
  language, but giving a user the option to choose the voice. Using the
  `DescribeVoices` operation you can provide the user with a list of available
  voices to select from.

  You can optionally specify a language code to filter the available voices. For
  example, if you specify `en-US`, the operation returns a list of all available
  US English voices.

  This operation requires permissions to perform the `polly:DescribeVoices`
  action.
  """
  def describe_voices(
        %Client{} = client,
        engine \\ nil,
        include_additional_language_codes \\ nil,
        language_code \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/voices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(language_code) do
        [{"LanguageCode", language_code} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_additional_language_codes) do
        [{"IncludeAdditionalLanguageCodes", include_additional_language_codes} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(engine) do
        [{"Engine", engine} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns the content of the specified pronunciation lexicon stored in an AWS
  Region.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def get_lexicon(%Client{} = client, name, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a specific SpeechSynthesisTask object based on its TaskID.

  This object contains information about the given speech synthesis task,
  including the status of the task, and a link to the S3 bucket containing the
  output of the task.
  """
  def get_speech_synthesis_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/v1/synthesisTasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of pronunciation lexicons stored in an AWS Region.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def list_lexicons(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/v1/lexicons"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of SpeechSynthesisTask objects ordered by their creation date.

  This operation can filter the tasks by their status, for example, allowing users
  to list only tasks that are completed.
  """
  def list_speech_synthesis_tasks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v1/synthesisTasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Stores a pronunciation lexicon in an AWS Region.

  If a lexicon with the same name already exists in the region, it is overwritten
  by the new lexicon. Lexicon operations have eventual consistency, therefore, it
  might take some time before the lexicon is available to the SynthesizeSpeech
  operation.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  def put_lexicon(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows the creation of an asynchronous synthesis task, by starting a new
  `SpeechSynthesisTask`.

  This operation requires all the standard information needed for speech
  synthesis, plus the name of an Amazon S3 bucket for the service to store the
  output of the synthesis task and two optional parameters (OutputS3KeyPrefix and
  SnsTopicArn). Once the synthesis task is created, this operation will return a
  SpeechSynthesisTask object, which will include an identifier of this task as
  well as the current status.
  """
  def start_speech_synthesis_task(%Client{} = client, input, options \\ []) do
    url_path = "/v1/synthesisTasks"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.

  SSML input must be valid, well-formed SSML. Some alphabets might not be
  available with all the voices (for example, Cyrillic might not be read at all by
  English voices) unless phoneme mapping is used. For more information, see [How it
  Works](https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).
  """
  def synthesize_speech(%Client{} = client, input, options \\ []) do
    url_path = "/v1/speech"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "ContentType"},
          {"x-amzn-RequestCharacters", "RequestCharacters"}
        ]
      )

    Request.request_rest(
      client,
      metadata(),
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
