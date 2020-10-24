# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudHSMV2 do
  @moduledoc """
  For more information about AWS CloudHSM, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User
  Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/).
  """

  @doc """
  Copy an AWS CloudHSM cluster backup to a different region.
  """
  def copy_backup_to_region(client, input, options \\ []) do
    request(client, "CopyBackupToRegion", input, options)
  end

  @doc """
  Creates a new AWS CloudHSM cluster.
  """
  def create_cluster(client, input, options \\ []) do
    request(client, "CreateCluster", input, options)
  end

  @doc """
  Creates a new hardware security module (HSM) in the specified AWS CloudHSM
  cluster.
  """
  def create_hsm(client, input, options \\ []) do
    request(client, "CreateHsm", input, options)
  end

  @doc """
  Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7
  days after the DeleteBackup request is made. For more information on
  restoring a backup, see `RestoreBackup`.
  """
  def delete_backup(client, input, options \\ []) do
    request(client, "DeleteBackup", input, options)
  end

  @doc """
  Deletes the specified AWS CloudHSM cluster. Before you can delete a
  cluster, you must delete all HSMs in the cluster. To see if the cluster
  contains any HSMs, use `DescribeClusters`. To delete an HSM, use
  `DeleteHsm`.
  """
  def delete_cluster(client, input, options \\ []) do
    request(client, "DeleteCluster", input, options)
  end

  @doc """
  Deletes the specified HSM. To specify an HSM, you can use its identifier
  (ID), the IP address of the HSM's elastic network interface (ENI), or the
  ID of the HSM's ENI. You need to specify only one of these values. To find
  these values, use `DescribeClusters`.
  """
  def delete_hsm(client, input, options \\ []) do
    request(client, "DeleteHsm", input, options)
  end

  @doc """
  Gets information about backups of AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain
  only a subset of all the backups. When the response contains only a subset
  of backups, it includes a `NextToken` value. Use this value in a subsequent
  `DescribeBackups` request to get more backups. When you receive a response
  with no `NextToken` (or an empty or null value), that means there are no
  more backups to get.
  """
  def describe_backups(client, input, options \\ []) do
    request(client, "DescribeBackups", input, options)
  end

  @doc """
  Gets information about AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain
  only a subset of all the clusters. When the response contains only a subset
  of clusters, it includes a `NextToken` value. Use this value in a
  subsequent `DescribeClusters` request to get more clusters. When you
  receive a response with no `NextToken` (or an empty or null value), that
  means there are no more clusters to get.
  """
  def describe_clusters(client, input, options \\ []) do
    request(client, "DescribeClusters", input, options)
  end

  @doc """
  Claims an AWS CloudHSM cluster by submitting the cluster certificate issued
  by your issuing certificate authority (CA) and the CA's root certificate.
  Before you can claim a cluster, you must sign the cluster's certificate
  signing request (CSR) with your issuing CA. To get the cluster's CSR, use
  `DescribeClusters`.
  """
  def initialize_cluster(client, input, options \\ []) do
    request(client, "InitializeCluster", input, options)
  end

  @doc """
  Gets a list of tags for the specified AWS CloudHSM cluster.

  This is a paginated operation, which means that each response might contain
  only a subset of all the tags. When the response contains only a subset of
  tags, it includes a `NextToken` value. Use this value in a subsequent
  `ListTags` request to get more tags. When you receive a response with no
  `NextToken` (or an empty or null value), that means there are no more tags
  to get.
  """
  def list_tags(client, input, options \\ []) do
    request(client, "ListTags", input, options)
  end

  @doc """
  Restores a specified AWS CloudHSM backup that is in the `PENDING_DELETION`
  state. For mor information on deleting a backup, see `DeleteBackup`.
  """
  def restore_backup(client, input, options \\ []) do
    request(client, "RestoreBackup", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes the specified tag or tags from the specified AWS CloudHSM cluster.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "cloudhsm"}
    host = build_host("cloudhsmv2", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "BaldrApiService.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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
end
