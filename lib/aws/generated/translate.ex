# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Translate do
  @moduledoc """
  Provides translation of the input content from the source language to the target
  language.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2017-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "translate",
      global?: false,
      protocol: "json",
      service_id: "Translate",
      signature_version: "v4",
      signing_name: "translate",
      target_prefix: "AWSShineFrontendService_20170701"
    }
  end

  @doc """
  Creates a parallel data resource in Amazon Translate by importing an input file
  from
  Amazon S3.

  Parallel data files contain examples that show how you want segments of text to
  be
  translated. By adding parallel data, you can influence the style, tone, and word
  choice in
  your translation output.
  """
  def create_parallel_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateParallelData", input, options)
  end

  @doc """
  Deletes a parallel data resource in Amazon Translate.
  """
  def delete_parallel_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteParallelData", input, options)
  end

  @doc """
  A synchronous action that deletes a custom terminology.
  """
  def delete_terminology(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTerminology", input, options)
  end

  @doc """
  Gets the properties associated with an asynchronous batch translation job
  including name,
  ID, status, source and target languages, input/output S3 buckets, and so on.
  """
  def describe_text_translation_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTextTranslationJob", input, options)
  end

  @doc """
  Provides information about a parallel data resource.
  """
  def get_parallel_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetParallelData", input, options)
  end

  @doc """
  Retrieves a custom terminology.
  """
  def get_terminology(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTerminology", input, options)
  end

  @doc """
  Creates or updates a custom terminology, depending on whether one already exists
  for the
  given terminology name.

  Importing a terminology with the same name as an existing one will
  merge the terminologies based on the chosen merge strategy. The only supported
  merge strategy
  is OVERWRITE, where the imported terminology overwrites the existing terminology
  of the same
  name.

  If you import a terminology that overwrites an existing one, the new terminology
  takes up
  to 10 minutes to fully propagate. After that, translations have access to the
  new
  terminology.
  """
  def import_terminology(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportTerminology", input, options)
  end

  @doc """
  Provides a list of languages (RFC-5646 codes and names) that Amazon Translate
  supports.
  """
  def list_languages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLanguages", input, options)
  end

  @doc """
  Provides a list of your parallel data resources in Amazon Translate.
  """
  def list_parallel_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListParallelData", input, options)
  end

  @doc """
  Lists all tags associated with a given Amazon Translate resource.

  For more information, see [
  Tagging your
  resources](https://docs.aws.amazon.com/translate/latest/dg/tagging.html).
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Provides a list of custom terminologies associated with your account.
  """
  def list_terminologies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTerminologies", input, options)
  end

  @doc """
  Gets a list of the batch translation jobs that you have submitted.
  """
  def list_text_translation_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTextTranslationJobs", input, options)
  end

  @doc """
  Starts an asynchronous batch translation job.

  Use batch translation jobs to
  translate large volumes of text across multiple documents at once.
  For batch translation, you can input documents with different source languages
  (specify `auto`
  as the source language). You can specify one
  or more target languages. Batch translation translates each input document into
  each of the target languages.
  For more information, see
  [Asynchronous batch processing](https://docs.aws.amazon.com/translate/latest/dg/async.html).

  Batch translation jobs can be described with the `DescribeTextTranslationJob`
  operation, listed with the `ListTextTranslationJobs` operation, and stopped with
  the `StopTextTranslationJob` operation.
  """
  def start_text_translation_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTextTranslationJob", input, options)
  end

  @doc """
  Stops an asynchronous batch translation job that is in progress.

  If the job's state is `IN_PROGRESS`, the job will be marked for termination and
  put into the `STOP_REQUESTED` state. If the job completes before it can be
  stopped,
  it is put into the `COMPLETED` state. Otherwise, the job is put into the
  `STOPPED` state.

  Asynchronous batch translation jobs are started with the
  `StartTextTranslationJob` operation. You can use the
  `DescribeTextTranslationJob` or `ListTextTranslationJobs`
  operations to get a batch translation job's `JobId`.
  """
  def stop_text_translation_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTextTranslationJob", input, options)
  end

  @doc """
  Associates a specific tag with a resource.

  A tag is a key-value pair
  that adds as a metadata to a resource.
  For more information, see [
  Tagging your
  resources](https://docs.aws.amazon.com/translate/latest/dg/tagging.html).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Translates the input document from the source language to the target language.

  This synchronous operation supports text, HTML, or Word documents as the input
  document.

  `TranslateDocument` supports translations from English to any supported
  language,
  and from any supported language to English. Therefore, specify either the source
  language code
  or the target language code as “en” (English).

  If you set the `Formality` parameter, the request will fail if the target
  language does
  not support formality. For a list of target languages that support formality,
  see
  [Setting formality](https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html).
  """
  def translate_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TranslateDocument", input, options)
  end

  @doc """
  Translates input text from the source language to the target language.

  For a list of
  available languages and language codes, see [Supported languages](https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).
  """
  def translate_text(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TranslateText", input, options)
  end

  @doc """
  Removes a specific tag associated with an Amazon Translate resource.

  For more information, see [
  Tagging your
  resources](https://docs.aws.amazon.com/translate/latest/dg/tagging.html).
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a previously created parallel data resource by importing a new input
  file from
  Amazon S3.
  """
  def update_parallel_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateParallelData", input, options)
  end
end
