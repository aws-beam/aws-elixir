# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DynamoDB do
  @moduledoc """
  Amazon DynamoDB

  Amazon DynamoDB is a fully managed NoSQL database service that provides fast
  and predictable performance with seamless scalability.

  DynamoDB lets you
  offload the administrative burdens of operating and scaling a distributed
  database, so
  that you don't have to worry about hardware provisioning, setup and
  configuration,
  replication, software patching, or cluster scaling.

  With DynamoDB, you can create database tables that can store and retrieve
  any amount of data, and serve any level of request traffic. You can scale up or
  scale
  down your tables' throughput capacity without downtime or performance
  degradation, and
  use the Amazon Web Services Management Console to monitor resource utilization
  and performance
  metrics.

  DynamoDB automatically spreads the data and traffic for your tables over
  a sufficient number of servers to handle your throughput and storage
  requirements, while
  maintaining consistent and fast performance. All of your data is stored on solid
  state
  disks (SSDs) and automatically replicated across multiple Availability Zones in
  an
  Amazon Web Services Region, providing built-in high availability and data
  durability.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2012-08-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "dynamodb",
      global?: false,
      protocol: "json",
      service_id: "DynamoDB",
      signature_version: "v4",
      signing_name: "dynamodb",
      target_prefix: "DynamoDB_20120810"
    }
  end

  @doc """
  This operation allows you to perform batch reads or writes on data stored in
  DynamoDB,
  using PartiQL.

  Each read statement in a `BatchExecuteStatement` must specify
  an equality condition on all key attributes. This enforces that each `SELECT`
  statement in a batch returns at most a single item.

  The entire batch must consist of either read statements or write statements, you
  cannot mix both in one batch.

  A HTTP 200 response does not mean that all statements in the
  BatchExecuteStatement
  succeeded. Error details for individual statements can be found under the
  [Error](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_BatchStatementResponse.html#DDB-Type-BatchStatementResponse-Error)
  field of the `BatchStatementResponse` for each
  statement.
  """
  def batch_execute_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchExecuteStatement", input, options)
  end

  @doc """
  The `BatchGetItem` operation returns the attributes of one or more items
  from one or more tables.

  You identify requested items by primary key.

  A single operation can retrieve up to 16 MB of data, which can contain as many
  as 100
  items. `BatchGetItem` returns a partial result if the response size limit is
  exceeded, the table's provisioned throughput is exceeded, more than 1MB per
  partition is requested,
  or an internal processing failure occurs. If a partial result is returned, the
  operation returns a value for
  `UnprocessedKeys`. You can use this value to retry the operation starting
  with the next item to get.

  If you request more than 100 items, `BatchGetItem` returns a
  `ValidationException` with the message "Too many items requested for
  the BatchGetItem call."

  For example, if you ask to retrieve 100 items, but each individual item is 300
  KB in
  size, the system returns 52 items (so as not to exceed the 16 MB limit). It also
  returns
  an appropriate `UnprocessedKeys` value so you can get the next page of
  results. If desired, your application can include its own logic to assemble the
  pages of
  results into one dataset.

  If *none* of the items can be processed due to insufficient
  provisioned throughput on all of the tables in the request, then
  `BatchGetItem` returns a
  `ProvisionedThroughputExceededException`. If *at least
  one* of the items is successfully processed, then
  `BatchGetItem` completes successfully, while returning the keys of the
  unread items in `UnprocessedKeys`.

  If DynamoDB returns any unprocessed items, you should retry the batch operation
  on
  those items. However, *we strongly recommend that you use an exponential
  backoff algorithm*. If you retry the batch operation immediately, the
  underlying read or write requests can still fail due to throttling on the
  individual
  tables. If you delay the batch operation using exponential backoff, the
  individual
  requests in the batch are much more likely to succeed.

  For more information, see [Batch Operations and Error Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations)
  in the *Amazon DynamoDB
  Developer Guide*.

  By default, `BatchGetItem` performs eventually consistent reads on every
  table in the request. If you want strongly consistent reads instead, you can set
  `ConsistentRead` to `true` for any or all tables.

  In order to minimize response latency, `BatchGetItem` may retrieve items in
  parallel.

  When designing your application, keep in mind that DynamoDB does not return
  items in
  any particular order. To help parse the response by item, include the primary
  key values
  for the items in your request in the `ProjectionExpression` parameter.

  If a requested item does not exist, it is not returned in the result. Requests
  for
  nonexistent items consume the minimum read capacity units according to the type
  of read.
  For more information, see [Working with Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations)
  in the *Amazon DynamoDB Developer
  Guide*.
  """
  def batch_get_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetItem", input, options)
  end

  @doc """
  The `BatchWriteItem` operation puts or deletes multiple items in one or
  more tables.

  A single call to `BatchWriteItem` can transmit up to 16MB of
  data over the network, consisting of up to 25 item put or delete operations.
  While
  individual items can be up to 400 KB once stored, it's important to note that an
  item's
  representation might be greater than 400KB while being sent in DynamoDB's JSON
  format
  for the API call. For more details on this distinction, see [Naming Rules and Data
  Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html).

  `BatchWriteItem` cannot update items. If you perform a `BatchWriteItem`
  operation on an existing item, that item's values will be overwritten by the
  operation and it will appear like it was updated. To update items, we recommend
  you
  use the `UpdateItem` action.

  The individual `PutItem` and `DeleteItem` operations specified
  in `BatchWriteItem` are atomic; however `BatchWriteItem` as a
  whole is not. If any requested operations fail because the table's provisioned
  throughput is exceeded or an internal processing failure occurs, the failed
  operations
  are returned in the `UnprocessedItems` response parameter. You can
  investigate and optionally resend the requests. Typically, you would call
  `BatchWriteItem` in a loop. Each iteration would check for unprocessed
  items and submit a new `BatchWriteItem` request with those unprocessed items
  until all items have been processed.

  If *none* of the items can be processed due to insufficient
  provisioned throughput on all of the tables in the request, then
  `BatchWriteItem` returns a
  `ProvisionedThroughputExceededException`.

  If DynamoDB returns any unprocessed items, you should retry the batch operation
  on
  those items. However, *we strongly recommend that you use an exponential
  backoff algorithm*. If you retry the batch operation immediately, the
  underlying read or write requests can still fail due to throttling on the
  individual
  tables. If you delay the batch operation using exponential backoff, the
  individual
  requests in the batch are much more likely to succeed.

  For more information, see [Batch Operations and Error Handling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#Programming.Errors.BatchOperations)
  in the *Amazon DynamoDB
  Developer Guide*.

  With `BatchWriteItem`, you can efficiently write or delete large amounts of
  data, such as from Amazon EMR, or copy data from another database into DynamoDB.
  In
  order to improve performance with these large-scale operations,
  `BatchWriteItem` does not behave in the same way as individual
  `PutItem` and `DeleteItem` calls would. For example, you
  cannot specify conditions on individual put and delete requests, and
  `BatchWriteItem` does not return deleted items in the response.

  If you use a programming language that supports concurrency, you can use threads
  to
  write items in parallel. Your application must include the necessary logic to
  manage the
  threads. With languages that don't support threading, you must update or delete
  the
  specified items one at a time. In both situations, `BatchWriteItem` performs
  the specified put and delete operations in parallel, giving you the power of the
  thread
  pool approach without having to introduce complexity into your application.

  Parallel processing reduces latency, but each specified put and delete request
  consumes the same number of write capacity units whether it is processed in
  parallel or
  not. Delete operations on nonexistent items consume one write capacity unit.

  If one or more of the following is true, DynamoDB rejects the entire batch write
  operation:

    *
  One or more tables specified in the `BatchWriteItem` request does
  not exist.

    *
  Primary key attributes specified on an item in the request do not match those
  in the corresponding table's primary key schema.

    *
  You try to perform multiple operations on the same item in the same
  `BatchWriteItem` request. For example, you cannot put and delete
  the same item in the same `BatchWriteItem` request.

    *
  Your request contains at least two items with identical hash and range keys
  (which essentially is two put operations).

    *
  There are more than 25 requests in the batch.

    *
  Any individual item in a batch exceeds 400 KB.

    *
  The total request size exceeds 16 MB.
  """
  def batch_write_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchWriteItem", input, options)
  end

  @doc """
  Creates a backup for an existing table.

  Each time you create an on-demand backup, the entire table data is backed up.
  There
  is no limit to the number of on-demand backups that can be taken.

  When you create an on-demand backup, a time marker of the request is cataloged,
  and
  the backup is created asynchronously, by applying all changes until the time of
  the
  request to the last full table snapshot. Backup requests are processed
  instantaneously
  and become available for restore within minutes.

  You can call `CreateBackup` at a maximum rate of 50 times per
  second.

  All backups in DynamoDB work without consuming any provisioned throughput on the
  table.

  If you submit a backup request on 2018-12-14 at 14:25:00, the backup is
  guaranteed to
  contain all data committed to the table up to 14:24:00, and data committed after
  14:26:00 will not be. The backup might contain data modifications made between
  14:24:00
  and 14:26:00. On-demand backup does not support causal consistency.

  Along with data, the following are also included on the backups:

    *
  Global secondary indexes (GSIs)

    *
  Local secondary indexes (LSIs)

    *
  Streams

    *
  Provisioned read and write capacity
  """
  def create_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBackup", input, options)
  end

  @doc """
  Creates a global table from an existing table.

  A global table creates a replication
  relationship between two or more DynamoDB tables with the same table name in the
  provided Regions.

  This operation only applies to [Version 2017.11.29
  (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
  of global tables. We recommend using
  [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  when creating new global tables, as it provides greater flexibility, higher
  efficiency and consumes less write capacity than
  2017.11.29 (Legacy). To determine which version you are using, see
  [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [
  Updating global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).

  If you want to add a new replica table to a global table, each of the following
  conditions must be true:

    *
  The table must have the same primary key as all of the other replicas.

    *
  The table must have the same name as all of the other replicas.

    *
  The table must have DynamoDB Streams enabled, with the stream containing both
  the new and the old images of the item.

    *
  None of the replica tables in the global table can contain any data.

  If global secondary indexes are specified, then the following conditions must
  also be
  met:

    *
  The global secondary indexes must have the same name.

    *
  The global secondary indexes must have the same hash key and sort key (if
  present).

  If local secondary indexes are specified, then the following conditions must
  also be
  met:

    *
  The local secondary indexes must have the same name.

    *
  The local secondary indexes must have the same hash key and sort key (if
  present).

  Write capacity settings should be set consistently across your replica tables
  and
  secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage
  the
  write capacity settings for all of your global tables replicas and indexes.

  If you prefer to manage write capacity settings manually, you should provision
  equal replicated write capacity units to your replica tables. You should also
  provision equal replicated write capacity units to matching secondary indexes
  across
  your global table.
  """
  def create_global_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGlobalTable", input, options)
  end

  @doc """
  The `CreateTable` operation adds a new table to your account.

  In an Amazon Web Services account, table names must be unique within each
  Region. That is, you can
  have two tables with same name if you create the tables in different Regions.

  `CreateTable` is an asynchronous operation. Upon receiving a
  `CreateTable` request, DynamoDB immediately returns a response with a
  `TableStatus` of `CREATING`. After the table is created,
  DynamoDB sets the `TableStatus` to `ACTIVE`. You can perform read
  and write operations only on an `ACTIVE` table.

  You can optionally define secondary indexes on the new table, as part of the
  `CreateTable` operation. If you want to create multiple tables with
  secondary indexes on them, you must create the tables sequentially. Only one
  table with
  secondary indexes can be in the `CREATING` state at any given time.

  You can use the `DescribeTable` action to check the table status.
  """
  def create_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTable", input, options)
  end

  @doc """
  Deletes an existing backup of a table.

  You can call `DeleteBackup` at a maximum rate of 10 times per
  second.
  """
  def delete_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBackup", input, options)
  end

  @doc """
  Deletes a single item in a table by primary key.

  You can perform a conditional delete
  operation that deletes the item if it exists, or if it has an expected attribute
  value.

  In addition to deleting an item, you can also return the item's attribute values
  in
  the same operation, using the `ReturnValues` parameter.

  Unless you specify conditions, the `DeleteItem` is an idempotent operation;
  running it multiple times on the same item or attribute does *not*
  result in an error response.

  Conditional deletes are useful for deleting items only if specific conditions
  are met.
  If those conditions are met, DynamoDB performs the delete. Otherwise, the item
  is not
  deleted.
  """
  def delete_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteItem", input, options)
  end

  @doc """
  The `DeleteTable` operation deletes a table and all of its items.

  After a
  `DeleteTable` request, the specified table is in the
  `DELETING` state until DynamoDB completes the deletion. If the table is
  in the `ACTIVE` state, you can delete it. If a table is in
  `CREATING` or `UPDATING` states, then DynamoDB returns a
  `ResourceInUseException`. If the specified table does not exist, DynamoDB
  returns a `ResourceNotFoundException`. If table is already in the
  `DELETING` state, no error is returned.

  This operation only applies to [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  of global tables.

  DynamoDB might continue to accept data read and write operations, such as
  `GetItem` and `PutItem`, on a table in the
  `DELETING` state until the table deletion is complete.

  When you delete a table, any indexes on that table are also deleted.

  If you have DynamoDB Streams enabled on the table, then the corresponding stream
  on
  that table goes into the `DISABLED` state, and the stream is automatically
  deleted after 24 hours.

  Use the `DescribeTable` action to check the status of the table.
  """
  def delete_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTable", input, options)
  end

  @doc """
  Describes an existing backup of a table.

  You can call `DescribeBackup` at a maximum rate of 10 times per
  second.
  """
  def describe_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBackup", input, options)
  end

  @doc """
  Checks the status of continuous backups and point in time recovery on the
  specified
  table.

  Continuous backups are `ENABLED` on all tables at table creation. If
  point in time recovery is enabled, `PointInTimeRecoveryStatus` will be set to
  ENABLED.

  After continuous backups and point in time recovery are enabled, you can restore
  to
  any point in time within `EarliestRestorableDateTime` and
  `LatestRestorableDateTime`.

  `LatestRestorableDateTime` is typically 5 minutes before the current time.
  You can restore your table to any point in time during the last 35 days.

  You can call `DescribeContinuousBackups` at a maximum rate of 10 times per
  second.
  """
  def describe_continuous_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContinuousBackups", input, options)
  end

  @doc """
  Returns information about contributor insights for a given table or global
  secondary
  index.
  """
  def describe_contributor_insights(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContributorInsights", input, options)
  end

  @doc """
  Returns the regional endpoint information.

  For more information
  on policy permissions, please see [Internetwork traffic privacy](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/inter-network-traffic-privacy.html#inter-network-traffic-DescribeEndpoints).
  """
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoints", input, options)
  end

  @doc """
  Describes an existing table export.
  """
  def describe_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExport", input, options)
  end

  @doc """
  Returns information about the specified global table.

  This operation only applies to [Version 2017.11.29
  (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
  of global tables. We recommend using
  [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  when creating new global tables, as it provides greater flexibility, higher
  efficiency and consumes less write capacity than
  2017.11.29 (Legacy). To determine which version you are using, see
  [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [
  Updating global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
  """
  def describe_global_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGlobalTable", input, options)
  end

  @doc """
  Describes Region-specific settings for a global table.

  This operation only applies to [Version 2017.11.29
  (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
  of global tables. We recommend using
  [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  when creating new global tables, as it provides greater flexibility, higher
  efficiency and consumes less write capacity than
  2017.11.29 (Legacy). To determine which version you are using, see
  [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [
  Updating global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
  """
  def describe_global_table_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGlobalTableSettings", input, options)
  end

  @doc """
  Represents the properties of the import.
  """
  def describe_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImport", input, options)
  end

  @doc """
  Returns information about the status of Kinesis streaming.
  """
  def describe_kinesis_streaming_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeKinesisStreamingDestination", input, options)
  end

  @doc """
  Returns the current provisioned-capacity quotas for your Amazon Web Services
  account in
  a Region, both for the Region as a whole and for any one DynamoDB table that you
  create
  there.

  When you establish an Amazon Web Services account, the account has initial
  quotas on
  the maximum read capacity units and write capacity units that you can provision
  across
  all of your DynamoDB tables in a given Region. Also, there are per-table
  quotas that apply when you create a table there. For more information, see
  [Service, Account, and Table
  Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
  page in the *Amazon DynamoDB
  Developer Guide*.

  Although you can increase these quotas by filing a case at [Amazon Web Services Support Center](https://console.aws.amazon.com/support/home#/), obtaining the
  increase is not instantaneous. The `DescribeLimits` action lets you write
  code to compare the capacity you are currently using to those quotas imposed by
  your
  account so that you have enough time to apply for an increase before you hit a
  quota.

  For example, you could use one of the Amazon Web Services SDKs to do the
  following:

    1.
  Call `DescribeLimits` for a particular Region to obtain your
  current account quotas on provisioned capacity there.

    2.
  Create a variable to hold the aggregate read capacity units provisioned for
  all your tables in that Region, and one to hold the aggregate write capacity
  units. Zero them both.

    3.
  Call `ListTables` to obtain a list of all your DynamoDB
  tables.

    4.
  For each table name listed by `ListTables`, do the
  following:

      *
  Call `DescribeTable` with the table name.

      *
  Use the data returned by `DescribeTable` to add the read
  capacity units and write capacity units provisioned for the table itself
  to your variables.

      *
  If the table has one or more global secondary indexes (GSIs), loop
  over these GSIs and add their provisioned capacity values to your
  variables as well.

    5.
  Report the account quotas for that Region returned by
  `DescribeLimits`, along with the total current provisioned
  capacity levels you have calculated.

  This will let you see whether you are getting close to your account-level
  quotas.

  The per-table quotas apply only when you are creating a new table. They restrict
  the
  sum of the provisioned capacity of the new table itself and all its global
  secondary
  indexes.

  For existing tables and their GSIs, DynamoDB doesn't let you increase
  provisioned
  capacity extremely rapidly, but the only quota that applies is that the
  aggregate
  provisioned capacity over all your tables and GSIs cannot exceed either of the
  per-account quotas.

  `DescribeLimits` should only be called periodically. You can expect
  throttling errors if you call it more than once in a minute.

  The `DescribeLimits` Request element has no content.
  """
  def describe_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLimits", input, options)
  end

  @doc """
  Returns information about the table, including the current status of the table,
  when
  it was created, the primary key schema, and any indexes on the table.

  This operation only applies to [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  of global tables.

  If you issue a `DescribeTable` request immediately after a
  `CreateTable` request, DynamoDB might return a
  `ResourceNotFoundException`. This is because
  `DescribeTable` uses an eventually consistent query, and the metadata
  for your table might not be available at that moment. Wait for a few seconds,
  and
  then try the `DescribeTable` request again.
  """
  def describe_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTable", input, options)
  end

  @doc """
  Describes auto scaling settings across replicas of the global table at once.

  This operation only applies to [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  of global tables.
  """
  def describe_table_replica_auto_scaling(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTableReplicaAutoScaling", input, options)
  end

  @doc """
  Gives a description of the Time to Live (TTL) status on the specified table.
  """
  def describe_time_to_live(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTimeToLive", input, options)
  end

  @doc """
  Stops replication from the DynamoDB table to the Kinesis data stream.

  This is done
  without deleting either of the resources.
  """
  def disable_kinesis_streaming_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableKinesisStreamingDestination", input, options)
  end

  @doc """
  Starts table data replication to the specified Kinesis data stream at a
  timestamp
  chosen during the enable workflow.

  If this operation doesn't return results immediately,
  use DescribeKinesisStreamingDestination to check if streaming to the Kinesis
  data stream
  is ACTIVE.
  """
  def enable_kinesis_streaming_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableKinesisStreamingDestination", input, options)
  end

  @doc """
  This operation allows you to perform reads and singleton writes on data stored
  in
  DynamoDB, using PartiQL.

  For PartiQL reads (`SELECT` statement), if the total number of processed
  items exceeds the maximum dataset size limit of 1 MB, the read stops and results
  are
  returned to the user as a `LastEvaluatedKey` value to continue the read in a
  subsequent operation. If the filter criteria in `WHERE` clause does not match
  any data, the read will return an empty result set.

  A single `SELECT` statement response can return up to the maximum number of
  items (if using the Limit parameter) or a maximum of 1 MB of data (and then
  apply any
  filtering to the results using `WHERE` clause). If
  `LastEvaluatedKey` is present in the response, you need to paginate the
  result set. If `NextToken` is present, you need to paginate the result set and
  include
  `NextToken`.
  """
  def execute_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteStatement", input, options)
  end

  @doc """
  This operation allows you to perform transactional reads or writes on data
  stored in
  DynamoDB, using PartiQL.

  The entire transaction must consist of either read statements or write
  statements,
  you cannot mix both in one transaction. The EXISTS function is an exception and
  can
  be used to check the condition of specific attributes of the item in a similar
  manner to `ConditionCheck` in the
  [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems)
  API.
  """
  def execute_transaction(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteTransaction", input, options)
  end

  @doc """
  Exports table data to an S3 bucket.

  The table must have point in time recovery
  enabled, and you can export data from any time within the point in time recovery
  window.
  """
  def export_table_to_point_in_time(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportTableToPointInTime", input, options)
  end

  @doc """
  The `GetItem` operation returns a set of attributes for the item with the
  given primary key.

  If there is no matching item, `GetItem` does not return
  any data and there will be no `Item` element in the response.

  `GetItem` provides an eventually consistent read by default. If your
  application requires a strongly consistent read, set `ConsistentRead` to
  `true`. Although a strongly consistent read might take more time than an
  eventually consistent read, it always returns the last updated value.
  """
  def get_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetItem", input, options)
  end

  @doc """
  Imports table data from an S3 bucket.
  """
  def import_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportTable", input, options)
  end

  @doc """
  List DynamoDB backups that are associated with an Amazon Web Services account
  and weren't made with Amazon Web Services Backup.

  To list these backups for a given table, specify `TableName`. `ListBackups`
  returns a
  paginated list of results with at most 1 MB worth of items in a page. You can
  also
  specify a maximum number of entries to be returned in a page.

  In the request, start time is inclusive, but end time is exclusive. Note that
  these
  boundaries are for the time at which the original backup was requested.

  You can call `ListBackups` a maximum of five times per second.

  If you want to retrieve the complete list of backups made with Amazon Web
  Services Backup, use the
  [Amazon Web Services Backup list API.](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ListBackupJobs.html)
  """
  def list_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBackups", input, options)
  end

  @doc """
  Returns a list of ContributorInsightsSummary for a table and all its global
  secondary
  indexes.
  """
  def list_contributor_insights(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContributorInsights", input, options)
  end

  @doc """
  Lists completed exports within the past 90 days.
  """
  def list_exports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExports", input, options)
  end

  @doc """
  Lists all global tables that have a replica in the specified Region.

  This operation only applies to [Version 2017.11.29
  (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
  of global tables. We recommend using
  [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  when creating new global tables, as it provides greater flexibility, higher
  efficiency and consumes less write capacity than
  2017.11.29 (Legacy). To determine which version you are using, see
  [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [
  Updating global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
  """
  def list_global_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGlobalTables", input, options)
  end

  @doc """
  Lists completed imports within the past 90 days.
  """
  def list_imports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImports", input, options)
  end

  @doc """
  Returns an array of table names associated with the current account and
  endpoint.

  The
  output from `ListTables` is paginated, with each page returning a maximum of
  100 table names.
  """
  def list_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end

  @doc """
  List all tags on an Amazon DynamoDB resource.

  You can call ListTagsOfResource up to 10
  times per second, per account.

  For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def list_tags_of_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsOfResource", input, options)
  end

  @doc """
  Creates a new item, or replaces an old item with a new item.

  If an item that has the
  same primary key as the new item already exists in the specified table, the new
  item
  completely replaces the existing item. You can perform a conditional put
  operation (add
  a new item if one with the specified primary key doesn't exist), or replace an
  existing
  item if it has certain attribute values. You can return the item's attribute
  values in
  the same operation, using the `ReturnValues` parameter.

  When you add an item, the primary key attributes are the only required
  attributes.

  Empty String and Binary attribute values are allowed. Attribute values of type
  String
  and Binary must have a length greater than zero if the attribute is used as a
  key
  attribute for a table or index. Set type attributes cannot be empty.

  Invalid Requests with empty values will be rejected with a
  `ValidationException` exception.

  To prevent a new item from replacing an existing item, use a conditional
  expression that contains the `attribute_not_exists` function with the
  name of the attribute being used as the partition key for the table. Since every
  record must contain that attribute, the `attribute_not_exists` function
  will only succeed if no matching item exists.

  For more information about `PutItem`, see [Working with Items](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def put_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutItem", input, options)
  end

  @doc """
  You must provide the name of the partition key attribute and a single value for
  that
  attribute.

  `Query` returns all items with that partition key value.
  Optionally, you can provide a sort key attribute and use a comparison operator
  to refine
  the search results.

  Use the `KeyConditionExpression` parameter to provide a specific value for
  the partition key. The `Query` operation will return all of the items from
  the table or index with that partition key value. You can optionally narrow the
  scope of
  the `Query` operation by specifying a sort key value and a comparison
  operator in `KeyConditionExpression`. To further refine the
  `Query` results, you can optionally provide a
  `FilterExpression`. A `FilterExpression` determines which
  items within the results should be returned to you. All of the other results are
  discarded.

  A `Query` operation always returns a result set. If no matching items are
  found, the result set will be empty. Queries that do not return results consume
  the
  minimum number of read capacity units for that type of read operation.

  DynamoDB calculates the number of read capacity units consumed based on item
  size, not on the amount of data that is returned to an application. The number
  of
  capacity units consumed will be the same whether you request all of the
  attributes
  (the default behavior) or just some of them (using a projection expression). The
  number will also be the same whether or not you use a `FilterExpression`.

  `Query` results are always sorted by the sort key value. If the data type of
  the sort key is Number, the results are returned in numeric order; otherwise,
  the
  results are returned in order of UTF-8 bytes. By default, the sort order is
  ascending.
  To reverse the order, set the `ScanIndexForward` parameter to false.

  A single `Query` operation will read up to the maximum number of items set
  (if using the `Limit` parameter) or a maximum of 1 MB of data and then apply
  any filtering to the results using `FilterExpression`. If
  `LastEvaluatedKey` is present in the response, you will need to paginate
  the result set. For more information, see [Paginating the
  Results](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination)
  in the *Amazon DynamoDB Developer Guide*.

  `FilterExpression` is applied after a `Query` finishes, but before
  the results are returned. A `FilterExpression` cannot contain partition key
  or sort key attributes. You need to specify those attributes in the
  `KeyConditionExpression`.

  A `Query` operation can return an empty result set and a
  `LastEvaluatedKey` if all the items read for the page of results are
  filtered out.

  You can query a table, a local secondary index, or a global secondary index. For
  a
  query on a table or on a local secondary index, you can set the
  `ConsistentRead` parameter to `true` and obtain a strongly
  consistent result. Global secondary indexes support eventually consistent reads
  only, so
  do not specify `ConsistentRead` when querying a global secondary
  index.
  """
  def query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Query", input, options)
  end

  @doc """
  Creates a new table from an existing backup.

  Any number of users can execute up to 50
  concurrent restores (any type of restore) in a given account.

  You can call `RestoreTableFromBackup` at a maximum rate of 10 times per
  second.

  You must manually set up the following on the restored table:

    *
  Auto scaling policies

    *
  IAM policies

    *
  Amazon CloudWatch metrics and alarms

    *
  Tags

    *
  Stream settings

    *
  Time to Live (TTL) settings
  """
  def restore_table_from_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreTableFromBackup", input, options)
  end

  @doc """
  Restores the specified table to the specified point in time within
  `EarliestRestorableDateTime` and `LatestRestorableDateTime`.

  You can restore your table to any point in time during the last 35 days. Any
  number of
  users can execute up to 50 concurrent restores (any type of restore) in a given
  account.

  When you restore using point in time recovery, DynamoDB restores your table data
  to
  the state based on the selected date and time (day:hour:minute:second) to a new
  table.

  Along with data, the following are also included on the new restored table using
  point in time recovery:

    *
  Global secondary indexes (GSIs)

    *
  Local secondary indexes (LSIs)

    *
  Provisioned read and write capacity

    *
  Encryption settings

  All these settings come from the current settings of the source table at
  the time of restore.

  You must manually set up the following on the restored table:

    *
  Auto scaling policies

    *
  IAM policies

    *
  Amazon CloudWatch metrics and alarms

    *
  Tags

    *
  Stream settings

    *
  Time to Live (TTL) settings

    *
  Point in time recovery settings
  """
  def restore_table_to_point_in_time(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreTableToPointInTime", input, options)
  end

  @doc """
  The `Scan` operation returns one or more items and item attributes by
  accessing every item in a table or a secondary index.

  To have DynamoDB return fewer
  items, you can provide a `FilterExpression` operation.

  If the total size of scanned items exceeds the maximum dataset size limit of 1
  MB,
  the scan completes and results are returned to the user. The `LastEvaluatedKey`
  value is also returned and the requestor can use the `LastEvaluatedKey` to
  continue
  the scan in a subsequent operation. Each scan response also includes number of
  items that were
  scanned (ScannedCount) as part of the request. If using a `FilterExpression`, a
  scan result
  can result in no items meeting the criteria and the `Count` will result in zero.
  If
  you did not use a `FilterExpression` in the scan request, then `Count` is
  the same as `ScannedCount`.

  `Count` and `ScannedCount` only return the count of items specific to a
  single scan request and, unless the table is less than 1MB, do not represent the
  total number
  of items in the table.

  A single `Scan` operation first reads up to the maximum number of items set (if
  using the `Limit` parameter) or a maximum of 1 MB of data and then applies any
  filtering to the results if a `FilterExpression` is provided. If
  `LastEvaluatedKey` is present in the response, pagination is required to
  complete the
  full table scan. For more information, see [Paginating the Results](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination)
  in the *Amazon DynamoDB Developer Guide*.

  `Scan` operations proceed sequentially; however, for faster performance on
  a large table or secondary index, applications can request a parallel `Scan`
  operation by providing the `Segment` and `TotalSegments`
  parameters. For more information, see [Parallel Scan](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan)
  in the *Amazon DynamoDB Developer Guide*.

  By default, a `Scan` uses eventually consistent reads when accessing the items
  in a table.
  Therefore, the results from an eventually consistent `Scan` may not include the
  latest item
  changes at the time the scan iterates through each item in the table. If you
  require a strongly consistent
  read of each item as the scan iterates through the items in the table, you can
  set the `ConsistentRead`
  parameter to true. Strong consistency only relates to the consistency of the
  read at the item level.

  DynamoDB does not provide snapshot isolation for a scan operation when the
  `ConsistentRead`
  parameter is set to true. Thus, a DynamoDB scan operation does not guarantee
  that all reads in a scan
  see a consistent snapshot of the table when the scan operation was requested.
  """
  def scan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Scan", input, options)
  end

  @doc """
  Associate a set of tags with an Amazon DynamoDB resource.

  You can then activate these
  user-defined tags so that they appear on the Billing and Cost Management console
  for
  cost allocation tracking. You can call TagResource up to five times per second,
  per
  account.

  For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  `TransactGetItems` is a synchronous operation that atomically retrieves
  multiple items from one or more tables (but not from indexes) in a single
  account and
  Region.

  A `TransactGetItems` call can contain up to 100
  `TransactGetItem` objects, each of which contains a `Get`
  structure that specifies an item to retrieve from a table in the account and
  Region. A
  call to `TransactGetItems` cannot retrieve items from tables in more than one
  Amazon Web Services account or Region. The aggregate size of the items in the
  transaction cannot exceed 4 MB.

  DynamoDB rejects the entire `TransactGetItems` request if any of
  the following is true:

    *
  A conflicting operation is in the process of updating an item to be
  read.

    *
  There is insufficient provisioned capacity for the transaction to be
  completed.

    *
  There is a user error, such as an invalid data format.

    *
  The aggregate size of the items in the transaction exceeded 4 MB.
  """
  def transact_get_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TransactGetItems", input, options)
  end

  @doc """

  `TransactWriteItems` is a synchronous write operation that groups up to 100
  action requests.

  These actions can target items in different tables, but not in
  different Amazon Web Services accounts or Regions, and no two actions can target
  the same
  item. For example, you cannot both `ConditionCheck` and `Update`
  the same item. The aggregate size of the items in the transaction cannot exceed
  4
  MB.

  The actions are completed atomically so that either all of them succeed, or all
  of
  them fail. They are defined by the following objects:

    *

  `Put`  —   Initiates a `PutItem`
  operation to write a new item. This structure specifies the primary key of the
  item to be written, the name of the table to write it in, an optional condition
  expression that must be satisfied for the write to succeed, a list of the item's
  attributes, and a field indicating whether to retrieve the item's attributes if
  the condition is not met.

    *

  `Update`  —   Initiates an `UpdateItem`
  operation to update an existing item. This structure specifies the primary key
  of the item to be updated, the name of the table where it resides, an optional
  condition expression that must be satisfied for the update to succeed, an
  expression that defines one or more attributes to be updated, and a field
  indicating whether to retrieve the item's attributes if the condition is not
  met.

    *

  `Delete`  —   Initiates a `DeleteItem`
  operation to delete an existing item. This structure specifies the primary key
  of the item to be deleted, the name of the table where it resides, an optional
  condition expression that must be satisfied for the deletion to succeed, and a
  field indicating whether to retrieve the item's attributes if the condition is
  not met.

    *

  `ConditionCheck`  —   Applies a condition to an item
  that is not being modified by the transaction. This structure specifies the
  primary key of the item to be checked, the name of the table where it resides, a
  condition expression that must be satisfied for the transaction to succeed, and
  a field indicating whether to retrieve the item's attributes if the condition is
  not met.

  DynamoDB rejects the entire `TransactWriteItems` request if any of the
  following is true:

    *
  A condition in one of the condition expressions is not met.

    *
  An ongoing operation is in the process of updating the same item.

    *
  There is insufficient provisioned capacity for the transaction to be
  completed.

    *
  An item size becomes too large (bigger than 400 KB), a local secondary index
  (LSI) becomes too large, or a similar validation error occurs because of changes
  made by the transaction.

    *
  The aggregate size of the items in the transaction exceeds 4 MB.

    *
  There is a user error, such as an invalid data format.
  """
  def transact_write_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TransactWriteItems", input, options)
  end

  @doc """
  Removes the association of tags from an Amazon DynamoDB resource.

  You can call
  `UntagResource` up to five times per second, per account.

  For an overview on tagging DynamoDB resources, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """

  `UpdateContinuousBackups` enables or disables point in time recovery for
  the specified table.

  A successful `UpdateContinuousBackups` call returns the
  current `ContinuousBackupsDescription`. Continuous backups are
  `ENABLED` on all tables at table creation. If point in time recovery is
  enabled, `PointInTimeRecoveryStatus` will be set to ENABLED.

  Once continuous backups and point in time recovery are enabled, you can restore
  to
  any point in time within `EarliestRestorableDateTime` and
  `LatestRestorableDateTime`.

  `LatestRestorableDateTime` is typically 5 minutes before the current time.
  You can restore your table to any point in time during the last 35 days.
  """
  def update_continuous_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContinuousBackups", input, options)
  end

  @doc """
  Updates the status for contributor insights for a specific table or index.

  CloudWatch
  Contributor Insights for DynamoDB graphs display the partition key and (if
  applicable)
  sort key of frequently accessed items and frequently throttled items in
  plaintext. If
  you require the use of Amazon Web Services Key Management Service (KMS) to
  encrypt this
  table’s partition key and sort key data with an Amazon Web Services managed key
  or
  customer managed key, you should not enable CloudWatch Contributor Insights for
  DynamoDB
  for this table.
  """
  def update_contributor_insights(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContributorInsights", input, options)
  end

  @doc """
  Adds or removes replicas in the specified global table.

  The global table must already
  exist to be able to use this operation. Any replica to be added must be empty,
  have the
  same name as the global table, have the same key schema, have DynamoDB Streams
  enabled,
  and have the same provisioned and maximum write capacity units.

  This operation only applies to [Version 2017.11.29
  (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
  of global tables. We recommend using
  [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  when creating new global tables, as it provides greater flexibility, higher
  efficiency and consumes less write capacity than
  2017.11.29 (Legacy). To determine which version you are using, see
  [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [
  Updating global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).

  This operation only applies to [Version 2017.11.29](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
  of global tables. If you are using global tables [Version 2019.11.21](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  you can use
  [UpdateTable](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html)
  instead.

  Although you can use `UpdateGlobalTable` to add replicas and remove
  replicas in a single request, for simplicity we recommend that you issue
  separate
  requests for adding or removing replicas.

  If global secondary indexes are specified, then the following conditions must
  also be
  met:

    *
  The global secondary indexes must have the same name.

    *
  The global secondary indexes must have the same hash key and sort key (if
  present).

    *
  The global secondary indexes must have the same provisioned and maximum write
  capacity units.
  """
  def update_global_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGlobalTable", input, options)
  end

  @doc """
  Updates settings for a global table.

  This operation only applies to [Version 2017.11.29
  (Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
  of global tables. We recommend using
  [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  when creating new global tables, as it provides greater flexibility, higher
  efficiency and consumes less write capacity than
  2017.11.29 (Legacy). To determine which version you are using, see
  [Determining the version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
  To update existing global tables from version 2017.11.29 (Legacy) to version
  2019.11.21 (Current), see [
  Updating global
  tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).
  """
  def update_global_table_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGlobalTableSettings", input, options)
  end

  @doc """
  Edits an existing item's attributes, or adds a new item to the table if it does
  not
  already exist.

  You can put, delete, or add attribute values. You can also perform a
  conditional update on an existing item (insert a new attribute name-value pair
  if it
  doesn't exist, or replace an existing name-value pair if it has certain expected
  attribute values).

  You can also return the item's attribute values in the same `UpdateItem`
  operation using the `ReturnValues` parameter.
  """
  def update_item(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateItem", input, options)
  end

  @doc """
  The command to update the Kinesis stream destination.
  """
  def update_kinesis_streaming_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateKinesisStreamingDestination", input, options)
  end

  @doc """
  Modifies the provisioned throughput settings, global secondary indexes, or
  DynamoDB
  Streams settings for a given table.

  This operation only applies to [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  of global tables.

  You can only perform one of the following operations at once:

    *
  Modify the provisioned throughput settings of the table.

    *
  Remove a global secondary index from the table.

    *
  Create a new global secondary index on the table. After the index begins
  backfilling, you can use `UpdateTable` to perform other
  operations.

  `UpdateTable` is an asynchronous operation; while
  it's
  executing, the table status changes from `ACTIVE` to `UPDATING`.
  While it's `UPDATING`, you can't issue another `UpdateTable`
  request on the
  base table nor any replicas. When the table returns to the
  `ACTIVE` state, the `UpdateTable` operation is
  complete.
  """
  def update_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTable", input, options)
  end

  @doc """
  Updates auto scaling settings on your global tables at once.

  This operation only applies to [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
  of global tables.
  """
  def update_table_replica_auto_scaling(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTableReplicaAutoScaling", input, options)
  end

  @doc """
  The `UpdateTimeToLive` method enables or disables Time to Live (TTL) for
  the specified table.

  A successful `UpdateTimeToLive` call returns the current
  `TimeToLiveSpecification`. It can take up to one hour for the change to
  fully process. Any additional `UpdateTimeToLive` calls for the same table
  during this one hour duration result in a `ValidationException`.

  TTL compares the current time in epoch time format to the time stored in the TTL
  attribute of an item. If the epoch time value stored in the attribute is less
  than the
  current time, the item is marked as expired and subsequently deleted.

  The epoch time format is the number of seconds elapsed since 12:00:00 AM January
  1, 1970 UTC.

  DynamoDB deletes expired items on a best-effort basis to ensure availability of
  throughput for other data operations.

  DynamoDB typically deletes expired items within two days of expiration. The
  exact
  duration within which an item gets deleted after expiration is specific to the
  nature of the workload. Items that have expired and not been deleted will still
  show
  up in reads, queries, and scans.

  As items are deleted, they are removed from any local secondary index and global
  secondary index immediately in the same eventually consistent way as a standard
  delete
  operation.

  For more information, see [Time To Live](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html)
  in the
  Amazon DynamoDB Developer Guide.
  """
  def update_time_to_live(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTimeToLive", input, options)
  end
end
