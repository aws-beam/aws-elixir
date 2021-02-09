# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kendra do
  @moduledoc """
  Amazon Kendra is a service for indexing large document sets.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "kendra",
      api_version: "2019-02-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kendra",
      global?: false,
      protocol: "json",
      service_id: "kendra",
      signature_version: "v4",
      signing_name: "kendra",
      target_prefix: "AWSKendraFrontendService"
    }
  end

  @doc """
  Removes one or more documents from an index.

  The documents must have been added with the `BatchPutDocument` operation.

  The documents are deleted asynchronously. You can see the progress of the
  deletion by using AWS CloudWatch. Any error messages releated to the processing
  of the batch are sent to you CloudWatch log.
  """
  def batch_delete_document(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDeleteDocument", input, options)
  end

  @doc """
  Adds one or more documents to an index.

  The `BatchPutDocument` operation enables you to ingest inline documents or a set
  of documents stored in an Amazon S3 bucket. Use this operation to ingest your
  text and unstructured text into an index, add custom attributes to the
  documents, and to attach an access control list to the documents added to the
  index.

  The documents are indexed asynchronously. You can see the progress of the batch
  using AWS CloudWatch. Any error messages related to processing the batch are
  sent to your AWS CloudWatch log.
  """
  def batch_put_document(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchPutDocument", input, options)
  end

  @doc """
  Creates a data source that you use to with an Amazon Kendra index.

  You specify a name, data source connector type and description for your data
  source. You also specify configuration information such as document metadata
  (author, source URI, and so on) and user context information.

  `CreateDataSource` is a synchronous operation. The operation returns 200 if the
  data source was successfully created. Otherwise, an exception is raised.
  """
  def create_data_source(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDataSource", input, options)
  end

  @doc """
  Creates an new set of frequently asked question (FAQ) questions and answers.
  """
  def create_faq(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFaq", input, options)
  end

  @doc """
  Creates a new Amazon Kendra index.

  Index creation is an asynchronous operation. To determine if index creation has
  completed, check the `Status` field returned from a call to . The `Status` field
  is set to `ACTIVE` when the index is ready to use.

  Once the index is active you can index your documents using the operation or
  using one of the supported data sources.
  """
  def create_index(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateIndex", input, options)
  end

  @doc """
  Creates a thesaurus for an index.

  The thesaurus contains a list of synonyms in Solr format.
  """
  def create_thesaurus(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateThesaurus", input, options)
  end

  @doc """
  Deletes an Amazon Kendra data source.

  An exception is not thrown if the data source is already being deleted. While
  the data source is being deleted, the `Status` field returned by a call to the
  operation is set to `DELETING`. For more information, see [Deleting Data Sources](https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).
  """
  def delete_data_source(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDataSource", input, options)
  end

  @doc """
  Removes an FAQ from an index.
  """
  def delete_faq(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFaq", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra index.

  An exception is not thrown if the index is already being deleted. While the
  index is being deleted, the `Status` field returned by a call to the
  `DescribeIndex` operation is set to `DELETING`.
  """
  def delete_index(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteIndex", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra thesaurus.
  """
  def delete_thesaurus(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteThesaurus", input, options)
  end

  @doc """
  Gets information about a Amazon Kendra data source.
  """
  def describe_data_source(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDataSource", input, options)
  end

  @doc """
  Gets information about an FAQ list.
  """
  def describe_faq(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFaq", input, options)
  end

  @doc """
  Describes an existing Amazon Kendra index
  """
  def describe_index(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeIndex", input, options)
  end

  @doc """
  Describes an existing Amazon Kendra thesaurus.
  """
  def describe_thesaurus(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeThesaurus", input, options)
  end

  @doc """
  Gets statistics about synchronizing Amazon Kendra with a data source.
  """
  def list_data_source_sync_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDataSourceSyncJobs", input, options)
  end

  @doc """
  Lists the data sources that you have created.
  """
  def list_data_sources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDataSources", input, options)
  end

  @doc """
  Gets a list of FAQ lists associated with an index.
  """
  def list_faqs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFaqs", input, options)
  end

  @doc """
  Lists the Amazon Kendra indexes that you have created.
  """
  def list_indices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListIndices", input, options)
  end

  @doc """
  Gets a list of tags associated with a specified resource.

  Indexes, FAQs, and data sources can have tags associated with them.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Lists the Amazon Kendra thesauri associated with an index.
  """
  def list_thesauri(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListThesauri", input, options)
  end

  @doc """
  Searches an active index.

  Use this API to search your documents using query. The `Query` operation enables
  to do faceted search and to filter results based on document attributes.

  It also enables you to provide user context that Amazon Kendra uses to enforce
  document access control in the search results.

  Amazon Kendra searches your index for text content and question and answer (FAQ)
  content. By default the response contains three types of results.

    * Relevant passages

    * Matching FAQs

    * Relevant documents

  You can specify that the query return only one type of result using the
  `QueryResultTypeConfig` parameter.

  Each query returns the 100 most relevant results.
  """
  def query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Query", input, options)
  end

  @doc """
  Starts a synchronization job for a data source.

  If a synchronization job is already in progress, Amazon Kendra returns a
  `ResourceInUseException` exception.
  """
  def start_data_source_sync_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDataSourceSyncJob", input, options)
  end

  @doc """
  Stops a running synchronization job.

  You can't stop a scheduled synchronization job.
  """
  def stop_data_source_sync_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopDataSourceSyncJob", input, options)
  end

  @doc """
  Enables you to provide feedback to Amazon Kendra to improve the performance of
  the service.
  """
  def submit_feedback(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SubmitFeedback", input, options)
  end

  @doc """
  Adds the specified tag to the specified index, FAQ, or data source resource.

  If the tag already exists, the existing value is replaced with the new value.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes a tag from an index, FAQ, or a data source.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra data source.
  """
  def update_data_source(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDataSource", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra index.
  """
  def update_index(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateIndex", input, options)
  end

  @doc """
  Updates a thesaurus file associated with an index.
  """
  def update_thesaurus(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateThesaurus", input, options)
  end
end