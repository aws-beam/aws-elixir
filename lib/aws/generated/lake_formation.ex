# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LakeFormation do
  @moduledoc """
  Lake Formation

  Defines the public endpoint for the Lake Formation service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lakeformation",
      global?: false,
      protocol: "rest-json",
      service_id: "LakeFormation",
      signature_version: "v4",
      signing_name: "lakeformation",
      target_prefix: nil
    }
  end

  @doc """
  Attaches one or more LF-tags to an existing resource.
  """
  def add_l_f_tags_to_resource(%Client{} = client, input, options \\ []) do
    url_path = "/AddLFTagsToResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Batch operation to grant permissions to the principal.
  """
  def batch_grant_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGrantPermissions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Batch operation to revoke permissions from the principal.
  """
  def batch_revoke_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/BatchRevokePermissions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Attempts to cancel the specified transaction.

  Returns an exception if the transaction was previously committed.
  """
  def cancel_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/CancelTransaction"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Attempts to commit the specified transaction.

  Returns an exception if the transaction was previously aborted. This API action
  is idempotent if called multiple times for the same transaction.
  """
  def commit_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/CommitTransaction"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a data cell filter to allow one to grant access to certain columns on
  certain rows.
  """
  def create_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/CreateDataCellsFilter"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an LF-tag with the specified name and values.
  """
  def create_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLFTag"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a data cell filter.
  """
  def delete_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteDataCellsFilter"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified LF-tag key name.

  If the attribute key does not exist or the LF-tag does not exist, then the
  operation will not do anything. If the attribute key exists, then the operation
  checks if any resources are tagged with this attribute key, if yes, the API
  throws a 400 Exception with the message "Delete not allowed" as the LF-tag key
  is still attached with resources. You can consider untagging resources with this
  LF-tag key.
  """
  def delete_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLFTag"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  For a specific governed table, provides a list of Amazon S3 objects that will be
  written during the current transaction and that can be automatically deleted if
  the transaction is canceled.

  Without this call, no Amazon S3 objects are automatically deleted when a
  transaction cancels.

  The Glue ETL library function `write_dynamic_frame.from_catalog()` includes an
  option to automatically call `DeleteObjectsOnCancel` before writes. For more
  information, see [Rolling Back Amazon S3 Writes](https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes).
  """
  def delete_objects_on_cancel(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteObjectsOnCancel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deregisters the resource as managed by the Data Catalog.

  When you deregister a path, Lake Formation removes the path from the inline
  policy attached to your service-linked role.
  """
  def deregister_resource(%Client{} = client, input, options \\ []) do
    url_path = "/DeregisterResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the current data access role for the given resource registered in Lake
  Formation.
  """
  def describe_resource(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the details of a single transaction.
  """
  def describe_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeTransaction"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Indicates to the service that the specified transaction is still active and
  should not be treated as idle and aborted.

  Write transactions that remain idle for a long period are automatically aborted
  unless explicitly extended.
  """
  def extend_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/ExtendTransaction"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the list of the data lake administrators of a Lake Formation-managed
  data lake.
  """
  def get_data_lake_settings(%Client{} = client, input, options \\ []) do
    url_path = "/GetDataLakeSettings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the Lake Formation permissions for a specified table or database
  resource located at a path in Amazon S3.

  `GetEffectivePermissionsForPath` will not return databases and tables if the
  catalog is encrypted.
  """
  def get_effective_permissions_for_path(%Client{} = client, input, options \\ []) do
    url_path = "/GetEffectivePermissionsForPath"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns an LF-tag definition.
  """
  def get_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/GetLFTag"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the state of a query previously submitted.

  Clients are expected to poll `GetQueryState` to monitor the current state of the
  planning before retrieving the work units. A query state is only visible to the
  principal that made the initial call to `StartQueryPlanning`.
  """
  def get_query_state(%Client{} = client, input, options \\ []) do
    url_path = "/GetQueryState"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Retrieves statistics on the planning and execution of a query.
  """
  def get_query_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/GetQueryStatistics"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Returns the LF-tags applied to a resource.
  """
  def get_resource_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/GetResourceLFTags"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the set of Amazon S3 objects that make up the specified governed table.

  A transaction ID or timestamp can be specified for time-travel queries.
  """
  def get_table_objects(%Client{} = client, input, options \\ []) do
    url_path = "/GetTableObjects"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the work units resulting from the query.

  Work units can be executed in any order and in parallel.
  """
  def get_work_unit_results(%Client{} = client, input, options \\ []) do
    url_path = "/GetWorkUnitResults"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Retrieves the work units generated by the `StartQueryPlanning` operation.
  """
  def get_work_units(%Client{} = client, input, options \\ []) do
    url_path = "/GetWorkUnits"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Grants permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.

  For information about permissions, see [Security and Access Control to Metadata and
  Data](https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
  """
  def grant_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/GrantPermissions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists all the data cell filters on a table.
  """
  def list_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/ListDataCellsFilter"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists LF-tags that the requester has permission to view.
  """
  def list_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/ListLFTags"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of the principal permissions on the resource, filtered by the
  permissions of the caller.

  For example, if you are granted an ALTER permission, you are able to see only
  the principal permissions for ALTER.

  This operation returns only those permissions that have been explicitly granted.

  For information about permissions, see [Security and Access Control to Metadata and
  Data](https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
  """
  def list_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/ListPermissions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the resources registered to be managed by the Data Catalog.
  """
  def list_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ListResources"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the configuration of all storage optimizers associated with a specified
  table.
  """
  def list_table_storage_optimizers(%Client{} = client, input, options \\ []) do
    url_path = "/ListTableStorageOptimizers"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns metadata about transactions and their status.

  To prevent the response from growing indefinitely, only uncommitted transactions
  and those available for time-travel queries are returned.

  This operation can help you identify uncommitted transactions or to get
  information about transactions.
  """
  def list_transactions(%Client{} = client, input, options \\ []) do
    url_path = "/ListTransactions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets the list of data lake administrators who have admin privileges on all
  resources managed by Lake Formation.

  For more information on admin privileges, see [Granting Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html).

  This API replaces the current list of data lake admins with the new list being
  passed. To add an admin, fetch the current list and add the new admin to that
  list and pass that list in this API.
  """
  def put_data_lake_settings(%Client{} = client, input, options \\ []) do
    url_path = "/PutDataLakeSettings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Registers the resource as managed by the Data Catalog.

  To add or update data, Lake Formation needs read/write access to the chosen
  Amazon S3 path. Choose a role that you know has permission to do this, or choose
  the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you
  register the first Amazon S3 path, the service-linked role and a new inline
  policy are created on your behalf. Lake Formation adds the first path to the
  inline policy and attaches it to the service-linked role. When you register
  subsequent paths, Lake Formation adds the path to the existing policy.

  The following request registers a new location and gives Lake Formation
  permission to use the service-linked role to access that location.

  `ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true`

  If `UseServiceLinkedRole` is not set to true, you must provide or set the
  `RoleArn`:

  `arn:aws:iam::12345:role/my-data-access-role`
  """
  def register_resource(%Client{} = client, input, options \\ []) do
    url_path = "/RegisterResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes an LF-tag from the resource.

  Only database, table, or tableWithColumns resource are allowed. To tag columns,
  use the column inclusion list in `tableWithColumns` to specify column input.
  """
  def remove_l_f_tags_from_resource(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveLFTagsFromResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Revokes permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.
  """
  def revoke_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/RevokePermissions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This operation allows a search on `DATABASE` resources by `TagCondition`.

  This operation is used by admins who want to grant user permissions on certain
  `TagConditions`. Before making a grant, the admin can use
  `SearchDatabasesByTags` to find all resources where the given `TagConditions`
  are valid to verify whether the returned resources can be shared.
  """
  def search_databases_by_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/SearchDatabasesByLFTags"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This operation allows a search on `TABLE` resources by `LFTag`s.

  This will be used by admins who want to grant user permissions on certain
  LF-tags. Before making a grant, the admin can use `SearchTablesByLFTags` to find
  all resources where the given `LFTag`s are valid to verify whether the returned
  resources can be shared.
  """
  def search_tables_by_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/SearchTablesByLFTags"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Submits a request to process a query statement.

  This operation generates work units that can be retrieved with the
  `GetWorkUnits` operation as soon as the query state is WORKUNITS_AVAILABLE or
  FINISHED.
  """
  def start_query_planning(%Client{} = client, input, options \\ []) do
    url_path = "/StartQueryPlanning"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Starts a new transaction and returns its transaction ID.

  Transaction IDs are opaque objects that you can use to identify a transaction.
  """
  def start_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/StartTransaction"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the list of possible values for the specified LF-tag key.

  If the LF-tag does not exist, the operation throws an EntityNotFoundException.
  The values in the delete key values will be deleted from list of possible
  values. If any value in the delete key values is attached to a resource, then
  API errors out with a 400 Exception - "Update not allowed". Untag the attribute
  before deleting the LF-tag key's value.
  """
  def update_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLFTag"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the data access role used for vending access to the given (registered)
  resource in Lake Formation.
  """
  def update_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the manifest of Amazon S3 objects that make up the specified governed
  table.
  """
  def update_table_objects(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTableObjects"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the configuration of the storage optimizers for a table.
  """
  def update_table_storage_optimizer(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTableStorageOptimizer"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
