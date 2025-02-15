# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RDSData do
  @moduledoc """
  RDS Data API

  Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora
  DB cluster.

  To run these
  statements, you use the RDS Data API (Data API).

  Data API is available with the following types of Aurora databases:

    *
  Aurora PostgreSQL - Serverless v2, provisioned, and Serverless v1

    *
  Aurora MySQL - Serverless v2, provisioned, and Serverless v1

  For more information about the Data API, see
  [Using RDS Data API](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
  in the *Amazon Aurora User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      statement_timeout_exception() :: %{
        "dbConnectionId" => float(),
        "message" => String.t()
      }

  """
  @type statement_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      record() :: %{
        "values" => list(list()())
      }

  """
  @type record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      result_set_metadata() :: %{
        "columnCount" => float(),
        "columnMetadata" => list(column_metadata()())
      }

  """
  @type result_set_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_resuming_exception() :: %{
        "message" => String.t()
      }

  """
  @type database_resuming_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_result_exception() :: %{
        "message" => String.t()
      }

  """
  @type unsupported_result_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rollback_transaction_request() :: %{
        "resourceArn" => String.t(),
        "secretArn" => String.t(),
        "transactionId" => String.t()
      }

  """
  @type rollback_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_metadata() :: %{
        "arrayBaseColumnType" => integer(),
        "isAutoIncrement" => boolean(),
        "isCaseSensitive" => boolean(),
        "isCurrency" => boolean(),
        "isSigned" => boolean(),
        "label" => String.t(),
        "name" => String.t(),
        "nullable" => integer(),
        "precision" => integer(),
        "scale" => integer(),
        "schemaName" => String.t(),
        "tableName" => String.t(),
        "type" => integer(),
        "typeName" => String.t()
      }

  """
  @type column_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      commit_transaction_request() :: %{
        "resourceArn" => String.t(),
        "secretArn" => String.t(),
        "transactionId" => String.t()
      }

  """
  @type commit_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_sql_request() :: %{
        "awsSecretStoreArn" => String.t(),
        "database" => String.t(),
        "dbClusterOrInstanceArn" => String.t(),
        "schema" => String.t(),
        "sqlStatements" => String.t()
      }

  """
  @type execute_sql_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transaction_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type transaction_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_result() :: %{
        "generatedFields" => list(list()())
      }

  """
  @type update_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sql_parameter() :: %{
        "name" => String.t(),
        "typeHint" => String.t(),
        "value" => list()
      }

  """
  @type sql_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_execute_statement_request() :: %{
        "database" => String.t(),
        "parameterSets" => list(list(sql_parameter()())()),
        "resourceArn" => String.t(),
        "schema" => String.t(),
        "secretArn" => String.t(),
        "sql" => String.t(),
        "transactionId" => String.t()
      }

  """
  @type batch_execute_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      begin_transaction_request() :: %{
        "database" => String.t(),
        "resourceArn" => String.t(),
        "schema" => String.t(),
        "secretArn" => String.t()
      }

  """
  @type begin_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_statement_response() :: %{
        "columnMetadata" => list(column_metadata()()),
        "formattedRecords" => String.t(),
        "generatedFields" => list(list()()),
        "numberOfRecordsUpdated" => float(),
        "records" => list(list(list()())())
      }

  """
  @type execute_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_error() :: %{}

  """
  @type service_unavailable_error() :: %{}

  @typedoc """

  ## Example:

      invalid_secret_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_secret_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      result_set_options() :: %{
        "decimalReturnType" => String.t(),
        "longReturnType" => String.t()
      }

  """
  @type result_set_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      commit_transaction_response() :: %{
        "transactionStatus" => String.t()
      }

  """
  @type commit_transaction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_unavailable_exception() :: %{}

  """
  @type database_unavailable_exception() :: %{}

  @typedoc """

  ## Example:

      invalid_resource_state_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_resource_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      secrets_error_exception() :: %{
        "message" => String.t()
      }

  """
  @type secrets_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_endpoint_not_enabled_exception() :: %{
        "message" => String.t()
      }

  """
  @type http_endpoint_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type database_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rollback_transaction_response() :: %{
        "transactionStatus" => String.t()
      }

  """
  @type rollback_transaction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      database_error_exception() :: %{
        "message" => String.t()
      }

  """
  @type database_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      begin_transaction_response() :: %{
        "transactionId" => String.t()
      }

  """
  @type begin_transaction_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{}

  """
  @type internal_server_error_exception() :: %{}

  @typedoc """

  ## Example:

      result_frame() :: %{
        "records" => list(record()()),
        "resultSetMetadata" => result_set_metadata()
      }

  """
  @type result_frame() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_statement_request() :: %{
        "continueAfterTimeout" => boolean(),
        "database" => String.t(),
        "formatRecordsAs" => String.t(),
        "includeResultMetadata" => boolean(),
        "parameters" => list(sql_parameter()()),
        "resourceArn" => String.t(),
        "resultSetOptions" => result_set_options(),
        "schema" => String.t(),
        "secretArn" => String.t(),
        "sql" => String.t(),
        "transactionId" => String.t()
      }

  """
  @type execute_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sql_statement_result() :: %{
        "numberOfRecordsUpdated" => float(),
        "resultFrame" => result_frame()
      }

  """
  @type sql_statement_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_sql_response() :: %{
        "sqlStatementResults" => list(sql_statement_result()())
      }

  """
  @type execute_sql_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      struct_value() :: %{
        "attributes" => list(list()())
      }

  """
  @type struct_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_execute_statement_response() :: %{
        "updateResults" => list(update_result()())
      }

  """
  @type batch_execute_statement_response() :: %{String.t() => any()}

  @type batch_execute_statement_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | database_error_exception()
          | access_denied_exception()
          | database_not_found_exception()
          | http_endpoint_not_enabled_exception()
          | secrets_error_exception()
          | invalid_resource_state_exception()
          | database_unavailable_exception()
          | invalid_secret_exception()
          | service_unavailable_error()
          | forbidden_exception()
          | transaction_not_found_exception()
          | database_resuming_exception()
          | statement_timeout_exception()

  @type begin_transaction_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | database_error_exception()
          | access_denied_exception()
          | database_not_found_exception()
          | http_endpoint_not_enabled_exception()
          | secrets_error_exception()
          | invalid_resource_state_exception()
          | database_unavailable_exception()
          | invalid_secret_exception()
          | service_unavailable_error()
          | forbidden_exception()
          | transaction_not_found_exception()
          | database_resuming_exception()
          | statement_timeout_exception()

  @type commit_transaction_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | database_error_exception()
          | access_denied_exception()
          | database_not_found_exception()
          | http_endpoint_not_enabled_exception()
          | secrets_error_exception()
          | invalid_resource_state_exception()
          | database_unavailable_exception()
          | not_found_exception()
          | invalid_secret_exception()
          | service_unavailable_error()
          | forbidden_exception()
          | transaction_not_found_exception()
          | statement_timeout_exception()

  @type execute_sql_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | service_unavailable_error()
          | forbidden_exception()

  @type execute_statement_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | database_error_exception()
          | access_denied_exception()
          | database_not_found_exception()
          | http_endpoint_not_enabled_exception()
          | secrets_error_exception()
          | invalid_resource_state_exception()
          | database_unavailable_exception()
          | invalid_secret_exception()
          | service_unavailable_error()
          | forbidden_exception()
          | transaction_not_found_exception()
          | unsupported_result_exception()
          | database_resuming_exception()
          | statement_timeout_exception()

  @type rollback_transaction_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | database_error_exception()
          | access_denied_exception()
          | database_not_found_exception()
          | http_endpoint_not_enabled_exception()
          | secrets_error_exception()
          | invalid_resource_state_exception()
          | database_unavailable_exception()
          | not_found_exception()
          | invalid_secret_exception()
          | service_unavailable_error()
          | forbidden_exception()
          | transaction_not_found_exception()
          | statement_timeout_exception()

  def metadata do
    %{
      api_version: "2018-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rds-data",
      global?: false,
      hostname: nil,
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
  significant
  performance improvement over individual insert and update operations.

  If a call isn't part of a transaction because it doesn't include the
  `transactionID` parameter,
  changes that result from the call are committed automatically.

  There isn't a fixed upper limit on the number of parameter sets. However, the
  maximum size of the HTTP request
  submitted through the Data API is 4 MiB. If the request exceeds this limit, the
  Data API returns an error and doesn't
  process the request. This 4-MiB limit includes the size of the HTTP headers and
  the JSON notation in the request. Thus, the
  number of parameter sets that you can include depends on a combination of
  factors, such as the size of the SQL statement and
  the size of each parameter set.

  The response size limit is 1 MiB. If the call returns more than 1 MiB of
  response data, the call is terminated.
  """
  @spec batch_execute_statement(map(), batch_execute_statement_request(), list()) ::
          {:ok, batch_execute_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_execute_statement_errors()}
  def batch_execute_statement(%Client{} = client, input, options \\ []) do
    url_path = "/BatchExecute"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a SQL transaction.

  A transaction can run for a maximum of 24 hours. A transaction is terminated and
  rolled back automatically after 24
  hours.

  A transaction times out if no calls use its transaction ID in three minutes. If
  a transaction times out before it's
  committed, it's rolled back automatically.

  For Aurora MySQL, DDL statements inside a transaction cause an implicit commit.
  We recommend that you run each MySQL DDL statement in a separate
  `ExecuteStatement` call with `continueAfterTimeout` enabled.
  """
  @spec begin_transaction(map(), begin_transaction_request(), list()) ::
          {:ok, begin_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, begin_transaction_errors()}
  def begin_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/BeginTransaction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Ends a SQL transaction started with the `BeginTransaction` operation and
  commits the changes.
  """
  @spec commit_transaction(map(), commit_transaction_request(), list()) ::
          {:ok, commit_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, commit_transaction_errors()}
  def commit_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/CommitTransaction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Runs one or more SQL statements.

  This operation isn't supported for Aurora Serverless v2 and provisioned DB
  clusters.
  For Aurora Serverless v1 DB clusters, the operation is deprecated.
  Use the `BatchExecuteStatement` or `ExecuteStatement` operation.
  """
  @spec execute_sql(map(), execute_sql_request(), list()) ::
          {:ok, execute_sql_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_sql_errors()}
  def execute_sql(%Client{} = client, input, options \\ []) do
    url_path = "/ExecuteSql"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Runs a SQL statement against a database.

  If a call isn't part of a transaction because it doesn't include the
  `transactionID` parameter, changes that result from the call are
  committed automatically.

  If the binary response data from the database is more than 1 MB, the call is
  terminated.
  """
  @spec execute_statement(map(), execute_statement_request(), list()) ::
          {:ok, execute_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, execute_statement_errors()}
  def execute_statement(%Client{} = client, input, options \\ []) do
    url_path = "/Execute"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Performs a rollback of a transaction.

  Rolling back a transaction cancels its changes.
  """
  @spec rollback_transaction(map(), rollback_transaction_request(), list()) ::
          {:ok, rollback_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rollback_transaction_errors()}
  def rollback_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/RollbackTransaction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
