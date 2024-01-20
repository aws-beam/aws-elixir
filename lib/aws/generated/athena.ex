# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Athena do
  @moduledoc """
  Amazon Athena is an interactive query service that lets you use standard SQL to
  analyze data directly in Amazon S3.

  You can point Athena at your data in Amazon S3 and run ad-hoc queries and get
  results in seconds. Athena is serverless, so there is no infrastructure to set
  up or manage. You pay only for the queries you run. Athena scales
  automatically—executing queries in parallel—so results are fast, even with large
  datasets and complex queries. For more information, see [What is Amazon Athena](http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the *Amazon
  Athena User Guide*.

  If you connect to Athena using the JDBC driver, use version 1.1.0 of the driver
  or later with the Amazon Athena API. Earlier version drivers do not support the
  API. For more information and to download the driver, see [Accessing Amazon Athena with
  JDBC](https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-05-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "athena",
      global?: false,
      protocol: "json",
      service_id: "Athena",
      signature_version: "v4",
      signing_name: "athena",
      target_prefix: "AmazonAthena"
    }
  end

  @doc """
  Returns the details of a single named query or a list of up to 50 queries, which
  you provide as an array of query ID strings.

  Requires you to have access to the workgroup in which the queries were saved.
  Use `ListNamedQueriesInput` to get the list of named query IDs in the specified
  workgroup. If information could not be retrieved for a submitted query ID,
  information about the query ID submitted is listed under
  `UnprocessedNamedQueryId`. Named queries differ from executed queries. Use
  `BatchGetQueryExecutionInput` to get details about each unique query execution,
  and `ListQueryExecutionsInput` to get a list of query execution IDs.
  """
  def batch_get_named_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetNamedQuery", input, options)
  end

  @doc """
  Returns the details of a single prepared statement or a list of up to 256
  prepared statements for the array of prepared statement names that you provide.

  Requires you to have access to the workgroup to which the prepared statements
  belong. If a prepared statement cannot be retrieved for the name specified, the
  statement is listed in `UnprocessedPreparedStatementNames`.
  """
  def batch_get_prepared_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetPreparedStatement", input, options)
  end

  @doc """
  Returns the details of a single query execution or a list of up to 50 query
  executions, which you provide as an array of query execution ID strings.

  Requires you to have access to the workgroup in which the queries ran. To get a
  list of query execution IDs, use `ListQueryExecutionsInput$WorkGroup`. Query
  executions differ from named (saved) queries. Use `BatchGetNamedQueryInput` to
  get details about named queries.
  """
  def batch_get_query_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetQueryExecution", input, options)
  end

  @doc """
  Cancels the capacity reservation with the specified name.

  Cancelled reservations remain in your account and will be deleted 45 days after
  cancellation. During the 45 days, you cannot re-purpose or reuse a reservation
  that has been cancelled, but you can refer to its tags and view it for
  historical reference.
  """
  def cancel_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelCapacityReservation", input, options)
  end

  @doc """
  Creates a capacity reservation with the specified name and number of requested
  data processing units.
  """
  def create_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCapacityReservation", input, options)
  end

  @doc """
  Creates (registers) a data catalog with the specified name and properties.

  Catalogs created are visible to all users of the same Amazon Web Services
  account.
  """
  def create_data_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataCatalog", input, options)
  end

  @doc """
  Creates a named query in the specified workgroup.

  Requires that you have access to the workgroup.
  """
  def create_named_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNamedQuery", input, options)
  end

  @doc """
  Creates an empty `ipynb` file in the specified Apache Spark enabled workgroup.

  Throws an error if a file in the workgroup with the same name already exists.
  """
  def create_notebook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNotebook", input, options)
  end

  @doc """
  Creates a prepared statement for use with SQL queries in Athena.
  """
  def create_prepared_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePreparedStatement", input, options)
  end

  @doc """
  Gets an authentication token and the URL at which the notebook can be accessed.

  During programmatic access, `CreatePresignedNotebookUrl` must be called every 10
  minutes to refresh the authentication token. For information about granting
  programmatic access, see [Grant programmatic access](https://docs.aws.amazon.com/athena/latest/ug/setting-up.html#setting-up-grant-programmatic-access).
  """
  def create_presigned_notebook_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePresignedNotebookUrl", input, options)
  end

  @doc """
  Creates a workgroup with the specified name.

  A workgroup can be an Apache Spark enabled workgroup or an Athena SQL workgroup.
  """
  def create_work_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkGroup", input, options)
  end

  @doc """
  Deletes a cancelled capacity reservation.

  A reservation must be cancelled before it can be deleted. A deleted reservation
  is immediately removed from your account and can no longer be referenced,
  including by its ARN. A deleted reservation cannot be called by
  `GetCapacityReservation`, and deleted reservations do not appear in the output
  of `ListCapacityReservations`.
  """
  def delete_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCapacityReservation", input, options)
  end

  @doc """
  Deletes a data catalog.
  """
  def delete_data_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataCatalog", input, options)
  end

  @doc """
  Deletes the named query if you have access to the workgroup in which the query
  was saved.
  """
  def delete_named_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNamedQuery", input, options)
  end

  @doc """
  Deletes the specified notebook.
  """
  def delete_notebook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotebook", input, options)
  end

  @doc """
  Deletes the prepared statement with the specified name from the specified
  workgroup.
  """
  def delete_prepared_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePreparedStatement", input, options)
  end

  @doc """
  Deletes the workgroup with the specified name.

  The primary workgroup cannot be deleted.
  """
  def delete_work_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkGroup", input, options)
  end

  @doc """
  Exports the specified notebook and its metadata.
  """
  def export_notebook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportNotebook", input, options)
  end

  @doc """
  Describes a previously submitted calculation execution.
  """
  def get_calculation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCalculationExecution", input, options)
  end

  @doc """
  Retrieves the unencrypted code that was executed for the calculation.
  """
  def get_calculation_execution_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCalculationExecutionCode", input, options)
  end

  @doc """
  Gets the status of a current calculation.
  """
  def get_calculation_execution_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCalculationExecutionStatus", input, options)
  end

  @doc """
  Gets the capacity assignment configuration for a capacity reservation, if one
  exists.
  """
  def get_capacity_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCapacityAssignmentConfiguration", input, options)
  end

  @doc """
  Returns information about the capacity reservation with the specified name.
  """
  def get_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCapacityReservation", input, options)
  end

  @doc """
  Returns the specified data catalog.
  """
  def get_data_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataCatalog", input, options)
  end

  @doc """
  Returns a database object for the specified database and data catalog.
  """
  def get_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDatabase", input, options)
  end

  @doc """
  Returns information about a single query.

  Requires that you have access to the workgroup in which the query was saved.
  """
  def get_named_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNamedQuery", input, options)
  end

  @doc """
  Retrieves notebook metadata for the specified notebook ID.
  """
  def get_notebook_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNotebookMetadata", input, options)
  end

  @doc """
  Retrieves the prepared statement with the specified name from the specified
  workgroup.
  """
  def get_prepared_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPreparedStatement", input, options)
  end

  @doc """
  Returns information about a single execution of a query if you have access to
  the workgroup in which the query ran.

  Each time a query executes, information about the query execution is saved with
  a unique ID.
  """
  def get_query_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQueryExecution", input, options)
  end

  @doc """
  Streams the results of a single query execution specified by `QueryExecutionId`
  from the Athena query results location in Amazon S3.

  For more information, see [Working with query results, recent queries, and output files](https://docs.aws.amazon.com/athena/latest/ug/querying.html) in the
  *Amazon Athena User Guide*. This request does not execute the query but returns
  results. Use `StartQueryExecution` to run a query.

  To stream query results successfully, the IAM principal with permission to call
  `GetQueryResults` also must have permissions to the Amazon S3 `GetObject` action
  for the Athena query results location.

  IAM principals with permission to the Amazon S3 `GetObject` action for the query
  results location are able to retrieve query results from Amazon S3 even if
  permission to the `GetQueryResults` action is denied. To restrict user or role
  access, ensure that Amazon S3 permissions to the Athena query location are
  denied.
  """
  def get_query_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQueryResults", input, options)
  end

  @doc """
  Returns query execution runtime statistics related to a single execution of a
  query if you have access to the workgroup in which the query ran.

  Query execution runtime statistics are returned only when
  `QueryExecutionStatus$State` is in a SUCCEEDED or FAILED state. Stage-level
  input and output row count and data size statistics are not shown when a query
  has row-level filters defined in Lake Formation.
  """
  def get_query_runtime_statistics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQueryRuntimeStatistics", input, options)
  end

  @doc """
  Gets the full details of a previously created session, including the session
  status and configuration.
  """
  def get_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSession", input, options)
  end

  @doc """
  Gets the current status of a session.
  """
  def get_session_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSessionStatus", input, options)
  end

  @doc """
  Returns table metadata for the specified catalog, database, and table.
  """
  def get_table_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableMetadata", input, options)
  end

  @doc """
  Returns information about the workgroup with the specified name.
  """
  def get_work_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkGroup", input, options)
  end

  @doc """
  Imports a single `ipynb` file to a Spark enabled workgroup.

  To import the notebook, the request must specify a value for either `Payload` or
  `NoteBookS3LocationUri`. If neither is specified or both are specified, an
  `InvalidRequestException` occurs. The maximum file size that can be imported is
  10 megabytes. If an `ipynb` file with the same name already exists in the
  workgroup, throws an error.
  """
  def import_notebook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportNotebook", input, options)
  end

  @doc """
  Returns the supported DPU sizes for the supported application runtimes (for
  example, `Athena notebook version 1`).
  """
  def list_application_d_p_u_sizes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationDPUSizes", input, options)
  end

  @doc """
  Lists the calculations that have been submitted to a session in descending
  order.

  Newer calculations are listed first; older calculations are listed later.
  """
  def list_calculation_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCalculationExecutions", input, options)
  end

  @doc """
  Lists the capacity reservations for the current account.
  """
  def list_capacity_reservations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCapacityReservations", input, options)
  end

  @doc """
  Lists the data catalogs in the current Amazon Web Services account.

  In the Athena console, data catalogs are listed as "data sources" on the **Data
  sources** page under the **Data source name** column.
  """
  def list_data_catalogs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataCatalogs", input, options)
  end

  @doc """
  Lists the databases in the specified data catalog.
  """
  def list_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatabases", input, options)
  end

  @doc """
  Returns a list of engine versions that are available to choose from, including
  the Auto option.
  """
  def list_engine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngineVersions", input, options)
  end

  @doc """
  Lists, in descending order, the executors that joined a session.

  Newer executors are listed first; older executors are listed later. The result
  can be optionally filtered by state.
  """
  def list_executors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExecutors", input, options)
  end

  @doc """
  Provides a list of available query IDs only for queries saved in the specified
  workgroup.

  Requires that you have access to the specified workgroup. If a workgroup is not
  specified, lists the saved queries for the primary workgroup.
  """
  def list_named_queries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNamedQueries", input, options)
  end

  @doc """
  Displays the notebook files for the specified workgroup in paginated format.
  """
  def list_notebook_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNotebookMetadata", input, options)
  end

  @doc """
  Lists, in descending order, the sessions that have been created in a notebook
  that are in an active state like `CREATING`, `CREATED`, `IDLE` or `BUSY`.

  Newer sessions are listed first; older sessions are listed later.
  """
  def list_notebook_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNotebookSessions", input, options)
  end

  @doc """
  Lists the prepared statements in the specified workgroup.
  """
  def list_prepared_statements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPreparedStatements", input, options)
  end

  @doc """
  Provides a list of available query execution IDs for the queries in the
  specified workgroup.

  Athena keeps a query history for 45 days. If a workgroup is not specified,
  returns a list of query execution IDs for the primary workgroup. Requires you to
  have access to the workgroup in which the queries ran.
  """
  def list_query_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQueryExecutions", input, options)
  end

  @doc """
  Lists the sessions in a workgroup that are in an active state like `CREATING`,
  `CREATED`, `IDLE`, or `BUSY`.

  Newer sessions are listed first; older sessions are listed later.
  """
  def list_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSessions", input, options)
  end

  @doc """
  Lists the metadata for the tables in the specified data catalog database.
  """
  def list_table_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTableMetadata", input, options)
  end

  @doc """
  Lists the tags associated with an Athena resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists available workgroups for the account.
  """
  def list_work_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkGroups", input, options)
  end

  @doc """
  Puts a new capacity assignment configuration for a specified capacity
  reservation.

  If a capacity assignment configuration already exists for the capacity
  reservation, replaces the existing capacity assignment configuration.
  """
  def put_capacity_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutCapacityAssignmentConfiguration", input, options)
  end

  @doc """
  Submits calculations for execution within a session.

  You can supply the code to run as an inline code block within the request.

  The request syntax requires the `StartCalculationExecutionRequest$CodeBlock`
  parameter or the `CalculationConfiguration$CodeBlock` parameter, but not both.
  Because `CalculationConfiguration$CodeBlock` is deprecated, use the
  `StartCalculationExecutionRequest$CodeBlock` parameter instead.
  """
  def start_calculation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartCalculationExecution", input, options)
  end

  @doc """
  Runs the SQL query statements contained in the `Query`.

  Requires you to have access to the workgroup in which the query ran. Running
  queries against an external catalog requires `GetDataCatalog` permission to the
  catalog. For code samples using the Amazon Web Services SDK for Java, see
  [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in the
  *Amazon Athena User Guide*.
  """
  def start_query_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartQueryExecution", input, options)
  end

  @doc """
  Creates a session for running calculations within a workgroup.

  The session is ready when it reaches an `IDLE` state.
  """
  def start_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSession", input, options)
  end

  @doc """
  Requests the cancellation of a calculation.

  A `StopCalculationExecution` call on a calculation that is already in a terminal
  state (for example, `STOPPED`, `FAILED`, or `COMPLETED`) succeeds but has no
  effect.

  Cancelling a calculation is done on a best effort basis. If a calculation cannot
  be cancelled, you can be charged for its completion. If you are concerned about
  being charged for a calculation that cannot be cancelled, consider terminating
  the session in which the calculation is running.
  """
  def stop_calculation_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopCalculationExecution", input, options)
  end

  @doc """
  Stops a query execution.

  Requires you to have access to the workgroup in which the query ran.
  """
  def stop_query_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopQueryExecution", input, options)
  end

  @doc """
  Adds one or more tags to an Athena resource.

  A tag is a label that you assign to a resource. Each tag consists of a key and
  an optional value, both of which you define. For example, you can use tags to
  categorize Athena workgroups, data catalogs, or capacity reservations by
  purpose, owner, or environment. Use a consistent set of tag keys to make it
  easier to search and filter the resources in your account. For best practices,
  see [Tagging Best Practices](https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html).
  Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values can be
  from 0 to 256 UTF-8 Unicode characters. Tags can use letters and numbers
  representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys
  and values are case-sensitive. Tag keys must be unique per resource. If you
  specify more than one tag, separate them by commas.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Terminates an active session.

  A `TerminateSession` call on a session that is already inactive (for example, in
  a `FAILED`, `TERMINATED` or `TERMINATING` state) succeeds but has no effect.
  Calculations running in the session when `TerminateSession` is called are
  forcefully stopped, but may display as `FAILED` instead of `STOPPED`.
  """
  def terminate_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateSession", input, options)
  end

  @doc """
  Removes one or more tags from an Athena resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the number of requested data processing units for the capacity
  reservation with the specified name.
  """
  def update_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCapacityReservation", input, options)
  end

  @doc """
  Updates the data catalog that has the specified name.
  """
  def update_data_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDataCatalog", input, options)
  end

  @doc """
  Updates a `NamedQuery` object.

  The database or workgroup cannot be updated.
  """
  def update_named_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNamedQuery", input, options)
  end

  @doc """
  Updates the contents of a Spark notebook.
  """
  def update_notebook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNotebook", input, options)
  end

  @doc """
  Updates the metadata for a notebook.
  """
  def update_notebook_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNotebookMetadata", input, options)
  end

  @doc """
  Updates a prepared statement.
  """
  def update_prepared_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePreparedStatement", input, options)
  end

  @doc """
  Updates the workgroup with the specified name.

  The workgroup's name cannot be changed. Only `ConfigurationUpdates` can be
  specified.
  """
  def update_work_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkGroup", input, options)
  end
end
