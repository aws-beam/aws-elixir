# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RedshiftData do
  @moduledoc """
  You can use the Amazon Redshift Data API to run queries on Amazon Redshift
  tables.

  You
  can run SQL statements, which are committed if the statement succeeds.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      cancel_statement_response() :: %{
        "Status" => [boolean()]
      }
      
  """
  @type cancel_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_member() :: %{
        "name" => String.t(),
        "schema" => String.t(),
        "type" => String.t()
      }
      
  """
  @type table_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_output() :: %{
        "ClusterIdentifier" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Database" => String.t(),
        "DbGroups" => list(String.t()),
        "DbUser" => String.t(),
        "Id" => String.t(),
        "SecretArn" => String.t(),
        "SessionId" => String.t(),
        "WorkgroupName" => String.t()
      }
      
  """
  @type batch_execute_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      statement_data() :: %{
        "CreatedAt" => [non_neg_integer()],
        "Id" => String.t(),
        "IsBatchStatement" => [boolean()],
        "QueryParameters" => list(sql_parameter()),
        "QueryString" => String.t(),
        "QueryStrings" => list(String.t()),
        "ResultFormat" => String.t(),
        "SecretArn" => String.t(),
        "SessionId" => String.t(),
        "StatementName" => String.t(),
        "Status" => String.t(),
        "UpdatedAt" => [non_neg_integer()]
      }
      
  """
  @type statement_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      column_metadata() :: %{
        "columnDefault" => String.t(),
        "isCaseSensitive" => boolean(),
        "isCurrency" => boolean(),
        "isSigned" => boolean(),
        "label" => String.t(),
        "length" => integer(),
        "name" => String.t(),
        "nullable" => integer(),
        "precision" => integer(),
        "scale" => integer(),
        "schemaName" => String.t(),
        "tableName" => String.t(),
        "typeName" => String.t()
      }
      
  """
  @type column_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sql_parameter() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type sql_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_statement_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type cancel_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_output() :: %{
        "ClusterIdentifier" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Database" => String.t(),
        "DbGroups" => list(String.t()),
        "DbUser" => String.t(),
        "Id" => String.t(),
        "SecretArn" => String.t(),
        "SessionId" => String.t(),
        "WorkgroupName" => String.t()
      }
      
  """
  @type execute_statement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_response() :: %{
        "ColumnList" => list(column_metadata()),
        "NextToken" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type describe_table_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_statements_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type active_statements_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_input() :: %{
        optional("ClientToken") => String.t(),
        optional("ClusterIdentifier") => String.t(),
        optional("Database") => String.t(),
        optional("DbUser") => String.t(),
        optional("Parameters") => list(sql_parameter()),
        optional("ResultFormat") => String.t(),
        optional("SecretArn") => String.t(),
        optional("SessionId") => String.t(),
        optional("SessionKeepAliveSeconds") => integer(),
        optional("StatementName") => String.t(),
        optional("WithEvent") => [boolean()],
        optional("WorkgroupName") => String.t(),
        required("Sql") => String.t()
      }
      
  """
  @type execute_statement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schemas_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("ConnectedDatabase") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaPattern") => String.t(),
        optional("SecretArn") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type list_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_input() :: %{
        optional("ClientToken") => String.t(),
        optional("ClusterIdentifier") => String.t(),
        optional("Database") => String.t(),
        optional("DbUser") => String.t(),
        optional("ResultFormat") => String.t(),
        optional("SecretArn") => String.t(),
        optional("SessionId") => String.t(),
        optional("SessionKeepAliveSeconds") => integer(),
        optional("StatementName") => String.t(),
        optional("WithEvent") => [boolean()],
        optional("WorkgroupName") => String.t(),
        required("Sqls") => list(String.t())
      }
      
  """
  @type batch_execute_statement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sub_statement_data() :: %{
        "CreatedAt" => [non_neg_integer()],
        "Duration" => float(),
        "Error" => String.t(),
        "HasResultSet" => [boolean()],
        "Id" => String.t(),
        "QueryString" => String.t(),
        "RedshiftQueryId" => float(),
        "ResultRows" => float(),
        "ResultSize" => float(),
        "Status" => String.t(),
        "UpdatedAt" => [non_neg_integer()]
      }
      
  """
  @type sub_statement_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_statement_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type describe_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_statements_response() :: %{
        "NextToken" => String.t(),
        "Statements" => list(statement_data())
      }
      
  """
  @type list_statements_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_databases_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SecretArn") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type list_databases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_response() :: %{
        "NextToken" => String.t(),
        "Tables" => list(table_member())
      }
      
  """
  @type list_tables_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_statement_result_response() :: %{
        "ColumnMetadata" => list(column_metadata()),
        "NextToken" => String.t(),
        "Records" => list(list(list())()),
        "TotalNumRows" => float()
      }
      
  """
  @type get_statement_result_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_execute_statement_exception() :: %{
        "Message" => String.t(),
        "StatementId" => String.t()
      }
      
  """
  @type batch_execute_statement_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("ConnectedDatabase") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Schema") => String.t(),
        optional("SecretArn") => String.t(),
        optional("Table") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type describe_table_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_exception() :: %{
        "Message" => String.t(),
        "StatementId" => String.t()
      }
      
  """
  @type execute_statement_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_statements_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("Database") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RoleLevel") => [boolean()],
        optional("StatementName") => String.t(),
        optional("Status") => String.t(),
        optional("WorkgroupName") => String.t()
      }
      
  """
  @type list_statements_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_timeout_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type query_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_sessions_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type active_sessions_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_statement_result_request() :: %{
        optional("NextToken") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type get_statement_result_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_statement_result_v2_request() :: %{
        optional("NextToken") => String.t(),
        required("Id") => String.t()
      }
      
  """
  @type get_statement_result_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_statement_response() :: %{
        "ClusterIdentifier" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Database" => String.t(),
        "DbUser" => String.t(),
        "Duration" => float(),
        "Error" => String.t(),
        "HasResultSet" => [boolean()],
        "Id" => String.t(),
        "QueryParameters" => list(sql_parameter()),
        "QueryString" => String.t(),
        "RedshiftPid" => float(),
        "RedshiftQueryId" => float(),
        "ResultFormat" => String.t(),
        "ResultRows" => float(),
        "ResultSize" => float(),
        "SecretArn" => String.t(),
        "SessionId" => String.t(),
        "Status" => String.t(),
        "SubStatements" => list(sub_statement_data()),
        "UpdatedAt" => [non_neg_integer()],
        "WorkgroupName" => String.t()
      }
      
  """
  @type describe_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_schemas_response() :: %{
        "NextToken" => String.t(),
        "Schemas" => list(String.t())
      }
      
  """
  @type list_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_databases_response() :: %{
        "Databases" => list(String.t()),
        "NextToken" => String.t()
      }
      
  """
  @type list_databases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_connection_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type database_connection_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_statement_result_v2_response() :: %{
        "ColumnMetadata" => list(column_metadata()),
        "NextToken" => String.t(),
        "Records" => list(list()),
        "ResultFormat" => String.t(),
        "TotalNumRows" => float()
      }
      
  """
  @type get_statement_result_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_request() :: %{
        optional("ClusterIdentifier") => String.t(),
        optional("ConnectedDatabase") => String.t(),
        optional("DbUser") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SchemaPattern") => String.t(),
        optional("SecretArn") => String.t(),
        optional("TablePattern") => String.t(),
        optional("WorkgroupName") => String.t(),
        required("Database") => String.t()
      }
      
  """
  @type list_tables_request() :: %{String.t() => any()}

  @type batch_execute_statement_errors() ::
          active_sessions_exceeded_exception()
          | validation_exception()
          | internal_server_exception()
          | batch_execute_statement_exception()
          | active_statements_exceeded_exception()

  @type cancel_statement_errors() ::
          database_connection_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_statement_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_table_errors() ::
          database_connection_exception()
          | query_timeout_exception()
          | validation_exception()
          | internal_server_exception()

  @type execute_statement_errors() ::
          active_sessions_exceeded_exception()
          | validation_exception()
          | internal_server_exception()
          | execute_statement_exception()
          | active_statements_exceeded_exception()

  @type get_statement_result_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_statement_result_v2_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_databases_errors() ::
          database_connection_exception()
          | query_timeout_exception()
          | validation_exception()
          | internal_server_exception()

  @type list_schemas_errors() ::
          database_connection_exception()
          | query_timeout_exception()
          | validation_exception()
          | internal_server_exception()

  @type list_statements_errors() :: validation_exception() | internal_server_exception()

  @type list_tables_errors() ::
          database_connection_exception()
          | query_timeout_exception()
          | validation_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2019-12-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "redshift-data",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Redshift Data",
      signature_version: "v4",
      signing_name: "redshift-data",
      target_prefix: "RedshiftData"
    }
  end

  @doc """
  Runs one or more SQL statements, which can be data manipulation language (DML)
  or data definition
  language (DDL).

  Depending on the authorization
  method, use one of the following combinations of request parameters:

    *
  Secrets Manager - when connecting to a cluster, provide the `secret-arn` of a
  secret
  stored in Secrets Manager which has `username` and `password`.
  The specified secret contains credentials
  to connect to the `database` you specify.
  When you are connecting to a cluster, you also supply the database name,
  If you provide a cluster identifier (`dbClusterIdentifier`), it must match the
  cluster identifier stored in the secret.
  When you are connecting to a serverless workgroup, you also supply the database
  name.

    *
  Temporary credentials - when connecting to your data warehouse, choose one of
  the following options:

      *
  When connecting to a serverless workgroup, specify the workgroup name and
  database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift-serverless:GetCredentials` operation is
  required.

      *
  When connecting to a cluster as an IAM identity, specify the cluster identifier
  and the database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift:GetClusterCredentialsWithIAM` operation
  is required.

      *
  When connecting to a cluster as a database user, specify the cluster identifier,
  the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec batch_execute_statement(map(), batch_execute_statement_input(), list()) ::
          {:ok, batch_execute_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_execute_statement_errors()}
  def batch_execute_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchExecuteStatement", input, options)
  end

  @doc """
  Cancels a running query.

  To be canceled, a query must be running.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec cancel_statement(map(), cancel_statement_request(), list()) ::
          {:ok, cancel_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_statement_errors()}
  def cancel_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelStatement", input, options)
  end

  @doc """
  Describes the details about a specific instance when a query was run by the
  Amazon Redshift Data API.

  The information
  includes when the query started, when it finished, the query status, the number
  of rows returned, and the SQL
  statement.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec describe_statement(map(), describe_statement_request(), list()) ::
          {:ok, describe_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_statement_errors()}
  def describe_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStatement", input, options)
  end

  @doc """
  Describes the detailed information about a table from metadata in the cluster.

  The
  information includes its columns.
  A token is returned to page through the column list.
  Depending on the authorization method, use one of the
  following combinations of request parameters:

    *
  Secrets Manager - when connecting to a cluster, provide the `secret-arn` of a
  secret
  stored in Secrets Manager which has `username` and `password`.
  The specified secret contains credentials
  to connect to the `database` you specify.
  When you are connecting to a cluster, you also supply the database name,
  If you provide a cluster identifier (`dbClusterIdentifier`), it must match the
  cluster identifier stored in the secret.
  When you are connecting to a serverless workgroup, you also supply the database
  name.

    *
  Temporary credentials - when connecting to your data warehouse, choose one of
  the following options:

      *
  When connecting to a serverless workgroup, specify the workgroup name and
  database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift-serverless:GetCredentials` operation is
  required.

      *
  When connecting to a cluster as an IAM identity, specify the cluster identifier
  and the database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift:GetClusterCredentialsWithIAM` operation
  is required.

      *
  When connecting to a cluster as a database user, specify the cluster identifier,
  the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec describe_table(map(), describe_table_request(), list()) ::
          {:ok, describe_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_table_errors()}
  def describe_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTable", input, options)
  end

  @doc """
  Runs an SQL statement, which can be data manipulation language (DML) or data
  definition
  language (DDL).

  This statement must be a single SQL statement.
  Depending on the authorization
  method, use one of the following combinations of request parameters:

    *
  Secrets Manager - when connecting to a cluster, provide the `secret-arn` of a
  secret
  stored in Secrets Manager which has `username` and `password`.
  The specified secret contains credentials
  to connect to the `database` you specify.
  When you are connecting to a cluster, you also supply the database name,
  If you provide a cluster identifier (`dbClusterIdentifier`), it must match the
  cluster identifier stored in the secret.
  When you are connecting to a serverless workgroup, you also supply the database
  name.

    *
  Temporary credentials - when connecting to your data warehouse, choose one of
  the following options:

      *
  When connecting to a serverless workgroup, specify the workgroup name and
  database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift-serverless:GetCredentials` operation is
  required.

      *
  When connecting to a cluster as an IAM identity, specify the cluster identifier
  and the database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift:GetClusterCredentialsWithIAM` operation
  is required.

      *
  When connecting to a cluster as a database user, specify the cluster identifier,
  the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec execute_statement(map(), execute_statement_input(), list()) ::
          {:ok, execute_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_statement_errors()}
  def execute_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteStatement", input, options)
  end

  @doc """
  Fetches the temporarily cached result of an SQL statement in JSON format.

  The `ExecuteStatement` or `BatchExecuteStatement` operation that ran the SQL
  statement must have specified `ResultFormat` as `JSON`
  , or let the format default to JSON.
  A token is returned to page through the statement results.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec get_statement_result(map(), get_statement_result_request(), list()) ::
          {:ok, get_statement_result_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_statement_result_errors()}
  def get_statement_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStatementResult", input, options)
  end

  @doc """
  Fetches the temporarily cached result of an SQL statement in CSV format.

  The `ExecuteStatement` or `BatchExecuteStatement` operation that ran the SQL
  statement must have specified `ResultFormat` as `CSV`.
  A token is returned to page through the statement results.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec get_statement_result_v2(map(), get_statement_result_v2_request(), list()) ::
          {:ok, get_statement_result_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_statement_result_v2_errors()}
  def get_statement_result_v2(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStatementResultV2", input, options)
  end

  @doc """
  List the databases in a cluster.

  A token is returned to page through the database list.
  Depending on the authorization method, use one of the
  following combinations of request parameters:

    *
  Secrets Manager - when connecting to a cluster, provide the `secret-arn` of a
  secret
  stored in Secrets Manager which has `username` and `password`.
  The specified secret contains credentials
  to connect to the `database` you specify.
  When you are connecting to a cluster, you also supply the database name,
  If you provide a cluster identifier (`dbClusterIdentifier`), it must match the
  cluster identifier stored in the secret.
  When you are connecting to a serverless workgroup, you also supply the database
  name.

    *
  Temporary credentials - when connecting to your data warehouse, choose one of
  the following options:

      *
  When connecting to a serverless workgroup, specify the workgroup name and
  database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift-serverless:GetCredentials` operation is
  required.

      *
  When connecting to a cluster as an IAM identity, specify the cluster identifier
  and the database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift:GetClusterCredentialsWithIAM` operation
  is required.

      *
  When connecting to a cluster as a database user, specify the cluster identifier,
  the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec list_databases(map(), list_databases_request(), list()) ::
          {:ok, list_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_databases_errors()}
  def list_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatabases", input, options)
  end

  @doc """
  Lists the schemas in a database.

  A token is returned to page through the schema list.
  Depending on the authorization method, use one of the
  following combinations of request parameters:

    *
  Secrets Manager - when connecting to a cluster, provide the `secret-arn` of a
  secret
  stored in Secrets Manager which has `username` and `password`.
  The specified secret contains credentials
  to connect to the `database` you specify.
  When you are connecting to a cluster, you also supply the database name,
  If you provide a cluster identifier (`dbClusterIdentifier`), it must match the
  cluster identifier stored in the secret.
  When you are connecting to a serverless workgroup, you also supply the database
  name.

    *
  Temporary credentials - when connecting to your data warehouse, choose one of
  the following options:

      *
  When connecting to a serverless workgroup, specify the workgroup name and
  database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift-serverless:GetCredentials` operation is
  required.

      *
  When connecting to a cluster as an IAM identity, specify the cluster identifier
  and the database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift:GetClusterCredentialsWithIAM` operation
  is required.

      *
  When connecting to a cluster as a database user, specify the cluster identifier,
  the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec list_schemas(map(), list_schemas_request(), list()) ::
          {:ok, list_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schemas_errors()}
  def list_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSchemas", input, options)
  end

  @doc """
  List of SQL statements.

  By default, only finished statements are shown.
  A token is returned to page through the statement list.

  When you use identity-enhanced role sessions to list statements, you must
  provide either the
  `cluster-identifier` or `workgroup-name` parameter. This ensures that the IdC
  user
  can only access the Amazon Redshift IdC applications they are assigned. For more
  information, see
  [
  Trusted identity propagation
  overview](https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-overview.html).

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec list_statements(map(), list_statements_request(), list()) ::
          {:ok, list_statements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_statements_errors()}
  def list_statements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStatements", input, options)
  end

  @doc """
  List the tables in a database.

  If neither `SchemaPattern` nor `TablePattern` are specified, then
  all tables in the database are returned.
  A token is returned to page through the table list.
  Depending on the authorization method, use one of the
  following combinations of request parameters:

    *
  Secrets Manager - when connecting to a cluster, provide the `secret-arn` of a
  secret
  stored in Secrets Manager which has `username` and `password`.
  The specified secret contains credentials
  to connect to the `database` you specify.
  When you are connecting to a cluster, you also supply the database name,
  If you provide a cluster identifier (`dbClusterIdentifier`), it must match the
  cluster identifier stored in the secret.
  When you are connecting to a serverless workgroup, you also supply the database
  name.

    *
  Temporary credentials - when connecting to your data warehouse, choose one of
  the following options:

      *
  When connecting to a serverless workgroup, specify the workgroup name and
  database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift-serverless:GetCredentials` operation is
  required.

      *
  When connecting to a cluster as an IAM identity, specify the cluster identifier
  and the database name.
  The database user name is derived from the IAM identity. For example,
  `arn:iam::123456789012:user:foo` has the database user name `IAM:foo`.
  Also, permission to call the `redshift:GetClusterCredentialsWithIAM` operation
  is required.

      *
  When connecting to a cluster as a database user, specify the cluster identifier,
  the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see
  [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  @spec list_tables(map(), list_tables_request(), list()) ::
          {:ok, list_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tables_errors()}
  def list_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end
end
