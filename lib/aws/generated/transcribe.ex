# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Transcribe do
  @moduledoc """
  Operations and objects for transcribing speech to text.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "transcribe",
      global?: false,
      protocol: "json",
      service_id: "Transcribe",
      signature_version: "v4",
      signing_name: "transcribe",
      target_prefix: "Transcribe"
    }
  end

  @doc """
  Creates a call analytics category.

  Amazon Transcribe applies the conditions specified by your call analytics
  categories to your call analytics jobs. For each analytics category, you must
  create between 1 and 20 rules. For example, you can create a 'greeting' category
  with a rule that flags calls in which your agent does not use a specified phrase
  (for example: "Please note this call may be recorded.") in the first 15 seconds
  of the call. When you start a call analytics job, Amazon Transcribe applies all
  your existing call analytics categories to that job.
  """
  def create_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCallAnalyticsCategory", input, options)
  end

  @doc """
  Creates a new custom language model.

  When creating a new language model, you must specify if you want a Wideband
  (audio sample rates over 16,000 Hz) or Narrowband (audio sample rates under
  16,000 Hz) base model. You then include the S3 URI location of your training and
  tuning files, the language for the model, a unique name, and any tags you want
  associated with your model.
  """
  def create_language_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLanguageModel", input, options)
  end

  @doc """
  Creates a new custom medical vocabulary.

  When creating a new medical vocabulary, you must upload a text file that
  contains your new entries, phrases, and terms into an S3 bucket. Note that this
  differs from , where you can include a list of terms within your request using
  the `Phrases` flag, as `CreateMedicalVocabulary` does not support the `Phrases`
  flag.

  For more information on creating a custom vocabulary text file, see [Creating a custom
  vocabulary](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html).
  """
  def create_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateMedicalVocabulary", input, options)
  end

  @doc """
  Creates a new custom vocabulary.

  When creating a new medical vocabulary, you can either upload a text file that
  contains your new entries, phrases, and terms into an S3 bucket or include a
  list of terms directly in your request using the `Phrases` flag.

  For more information on creating a custom vocabulary, see [Creating a custom vocabulary](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html).
  """
  def create_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateVocabulary", input, options)
  end

  @doc """
  Creates a new vocabulary filter that you can use to filter words from your
  transcription output.

  For example, you can use this operation to remove profanity from your
  transcript.
  """
  def create_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateVocabularyFilter", input, options)
  end

  @doc """
  Deletes a call analytics category.

  To use this operation, specify the name of the category you want to delete using
  `CategoryName`.
  """
  def delete_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCallAnalyticsCategory", input, options)
  end

  @doc """
  Deletes a call analytics job.

  To use this operation, specify the name of the job you want to delete using
  `CallAnalyticsJobName`.
  """
  def delete_call_analytics_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCallAnalyticsJob", input, options)
  end

  @doc """
  Deletes a custom language model.

  To use this operation, specify the name of the language model you want to delete
  using `ModelName`.
  """
  def delete_language_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLanguageModel", input, options)
  end

  @doc """
  Deletes a medical transcription job, along with any related information.

  To use this operation, specify the name of the job you want to delete using
  `MedicalTranscriptionJobName`.
  """
  def delete_medical_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMedicalTranscriptionJob", input, options)
  end

  @doc """
  Deletes a custom medical vocabulary.

  To use this operation, specify the name of the vocabulary you want to delete
  using `VocabularyName`.
  """
  def delete_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMedicalVocabulary", input, options)
  end

  @doc """
  Deletes a transcription job, along with any related information.

  To use this operation, specify the name of the job you want to delete using
  `TranscriptionJobName`.
  """
  def delete_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTranscriptionJob", input, options)
  end

  @doc """
  Deletes a custom vocabulary.

  To use this operation, specify the name of the vocabulary you want to delete
  using `VocabularyName`.
  """
  def delete_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteVocabulary", input, options)
  end

  @doc """
  Deletes a vocabulary filter.

  To use this operation, specify the name of the vocabulary filter you want to
  delete using `VocabularyFilterName`.
  """
  def delete_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteVocabularyFilter", input, options)
  end

  @doc """
  Provides information about a specific custom language model in your Amazon Web
  Services account.

  This operation also shows if the base language model you used to create your
  custom language model has been updated. If Amazon Transcribe has updated the
  base model, you can create a new custom language model using the updated base
  model.

  If you tried to create a new custom language model and the request wasn't
  successful, you can use this operation to help identify the reason.
  """
  def describe_language_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLanguageModel", input, options)
  end

  @doc """
  Retrieves information about a call analytics category.
  """
  def get_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetCallAnalyticsCategory", input, options)
  end

  @doc """
  Retrieves information about a call analytics job.

  To view the job's status, refer to the `CallAnalyticsJobStatus` field. If the
  status is `COMPLETED`, the job is finished. You can then find your transcript at
  the URI specified in the `TranscriptFileUri` field. If you enabled personally
  identifiable information (PII) redaction, the redacted transcript appears in the
  `RedactedTranscriptFileUri` field.
  """
  def get_call_analytics_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetCallAnalyticsJob", input, options)
  end

  @doc """
  Retrieves information about a medical transcription job.

  To view the job's status, refer to the `TranscriptionJobStatus` field. If the
  status is `COMPLETED`, the job is finished. You can then find your transcript at
  the URI specified in the `TranscriptFileUri` field.
  """
  def get_medical_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMedicalTranscriptionJob", input, options)
  end

  @doc """
  Retrieves information about a medical vocabulary.
  """
  def get_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMedicalVocabulary", input, options)
  end

  @doc """
  Returns information about a transcription job.

  To see the status of the job, check the `TranscriptionJobStatus` field. If the
  status is `COMPLETED`, the job is finished and you can find the results at the
  location specified in the `TranscriptFileUri` field. If you enable content
  redaction, the redacted transcript appears in `RedactedTranscriptFileUri`.
  """
  def get_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTranscriptionJob", input, options)
  end

  @doc """
  Gets information about a vocabulary.
  """
  def get_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetVocabulary", input, options)
  end

  @doc """
  Returns information about a vocabulary filter.
  """
  def get_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetVocabularyFilter", input, options)
  end

  @doc """
  Provides more information about the call analytics categories that you've
  created.

  You can use the information in this list to find a specific category. You can
  then use the operation to get more information about it.
  """
  def list_call_analytics_categories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCallAnalyticsCategories", input, options)
  end

  @doc """
  List call analytics jobs with a specified status or substring that matches their
  names.
  """
  def list_call_analytics_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCallAnalyticsJobs", input, options)
  end

  @doc """
  Provides more information about the custom language models you've created.

  You can use the information in this list to find a specific custom language
  model. You can then use the operation to get more information about it.
  """
  def list_language_models(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLanguageModels", input, options)
  end

  @doc """
  Lists medical transcription jobs with a specified status or substring that
  matches their names.
  """
  def list_medical_transcription_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMedicalTranscriptionJobs", input, options)
  end

  @doc """
  Returns a list of vocabularies that match the specified criteria.

  If you don't enter a value in any of the request parameters, returns the entire
  list of vocabularies.
  """
  def list_medical_vocabularies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMedicalVocabularies", input, options)
  end

  @doc """
  Lists all tags associated with a given transcription job, vocabulary, or
  resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Lists transcription jobs with the specified status.
  """
  def list_transcription_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTranscriptionJobs", input, options)
  end

  @doc """
  Returns a list of vocabularies that match the specified criteria.

  If no criteria are specified, returns the entire list of vocabularies.
  """
  def list_vocabularies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListVocabularies", input, options)
  end

  @doc """
  Gets information about vocabulary filters.
  """
  def list_vocabulary_filters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListVocabularyFilters", input, options)
  end

  @doc """
  Starts an asynchronous analytics job that not only transcribes the audio
  recording of a caller and agent, but also returns additional insights.

  These insights include how quickly or loudly the caller or agent was speaking.
  To retrieve additional insights with your analytics jobs, create categories. A
  category is a way to classify analytics jobs based on attributes, such as a
  customer's sentiment or a particular phrase being used during the call. For more
  information, see the operation.
  """
  def start_call_analytics_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartCallAnalyticsJob", input, options)
  end

  @doc """
  Starts a batch job to transcribe medical speech to text.
  """
  def start_medical_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartMedicalTranscriptionJob", input, options)
  end

  @doc """
  Starts an asynchronous job to transcribe speech to text.
  """
  def start_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartTranscriptionJob", input, options)
  end

  @doc """
  Tags an Amazon Transcribe resource with the given list of tags.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes specified tags from a specified Amazon Transcribe resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the call analytics category with new values.

  The `UpdateCallAnalyticsCategory` operation overwrites all of the existing
  information with the values that you provide in the request.
  """
  def update_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCallAnalyticsCategory", input, options)
  end

  @doc """
  Updates a vocabulary with new values that you provide in a different text file
  from the one you used to create the vocabulary.

  The `UpdateMedicalVocabulary` operation overwrites all of the existing
  information with the values that you provide in the request.
  """
  def update_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateMedicalVocabulary", input, options)
  end

  @doc """
  Updates an existing vocabulary with new values.

  The `UpdateVocabulary` operation overwrites all of the existing information with
  the values that you provide in the request.
  """
  def update_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateVocabulary", input, options)
  end

  @doc """
  Updates a vocabulary filter with a new list of filtered words.
  """
  def update_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateVocabularyFilter", input, options)
  end
end
