# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Athena do
  @moduledoc """
  Amazon Athena is an interactive query service that lets you use standard
  SQL to analyze data directly in Amazon S3. You can point Athena at your
  data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena
  is serverless, so there is no infrastructure to set up or manage. You pay
  only for the queries you run. Athena scales automatically—executing queries
  in parallel—so results are fast, even with large datasets and complex
  queries. For more information, see [What is Amazon
  Athena](http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the
  *Amazon Athena User Guide*.

  If you connect to Athena using the JDBC driver, use version 1.1.0 of the
  driver or later with the Amazon Athena API. Earlier version drivers do not
  support the API. For more information and to download the driver, see
  [Accessing Amazon Athena with
  JDBC](https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](https://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """

  @doc """
  Returns the details of a single named query or a list of up to 50 queries,
  which you provide as an array of query ID strings. Requires you to have
  access to the workgroup in which the queries were saved. Use
  `ListNamedQueriesInput` to get the list of named query IDs in the specified
  workgroup. If information could not be retrieved for a submitted query ID,
  information about the query ID submitted is listed under
  `UnprocessedNamedQueryId`. Named queries differ from executed queries. Use
  `BatchGetQueryExecutionInput` to get details about each unique query
  execution, and `ListQueryExecutionsInput` to get a list of query execution
  IDs.
  """
  def batch_get_named_query(client, input, options \\ []) do
    request(client, "BatchGetNamedQuery", input, options)
  end

  @doc """
  Returns the details of a single query execution or a list of up to 50 query
  executions, which you provide as an array of query execution ID strings.
  Requires you to have access to the workgroup in which the queries ran. To
  get a list of query execution IDs, use
  `ListQueryExecutionsInput$WorkGroup`. Query executions differ from named
  (saved) queries. Use `BatchGetNamedQueryInput` to get details about named
  queries.
  """
  def batch_get_query_execution(client, input, options \\ []) do
    request(client, "BatchGetQueryExecution", input, options)
  end

  @doc """
  Creates (registers) a data catalog with the specified name and properties.
  Catalogs created are visible to all users of the same AWS account.
  """
  def create_data_catalog(client, input, options \\ []) do
    request(client, "CreateDataCatalog", input, options)
  end

  @doc """
  Creates a named query in the specified workgroup. Requires that you have
  access to the workgroup.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def create_named_query(client, input, options \\ []) do
    request(client, "CreateNamedQuery", input, options)
  end

  @doc """
  Creates a workgroup with the specified name.
  """
  def create_work_group(client, input, options \\ []) do
    request(client, "CreateWorkGroup", input, options)
  end

  @doc """
  Deletes a data catalog.
  """
  def delete_data_catalog(client, input, options \\ []) do
    request(client, "DeleteDataCatalog", input, options)
  end

  @doc """
  Deletes the named query if you have access to the workgroup in which the
  query was saved.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def delete_named_query(client, input, options \\ []) do
    request(client, "DeleteNamedQuery", input, options)
  end

  @doc """
  Deletes the workgroup with the specified name. The primary workgroup cannot
  be deleted.
  """
  def delete_work_group(client, input, options \\ []) do
    request(client, "DeleteWorkGroup", input, options)
  end

  @doc """
  Returns the specified data catalog.
  """
  def get_data_catalog(client, input, options \\ []) do
    request(client, "GetDataCatalog", input, options)
  end

  @doc """
  Returns a database object for the specfied database and data catalog.
  """
  def get_database(client, input, options \\ []) do
    request(client, "GetDatabase", input, options)
  end

  @doc """
  Returns information about a single query. Requires that you have access to
  the workgroup in which the query was saved.
  """
  def get_named_query(client, input, options \\ []) do
    request(client, "GetNamedQuery", input, options)
  end

  @doc """
  Returns information about a single execution of a query if you have access
  to the workgroup in which the query ran. Each time a query executes,
  information about the query execution is saved with a unique ID.
  """
  def get_query_execution(client, input, options \\ []) do
    request(client, "GetQueryExecution", input, options)
  end

  @doc """
  Streams the results of a single query execution specified by
  `QueryExecutionId` from the Athena query results location in Amazon S3. For
  more information, see [Query
  Results](https://docs.aws.amazon.com/athena/latest/ug/querying.html) in the
  *Amazon Athena User Guide*. This request does not execute the query but
  returns results. Use `StartQueryExecution` to run a query.

  To stream query results successfully, the IAM principal with permission to
  call `GetQueryResults` also must have permissions to the Amazon S3
  `GetObject` action for the Athena query results location.

  <important> IAM principals with permission to the Amazon S3 `GetObject`
  action for the query results location are able to retrieve query results
  from Amazon S3 even if permission to the `GetQueryResults` action is
  denied. To restrict user or role access, ensure that Amazon S3 permissions
  to the Athena query location are denied.

  </important>
  """
  def get_query_results(client, input, options \\ []) do
    request(client, "GetQueryResults", input, options)
  end

  @doc """
  Returns table metadata for the specified catalog, database, and table.
  """
  def get_table_metadata(client, input, options \\ []) do
    request(client, "GetTableMetadata", input, options)
  end

  @doc """
  Returns information about the workgroup with the specified name.
  """
  def get_work_group(client, input, options \\ []) do
    request(client, "GetWorkGroup", input, options)
  end

  @doc """
  Lists the data catalogs in the current AWS account.
  """
  def list_data_catalogs(client, input, options \\ []) do
    request(client, "ListDataCatalogs", input, options)
  end

  @doc """
  Lists the databases in the specified data catalog.
  """
  def list_databases(client, input, options \\ []) do
    request(client, "ListDatabases", input, options)
  end

  @doc """
  Provides a list of available query IDs only for queries saved in the
  specified workgroup. Requires that you have access to the specified
  workgroup. If a workgroup is not specified, lists the saved queries for the
  primary workgroup.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def list_named_queries(client, input, options \\ []) do
    request(client, "ListNamedQueries", input, options)
  end

  @doc """
  Provides a list of available query execution IDs for the queries in the
  specified workgroup. If a workgroup is not specified, returns a list of
  query execution IDs for the primary workgroup. Requires you to have access
  to the workgroup in which the queries ran.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def list_query_executions(client, input, options \\ []) do
    request(client, "ListQueryExecutions", input, options)
  end

  @doc """
  Lists the metadata for the tables in the specified data catalog database.
  """
  def list_table_metadata(client, input, options \\ []) do
    request(client, "ListTableMetadata", input, options)
  end

  @doc """
  Lists the tags associated with an Athena workgroup or data catalog
  resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Lists available workgroups for the account.
  """
  def list_work_groups(client, input, options \\ []) do
    request(client, "ListWorkGroups", input, options)
  end

  @doc """
  Runs the SQL query statements contained in the `Query`. Requires you to
  have access to the workgroup in which the query ran. Running queries
  against an external catalog requires `GetDataCatalog` permission to the
  catalog. For code samples using the AWS SDK for Java, see [Examples and
  Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def start_query_execution(client, input, options \\ []) do
    request(client, "StartQueryExecution", input, options)
  end

  @doc """
  Stops a query execution. Requires you to have access to the workgroup in
  which the query ran.

  For code samples using the AWS SDK for Java, see [Examples and Code
  Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User Guide*.
  """
  def stop_query_execution(client, input, options \\ []) do
    request(client, "StopQueryExecution", input, options)
  end

  @doc """
  Adds one or more tags to an Athena resource. A tag is a label that you
  assign to a resource. In Athena, a resource can be a workgroup or data
  catalog. Each tag consists of a key and an optional value, both of which
  you define. For example, you can use tags to categorize Athena workgroups
  or data catalogs by purpose, owner, or environment. Use a consistent set of
  tag keys to make it easier to search and filter workgroups or data catalogs
  in your account. For best practices, see [Tagging Best
  Practices](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
  Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values can
  be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and numbers
  representable in UTF-8, and the following characters: + - = . _ : / @. Tag
  keys and values are case-sensitive. Tag keys must be unique per resource.
  If you specify more than one tag, separate them by commas.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a data catalog or workgroup resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the data catalog that has the specified name.
  """
  def update_data_catalog(client, input, options \\ []) do
    request(client, "UpdateDataCatalog", input, options)
  end

  @doc """
  Updates the workgroup with the specified name. The workgroup's name cannot
  be changed.
  """
  def update_work_group(client, input, options \\ []) do
    request(client, "UpdateWorkGroup", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "athena"}
    host = build_host("athena", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AmazonAthena.#{action}"}
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

      {:ok, %{body: body} = response} ->
        {:error, decode!(client, body), response}

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
