# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudHSMV2 do
  @moduledoc """
  For more information about CloudHSM, see
  [CloudHSM](http://aws.amazon.com/cloudhsm/) and the [ CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_hsm_request() :: %{
        optional("EniId") => String.t(),
        optional("EniIp") => String.t(),
        optional("HsmId") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type delete_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_response() :: %{
        "Hsm" => hsm()
      }
      
  """
  @type create_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceId") => String.t(),
        required("TagList") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{
        "Policy" => String.t(),
        "ResourceArn" => String.t()
      }
      
  """
  @type delete_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_hsm_resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_backup_attributes_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type modify_backup_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "NextToken" => String.t(),
        "TagList" => list(tag()())
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "Policy" => String.t()
      }
      
  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_hsm_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceId") => String.t(),
        required("TagKeyList") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_backup_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type restore_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_backup_attributes_request() :: %{
        required("BackupId") => String.t(),
        required("NeverExpires") => boolean()
      }
      
  """
  @type modify_backup_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hsm_response() :: %{
        "HsmId" => String.t()
      }
      
  """
  @type delete_hsm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type modify_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination_backup() :: %{
        "CreateTimestamp" => non_neg_integer(),
        "SourceBackup" => String.t(),
        "SourceCluster" => String.t(),
        "SourceRegion" => String.t()
      }
      
  """
  @type destination_backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_internal_failure_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_hsm_internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("BackupRetentionPolicy") => backup_retention_policy(),
        optional("Mode") => list(any()),
        optional("SourceBackupId") => String.t(),
        optional("TagList") => list(tag()()),
        required("HsmType") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backups_request() :: %{
        optional("Filters") => map(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Shared") => boolean(),
        optional("SortAscending") => boolean()
      }
      
  """
  @type describe_backups_request() :: %{String.t() => any()}

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
      
      cluster() :: %{
        "BackupPolicy" => list(any()),
        "BackupRetentionPolicy" => backup_retention_policy(),
        "Certificates" => certificates(),
        "ClusterId" => String.t(),
        "CreateTimestamp" => non_neg_integer(),
        "HsmType" => String.t(),
        "Hsms" => list(hsm()()),
        "Mode" => list(any()),
        "PreCoPassword" => String.t(),
        "SecurityGroup" => String.t(),
        "SourceBackupId" => String.t(),
        "State" => list(any()),
        "StateMessage" => String.t(),
        "SubnetMapping" => map(),
        "TagList" => list(tag()()),
        "VpcId" => String.t()
      }
      
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hsm_request() :: %{
        optional("IpAddress") => String.t(),
        required("AvailabilityZone") => String.t(),
        required("ClusterId") => String.t()
      }
      
  """
  @type create_hsm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type delete_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_backup_to_region_request() :: %{
        optional("TagList") => list(tag()()),
        required("BackupId") => String.t(),
        required("DestinationRegion") => String.t()
      }
      
  """
  @type copy_backup_to_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        optional("ResourceArn") => String.t()
      }
      
  """
  @type get_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_cluster_request() :: %{
        required("BackupRetentionPolicy") => backup_retention_policy(),
        required("ClusterId") => String.t()
      }
      
  """
  @type modify_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup() :: %{
        "BackupArn" => String.t(),
        "BackupId" => String.t(),
        "BackupState" => list(any()),
        "ClusterId" => String.t(),
        "CopyTimestamp" => non_neg_integer(),
        "CreateTimestamp" => non_neg_integer(),
        "DeleteTimestamp" => non_neg_integer(),
        "HsmType" => String.t(),
        "Mode" => list(any()),
        "NeverExpires" => boolean(),
        "SourceBackup" => String.t(),
        "SourceCluster" => String.t(),
        "SourceRegion" => String.t(),
        "TagList" => list(tag()())
      }
      
  """
  @type backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initialize_cluster_response() :: %{
        "State" => list(any()),
        "StateMessage" => String.t()
      }
      
  """
  @type initialize_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        required("ClusterId") => String.t()
      }
      
  """
  @type delete_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_backup_request() :: %{
        required("BackupId") => String.t()
      }
      
  """
  @type restore_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_hsm_invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        optional("Policy") => String.t(),
        optional("ResourceArn") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hsm() :: %{
        "AvailabilityZone" => String.t(),
        "ClusterId" => String.t(),
        "EniId" => String.t(),
        "EniIp" => String.t(),
        "HsmId" => String.t(),
        "State" => list(any()),
        "StateMessage" => String.t(),
        "SubnetId" => String.t()
      }
      
  """
  @type hsm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_clusters_response() :: %{
        "Clusters" => list(cluster()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_hsm_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_backup_to_region_response() :: %{
        "DestinationBackup" => destination_backup()
      }
      
  """
  @type copy_backup_to_region_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificates() :: %{
        "AwsHardwareCertificate" => String.t(),
        "ClusterCertificate" => String.t(),
        "ClusterCsr" => String.t(),
        "HsmCertificate" => String.t(),
        "ManufacturerHardwareCertificate" => String.t()
      }
      
  """
  @type certificates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "Policy" => String.t(),
        "ResourceArn" => String.t()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initialize_cluster_request() :: %{
        required("ClusterId") => String.t(),
        required("SignedCert") => String.t(),
        required("TrustAnchor") => String.t()
      }
      
  """
  @type initialize_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        optional("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_backups_response() :: %{
        "Backups" => list(backup()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_backups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_backup_request() :: %{
        required("BackupId") => String.t()
      }
      
  """
  @type delete_backup_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceId") => String.t()
      }
      
  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_retention_policy() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type backup_retention_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_hsm_tag_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_hsm_tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_request() :: %{
        optional("Filters") => map(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_clusters_request() :: %{String.t() => any()}

  @type copy_backup_to_region_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type create_cluster_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type create_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type delete_backup_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type delete_cluster_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type delete_hsm_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type delete_resource_policy_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type describe_backups_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type describe_clusters_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()

  @type get_resource_policy_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type initialize_cluster_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type list_tags_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type modify_backup_attributes_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type modify_cluster_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type put_resource_policy_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type restore_backup_errors() ::
          cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type tag_resource_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  @type untag_resource_errors() ::
          cloud_hsm_tag_exception()
          | cloud_hsm_service_exception()
          | cloud_hsm_invalid_request_exception()
          | cloud_hsm_internal_failure_exception()
          | cloud_hsm_access_denied_exception()
          | cloud_hsm_resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-04-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudhsmv2",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CloudHSM V2",
      signature_version: "v4",
      signing_name: "cloudhsm",
      target_prefix: "BaldrApiService"
    }
  end

  @doc """
  Copy an CloudHSM cluster backup to a different region.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  backup in a different Amazon Web Services account.
  """
  @spec copy_backup_to_region(map(), copy_backup_to_region_request(), list()) ::
          {:ok, copy_backup_to_region_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_backup_to_region_errors()}
  def copy_backup_to_region(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyBackupToRegion", input, options)
  end

  @doc """
  Creates a new CloudHSM cluster.

  **Cross-account use:** Yes. To perform this operation with an CloudHSM backup in
  a different AWS account, specify the full backup
  ARN in the value of the SourceBackupId parameter.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates a new hardware security module (HSM) in the specified CloudHSM
  cluster.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  cluster in a different Amazon Web Service account.
  """
  @spec create_hsm(map(), create_hsm_request(), list()) ::
          {:ok, create_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hsm_errors()}
  def create_hsm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHsm", input, options)
  end

  @doc """
  Deletes a specified CloudHSM backup.

  A backup can be restored up to 7 days
  after the DeleteBackup request is made. For more information on restoring a
  backup, see
  `RestoreBackup`.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  backup in a different Amazon Web Services account.
  """
  @spec delete_backup(map(), delete_backup_request(), list()) ::
          {:ok, delete_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_backup_errors()}
  def delete_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBackup", input, options)
  end

  @doc """
  Deletes the specified CloudHSM cluster.

  Before you can delete a cluster, you must
  delete all HSMs in the cluster. To see if the cluster contains any HSMs, use
  `DescribeClusters`. To delete an HSM, use `DeleteHsm`.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  cluster in a different Amazon Web Services account.
  """
  @spec delete_cluster(map(), delete_cluster_request(), list()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes the specified HSM.

  To specify an HSM, you can use its identifier (ID), the IP
  address of the HSM's elastic network interface (ENI), or the ID of the HSM's
  ENI. You need to
  specify only one of these values. To find these values, use `DescribeClusters`.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM hsm
  in a different Amazon Web Services account.
  """
  @spec delete_hsm(map(), delete_hsm_request(), list()) ::
          {:ok, delete_hsm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_hsm_errors()}
  def delete_hsm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHsm", input, options)
  end

  @doc """
  Deletes an CloudHSM resource policy.

  Deleting a resource policy will result in the resource being unshared and
  removed from
  any RAM resource shares. Deleting the resource policy attached to a backup will
  not impact any clusters created from that
  backup.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  resource in a different Amazon Web Services account.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Gets information about backups of CloudHSM clusters.

  Lists either the backups you own or the backups shared with you when the Shared
  parameter is true.

  This is a paginated operation, which means that each response might contain only
  a
  subset of all the backups. When the response contains only a subset of backups,
  it includes a
  `NextToken` value. Use this value in a subsequent `DescribeBackups`
  request to get more backups. When you receive a response with no `NextToken` (or
  an
  empty or null value), that means there are no more backups to get.

  **Cross-account use:** Yes. Customers can describe backups in other Amazon Web
  Services accounts that are shared with them.
  """
  @spec describe_backups(map(), describe_backups_request(), list()) ::
          {:ok, describe_backups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backups_errors()}
  def describe_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBackups", input, options)
  end

  @doc """
  Gets information about CloudHSM clusters.

  This is a paginated operation, which means that each response might contain only
  a
  subset of all the clusters. When the response contains only a subset of
  clusters, it includes
  a `NextToken` value. Use this value in a subsequent `DescribeClusters`
  request to get more clusters. When you receive a response with no `NextToken`
  (or
  an empty or null value), that means there are no more clusters to get.

  **Cross-account use:** No. You cannot perform this operation on CloudHSM
  clusters in a different Amazon Web Services account.
  """
  @spec describe_clusters(map(), describe_clusters_request(), list()) ::
          {:ok, describe_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_clusters_errors()}
  def describe_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClusters", input, options)
  end

  @doc """
  Retrieves the resource policy document attached to a given resource.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  resource in a different Amazon Web Services account.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Claims an CloudHSM cluster by submitting the cluster certificate issued by your
  issuing certificate authority (CA) and the CA's root certificate.

  Before you can claim a
  cluster, you must sign the cluster's certificate signing request (CSR) with your
  issuing CA.
  To get the cluster's CSR, use `DescribeClusters`.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  cluster in a different Amazon Web Services account.
  """
  @spec initialize_cluster(map(), initialize_cluster_request(), list()) ::
          {:ok, initialize_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, initialize_cluster_errors()}
  def initialize_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InitializeCluster", input, options)
  end

  @doc """
  Gets a list of tags for the specified CloudHSM cluster.

  This is a paginated operation, which means that each response might contain only
  a
  subset of all the tags. When the response contains only a subset of tags, it
  includes a
  `NextToken` value. Use this value in a subsequent `ListTags` request to
  get more tags. When you receive a response with no `NextToken` (or an empty or
  null
  value), that means there are no more tags to get.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  resource in a different Amazon Web Services account.
  """
  @spec list_tags(map(), list_tags_request(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Modifies attributes for CloudHSM backup.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  backup in a different Amazon Web Services account.
  """
  @spec modify_backup_attributes(map(), modify_backup_attributes_request(), list()) ::
          {:ok, modify_backup_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_backup_attributes_errors()}
  def modify_backup_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyBackupAttributes", input, options)
  end

  @doc """
  Modifies CloudHSM cluster.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  cluster in a different Amazon Web Services account.
  """
  @spec modify_cluster(map(), modify_cluster_request(), list()) ::
          {:ok, modify_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_cluster_errors()}
  def modify_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCluster", input, options)
  end

  @doc """
  Creates or updates an CloudHSM resource policy.

  A resource policy helps you to define the IAM entity
  (for example, an Amazon Web Services account) that can manage your CloudHSM
  resources. The following resources support
  CloudHSM resource policies:

    *
  Backup - The resource policy allows you to describe the backup and restore a
  cluster from the backup in another Amazon Web Services account.

  In order to share a backup, it must be in a 'READY' state and you must own it.

  While you can share a backup using the CloudHSM PutResourcePolicy operation, we
  recommend using Resource Access Manager
  (RAM) instead. Using RAM provides multiple benefits as it creates the policy for
  you, allows multiple resources to be shared at
  one time, and increases the discoverability of shared resources. If you use
  PutResourcePolicy and want consumers to be able to
  describe the backups you share with them, you must promote the backup to a
  standard RAM
  Resource Share using the RAM PromoteResourceShareCreatedFromPolicy API
  operation.

  For more information, see [ Working with shared backups](https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html) in
  the CloudHSM User Guide

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  resource in a different Amazon Web Services account.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Restores a specified CloudHSM backup that is in the
  `PENDING_DELETION` state.

  For more information on deleting a backup, see
  `DeleteBackup`.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  backup in a different Amazon Web Services account.
  """
  @spec restore_backup(map(), restore_backup_request(), list()) ::
          {:ok, restore_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_backup_errors()}
  def restore_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreBackup", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified CloudHSM cluster.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  resource in a different Amazon Web Services account.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the specified tag or tags from the specified CloudHSM cluster.

  **Cross-account use:** No. You cannot perform this operation on an CloudHSM
  resource in a different Amazon Web Services account.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
