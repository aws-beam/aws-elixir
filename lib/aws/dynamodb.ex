# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DynamoDB do
  @moduledoc """
  Amazon DynamoDB

  **Overview**

  This is the Amazon DynamoDB API Reference. This guide provides descriptions
  and samples of the low-level DynamoDB API. For information about DynamoDB
  application development, see the [Amazon DynamoDB Developer
  Guide](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/).

  Instead of making the requests to the low-level DynamoDB API directly from
  your application, we recommend that you use the AWS Software Development
  Kits (SDKs). The easy-to-use libraries in the AWS SDKs make it unnecessary
  to call the low-level DynamoDB API directly from your application. The
  libraries take care of request authentication, serialization, and
  connection management. For more information, see [Using the AWS SDKs with
  DynamoDB](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/UsingAWSSDK.html)
  in the *Amazon DynamoDB Developer Guide*.

  If you decide to code against the low-level DynamoDB API directly, you will
  need to write the necessary code to authenticate your requests. For more
  information on signing your requests, see [Using the DynamoDB
  API](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/API.html)
  in the *Amazon DynamoDB Developer Guide*.

  The following are short descriptions of each low-level API action,
  organized by function.

  **Managing Tables**

  <ul> <li> *CreateTable* - Creates a table with user-specified provisioned
  throughput settings. You must designate one attribute as the hash primary
  key for the table; you can optionally designate a second attribute as the
  range primary key. DynamoDB creates indexes on these key attributes for
  fast data access. Optionally, you can create one or more secondary indexes,
  which provide fast data access using non-key attributes.

  </li> <li> *DescribeTable* - Returns metadata for a table, such as table
  size, status, and index information.

  </li> <li> *UpdateTable* - Modifies the provisioned throughput settings for
  a table. Optionally, you can modify the provisioned throughput settings for
  global secondary indexes on the table.

  </li> <li> *ListTables* - Returns a list of all tables associated with the
  current AWS account and endpoint.

  </li> <li> *DeleteTable* - Deletes a table and all of its indexes.

  </li> </ul> For conceptual information about managing tables, see [Working
  with
  Tables](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html)
  in the *Amazon DynamoDB Developer Guide*.

  **Reading Data**

  <ul> <li> *GetItem* - Returns a set of attributes for the item that has a
  given primary key. By default, *GetItem* performs an eventually consistent
  read; however, applications can request a strongly consistent read instead.

  </li> <li> *BatchGetItem* - Performs multiple *GetItem* requests for data
  items using their primary keys, from one table or multiple tables. The
  response from *BatchGetItem* has a size limit of 16 MB and returns a
  maximum of 100 items. Both eventually consistent and strongly consistent
  reads can be used.

  </li> <li> *Query* - Returns one or more items from a table or a secondary
  index. You must provide a specific hash key value. You can narrow the scope
  of the query using comparison operators against a range key value, or on
  the index key. *Query* supports either eventual or strong consistency. A
  single response has a size limit of 1 MB.

  </li> <li> *Scan* - Reads every item in a table; the result set is
  eventually consistent. You can limit the number of items returned by
  filtering the data attributes, using conditional expressions. *Scan* can be
  used to enable ad-hoc querying of a table against non-key attributes;
  however, since this is a full table scan without using an index, *Scan*
  should not be used for any application query use case that requires
  predictable performance.

  </li> </ul> For conceptual information about reading data, see [Working
  with
  Items](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html)
  and [Query and Scan
  Operations](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html)
  in the *Amazon DynamoDB Developer Guide*.

  **Modifying Data**

  <ul> <li> *PutItem* - Creates a new item, or replaces an existing item with
  a new item (including all the attributes). By default, if an item in the
  table already exists with the same primary key, the new item completely
  replaces the existing item. You can use conditional operators to replace an
  item only if its attribute values match certain conditions, or to insert a
  new item only if that item doesn't already exist.

  </li> <li> *UpdateItem* - Modifies the attributes of an existing item. You
  can also use conditional operators to perform an update only if the item's
  attribute values match certain conditions.

  </li> <li> *DeleteItem* - Deletes an item in a table by primary key. You
  can use conditional operators to perform a delete an item only if the
  item's attribute values match certain conditions.

  </li> <li> *BatchWriteItem* - Performs multiple *PutItem* and *DeleteItem*
  requests across multiple tables in a single request. A failure of any
  request(s) in the batch will not cause the entire *BatchWriteItem*
  operation to fail. Supports batches of up to 25 items to put or delete,
  with a maximum total request size of 16 MB.

  </li> </ul> For conceptual information about modifying data, see [Working
  with
  Items](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html)
  and [Query and Scan
  Operations](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html)
  in the *Amazon DynamoDB Developer Guide*.
  """

  @doc """
  The *BatchGetItem* operation returns the attributes of one or more items
  from one or more tables. You identify requested items by primary key.

  A single operation can retrieve up to 16 MB of data, which can contain as
  many as 100 items. *BatchGetItem* will return a partial result if the
  response size limit is exceeded, the table's provisioned throughput is
  exceeded, or an internal processing failure occurs. If a partial result is
  returned, the operation returns a value for *UnprocessedKeys*. You can use
  this value to retry the operation starting with the next item to get.

  <important>If you request more than 100 items *BatchGetItem* will return a
  *ValidationException* with the message "Too many items requested for the
  BatchGetItem call".

  </important> For example, if you ask to retrieve 100 items, but each
  individual item is 300 KB in size, the system returns 52 items (so as not
  to exceed the 16 MB limit). It also returns an appropriate
  *UnprocessedKeys* value so you can get the next page of results. If
  desired, your application can include its own logic to assemble the pages
  of results into one data set.

  If *none* of the items can be processed due to insufficient provisioned
  throughput on all of the tables in the request, then *BatchGetItem* will
  return a *ProvisionedThroughputExceededException*. If *at least one* of the
  items is successfully processed, then *BatchGetItem* completes
  successfully, while returning the keys of the unread items in
  *UnprocessedKeys*.

  <important> If DynamoDB returns any unprocessed items, you should retry the
  batch operation on those items. However, *we strongly recommend that you
  use an exponential backoff algorithm*. If you retry the batch operation
  immediately, the underlying read or write requests can still fail due to
  throttling on the individual tables. If you delay the batch operation using
  exponential backoff, the individual requests in the batch are much more
  likely to succeed.

  For more information, see [Batch Operations and Error
  Handling](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations)
  in the *Amazon DynamoDB Developer Guide*.

  </important> By default, *BatchGetItem* performs eventually consistent
  reads on every table in the request. If you want strongly consistent reads
  instead, you can set *ConsistentRead* to `true` for any or all tables.

  In order to minimize response latency, *BatchGetItem* retrieves items in
  parallel.

  When designing your application, keep in mind that DynamoDB does not return
  attributes in any particular order. To help parse the response by item,
  include the primary key values for the items in your request in the
  *AttributesToGet* parameter.

  If a requested item does not exist, it is not returned in the result.
  Requests for nonexistent items consume the minimum read capacity units
  according to the type of read. For more information, see [Capacity Units
  Calculations](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def batch_get_item(client, input, options \\ []) do
    request(client, "BatchGetItem", input, options)
  end

  @doc """
  The *BatchWriteItem* operation puts or deletes multiple items in one or
  more tables. A single call to *BatchWriteItem* can write up to 16 MB of
  data, which can comprise as many as 25 put or delete requests. Individual
  items to be written can be as large as 400 KB.

  <note> *BatchWriteItem* cannot update items. To update items, use the
  *UpdateItem* API.

  </note> The individual *PutItem* and *DeleteItem* operations specified in
  *BatchWriteItem* are atomic; however *BatchWriteItem* as a whole is not. If
  any requested operations fail because the table's provisioned throughput is
  exceeded or an internal processing failure occurs, the failed operations
  are returned in the *UnprocessedItems* response parameter. You can
  investigate and optionally resend the requests. Typically, you would call
  *BatchWriteItem* in a loop. Each iteration would check for unprocessed
  items and submit a new *BatchWriteItem* request with those unprocessed
  items until all items have been processed.

  Note that if *none* of the items can be processed due to insufficient
  provisioned throughput on all of the tables in the request, then
  *BatchWriteItem* will return a *ProvisionedThroughputExceededException*.

  <important> If DynamoDB returns any unprocessed items, you should retry the
  batch operation on those items. However, *we strongly recommend that you
  use an exponential backoff algorithm*. If you retry the batch operation
  immediately, the underlying read or write requests can still fail due to
  throttling on the individual tables. If you delay the batch operation using
  exponential backoff, the individual requests in the batch are much more
  likely to succeed.

  For more information, see [Batch Operations and Error
  Handling](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations)
  in the *Amazon DynamoDB Developer Guide*.

  </important> With *BatchWriteItem*, you can efficiently write or delete
  large amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy
  data from another database into DynamoDB. In order to improve performance
  with these large-scale operations, *BatchWriteItem* does not behave in the
  same way as individual *PutItem* and *DeleteItem* calls would. For example,
  you cannot specify conditions on individual put and delete requests, and
  *BatchWriteItem* does not return deleted items in the response.

  If you use a programming language that supports concurrency, you can use
  threads to write items in parallel. Your application must include the
  necessary logic to manage the threads. With languages that don't support
  threading, you must update or delete the specified items one at a time. In
  both situations, *BatchWriteItem* provides an alternative where the API
  performs the specified put and delete operations in parallel, giving you
  the power of the thread pool approach without having to introduce
  complexity into your application.

  Parallel processing reduces latency, but each specified put and delete
  request consumes the same number of write capacity units whether it is
  processed in parallel or not. Delete operations on nonexistent items
  consume one write capacity unit.

  If one or more of the following is true, DynamoDB rejects the entire batch
  write operation:

  <ul> <li> One or more tables specified in the *BatchWriteItem* request does
  not exist.

  </li> <li> Primary key attributes specified on an item in the request do
  not match those in the corresponding table's primary key schema.

  </li> <li> You try to perform multiple operations on the same item in the
  same *BatchWriteItem* request. For example, you cannot put and delete the
  same item in the same *BatchWriteItem* request.

  </li> <li> There are more than 25 requests in the batch.

  </li> <li> Any individual item in a batch exceeds 400 KB.

  </li> <li> The total request size exceeds 16 MB.

  </li> </ul>
  """
  def batch_write_item(client, input, options \\ []) do
    request(client, "BatchWriteItem", input, options)
  end

  @doc """
  The *CreateTable* operation adds a new table to your account. In an AWS
  account, table names must be unique within each region. That is, you can
  have two tables with same name if you create the tables in different
  regions.

  *CreateTable* is an asynchronous operation. Upon receiving a *CreateTable*
  request, DynamoDB immediately returns a response with a *TableStatus* of
  `CREATING`. After the table is created, DynamoDB sets the *TableStatus* to
  `ACTIVE`. You can perform read and write operations only on an `ACTIVE`
  table.

  You can optionally define secondary indexes on the new table, as part of
  the *CreateTable* operation. If you want to create multiple tables with
  secondary indexes on them, you must create the tables sequentially. Only
  one table with secondary indexes can be in the `CREATING` state at any
  given time.

  You can use the *DescribeTable* API to check the table status.
  """
  def create_table(client, input, options \\ []) do
    request(client, "CreateTable", input, options)
  end

  @doc """
  Deletes a single item in a table by primary key. You can perform a
  conditional delete operation that deletes the item if it exists, or if it
  has an expected attribute value.

  In addition to deleting an item, you can also return the item's attribute
  values in the same operation, using the *ReturnValues* parameter.

  Unless you specify conditions, the *DeleteItem* is an idempotent operation;
  running it multiple times on the same item or attribute does *not* result
  in an error response.

  Conditional deletes are useful for deleting items only if specific
  conditions are met. If those conditions are met, DynamoDB performs the
  delete. Otherwise, the item is not deleted.
  """
  def delete_item(client, input, options \\ []) do
    request(client, "DeleteItem", input, options)
  end

  @doc """
  The *DeleteTable* operation deletes a table and all of its items. After a
  *DeleteTable* request, the specified table is in the `DELETING` state until
  DynamoDB completes the deletion. If the table is in the `ACTIVE` state, you
  can delete it. If a table is in `CREATING` or `UPDATING` states, then
  DynamoDB returns a *ResourceInUseException*. If the specified table does
  not exist, DynamoDB returns a *ResourceNotFoundException*. If table is
  already in the `DELETING` state, no error is returned.

  <note> DynamoDB might continue to accept data read and write operations,
  such as *GetItem* and *PutItem*, on a table in the `DELETING` state until
  the table deletion is complete.

  </note> When you delete a table, any indexes on that table are also
  deleted.

  If you have DynamoDB Streams enabled on the table, then the corresponding
  stream on that table goes into the `DISABLED` state, and the stream is
  automatically deleted after 24 hours.

  Use the *DescribeTable* API to check the status of the table.
  """
  def delete_table(client, input, options \\ []) do
    request(client, "DeleteTable", input, options)
  end

  @doc """
  Returns information about the table, including the current status of the
  table, when it was created, the primary key schema, and any indexes on the
  table.

  <note> If you issue a DescribeTable request immediately after a CreateTable
  request, DynamoDB might return a ResourceNotFoundException. This is because
  DescribeTable uses an eventually consistent query, and the metadata for
  your table might not be available at that moment. Wait for a few seconds,
  and then try the DescribeTable request again.

  </note>
  """
  def describe_table(client, input, options \\ []) do
    request(client, "DescribeTable", input, options)
  end

  @doc """
  The *GetItem* operation returns a set of attributes for the item with the
  given primary key. If there is no matching item, *GetItem* does not return
  any data.

  *GetItem* provides an eventually consistent read by default. If your
  application requires a strongly consistent read, set *ConsistentRead* to
  `true`. Although a strongly consistent read might take more time than an
  eventually consistent read, it always returns the last updated value.
  """
  def get_item(client, input, options \\ []) do
    request(client, "GetItem", input, options)
  end

  @doc """
  Returns an array of table names associated with the current account and
  endpoint. The output from *ListTables* is paginated, with each page
  returning a maximum of 100 table names.
  """
  def list_tables(client, input, options \\ []) do
    request(client, "ListTables", input, options)
  end

  @doc """
  Creates a new item, or replaces an old item with a new item. If an item
  that has the same primary key as the new item already exists in the
  specified table, the new item completely replaces the existing item. You
  can perform a conditional put operation (add a new item if one with the
  specified primary key doesn't exist), or replace an existing item if it has
  certain attribute values.

  In addition to putting an item, you can also return the item's attribute
  values in the same operation, using the *ReturnValues* parameter.

  When you add an item, the primary key attribute(s) are the only required
  attributes. Attribute values cannot be null. String and Binary type
  attributes must have lengths greater than zero. Set type attributes cannot
  be empty. Requests with empty values will be rejected with a
  *ValidationException* exception.

  You can request that *PutItem* return either a copy of the original item
  (before the update) or a copy of the updated item (after the update). For
  more information, see the *ReturnValues* description below.

  <note> To prevent a new item from replacing an existing item, use a
  conditional put operation with *ComparisonOperator* set to `NULL` for the
  primary key attribute, or attributes.

  </note> For more information about using this API, see [Working with
  Items](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html)
  in the *Amazon DynamoDB Developer Guide*.
  """
  def put_item(client, input, options \\ []) do
    request(client, "PutItem", input, options)
  end

  @doc """
  A *Query* operation uses the primary key of a table or a secondary index to
  directly access items from that table or index.

  Use the *KeyConditionExpression* parameter to provide a specific hash key
  value. The *Query* operation will return all of the items from the table or
  index with that hash key value. You can optionally narrow the scope of the
  *Query* operation by specifying a range key value and a comparison operator
  in *KeyConditionExpression*. You can use the *ScanIndexForward* parameter
  to get results in forward or reverse order, by range key or by index key.

  Queries that do not return results consume the minimum number of read
  capacity units for that type of read operation.

  If the total number of items meeting the query criteria exceeds the result
  set size limit of 1 MB, the query stops and results are returned to the
  user with the *LastEvaluatedKey* element to continue the query in a
  subsequent operation. Unlike a *Scan* operation, a *Query* operation never
  returns both an empty result set and a *LastEvaluatedKey* value.
  *LastEvaluatedKey* is only provided if the results exceed 1 MB, or if you
  have used the *Limit* parameter.

  You can query a table, a local secondary index, or a global secondary
  index. For a query on a table or on a local secondary index, you can set
  the *ConsistentRead* parameter to `true` and obtain a strongly consistent
  result. Global secondary indexes support eventually consistent reads only,
  so do not specify *ConsistentRead* when querying a global secondary index.
  """
  def query(client, input, options \\ []) do
    request(client, "Query", input, options)
  end

  @doc """
  The *Scan* operation returns one or more items and item attributes by
  accessing every item in a table or a secondary index. To have DynamoDB
  return fewer items, you can provide a *ScanFilter* operation.

  If the total number of scanned items exceeds the maximum data set size
  limit of 1 MB, the scan stops and results are returned to the user as a
  *LastEvaluatedKey* value to continue the scan in a subsequent operation.
  The results also include the number of items exceeding the limit. A scan
  can result in no table data meeting the filter criteria.

  By default, *Scan* operations proceed sequentially; however, for faster
  performance on a large table or secondary index, applications can request a
  parallel *Scan* operation by providing the *Segment* and *TotalSegments*
  parameters. For more information, see [Parallel
  Scan](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#QueryAndScanParallelScan)
  in the *Amazon DynamoDB Developer Guide*.

  By default, *Scan* uses eventually consistent reads when acessing the data
  in the table or local secondary index. However, you can use strongly
  consistent reads instead by setting the *ConsistentRead* parameter to
  *true*.
  """
  def scan(client, input, options \\ []) do
    request(client, "Scan", input, options)
  end

  @doc """
  Edits an existing item's attributes, or adds a new item to the table if it
  does not already exist. You can put, delete, or add attribute values. You
  can also perform a conditional update on an existing item (insert a new
  attribute name-value pair if it doesn't exist, or replace an existing
  name-value pair if it has certain expected attribute values). If conditions
  are specified and the item does not exist, then the operation fails and a
  new item is not created.

  You can also return the item's attribute values in the same *UpdateItem*
  operation using the *ReturnValues* parameter.
  """
  def update_item(client, input, options \\ []) do
    request(client, "UpdateItem", input, options)
  end

  @doc """
  Modifies the provisioned throughput settings, global secondary indexes, or
  DynamoDB Streams settings for a given table.

  You can only perform one of the following operations at once:

  <ul> <li>Modify the provisioned throughput settings of the table.

  </li> <li>Enable or disable Streams on the table.

  </li> <li>Remove a global secondary index from the table.

  </li> <li> Create a new global secondary index on the table. Once the index
  begins backfilling, you can use *UpdateTable* to perform other operations.

  </li> </ul> *UpdateTable* is an asynchronous operation; while it is
  executing, the table status changes from `ACTIVE` to `UPDATING`. While it
  is `UPDATING`, you cannot issue another *UpdateTable* request. When the
  table returns to the `ACTIVE` state, the *UpdateTable* operation is
  complete.
  """
  def update_table(client, input, options \\ []) do
    request(client, "UpdateTable", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "dynamodb"}
    host = "dynamodb.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.0"},
               {"X-Amz-Target", "DynamoDB_20120810.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end
