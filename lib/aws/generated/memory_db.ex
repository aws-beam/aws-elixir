# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MemoryDB do
  @moduledoc """
  MemoryDB is a fully managed, Redis OSS-compatible, in-memory database that
  delivers ultra-fast performance and Multi-AZ durability for modern applications
  built using microservices architectures.

  MemoryDB stores the entire database in-memory, enabling low latency and high
  throughput data access. It is compatible with Redis OSS, a popular open source
  data store, enabling you to leverage Redis OSS’ flexible and friendly data
  structures, APIs, and commands.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      batch_update_cluster_response() :: %{
        "ProcessedClusters" => list(cluster()),
        "UnprocessedClusters" => list(unprocessed_cluster())
      }
      
  """
  @type batch_update_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_acl_request() :: %{
        optional("UserNamesToAdd") => list(String.t()),
        optional("UserNamesToRemove") => list(String.t()),
        required("ACLName") => String.t()
      }
      
  """
  @type update_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_user_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_user_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_quota_for_customer_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type node_quota_for_customer_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_request() :: %{
        required("SnapshotName") => String.t()
      }
      
  """
  @type delete_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subnet_group_response() :: %{
        "SubnetGroup" => subnet_group()
      }
      
  """
  @type create_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multi_region_cluster_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type multi_region_cluster_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_shard_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type failover_shard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_versions_request() :: %{
        optional("DefaultOnly") => boolean(),
        optional("Engine") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ParameterGroupFamily") => String.t()
      }
      
  """
  @type describe_engine_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_parameter_group_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()),
        required("Family") => String.t(),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type create_parameter_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t()
      }
      
  """
  @type availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_multi_region_cluster_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_multi_region_cluster_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameter_groups_response() :: %{
        "NextToken" => String.t(),
        "ParameterGroups" => list(parameter_group())
      }
      
  """
  @type describe_parameter_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_response() :: %{
        "User" => user()
      }
      
  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_updates_response() :: %{
        "NextToken" => String.t(),
        "ServiceUpdates" => list(service_update())
      }
      
  """
  @type describe_service_updates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_nodes_request() :: %{
        optional("Duration") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("NodeType") => String.t(),
        optional("OfferingType") => String.t(),
        optional("ReservationId") => String.t(),
        optional("ReservedNodesOfferingId") => String.t()
      }
      
  """
  @type describe_reserved_nodes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{
        "TagList" => list(tag())
      }
      
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type create_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessed_cluster() :: %{
        "ClusterName" => String.t(),
        "ErrorMessage" => String.t(),
        "ErrorType" => String.t()
      }
      
  """
  @type unprocessed_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_update_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type service_update_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_parameter_group_response() :: %{
        "ParameterGroup" => parameter_group()
      }
      
  """
  @type create_parameter_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_request() :: %{
        optional("KmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        required("ClusterName") => String.t(),
        required("SnapshotName") => String.t()
      }
      
  """
  @type create_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_users_response() :: %{
        "NextToken" => String.t(),
        "Users" => list(user())
      }
      
  """
  @type describe_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_nodes_offering() :: %{
        "Duration" => integer(),
        "FixedPrice" => float(),
        "NodeType" => String.t(),
        "OfferingType" => String.t(),
        "RecurringCharges" => list(recurring_charge()),
        "ReservedNodesOfferingId" => String.t()
      }
      
  """
  @type reserved_nodes_offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_acl_request() :: %{
        required("ACLName") => String.t()
      }
      
  """
  @type delete_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type describe_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_multi_region_clusters_response() :: %{
        "MultiRegionClusters" => list(multi_region_cluster()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_multi_region_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      security_group_membership() :: %{
        "SecurityGroupId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type security_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_response() :: %{
        "NextToken" => String.t(),
        "Snapshots" => list(snapshot())
      }
      
  """
  @type describe_snapshots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recurring_charge() :: %{
        "RecurringChargeAmount" => float(),
        "RecurringChargeFrequency" => String.t()
      }
      
  """
  @type recurring_charge() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_parameter_group_request() :: %{
        optional("AllParameters") => boolean(),
        optional("ParameterNames") => list(String.t()),
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type reset_parameter_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_kms_key_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_kms_key_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type user_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_response() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type create_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_allowed_multi_region_cluster_updates_request() :: %{
        required("MultiRegionClusterName") => String.t()
      }
      
  """
  @type list_allowed_multi_region_cluster_updates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acls_update_status() :: %{
        "ACLToApply" => String.t()
      }
      
  """
  @type acls_update_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet() :: %{
        "AvailabilityZone" => availability_zone(),
        "Identifier" => String.t(),
        "SupportedNetworkTypes" => list(list(any())())
      }
      
  """
  @type subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_multi_region_cluster_request() :: %{
        optional("Description") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("MultiRegionParameterGroupName") => String.t(),
        optional("NodeType") => String.t(),
        optional("ShardConfiguration") => shard_configuration_request(),
        optional("UpdateStrategy") => list(any()),
        required("MultiRegionClusterName") => String.t()
      }
      
  """
  @type update_multi_region_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_name_value() :: %{
        "ParameterName" => String.t(),
        "ParameterValue" => String.t()
      }
      
  """
  @type parameter_name_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_allowed_node_type_updates_response() :: %{
        "ScaleDownNodeTypes" => list(String.t()),
        "ScaleUpNodeTypes" => list(String.t())
      }
      
  """
  @type list_allowed_node_type_updates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "TagList" => list(tag())
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_users_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("UserName") => String.t()
      }
      
  """
  @type describe_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resharding_status() :: %{
        "SlotMigration" => slot_migration()
      }
      
  """
  @type resharding_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameters_response() :: %{
        "NextToken" => String.t(),
        "Parameters" => list(parameter())
      }
      
  """
  @type describe_parameters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_acl_response() :: %{
        "ACL" => acl()
      }
      
  """
  @type update_acl_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_parameter_group_response() :: %{
        "ParameterGroup" => parameter_group()
      }
      
  """
  @type reset_parameter_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_acl_request() :: %{
        optional("Tags") => list(tag()),
        optional("UserNames") => list(String.t()),
        required("ACLName") => String.t()
      }
      
  """
  @type create_acl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acl() :: %{
        "ARN" => String.t(),
        "Clusters" => list(String.t()),
        "MinimumEngineVersion" => String.t(),
        "Name" => String.t(),
        "PendingChanges" => acl_pending_changes(),
        "Status" => String.t(),
        "UserNames" => list(String.t())
      }
      
  """
  @type acl() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      memorydb_node() :: %{
        "AvailabilityZone" => String.t(),
        "CreateTime" => non_neg_integer(),
        "Endpoint" => endpoint(),
        "Name" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type memorydb_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameter_group_request() :: %{
        required("ParameterGroupName") => String.t()
      }
      
  """
  @type delete_parameter_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acl_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type acl_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_nodes_offerings_request() :: %{
        optional("Duration") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("NodeType") => String.t(),
        optional("OfferingType") => String.t(),
        optional("ReservedNodesOfferingId") => String.t()
      }
      
  """
  @type describe_reserved_nodes_offerings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_request() :: %{
        optional("ACLName") => String.t(),
        optional("Description") => String.t(),
        optional("Engine") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("IpDiscovery") => list(any()),
        optional("MaintenanceWindow") => String.t(),
        optional("NodeType") => String.t(),
        optional("ParameterGroupName") => String.t(),
        optional("ReplicaConfiguration") => replica_configuration_request(),
        optional("SecurityGroupIds") => list(String.t()),
        optional("ShardConfiguration") => shard_configuration_request(),
        optional("SnapshotRetentionLimit") => integer(),
        optional("SnapshotWindow") => String.t(),
        optional("SnsTopicArn") => String.t(),
        optional("SnsTopicStatus") => String.t(),
        required("ClusterName") => String.t()
      }
      
  """
  @type update_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_configuration() :: %{
        "Description" => String.t(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "MaintenanceWindow" => String.t(),
        "MultiRegionClusterName" => String.t(),
        "MultiRegionParameterGroupName" => String.t(),
        "Name" => String.t(),
        "NodeType" => String.t(),
        "NumShards" => integer(),
        "ParameterGroupName" => String.t(),
        "Port" => integer(),
        "Shards" => list(shard_detail()),
        "SnapshotRetentionLimit" => integer(),
        "SnapshotWindow" => String.t(),
        "SubnetGroupName" => String.t(),
        "TopicArn" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type cluster_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_vpc_network_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_vpc_network_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_quota_per_resource_exceeded() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_quota_per_resource_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_not_allowed_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_not_allowed_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_allowed_multi_region_cluster_updates_response() :: %{
        "ScaleDownNodeTypes" => list(String.t()),
        "ScaleUpNodeTypes" => list(String.t())
      }
      
  """
  @type list_allowed_multi_region_cluster_updates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subnet_group_request() :: %{
        required("SubnetGroupName") => String.t()
      }
      
  """
  @type delete_subnet_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shards_per_cluster_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type shards_per_cluster_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group() :: %{
        "ARN" => String.t(),
        "Description" => String.t(),
        "Name" => String.t(),
        "Subnets" => list(subnet()),
        "SupportedNetworkTypes" => list(list(any())()),
        "VpcId" => String.t()
      }
      
  """
  @type subnet_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_multi_region_cluster_request() :: %{
        required("MultiRegionClusterName") => String.t()
      }
      
  """
  @type delete_multi_region_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cluster_request() :: %{
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("DataTiering") => boolean(),
        optional("Description") => String.t(),
        optional("Engine") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("IpDiscovery") => list(any()),
        optional("KmsKeyId") => String.t(),
        optional("MaintenanceWindow") => String.t(),
        optional("MultiRegionClusterName") => String.t(),
        optional("NetworkType") => list(any()),
        optional("NumReplicasPerShard") => integer(),
        optional("NumShards") => integer(),
        optional("ParameterGroupName") => String.t(),
        optional("Port") => integer(),
        optional("SecurityGroupIds") => list(String.t()),
        optional("SnapshotArns") => list(String.t()),
        optional("SnapshotName") => String.t(),
        optional("SnapshotRetentionLimit") => integer(),
        optional("SnapshotWindow") => String.t(),
        optional("SnsTopicArn") => String.t(),
        optional("SubnetGroupName") => String.t(),
        optional("TLSEnabled") => boolean(),
        optional("Tags") => list(tag()),
        required("ACLName") => String.t(),
        required("ClusterName") => String.t(),
        required("NodeType") => String.t()
      }
      
  """
  @type create_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engine_version_info() :: %{
        "Engine" => String.t(),
        "EnginePatchVersion" => String.t(),
        "EngineVersion" => String.t(),
        "ParameterGroupFamily" => String.t()
      }
      
  """
  @type engine_version_info() :: %{String.t() => any()}

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
      
      no_operation_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type no_operation_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster() :: %{
        "ACLName" => String.t(),
        "ARN" => String.t(),
        "AutoMinorVersionUpgrade" => boolean(),
        "AvailabilityMode" => list(any()),
        "ClusterEndpoint" => endpoint(),
        "DataTiering" => list(any()),
        "Description" => String.t(),
        "Engine" => String.t(),
        "EnginePatchVersion" => String.t(),
        "EngineVersion" => String.t(),
        "IpDiscovery" => list(any()),
        "KmsKeyId" => String.t(),
        "MaintenanceWindow" => String.t(),
        "MultiRegionClusterName" => String.t(),
        "Name" => String.t(),
        "NetworkType" => list(any()),
        "NodeType" => String.t(),
        "NumberOfShards" => integer(),
        "ParameterGroupName" => String.t(),
        "ParameterGroupStatus" => String.t(),
        "PendingUpdates" => cluster_pending_updates(),
        "SecurityGroups" => list(security_group_membership()),
        "Shards" => list(shard()),
        "SnapshotRetentionLimit" => integer(),
        "SnapshotWindow" => String.t(),
        "SnsTopicArn" => String.t(),
        "SnsTopicStatus" => String.t(),
        "Status" => String.t(),
        "SubnetGroupName" => String.t(),
        "TLSEnabled" => boolean()
      }
      
  """
  @type cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard_detail() :: %{
        "Configuration" => shard_configuration(),
        "Name" => String.t(),
        "Size" => String.t(),
        "SnapshotCreationTime" => non_neg_integer()
      }
      
  """
  @type shard_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_snapshot_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_snapshot_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_acls_request() :: %{
        optional("ACLName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_acls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_failover_not_available_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type test_failover_not_available_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_acl_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_acl_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_allowed_node_type_updates_request() :: %{
        required("ClusterName") => String.t()
      }
      
  """
  @type list_allowed_node_type_updates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_multi_region_cluster_request() :: %{
        optional("Description") => String.t(),
        optional("Engine") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("MultiRegionParameterGroupName") => String.t(),
        optional("NumShards") => integer(),
        optional("TLSEnabled") => boolean(),
        optional("Tags") => list(tag()),
        required("MultiRegionClusterNameSuffix") => String.t(),
        required("NodeType") => String.t()
      }
      
  """
  @type create_multi_region_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subnet_groups_response() :: %{
        "NextToken" => String.t(),
        "SubnetGroups" => list(subnet_group())
      }
      
  """
  @type describe_subnet_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_update_request() :: %{
        "ServiceUpdateNameToApply" => String.t()
      }
      
  """
  @type service_update_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_multi_region_cluster_response() :: %{
        "MultiRegionCluster" => multi_region_cluster()
      }
      
  """
  @type delete_multi_region_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "AllowedValues" => String.t(),
        "DataType" => String.t(),
        "Description" => String.t(),
        "MinimumEngineVersion" => String.t(),
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subnet_group_request() :: %{
        optional("Description") => String.t(),
        optional("SubnetIds") => list(String.t()),
        required("SubnetGroupName") => String.t()
      }
      
  """
  @type update_subnet_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_arn_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication() :: %{
        "PasswordCount" => integer(),
        "Type" => list(any())
      }
      
  """
  @type authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node() :: %{
        "ARN" => String.t(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "NodeCount" => integer(),
        "NodeType" => String.t(),
        "OfferingType" => String.t(),
        "RecurringCharges" => list(recurring_charge()),
        "ReservationId" => String.t(),
        "ReservedNodesOfferingId" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => String.t()
      }
      
  """
  @type reserved_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subnet_group_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()),
        required("SubnetGroupName") => String.t(),
        required("SubnetIds") => list(String.t())
      }
      
  """
  @type create_subnet_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_multi_region_cluster_response() :: %{
        "MultiRegionCluster" => multi_region_cluster()
      }
      
  """
  @type create_multi_region_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acl_pending_changes() :: %{
        "UserNamesToAdd" => list(String.t()),
        "UserNamesToRemove" => list(String.t())
      }
      
  """
  @type acl_pending_changes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      api_call_rate_for_customer_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type api_call_rate_for_customer_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_cluster_request() :: %{
        optional("ServiceUpdate") => service_update_request(),
        required("ClusterNames") => list(String.t())
      }
      
  """
  @type batch_update_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type delete_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subnet_group_response() :: %{
        "SubnetGroup" => subnet_group()
      }
      
  """
  @type delete_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("UserName") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_acl_response() :: %{
        "ACL" => acl()
      }
      
  """
  @type create_acl_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_reserved_nodes_offering_request() :: %{
        optional("NodeCount") => integer(),
        optional("ReservationId") => String.t(),
        optional("Tags") => list(tag()),
        required("ReservedNodesOfferingId") => String.t()
      }
      
  """
  @type purchase_reserved_nodes_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type shard_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_response() :: %{
        "User" => user()
      }
      
  """
  @type delete_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_quota_for_customer_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_quota_for_customer_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type user_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_parameter_group_response() :: %{
        "ParameterGroup" => parameter_group()
      }
      
  """
  @type delete_parameter_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t(),
        "Port" => integer()
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type user_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_acls_response() :: %{
        "ACLs" => list(acl()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_acls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_reserved_nodes_offering_response() :: %{
        "ReservedNode" => reserved_node()
      }
      
  """
  @type purchase_reserved_nodes_offering_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard() :: %{
        "Name" => String.t(),
        "Nodes" => list(node()),
        "NumberOfNodes" => integer(),
        "Slots" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type shard() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard_configuration_request() :: %{
        "ShardCount" => integer()
      }
      
  """
  @type shard_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_multi_region_clusters_request() :: %{
        optional("MaxResults") => integer(),
        optional("MultiRegionClusterName") => String.t(),
        optional("NextToken") => String.t(),
        optional("ShowClusterDetails") => boolean()
      }
      
  """
  @type describe_multi_region_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_user_name_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_user_name_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Date" => non_neg_integer(),
        "Message" => String.t(),
        "SourceName" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cluster_request() :: %{
        optional("FinalSnapshotName") => String.t(),
        optional("MultiRegionClusterName") => String.t(),
        required("ClusterName") => String.t()
      }
      
  """
  @type delete_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_request() :: %{
        optional("Duration") => integer(),
        optional("EndTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SourceName") => String.t(),
        optional("SourceType") => list(any()),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type describe_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "ARN" => String.t(),
        "ClusterConfiguration" => cluster_configuration(),
        "DataTiering" => list(any()),
        "KmsKeyId" => String.t(),
        "Name" => String.t(),
        "Source" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subnet_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SubnetGroupName") => String.t()
      }
      
  """
  @type describe_subnet_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_in_use() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_linked_role_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type service_linked_role_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{
        "TagList" => list(tag())
      }
      
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_multi_region_cluster_response() :: %{
        "MultiRegionCluster" => multi_region_cluster()
      }
      
  """
  @type update_multi_region_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acl_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type acl_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_nodes_response() :: %{
        "NextToken" => String.t(),
        "ReservedNodes" => list(reserved_node())
      }
      
  """
  @type describe_reserved_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      regional_cluster() :: %{
        "ARN" => String.t(),
        "ClusterName" => String.t(),
        "Region" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type regional_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_parameter_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ParameterGroupName") => String.t()
      }
      
  """
  @type describe_parameter_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_request() :: %{
        optional("KmsKeyId") => String.t(),
        optional("Tags") => list(tag()),
        optional("TargetBucket") => String.t(),
        required("SourceSnapshotName") => String.t(),
        required("TargetSnapshotName") => String.t()
      }
      
  """
  @type copy_snapshot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_response() :: %{
        "Clusters" => list(cluster()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_pending_updates() :: %{
        "ACLs" => acls_update_status(),
        "Resharding" => resharding_status(),
        "ServiceUpdates" => list(pending_modified_service_update())
      }
      
  """
  @type cluster_pending_updates() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_request() :: %{
        optional("AccessString") => String.t(),
        optional("AuthenticationMode") => authentication_mode(),
        required("UserName") => String.t()
      }
      
  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_configuration_request() :: %{
        "ReplicaCount" => integer()
      }
      
  """
  @type replica_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_nodes_offering_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_nodes_offering_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        "ACLNames" => list(String.t()),
        "ARN" => String.t(),
        "AccessString" => String.t(),
        "Authentication" => authentication(),
        "MinimumEngineVersion" => String.t(),
        "Name" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_update() :: %{
        "AutoUpdateStartDate" => non_neg_integer(),
        "ClusterName" => String.t(),
        "Description" => String.t(),
        "Engine" => String.t(),
        "NodesUpdated" => String.t(),
        "ReleaseDate" => non_neg_integer(),
        "ServiceUpdateName" => String.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type service_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multi_region_cluster() :: %{
        "ARN" => String.t(),
        "Clusters" => list(regional_cluster()),
        "Description" => String.t(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "MultiRegionClusterName" => String.t(),
        "MultiRegionParameterGroupName" => String.t(),
        "NodeType" => String.t(),
        "NumberOfShards" => integer(),
        "Status" => String.t(),
        "TLSEnabled" => boolean()
      }
      
  """
  @type multi_region_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cluster_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_cluster_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_user_required() :: %{
        "message" => String.t()
      }
      
  """
  @type default_user_required() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_request() :: %{
        optional("ClusterName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ShowDetail") => boolean(),
        optional("SnapshotName") => String.t(),
        optional("Source") => String.t()
      }
      
  """
  @type describe_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_node_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_node_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_parameter_group_response() :: %{
        "ParameterGroup" => parameter_group()
      }
      
  """
  @type update_parameter_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_mode() :: %{
        "Passwords" => list(String.t()),
        "Type" => list(any())
      }
      
  """
  @type authentication_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_nodes_offerings_response() :: %{
        "NextToken" => String.t(),
        "ReservedNodesOfferings" => list(reserved_nodes_offering())
      }
      
  """
  @type describe_reserved_nodes_offerings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_group_in_use_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_group_in_use_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_parameter_group_request() :: %{
        required("ParameterGroupName") => String.t(),
        required("ParameterNameValues") => list(parameter_name_value())
      }
      
  """
  @type update_parameter_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_modified_service_update() :: %{
        "ServiceUpdateName" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type pending_modified_service_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group() :: %{
        "ARN" => String.t(),
        "Description" => String.t(),
        "Family" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type parameter_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_node_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_node_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_cluster_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_cluster_capacity_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type cluster_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multi_region_cluster_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type multi_region_cluster_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_response() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type copy_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_updates_request() :: %{
        optional("ClusterNames") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ServiceUpdateName") => String.t(),
        optional("Status") => list(list(any())())
      }
      
  """
  @type describe_service_updates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_versions_response() :: %{
        "EngineVersions" => list(engine_version_info()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_engine_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_credentials_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_credentials_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_acl_response() :: %{
        "ACL" => acl()
      }
      
  """
  @type delete_acl_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acl_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type acl_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        "User" => user()
      }
      
  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      slot_migration() :: %{
        "ProgressPercentage" => float()
      }
      
  """
  @type slot_migration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type parameter_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_shard_request() :: %{
        required("ClusterName") => String.t(),
        required("ShardName") => String.t()
      }
      
  """
  @type failover_shard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_clusters_request() :: %{
        optional("ClusterName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ShowShardDetails") => boolean()
      }
      
  """
  @type describe_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_response() :: %{
        "Events" => list(event()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subnet_group_response() :: %{
        "SubnetGroup" => subnet_group()
      }
      
  """
  @type update_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shard_configuration() :: %{
        "ReplicaCount" => integer(),
        "Slots" => String.t()
      }
      
  """
  @type shard_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      multi_region_parameter_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type multi_region_parameter_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_response() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type delete_snapshot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("Tags") => list(tag()),
        required("AccessString") => String.t(),
        required("AuthenticationMode") => authentication_mode(),
        required("UserName") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      node_quota_for_cluster_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type node_quota_for_cluster_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cluster_response() :: %{
        "Cluster" => cluster()
      }
      
  """
  @type update_cluster_response() :: %{String.t() => any()}

  @type batch_update_cluster_errors() ::
          invalid_parameter_value_exception() | service_update_not_found_fault()

  @type copy_snapshot_errors() ::
          snapshot_already_exists_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_snapshot_state_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | snapshot_not_found_fault()
          | snapshot_quota_exceeded_fault()

  @type create_acl_errors() ::
          acl_quota_exceeded_fault()
          | default_user_required()
          | acl_already_exists_fault()
          | duplicate_user_name_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | user_not_found_fault()

  @type create_cluster_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | parameter_group_not_found_fault()
          | invalid_credentials_exception()
          | cluster_already_exists_fault()
          | insufficient_cluster_capacity_fault()
          | service_linked_role_not_found_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | invalid_acl_state_fault()
          | invalid_parameter_value_exception()
          | shards_per_cluster_quota_exceeded_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | acl_not_found_fault()
          | subnet_group_not_found_fault()
          | invalid_multi_region_cluster_state_fault()
          | multi_region_cluster_not_found_fault()
          | node_quota_for_customer_exceeded_fault()

  @type create_multi_region_cluster_errors() ::
          multi_region_parameter_group_not_found_fault()
          | multi_region_cluster_already_exists_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()

  @type create_parameter_group_errors() ::
          service_linked_role_not_found_fault()
          | parameter_group_quota_exceeded_fault()
          | parameter_group_already_exists_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()

  @type create_snapshot_errors() ::
          invalid_cluster_state_fault()
          | snapshot_already_exists_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()
          | snapshot_quota_exceeded_fault()

  @type create_subnet_group_errors() ::
          subnet_quota_exceeded_fault()
          | service_linked_role_not_found_fault()
          | subnet_group_quota_exceeded_fault()
          | subnet_not_allowed_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_subnet()
          | subnet_group_already_exists_fault()

  @type create_user_errors() ::
          duplicate_user_name_fault()
          | user_quota_exceeded_fault()
          | user_already_exists_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()

  @type delete_acl_errors() ::
          invalid_acl_state_fault() | invalid_parameter_value_exception() | acl_not_found_fault()

  @type delete_cluster_errors() ::
          invalid_cluster_state_fault()
          | snapshot_already_exists_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type delete_multi_region_cluster_errors() ::
          invalid_parameter_value_exception()
          | invalid_multi_region_cluster_state_fault()
          | multi_region_cluster_not_found_fault()

  @type delete_parameter_group_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()

  @type delete_snapshot_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_snapshot_state_fault()
          | invalid_parameter_combination_exception()
          | snapshot_not_found_fault()

  @type delete_subnet_group_errors() ::
          subnet_group_in_use_fault()
          | service_linked_role_not_found_fault()
          | subnet_group_not_found_fault()

  @type delete_user_errors() ::
          invalid_parameter_value_exception()
          | user_not_found_fault()
          | invalid_user_state_fault()

  @type describe_acls_errors() ::
          invalid_parameter_combination_exception() | acl_not_found_fault()

  @type describe_clusters_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type describe_engine_versions_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_events_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_multi_region_clusters_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()
          | multi_region_cluster_not_found_fault()

  @type describe_parameter_groups_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_parameters_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_reserved_nodes_errors() ::
          service_linked_role_not_found_fault()
          | reserved_node_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_reserved_nodes_offerings_errors() ::
          reserved_nodes_offering_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_service_updates_errors() ::
          invalid_parameter_value_exception() | invalid_parameter_combination_exception()

  @type describe_snapshots_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | snapshot_not_found_fault()

  @type describe_subnet_groups_errors() ::
          service_linked_role_not_found_fault() | subnet_group_not_found_fault()

  @type describe_users_errors() ::
          invalid_parameter_combination_exception() | user_not_found_fault()

  @type failover_shard_errors() ::
          invalid_cluster_state_fault()
          | shard_not_found_fault()
          | api_call_rate_for_customer_exceeded_fault()
          | invalid_parameter_value_exception()
          | test_failover_not_available_fault()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()
          | invalid_kms_key_fault()

  @type list_allowed_multi_region_cluster_updates_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | multi_region_cluster_not_found_fault()

  @type list_allowed_node_type_updates_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cluster_not_found_fault()

  @type list_tags_errors() ::
          multi_region_parameter_group_not_found_fault()
          | parameter_group_not_found_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_arn_fault()
          | acl_not_found_fault()
          | subnet_group_not_found_fault()
          | cluster_not_found_fault()
          | user_not_found_fault()
          | multi_region_cluster_not_found_fault()
          | snapshot_not_found_fault()

  @type purchase_reserved_nodes_offering_errors() ::
          reserved_node_quota_exceeded_fault()
          | reserved_nodes_offering_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | reserved_node_already_exists_fault()

  @type reset_parameter_group_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()

  @type tag_resource_errors() ::
          multi_region_parameter_group_not_found_fault()
          | parameter_group_not_found_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_arn_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | acl_not_found_fault()
          | subnet_group_not_found_fault()
          | cluster_not_found_fault()
          | user_not_found_fault()
          | multi_region_cluster_not_found_fault()
          | snapshot_not_found_fault()

  @type untag_resource_errors() ::
          multi_region_parameter_group_not_found_fault()
          | parameter_group_not_found_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | invalid_arn_fault()
          | invalid_parameter_value_exception()
          | tag_not_found_fault()
          | acl_not_found_fault()
          | subnet_group_not_found_fault()
          | cluster_not_found_fault()
          | user_not_found_fault()
          | multi_region_cluster_not_found_fault()
          | snapshot_not_found_fault()

  @type update_acl_errors() ::
          default_user_required()
          | duplicate_user_name_fault()
          | invalid_acl_state_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | acl_not_found_fault()
          | user_not_found_fault()

  @type update_cluster_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | parameter_group_not_found_fault()
          | invalid_node_state_fault()
          | invalid_cluster_state_fault()
          | service_linked_role_not_found_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | invalid_acl_state_fault()
          | invalid_parameter_value_exception()
          | no_operation_fault()
          | shards_per_cluster_quota_exceeded_fault()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | acl_not_found_fault()
          | cluster_not_found_fault()
          | invalid_kms_key_fault()
          | node_quota_for_customer_exceeded_fault()

  @type update_multi_region_cluster_errors() ::
          multi_region_parameter_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_multi_region_cluster_state_fault()
          | multi_region_cluster_not_found_fault()

  @type update_parameter_group_errors() ::
          parameter_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_parameter_group_state_fault()

  @type update_subnet_group_errors() ::
          subnet_quota_exceeded_fault()
          | service_linked_role_not_found_fault()
          | subnet_in_use()
          | subnet_not_allowed_fault()
          | subnet_group_not_found_fault()
          | invalid_subnet()

  @type update_user_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | user_not_found_fault()
          | invalid_user_state_fault()

  def metadata do
    %{
      api_version: "2021-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "memory-db",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "MemoryDB",
      signature_version: "v4",
      signing_name: "memorydb",
      target_prefix: "AmazonMemoryDB"
    }
  end

  @doc """
  Apply the service update to a list of clusters supplied.

  For more information on service updates and applying them, see [Applying the service
  updates](https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates).
  """
  @spec batch_update_cluster(map(), batch_update_cluster_request(), list()) ::
          {:ok, batch_update_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_cluster_errors()}
  def batch_update_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchUpdateCluster", input, options)
  end

  @doc """
  Makes a copy of an existing snapshot.
  """
  @spec copy_snapshot(map(), copy_snapshot_request(), list()) ::
          {:ok, copy_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_snapshot_errors()}
  def copy_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopySnapshot", input, options)
  end

  @doc """
  Creates an Access Control List.

  For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
  """
  @spec create_acl(map(), create_acl_request(), list()) ::
          {:ok, create_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_acl_errors()}
  def create_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateACL", input, options)
  end

  @doc """
  Creates a cluster.

  All nodes in the cluster run the same protocol-compliant engine software.
  """
  @spec create_cluster(map(), create_cluster_request(), list()) ::
          {:ok, create_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCluster", input, options)
  end

  @doc """
  Creates a new multi-Region cluster.
  """
  @spec create_multi_region_cluster(map(), create_multi_region_cluster_request(), list()) ::
          {:ok, create_multi_region_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_multi_region_cluster_errors()}
  def create_multi_region_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMultiRegionCluster", input, options)
  end

  @doc """
  Creates a new MemoryDB parameter group.

  A parameter group is a collection of parameters and their values that are
  applied to all of the nodes in any cluster. For
  more information, see [Configuring engine parameters using parameter groups](https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html).
  """
  @spec create_parameter_group(map(), create_parameter_group_request(), list()) ::
          {:ok, create_parameter_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_parameter_group_errors()}
  def create_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateParameterGroup", input, options)
  end

  @doc """
  Creates a copy of an entire cluster at a specific moment in time.
  """
  @spec create_snapshot(map(), create_snapshot_request(), list()) ::
          {:ok, create_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_errors()}
  def create_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  Creates a subnet group.

  A subnet group is a collection of subnets (typically private) that you can
  designate for your clusters running in an Amazon Virtual Private Cloud (VPC)
  environment.

  When you create a cluster in an Amazon VPC, you must specify a subnet group.
  MemoryDB uses that subnet group to choose a subnet and IP addresses within that
  subnet to associate with your nodes.
  For more information, see [Subnets and subnet groups](https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html).
  """
  @spec create_subnet_group(map(), create_subnet_group_request(), list()) ::
          {:ok, create_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_subnet_group_errors()}
  def create_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSubnetGroup", input, options)
  end

  @doc """
  Creates a MemoryDB user.

  For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Deletes an Access Control List.

  The ACL must first be disassociated from the cluster before it can be deleted.
  For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
  """
  @spec delete_acl(map(), delete_acl_request(), list()) ::
          {:ok, delete_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_acl_errors()}
  def delete_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteACL", input, options)
  end

  @doc """
  Deletes a cluster.

  It also deletes all associated nodes and node endpoints.

  `CreateSnapshot` permission is required to create a final snapshot.
  Without this permission, the API call will fail with an `Access Denied`
  exception.
  """
  @spec delete_cluster(map(), delete_cluster_request(), list()) ::
          {:ok, delete_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCluster", input, options)
  end

  @doc """
  Deletes an existing multi-Region cluster.
  """
  @spec delete_multi_region_cluster(map(), delete_multi_region_cluster_request(), list()) ::
          {:ok, delete_multi_region_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_multi_region_cluster_errors()}
  def delete_multi_region_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMultiRegionCluster", input, options)
  end

  @doc """
  Deletes the specified parameter group.

  You cannot delete a parameter group if it is associated with any clusters.
  You cannot delete the default parameter groups in your account.
  """
  @spec delete_parameter_group(map(), delete_parameter_group_request(), list()) ::
          {:ok, delete_parameter_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_parameter_group_errors()}
  def delete_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteParameterGroup", input, options)
  end

  @doc """
  Deletes an existing snapshot.

  When you receive a successful response from this operation, MemoryDB immediately
  begins deleting the snapshot; you cannot cancel or revert this operation.
  """
  @spec delete_snapshot(map(), delete_snapshot_request(), list()) ::
          {:ok, delete_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_snapshot_errors()}
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes a subnet group.

  You cannot delete a default subnet group or one that is associated with any
  clusters.
  """
  @spec delete_subnet_group(map(), delete_subnet_group_request(), list()) ::
          {:ok, delete_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_subnet_group_errors()}
  def delete_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSubnetGroup", input, options)
  end

  @doc """
  Deletes a user.

  The user will be removed from all ACLs and in turn removed from all clusters.
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Returns a list of ACLs.
  """
  @spec describe_acls(map(), describe_acls_request(), list()) ::
          {:ok, describe_acls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_acls_errors()}
  def describe_acls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeACLs", input, options)
  end

  @doc """
  Returns information about all provisioned clusters if no cluster identifier is
  specified, or about a specific cluster if a cluster name is supplied.
  """
  @spec describe_clusters(map(), describe_clusters_request(), list()) ::
          {:ok, describe_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_clusters_errors()}
  def describe_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClusters", input, options)
  end

  @doc """
  Returns a list of the available Redis OSS engine versions.
  """
  @spec describe_engine_versions(map(), describe_engine_versions_request(), list()) ::
          {:ok, describe_engine_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_engine_versions_errors()}
  def describe_engine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEngineVersions", input, options)
  end

  @doc """
  Returns events related to clusters, security groups, and parameter groups.

  You can obtain events specific to a particular cluster, security group, or
  parameter group by providing the name as a parameter.

  By default, only the events occurring within the last hour are returned;
  however, you can retrieve up to 14 days' worth of events if necessary.
  """
  @spec describe_events(map(), describe_events_request(), list()) ::
          {:ok, describe_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_events_errors()}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns details about one or more multi-Region clusters.
  """
  @spec describe_multi_region_clusters(map(), describe_multi_region_clusters_request(), list()) ::
          {:ok, describe_multi_region_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_multi_region_clusters_errors()}
  def describe_multi_region_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMultiRegionClusters", input, options)
  end

  @doc """
  Returns a list of parameter group descriptions.

  If a parameter group name is specified, the list contains only the descriptions
  for that group.
  """
  @spec describe_parameter_groups(map(), describe_parameter_groups_request(), list()) ::
          {:ok, describe_parameter_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_parameter_groups_errors()}
  def describe_parameter_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular parameter group.
  """
  @spec describe_parameters(map(), describe_parameters_request(), list()) ::
          {:ok, describe_parameters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_parameters_errors()}
  def describe_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeParameters", input, options)
  end

  @doc """
  Returns information about reserved nodes for this account, or about a specified
  reserved node.
  """
  @spec describe_reserved_nodes(map(), describe_reserved_nodes_request(), list()) ::
          {:ok, describe_reserved_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reserved_nodes_errors()}
  def describe_reserved_nodes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedNodes", input, options)
  end

  @doc """
  Lists available reserved node offerings.
  """
  @spec describe_reserved_nodes_offerings(
          map(),
          describe_reserved_nodes_offerings_request(),
          list()
        ) ::
          {:ok, describe_reserved_nodes_offerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reserved_nodes_offerings_errors()}
  def describe_reserved_nodes_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedNodesOfferings", input, options)
  end

  @doc """
  Returns details of the service updates.
  """
  @spec describe_service_updates(map(), describe_service_updates_request(), list()) ::
          {:ok, describe_service_updates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_updates_errors()}
  def describe_service_updates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServiceUpdates", input, options)
  end

  @doc """
  Returns information about cluster snapshots.

  By default, DescribeSnapshots lists all of your snapshots; it can optionally
  describe a single snapshot,
  or just the snapshots associated with a particular cluster.
  """
  @spec describe_snapshots(map(), describe_snapshots_request(), list()) ::
          {:ok, describe_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_snapshots_errors()}
  def describe_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSnapshots", input, options)
  end

  @doc """
  Returns a list of subnet group descriptions.

  If a subnet group name is specified, the list contains only the description of
  that group.
  """
  @spec describe_subnet_groups(map(), describe_subnet_groups_request(), list()) ::
          {:ok, describe_subnet_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_subnet_groups_errors()}
  def describe_subnet_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSubnetGroups", input, options)
  end

  @doc """
  Returns a list of users.
  """
  @spec describe_users(map(), describe_users_request(), list()) ::
          {:ok, describe_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_users_errors()}
  def describe_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUsers", input, options)
  end

  @doc """
  Used to failover a shard.

  This API is designed for testing the behavior of your application in case of
  MemoryDB failover. It is not designed to be used as a production-level tool for
  initiating
  a failover to overcome a problem you may have with the cluster. Moreover, in
  certain conditions such as large scale operational events, Amazon may block this
  API.
  """
  @spec failover_shard(map(), failover_shard_request(), list()) ::
          {:ok, failover_shard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, failover_shard_errors()}
  def failover_shard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "FailoverShard", input, options)
  end

  @doc """
  Lists the allowed updates for a multi-Region cluster.
  """
  @spec list_allowed_multi_region_cluster_updates(
          map(),
          list_allowed_multi_region_cluster_updates_request(),
          list()
        ) ::
          {:ok, list_allowed_multi_region_cluster_updates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_allowed_multi_region_cluster_updates_errors()}
  def list_allowed_multi_region_cluster_updates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAllowedMultiRegionClusterUpdates", input, options)
  end

  @doc """
  Lists all available node types that you can scale to from your cluster's current
  node type.

  When you use the UpdateCluster operation to scale your cluster, the value of the
  NodeType parameter must be one of the node types returned by this operation.
  """
  @spec list_allowed_node_type_updates(map(), list_allowed_node_type_updates_request(), list()) ::
          {:ok, list_allowed_node_type_updates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_allowed_node_type_updates_errors()}
  def list_allowed_node_type_updates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAllowedNodeTypeUpdates", input, options)
  end

  @doc """
  Lists all tags currently on a named resource.

  A tag is a key-value pair where the key and value are case-sensitive. You can
  use tags to categorize and track your MemoryDB resources. For more information,
  see [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

  When you add or remove tags from multi region clusters, you might not
  immediately see the latest effective tags in the ListTags API response due to it
  being eventually consistent specifically for multi region clusters. For more
  information, see [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).
  """
  @spec list_tags(map(), list_tags_request(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Allows you to purchase a reserved node offering.

  Reserved nodes are not eligible for cancellation and are non-refundable.
  """
  @spec purchase_reserved_nodes_offering(
          map(),
          purchase_reserved_nodes_offering_request(),
          list()
        ) ::
          {:ok, purchase_reserved_nodes_offering_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, purchase_reserved_nodes_offering_errors()}
  def purchase_reserved_nodes_offering(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseReservedNodesOffering", input, options)
  end

  @doc """
  Modifies the parameters of a parameter group to the engine or system default
  value.

  You can reset specific parameters by submitting a list of parameter names. To
  reset the entire parameter group, specify the AllParameters and
  ParameterGroupName parameters.
  """
  @spec reset_parameter_group(map(), reset_parameter_group_request(), list()) ::
          {:ok, reset_parameter_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_parameter_group_errors()}
  def reset_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetParameterGroup", input, options)
  end

  @doc """
  Use this operation to add tags to a resource.

  A tag is a key-value pair where the key and value are case-sensitive. You can
  use tags to categorize and track all your MemoryDB resources. For more
  information, see [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

  When you add tags to multi region clusters, you might not immediately see the
  latest effective tags in the ListTags API response due to it being eventually
  consistent specifically for multi region clusters. For more information, see
  [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

  You can specify cost-allocation tags for your MemoryDB resources, Amazon
  generates a cost allocation report as a comma-separated value
  (CSV) file with your usage and costs aggregated by your tags. You can apply tags
  that represent business categories
  (such as cost centers, application names, or owners) to organize your costs
  across multiple services.

  For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Use this operation to remove tags on a resource.

  A tag is a key-value pair where the key and value are case-sensitive. You can
  use tags to categorize and track all your MemoryDB resources. For more
  information, see [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

  When you remove tags from multi region clusters, you might not immediately see
  the latest effective tags in the ListTags API response due to it being
  eventually consistent specifically for multi region clusters. For more
  information, see [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

  You can specify cost-allocation tags for your MemoryDB resources, Amazon
  generates a cost allocation report as a comma-separated value
  (CSV) file with your usage and costs aggregated by your tags. You can apply tags
  that represent business categories
  (such as cost centers, application names, or owners) to organize your costs
  across multiple services.

  For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Changes the list of users that belong to the Access Control List.
  """
  @spec update_acl(map(), update_acl_request(), list()) ::
          {:ok, update_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_acl_errors()}
  def update_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateACL", input, options)
  end

  @doc """
  Modifies the settings for a cluster.

  You can use this operation to change one or more cluster configuration settings
  by specifying the settings and the new values.
  """
  @spec update_cluster(map(), update_cluster_request(), list()) ::
          {:ok, update_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cluster_errors()}
  def update_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCluster", input, options)
  end

  @doc """
  Updates the configuration of an existing multi-Region cluster.
  """
  @spec update_multi_region_cluster(map(), update_multi_region_cluster_request(), list()) ::
          {:ok, update_multi_region_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_multi_region_cluster_errors()}
  def update_multi_region_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMultiRegionCluster", input, options)
  end

  @doc """
  Updates the parameters of a parameter group.

  You can modify up to 20 parameters in a single request by submitting a list
  parameter name and value pairs.
  """
  @spec update_parameter_group(map(), update_parameter_group_request(), list()) ::
          {:ok, update_parameter_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_parameter_group_errors()}
  def update_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateParameterGroup", input, options)
  end

  @doc """
  Updates a subnet group.

  For more information, see [Updating a subnet group](https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html)
  """
  @spec update_subnet_group(map(), update_subnet_group_request(), list()) ::
          {:ok, update_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_subnet_group_errors()}
  def update_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSubnetGroup", input, options)
  end

  @doc """
  Changes user password(s) and/or access string.
  """
  @spec update_user(map(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUser", input, options)
  end
end
