# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Transcribe do
  @moduledoc """
  Operations and objects for transcribing speech to text.
  """

  @doc """
  Creates a new custom language model. Use Amazon S3 prefixes to provide the
  location of your input files. The time it takes to create your model
  depends on the size of your training data.
  """
  def create_language_model(client, input, options \\ []) do
    request(client, "CreateLanguageModel", input, options)
  end

  @doc """
  Creates a new custom vocabulary that you can use to change how Amazon
  Transcribe Medical transcribes your audio file.
  """
  def create_medical_vocabulary(client, input, options \\ []) do
    request(client, "CreateMedicalVocabulary", input, options)
  end

  @doc """
  Creates a new custom vocabulary that you can use to change the way Amazon
  Transcribe handles transcription of an audio file.
  """
  def create_vocabulary(client, input, options \\ []) do
    request(client, "CreateVocabulary", input, options)
  end

  @doc """
  Creates a new vocabulary filter that you can use to filter words, such as
  profane words, from the output of a transcription job.
  """
  def create_vocabulary_filter(client, input, options \\ []) do
    request(client, "CreateVocabularyFilter", input, options)
  end

  @doc """
  Deletes a custom language model using its name.
  """
  def delete_language_model(client, input, options \\ []) do
    request(client, "DeleteLanguageModel", input, options)
  end

  @doc """
  Deletes a transcription job generated by Amazon Transcribe Medical and any
  related information.
  """
  def delete_medical_transcription_job(client, input, options \\ []) do
    request(client, "DeleteMedicalTranscriptionJob", input, options)
  end

  @doc """
  Deletes a vocabulary from Amazon Transcribe Medical.
  """
  def delete_medical_vocabulary(client, input, options \\ []) do
    request(client, "DeleteMedicalVocabulary", input, options)
  end

  @doc """
  Deletes a previously submitted transcription job along with any other
  generated results such as the transcription, models, and so on.
  """
  def delete_transcription_job(client, input, options \\ []) do
    request(client, "DeleteTranscriptionJob", input, options)
  end

  @doc """
  Deletes a vocabulary from Amazon Transcribe.
  """
  def delete_vocabulary(client, input, options \\ []) do
    request(client, "DeleteVocabulary", input, options)
  end

  @doc """
  Removes a vocabulary filter.
  """
  def delete_vocabulary_filter(client, input, options \\ []) do
    request(client, "DeleteVocabularyFilter", input, options)
  end

  @doc """
  Gets information about a single custom language model. Use this information
  to see details about the language model in your AWS account. You can also
  see whether the base language model used to create your custom language
  model has been updated. If Amazon Transcribe has updated the base model,
  you can create a new custom language model using the updated base model. If
  the language model wasn't created, you can use this operation to understand
  why Amazon Transcribe couldn't create it.
  """
  def describe_language_model(client, input, options \\ []) do
    request(client, "DescribeLanguageModel", input, options)
  end

  @doc """
  Returns information about a transcription job from Amazon Transcribe
  Medical. To see the status of the job, check the `TranscriptionJobStatus`
  field. If the status is `COMPLETED`, the job is finished. You find the
  results of the completed job in the `TranscriptFileUri` field.
  """
  def get_medical_transcription_job(client, input, options \\ []) do
    request(client, "GetMedicalTranscriptionJob", input, options)
  end

  @doc """
  Retrieves information about a medical vocabulary.
  """
  def get_medical_vocabulary(client, input, options \\ []) do
    request(client, "GetMedicalVocabulary", input, options)
  end

  @doc """
  Returns information about a transcription job. To see the status of the
  job, check the `TranscriptionJobStatus` field. If the status is
  `COMPLETED`, the job is finished and you can find the results at the
  location specified in the `TranscriptFileUri` field. If you enable content
  redaction, the redacted transcript appears in `RedactedTranscriptFileUri`.
  """
  def get_transcription_job(client, input, options \\ []) do
    request(client, "GetTranscriptionJob", input, options)
  end

  @doc """
  Gets information about a vocabulary.
  """
  def get_vocabulary(client, input, options \\ []) do
    request(client, "GetVocabulary", input, options)
  end

  @doc """
  Returns information about a vocabulary filter.
  """
  def get_vocabulary_filter(client, input, options \\ []) do
    request(client, "GetVocabularyFilter", input, options)
  end

  @doc """
  Provides more information about the custom language models you've created.
  You can use the information in this list to find a specific custom language
  model. You can then use the operation to get more information about it.
  """
  def list_language_models(client, input, options \\ []) do
    request(client, "ListLanguageModels", input, options)
  end

  @doc """
  Lists medical transcription jobs with a specified status or substring that
  matches their names.
  """
  def list_medical_transcription_jobs(client, input, options \\ []) do
    request(client, "ListMedicalTranscriptionJobs", input, options)
  end

  @doc """
  Returns a list of vocabularies that match the specified criteria. If you
  don't enter a value in any of the request parameters, returns the entire
  list of vocabularies.
  """
  def list_medical_vocabularies(client, input, options \\ []) do
    request(client, "ListMedicalVocabularies", input, options)
  end

  @doc """
  Lists transcription jobs with the specified status.
  """
  def list_transcription_jobs(client, input, options \\ []) do
    request(client, "ListTranscriptionJobs", input, options)
  end

  @doc """
  Returns a list of vocabularies that match the specified criteria. If no
  criteria are specified, returns the entire list of vocabularies.
  """
  def list_vocabularies(client, input, options \\ []) do
    request(client, "ListVocabularies", input, options)
  end

  @doc """
  Gets information about vocabulary filters.
  """
  def list_vocabulary_filters(client, input, options \\ []) do
    request(client, "ListVocabularyFilters", input, options)
  end

  @doc """
  Starts a batch job to transcribe medical speech to text.
  """
  def start_medical_transcription_job(client, input, options \\ []) do
    request(client, "StartMedicalTranscriptionJob", input, options)
  end

  @doc """
  Starts an asynchronous job to transcribe speech to text.
  """
  def start_transcription_job(client, input, options \\ []) do
    request(client, "StartTranscriptionJob", input, options)
  end

  @doc """
  Updates a vocabulary with new values that you provide in a different text
  file from the one you used to create the vocabulary. The
  `UpdateMedicalVocabulary` operation overwrites all of the existing
  information with the values that you provide in the request.
  """
  def update_medical_vocabulary(client, input, options \\ []) do
    request(client, "UpdateMedicalVocabulary", input, options)
  end

  @doc """
  Updates an existing vocabulary with new values. The `UpdateVocabulary`
  operation overwrites all of the existing information with the values that
  you provide in the request.
  """
  def update_vocabulary(client, input, options \\ []) do
    request(client, "UpdateVocabulary", input, options)
  end

  @doc """
  Updates a vocabulary filter with a new list of filtered words.
  """
  def update_vocabulary_filter(client, input, options \\ []) do
    request(client, "UpdateVocabularyFilter", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "transcribe"}
    host = build_host("transcribe", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "Transcribe.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
