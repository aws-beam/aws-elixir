# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DynamoDBStreams do
  @moduledoc """
  Amazon DynamoDB

  Amazon DynamoDB Streams provides API actions for accessing streams and
  processing
  stream records.

  To learn more about application development with Streams, see [Capturing Table Activity with DynamoDB
  Streams](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
  in the Amazon DynamoDB Developer
  Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_stream_input() :: %{
        optional("ExclusiveStartShardId") => String.t(),
        optional("Limit") => integer(),
        required("StreamArn") => String.t()
      }
      
  """
  @type describe_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stream_output() :: %{
        "StreamDescription" => stream_description()
      }
      
  """
  @type describe_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_iterator_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_iterator_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_records_input() :: %{
        optional("Limit") => integer(),
        required("ShardIterator") => String.t()
      }
      
  """
  @type get_records_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_records_output() :: %{
        "NextShardIterator" => String.t(),
        "Records" => list(record()())
      }
      
  """
  @type get_records_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_input() :: %{
        optional("SequenceNumber") => String.t(),
        required("ShardId") => String.t(),
        required("ShardIteratorType") => list(any()),
        required("StreamArn") => String.t()
      }
      
  """
  @type get_shard_iterator_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_output() :: %{
        "ShardIterator" => String.t()
      }
      
  """
  @type get_shard_iterator_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity() :: %{
        "PrincipalId" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_schema_element() :: %{
        "AttributeName" => String.t(),
        "KeyType" => list(any())
      }
      
  """
  @type key_schema_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streams_input() :: %{
        optional("ExclusiveStartStreamArn") => String.t(),
        optional("Limit") => integer(),
        optional("TableName") => String.t()
      }
      
  """
  @type list_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_streams_output() :: %{
        "LastEvaluatedStreamArn" => String.t(),
        "Streams" => list(stream()())
      }
      
  """
  @type list_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "awsRegion" => String.t(),
        "dynamodb" => stream_record(),
        "eventID" => String.t(),
        "eventName" => list(any()),
        "eventSource" => String.t(),
        "eventVersion" => String.t(),
        "userIdentity" => identity()
      }
      
  """
  @type record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sequence_number_range() :: %{
        "EndingSequenceNumber" => String.t(),
        "StartingSequenceNumber" => String.t()
      }
      
  """
  @type sequence_number_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard() :: %{
        "ParentShardId" => String.t(),
        "SequenceNumberRange" => sequence_number_range(),
        "ShardId" => String.t()
      }
      
  """
  @type shard() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream() :: %{
        "StreamArn" => String.t(),
        "StreamLabel" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_description() :: %{
        "CreationRequestDateTime" => non_neg_integer(),
        "KeySchema" => list(key_schema_element()()),
        "LastEvaluatedShardId" => String.t(),
        "Shards" => list(shard()()),
        "StreamArn" => String.t(),
        "StreamLabel" => String.t(),
        "StreamStatus" => list(any()),
        "StreamViewType" => list(any()),
        "TableName" => String.t()
      }
      
  """
  @type stream_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stream_record() :: %{
        "ApproximateCreationDateTime" => non_neg_integer(),
        "Keys" => map(),
        "NewImage" => map(),
        "OldImage" => map(),
        "SequenceNumber" => String.t(),
        "SizeBytes" => float(),
        "StreamViewType" => list(any())
      }
      
  """
  @type stream_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trimmed_data_access_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type trimmed_data_access_exception() :: %{String.t() => any()}

  @type describe_stream_errors() :: resource_not_found_exception() | internal_server_error()

  @type get_records_errors() ::
          trimmed_data_access_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | internal_server_error()
          | expired_iterator_exception()

  @type get_shard_iterator_errors() ::
          trimmed_data_access_exception()
          | resource_not_found_exception()
          | internal_server_error()

  @type list_streams_errors() :: resource_not_found_exception() | internal_server_error()

  def metadata do
    %{
      api_version: "2012-08-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "streams.dynamodb",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "DynamoDB Streams",
      signature_version: "v4",
      signing_name: "streams.dynamodb",
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
  stream
  records). If both `StartingSequenceNumber` and `EndingSequenceNumber`
  are present, then that shard is closed and can no longer receive more data.
  """
  @spec describe_stream(map(), describe_stream_input(), list()) ::
          {:ok, describe_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_stream_errors()}
  def describe_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStream", input, options)
  end

  @doc """
  Retrieves the stream records from a given shard.

  Specify a shard iterator using the `ShardIterator` parameter. The shard iterator
  specifies the position in the shard from which you want to start reading stream
  records
  sequentially. If there are no stream records available in the portion of the
  shard that the
  iterator points to, `GetRecords` returns an empty list. Note that it might take
  multiple calls to get to a portion of the shard that contains stream records.

  `GetRecords` can retrieve a maximum of 1 MB of data or 1000 stream records,
  whichever comes first.
  """
  @spec get_records(map(), get_records_input(), list()) ::
          {:ok, get_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_records_errors()}
  def get_records(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecords", input, options)
  end

  @doc """
  Returns a shard iterator.

  A shard iterator provides information
  about how to retrieve the stream records from within a shard. Use
  the shard iterator in a subsequent
  `GetRecords` request to read the stream records
  from the shard.

  A shard iterator expires 15 minutes after it is returned to the requester.
  """
  @spec get_shard_iterator(map(), get_shard_iterator_input(), list()) ::
          {:ok, get_shard_iterator_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_shard_iterator_errors()}
  def get_shard_iterator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetShardIterator", input, options)
  end

  @doc """
  Returns an array of stream ARNs associated with the current account and
  endpoint.

  If the
  `TableName` parameter is present, then `ListStreams` will return only the
  streams ARNs for that table.

  You can call `ListStreams` at a maximum rate of 5 times per second.
  """
  @spec list_streams(map(), list_streams_input(), list()) ::
          {:ok, list_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streams_errors()}
  def list_streams(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStreams", input, options)
  end
end
