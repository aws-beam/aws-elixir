# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KeyspacesStreams do
  @moduledoc """
  Amazon Keyspaces (for Apache Cassandra) change data capture (CDC) records change
  events for Amazon Keyspaces tables.

  The change events captured in a stream are time-ordered and de-duplicated write
  operations. Using stream data you can build event driven applications that
  incorporate near-real time change events from Amazon Keyspaces tables.

  Amazon Keyspaces CDC is serverless and scales the infrastructure for change
  events automatically based on the volume of changes on your table.

  This API reference describes the Amazon Keyspaces CDC stream API in detail.

  For more information about Amazon Keyspaces CDC, see [Working with change data capture (CDC) streams in Amazon
  Keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/cdc.html) in
  the *Amazon Keyspaces Developer Guide*.

  To learn how Amazon Keyspaces CDC API actions are recorded with CloudTrail, see
  [Amazon Keyspaces information in CloudTrail](https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail)
  in the *Amazon Keyspaces Developer Guide*.

  To see the metrics Amazon Keyspaces CDC sends to Amazon CloudWatch, see [Amazon Keyspaces change data capture (CDC) CloudWatch
  metrics](https://docs.aws.amazon.com/keyspaces/latest/devguide/metrics-dimensions.html#keyspaces-cdc-metrics)
  in the *Amazon Keyspaces Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_records_input() :: %{
        optional("maxResults") => [integer()],
        required("shardIterator") => String.t() | atom()
      }
      
  """
  @type get_records_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_records_output() :: %{
        "changeRecords" => list(record()),
        "nextShardIterator" => String.t() | atom()
      }
      
  """
  @type get_records_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_input() :: %{
        optional("sequenceNumber") => String.t() | atom(),
        required("shardId") => String.t() | atom(),
        required("shardIteratorType") => list(any()),
        required("streamArn") => String.t() | atom()
      }
      
  """
  @type get_shard_iterator_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_shard_iterator_output() :: %{
        "shardIterator" => String.t() | atom()
      }
      
  """
  @type get_shard_iterator_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_stream_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("shardFilter") => shard_filter(),
        required("streamArn") => String.t() | atom()
      }
      
  """
  @type get_stream_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_stream_output() :: %{
        "creationRequestDateTime" => non_neg_integer(),
        "keyspaceName" => String.t() | atom(),
        "nextToken" => String.t() | atom(),
        "shards" => list(shard()),
        "streamArn" => String.t() | atom(),
        "streamLabel" => [String.t() | atom()],
        "streamStatus" => list(any()),
        "streamViewType" => list(any()),
        "tableName" => String.t() | atom()
      }
      
  """
  @type get_stream_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      keyspaces_cell() :: %{
        "metadata" => keyspaces_metadata(),
        "value" => list()
      }
      
  """
  @type keyspaces_cell() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      keyspaces_cell_map_definition() :: %{
        "key" => list(),
        "metadata" => keyspaces_metadata(),
        "value" => list()
      }
      
  """
  @type keyspaces_cell_map_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      keyspaces_metadata() :: %{
        "expirationTime" => [String.t() | atom()],
        "writeTime" => [String.t() | atom()]
      }
      
  """
  @type keyspaces_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      keyspaces_row() :: %{
        "rowMetadata" => keyspaces_metadata(),
        "staticCells" => map(),
        "valueCells" => map()
      }
      
  """
  @type keyspaces_row() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_streams_input() :: %{
        optional("keyspaceName") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("tableName") => String.t() | atom()
      }
      
  """
  @type list_streams_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_streams_output() :: %{
        "nextToken" => String.t() | atom(),
        "streams" => list(stream())
      }
      
  """
  @type list_streams_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "clusteringKeys" => map(),
        "createdAt" => non_neg_integer(),
        "eventVersion" => [String.t() | atom()],
        "newImage" => keyspaces_row(),
        "oldImage" => keyspaces_row(),
        "origin" => list(any()),
        "partitionKeys" => map(),
        "sequenceNumber" => String.t() | atom()
      }
      
  """
  @type record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sequence_number_range() :: %{
        "endingSequenceNumber" => String.t() | atom(),
        "startingSequenceNumber" => String.t() | atom()
      }
      
  """
  @type sequence_number_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      shard() :: %{
        "parentShardIds" => list(String.t() | atom()),
        "sequenceNumberRange" => sequence_number_range(),
        "shardId" => String.t() | atom()
      }
      
  """
  @type shard() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      shard_filter() :: %{
        "shardId" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type shard_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stream() :: %{
        "keyspaceName" => String.t() | atom(),
        "streamArn" => String.t() | atom(),
        "streamLabel" => [String.t() | atom()],
        "tableName" => String.t() | atom()
      }
      
  """
  @type stream() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "errorCode" => list(any()),
        "message" => [String.t() | atom()]
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type get_records_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_shard_iterator_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_stream_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_streams_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2024-09-09",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "cassandra-streams",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "KeyspacesStreams",
      signature_version: "v4",
      signing_name: "cassandra",
      target_prefix: "KeyspacesStreams"
    }
  end

  @doc """
  Retrieves data records from a specified shard in an Amazon Keyspaces data
  stream.

  This operation returns a collection of data records from the shard, including
  the primary key columns and information about modifications made to the captured
  table data. Each record represents a single data modification in the Amazon
  Keyspaces table and includes metadata about when the change occurred.
  """
  @spec get_records(map(), get_records_input(), list()) ::
          {:ok, get_records_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_records_errors()}
  def get_records(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecords", input, options)
  end

  @doc """
  Returns a shard iterator that serves as a bookmark for reading data from a
  specific position in an Amazon Keyspaces data stream's shard.

  The shard iterator specifies the shard position from which to start reading data
  records sequentially. You can specify whether to begin reading at the latest
  record, the oldest record, or at a particular sequence number within the shard.
  """
  @spec get_shard_iterator(map(), get_shard_iterator_input(), list()) ::
          {:ok, get_shard_iterator_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_shard_iterator_errors()}
  def get_shard_iterator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetShardIterator", input, options)
  end

  @doc """
  Returns detailed information about a specific data capture stream for an Amazon
  Keyspaces table.

  The information includes the stream's Amazon Resource Name (ARN), creation time,
  current status, retention period, shard composition, and associated table
  details. This operation helps you monitor and manage the configuration of your
  Amazon Keyspaces data streams.
  """
  @spec get_stream(map(), get_stream_input(), list()) ::
          {:ok, get_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stream_errors()}
  def get_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStream", input, options)
  end

  @doc """
  Returns a list of all data capture streams associated with your Amazon Keyspaces
  account or for a specific keyspace or table.

  The response includes information such as stream ARNs, table associations,
  creation timestamps, and current status. This operation helps you discover and
  manage all active data streams in your Amazon Keyspaces environment.
  """
  @spec list_streams(map(), list_streams_input(), list()) ::
          {:ok, list_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_streams_errors()}
  def list_streams(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStreams", input, options)
  end
end
