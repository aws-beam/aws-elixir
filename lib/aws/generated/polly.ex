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

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  synthesize_speech_input() :: %{
    optional("Engine") => list(any()),
    optional("LanguageCode") => list(any()),
    optional("LexiconNames") => list(String.t()()),
    optional("SampleRate") => String.t(),
    optional("SpeechMarkTypes") => list(list(any())()),
    optional("TextType") => list(any()),
    required("OutputFormat") => list(any()),
    required("Text") => String.t(),
    required("VoiceId") => list(any())
  }
  """
  @type synthesize_speech_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_lexicon_input() :: %{
    required("Content") => String.t()
  }
  """
  @type put_lexicon_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_voices_output() :: %{
    "NextToken" => String.t(),
    "Voices" => list(voice()())
  }
  """
  @type describe_voices_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  max_lexicons_number_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type max_lexicons_number_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_speech_synthesis_task_output() :: %{
    "SynthesisTask" => synthesis_task()
  }
  """
  @type start_speech_synthesis_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_s3_key_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_s3_key_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lexicon_size_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type lexicon_size_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_failure_exception() :: %{
    "message" => String.t()
  }
  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_lexicons_output() :: %{
    "Lexicons" => list(lexicon_description()()),
    "NextToken" => String.t()
  }
  """
  @type list_lexicons_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_lexicon_input() :: %{

  }
  """
  @type get_lexicon_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_voices_input() :: %{
    optional("Engine") => list(any()),
    optional("IncludeAdditionalLanguageCodes") => boolean(),
    optional("LanguageCode") => list(any()),
    optional("NextToken") => String.t()
  }
  """
  @type describe_voices_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_speech_synthesis_tasks_input() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("Status") => list(any())
  }
  """
  @type list_speech_synthesis_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_speech_synthesis_tasks_output() :: %{
    "NextToken" => String.t(),
    "SynthesisTasks" => list(synthesis_task()())
  }
  """
  @type list_speech_synthesis_tasks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lexicon_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type lexicon_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ssml_marks_not_supported_for_text_type_exception() :: %{
    "message" => String.t()
  }
  """
  @type ssml_marks_not_supported_for_text_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  engine_not_supported_exception() :: %{
    "message" => String.t()
  }
  """
  @type engine_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_lexicon_output() :: %{
    "Lexicon" => lexicon(),
    "LexiconAttributes" => lexicon_attributes()
  }
  """
  @type get_lexicon_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_ssml_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_ssml_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unsupported_pls_alphabet_exception() :: %{
    "message" => String.t()
  }
  """
  @type unsupported_pls_alphabet_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_lexicon_input() :: %{

  }
  """
  @type delete_lexicon_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  voice() :: %{
    "AdditionalLanguageCodes" => list(list(any())()),
    "Gender" => list(any()),
    "Id" => list(any()),
    "LanguageCode" => list(any()),
    "LanguageName" => String.t(),
    "Name" => String.t(),
    "SupportedEngines" => list(list(any())())
  }
  """
  @type voice() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_speech_synthesis_task_output() :: %{
    "SynthesisTask" => synthesis_task()
  }
  """
  @type get_speech_synthesis_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_s3_bucket_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_s3_bucket_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lexicon_attributes() :: %{
    "Alphabet" => String.t(),
    "LanguageCode" => list(any()),
    "LastModified" => non_neg_integer(),
    "LexemesCount" => integer(),
    "LexiconArn" => String.t(),
    "Size" => integer()
  }
  """
  @type lexicon_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_next_token_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  synthesis_task() :: %{
    "CreationTime" => non_neg_integer(),
    "Engine" => list(any()),
    "LanguageCode" => list(any()),
    "LexiconNames" => list(String.t()()),
    "OutputFormat" => list(any()),
    "OutputUri" => String.t(),
    "RequestCharacters" => integer(),
    "SampleRate" => String.t(),
    "SnsTopicArn" => String.t(),
    "SpeechMarkTypes" => list(list(any())()),
    "TaskId" => String.t(),
    "TaskStatus" => list(any()),
    "TaskStatusReason" => String.t(),
    "TextType" => list(any()),
    "VoiceId" => list(any())
  }
  """
  @type synthesis_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  max_lexeme_length_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type max_lexeme_length_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  language_not_supported_exception() :: %{
    "message" => String.t()
  }
  """
  @type language_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_lexicons_input() :: %{
    optional("NextToken") => String.t()
  }
  """
  @type list_lexicons_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_task_id_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_task_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_lexicon_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_lexicon_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_sns_topic_arn_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_sns_topic_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lexicon_description() :: %{
    "Attributes" => lexicon_attributes(),
    "Name" => String.t()
  }
  """
  @type lexicon_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_lexicon_output() :: %{

  }
  """
  @type put_lexicon_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lexicon() :: %{
    "Content" => String.t(),
    "Name" => String.t()
  }
  """
  @type lexicon() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_sample_rate_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_sample_rate_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unsupported_pls_language_exception() :: %{
    "message" => String.t()
  }
  """
  @type unsupported_pls_language_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  synthesize_speech_output() :: %{
    "AudioStream" => binary(),
    "ContentType" => String.t(),
    "RequestCharacters" => integer()
  }
  """
  @type synthesize_speech_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_speech_synthesis_task_input() :: %{
    optional("Engine") => list(any()),
    optional("LanguageCode") => list(any()),
    optional("LexiconNames") => list(String.t()()),
    optional("OutputS3KeyPrefix") => String.t(),
    optional("SampleRate") => String.t(),
    optional("SnsTopicArn") => String.t(),
    optional("SpeechMarkTypes") => list(list(any())()),
    optional("TextType") => list(any()),
    required("OutputFormat") => list(any()),
    required("OutputS3BucketName") => String.t(),
    required("Text") => String.t(),
    required("VoiceId") => list(any())
  }
  """
  @type start_speech_synthesis_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  marks_not_supported_for_format_exception() :: %{
    "message" => String.t()
  }
  """
  @type marks_not_supported_for_format_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  synthesis_task_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type synthesis_task_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_speech_synthesis_task_input() :: %{

  }
  """
  @type get_speech_synthesis_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  text_length_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type text_length_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_lexicon_output() :: %{

  }
  """
  @type delete_lexicon_output() :: %{String.t() => any()}

  def metadata do
    %{
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
  Deletes the specified pronunciation lexicon stored in an Amazon Web Services
  Region.

  A lexicon which has been deleted is not available for
  speech synthesis, nor is it possible to retrieve it using either the
  `GetLexicon` or `ListLexicon` APIs.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  @spec delete_lexicon(map(), String.t(), delete_lexicon_input(), list()) ::
          {:ok, delete_lexicon_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, lexicon_not_found_exception()}
          | {:error, service_failure_exception()}
  def delete_lexicon(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns the list of voices that are available for use when
  requesting speech synthesis.

  Each voice speaks a specified language, is
  either male or female, and is identified by an ID, which is the ASCII
  version of the voice name.

  When synthesizing speech ( `SynthesizeSpeech` ), you
  provide the voice ID for the voice you want from the list of voices
  returned by `DescribeVoices`.

  For example, you want your news reader application to read news in
  a specific language, but giving a user the option to choose the voice.
  Using the `DescribeVoices` operation you can provide the user
  with a list of available voices to select from.

  You can optionally specify a language code to filter the available
  voices. For example, if you specify `en-US`, the operation
  returns a list of all available US English voices.

  This operation requires permissions to perform the
  `polly:DescribeVoices` action.
  """
  @spec describe_voices(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_voices_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_next_token_exception()}
          | {:error, service_failure_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the content of the specified pronunciation lexicon stored
  in an Amazon Web Services Region.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  @spec get_lexicon(map(), String.t(), list()) ::
          {:ok, get_lexicon_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, lexicon_not_found_exception()}
          | {:error, service_failure_exception()}
  def get_lexicon(%Client{} = client, name, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specific SpeechSynthesisTask object based on its TaskID.

  This object contains information about the given speech synthesis task,
  including the status of the task, and a link to the S3 bucket containing
  the output of the task.
  """
  @spec get_speech_synthesis_task(map(), String.t(), list()) ::
          {:ok, get_speech_synthesis_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_task_id_exception()}
          | {:error, service_failure_exception()}
          | {:error, synthesis_task_not_found_exception()}
  def get_speech_synthesis_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/v1/synthesisTasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of pronunciation lexicons stored in an Amazon Web Services
  Region.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  @spec list_lexicons(map(), String.t() | nil, list()) ::
          {:ok, list_lexicons_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_next_token_exception()}
          | {:error, service_failure_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of SpeechSynthesisTask objects ordered by their
  creation date.

  This operation can filter the tasks by their status, for
  example, allowing users to list only tasks that are completed.
  """
  @spec list_speech_synthesis_tasks(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_speech_synthesis_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_next_token_exception()}
          | {:error, service_failure_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Stores a pronunciation lexicon in an Amazon Web Services Region.

  If
  a lexicon with the same name already exists in the region, it is
  overwritten by the new lexicon. Lexicon operations have eventual
  consistency, therefore, it might take some time before the lexicon is
  available to the SynthesizeSpeech operation.

  For more information, see [Managing Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).
  """
  @spec put_lexicon(map(), String.t(), put_lexicon_input(), list()) ::
          {:ok, put_lexicon_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_lexicon_exception()}
          | {:error, lexicon_size_exceeded_exception()}
          | {:error, max_lexeme_length_exceeded_exception()}
          | {:error, max_lexicons_number_exceeded_exception()}
          | {:error, service_failure_exception()}
          | {:error, unsupported_pls_alphabet_exception()}
          | {:error, unsupported_pls_language_exception()}
  def put_lexicon(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/lexicons/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Allows the creation of an asynchronous synthesis task, by starting a
  new `SpeechSynthesisTask`.

  This operation requires all the
  standard information needed for speech synthesis, plus the name of an
  Amazon S3 bucket for the service to store the output of the synthesis task
  and two optional parameters (`OutputS3KeyPrefix` and
  `SnsTopicArn`). Once the synthesis task is created, this
  operation will return a `SpeechSynthesisTask` object, which
  will include an identifier of this task as well as the current status. The
  `SpeechSynthesisTask` object is available for 72 hours after
  starting the asynchronous synthesis task.
  """
  @spec start_speech_synthesis_task(map(), start_speech_synthesis_task_input(), list()) ::
          {:ok, start_speech_synthesis_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, engine_not_supported_exception()}
          | {:error, invalid_s3_bucket_exception()}
          | {:error, invalid_s3_key_exception()}
          | {:error, invalid_sample_rate_exception()}
          | {:error, invalid_sns_topic_arn_exception()}
          | {:error, invalid_ssml_exception()}
          | {:error, language_not_supported_exception()}
          | {:error, lexicon_not_found_exception()}
          | {:error, marks_not_supported_for_format_exception()}
          | {:error, service_failure_exception()}
          | {:error, ssml_marks_not_supported_for_text_type_exception()}
          | {:error, text_length_exceeded_exception()}
  def start_speech_synthesis_task(%Client{} = client, input, options \\ []) do
    url_path = "/v1/synthesisTasks"
    headers = []
    query_params = []

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
  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.

  SSML input must be valid, well-formed SSML. Some alphabets might not be
  available with all the voices (for example, Cyrillic might not be read at
  all by English voices) unless phoneme mapping is used. For more
  information, see [How it Works](https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).
  """
  @spec synthesize_speech(map(), synthesize_speech_input(), list()) ::
          {:ok, synthesize_speech_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, engine_not_supported_exception()}
          | {:error, invalid_sample_rate_exception()}
          | {:error, invalid_ssml_exception()}
          | {:error, language_not_supported_exception()}
          | {:error, lexicon_not_found_exception()}
          | {:error, marks_not_supported_for_format_exception()}
          | {:error, service_failure_exception()}
          | {:error, ssml_marks_not_supported_for_text_type_exception()}
          | {:error, text_length_exceeded_exception()}
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
