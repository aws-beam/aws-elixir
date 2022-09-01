# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DynamoDBStreams do
  @moduledoc """
  Amazon DynamoDB

  Amazon DynamoDB Streams provides API actions for accessing streams and
  processing stream records.

  To learn more about application development with Streams, see [Capturing Table Activity with DynamoDB
  Streams](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
  in the Amazon DynamoDB Developer Guide.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2012-08-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "streams.dynamodb",
      global?: false,
      protocol: "json",
      service_id: "DynamoDB Streams",
      signature_version: "v4",
      signing_name: "dynamodb",
      target_prefix: "DynamoDBStreams_20120810"
    }
  end

  @doc """
  Returns information about a stream, including the current status of the stream,
  its Amazon Resource Name (ARN), the composition of its shards, and its
  corresponding DynamoDB table.

  You can call `DescribeStream` at a maximum rate of 10 times per second.

  Each shard in the stream has a `SequenceNumberRange` associated with it. If the
  `SequenceNumberRange` has a `StartingSequenceNumber` but no
  `EndingSequenceNumber`, then the shard is still open (able to receive more
  stream records). If both `StartingSequenceNumber` and `EndingSequenceNumber` are
  present, then that shard is closed and can no longer receive more data.
  """
  def describe_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStream", input, options)
  end

  @doc """
  Retrieves the stream records from a given shard.

  Specify a shard iterator using the `ShardIterator` parameter. The shard iterator
  specifies the position in the shard from which you want to start reading stream
  records sequentially. If there are no stream records available in the portion of
  the shard that the iterator points to, `GetRecords` returns an empty list. Note
  that it might take multiple calls to get to a portion of the shard that contains
  stream records.

  `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream records,
  whichever comes first.
  """
  def get_records(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecords", input, options)
  end

  @doc """
  Returns a shard iterator.

  A shard iterator provides information about how to retrieve the stream records
  from within a shard. Use the shard iterator in a subsequent `GetRecords` request
  to read the stream records from the shard.

  A shard iterator expires 15 minutes after it is returned to the requester.
  """
  def get_shard_iterator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetShardIterator", input, options)
  end

  @doc """
  Returns an array of stream ARNs associated with the current account and
  endpoint.

  If the `TableName` parameter is present, then `ListStreams` will return only the
  streams ARNs for that table.

  You can call `ListStreams` at a maximum rate of 5 times per second.
  """
  def list_streams(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStreams", input, options)
  end
end
