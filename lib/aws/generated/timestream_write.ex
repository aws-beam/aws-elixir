# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamWrite do
  @moduledoc """
  Amazon Timestream Write

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
  Timestream managed KMS key located in your account. Refer to [Amazon Web Services managed KMS
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
  for more info. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html)
  for details.
  """
  def create_database(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDatabase", input, options)
  end

  @doc """
  The CreateTable operation adds a new table to an existing database in your
  account.

  In an Amazon Web Services account, table names must be at least unique within
  each Region if they are in the same database. You may have identical table names
  in the same Region if the tables are in separate databases. While creating the
  table, you must specify the table name, database name, and the retention
  properties. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html)
  for details.
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

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html)
  for details.
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

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html)
  for details.
  """
  def delete_table(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTable", input, options)
  end

  @doc """
  Returns information about the database, including the database name, time that
  the database was created, and the total number of tables found within the
  database.

  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html)
  for details.
  """
  def describe_database(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDatabase", input, options)
  end

  @doc """
  DescribeEndpoints returns a list of available endpoints to make Timestream API
  calls against.

  This API is available through both Write and Query.

  Because the Timestream SDKs are designed to transparently work with the
  service’s architecture, including the management and mapping of the service
  endpoints, *it is not recommended that you use this API unless*:

    * You are using [VPC endpoints (Amazon Web Services PrivateLink) with
  Timestream](https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)

    * Your application uses a programming language that does not yet
  have SDK support

    * You require better control over the client-side implementation

  For detailed information on how and when to use and implement DescribeEndpoints,
  see [The Endpoint Discovery Pattern](https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).
  """
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpoints", input, options)
  end

  @doc """
  Returns information about the table, including the table name, database name,
  retention duration of the memory store and the magnetic store.

  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html)
  for details.
  """
  def describe_table(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTable", input, options)
  end

  @doc """
  Returns a list of your Timestream databases.

  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html)
  for details.
  """
  def list_databases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDatabases", input, options)
  end

  @doc """
  A list of tables, along with the name, status and retention properties of each
  table.

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html)
  for details.
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

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html)
  for details.
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

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html)
  for details.
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
  return the latest data. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html)
  for details.

  ## Upserts

  You can use the `Version` parameter in a `WriteRecords` request to update data
  points. Timestream tracks a version number with each record. `Version` defaults
  to `1` when not specified for the record in the request. Timestream will update
  an existing record’s measure value along with its `Version` upon receiving a
  write request with a higher `Version` number for that record. Upon receiving an
  update request where the measure value is the same as that of the existing
  record, Timestream still updates `Version`, if it is greater than the existing
  value of `Version`. You can update a data point as many times as desired, as
  long as the value of `Version` continuously increases.

  For example, suppose you write a new record without indicating `Version` in the
  request. Timestream will store this record, and set `Version` to `1`. Now,
  suppose you try to update this record with a `WriteRecords` request of the same
  record with a different measure value but, like before, do not provide
  `Version`. In this case, Timestream will reject this update with a
  `RejectedRecordsException` since the updated record’s version is not greater
  than the existing value of Version. However, if you were to resend the update
  request with `Version` set to `2`, Timestream would then succeed in updating the
  record’s value, and the `Version` would be set to `2`. Next, suppose you sent a
  `WriteRecords` request with this same record and an identical measure value, but
  with `Version` set to `3`. In this case, Timestream would only update `Version`
  to `3`. Any further updates would need to send a version number greater than
  `3`, or the update requests would receive a `RejectedRecordsException`.
  """
  def write_records(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "WriteRecords", input, options)
  end
end
