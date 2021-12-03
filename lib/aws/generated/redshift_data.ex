# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RedshiftData do
  @moduledoc """
  You can use the Amazon Redshift Data API to run queries on Amazon Redshift
  tables.

  You can run SQL statements, which are committed if the statement succeeds.

  For more information about the Amazon Redshift Data API, see [Using the Amazon Redshift Data
  API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Cluster Management Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-12-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "redshift-data",
      global?: false,
      protocol: "json",
      service_id: "Redshift Data",
      signature_version: "v4",
      signing_name: "redshift-data",
      target_prefix: "RedshiftData"
    }
  end

  @doc """
  Runs one or more SQL statements, which can be data manipulation language (DML)
  or data definition language (DDL).

  Depending on the authorization method, use one of the following combinations of
  request parameters:

    * Secrets Manager - when connecting to a cluster, specify the Amazon
  Resource Name (ARN) of the secret, the database name, and the cluster identifier
  that matches the cluster in the secret. When connecting to a serverless
  endpoint, specify the Amazon Resource Name (ARN) of the secret and the database
  name.

    * Temporary credentials - when connecting to a cluster, specify the
  cluster identifier, the database name, and the database user name. Also,
  permission to call the `redshift:GetClusterCredentials` operation is required.
  When connecting to a serverless endpoint, specify the database name.
  """
  def batch_execute_statement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchExecuteStatement", input, options)
  end

  @doc """
  Cancels a running query.

  To be canceled, a query must be running.
  """
  def cancel_statement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelStatement", input, options)
  end

  @doc """
  Describes the details about a specific instance when a query was run by the
  Amazon Redshift Data API.

  The information includes when the query started, when it finished, the query
  status, the number of rows returned, and the SQL statement.
  """
  def describe_statement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeStatement", input, options)
  end

  @doc """
  Describes the detailed information about a table from metadata in the cluster.

  The information includes its columns. A token is returned to page through the
  column list. Depending on the authorization method, use one of the following
  combinations of request parameters:

    * Secrets Manager - when connecting to a cluster, specify the Amazon
  Resource Name (ARN) of the secret, the database name, and the cluster identifier
  that matches the cluster in the secret. When connecting to a serverless
  endpoint, specify the Amazon Resource Name (ARN) of the secret and the database
  name.

    * Temporary credentials - when connecting to a cluster, specify the
  cluster identifier, the database name, and the database user name. Also,
  permission to call the `redshift:GetClusterCredentials` operation is required.
  When connecting to a serverless endpoint, specify the database name.
  """
  def describe_table(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTable", input, options)
  end

  @doc """
  Runs an SQL statement, which can be data manipulation language (DML) or data
  definition language (DDL).

  This statement must be a single SQL statement. Depending on the authorization
  method, use one of the following combinations of request parameters:

    * Secrets Manager - when connecting to a cluster, specify the Amazon
  Resource Name (ARN) of the secret, the database name, and the cluster identifier
  that matches the cluster in the secret. When connecting to a serverless
  endpoint, specify the Amazon Resource Name (ARN) of the secret and the database
  name.

    * Temporary credentials - when connecting to a cluster, specify the
  cluster identifier, the database name, and the database user name. Also,
  permission to call the `redshift:GetClusterCredentials` operation is required.
  When connecting to a serverless endpoint, specify the database name.
  """
  def execute_statement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExecuteStatement", input, options)
  end

  @doc """
  Fetches the temporarily cached result of an SQL statement.

  A token is returned to page through the statement results.
  """
  def get_statement_result(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetStatementResult", input, options)
  end

  @doc """
  List the databases in a cluster.

  A token is returned to page through the database list. Depending on the
  authorization method, use one of the following combinations of request
  parameters:

    * Secrets Manager - when connecting to a cluster, specify the Amazon
  Resource Name (ARN) of the secret, the database name, and the cluster identifier
  that matches the cluster in the secret. When connecting to a serverless
  endpoint, specify the Amazon Resource Name (ARN) of the secret and the database
  name.

    * Temporary credentials - when connecting to a cluster, specify the
  cluster identifier, the database name, and the database user name. Also,
  permission to call the `redshift:GetClusterCredentials` operation is required.
  When connecting to a serverless endpoint, specify the database name.
  """
  def list_databases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDatabases", input, options)
  end

  @doc """
  Lists the schemas in a database.

  A token is returned to page through the schema list. Depending on the
  authorization method, use one of the following combinations of request
  parameters:

    * Secrets Manager - when connecting to a cluster, specify the Amazon
  Resource Name (ARN) of the secret, the database name, and the cluster identifier
  that matches the cluster in the secret. When connecting to a serverless
  endpoint, specify the Amazon Resource Name (ARN) of the secret and the database
  name.

    * Temporary credentials - when connecting to a cluster, specify the
  cluster identifier, the database name, and the database user name. Also,
  permission to call the `redshift:GetClusterCredentials` operation is required.
  When connecting to a serverless endpoint, specify the database name.
  """
  def list_schemas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSchemas", input, options)
  end

  @doc """
  List of SQL statements.

  By default, only finished statements are shown. A token is returned to page
  through the statement list.
  """
  def list_statements(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListStatements", input, options)
  end

  @doc """
  List the tables in a database.

  If neither `SchemaPattern` nor `TablePattern` are specified, then all tables in
  the database are returned. A token is returned to page through the table list.
  Depending on the authorization method, use one of the following combinations of
  request parameters:

    * Secrets Manager - when connecting to a cluster, specify the Amazon
  Resource Name (ARN) of the secret, the database name, and the cluster identifier
  that matches the cluster in the secret. When connecting to a serverless
  endpoint, specify the Amazon Resource Name (ARN) of the secret and the database
  name.

    * Temporary credentials - when connecting to a cluster, specify the
  cluster identifier, the database name, and the database user name. Also,
  permission to call the `redshift:GetClusterCredentials` operation is required.
  When connecting to a serverless endpoint, specify the database name.
  """
  def list_tables(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTables", input, options)
  end
end
