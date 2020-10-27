# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamWrite do
  @moduledoc """
  Amazon Timestream is a fast, scalable, fully managed time series database
  service that makes it easy to store and analyze trillions of time series
  data points per day. With Timestream, you can easily store and analyze IoT
  sensor data to derive insights from your IoT applications. You can analyze
  industrial telemetry to streamline equipment management and maintenance.
  You can also store and analyze log data and metrics to improve the
  performance and availability of your applications. Timestream is built from
  the ground up to effectively ingest, process, and store time series data.
  It organizes data to optimize query processing. It automatically scales
  based on the volume of data ingested and on the query volume to ensure you
  receive optimal performance while inserting and querying data. As your data
  grows over time, Timestream’s adaptive query processing engine spans across
  storage tiers to provide fast analysis while reducing costs.
  """

  @doc """
  Creates a new Timestream database. If the KMS key is not specified, the
  database will be encrypted with a Timestream managed KMS key located in
  your account. Refer to [AWS managed KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  for more info. Service quotas apply. For more information, see [Access
  Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def create_database(client, input, options \\ []) do
    request(client, "CreateDatabase", input, options)
  end

  @doc """
  The CreateTable operation adds a new table to an existing database in your
  account. In an AWS account, table names must be at least unique within each
  Region if they are in the same database. You may have identical table names
  in the same Region if the tables are in seperate databases. While creating
  the table, you must specify the table name, database name, and the
  retention properties. Service quotas apply. For more information, see
  [Access
  Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def create_table(client, input, options \\ []) do
    request(client, "CreateTable", input, options)
  end

  @doc """
  Deletes a given Timestream database. *This is an irreversible operation.
  After a database is deleted, the time series data from its tables cannot be
  recovered.*

  All tables in the database must be deleted first, or a ValidationException
  error will be thrown.
  """
  def delete_database(client, input, options \\ []) do
    request(client, "DeleteDatabase", input, options)
  end

  @doc """
  Deletes a given Timestream table. This is an irreversible operation. After
  a Timestream database table is deleted, the time series data stored in the
  table cannot be recovered.
  """
  def delete_table(client, input, options \\ []) do
    request(client, "DeleteTable", input, options)
  end

  @doc """
  Returns information about the database, including the database name, time
  that the database was created, and the total number of tables found within
  the database. Service quotas apply. For more information, see [Access
  Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def describe_database(client, input, options \\ []) do
    request(client, "DescribeDatabase", input, options)
  end

  @doc """
  DescribeEndpoints returns a list of available endpoints to make Timestream
  API calls against. This API is available through both Write and Query.

  Because Timestream’s SDKs are designed to transparently work with the
  service’s architecture, including the management and mapping of the service
  endpoints, *it is not recommended that you use this API unless*:

  <ul> <li> Your application uses a programming language that does not yet
  have SDK support

  </li> <li> You require better control over the client-side implementation

  </li> </ul> For detailed information on how to use DescribeEndpoints, see
  [The Endpoint Discovery Pattern and REST
  APIs](https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html).
  """
  def describe_endpoints(client, input, options \\ []) do
    request(client, "DescribeEndpoints", input, options)
  end

  @doc """
  Returns information about the table, including the table name, database
  name, retention duration of the memory store and the magnetic store.
  Service quotas apply. For more information, see [Access
  Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def describe_table(client, input, options \\ []) do
    request(client, "DescribeTable", input, options)
  end

  @doc """
  Returns a list of your Timestream databases. Service quotas apply. For more
  information, see [Access
  Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def list_databases(client, input, options \\ []) do
    request(client, "ListDatabases", input, options)
  end

  @doc """
  A list of tables, along with the name, status and retention properties of
  each table.
  """
  def list_tables(client, input, options \\ []) do
    request(client, "ListTables", input, options)
  end

  @doc """
  List all tags on a Timestream resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Associate a set of tags with a Timestream resource. You can then activate
  these user-defined tags so that they appear on the Billing and Cost
  Management console for cost allocation tracking.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a Timestream resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Modifies the KMS key for an existing database. While updating the database,
  you must specify the database name and the identifier of the new KMS key to
  be used (`KmsKeyId`). If there are any concurrent `UpdateDatabase`
  requests, first writer wins.
  """
  def update_database(client, input, options \\ []) do
    request(client, "UpdateDatabase", input, options)
  end

  @doc """
  Modifies the retention duration of the memory store and magnetic store for
  your Timestream table. Note that the change in retention duration takes
  effect immediately. For example, if the retention period of the memory
  store was initially set to 2 hours and then changed to 24 hours, the memory
  store will be capable of holding 24 hours of data, but will be populated
  with 24 hours of data 22 hours after this change was made. Timestream does
  not retrieve data from the magnetic store to populate the memory store.

  Service quotas apply. For more information, see [Access
  Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def update_table(client, input, options \\ []) do
    request(client, "UpdateTable", input, options)
  end

  @doc """
  The WriteRecords operation enables you to write your time series data into
  Timestream. You can specify a single data point or a batch of data points
  to be inserted into the system. Timestream offers you with a flexible
  schema that auto detects the column names and data types for your
  Timestream tables based on the dimension names and data types of the data
  points you specify when invoking writes into the database. Timestream
  support eventual consistency read semantics. This means that when you query
  data immediately after writing a batch of data into Timestream, the query
  results might not reflect the results of a recently completed write
  operation. The results may also include some stale data. If you repeat the
  query request after a short time, the results should return the latest
  data. Service quotas apply. For more information, see [Access
  Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def write_records(client, input, options \\ []) do
    request(client, "WriteRecords", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "timestream"}
    host = build_host("ingest.timestream", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.0"},
      {"X-Amz-Target", "Timestream_20181101.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case do_request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
