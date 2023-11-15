# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceExplorer2 do
  @moduledoc """
  Amazon Web Services Resource Explorer is a resource search and discovery
  service.

  By using Resource Explorer, you can explore your resources using an internet
  search engine-like experience. Examples of resources include Amazon Relational
  Database Service (Amazon RDS) instances, Amazon Simple Storage Service (Amazon
  S3) buckets, or Amazon DynamoDB tables. You can search for your resources using
  resource metadata like names, tags, and IDs. Resource Explorer can search across
  all of the Amazon Web Services Regions in your account in which you turn the
  service on, to simplify your cross-Region workloads.

  Resource Explorer scans the resources in each of the Amazon Web Services Regions
  in your Amazon Web Services account in which you turn on Resource Explorer.
  Resource Explorer [creates and maintains an index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-index)
  in each Region, with the details of that Region's resources.

  You can [search across all of the indexed Regions in your account](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  by designating one of your Amazon Web Services Regions to contain the aggregator
  index for the account. When you [promote a local index in a Region to become the aggregator index for the
  account](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region-turn-on.html),
  Resource Explorer automatically replicates the index information from all local
  indexes in the other Regions to the aggregator index. Therefore, the Region with
  the aggregator index has a copy of all resource information for all Regions in
  the account where you turned on Resource Explorer. As a result, views in the
  aggregator index Region include resources from all of the indexed Regions in
  your account.

  For more information about Amazon Web Services Resource Explorer, including how
  to enable and configure the service, see the [Amazon Web Services Resource Explorer User
  Guide](https://docs.aws.amazon.com/resource-explorer/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-07-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resource-explorer-2",
      global?: false,
      protocol: "rest-json",
      service_id: "Resource Explorer 2",
      signature_version: "v4",
      signing_name: "resource-explorer-2",
      target_prefix: nil
    }
  end

  @doc """
  Sets the specified view as the default for the Amazon Web Services Region in
  which you call this operation.

  When a user performs a `Search` that doesn't explicitly specify which view to
  use, then Amazon Web Services Resource Explorer automatically chooses this
  default view for searches performed in this Amazon Web Services Region.

  If an Amazon Web Services Region doesn't have a default view configured, then
  users must explicitly specify a view with every `Search` operation performed in
  that Region.
  """
  def associate_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateDefaultView"
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
  Retrieves details about a list of views.
  """
  def batch_get_view(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetView"
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
  Turns on Amazon Web Services Resource Explorer in the Amazon Web Services Region
  in which you called this operation by creating an index.

  Resource Explorer begins discovering the resources in this Region and stores the
  details about the resources in the index so that they can be queried by using
  the `Search` operation. You can create only one index in a Region.

  This operation creates only a *local* index. To promote the local index in one
  Amazon Web Services Region into the aggregator index for the Amazon Web Services
  account, use the `UpdateIndexType` operation. For more information, see [Turning on cross-Region search by creating an aggregator
  index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  in the *Amazon Web Services Resource Explorer User Guide*.

  For more details about what happens when you turn on Resource Explorer in an
  Amazon Web Services Region, see [Turn on Resource Explorer to index your resources in an Amazon Web Services
  Region](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-service-activate.html)
  in the *Amazon Web Services Resource Explorer User Guide*.

  If this is the first Amazon Web Services Region in which you've created an index
  for Resource Explorer, then this operation also [creates a service-linked role](https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html)
  in your Amazon Web Services account that allows Resource Explorer to enumerate
  your resources to populate the index.

    * **Action**: `resource-explorer-2:CreateIndex`

  **Resource**: The ARN of the index (as it will exist after the operation
  completes) in the Amazon Web Services Region and account in which you're trying
  to create the index. Use the wildcard character (`*`) at the end of the string
  to match the eventual UUID. For example, the following `Resource` element
  restricts the role or user to creating an index in only the `us-east-2` Region
  of the specified account.

  `"Resource": "arn:aws:resource-explorer-2:us-west-2:*<account-id>*:index/*"`

  Alternatively, you can use `"Resource": "*"` to allow the role or user to create
  an index in any Region.

    * **Action**: `iam:CreateServiceLinkedRole`

  **Resource**: No specific resource (*).

  This permission is required only the first time you create an index to turn on
  Resource Explorer in the account. Resource Explorer uses this to create the
  [service-linked role needed to index the resources in your account](https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html).
  Resource Explorer uses the same service-linked role for all additional indexes
  you create afterwards.
  """
  def create_index(%Client{} = client, input, options \\ []) do
    url_path = "/CreateIndex"
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
  Creates a view that users can query by using the `Search` operation.

  Results from queries that you make using this view include only resources that
  match the view's `Filters`. For more information about Amazon Web Services
  Resource Explorer views, see [Managing views](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views.html)
  in the *Amazon Web Services Resource Explorer User Guide*.

  Only the principals with an IAM identity-based policy that grants `Allow` to the
  `Search` action on a `Resource` with the [Amazon resource name (ARN)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of this view can `Search` using views you create with this operation.
  """
  def create_view(%Client{} = client, input, options \\ []) do
    url_path = "/CreateView"
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
  Deletes the specified index and turns off Amazon Web Services Resource Explorer
  in the specified Amazon Web Services Region.

  When you delete an index, Resource Explorer stops discovering and indexing
  resources in that Region. Resource Explorer also deletes all views in that
  Region. These actions occur as asynchronous background tasks. You can check to
  see when the actions are complete by using the `GetIndex` operation and checking
  the `Status` response value.

  If the index you delete is the aggregator index for the Amazon Web Services
  account, you must wait 24 hours before you can promote another local index to be
  the aggregator index for the account. Users can't perform account-wide searches
  using Resource Explorer until another aggregator index is configured.
  """
  def delete_index(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteIndex"
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
  Deletes the specified view.

  If the specified view is the default view for its Amazon Web Services Region,
  then all `Search` operations in that Region must explicitly specify the view to
  use until you configure a new default by calling the `AssociateDefaultView`
  operation.
  """
  def delete_view(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteView"
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
  After you call this operation, the affected Amazon Web Services Region no longer
  has a default view.

  All `Search` operations in that Region must explicitly specify a view or the
  operation fails. You can configure a new default by calling the
  `AssociateDefaultView` operation.

  If an Amazon Web Services Region doesn't have a default view configured, then
  users must explicitly specify a view with every `Search` operation performed in
  that Region.
  """
  def disassociate_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateDefaultView"
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
  Retrieves the status of your account's Amazon Web Services service access, and
  validates the service linked role required to access the multi-account search
  feature.

  Only the management account or a delegated administrator with service access
  enabled can invoke this API call.
  """
  def get_account_level_service_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetAccountLevelServiceConfiguration"
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
  Retrieves the Amazon Resource Name (ARN) of the view that is the default for the
  Amazon Web Services Region in which you call this operation.

  You can then call `GetView` to retrieve the details of that view.
  """
  def get_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/GetDefaultView"
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
  Retrieves details about the Amazon Web Services Resource Explorer index in the
  Amazon Web Services Region in which you invoked the operation.
  """
  def get_index(%Client{} = client, input, options \\ []) do
    url_path = "/GetIndex"
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
  Retrieves details of the specified view.
  """
  def get_view(%Client{} = client, input, options \\ []) do
    url_path = "/GetView"
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
  Retrieves a list of all of the indexes in Amazon Web Services Regions that are
  currently collecting resource information for Amazon Web Services Resource
  Explorer.
  """
  def list_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/ListIndexes"
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
  Retrieves a list of a member's indexes in all Amazon Web Services Regions that
  are currently collecting resource information for Amazon Web Services Resource
  Explorer.

  Only the management account or a delegated administrator with service access
  enabled can invoke this API call.
  """
  def list_indexes_for_members(%Client{} = client, input, options \\ []) do
    url_path = "/ListIndexesForMembers"
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
  Retrieves a list of all resource types currently supported by Amazon Web
  Services Resource Explorer.
  """
  def list_supported_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/ListSupportedResourceTypes"
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
  Lists the tags that are attached to the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the [Amazon resource names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of the views available in the Amazon Web Services Region in which you call this
  operation.

  Always check the `NextToken` response parameter for a `null` value when calling
  a paginated operation. These operations can occasionally return an empty set of
  results even when there are more results available. The `NextToken` response
  parameter value is `null` *only* when there are no more results to display.
  """
  def list_views(%Client{} = client, input, options \\ []) do
    url_path = "/ListViews"
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
  Searches for resources and displays details about all resources that match the
  specified criteria.

  You must specify a query string.

  All search queries must use a view. If you don't explicitly specify a view, then
  Amazon Web Services Resource Explorer uses the default view for the Amazon Web
  Services Region in which you call this operation. The results are the logical
  intersection of the results that match both the `QueryString` parameter supplied
  to this operation and the `SearchFilter` parameter attached to the view.

  For the complete syntax supported by the `QueryString` parameter, see [Search query syntax reference for Resource
  Explorer](https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html).

  If your search results are empty, or are missing results that you think should
  be there, see [Troubleshooting Resource Explorer search](https://docs.aws.amazon.com/resource-explorer/latest/userguide/troubleshooting_search.html).
  """
  def search(%Client{} = client, input, options \\ []) do
    url_path = "/Search"
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
  Adds one or more tag key and value pairs to an Amazon Web Services Resource
  Explorer view or index.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes one or more tag key and value pairs from an Amazon Web Services Resource
  Explorer view or index.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
  Changes the type of the index from one of the following types to the other.

  For more information about indexes and the role they perform in Amazon Web
  Services Resource Explorer, see [Turning on cross-Region search by creating an aggregator
  index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  in the *Amazon Web Services Resource Explorer User Guide*.

    * ##  `AGGREGATOR` index type

  The index contains information about resources from all Amazon Web Services
  Regions in the Amazon Web Services account in which you've created a Resource
  Explorer index. Resource information from all other Regions is replicated to
  this Region's index.

  When you change the index type to `AGGREGATOR`, Resource Explorer turns on
  replication of all discovered resource information from the other Amazon Web
  Services Regions in your account to this index. You can then, from this Region
  only, perform resource search queries that span all Amazon Web Services Regions
  in the Amazon Web Services account. Turning on replication from all other
  Regions is performed by asynchronous background tasks. You can check the status
  of the asynchronous tasks by using the `GetIndex` operation. When the
  asynchronous tasks complete, the `Status` response of that operation changes
  from `UPDATING` to `ACTIVE`. After that, you can start to see results from other
  Amazon Web Services Regions in query results. However, it can take several hours
  for replication from all other Regions to complete.

  You can have only one aggregator index per Amazon Web Services account. Before
  you can promote a different index to be the aggregator index for the account,
  you must first demote the existing aggregator index to type `LOCAL`.

    * ##  `LOCAL` index type

  The index contains information about resources in only the Amazon Web Services
  Region in which the index exists. If an aggregator index in another Region
  exists, then information in this local index is replicated to the aggregator
  index.

  When you change the index type to `LOCAL`, Resource Explorer turns off the
  replication of resource information from all other Amazon Web Services Regions
  in the Amazon Web Services account to this Region. The aggregator index remains
  in the `UPDATING` state until all replication with other Regions successfully
  stops. You can check the status of the asynchronous task by using the `GetIndex`
  operation. When Resource Explorer successfully stops all replication with other
  Regions, the `Status` response of that operation changes from `UPDATING` to
  `ACTIVE`. Separately, the resource information from other Regions that was
  previously stored in the index is deleted within 30 days by another background
  task. Until that asynchronous task completes, some results from other Regions
  can continue to appear in search results.

  After you demote an aggregator index to a local index, you must wait 24 hours
  before you can promote another index to be the new aggregator index for the
  account.
  """
  def update_index_type(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateIndexType"
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
  Modifies some of the details of a view.

  You can change the filter string and the list of included properties. You can't
  change the name of the view.
  """
  def update_view(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateView"
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
end
