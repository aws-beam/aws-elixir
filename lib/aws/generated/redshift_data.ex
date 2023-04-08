# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RedshiftData do
  @moduledoc """
  You can use the Amazon Redshift Data API to run queries on Amazon Redshift
  tables.

  You can run SQL statements, which are committed if the statement succeeds.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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

    * Secrets Manager - when connecting to a cluster, provide the
  `secret-arn` of a secret stored in Secrets Manager which has `username` and
  `password`. The specified secret contains credentials to connect to the
  `database` you specify. When you are connecting to a cluster, you also supply
  the database name, If you provide a cluster identifier (`dbClusterIdentifier`),
  it must match the cluster identifier stored in the secret. When you are
  connecting to a serverless workgroup, you also supply the database name.

    * Temporary credentials - when connecting to your data warehouse,
  choose one of the following options:

      * When connecting to a serverless workgroup, specify the
  workgroup name and database name. The database user name is derived from the IAM
  identity. For example, `arn:iam::123456789012:user:foo` has the database user
  name `IAM:foo`. Also, permission to call the
  `redshift-serverless:GetCredentials` operation is required.

      * When connecting to a cluster as an IAM identity,
  specify the cluster identifier and the database name. The database user name is
  derived from the IAM identity. For example, `arn:iam::123456789012:user:foo` has
  the database user name `IAM:foo`. Also, permission to call the
  `redshift:GetClusterCredentialsWithIAM` operation is required.

      * When connecting to a cluster as a database user,
  specify the cluster identifier, the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def batch_execute_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchExecuteStatement", input, options)
  end

  @doc """
  Cancels a running query.

  To be canceled, a query must be running.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def cancel_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelStatement", input, options)
  end

  @doc """
  Describes the details about a specific instance when a query was run by the
  Amazon Redshift Data API.

  The information includes when the query started, when it finished, the query
  status, the number of rows returned, and the SQL statement.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def describe_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStatement", input, options)
  end

  @doc """
  Describes the detailed information about a table from metadata in the cluster.

  The information includes its columns. A token is returned to page through the
  column list. Depending on the authorization method, use one of the following
  combinations of request parameters:

    * Secrets Manager - when connecting to a cluster, provide the
  `secret-arn` of a secret stored in Secrets Manager which has `username` and
  `password`. The specified secret contains credentials to connect to the
  `database` you specify. When you are connecting to a cluster, you also supply
  the database name, If you provide a cluster identifier (`dbClusterIdentifier`),
  it must match the cluster identifier stored in the secret. When you are
  connecting to a serverless workgroup, you also supply the database name.

    * Temporary credentials - when connecting to your data warehouse,
  choose one of the following options:

      * When connecting to a serverless workgroup, specify the
  workgroup name and database name. The database user name is derived from the IAM
  identity. For example, `arn:iam::123456789012:user:foo` has the database user
  name `IAM:foo`. Also, permission to call the
  `redshift-serverless:GetCredentials` operation is required.

      * When connecting to a cluster as an IAM identity,
  specify the cluster identifier and the database name. The database user name is
  derived from the IAM identity. For example, `arn:iam::123456789012:user:foo` has
  the database user name `IAM:foo`. Also, permission to call the
  `redshift:GetClusterCredentialsWithIAM` operation is required.

      * When connecting to a cluster as a database user,
  specify the cluster identifier, the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def describe_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTable", input, options)
  end

  @doc """
  Runs an SQL statement, which can be data manipulation language (DML) or data
  definition language (DDL).

  This statement must be a single SQL statement. Depending on the authorization
  method, use one of the following combinations of request parameters:

    * Secrets Manager - when connecting to a cluster, provide the
  `secret-arn` of a secret stored in Secrets Manager which has `username` and
  `password`. The specified secret contains credentials to connect to the
  `database` you specify. When you are connecting to a cluster, you also supply
  the database name, If you provide a cluster identifier (`dbClusterIdentifier`),
  it must match the cluster identifier stored in the secret. When you are
  connecting to a serverless workgroup, you also supply the database name.

    * Temporary credentials - when connecting to your data warehouse,
  choose one of the following options:

      * When connecting to a serverless workgroup, specify the
  workgroup name and database name. The database user name is derived from the IAM
  identity. For example, `arn:iam::123456789012:user:foo` has the database user
  name `IAM:foo`. Also, permission to call the
  `redshift-serverless:GetCredentials` operation is required.

      * When connecting to a cluster as an IAM identity,
  specify the cluster identifier and the database name. The database user name is
  derived from the IAM identity. For example, `arn:iam::123456789012:user:foo` has
  the database user name `IAM:foo`. Also, permission to call the
  `redshift:GetClusterCredentialsWithIAM` operation is required.

      * When connecting to a cluster as a database user,
  specify the cluster identifier, the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def execute_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteStatement", input, options)
  end

  @doc """
  Fetches the temporarily cached result of an SQL statement.

  A token is returned to page through the statement results.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def get_statement_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStatementResult", input, options)
  end

  @doc """
  List the databases in a cluster.

  A token is returned to page through the database list. Depending on the
  authorization method, use one of the following combinations of request
  parameters:

    * Secrets Manager - when connecting to a cluster, provide the
  `secret-arn` of a secret stored in Secrets Manager which has `username` and
  `password`. The specified secret contains credentials to connect to the
  `database` you specify. When you are connecting to a cluster, you also supply
  the database name, If you provide a cluster identifier (`dbClusterIdentifier`),
  it must match the cluster identifier stored in the secret. When you are
  connecting to a serverless workgroup, you also supply the database name.

    * Temporary credentials - when connecting to your data warehouse,
  choose one of the following options:

      * When connecting to a serverless workgroup, specify the
  workgroup name and database name. The database user name is derived from the IAM
  identity. For example, `arn:iam::123456789012:user:foo` has the database user
  name `IAM:foo`. Also, permission to call the
  `redshift-serverless:GetCredentials` operation is required.

      * When connecting to a cluster as an IAM identity,
  specify the cluster identifier and the database name. The database user name is
  derived from the IAM identity. For example, `arn:iam::123456789012:user:foo` has
  the database user name `IAM:foo`. Also, permission to call the
  `redshift:GetClusterCredentialsWithIAM` operation is required.

      * When connecting to a cluster as a database user,
  specify the cluster identifier, the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def list_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatabases", input, options)
  end

  @doc """
  Lists the schemas in a database.

  A token is returned to page through the schema list. Depending on the
  authorization method, use one of the following combinations of request
  parameters:

    * Secrets Manager - when connecting to a cluster, provide the
  `secret-arn` of a secret stored in Secrets Manager which has `username` and
  `password`. The specified secret contains credentials to connect to the
  `database` you specify. When you are connecting to a cluster, you also supply
  the database name, If you provide a cluster identifier (`dbClusterIdentifier`),
  it must match the cluster identifier stored in the secret. When you are
  connecting to a serverless workgroup, you also supply the database name.

    * Temporary credentials - when connecting to your data warehouse,
  choose one of the following options:

      * When connecting to a serverless workgroup, specify the
  workgroup name and database name. The database user name is derived from the IAM
  identity. For example, `arn:iam::123456789012:user:foo` has the database user
  name `IAM:foo`. Also, permission to call the
  `redshift-serverless:GetCredentials` operation is required.

      * When connecting to a cluster as an IAM identity,
  specify the cluster identifier and the database name. The database user name is
  derived from the IAM identity. For example, `arn:iam::123456789012:user:foo` has
  the database user name `IAM:foo`. Also, permission to call the
  `redshift:GetClusterCredentialsWithIAM` operation is required.

      * When connecting to a cluster as a database user,
  specify the cluster identifier, the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def list_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSchemas", input, options)
  end

  @doc """
  List of SQL statements.

  By default, only finished statements are shown. A token is returned to page
  through the statement list.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def list_statements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStatements", input, options)
  end

  @doc """
  List the tables in a database.

  If neither `SchemaPattern` nor `TablePattern` are specified, then all tables in
  the database are returned. A token is returned to page through the table list.
  Depending on the authorization method, use one of the following combinations of
  request parameters:

    * Secrets Manager - when connecting to a cluster, provide the
  `secret-arn` of a secret stored in Secrets Manager which has `username` and
  `password`. The specified secret contains credentials to connect to the
  `database` you specify. When you are connecting to a cluster, you also supply
  the database name, If you provide a cluster identifier (`dbClusterIdentifier`),
  it must match the cluster identifier stored in the secret. When you are
  connecting to a serverless workgroup, you also supply the database name.

    * Temporary credentials - when connecting to your data warehouse,
  choose one of the following options:

      * When connecting to a serverless workgroup, specify the
  workgroup name and database name. The database user name is derived from the IAM
  identity. For example, `arn:iam::123456789012:user:foo` has the database user
  name `IAM:foo`. Also, permission to call the
  `redshift-serverless:GetCredentials` operation is required.

      * When connecting to a cluster as an IAM identity,
  specify the cluster identifier and the database name. The database user name is
  derived from the IAM identity. For example, `arn:iam::123456789012:user:foo` has
  the database user name `IAM:foo`. Also, permission to call the
  `redshift:GetClusterCredentialsWithIAM` operation is required.

      * When connecting to a cluster as a database user,
  specify the cluster identifier, the database name, and the database user name.
  Also, permission to call the `redshift:GetClusterCredentials` operation is
  required.

  For more information about the Amazon Redshift Data API and CLI usage examples,
  see [Using the Amazon Redshift Data API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in the
  *Amazon Redshift Management Guide*.
  """
  def list_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end
end
