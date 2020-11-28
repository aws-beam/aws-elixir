# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RDSData do
  @moduledoc """
  Amazon RDS Data Service

  Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora
  Serverless DB cluster.

  To run these statements, you work with the Data Service API.

  For more information about the Data Service API, see [Using the Data API for Aurora
  Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
  in the *Amazon Aurora User Guide*.

  If you have questions or comments related to the Data API, send email to
  [Rds-data-api-feedback@amazon.com](mailto:Rds-data-api-feedback@amazon.com).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rds-data",
      global?: false,
      protocol: "rest-json",
      service_id: "RDS Data",
      signature_version: "v4",
      signing_name: "rds-data",
      target_prefix: nil
    }
  end

  @doc """
  Runs a batch SQL statement over an array of data.

  You can run bulk update and insert operations for multiple records using a DML
  statement with different parameter sets. Bulk operations can provide a
  significant performance improvement over individual insert and update
  operations.

  If a call isn't part of a transaction because it doesn't include the
  `transactionID` parameter, changes that result from the call are committed
  automatically.
  """
  def batch_execute_statement(%Client{} = client, input, options \\ []) do
    url_path = "/BatchExecute"
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
  Starts a SQL transaction.

  ` A transaction can run for a maximum of 24 hours. A transaction is terminated
  and rolled back automatically after 24 hours.

  A transaction times out if no calls use its transaction ID in three minutes. If
  a transaction times out before it's committed, it's rolled back automatically.

  DDL statements inside a transaction cause an implicit commit. We recommend that
  you run each DDL statement in a separate `ExecuteStatement` call with
  `continueAfterTimeout` enabled.

  `
  """
  def begin_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/BeginTransaction"
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
  Ends a SQL transaction started with the `BeginTransaction` operation and commits
  the changes.
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
      200
    )
  end

  @doc """
  Runs one or more SQL statements.

  This operation is deprecated. Use the `BatchExecuteStatement` or
  `ExecuteStatement` operation.
  """
  def execute_sql(%Client{} = client, input, options \\ []) do
    url_path = "/ExecuteSql"
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
  Runs a SQL statement against a database.

  If a call isn't part of a transaction because it doesn't include the
  `transactionID` parameter, changes that result from the call are committed
  automatically.

  The response size limit is 1 MB. If the call returns more than 1 MB of response
  data, the call is terminated.
  """
  def execute_statement(%Client{} = client, input, options \\ []) do
    url_path = "/Execute"
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
  Performs a rollback of a transaction.

  Rolling back a transaction cancels its changes.
  """
  def rollback_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/RollbackTransaction"
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
end