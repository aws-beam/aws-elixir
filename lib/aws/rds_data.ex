# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RDSData do
  @moduledoc """
  Amazon RDS Data Service

  Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
  Aurora Serverless DB cluster. To run these statements, you work with the
  Data Service API.

  For more information about the Data Service API, see [Using the Data API
  for Aurora
  Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
  in the *Amazon Aurora User Guide*.

  <note> If you have questions or comments related to the Data API, send
  email to
  [Rds-data-api-feedback@amazon.com](mailto:Rds-data-api-feedback@amazon.com).

  </note>
  """

  @doc """
  Runs a batch SQL statement over an array of data.

  You can run bulk update and insert operations for multiple records using a
  DML statement with different parameter sets. Bulk operations can provide a
  significant performance improvement over individual insert and update
  operations.

  <important> If a call isn't part of a transaction because it doesn't
  include the `transactionID` parameter, changes that result from the call
  are committed automatically.

  </important>
  """
  def batch_execute_statement(client, input, options \\ []) do
    path_ = "/BatchExecute"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Starts a SQL transaction.

  <pre>` &lt;important&gt; &lt;p&gt;A transaction can run for a maximum of 24
  hours. A transaction is terminated and rolled back automatically after 24
  hours.&lt;/p&gt; &lt;p&gt;A transaction times out if no calls use its
  transaction ID in three minutes. If a transaction times out before it's
  committed, it's rolled back automatically.&lt;/p&gt; &lt;p&gt;DDL
  statements inside a transaction cause an implicit commit. We recommend that
  you run each DDL statement in a separate
  &lt;code&gt;ExecuteStatement&lt;/code&gt; call with
  &lt;code&gt;continueAfterTimeout&lt;/code&gt; enabled.&lt;/p&gt;
  &lt;/important&gt; `</pre>
  """
  def begin_transaction(client, input, options \\ []) do
    path_ = "/BeginTransaction"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Ends a SQL transaction started with the `BeginTransaction` operation and
  commits the changes.
  """
  def commit_transaction(client, input, options \\ []) do
    path_ = "/CommitTransaction"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Runs one or more SQL statements.

  <important> This operation is deprecated. Use the `BatchExecuteStatement`
  or `ExecuteStatement` operation.

  </important>
  """
  def execute_sql(client, input, options \\ []) do
    path_ = "/ExecuteSql"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Runs a SQL statement against a database.

  <important> If a call isn't part of a transaction because it doesn't
  include the `transactionID` parameter, changes that result from the call
  are committed automatically.

  </important> The response size limit is 1 MB. If the call returns more than
  1 MB of response data, the call is terminated.
  """
  def execute_statement(client, input, options \\ []) do
    path_ = "/Execute"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Performs a rollback of a transaction. Rolling back a transaction cancels
  its changes.
  """
  def rollback_transaction(client, input, options \\ []) do
    path_ = "/RollbackTransaction"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "rds-data"}
    host = build_host("rds-data", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
