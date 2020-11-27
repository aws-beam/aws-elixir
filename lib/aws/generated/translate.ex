# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Translate do
  @moduledoc """
  Provides translation between one source language and another of the same set of
  languages.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  from Amazon S3.

  Parallel data files contain examples of source phrases and their translations
  from your translation memory. By adding parallel data, you can influence the
  style, tone, and word choice in your translation output.
  """
  def create_parallel_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateParallelData", input, options)
  end

  @doc """
  Deletes a parallel data resource in Amazon Translate.
  """
  def delete_parallel_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteParallelData", input, options)
  end

  @doc """
  A synchronous action that deletes a custom terminology.
  """
  def delete_terminology(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTerminology", input, options)
  end

  @doc """
  Gets the properties associated with an asycnhronous batch translation job
  including name, ID, status, source and target languages, input/output S3
  buckets, and so on.
  """
  def describe_text_translation_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTextTranslationJob", input, options)
  end

  @doc """
  Provides information about a parallel data resource.
  """
  def get_parallel_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetParallelData", input, options)
  end

  @doc """
  Retrieves a custom terminology.
  """
  def get_terminology(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTerminology", input, options)
  end

  @doc """
  Creates or updates a custom terminology, depending on whether or not one already
  exists for the given terminology name.

  Importing a terminology with the same name as an existing one will merge the
  terminologies based on the chosen merge strategy. Currently, the only supported
  merge strategy is OVERWRITE, and so the imported terminology will overwrite an
  existing terminology of the same name.

  If you import a terminology that overwrites an existing one, the new terminology
  take up to 10 minutes to fully propagate and be available for use in a
  translation due to cache policies with the DataPlane service that performs the
  translations.
  """
  def import_terminology(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportTerminology", input, options)
  end

  @doc """
  Provides a list of your parallel data resources in Amazon Translate.
  """
  def list_parallel_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListParallelData", input, options)
  end

  @doc """
  Provides a list of custom terminologies associated with your account.
  """
  def list_terminologies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTerminologies", input, options)
  end

  @doc """
  Gets a list of the batch translation jobs that you have submitted.
  """
  def list_text_translation_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTextTranslationJobs", input, options)
  end

  @doc """
  Starts an asynchronous batch translation job.

  Batch translation jobs can be used to translate large volumes of text across
  multiple documents at once. For more information, see `async`.

  Batch translation jobs can be described with the `DescribeTextTranslationJob`
  operation, listed with the `ListTextTranslationJobs` operation, and stopped with
  the `StopTextTranslationJob` operation.

  Amazon Translate does not support batch translation of multiple source languages
  at once.
  """
  def start_text_translation_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartTextTranslationJob", input, options)
  end

  @doc """
  Stops an asynchronous batch translation job that is in progress.

  If the job's state is `IN_PROGRESS`, the job will be marked for termination and
  put into the `STOP_REQUESTED` state. If the job completes before it can be
  stopped, it is put into the `COMPLETED` state. Otherwise, the job is put into
  the `STOPPED` state.

  Asynchronous batch translation jobs are started with the
  `StartTextTranslationJob` operation. You can use the
  `DescribeTextTranslationJob` or `ListTextTranslationJobs` operations to get a
  batch translation job's `JobId`.
  """
  def stop_text_translation_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopTextTranslationJob", input, options)
  end

  @doc """
  Translates input text from the source language to the target language.

  For a list of available languages and language codes, see `what-is-languages`.
  """
  def translate_text(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TranslateText", input, options)
  end

  @doc """
  Updates a previously created parallel data resource by importing a new input
  file from Amazon S3.
  """
  def update_parallel_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateParallelData", input, options)
  end
end