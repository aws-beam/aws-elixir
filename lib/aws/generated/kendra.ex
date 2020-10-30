# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kendra do
  @moduledoc """
  Amazon Kendra is a service for indexing large document sets.
  """

  @doc """
  Removes one or more documents from an index. The documents must have been
  added with the `BatchPutDocument` operation.

  The documents are deleted asynchronously. You can see the progress of the
  deletion by using AWS CloudWatch. Any error messages releated to the
  processing of the batch are sent to you CloudWatch log.
  """
  def batch_delete_document(client, input, options \\ []) do
    request(client, "BatchDeleteDocument", input, options)
  end

  @doc """
  Adds one or more documents to an index.

  The `BatchPutDocument` operation enables you to ingest inline documents or
  a set of documents stored in an Amazon S3 bucket. Use this operation to
  ingest your text and unstructured text into an index, add custom attributes
  to the documents, and to attach an access control list to the documents
  added to the index.

  The documents are indexed asynchronously. You can see the progress of the
  batch using AWS CloudWatch. Any error messages related to processing the
  batch are sent to your AWS CloudWatch log.
  """
  def batch_put_document(client, input, options \\ []) do
    request(client, "BatchPutDocument", input, options)
  end

  @doc """
  Creates a data source that you use to with an Amazon Kendra index.

  You specify a name, data source connector type and description for your
  data source. You also specify configuration information such as document
  metadata (author, source URI, and so on) and user context information.

  `CreateDataSource` is a synchronous operation. The operation returns 200 if
  the data source was successfully created. Otherwise, an exception is
  raised.
  """
  def create_data_source(client, input, options \\ []) do
    request(client, "CreateDataSource", input, options)
  end

  @doc """
  Creates an new set of frequently asked question (FAQ) questions and
  answers.
  """
  def create_faq(client, input, options \\ []) do
    request(client, "CreateFaq", input, options)
  end

  @doc """
  Creates a new Amazon Kendra index. Index creation is an asynchronous
  operation. To determine if index creation has completed, check the `Status`
  field returned from a call to . The `Status` field is set to `ACTIVE` when
  the index is ready to use.

  Once the index is active you can index your documents using the operation
  or using one of the supported data sources.
  """
  def create_index(client, input, options \\ []) do
    request(client, "CreateIndex", input, options)
  end

  @doc """
  Deletes an Amazon Kendra data source. An exception is not thrown if the
  data source is already being deleted. While the data source is being
  deleted, the `Status` field returned by a call to the operation is set to
  `DELETING`. For more information, see [Deleting Data
  Sources](https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).
  """
  def delete_data_source(client, input, options \\ []) do
    request(client, "DeleteDataSource", input, options)
  end

  @doc """
  Removes an FAQ from an index.
  """
  def delete_faq(client, input, options \\ []) do
    request(client, "DeleteFaq", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra index. An exception is not thrown if the
  index is already being deleted. While the index is being deleted, the
  `Status` field returned by a call to the `DescribeIndex` operation is set
  to `DELETING`.
  """
  def delete_index(client, input, options \\ []) do
    request(client, "DeleteIndex", input, options)
  end

  @doc """
  Gets information about a Amazon Kendra data source.
  """
  def describe_data_source(client, input, options \\ []) do
    request(client, "DescribeDataSource", input, options)
  end

  @doc """
  Gets information about an FAQ list.
  """
  def describe_faq(client, input, options \\ []) do
    request(client, "DescribeFaq", input, options)
  end

  @doc """
  Describes an existing Amazon Kendra index
  """
  def describe_index(client, input, options \\ []) do
    request(client, "DescribeIndex", input, options)
  end

  @doc """
  Gets statistics about synchronizing Amazon Kendra with a data source.
  """
  def list_data_source_sync_jobs(client, input, options \\ []) do
    request(client, "ListDataSourceSyncJobs", input, options)
  end

  @doc """
  Lists the data sources that you have created.
  """
  def list_data_sources(client, input, options \\ []) do
    request(client, "ListDataSources", input, options)
  end

  @doc """
  Gets a list of FAQ lists associated with an index.
  """
  def list_faqs(client, input, options \\ []) do
    request(client, "ListFaqs", input, options)
  end

  @doc """
  Lists the Amazon Kendra indexes that you have created.
  """
  def list_indices(client, input, options \\ []) do
    request(client, "ListIndices", input, options)
  end

  @doc """
  Gets a list of tags associated with a specified resource. Indexes, FAQs,
  and data sources can have tags associated with them.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Searches an active index. Use this API to search your documents using
  query. The `Query` operation enables to do faceted search and to filter
  results based on document attributes.

  It also enables you to provide user context that Amazon Kendra uses to
  enforce document access control in the search results.

  Amazon Kendra searches your index for text content and question and answer
  (FAQ) content. By default the response contains three types of results.

  <ul> <li> Relevant passages

  </li> <li> Matching FAQs

  </li> <li> Relevant documents

  </li> </ul> You can specify that the query return only one type of result
  using the `QueryResultTypeConfig` parameter.

  Each query returns the 100 most relevant results.
  """
  def query(client, input, options \\ []) do
    request(client, "Query", input, options)
  end

  @doc """
  Starts a synchronization job for a data source. If a synchronization job is
  already in progress, Amazon Kendra returns a `ResourceInUseException`
  exception.
  """
  def start_data_source_sync_job(client, input, options \\ []) do
    request(client, "StartDataSourceSyncJob", input, options)
  end

  @doc """
  Stops a running synchronization job. You can't stop a scheduled
  synchronization job.
  """
  def stop_data_source_sync_job(client, input, options \\ []) do
    request(client, "StopDataSourceSyncJob", input, options)
  end

  @doc """
  Enables you to provide feedback to Amazon Kendra to improve the performance
  of the service.
  """
  def submit_feedback(client, input, options \\ []) do
    request(client, "SubmitFeedback", input, options)
  end

  @doc """
  Adds the specified tag to the specified index, FAQ, or data source
  resource. If the tag already exists, the existing value is replaced with
  the new value.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes a tag from an index, FAQ, or a data source.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra data source.
  """
  def update_data_source(client, input, options \\ []) do
    request(client, "UpdateDataSource", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra index.
  """
  def update_index(client, input, options \\ []) do
    request(client, "UpdateIndex", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "kendra"}
    host = build_host("kendra", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSKendraFrontendService.#{action}"}
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

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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
