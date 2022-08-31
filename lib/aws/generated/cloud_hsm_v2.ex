# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudHSMV2 do
  @moduledoc """
  For more information about AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "CloudHSM V2",
      api_version: "2017-04-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudhsmv2",
      global?: false,
      protocol: "json",
      service_id: "CloudHSM V2",
      signature_version: "v4",
      signing_name: "cloudhsm",
      target_prefix: "BaldrApiService"
    }
  end

  @doc """
  Copy an AWS CloudHSM cluster backup to a different region.
  """
  def copy_backup_to_region(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyBackupToRegion", input, options)
  end

  @doc """
  Creates a new AWS CloudHSM cluster.
  """
  def create_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCluster", input, options)
  end

  @doc """
  Creates a new hardware security module (HSM) in the specified AWS CloudHSM
  cluster.
  """
  def create_hsm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateHsm", input, options)
  end

  @doc """
  Deletes a specified AWS CloudHSM backup.

  A backup can be restored up to 7 days after the DeleteBackup request is made.
  For more information on restoring a backup, see `RestoreBackup`.
  """
  def delete_backup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteBackup", input, options)
  end

  @doc """
  Deletes the specified AWS CloudHSM cluster.

  Before you can delete a cluster, you must delete all HSMs in the cluster. To see
  if the cluster contains any HSMs, use `DescribeClusters`. To delete an HSM, use
  `DeleteHsm`.
  """
  def delete_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCluster", input, options)
  end

  @doc """
  Deletes the specified HSM.

  To specify an HSM, you can use its identifier (ID), the IP address of the HSM's
  elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify
  only one of these values. To find these values, use `DescribeClusters`.
  """
  def delete_hsm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteHsm", input, options)
  end

  @doc """
  Gets information about backups of AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain only
  a subset of all the backups. When the response contains only a subset of
  backups, it includes a `NextToken` value. Use this value in a subsequent
  `DescribeBackups` request to get more backups. When you receive a response with
  no `NextToken` (or an empty or null value), that means there are no more backups
  to get.
  """
  def describe_backups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBackups", input, options)
  end

  @doc """
  Gets information about AWS CloudHSM clusters.

  This is a paginated operation, which means that each response might contain only
  a subset of all the clusters. When the response contains only a subset of
  clusters, it includes a `NextToken` value. Use this value in a subsequent
  `DescribeClusters` request to get more clusters. When you receive a response
  with no `NextToken` (or an empty or null value), that means there are no more
  clusters to get.
  """
  def describe_clusters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeClusters", input, options)
  end

  @doc """
  Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by
  your issuing certificate authority (CA) and the CA's root certificate.

  Before you can claim a cluster, you must sign the cluster's certificate signing
  request (CSR) with your issuing CA. To get the cluster's CSR, use
  `DescribeClusters`.
  """
  def initialize_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InitializeCluster", input, options)
  end

  @doc """
  Gets a list of tags for the specified AWS CloudHSM cluster.

  This is a paginated operation, which means that each response might contain only
  a subset of all the tags. When the response contains only a subset of tags, it
  includes a `NextToken` value. Use this value in a subsequent `ListTags` request
  to get more tags. When you receive a response with no `NextToken` (or an empty
  or null value), that means there are no more tags to get.
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTags", input, options)
  end

  @doc """
  Modifies attributes for AWS CloudHSM backup.
  """
  def modify_backup_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyBackupAttributes", input, options)
  end

  @doc """
  Modifies AWS CloudHSM cluster.
  """
  def modify_cluster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyCluster", input, options)
  end

  @doc """
  Restores a specified AWS CloudHSM backup that is in the `PENDING_DELETION`
  state.

  For mor information on deleting a backup, see `DeleteBackup`.
  """
  def restore_backup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreBackup", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes the specified tag or tags from the specified AWS CloudHSM cluster.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end
end
