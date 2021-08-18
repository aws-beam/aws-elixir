# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EBS do
  @moduledoc """
  You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create
  EBS snapshots, write data directly to your snapshots, read data on your
  snapshots, and identify the differences or changes between two snapshots.

  If you’re an independent software vendor (ISV) who offers backup services for
  Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to
  track incremental changes on your EBS volumes through snapshots. This can be
  done without having to create new volumes from snapshots, and then use Amazon
  Elastic Compute Cloud (Amazon EC2) instances to compare the differences.

  You can create incremental snapshots directly from data on-premises into EBS
  volumes and the cloud to use for quick disaster recovery. With the ability to
  write and read snapshots, you can write your on-premises data to an EBS snapshot
  during a disaster. Then after recovery, you can restore it back to AWS or
  on-premises from the snapshot. You no longer need to build and maintain complex
  mechanisms to copy data to and from Amazon EBS.

  This API reference provides detailed information about the actions, data types,
  parameters, and errors of the EBS direct APIs. For more information about the
  elements that make up the EBS direct APIs, and examples of how to use them
  effectively, see [Accessing the Contents of an EBS Snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html)
  in the *Amazon Elastic Compute Cloud User Guide*. For more information about the
  supported AWS Regions, endpoints, and service quotas for the EBS direct APIs,
  see [Amazon Elastic Block Store Endpoints and Quotas](https://docs.aws.amazon.com/general/latest/gr/ebs-service.html) in the
  *AWS General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  been written to it.

  Completing the snapshot changes the status to `completed`. You cannot write new
  blocks to a snapshot after it has been completed.
  """
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

    Request.request_rest(
      client,
      metadata(),
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
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about the blocks that are different between two Amazon
  Elastic Block Store snapshots of the same volume/snapshot lineage.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about the blocks in an Amazon Elastic Block Store snapshot.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Writes a block of data to a snapshot.

  If the specified block contains data, the existing data is overwritten. The
  target snapshot must be in the `pending` state.

  Data written to a snapshot must be aligned with 512-byte sectors.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new Amazon EBS snapshot.

  The new snapshot enters the `pending` state after the request completes.

  After creating the snapshot, use [
  PutSnapshotBlock](https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html)
  to write blocks of data to the snapshot.
  """
  def start_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/snapshots"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
