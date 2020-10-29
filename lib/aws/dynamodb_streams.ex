# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DynamoDBStreams do
  @moduledoc """
  Amazon DynamoDB

  Amazon DynamoDB Streams provides API actions for accessing streams and
  processing stream records. To learn more about application development with
  Streams, see [Capturing Table Activity with DynamoDB
  Streams](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
  in the Amazon DynamoDB Developer Guide.
  """

  @doc """
  Returns information about a stream, including the current status of the
  stream, its Amazon Resource Name (ARN), the composition of its shards, and
  its corresponding DynamoDB table.

  <note> You can call `DescribeStream` at a maximum rate of 10 times per
  second.

  </note> Each shard in the stream has a `SequenceNumberRange` associated
  with it. If the `SequenceNumberRange` has a `StartingSequenceNumber` but no
  `EndingSequenceNumber`, then the shard is still open (able to receive more
  stream records). If both `StartingSequenceNumber` and
  `EndingSequenceNumber` are present, then that shard is closed and can no
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

  <note> `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream
  records, whichever comes first.

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

  <note> A shard iterator expires 15 minutes after it is returned to the
  requester.

  </note>
  """
  def get_shard_iterator(client, input, options \\ []) do
    request(client, "GetShardIterator", input, options)
  end

  @doc """
  Returns an array of stream ARNs associated with the current account and
  endpoint. If the `TableName` parameter is present, then `ListStreams` will
  return only the streams ARNs for that table.

  <note> You can call `ListStreams` at a maximum rate of 5 times per second.

  </note>
  """
  def list_streams(client, input, options \\ []) do
    request(client, "ListStreams", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "dynamodb"}
    host = build_host("streams.dynamodb", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.0"},
      {"X-Amz-Target", "DynamoDBStreams_20120810.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
