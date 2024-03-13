# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EBS do
  @moduledoc """
  You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create
  Amazon EBS snapshots, write data directly to
  your snapshots, read data on your snapshots, and identify the differences or
  changes between
  two snapshots.

  If you’re an independent software vendor (ISV) who offers backup services for
  Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to
  track incremental changes on
  your Amazon EBS volumes through snapshots. This can be done without having to
  create new volumes
  from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances
  to compare the differences.

  You can create incremental snapshots directly from data on-premises into volumes
  and the
  cloud to use for quick disaster recovery. With the ability to write and read
  snapshots, you can
  write your on-premises data to an snapshot during a disaster. Then after
  recovery, you can
  restore it back to Amazon Web Services or on-premises from the snapshot. You no
  longer need to build and
  maintain complex mechanisms to copy data to and from Amazon EBS.

  This API reference provides detailed information about the actions, data types,
  parameters, and errors of the EBS direct APIs. For more information about the
  elements that
  make up the EBS direct APIs, and examples of how to use them effectively, see
  [Accessing the Contents of an Amazon EBS Snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html)
  in the *Amazon Elastic Compute Cloud User
  Guide*. For more information about the supported Amazon Web Services Regions,
  endpoints,
  and service quotas for the EBS direct APIs, see [Amazon Elastic Block Store Endpoints and
  Quotas](https://docs.aws.amazon.com/general/latest/gr/ebs-service.html) in
  the *Amazon Web Services General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      block() :: %{
        "BlockIndex" => integer(),
        "BlockToken" => String.t()
      }

  """
  @type block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      changed_block() :: %{
        "BlockIndex" => integer(),
        "FirstBlockToken" => String.t(),
        "SecondBlockToken" => String.t()
      }

  """
  @type changed_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_snapshot_request() :: %{
        optional("Checksum") => String.t(),
        optional("ChecksumAggregationMethod") => list(any()),
        optional("ChecksumAlgorithm") => list(any()),
        required("ChangedBlocksCount") => integer()
      }

  """
  @type complete_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_snapshot_response() :: %{
        "Status" => list(any())
      }

  """
  @type complete_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type concurrent_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_snapshot_block_request() :: %{
        required("BlockToken") => String.t()
      }

  """
  @type get_snapshot_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_snapshot_block_response() :: %{
        "BlockData" => binary(),
        "Checksum" => String.t(),
        "ChecksumAlgorithm" => list(any()),
        "DataLength" => integer()
      }

  """
  @type get_snapshot_block_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changed_blocks_request() :: %{
        optional("FirstSnapshotId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartingBlockIndex") => integer()
      }

  """
  @type list_changed_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changed_blocks_response() :: %{
        "BlockSize" => integer(),
        "ChangedBlocks" => list(changed_block()()),
        "ExpiryTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "VolumeSize" => float()
      }

  """
  @type list_changed_blocks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_snapshot_blocks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartingBlockIndex") => integer()
      }

  """
  @type list_snapshot_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_snapshot_blocks_response() :: %{
        "BlockSize" => integer(),
        "Blocks" => list(block()()),
        "ExpiryTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "VolumeSize" => float()
      }

  """
  @type list_snapshot_blocks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_snapshot_block_request() :: %{
        optional("Progress") => integer(),
        required("BlockData") => binary(),
        required("Checksum") => String.t(),
        required("ChecksumAlgorithm") => list(any()),
        required("DataLength") => integer()
      }

  """
  @type put_snapshot_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_snapshot_block_response() :: %{
        "Checksum" => String.t(),
        "ChecksumAlgorithm" => list(any())
      }

  """
  @type put_snapshot_block_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_throttled_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type request_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_snapshot_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Encrypted") => boolean(),
        optional("KmsKeyArn") => String.t(),
        optional("ParentSnapshotId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Timeout") => integer(),
        required("VolumeSize") => float()
      }

  """
  @type start_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_snapshot_response() :: %{
        "BlockSize" => integer(),
        "Description" => String.t(),
        "KmsKeyArn" => String.t(),
        "OwnerId" => String.t(),
        "ParentSnapshotId" => String.t(),
        "SnapshotId" => String.t(),
        "SseType" => list(any()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "Tags" => list(tag()()),
        "VolumeSize" => float()
      }

  """
  @type start_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type complete_snapshot_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_snapshot_block_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_changed_blocks_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_snapshot_blocks_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_snapshot_block_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type start_snapshot_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | conflict_exception()
          | concurrent_limit_exceeded_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2019-11-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ebs",
      global?: false,
      protocol: "rest-json",
      service_id: "EBS",
      signature_version: "v4",
      signing_name: "ebs",
      target_prefix: nil
    }
  end

  @doc """
  Seals and completes the snapshot after all of the required blocks of data have
  been
  written to it.

  Completing the snapshot changes the status to `completed`. You
  cannot write new blocks to a snapshot after it has been completed.

  You should always retry requests that receive server (`5xx`)
  error responses, and `ThrottlingException` and `RequestThrottledException`
  client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec complete_snapshot(map(), String.t(), complete_snapshot_request(), list()) ::
          {:ok, complete_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, complete_snapshot_errors()}
  def complete_snapshot(%Client{} = client, snapshot_id, input, options \\ []) do
    url_path = "/snapshots/completion/#{AWS.Util.encode_uri(snapshot_id)}"

    {headers, input} =
      [
        {"ChangedBlocksCount", "x-amz-ChangedBlocksCount"},
        {"Checksum", "x-amz-Checksum"},
        {"ChecksumAggregationMethod", "x-amz-Checksum-Aggregation-Method"},
        {"ChecksumAlgorithm", "x-amz-Checksum-Algorithm"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Returns the data in a block in an Amazon Elastic Block Store snapshot.

  You should always retry requests that receive server (`5xx`)
  error responses, and `ThrottlingException` and `RequestThrottledException`
  client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec get_snapshot_block(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_snapshot_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_snapshot_block_errors()}
  def get_snapshot_block(%Client{} = client, block_index, snapshot_id, block_token, options \\ []) do
    url_path =
      "/snapshots/#{AWS.Util.encode_uri(snapshot_id)}/blocks/#{AWS.Util.encode_uri(block_index)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(block_token) do
        [{"blockToken", block_token} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-Checksum", "Checksum"},
          {"x-amz-Checksum-Algorithm", "ChecksumAlgorithm"},
          {"x-amz-Data-Length", "DataLength"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the blocks that are different between two
  Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.

  You should always retry requests that receive server (`5xx`)
  error responses, and `ThrottlingException` and `RequestThrottledException`
  client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec list_changed_blocks(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_changed_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_changed_blocks_errors()}
  def list_changed_blocks(
        %Client{} = client,
        second_snapshot_id,
        first_snapshot_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        starting_block_index \\ nil,
        options \\ []
      ) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(second_snapshot_id)}/changedblocks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(starting_block_index) do
        [{"startingBlockIndex", starting_block_index} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"pageToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(first_snapshot_id) do
        [{"firstSnapshotId", first_snapshot_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the blocks in an Amazon Elastic Block Store snapshot.

  You should always retry requests that receive server (`5xx`)
  error responses, and `ThrottlingException` and `RequestThrottledException`
  client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec list_snapshot_blocks(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_snapshot_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_snapshot_blocks_errors()}
  def list_snapshot_blocks(
        %Client{} = client,
        snapshot_id,
        max_results \\ nil,
        next_token \\ nil,
        starting_block_index \\ nil,
        options \\ []
      ) do
    url_path = "/snapshots/#{AWS.Util.encode_uri(snapshot_id)}/blocks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(starting_block_index) do
        [{"startingBlockIndex", starting_block_index} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"pageToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Writes a block of data to a snapshot.

  If the specified block contains
  data, the existing data is overwritten. The target snapshot must be in the
  `pending` state.

  Data written to a snapshot must be aligned with 512-KiB sectors.

  You should always retry requests that receive server (`5xx`)
  error responses, and `ThrottlingException` and `RequestThrottledException`
  client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec put_snapshot_block(map(), String.t(), String.t(), put_snapshot_block_request(), list()) ::
          {:ok, put_snapshot_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_snapshot_block_errors()}
  def put_snapshot_block(%Client{} = client, block_index, snapshot_id, input, options \\ []) do
    url_path =
      "/snapshots/#{AWS.Util.encode_uri(snapshot_id)}/blocks/#{AWS.Util.encode_uri(block_index)}"

    {headers, input} =
      [
        {"Checksum", "x-amz-Checksum"},
        {"ChecksumAlgorithm", "x-amz-Checksum-Algorithm"},
        {"DataLength", "x-amz-Data-Length"},
        {"Progress", "x-amz-Progress"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-Checksum", "Checksum"},
          {"x-amz-Checksum-Algorithm", "ChecksumAlgorithm"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Creates a new Amazon EBS snapshot.

  The new snapshot enters the `pending` state
  after the request completes.

  After creating the snapshot, use [
  PutSnapshotBlock](https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html)
  to
  write blocks of data to the snapshot.

  You should always retry requests that receive server (`5xx`)
  error responses, and `ThrottlingException` and `RequestThrottledException`
  client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec start_snapshot(map(), start_snapshot_request(), list()) ::
          {:ok, start_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_snapshot_errors()}
  def start_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/snapshots"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end
end
