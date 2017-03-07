# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Kinesis.Firehose do
  @moduledoc """
  Amazon Kinesis Firehose API Reference

  Amazon Kinesis Firehose is a fully-managed service that delivers real-time
  streaming data to destinations such as Amazon Simple Storage Service
  (Amazon S3), Amazon Elasticsearch Service (Amazon ES), and Amazon Redshift.
  """

  @doc """
  Creates a delivery stream.

  By default, you can create up to 20 delivery streams per region.

  This is an asynchronous operation that immediately returns. The initial
  status of the delivery stream is `CREATING`. After the delivery stream is
  created, its status is `ACTIVE` and it now accepts data. Attempts to send
  data to a delivery stream that is not in the `ACTIVE` state cause an
  exception. To check the state of a delivery stream, use
  `DescribeDeliveryStream`.

  A delivery stream is configured with a single destination: Amazon S3,
  Amazon Elasticsearch Service, or Amazon Redshift. You must specify only one
  of the following destination configuration parameters:
  **ExtendedS3DestinationConfiguration**, **S3DestinationConfiguration**,
  **ElasticsearchDestinationConfiguration**, or
  **RedshiftDestinationConfiguration**.

  When you specify **S3DestinationConfiguration**, you can also provide the
  following optional values: **BufferingHints**, **EncryptionConfiguration**,
  and **CompressionFormat**. By default, if no **BufferingHints** value is
  provided, Firehose buffers data up to 5 MB or for 5 minutes, whichever
  condition is satisfied first. Note that **BufferingHints** is a hint, so
  there are some cases where the service cannot adhere to these conditions
  strictly; for example, record boundaries are such that the size is a little
  over or under the configured buffering size. By default, no encryption is
  performed. We strongly recommend that you enable encryption to ensure
  secure data storage in Amazon S3.

  A few notes about Amazon Redshift as a destination:

  <ul> <li> An Amazon Redshift destination requires an S3 bucket as
  intermediate location, as Firehose first delivers data to S3 and then uses
  `COPY` syntax to load data into an Amazon Redshift table. This is specified
  in the **RedshiftDestinationConfiguration.S3Configuration** parameter.

  </li> <li> The compression formats `SNAPPY` or `ZIP` cannot be specified in
  **RedshiftDestinationConfiguration.S3Configuration** because the Amazon
  Redshift `COPY` operation that reads from the S3 bucket doesn't support
  these compression formats.

  </li> <li> We strongly recommend that you use the user name and password
  you provide exclusively with Firehose, and that the permissions for the
  account are restricted for Amazon Redshift `INSERT` permissions.

  </li> </ul> Firehose assumes the IAM role that is configured as part of the
  destination. The role should allow the Firehose principal to assume the
  role, and the role should have permissions that allows the service to
  deliver the data. For more information, see [Amazon S3 Bucket
  Access](http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3)
  in the *Amazon Kinesis Firehose Developer Guide*.
  """
  def create_delivery_stream(client, input, options \\ []) do
    request(client, "CreateDeliveryStream", input, options)
  end

  @doc """
  Deletes a delivery stream and its data.

  You can delete a delivery stream only if it is in `ACTIVE` or `DELETING`
  state, and not in the `CREATING` state. While the deletion request is in
  process, the delivery stream is in the `DELETING` state.

  To check the state of a delivery stream, use `DescribeDeliveryStream`.

  While the delivery stream is `DELETING` state, the service may continue to
  accept the records, but the service doesn't make any guarantees with
  respect to delivering the data. Therefore, as a best practice, you should
  first stop any applications that are sending records before deleting a
  delivery stream.
  """
  def delete_delivery_stream(client, input, options \\ []) do
    request(client, "DeleteDeliveryStream", input, options)
  end

  @doc """
  Describes the specified delivery stream and gets the status. For example,
  after your delivery stream is created, call `DescribeDeliveryStream` to see
  if the delivery stream is `ACTIVE` and therefore ready for data to be sent
  to it.
  """
  def describe_delivery_stream(client, input, options \\ []) do
    request(client, "DescribeDeliveryStream", input, options)
  end

  @doc """
  Lists your delivery streams.

  The number of delivery streams might be too large to return using a single
  call to `ListDeliveryStreams`. You can limit the number of delivery streams
  returned, using the **Limit** parameter. To determine whether there are
  more delivery streams to list, check the value of
  **HasMoreDeliveryStreams** in the output. If there are more delivery
  streams to list, you can request them by specifying the name of the last
  delivery stream returned in the call in the
  **ExclusiveStartDeliveryStreamName** parameter of a subsequent call.
  """
  def list_delivery_streams(client, input, options \\ []) do
    request(client, "ListDeliveryStreams", input, options)
  end

  @doc """
  Writes a single data record into an Amazon Kinesis Firehose delivery
  stream. To write multiple data records into a delivery stream, use
  `PutRecordBatch`. Applications using these operations are referred to as
  producers.

  By default, each delivery stream can take in up to 2,000 transactions per
  second, 5,000 records per second, or 5 MB per second. Note that if you use
  `PutRecord` and `PutRecordBatch`, the limits are an aggregate across these
  two operations for each delivery stream. For more information about limits
  and how to request an increase, see [Amazon Kinesis Firehose
  Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

  You must specify the name of the delivery stream and the data record when
  using `PutRecord`. The data record consists of a data blob that can be up
  to 1,000 KB in size, and any kind of data, for example, a segment from a
  log file, geographic location data, web site clickstream data, etc.

  Firehose buffers records before delivering them to the destination. To
  disambiguate the data blobs at the destination, a common solution is to use
  delimiters in the data, such as a newline (`\n`) or some other character
  unique within the data. This allows the consumer application(s) to parse
  individual data items when reading the data from the destination.

  The `PutRecord` operation returns a **RecordId**, which is a unique string
  assigned to each record. Producer applications can use this ID for purposes
  such as auditability and investigation.

  If the `PutRecord` operation throws a **ServiceUnavailableException**, back
  off and retry. If the exception persists, it is possible that the
  throughput limits have been exceeded for the delivery stream.

  Data records sent to Firehose are stored for 24 hours from the time they
  are added to a delivery stream as it attempts to send the records to the
  destination. If the destination is unreachable for more than 24 hours, the
  data is no longer available.
  """
  def put_record(client, input, options \\ []) do
    request(client, "PutRecord", input, options)
  end

  @doc """
  Writes multiple data records into a delivery stream in a single call, which
  can achieve higher throughput per producer than when writing single
  records. To write single data records into a delivery stream, use
  `PutRecord`. Applications using these operations are referred to as
  producers.

  By default, each delivery stream can take in up to 2,000 transactions per
  second, 5,000 records per second, or 5 MB per second. Note that if you use
  `PutRecord` and `PutRecordBatch`, the limits are an aggregate across these
  two operations for each delivery stream. For more information about limits,
  see [Amazon Kinesis Firehose
  Limits](http://docs.aws.amazon.com/firehose/latest/dev/limits.html).

  Each `PutRecordBatch` request supports up to 500 records. Each record in
  the request can be as large as 1,000 KB (before 64-bit encoding), up to a
  limit of 4 MB for the entire request. These limits cannot be changed.

  You must specify the name of the delivery stream and the data record when
  using `PutRecord`. The data record consists of a data blob that can be up
  to 1,000 KB in size, and any kind of data, for example, a segment from a
  log file, geographic location data, web site clickstream data, and so on.

  Firehose buffers records before delivering them to the destination. To
  disambiguate the data blobs at the destination, a common solution is to use
  delimiters in the data, such as a newline (`\n`) or some other character
  unique within the data. This allows the consumer application(s) to parse
  individual data items when reading the data from the destination.

  The `PutRecordBatch` response includes a count of failed records,
  **FailedPutCount**, and an array of responses, **RequestResponses**. Each
  entry in the **RequestResponses** array provides additional information
  about the processed record, and directly correlates with a record in the
  request array using the same ordering, from the top to the bottom. The
  response array always includes the same number of records as the request
  array. **RequestResponses** includes both successfully and unsuccessfully
  processed records. Firehose attempts to process all records in each
  `PutRecordBatch` request. A single record failure does not stop the
  processing of subsequent records.

  A successfully processed record includes a **RecordId** value, which is
  unique for the record. An unsuccessfully processed record includes
  **ErrorCode** and **ErrorMessage** values. **ErrorCode** reflects the type
  of error, and is one of the following values: `ServiceUnavailable` or
  `InternalFailure`. **ErrorMessage** provides more detailed information
  about the error.

  If there is an internal server error or a timeout, the write might have
  completed or it might have failed. If **FailedPutCount** is greater than 0,
  retry the request, resending only those records that might have failed
  processing. This minimizes the possible duplicate records and also reduces
  the total bytes sent (and corresponding charges). We recommend that you
  handle any duplicates at the destination.

  If `PutRecordBatch` throws **ServiceUnavailableException**, back off and
  retry. If the exception persists, it is possible that the throughput limits
  have been exceeded for the delivery stream.

  Data records sent to Firehose are stored for 24 hours from the time they
  are added to a delivery stream as it attempts to send the records to the
  destination. If the destination is unreachable for more than 24 hours, the
  data is no longer available.
  """
  def put_record_batch(client, input, options \\ []) do
    request(client, "PutRecordBatch", input, options)
  end

  @doc """
  Updates the specified destination of the specified delivery stream.

  You can use this operation to change the destination type (for example, to
  replace the Amazon S3 destination with Amazon Redshift) or change the
  parameters associated with a destination (for example, to change the bucket
  name of the Amazon S3 destination). The update might not occur immediately.
  The target delivery stream remains active while the configurations are
  updated, so data writes to the delivery stream can continue during this
  process. The updated configurations are usually effective within a few
  minutes.

  Note that switching between Amazon ES and other services is not supported.
  For an Amazon ES destination, you can only update to another Amazon ES
  destination.

  If the destination type is the same, Firehose merges the configuration
  parameters specified with the destination configuration that already exists
  on the delivery stream. If any of the parameters are not specified in the
  call, the existing values are retained. For example, in the Amazon S3
  destination, if `EncryptionConfiguration` is not specified then the
  existing `EncryptionConfiguration` is maintained on the destination.

  If the destination type is not the same, for example, changing the
  destination from Amazon S3 to Amazon Redshift, Firehose does not merge any
  parameters. In this case, all parameters must be specified.

  Firehose uses **CurrentDeliveryStreamVersionId** to avoid race conditions
  and conflicting merges. This is a required field, and the service updates
  the configuration only if the existing configuration has a version ID that
  matches. After the update is applied successfully, the version ID is
  updated, and can be retrieved using `DescribeDeliveryStream`. You should
  use the new version ID to set **CurrentDeliveryStreamVersionId** in the
  next call.
  """
  def update_destination(client, input, options \\ []) do
    request(client, "UpdateDestination", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "firehose"}
    host = get_host("firehose", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "Firehose_20150804.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
