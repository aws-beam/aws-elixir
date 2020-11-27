# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamWrite do
  @moduledoc """
  Amazon Timestream is a fast, scalable, fully managed time series database
  service that makes it easy to store and analyze trillions of time series data
  points per day.

  With Timestream, you can easily store and analyze IoT sensor data to derive
  insights from your IoT applications. You can analyze industrial telemetry to
  streamline equipment management and maintenance. You can also store and analyze
  log data and metrics to improve the performance and availability of your
  applications. Timestream is built from the ground up to effectively ingest,
  process, and store time series data. It organizes data to optimize query
  processing. It automatically scales based on the volume of data ingested and on
  the query volume to ensure you receive optimal performance while inserting and
  querying data. As your data grows over time, Timestream’s adaptive query
  processing engine spans across storage tiers to provide fast analysis while
  reducing costs.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Timestream Write",
      api_version: "2018-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "ingest.timestream",
      global?: false,
      protocol: "json",
      service_id: "Timestream Write",
      signature_version: "v4",
      signing_name: "timestream",
      target_prefix: "Timestream_20181101"
    }
  end

  @doc """
  Creates a new Timestream database.

  If the KMS key is not specified, the database will be encrypted with a
  Timestream managed KMS key located in your account. Refer to [AWS managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  for more info. Service quotas apply. For more information, see [Access Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def create_database(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDatabase", input, options)
  end

  @doc """
  The CreateTable operation adds a new table to an existing database in your
  account.

  In an AWS account, table names must be at least unique within each Region if
  they are in the same database. You may have identical table names in the same
  Region if the tables are in seperate databases. While creating the table, you
  must specify the table name, database name, and the retention properties.
  Service quotas apply. For more information, see [Access Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def create_table(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTable", input, options)
  end

  @doc """
  Deletes a given Timestream database.

  *This is an irreversible operation. After a database is deleted, the time series
  data from its tables cannot be recovered.*

  All tables in the database must be deleted first, or a ValidationException error
  will be thrown.

  Due to the nature of distributed retries, the operation can return either
  success or a ResourceNotFoundException. Clients should consider them equivalent.
  """
  def delete_database(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDatabase", input, options)
  end

  @doc """
  Deletes a given Timestream table.

  This is an irreversible operation. After a Timestream database table is deleted,
  the time series data stored in the table cannot be recovered.

  Due to the nature of distributed retries, the operation can return either
  success or a ResourceNotFoundException. Clients should consider them equivalent.
  """
  def delete_table(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTable", input, options)
  end

  @doc """
  Returns information about the database, including the database name, time that
  the database was created, and the total number of tables found within the
  database.

  Service quotas apply. For more information, see [Access Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def describe_database(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDatabase", input, options)
  end

  @doc """
  DescribeEndpoints returns a list of available endpoints to make Timestream API
  calls against.

  This API is available through both Write and Query.

  Because Timestream’s SDKs are designed to transparently work with the service’s
  architecture, including the management and mapping of the service endpoints, *it
  is not recommended that you use this API unless*:

    * Your application uses a programming language that does not yet
  have SDK support

    * You require better control over the client-side implementation

  For detailed information on how to use DescribeEndpoints, see [The Endpoint Discovery Pattern and REST
  APIs](https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html).
  """
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpoints", input, options)
  end

  @doc """
  Returns information about the table, including the table name, database name,
  retention duration of the memory store and the magnetic store.

  Service quotas apply. For more information, see [Access Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def describe_table(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTable", input, options)
  end

  @doc """
  Returns a list of your Timestream databases.

  Service quotas apply. For more information, see [Access Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def list_databases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDatabases", input, options)
  end

  @doc """
  A list of tables, along with the name, status and retention properties of each
  table.
  """
  def list_tables(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTables", input, options)
  end

  @doc """
  List all tags on a Timestream resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Associate a set of tags with a Timestream resource.

  You can then activate these user-defined tags so that they appear on the Billing
  and Cost Management console for cost allocation tracking.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a Timestream resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Modifies the KMS key for an existing database.

  While updating the database, you must specify the database name and the
  identifier of the new KMS key to be used (`KmsKeyId`). If there are any
  concurrent `UpdateDatabase` requests, first writer wins.
  """
  def update_database(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDatabase", input, options)
  end

  @doc """
  Modifies the retention duration of the memory store and magnetic store for your
  Timestream table.

  Note that the change in retention duration takes effect immediately. For
  example, if the retention period of the memory store was initially set to 2
  hours and then changed to 24 hours, the memory store will be capable of holding
  24 hours of data, but will be populated with 24 hours of data 22 hours after
  this change was made. Timestream does not retrieve data from the magnetic store
  to populate the memory store.

  Service quotas apply. For more information, see [Access Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def update_table(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTable", input, options)
  end

  @doc """
  The WriteRecords operation enables you to write your time series data into
  Timestream.

  You can specify a single data point or a batch of data points to be inserted
  into the system. Timestream offers you with a flexible schema that auto detects
  the column names and data types for your Timestream tables based on the
  dimension names and data types of the data points you specify when invoking
  writes into the database. Timestream support eventual consistency read
  semantics. This means that when you query data immediately after writing a batch
  of data into Timestream, the query results might not reflect the results of a
  recently completed write operation. The results may also include some stale
  data. If you repeat the query request after a short time, the results should
  return the latest data. Service quotas apply. For more information, see [Access Management](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html)
  in the Timestream Developer Guide.
  """
  def write_records(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "WriteRecords", input, options)
  end
end