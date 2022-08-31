# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Transcribe do
  @moduledoc """
  Amazon Transcribe offers three main types of batch transcription: **Standard**,
  **Medical**, and **Call Analytics**.

    * **Standard transcriptions** are the most common option. Refer to
  for details.

    * **Medical transcriptions** are tailored to medical professionals
  and incorporate medical terms. A common use case for this service is
  transcribing doctor-patient dialogue into after-visit notes. Refer to for
  details.

    * **Call Analytics transcriptions** are designed for use with call
  center audio on two different channels; if you're looking for insight into
  customer service calls, use this option. Refer to for details.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Creates a new Call Analytics category.

  All categories are automatically applied to your Call Analytics jobs. Note that
  in order to apply your categories to your jobs, you must create them before
  submitting your job request, as categories cannot be applied retroactively.

  Call Analytics categories are composed of rules. For each category, you must
  create between 1 and 20 rules. Rules can include these parameters: , , , and .

  To update an existing category, see .

  To learn more about:

    * Call Analytics categories, see [Creating categories](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html)

    * Using rules, see [Rule criteria](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html#call-analytics-create-categories-rules)
  and refer to the data type

    * Call Analytics, see [Analyzing call center audio with Call Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html)
  """
  def create_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCallAnalyticsCategory", input, options)
  end

  @doc """
  Creates a new custom language model.

  When creating a new language model, you must specify:

    * If you want a Wideband (audio sample rates over 16,000 Hz) or
  Narrowband (audio sample rates under 16,000 Hz) base model

    * The location of your training and tuning files (this must be an
  Amazon S3 URI)

    * The language of your model

    * A unique name for your model

  For more information, see [Custom language models](https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html).
  """
  def create_language_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLanguageModel", input, options)
  end

  @doc """
  Creates a new custom medical vocabulary.

  Prior to creating a new medical vocabulary, you must first upload a text file
  that contains your new entries, phrases, and terms into an Amazon S3 bucket.
  Note that this differs from , where you can include a list of terms within your
  request using the `Phrases` flag; `CreateMedicalVocabulary` does not support the
  `Phrases` flag.

  Each language has a character set that contains all allowed characters for that
  specific language. If you use unsupported characters, your vocabulary request
  fails. Refer to [Character Sets for Custom Vocabularies](https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to
  get the character set for your language.

  For more information, see [Creating a custom vocabulary](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html).
  """
  def create_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateMedicalVocabulary", input, options)
  end

  @doc """
  Creates a new custom vocabulary.

  When creating a new vocabulary, you can either upload a text file that contains
  your new entries, phrases, and terms into an Amazon S3 bucket and include the
  URI in your request, or you can include a list of terms directly in your request
  using the `Phrases` flag.

  Each language has a character set that contains all allowed characters for that
  specific language. If you use unsupported characters, your vocabulary request
  fails. Refer to [Character Sets for Custom Vocabularies](https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to
  get the character set for your language.

  For more information, see [Creating a custom vocabulary](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html).
  """
  def create_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateVocabulary", input, options)
  end

  @doc """
  Creates a new custom vocabulary filter.

  You can use vocabulary filters to mask, delete, or flag specific words from your
  transcript. Vocabulary filters are commonly used to mask profanity in
  transcripts.

  Each language has a character set that contains all allowed characters for that
  specific language. If you use unsupported characters, your vocabulary filter
  request fails. Refer to [Character Sets for Custom Vocabularies](https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to
  get the character set for your language.

  For more information, see [Using vocabulary filtering with unwanted words](https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html).
  """
  def create_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateVocabularyFilter", input, options)
  end

  @doc """
  Deletes a Call Analytics category.

  To use this operation, specify the name of the category you want to delete using
  `CategoryName`. Category names are case sensitive.
  """
  def delete_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCallAnalyticsCategory", input, options)
  end

  @doc """
  Deletes a Call Analytics job.

  To use this operation, specify the name of the job you want to delete using
  `CallAnalyticsJobName`. Job names are case sensitive.
  """
  def delete_call_analytics_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCallAnalyticsJob", input, options)
  end

  @doc """
  Deletes a custom language model.

  To use this operation, specify the name of the language model you want to delete
  using `ModelName`. Language model names are case sensitive.
  """
  def delete_language_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLanguageModel", input, options)
  end

  @doc """
  Deletes a medical transcription job.

  To use this operation, specify the name of the job you want to delete using
  `MedicalTranscriptionJobName`. Job names are case sensitive.
  """
  def delete_medical_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMedicalTranscriptionJob", input, options)
  end

  @doc """
  Deletes a custom medical vocabulary.

  To use this operation, specify the name of the vocabulary you want to delete
  using `VocabularyName`. Vocabulary names are case sensitive.
  """
  def delete_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMedicalVocabulary", input, options)
  end

  @doc """
  Deletes a transcription job.

  To use this operation, specify the name of the job you want to delete using
  `TranscriptionJobName`. Job names are case sensitive.
  """
  def delete_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTranscriptionJob", input, options)
  end

  @doc """
  Deletes a custom vocabulary.

  To use this operation, specify the name of the vocabulary you want to delete
  using `VocabularyName`. Vocabulary names are case sensitive.
  """
  def delete_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteVocabulary", input, options)
  end

  @doc """
  Deletes a vocabulary filter.

  To use this operation, specify the name of the vocabulary filter you want to
  delete using `VocabularyFilterName`. Vocabulary filter names are case sensitive.
  """
  def delete_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteVocabularyFilter", input, options)
  end

  @doc """
  Provides information about the specified custom language model.

  This operation also shows if the base language model you used to create your
  custom language model has been updated. If Amazon Transcribe has updated the
  base model, you can create a new custom language model using the updated base
  model.

  If you tried to create a new custom language model and the request wasn't
  successful, you can use `DescribeLanguageModel` to help identify the reason for
  this failure.

  To get a list of your custom language models, use the operation.
  """
  def describe_language_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLanguageModel", input, options)
  end

  @doc """
  Provides information about the specified Call Analytics category.

  To get a list of your Call Analytics categories, use the operation.
  """
  def get_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetCallAnalyticsCategory", input, options)
  end

  @doc """
  Provides information about the specified Call Analytics job.

  To view the job's status, refer to `CallAnalyticsJobStatus`. If the status is
  `COMPLETED`, the job is finished. You can find your completed transcript at the
  URI specified in `TranscriptFileUri`. If the status is `FAILED`, `FailureReason`
  provides details on why your transcription job failed.

  If you enabled personally identifiable information (PII) redaction, the redacted
  transcript appears at the location specified in `RedactedTranscriptFileUri`.

  If you chose to redact the audio in your media file, you can find your redacted
  media file at the location specified in `RedactedMediaFileUri`.

  To get a list of your Call Analytics jobs, use the operation.
  """
  def get_call_analytics_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetCallAnalyticsJob", input, options)
  end

  @doc """
  Provides information about the specified medical transcription job.

  To view the status of the specified medical transcription job, check the
  `TranscriptionJobStatus` field. If the status is `COMPLETED`, the job is
  finished and you can find the results at the location specified in
  `TranscriptFileUri`. If the status is `FAILED`, `FailureReason` provides details
  on why your transcription job failed.

  To get a list of your medical transcription jobs, use the operation.
  """
  def get_medical_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMedicalTranscriptionJob", input, options)
  end

  @doc """
  Provides information about the specified custom medical vocabulary.

  To view the status of the specified medical vocabulary, check the
  `VocabularyState` field. If the status is `READY`, your vocabulary is available
  to use. If the status is `FAILED`, `FailureReason` provides details on why your
  vocabulary failed.

  To get a list of your custom medical vocabularies, use the operation.
  """
  def get_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMedicalVocabulary", input, options)
  end

  @doc """
  Provides information about the specified transcription job.

  To view the status of the specified transcription job, check the
  `TranscriptionJobStatus` field. If the status is `COMPLETED`, the job is
  finished and you can find the results at the location specified in
  `TranscriptFileUri`. If the status is `FAILED`, `FailureReason` provides details
  on why your transcription job failed.

  If you enabled content redaction, the redacted transcript can be found at the
  location specified in `RedactedTranscriptFileUri`.

  To get a list of your transcription jobs, use the operation.
  """
  def get_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTranscriptionJob", input, options)
  end

  @doc """
  Provides information about the specified custom vocabulary.

  To view the status of the specified vocabulary, check the `VocabularyState`
  field. If the status is `READY`, your vocabulary is available to use. If the
  status is `FAILED`, `FailureReason` provides details on why your vocabulary
  failed.

  To get a list of your custom vocabularies, use the operation.
  """
  def get_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetVocabulary", input, options)
  end

  @doc """
  Provides information about the specified custom vocabulary filter.

  To view the status of the specified vocabulary filter, check the
  `VocabularyState` field. If the status is `READY`, your vocabulary is available
  to use. If the status is `FAILED`, `FailureReason` provides details on why your
  vocabulary filter failed.

  To get a list of your custom vocabulary filters, use the operation.
  """
  def get_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetVocabularyFilter", input, options)
  end

  @doc """
  Provides a list of Call Analytics categories, including all rules that make up
  each category.

  To get detailed information about a specific Call Analytics category, use the
  operation.
  """
  def list_call_analytics_categories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCallAnalyticsCategories", input, options)
  end

  @doc """
  Provides a list of Call Analytics jobs that match the specified criteria.

  If no criteria are specified, all Call Analytics jobs are returned.

  To get detailed information about a specific Call Analytics job, use the
  operation.
  """
  def list_call_analytics_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCallAnalyticsJobs", input, options)
  end

  @doc """
  Provides a list of custom language models that match the specified criteria.

  If no criteria are specified, all language models are returned.

  To get detailed information about a specific custom language model, use the
  operation.
  """
  def list_language_models(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLanguageModels", input, options)
  end

  @doc """
  Provides a list of medical transcription jobs that match the specified criteria.

  If no criteria are specified, all medical transcription jobs are returned.

  To get detailed information about a specific medical transcription job, use the
  operation.
  """
  def list_medical_transcription_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMedicalTranscriptionJobs", input, options)
  end

  @doc """
  Provides a list of custom medical vocabularies that match the specified
  criteria.

  If no criteria are specified, all custom medical vocabularies are returned.

  To get detailed information about a specific custom medical vocabulary, use the
  operation.
  """
  def list_medical_vocabularies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMedicalVocabularies", input, options)
  end

  @doc """
  Lists all tags associated with the specified transcription job, vocabulary,
  model, or resource.

  To learn more about using tags with Amazon Transcribe, refer to [Tagging resources](https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Provides a list of transcription jobs that match the specified criteria.

  If no criteria are specified, all transcription jobs are returned.

  To get detailed information about a specific transcription job, use the
  operation.
  """
  def list_transcription_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTranscriptionJobs", input, options)
  end

  @doc """
  Provides a list of custom vocabularies that match the specified criteria.

  If no criteria are specified, all custom vocabularies are returned.

  To get detailed information about a specific custom vocabulary, use the
  operation.
  """
  def list_vocabularies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListVocabularies", input, options)
  end

  @doc """
  Provides a list of custom vocabulary filters that match the specified criteria.

  If no criteria are specified, all custom vocabularies are returned.

  To get detailed information about a specific custom vocabulary filter, use the
  operation.
  """
  def list_vocabulary_filters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListVocabularyFilters", input, options)
  end

  @doc """
  Transcribes the audio from a customer service call and applies any additional
  Request Parameters you choose to include in your request.

  In addition to many of the standard transcription features, Call Analytics
  provides you with call characteristics, call summarization, speaker sentiment,
  and optional redaction of your text transcript and your audio file. You can also
  apply custom categories to flag specified conditions. To learn more about these
  features and insights, refer to [Analyzing call center audio with Call Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html).

  If you want to apply categories to your Call Analytics job, you must create them
  before submitting your job request. Categories cannot be retroactively applied
  to a job. To create a new category, use the operation. To learn more about Call
  Analytics categories, see [Creating categories](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html).

  To make a `StartCallAnalyticsJob` request, you must first upload your media file
  into an Amazon S3 bucket; you can then specify the Amazon S3 location of the
  file using the `Media` parameter.

  You must include the following parameters in your `StartCallAnalyticsJob`
  request:

    * `region`: The Amazon Web Services Region where you are making your
  request. For a list of Amazon Web Services Regions supported with Amazon
  Transcribe, refer to [Amazon Transcribe endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

    * `CallAnalyticsJobName`: A custom name you create for your
  transcription job that is unique within your Amazon Web Services account.

    * `DataAccessRoleArn`: The Amazon Resource Name (ARN) of an IAM role
  that has permissions to access the Amazon S3 bucket that contains your input
  files.

    * `Media` (`MediaFileUri` or `RedactedMediaFileUri`): The Amazon S3
  location of your media file.

  With Call Analytics, you can redact the audio contained in your media file by
  including `RedactedMediaFileUri`, instead of `MediaFileUri`, to specify the
  location of your input audio. If you choose to redact your audio, you can find
  your redacted media at the location specified in the `RedactedMediaFileUri`
  field of your response.
  """
  def start_call_analytics_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartCallAnalyticsJob", input, options)
  end

  @doc """
  Transcribes the audio from a medical dictation or conversation and applies any
  additional Request Parameters you choose to include in your request.

  In addition to many of the standard transcription features, Amazon Transcribe
  Medical provides you with a robust medical vocabulary and, optionally, content
  identification, which adds flags to personal health information (PHI). To learn
  more about these features, refer to [How Amazon Transcribe Medical works](https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html).

  To make a `StartMedicalTranscriptionJob` request, you must first upload your
  media file into an Amazon S3 bucket; you can then specify the S3 location of the
  file using the `Media` parameter.

  You must include the following parameters in your `StartMedicalTranscriptionJob`
  request:

    * `region`: The Amazon Web Services Region where you are making your
  request. For a list of Amazon Web Services Regions supported with Amazon
  Transcribe, refer to [Amazon Transcribe endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

    * `MedicalTranscriptionJobName`: A custom name you create for your
  transcription job that is unique within your Amazon Web Services account.

    * `Media` (`MediaFileUri`): The Amazon S3 location of your media
  file.

    * `LanguageCode`: This must be `en-US`.

    * `OutputBucketName`: The Amazon S3 bucket where you want your
  transcript stored. If you want your output stored in a sub-folder of this
  bucket, you must also include `OutputKey`.

    * `Specialty`: This must be `PRIMARYCARE`.

    * `Type`: Choose whether your audio is a conversation or a
  dictation.
  """
  def start_medical_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartMedicalTranscriptionJob", input, options)
  end

  @doc """
  Transcribes the audio from a media file and applies any additional Request
  Parameters you choose to include in your request.

  To make a `StartTranscriptionJob` request, you must first upload your media file
  into an Amazon S3 bucket; you can then specify the Amazon S3 location of the
  file using the `Media` parameter.

  You must include the following parameters in your `StartTranscriptionJob`
  request:

    * `region`: The Amazon Web Services Region where you are making your
  request. For a list of Amazon Web Services Regions supported with Amazon
  Transcribe, refer to [Amazon Transcribe endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

    * `TranscriptionJobName`: A custom name you create for your
  transcription job that is unique within your Amazon Web Services account.

    * `Media` (`MediaFileUri`): The Amazon S3 location of your media
  file.

    * One of `LanguageCode`, `IdentifyLanguage`, or
  `IdentifyMultipleLanguages`: If you know the language of your media file,
  specify it using the `LanguageCode` parameter; you can find all valid language
  codes in the [Supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html)
  table. If you don't know the languages spoken in your media, use either
  `IdentifyLanguage` or `IdentifyMultipleLanguages` and let Amazon Transcribe
  identify the languages for you.
  """
  def start_transcription_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartTranscriptionJob", input, options)
  end

  @doc """
  Adds one or more custom tags, each in the form of a key:value pair, to the
  specified resource.

  To learn more about using tags with Amazon Transcribe, refer to [Tagging resources](https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from the specified Amazon Transcribe resource.

  If you include `UntagResource` in your request, you must also include
  `ResourceArn` and `TagKeys`.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the specified Call Analytics category with new rules.

  Note that the `UpdateCallAnalyticsCategory` operation overwrites all existing
  rules contained in the specified category. You cannot append additional rules
  onto an existing category.

  To create a new category, see .
  """
  def update_call_analytics_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCallAnalyticsCategory", input, options)
  end

  @doc """
  Updates an existing custom medical vocabulary with new values.

  This operation overwrites all existing information with your new values; you
  cannot append new terms onto an existing vocabulary.
  """
  def update_medical_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateMedicalVocabulary", input, options)
  end

  @doc """
  Updates an existing custom vocabulary with new values.

  This operation overwrites all existing information with your new values; you
  cannot append new terms onto an existing vocabulary.
  """
  def update_vocabulary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateVocabulary", input, options)
  end

  @doc """
  Updates an existing custom vocabulary filter with a new list of words.

  The new list you provide overwrites all previous entries; you cannot append new
  terms onto an existing vocabulary filter.
  """
  def update_vocabulary_filter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateVocabularyFilter", input, options)
  end
end
