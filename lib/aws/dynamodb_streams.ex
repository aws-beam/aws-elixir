# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DynamoDB.Streams do
  @moduledoc """
  Amazon DynamoDB Streams

  This is the Amazon DynamoDB Streams API Reference. This guide describes the
  low-level API actions for accessing streams and processing stream records.
  For information about application development with DynamoDB Streams, see
  the [Amazon DynamoDB Developer
  Guide](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide//Streams.html).

  Note that this document is intended for use with the following DynamoDB
  documentation:

  <ul> <li> [Amazon DynamoDB Developer
  Guide](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/)

  </li> <li> [Amazon DynamoDB API
  Reference](http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/)

  </li> </ul> The following are short descriptions of each low-level DynamoDB
  Streams API action, organized by function.

  <ul> <li>*DescribeStream* - Returns detailed information about a particular
  stream.

  </li> <li> *GetRecords* - Retrieves the stream records from within a shard.

  </li> <li> *GetShardIterator* - Returns information on how to retrieve the
  streams record from a shard with a given shard ID.

  </li> <li> *ListStreams* - Returns a list of all the streams associated
  with the current AWS account and endpoint.

  </li> </ul>
  """

  @doc """
  Returns information about a stream, including the current status of the
  stream, its Amazon Resource Name (ARN), the composition of its shards, and
  its corresponding DynamoDB table.

  <note>You can call *DescribeStream* at a maximum rate of 10 times per
  second.

  </note> Each shard in the stream has a `SequenceNumberRange` associated
  with it. If the `SequenceNumberRange` has a `StartingSequenceNumber` but no
  `EndingSequenceNumber`, then the shard is still open (able to receive more
  stream records). If both `StartingSequenceNumber` and
  `EndingSequenceNumber` are present, the that shared is closed and can no
  longer receive more data.
  """
  def describe_stream(client, input, options \\ []) do
    request(client, "DescribeStream", input, options)
  end

  @doc """
  Retrieves the stream records from a given shard.

  Specify a shard iterator using the `ShardIterator` parameter. The shard
  iterator specifies the position in the shard from which you want to start
  reading stream records sequentially. If there are no stream records
  available in the portion of the shard that the iterator points to,
  `GetRecords` returns an empty list. Note that it might take multiple calls
  to get to a portion of the shard that contains stream records.

  <note><function>GetRecords</function> can retrieve a maximum of 1 MB of
  data or 2000 stream records, whichever comes first.

  </note>
  """
  def get_records(client, input, options \\ []) do
    request(client, "GetRecords", input, options)
  end

  @doc """
  Returns a shard iterator. A shard iterator provides information about how
  to retrieve the stream records from within a shard. Use the shard iterator
  in a subsequent `GetRecords` request to read the stream records from the
  shard.

  <note>A shard iterator expires 15 minutes after it is returned to the
  requester.

  </note>
  """
  def get_shard_iterator(client, input, options \\ []) do
    request(client, "GetShardIterator", input, options)
  end

  @doc """
  Returns an array of stream ARNs associated with the current account and
  endpoint. If the `TableName` parameter is present, then *ListStreams* will
  return only the streams ARNs for that table.

  <note>You can call *ListStreams* at a maximum rate of 5 times per second.

  </note>
  """
  def list_streams(client, input, options \\ []) do
    request(client, "ListStreams", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "streams.dynamodb"}
    host = "streams.dynamodb.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.0"},
               {"X-Amz-Target", "DynamoDBStreams_20120810.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
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
