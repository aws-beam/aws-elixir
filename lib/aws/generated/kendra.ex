# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kendra do
  @moduledoc """
  Amazon Kendra is a service for indexing large document sets.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Grants users or groups in your IAM Identity Center identity source access to
  your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def associate_entities_to_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateEntitiesToExperience", input, options)
  end

  @doc """
  Defines the specific permissions of users or groups in your IAM Identity Center
  identity source with access to your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def associate_personas_to_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociatePersonasToEntities", input, options)
  end

  @doc """
  Removes one or more documents from an index.

  The documents must have been added with the `BatchPutDocument` API.

  The documents are deleted asynchronously. You can see the progress of the
  deletion by using Amazon Web Services CloudWatch. Any error messages related to
  the processing of the batch are sent to you CloudWatch log.
  """
  def batch_delete_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteDocument", input, options)
  end

  @doc """
  Removes one or more sets of featured results.

  Features results are placed above all other results for certain queries. If
  there's an exact match of a query, then one or more specific documents are
  featured in the search results.
  """
  def batch_delete_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteFeaturedResultsSet", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDocumentStatus", input, options)
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

  For an example of ingesting inline documents using Python and Java SDKs, see
  [Adding files directly to an index](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-binary-doc.html).
  """
  def batch_put_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchPutDocument", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "ClearQuerySuggestions", input, options)
  end

  @doc """
  Creates an access configuration for your documents.

  This includes user and group access information for your documents. This is
  useful for user context filtering, where search results are filtered based on
  the user or their group access to documents.

  You can use this to re-configure your existing document level access control
  without indexing all of your documents again. For example, your index contains
  top-secret company documents that only certain employees or users should access.
  One of these users leaves the company or switches to a team that should be
  blocked from accessing top-secret documents. The user still has access to
  top-secret documents because the user had access when your documents were
  previously indexed. You can create a specific access control configuration for
  the user with deny access. You can later update the access control configuration
  to allow access if the user returns to the company and re-joins the 'top-secret'
  team. You can re-configure access control for your documents as circumstances
  change.

  To apply your access control configuration to certain documents, you call the
  [BatchPutDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html) API with the `AccessControlConfigurationId` included in the
  [Document](https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html)
  object. If you use an S3 bucket as a data source, you update the
  `.metadata.json` with the `AccessControlConfigurationId` and synchronize your
  data source. Amazon Kendra currently only supports access control configuration
  for S3 data sources and documents indexed using the `BatchPutDocument` API.
  """
  def create_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccessControlConfiguration", input, options)
  end

  @doc """
  Creates a data source connector that you want to use with an Amazon Kendra
  index.

  You specify a name, data source connector type and description for your data
  source. You also specify configuration information for the data source
  connector.

  `CreateDataSource` is a synchronous operation. The operation returns 200 if the
  data source was successfully created. Otherwise, an exception is raised.

  For an example of creating an index and data source using the Python SDK, see
  [Getting started with Python SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For an
  example of creating an index and data source using the Java SDK, see [Getting started with Java
  SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).
  """
  def create_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataSource", input, options)
  end

  @doc """
  Creates an Amazon Kendra experience such as a search application.

  For more information on creating a search application experience, including
  using the Python and Java SDKs, see [Building a search experience with no code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def create_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExperience", input, options)
  end

  @doc """
  Creates a set of frequently ask questions (FAQs) using a specified FAQ file
  stored in an Amazon S3 bucket.

  Adding FAQs to an index is an asynchronous operation.

  For an example of adding an FAQ to an index using Python and Java SDKs, see
  [Using your FAQ file](https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html#using-faq-file).
  """
  def create_faq(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFaq", input, options)
  end

  @doc """
  Creates a set of featured results to display at the top of the search results
  page.

  Featured results are placed above all other results for certain queries. You map
  specific queries to specific documents for featuring in the results. If a query
  contains an exact match, then one or more specific documents are featured in the
  search results.

  You can create up to 50 sets of featured results per index. You can request to
  increase this limit by contacting [Support](http://aws.amazon.com/contact-us/).
  """
  def create_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFeaturedResultsSet", input, options)
  end

  @doc """
  Creates an Amazon Kendra index.

  Index creation is an asynchronous API. To determine if index creation has
  completed, check the `Status` field returned from a call to `DescribeIndex`. The
  `Status` field is set to `ACTIVE` when the index is ready to use.

  Once the index is active you can index your documents using the
  `BatchPutDocument` API or using one of the supported data sources.

  For an example of creating an index and data source using the Python SDK, see
  [Getting started with Python SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For an
  example of creating an index and data source using the Java SDK, see [Getting started with Java
  SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).
  """
  def create_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIndex", input, options)
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

  For an example of creating a block list for query suggestions using the Python
  SDK, see [Query suggestions block list](https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist).
  """
  def create_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Creates a thesaurus for an index.

  The thesaurus contains a list of synonyms in Solr format.

  For an example of adding a thesaurus file to an index, see [Adding custom synonyms to an
  index](https://docs.aws.amazon.com/kendra/latest/dg/index-synonyms-adding-thesaurus-file.html).
  """
  def create_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateThesaurus", input, options)
  end

  @doc """
  Deletes an access control configuration that you created for your documents in
  an index.

  This includes user and group access information for your documents. This is
  useful for user context filtering, where search results are filtered based on
  the user or their group access to documents.
  """
  def delete_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccessControlConfiguration", input, options)
  end

  @doc """
  Deletes an Amazon Kendra data source connector.

  An exception is not thrown if the data source is already being deleted. While
  the data source is being deleted, the `Status` field returned by a call to the
  `DescribeDataSource` API is set to `DELETING`. For more information, see
  [Deleting Data Sources](https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).
  """
  def delete_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataSource", input, options)
  end

  @doc """
  Deletes your Amazon Kendra experience such as a search application.

  For more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def delete_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteExperience", input, options)
  end

  @doc """
  Removes an FAQ from an index.
  """
  def delete_faq(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFaq", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra index.

  An exception is not thrown if the index is already being deleted. While the
  index is being deleted, the `Status` field returned by a call to the
  `DescribeIndex` API is set to `DELETING`.
  """
  def delete_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIndex", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "DeletePrincipalMapping", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "DeleteQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra thesaurus.
  """
  def delete_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteThesaurus", input, options)
  end

  @doc """
  Gets information about an access control configuration that you created for your
  documents in an index.

  This includes user and group access information for your documents. This is
  useful for user context filtering, where search results are filtered based on
  the user or their group access to documents.
  """
  def describe_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccessControlConfiguration", input, options)
  end

  @doc """
  Gets information about an Amazon Kendra data source connector.
  """
  def describe_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataSource", input, options)
  end

  @doc """
  Gets information about your Amazon Kendra experience such as a search
  application.

  For more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def describe_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExperience", input, options)
  end

  @doc """
  Gets information about an FAQ list.
  """
  def describe_faq(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFaq", input, options)
  end

  @doc """
  Gets information about a set of featured results.

  Features results are placed above all other results for certain queries. If
  there's an exact match of a query, then one or more specific documents are
  featured in the search results.
  """
  def describe_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFeaturedResultsSet", input, options)
  end

  @doc """
  Gets information about an existing Amazon Kendra index.
  """
  def describe_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIndex", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "DescribePrincipalMapping", input, options)
  end

  @doc """
  Gets information about a block list used for query suggestions for an index.

  This is used to check the current settings that are applied to a block list.

  `DescribeQuerySuggestionsBlockList` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def describe_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Gets information on the settings of query suggestions for an index.

  This is used to check the current settings applied to query suggestions.

  `DescribeQuerySuggestionsConfig` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def describe_query_suggestions_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeQuerySuggestionsConfig", input, options)
  end

  @doc """
  Gets information about an existing Amazon Kendra thesaurus.
  """
  def describe_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeThesaurus", input, options)
  end

  @doc """
  Prevents users or groups in your IAM Identity Center identity source from
  accessing your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def disassociate_entities_from_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateEntitiesFromExperience", input, options)
  end

  @doc """
  Removes the specific permissions of users or groups in your IAM Identity Center
  identity source with access to your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def disassociate_personas_from_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociatePersonasFromEntities", input, options)
  end

  @doc """
  Fetches the queries that are suggested to your users.

  `GetQuerySuggestions` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  def get_query_suggestions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQuerySuggestions", input, options)
  end

  @doc """
  Retrieves search metrics data.

  The data provides a snapshot of how your users interact with your search
  application and how effective the application is.
  """
  def get_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSnapshots", input, options)
  end

  @doc """
  Lists one or more access control configurations for an index.

  This includes user and group access information for your documents. This is
  useful for user context filtering, where search results are filtered based on
  the user or their group access to documents.
  """
  def list_access_control_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccessControlConfigurations", input, options)
  end

  @doc """
  Gets statistics about synchronizing a data source connector.
  """
  def list_data_source_sync_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataSourceSyncJobs", input, options)
  end

  @doc """
  Lists the data source connectors that you have created.
  """
  def list_data_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataSources", input, options)
  end

  @doc """
  Lists specific permissions of users and groups with access to your Amazon Kendra
  experience.
  """
  def list_entity_personas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntityPersonas", input, options)
  end

  @doc """
  Lists users or groups in your IAM Identity Center identity source that are
  granted access to your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def list_experience_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExperienceEntities", input, options)
  end

  @doc """
  Lists one or more Amazon Kendra experiences.

  You can create an Amazon Kendra experience such as a search application. For
  more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def list_experiences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExperiences", input, options)
  end

  @doc """
  Gets a list of FAQ lists associated with an index.
  """
  def list_faqs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFaqs", input, options)
  end

  @doc """
  Lists all your sets of featured results for a given index.

  Features results are placed above all other results for certain queries. If
  there's an exact match of a query, then one or more specific documents are
  featured in the search results.
  """
  def list_featured_results_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFeaturedResultsSets", input, options)
  end

  @doc """
  Provides a list of groups that are mapped to users before a given ordering or
  timestamp identifier.

  `ListGroupsOlderThanOrderingId` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def list_groups_older_than_ordering_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGroupsOlderThanOrderingId", input, options)
  end

  @doc """
  Lists the Amazon Kendra indexes that you created.
  """
  def list_indices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIndices", input, options)
  end

  @doc """
  Lists the block lists used for query suggestions for an index.

  For information on the current quota limits for block lists, see [Quotas for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

  `ListQuerySuggestionsBlockLists` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def list_query_suggestions_block_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQuerySuggestionsBlockLists", input, options)
  end

  @doc """
  Gets a list of tags associated with a specified resource.

  Indexes, FAQs, and data sources can have tags associated with them.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the thesauri for an index.
  """
  def list_thesauri(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListThesauri", input, options)
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

  This is useful for user context filtering, where search results are filtered
  based on the user or their group access to documents. For more information, see
  [Filtering on user context](https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html).

  If more than five `PUT` actions for a group are currently processing, a
  validation exception is thrown.
  """
  def put_principal_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPrincipalMapping", input, options)
  end

  @doc """
  Searches an index given an input query.

  You can configure boosting or relevance tuning at the query level to override
  boosting at the index level, filter based on document fields/attributes and
  faceted search, and filter based on the user or their group access to documents.
  You can also include certain fields in the response that might provide useful
  additional information.

  A query response contains three types of results.

    * Relevant suggested answers. The answers can be either a text
  excerpt or table excerpt. The answer can be highlighted in the excerpt.

    * Matching FAQs or questions-answer from your FAQ file.

    * Relevant documents. This result type includes an excerpt of the
  document with the document title. The searched terms can be highlighted in the
  excerpt.

  You can specify that the query return only one type of result using the
  `QueryResultTypeFilter` parameter. Each query returns the 100 most relevant
  results. If you filter result type to only question-answers, a maximum of four
  results are returned. If you filter result type to only answers, a maximum of
  three results are returned.
  """
  def query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Query", input, options)
  end

  @doc """
  Retrieves relevant passages or text excerpts given an input query.

  This API is similar to the
  [Query](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Query.html)
  API. However, by default, the `Query` API only returns excerpt passages of up to
  100 token words. With the `Retrieve` API, you can retrieve longer passages of up
  to 200 token words and up to 100 semantically relevant passages. This doesn't
  include question-answer or FAQ type responses from your index. The passages are
  text excerpts that can be semantically extracted from multiple documents and
  multiple parts of the same document. If in extreme cases your documents produce
  no relevant passages using the `Retrieve` API, you can alternatively use the
  `Query` API.

  You can also do the following:

    * Override boosting at the index level

    * Filter based on document fields or attributes

    * Filter based on the user or their group access to documents

  You can also include certain fields in the response that might provide useful
  additional information.
  """
  def retrieve(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Retrieve", input, options)
  end

  @doc """
  Starts a synchronization job for a data source connector.

  If a synchronization job is already in progress, Amazon Kendra returns a
  `ResourceInUseException` exception.
  """
  def start_data_source_sync_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDataSourceSyncJob", input, options)
  end

  @doc """
  Stops a synchronization job that is currently running.

  You can't stop a scheduled synchronization job.
  """
  def stop_data_source_sync_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDataSourceSyncJob", input, options)
  end

  @doc """
  Enables you to provide feedback to Amazon Kendra to improve the performance of
  your index.

  `SubmitFeedback` is currently not supported in the Amazon Web Services GovCloud
  (US-West) region.
  """
  def submit_feedback(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitFeedback", input, options)
  end

  @doc """
  Adds the specified tag to the specified index, FAQ, or data source resource.

  If the tag already exists, the existing value is replaced with the new value.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag from an index, FAQ, or a data source.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an access control configuration for your documents in an index.

  This includes user and group access information for your documents. This is
  useful for user context filtering, where search results are filtered based on
  the user or their group access to documents.

  You can update an access control configuration you created without indexing all
  of your documents again. For example, your index contains top-secret company
  documents that only certain employees or users should access. You created an
  'allow' access control configuration for one user who recently joined the
  'top-secret' team, switching from a team with 'deny' access to top-secret
  documents. However, the user suddenly returns to their previous team and should
  no longer have access to top secret documents. You can update the access control
  configuration to re-configure access control for your documents as circumstances
  change.

  You call the
  [BatchPutDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html) API to apply the updated access control configuration, with the
  `AccessControlConfigurationId` included in the
  [Document](https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html)
  object. If you use an S3 bucket as a data source, you synchronize your data
  source to apply the `AccessControlConfigurationId` in the `.metadata.json` file.
  Amazon Kendra currently only supports access control configuration for S3 data
  sources and documents indexed using the `BatchPutDocument` API.
  """
  def update_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccessControlConfiguration", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra data source connector.
  """
  def update_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDataSource", input, options)
  end

  @doc """
  Updates your Amazon Kendra experience such as a search application.

  For more information on creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  def update_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateExperience", input, options)
  end

  @doc """
  Updates a set of featured results.

  Features results are placed above all other results for certain queries. You map
  specific queries to specific documents for featuring in the results. If a query
  contains an exact match of a query, then one or more specific documents are
  featured in the search results.
  """
  def update_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFeaturedResultsSet", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra index.
  """
  def update_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIndex", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "UpdateQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Updates the settings of query suggestions for an index.

  Amazon Kendra supports partial updates, so you only need to provide the fields
  you want to update.

  If an update is currently processing, you need to wait for the update to finish
  before making another update.

  Updates to query suggestions settings might not take effect right away. The time
  for your updated settings to take effect depends on the updates made and the
  number of search queries in your index.

  You can still enable/disable query suggestions at any time.

  `UpdateQuerySuggestionsConfig` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  def update_query_suggestions_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateQuerySuggestionsConfig", input, options)
  end

  @doc """
  Updates a thesaurus for an index.
  """
  def update_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateThesaurus", input, options)
  end
end
