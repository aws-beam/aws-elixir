# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RedshiftData do
  @moduledoc """
  You can use the Amazon Redshift Data API to run queries on Amazon Redshift
  tables. You can run individual SQL statements, which are committed if the
  statement succeeds.
  """

  @doc """
  Cancels a running query. To be canceled, a query must be running.
  """
  def cancel_statement(client, input, options \\ []) do
    request(client, "CancelStatement", input, options)
  end

  @doc """
  Describes the details about a specific instance when a query was run by the
  Amazon Redshift Data API. The information includes when the query started,
  when it finished, the query status, the number of rows returned, and the
  SQL statement.
  """
  def describe_statement(client, input, options \\ []) do
    request(client, "DescribeStatement", input, options)
  end

  @doc """
  Describes the detailed information about a table from metadata in the
  cluster. The information includes its columns. A token is returned to page
  through the column list. Depending on the authorization method, use one of
  the following combinations of request parameters:

  <ul> <li> AWS Secrets Manager - specify the Amazon Resource Name (ARN) of
  the secret and the cluster identifier that matches the cluster in the
  secret.

  </li> <li> Temporary credentials - specify the cluster identifier, the
  database name, and the database user name. Permission to call the
  `redshift:GetClusterCredentials` operation is required to use this method.

  </li> </ul>
  """
  def describe_table(client, input, options \\ []) do
    request(client, "DescribeTable", input, options)
  end

  @doc """
  Runs an SQL statement, which can be data manipulation language (DML) or
  data definition language (DDL). This statement must be a single SQL
  statement. Depending on the authorization method, use one of the following
  combinations of request parameters:

  <ul> <li> AWS Secrets Manager - specify the Amazon Resource Name (ARN) of
  the secret and the cluster identifier that matches the cluster in the
  secret.

  </li> <li> Temporary credentials - specify the cluster identifier, the
  database name, and the database user name. Permission to call the
  `redshift:GetClusterCredentials` operation is required to use this method.

  </li> </ul>
  """
  def execute_statement(client, input, options \\ []) do
    request(client, "ExecuteStatement", input, options)
  end

  @doc """
  Fetches the temporarily cached result of an SQL statement. A token is
  returned to page through the statement results.
  """
  def get_statement_result(client, input, options \\ []) do
    request(client, "GetStatementResult", input, options)
  end

  @doc """
  List the databases in a cluster. A token is returned to page through the
  database list. Depending on the authorization method, use one of the
  following combinations of request parameters:

  <ul> <li> AWS Secrets Manager - specify the Amazon Resource Name (ARN) of
  the secret and the cluster identifier that matches the cluster in the
  secret.

  </li> <li> Temporary credentials - specify the cluster identifier, the
  database name, and the database user name. Permission to call the
  `redshift:GetClusterCredentials` operation is required to use this method.

  </li> </ul>
  """
  def list_databases(client, input, options \\ []) do
    request(client, "ListDatabases", input, options)
  end

  @doc """
  Lists the schemas in a database. A token is returned to page through the
  schema list. Depending on the authorization method, use one of the
  following combinations of request parameters:

  <ul> <li> AWS Secrets Manager - specify the Amazon Resource Name (ARN) of
  the secret and the cluster identifier that matches the cluster in the
  secret.

  </li> <li> Temporary credentials - specify the cluster identifier, the
  database name, and the database user name. Permission to call the
  `redshift:GetClusterCredentials` operation is required to use this method.

  </li> </ul>
  """
  def list_schemas(client, input, options \\ []) do
    request(client, "ListSchemas", input, options)
  end

  @doc """
  List of SQL statements. By default, only finished statements are shown. A
  token is returned to page through the statement list.
  """
  def list_statements(client, input, options \\ []) do
    request(client, "ListStatements", input, options)
  end

  @doc """
  List the tables in a database. If neither `SchemaPattern` nor
  `TablePattern` are specified, then all tables in the database are returned.
  A token is returned to page through the table list. Depending on the
  authorization method, use one of the following combinations of request
  parameters:

  <ul> <li> AWS Secrets Manager - specify the Amazon Resource Name (ARN) of
  the secret and the cluster identifier that matches the cluster in the
  secret.

  </li> <li> Temporary credentials - specify the cluster identifier, the
  database name, and the database user name. Permission to call the
  `redshift:GetClusterCredentials` operation is required to use this method.

  </li> </ul>
  """
  def list_tables(client, input, options \\ []) do
    request(client, "ListTables", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "redshift-data"}
    host = build_host("redshift-data", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "RedshiftData.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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
end
