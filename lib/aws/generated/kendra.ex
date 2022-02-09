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
  Grants users or groups in your Amazon Web Services SSO identity source access to
  your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def associate_entities_to_experience(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateEntitiesToExperience", input, options)
  end

  @doc """
  Defines the specific permissions of users or groups in your Amazon Web Services
  SSO identity source with access to your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def associate_personas_to_entities(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociatePersonasToEntities", input, options)
  end

  @doc """
  Removes one or more documents from an index.

  The documents must have been added with the `BatchPutDocument` API.

  The documents are deleted asynchronously. You can see the progress of the
  deletion by using Amazon Web Services CloudWatch. Any error messages related to
  the processing of the batch are sent to you CloudWatch log.
  """
  def batch_delete_document(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDeleteDocument", input, options)
  end

  @doc """
  Returns the indexing status for one or more documents submitted with the [
  BatchPutDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html)
  API.

  When you use the `BatchPutDocument` API, documents are indexed asynchronously.
  You can use the `BatchGetDocumentStatus` API to get the current status of a list
  of documents so that you can determine if they have been successfully indexed.

  You can also use the `BatchGetDocumentStatus` API to check the status of the [
  BatchDeleteDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html)
  API. When a document is deleted from the index, Amazon Kendra returns
  `NOT_FOUND` as the status.
  """
  def batch_get_document_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetDocumentStatus", input, options)
  end

  @doc """
  Adds one or more documents to an index.

  The `BatchPutDocument` API enables you to ingest inline documents or a set of
  documents stored in an Amazon S3 bucket. Use this API to ingest your text and
  unstructured text into an index, add custom attributes to the documents, and to
  attach an access control list to the documents added to the index.

  The documents are indexed asynchronously. You can see the progress of the batch
  using Amazon Web Services CloudWatch. Any error messages related to processing
  the batch are sent to your Amazon Web Services CloudWatch log.
  """
  def batch_put_document(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchPutDocument", input, options)
  end

  @doc """
  Clears existing query suggestions from an index.

  This deletes existing suggestions only, not the queries in the query log. After
  you clear suggestions, Amazon Kendra learns new suggestions based on new queries
  added to the query log from the time you cleared suggestions. If you do not see
  any new suggestions, then please allow Amazon Kendra to collect enough queries
  to learn new suggestions.

  `ClearQuerySuggestions` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  def clear_query_suggestions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ClearQuerySuggestions", input, options)
  end

  @doc """
  Creates a data source that you want to use with an Amazon Kendra index.

  You specify a name, data source connector type and description for your data
  source. You also specify configuration information for the data source
  connector.

  `CreateDataSource` is a synchronous operation. The operation returns 200 if the
  data source was successfully created. Otherwise, an exception is raised.

  Amazon S3 and
  [custom](https://docs.aws.amazon.com/kendra/latest/dg/data-source-custom.html)
  data sources are the only supported data sources in the Amazon Web Services
  GovCloud (US-West) region.
  """
  def create_data_source(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDataSource", input, options)
  end

  @doc """
  Creates an Amazon Kendra experience such as a search application.

  For more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def create_experience(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateExperience", input, options)
  end

  @doc """
  Creates an new set of frequently asked question (FAQ) questions and answers.

  Adding FAQs to an index is an asynchronous operation.
  """
  def create_faq(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFaq", input, options)
  end

  @doc """
  Creates a new Amazon Kendra index.

  Index creation is an asynchronous API. To determine if index creation has
  completed, check the `Status` field returned from a call to `DescribeIndex`. The
  `Status` field is set to `ACTIVE` when the index is ready to use.

  Once the index is active you can index your documents using the
  `BatchPutDocument` API or using one of the supported data sources.
  """
  def create_index(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateIndex", input, options)
  end

  @doc """
  Creates a block list to exlcude certain queries from suggestions.

  Any query that contains words or phrases specified in the block list is blocked
  or filtered out from being shown as a suggestion.

  You need to provide the file location of your block list text file in your S3
  bucket. In your text file, enter each block word or phrase on a separate line.

  For information on the current quota limits for block lists, see [Quotas for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

  `CreateQuerySuggestionsBlockList` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def create_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateQuerySuggestionsBlockList", input, options)
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
  `DescribeDataSource` API is set to `DELETING`. For more information, see
  [Deleting Data Sources](https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).
  """
  def delete_data_source(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDataSource", input, options)
  end

  @doc """
  Deletes your Amazon Kendra experience such as a search application.

  For more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def delete_experience(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteExperience", input, options)
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
  `DescribeIndex` API is set to `DELETING`.
  """
  def delete_index(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteIndex", input, options)
  end

  @doc """
  Deletes a group so that all users and sub groups that belong to the group can no
  longer access documents only available to that group.

  For example, after deleting the group "Summer Interns", all interns who belonged
  to that group no longer see intern-only documents in their search results.

  If you want to delete or replace users or sub groups of a group, you need to use
  the `PutPrincipalMapping` operation. For example, if a user in the group
  "Engineering" leaves the engineering team and another user takes their place,
  you provide an updated list of users or sub groups that belong to the
  "Engineering" group when calling `PutPrincipalMapping`. You can update your
  internal list of users or sub groups and input this list when calling
  `PutPrincipalMapping`.

  `DeletePrincipalMapping` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  def delete_principal_mapping(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePrincipalMapping", input, options)
  end

  @doc """
  Deletes a block list used for query suggestions for an index.

  A deleted block list might not take effect right away. Amazon Kendra needs to
  refresh the entire suggestions list to add back the queries that were previously
  blocked.

  `DeleteQuerySuggestionsBlockList` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def delete_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra thesaurus.
  """
  def delete_thesaurus(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteThesaurus", input, options)
  end

  @doc """
  Gets information about an Amazon Kendra data source.
  """
  def describe_data_source(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDataSource", input, options)
  end

  @doc """
  Gets information about your Amazon Kendra experience such as a search
  application.

  For more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def describe_experience(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExperience", input, options)
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
  Describes the processing of `PUT` and `DELETE` actions for mapping users to
  their groups.

  This includes information on the status of actions currently processing or yet
  to be processed, when actions were last updated, when actions were received by
  Amazon Kendra, the latest action that should process and apply after other
  actions, and useful error messages if an action could not be processed.

  `DescribePrincipalMapping` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  def describe_principal_mapping(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePrincipalMapping", input, options)
  end

  @doc """
  Describes a block list used for query suggestions for an index.

  This is used to check the current settings that are applied to a block list.

  `DescribeQuerySuggestionsBlockList` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def describe_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Describes the settings of query suggestions for an index.

  This is used to check the current settings applied to query suggestions.

  `DescribeQuerySuggestionsConfig` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def describe_query_suggestions_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeQuerySuggestionsConfig", input, options)
  end

  @doc """
  Describes an existing Amazon Kendra thesaurus.
  """
  def describe_thesaurus(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeThesaurus", input, options)
  end

  @doc """
  Prevents users or groups in your Amazon Web Services SSO identity source from
  accessing your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def disassociate_entities_from_experience(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateEntitiesFromExperience", input, options)
  end

  @doc """
  Removes the specific permissions of users or groups in your Amazon Web Services
  SSO identity source with access to your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def disassociate_personas_from_entities(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociatePersonasFromEntities", input, options)
  end

  @doc """
  Fetches the queries that are suggested to your users.

  `GetQuerySuggestions` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  def get_query_suggestions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetQuerySuggestions", input, options)
  end

  @doc """
  Retrieves search metrics data.

  The data provides a snapshot of how your users interact with your search
  application and how effective the application is.
  """
  def get_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSnapshots", input, options)
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
  Lists specific permissions of users and groups with access to your Amazon Kendra
  experience.
  """
  def list_entity_personas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEntityPersonas", input, options)
  end

  @doc """
  Lists users or groups in your Amazon Web Services SSO identity source that are
  granted access to your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def list_experience_entities(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListExperienceEntities", input, options)
  end

  @doc """
  Lists one or more Amazon Kendra experiences.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def list_experiences(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListExperiences", input, options)
  end

  @doc """
  Gets a list of FAQ lists associated with an index.
  """
  def list_faqs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFaqs", input, options)
  end

  @doc """
  Provides a list of groups that are mapped to users before a given ordering or
  timestamp identifier.

  `ListGroupsOlderThanOrderingId` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def list_groups_older_than_ordering_id(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroupsOlderThanOrderingId", input, options)
  end

  @doc """
  Lists the Amazon Kendra indexes that you have created.
  """
  def list_indices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListIndices", input, options)
  end

  @doc """
  Lists the block lists used for query suggestions for an index.

  For information on the current quota limits for block lists, see [Quotas for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

  `ListQuerySuggestionsBlockLists` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def list_query_suggestions_block_lists(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListQuerySuggestionsBlockLists", input, options)
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
  Maps users to their groups so that you only need to provide the user ID when you
  issue the query.

  You can also map sub groups to groups. For example, the group "Company
  Intellectual Property Teams" includes sub groups "Research" and "Engineering".
  These sub groups include their own list of users or people who work in these
  teams. Only users who work in research and engineering, and therefore belong in
  the intellectual property group, can see top-secret company documents in their
  search results.

  You map users to their groups when you want to filter search results for
  different users based on their group’s access to documents. For more information
  on filtering search results for different users, see [Filtering on user context](https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html).

  If more than five `PUT` actions for a group are currently processing, a
  validation exception is thrown.

  `PutPrincipalMapping` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  def put_principal_mapping(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutPrincipalMapping", input, options)
  end

  @doc """
  Searches an active index.

  Use this API to search your documents using query. The `Query` API enables to do
  faceted search and to filter results based on document attributes.

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
  Stops a synchronization job that is currently running.

  You can't stop a scheduled synchronization job.
  """
  def stop_data_source_sync_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopDataSourceSyncJob", input, options)
  end

  @doc """
  Enables you to provide feedback to Amazon Kendra to improve the performance of
  your index.

  `SubmitFeedback` is currently not supported in the Amazon Web Services GovCloud
  (US-West) region.
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
  Updates your Amazon Kendra experience such as a search application.

  For more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def update_experience(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateExperience", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra index.
  """
  def update_index(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateIndex", input, options)
  end

  @doc """
  Updates a block list used for query suggestions for an index.

  Updates to a block list might not take effect right away. Amazon Kendra needs to
  refresh the entire suggestions list to apply any updates to the block list.
  Other changes not related to the block list apply immediately.

  If a block list is updating, then you need to wait for the first update to
  finish before submitting another update.

  Amazon Kendra supports partial updates, so you only need to provide the fields
  you want to update.

  `UpdateQuerySuggestionsBlockList` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def update_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Updates the settings of query suggestions for an index.

  Amazon Kendra supports partial updates, so you only need to provide the fields
  you want to update.

  If an update is currently processing (i.e. 'happening'), you need to wait for
  the update to finish before making another update.

  Updates to query suggestions settings might not take effect right away. The time
  for your updated settings to take effect depends on the updates made and the
  number of search queries in your index.

  You can still enable/disable query suggestions at any time.

  `UpdateQuerySuggestionsConfig` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def update_query_suggestions_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateQuerySuggestionsConfig", input, options)
  end

  @doc """
  Updates a thesaurus file associated with an index.
  """
  def update_thesaurus(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateThesaurus", input, options)
  end
end
