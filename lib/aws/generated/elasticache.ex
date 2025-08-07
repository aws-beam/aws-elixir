# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElastiCache do
  @moduledoc """
  Amazon ElastiCache

  Amazon ElastiCache is a web service that makes it easier to set up, operate, and
  scale
  a distributed cache in the cloud.

  With ElastiCache, customers get all of the benefits of a high-performance,
  in-memory
  cache with less of the administrative burden involved in launching and managing
  a
  distributed cache. The service makes setup, scaling, and cluster failure
  handling much
  simpler than in a self-managed cache deployment.

  In addition, through integration with Amazon CloudWatch, customers get enhanced
  visibility into the key performance statistics associated with their cache and
  can
  receive alarms if a part of their cache runs hot.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      cache_parameter_group_name_message() :: %{
        "CacheParameterGroupName" => String.t() | atom()
      }
      
  """
  @type cache_parameter_group_name_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_user_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_user_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_apply_update_action_message() :: %{
        optional("CacheClusterIds") => list(String.t() | atom()),
        optional("ReplicationGroupIds") => list(String.t() | atom()),
        required("ServiceUpdateName") => String.t() | atom()
      }
      
  """
  @type batch_apply_update_action_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_update_actions_message() :: %{
        optional("CacheClusterIds") => list(String.t() | atom()),
        optional("Engine") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("ReplicationGroupIds") => list(String.t() | atom()),
        optional("ServiceUpdateName") => String.t() | atom(),
        optional("ServiceUpdateStatus") => list(list(any())()),
        optional("ServiceUpdateTimeRange") => time_range_filter(),
        optional("ShowNodeLevelUpdateStatus") => boolean(),
        optional("UpdateActionStatus") => list(list(any())())
      }
      
  """
  @type describe_update_actions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unprocessed_update_action() :: %{
        "CacheClusterId" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "ErrorType" => String.t() | atom(),
        "ReplicationGroupId" => String.t() | atom(),
        "ServiceUpdateName" => String.t() | atom()
      }
      
  """
  @type unprocessed_update_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_quota_for_customer_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type node_quota_for_customer_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_node() :: %{
        "CacheNodeCount" => integer(),
        "CacheNodeType" => String.t() | atom(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "OfferingType" => String.t() | atom(),
        "ProductDescription" => String.t() | atom(),
        "RecurringCharges" => list(recurring_charge()),
        "ReservationARN" => String.t() | atom(),
        "ReservedCacheNodeId" => String.t() | atom(),
        "ReservedCacheNodesOfferingId" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "State" => String.t() | atom(),
        "UsagePrice" => float()
      }
      
  """
  @type reserved_cache_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type snapshot_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type snapshot_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_nodes_offering_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reserved_cache_nodes_offering_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type disassociate_global_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cache_engine_versions_message() :: %{
        optional("CacheParameterGroupFamily") => String.t() | atom(),
        optional("DefaultOnly") => boolean(),
        optional("Engine") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_cache_engine_versions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_storage() :: %{
        "Maximum" => integer(),
        "Minimum" => integer(),
        "Unit" => list(any())
      }
      
  """
  @type data_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_c_p_u_per_second() :: %{
        "Maximum" => integer(),
        "Minimum" => integer()
      }
      
  """
  @type e_c_p_u_per_second() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_parameter_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_parameter_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_security_group_message() :: %{
        "CacheSecurityGroups" => list(cache_security_group()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type cache_security_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_usage_limits() :: %{
        "DataStorage" => data_storage(),
        "ECPUPerSecond" => e_c_p_u_per_second()
      }
      
  """
  @type cache_usage_limits() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_groups_message() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("UserGroupId") => String.t() | atom()
      }
      
  """
  @type describe_user_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_groups_result() :: %{
        "Marker" => String.t() | atom(),
        "UserGroups" => list(user_group())
      }
      
  """
  @type describe_user_groups_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_node_type_specific_parameter() :: %{
        "AllowedValues" => String.t() | atom(),
        "CacheNodeTypeSpecificValues" => list(cache_node_type_specific_value()),
        "ChangeType" => list(any()),
        "DataType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IsModifiable" => boolean(),
        "MinimumEngineVersion" => String.t() | atom(),
        "ParameterName" => String.t() | atom(),
        "Source" => String.t() | atom()
      }
      
  """
  @type cache_node_type_specific_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_global_replication_groups_result() :: %{
        "GlobalReplicationGroups" => list(global_replication_group()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type describe_global_replication_groups_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache() :: %{
        "ARN" => String.t() | atom(),
        "CacheUsageLimits" => cache_usage_limits(),
        "CreateTime" => non_neg_integer(),
        "DailySnapshotTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Endpoint" => endpoint(),
        "Engine" => String.t() | atom(),
        "FullEngineVersion" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "MajorEngineVersion" => String.t() | atom(),
        "ReaderEndpoint" => endpoint(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "ServerlessCacheName" => String.t() | atom(),
        "SnapshotRetentionLimit" => integer(),
        "Status" => String.t() | atom(),
        "SubnetIds" => list(String.t() | atom()),
        "UserGroupId" => String.t() | atom()
      }
      
  """
  @type serverless_cache() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_parameter_groups_message() :: %{
        "CacheParameterGroups" => list(cache_parameter_group()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type cache_parameter_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_subnet_group_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_subnet_group_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type availability_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_replication_group_result() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type modify_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      allowed_node_type_modifications_message() :: %{
        "ScaleDownModifications" => list(String.t() | atom()),
        "ScaleUpModifications" => list(String.t() | atom())
      }
      
  """
  @type allowed_node_type_modifications_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_replication_group_shard_configuration_message() :: %{
        optional("NodeGroupsToRemove") => list(String.t() | atom()),
        optional("NodeGroupsToRetain") => list(String.t() | atom()),
        optional("ReshardingConfiguration") => list(resharding_configuration()),
        required("ApplyImmediately") => boolean(),
        required("NodeGroupCount") => integer(),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type modify_replication_group_shard_configuration_message() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      modify_user_group_message() :: %{
        optional("Engine") => String.t() | atom(),
        optional("UserIdsToAdd") => list(String.t() | atom()),
        optional("UserIdsToRemove") => list(String.t() | atom()),
        required("UserGroupId") => String.t() | atom()
      }
      
  """
  @type modify_user_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_node_group() :: %{
        "GlobalNodeGroupId" => String.t() | atom(),
        "Slots" => String.t() | atom()
      }
      
  """
  @type global_node_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_cache_cluster_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_cache_cluster_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_replication_group_result() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type delete_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_cache_parameter_group_message() :: %{
        optional("ParameterNameValues") => list(parameter_name_value()),
        optional("ResetAllParameters") => boolean(),
        required("CacheParameterGroupName") => String.t() | atom()
      }
      
  """
  @type reset_cache_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      log_delivery_configuration_request() :: %{
        "DestinationDetails" => destination_details(),
        "DestinationType" => list(any()),
        "Enabled" => boolean(),
        "LogFormat" => list(any()),
        "LogType" => list(any())
      }
      
  """
  @type log_delivery_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_snapshot() :: %{
        "CacheClusterId" => String.t() | atom(),
        "CacheNodeCreateTime" => non_neg_integer(),
        "CacheNodeId" => String.t() | atom(),
        "CacheSize" => String.t() | atom(),
        "NodeGroupConfiguration" => node_group_configuration(),
        "NodeGroupId" => String.t() | atom(),
        "SnapshotCreateTime" => non_neg_integer()
      }
      
  """
  @type node_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_group() :: %{
        optional("ARN") => String.t() | atom(),
        optional("Engine") => String.t() | atom(),
        optional("MinimumEngineVersion") => String.t() | atom(),
        optional("PendingChanges") => user_group_pending_changes(),
        optional("ReplicationGroups") => list(String.t() | atom()),
        optional("ServerlessCaches") => list(String.t() | atom()),
        optional("Status") => String.t() | atom(),
        optional("UserGroupId") => String.t() | atom(),
        optional("UserIds") => list(String.t() | atom())
      }
      
  """
  @type user_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_update_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_update_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engine_defaults() :: %{
        "CacheNodeTypeSpecificParameters" => list(cache_node_type_specific_parameter()),
        "CacheParameterGroupFamily" => String.t() | atom(),
        "Marker" => String.t() | atom(),
        "Parameters" => list(parameter())
      }
      
  """
  @type engine_defaults() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_cache_security_group_ingress_result() :: %{
        "CacheSecurityGroup" => cache_security_group()
      }
      
  """
  @type revoke_cache_security_group_ingress_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_group_message() :: %{
        required("UserGroupId") => String.t() | atom()
      }
      
  """
  @type delete_user_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type serverless_cache_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_parameter_group_details() :: %{
        "CacheNodeTypeSpecificParameters" => list(cache_node_type_specific_parameter()),
        "Marker" => String.t() | atom(),
        "Parameters" => list(parameter())
      }
      
  """
  @type cache_parameter_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_global_replication_groups_message() :: %{
        optional("GlobalReplicationGroupId") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("ShowMemberInfo") => boolean()
      }
      
  """
  @type describe_global_replication_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      security_group_membership() :: %{
        "SecurityGroupId" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type security_group_membership() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_security_group() :: %{
        "EC2SecurityGroupName" => String.t() | atom(),
        "EC2SecurityGroupOwnerId" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type ec2_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_replication_group_message() :: %{
        optional("FinalSnapshotIdentifier") => String.t() | atom(),
        optional("RetainPrimaryCluster") => boolean(),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type delete_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recurring_charge() :: %{
        "RecurringChargeAmount" => float(),
        "RecurringChargeFrequency" => String.t() | atom()
      }
      
  """
  @type recurring_charge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_nodes_offering() :: %{
        "CacheNodeType" => String.t() | atom(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "OfferingType" => String.t() | atom(),
        "ProductDescription" => String.t() | atom(),
        "RecurringCharges" => list(recurring_charge()),
        "ReservedCacheNodesOfferingId" => String.t() | atom(),
        "UsagePrice" => float()
      }
      
  """
  @type reserved_cache_nodes_offering() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_serverless_cache_snapshot_request() :: %{
        optional("KmsKeyId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ServerlessCacheName") => String.t() | atom(),
        required("ServerlessCacheSnapshotName") => String.t() | atom()
      }
      
  """
  @type create_serverless_cache_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      increase_node_groups_in_global_replication_group_message() :: %{
        optional("RegionalConfigurations") => list(regional_configuration()),
        required("ApplyImmediately") => boolean(),
        required("GlobalReplicationGroupId") => String.t() | atom(),
        required("NodeGroupCount") => integer()
      }
      
  """
  @type increase_node_groups_in_global_replication_group_message() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      describe_serverless_caches_response() :: %{
        "NextToken" => String.t() | atom(),
        "ServerlessCaches" => list(serverless_cache())
      }
      
  """
  @type describe_serverless_caches_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_kms_key_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_kms_key_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      complete_migration_message() :: %{
        optional("Force") => boolean(),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type complete_migration_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_group_message() :: %{
        optional("Tags") => list(tag()),
        optional("UserIds") => list(String.t() | atom()),
        required("Engine") => String.t() | atom(),
        required("UserGroupId") => String.t() | atom()
      }
      
  """
  @type create_user_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet() :: %{
        "SubnetAvailabilityZone" => availability_zone(),
        "SubnetIdentifier" => String.t() | atom(),
        "SubnetOutpost" => subnet_outpost(),
        "SupportedNetworkTypes" => list(list(any())())
      }
      
  """
  @type subnet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_subnet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_parameter_group() :: %{
        "ARN" => String.t() | atom(),
        "CacheParameterGroupFamily" => String.t() | atom(),
        "CacheParameterGroupName" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IsGlobal" => boolean()
      }
      
  """
  @type cache_parameter_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parameter_name_value() :: %{
        "ParameterName" => String.t() | atom(),
        "ParameterValue" => String.t() | atom()
      }
      
  """
  @type parameter_name_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_message() :: %{
        required("ResourceName") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_parameter_group_status() :: %{
        "CacheNodeIdsToReboot" => list(String.t() | atom()),
        "CacheParameterGroupName" => String.t() | atom(),
        "ParameterApplyStatus" => String.t() | atom()
      }
      
  """
  @type cache_parameter_group_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_group_pending_changes() :: %{
        "UserIdsToAdd" => list(String.t() | atom()),
        "UserIdsToRemove" => list(String.t() | atom())
      }
      
  """
  @type user_group_pending_changes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_replication_group_info() :: %{
        "GlobalReplicationGroupId" => String.t() | atom(),
        "GlobalReplicationGroupMemberRole" => String.t() | atom()
      }
      
  """
  @type global_replication_group_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resharding_status() :: %{
        "SlotMigration" => slot_migration()
      }
      
  """
  @type resharding_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_serverless_cache_snapshots_response() :: %{
        "NextToken" => String.t() | atom(),
        "ServerlessCacheSnapshots" => list(serverless_cache_snapshot())
      }
      
  """
  @type describe_serverless_cache_snapshots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rebalance_slots_in_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type rebalance_slots_in_global_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      decrease_replica_count_result() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type decrease_replica_count_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_parameter_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_parameter_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cache_parameter_group_message() :: %{
        required("CacheParameterGroupName") => String.t() | atom()
      }
      
  """
  @type delete_cache_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_group() :: %{
        "NodeGroupId" => String.t() | atom(),
        "NodeGroupMembers" => list(node_group_member()),
        "PrimaryEndpoint" => endpoint(),
        "ReaderEndpoint" => endpoint(),
        "Slots" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type node_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_parameters_message() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        required("CacheParameterGroupFamily") => String.t() | atom()
      }
      
  """
  @type describe_engine_default_parameters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_allowed_node_type_modifications_message() :: %{
        optional("CacheClusterId") => String.t() | atom(),
        optional("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type list_allowed_node_type_modifications_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      decrease_node_groups_in_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type decrease_node_groups_in_global_replication_group_result() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      cloud_watch_logs_destination_details() :: %{
        "LogGroup" => String.t() | atom()
      }
      
  """
  @type cloud_watch_logs_destination_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_cache_security_group_ingress_message() :: %{
        required("CacheSecurityGroupName") => String.t() | atom(),
        required("EC2SecurityGroupName") => String.t() | atom(),
        required("EC2SecurityGroupOwnerId") => String.t() | atom()
      }
      
  """
  @type revoke_cache_security_group_ingress_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_serverless_cache_snapshot_response() :: %{
        "ServerlessCacheSnapshot" => serverless_cache_snapshot()
      }
      
  """
  @type copy_serverless_cache_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_node_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reserved_cache_node_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_action_results_message() :: %{
        optional("ProcessedUpdateActions") => list(processed_update_action()),
        optional("UnprocessedUpdateActions") => list(unprocessed_update_action())
      }
      
  """
  @type update_action_results_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_cluster_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_cluster_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tag_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_cluster_message() :: %{
        optional("AZMode") => list(any()),
        optional("AuthToken") => String.t() | atom(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("CacheNodeType") => String.t() | atom(),
        optional("CacheParameterGroupName") => String.t() | atom(),
        optional("CacheSecurityGroupNames") => list(String.t() | atom()),
        optional("CacheSubnetGroupName") => String.t() | atom(),
        optional("Engine") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("IpDiscovery") => list(any()),
        optional("LogDeliveryConfigurations") => list(log_delivery_configuration_request()),
        optional("NetworkType") => list(any()),
        optional("NotificationTopicArn") => String.t() | atom(),
        optional("NumCacheNodes") => integer(),
        optional("OutpostMode") => list(any()),
        optional("Port") => integer(),
        optional("PreferredAvailabilityZone") => String.t() | atom(),
        optional("PreferredAvailabilityZones") => list(String.t() | atom()),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("PreferredOutpostArn") => String.t() | atom(),
        optional("PreferredOutpostArns") => list(String.t() | atom()),
        optional("ReplicationGroupId") => String.t() | atom(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("SnapshotArns") => list(String.t() | atom()),
        optional("SnapshotName") => String.t() | atom(),
        optional("SnapshotRetentionLimit") => integer(),
        optional("SnapshotWindow") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TransitEncryptionEnabled") => boolean(),
        required("CacheClusterId") => String.t() | atom()
      }
      
  """
  @type create_cache_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_subnet_group_result() :: %{
        "CacheSubnetGroup" => cache_subnet_group()
      }
      
  """
  @type create_cache_subnet_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_security_group_membership() :: %{
        "CacheSecurityGroupName" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type cache_security_group_membership() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_cache_parameter_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_cache_parameter_group_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_failover_result() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type test_failover_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type serverless_cache_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_node_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reserved_cache_node_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_nodes_offering_message() :: %{
        "Marker" => String.t() | atom(),
        "ReservedCacheNodesOfferings" => list(reserved_cache_nodes_offering())
      }
      
  """
  @type reserved_cache_nodes_offering_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_vpc_network_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_vpc_network_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_quota_per_resource_exceeded() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tag_quota_per_resource_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_user_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_user_group_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_snapshot() :: %{
        "ARN" => String.t() | atom(),
        "BytesUsedForCache" => String.t() | atom(),
        "CreateTime" => non_neg_integer(),
        "ExpiryTime" => non_neg_integer(),
        "KmsKeyId" => String.t() | atom(),
        "ServerlessCacheConfiguration" => serverless_cache_configuration(),
        "ServerlessCacheSnapshotName" => String.t() | atom(),
        "SnapshotType" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type serverless_cache_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet_not_allowed_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type subnet_not_allowed_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_cluster_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_cluster_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_serverless_cache_response() :: %{
        "ServerlessCache" => serverless_cache()
      }
      
  """
  @type create_serverless_cache_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      decrease_replica_count_message() :: %{
        optional("NewReplicaCount") => integer(),
        optional("ReplicaConfiguration") => list(configure_shard()),
        optional("ReplicasToRemove") => list(String.t() | atom()),
        required("ApplyImmediately") => boolean(),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type decrease_replica_count_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_cache_subnet_group_result() :: %{
        "CacheSubnetGroup" => cache_subnet_group()
      }
      
  """
  @type modify_cache_subnet_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type failover_global_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type modify_global_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_engine_version() :: %{
        "CacheEngineDescription" => String.t() | atom(),
        "CacheEngineVersionDescription" => String.t() | atom(),
        "CacheParameterGroupFamily" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom()
      }
      
  """
  @type cache_engine_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_service_updates_message() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("ServiceUpdateName") => String.t() | atom(),
        optional("ServiceUpdateStatus") => list(list(any())())
      }
      
  """
  @type describe_service_updates_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_global_replication_group_message() :: %{
        optional("AutomaticFailoverEnabled") => boolean(),
        optional("CacheNodeType") => String.t() | atom(),
        optional("CacheParameterGroupName") => String.t() | atom(),
        optional("Engine") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("GlobalReplicationGroupDescription") => String.t() | atom(),
        required("ApplyImmediately") => boolean(),
        required("GlobalReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type modify_global_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cache_parameters_message() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("Source") => String.t() | atom(),
        required("CacheParameterGroupName") => String.t() | atom()
      }
      
  """
  @type describe_cache_parameters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_snapshot_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type serverless_cache_snapshot_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_group_not_under_migration_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replication_group_not_under_migration_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type create_global_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      increase_replica_count_message() :: %{
        optional("NewReplicaCount") => integer(),
        optional("ReplicaConfiguration") => list(configure_shard()),
        required("ApplyImmediately") => boolean(),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type increase_replica_count_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_global_replication_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_global_replication_group_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_subnet_group_in_use() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_subnet_group_in_use() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_migration_message() :: %{
        required("CustomerNodeEndpointList") => list(customer_node_endpoint()),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type test_migration_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_modified_values() :: %{
        "AuthTokenStatus" => list(any()),
        "CacheNodeIdsToRemove" => list(String.t() | atom()),
        "CacheNodeType" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "LogDeliveryConfigurations" => list(pending_log_delivery_configuration()),
        "NumCacheNodes" => integer(),
        "ScaleConfig" => scale_config(),
        "TransitEncryptionEnabled" => boolean(),
        "TransitEncryptionMode" => list(any())
      }
      
  """
  @type pending_modified_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_failover_message() :: %{
        required("NodeGroupId") => String.t() | atom(),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type test_failover_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorization_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type authorization_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_node() :: %{
        "CacheNodeCreateTime" => non_neg_integer(),
        "CacheNodeId" => String.t() | atom(),
        "CacheNodeStatus" => String.t() | atom(),
        "CustomerAvailabilityZone" => String.t() | atom(),
        "CustomerOutpostArn" => String.t() | atom(),
        "Endpoint" => endpoint(),
        "ParameterGroupStatus" => String.t() | atom(),
        "SourceCacheNodeId" => String.t() | atom()
      }
      
  """
  @type cache_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      increase_replica_count_result() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type increase_replica_count_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_cache_cluster_result() :: %{
        "CacheCluster" => cache_cluster()
      }
      
  """
  @type reboot_cache_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_message() :: %{
        optional("CacheClusterId") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("ReplicationGroupId") => String.t() | atom(),
        optional("ShowNodeGroupConfig") => boolean(),
        optional("SnapshotName") => String.t() | atom(),
        optional("SnapshotSource") => String.t() | atom()
      }
      
  """
  @type describe_snapshots_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cache_parameter_groups_message() :: %{
        optional("CacheParameterGroupName") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_cache_parameter_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_security_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_security_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_security_group() :: %{
        "ARN" => String.t() | atom(),
        "CacheSecurityGroupName" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "EC2SecurityGroups" => list(ec2_security_group()),
        "OwnerId" => String.t() | atom()
      }
      
  """
  @type cache_security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_group_member_update_status() :: %{
        "CacheClusterId" => String.t() | atom(),
        "CacheNodeId" => String.t() | atom(),
        "NodeDeletionDate" => non_neg_integer(),
        "NodeUpdateEndDate" => non_neg_integer(),
        "NodeUpdateInitiatedBy" => list(any()),
        "NodeUpdateInitiatedDate" => non_neg_integer(),
        "NodeUpdateStartDate" => non_neg_integer(),
        "NodeUpdateStatus" => list(any()),
        "NodeUpdateStatusModifiedDate" => non_neg_integer()
      }
      
  """
  @type node_group_member_update_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_group_configuration() :: %{
        "NodeGroupId" => String.t() | atom(),
        "PrimaryAvailabilityZone" => String.t() | atom(),
        "PrimaryOutpostArn" => String.t() | atom(),
        "ReplicaAvailabilityZones" => list(String.t() | atom()),
        "ReplicaCount" => integer(),
        "ReplicaOutpostArns" => list(String.t() | atom()),
        "Slots" => String.t() | atom()
      }
      
  """
  @type node_group_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet_outpost() :: %{
        "SubnetOutpostArn" => String.t() | atom()
      }
      
  """
  @type subnet_outpost() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_message() :: %{
        required("UserId") => String.t() | atom()
      }
      
  """
  @type delete_user_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_node_message() :: %{
        "Marker" => String.t() | atom(),
        "ReservedCacheNodes" => list(reserved_cache_node())
      }
      
  """
  @type reserved_cache_node_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorization_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type authorization_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_serverless_cache_snapshot_request() :: %{
        required("S3BucketName") => String.t() | atom(),
        required("ServerlessCacheSnapshotName") => String.t() | atom()
      }
      
  """
  @type export_serverless_cache_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_global_replication_group_message() :: %{
        required("GlobalReplicationGroupId") => String.t() | atom(),
        required("PrimaryRegion") => String.t() | atom(),
        required("PrimaryReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type failover_global_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_cache_nodes_offerings_message() :: %{
        optional("CacheNodeType") => String.t() | atom(),
        optional("Duration") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("OfferingType") => String.t() | atom(),
        optional("ProductDescription") => String.t() | atom(),
        optional("ReservedCacheNodesOfferingId") => String.t() | atom()
      }
      
  """
  @type describe_reserved_cache_nodes_offerings_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      no_operation_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type no_operation_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_replication_group_shard_configuration_result() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type modify_replication_group_shard_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_snapshot_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_snapshot_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_failover_not_available_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type test_failover_not_available_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_stop_update_action_message() :: %{
        optional("CacheClusterIds") => list(String.t() | atom()),
        optional("ReplicationGroupIds") => list(String.t() | atom()),
        required("ServiceUpdateName") => String.t() | atom()
      }
      
  """
  @type batch_stop_update_action_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_replication_group_message() :: %{
        optional("ApplyImmediately") => boolean(),
        optional("AuthToken") => String.t() | atom(),
        optional("AuthTokenUpdateStrategy") => list(any()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("AutomaticFailoverEnabled") => boolean(),
        optional("CacheNodeType") => String.t() | atom(),
        optional("CacheParameterGroupName") => String.t() | atom(),
        optional("CacheSecurityGroupNames") => list(String.t() | atom()),
        optional("ClusterMode") => list(any()),
        optional("Engine") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("IpDiscovery") => list(any()),
        optional("LogDeliveryConfigurations") => list(log_delivery_configuration_request()),
        optional("MultiAZEnabled") => boolean(),
        optional("NodeGroupId") => String.t() | atom(),
        optional("NotificationTopicArn") => String.t() | atom(),
        optional("NotificationTopicStatus") => String.t() | atom(),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("PrimaryClusterId") => String.t() | atom(),
        optional("RemoveUserGroups") => boolean(),
        optional("ReplicationGroupDescription") => String.t() | atom(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("SnapshotRetentionLimit") => integer(),
        optional("SnapshotWindow") => String.t() | atom(),
        optional("SnapshottingClusterId") => String.t() | atom(),
        optional("TransitEncryptionEnabled") => boolean(),
        optional("TransitEncryptionMode") => list(any()),
        optional("UserGroupIdsToAdd") => list(String.t() | atom()),
        optional("UserGroupIdsToRemove") => list(String.t() | atom()),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type modify_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_group_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_group_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      log_delivery_configuration() :: %{
        "DestinationDetails" => destination_details(),
        "DestinationType" => list(any()),
        "LogFormat" => list(any()),
        "LogType" => list(any()),
        "Message" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type log_delivery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_updates_message() :: %{
        "Marker" => String.t() | atom(),
        "ServiceUpdates" => list(service_update())
      }
      
  """
  @type service_updates_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_message() :: %{
        optional("KmsKeyId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TargetBucket") => String.t() | atom(),
        required("SourceSnapshotName") => String.t() | atom(),
        required("TargetSnapshotName") => String.t() | atom()
      }
      
  """
  @type copy_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_cache_cluster_result() :: %{
        "CacheCluster" => cache_cluster()
      }
      
  """
  @type modify_cache_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_log_delivery_configuration() :: %{
        "DestinationDetails" => destination_details(),
        "DestinationType" => list(any()),
        "LogFormat" => list(any()),
        "LogType" => list(any())
      }
      
  """
  @type pending_log_delivery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scale_config() :: %{
        "ScaleIntervalMinutes" => integer(),
        "ScalePercentage" => integer()
      }
      
  """
  @type scale_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "AllowedValues" => String.t() | atom(),
        "ChangeType" => list(any()),
        "DataType" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "IsModifiable" => boolean(),
        "MinimumEngineVersion" => String.t() | atom(),
        "ParameterName" => String.t() | atom(),
        "ParameterValue" => String.t() | atom(),
        "Source" => String.t() | atom()
      }
      
  """
  @type parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_serverless_cache_snapshot_request() :: %{
        optional("KmsKeyId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("SourceServerlessCacheSnapshotName") => String.t() | atom(),
        required("TargetServerlessCacheSnapshotName") => String.t() | atom()
      }
      
  """
  @type copy_serverless_cache_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_cache_cluster_message() :: %{
        required("CacheClusterId") => String.t() | atom(),
        required("CacheNodeIdsToReboot") => list(String.t() | atom())
      }
      
  """
  @type reboot_cache_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_arn_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authentication() :: %{
        "PasswordCount" => integer(),
        "Type" => list(any())
      }
      
  """
  @type authentication() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_message() :: %{
        required("SnapshotName") => String.t() | atom()
      }
      
  """
  @type delete_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_configuration() :: %{
        "Engine" => String.t() | atom(),
        "MajorEngineVersion" => String.t() | atom(),
        "ServerlessCacheName" => String.t() | atom()
      }
      
  """
  @type serverless_cache_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_cluster() :: %{
        "Engine" => String.t() | atom(),
        "ClientDownloadLandingPage" => String.t() | atom(),
        "NetworkType" => list(any()),
        "ReplicationGroupId" => String.t() | atom(),
        "CacheClusterCreateTime" => non_neg_integer(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "CacheParameterGroup" => cache_parameter_group_status(),
        "ARN" => String.t() | atom(),
        "AuthTokenEnabled" => boolean(),
        "CacheClusterStatus" => String.t() | atom(),
        "CacheClusterId" => String.t() | atom(),
        "PendingModifiedValues" => pending_modified_values(),
        "ReplicationGroupLogDeliveryEnabled" => boolean(),
        "SnapshotRetentionLimit" => integer(),
        "PreferredAvailabilityZone" => String.t() | atom(),
        "SnapshotWindow" => String.t() | atom(),
        "AtRestEncryptionEnabled" => boolean(),
        "ConfigurationEndpoint" => endpoint(),
        "AuthTokenLastModifiedDate" => non_neg_integer(),
        "AutoMinorVersionUpgrade" => boolean(),
        "TransitEncryptionMode" => list(any()),
        "IpDiscovery" => list(any()),
        "LogDeliveryConfigurations" => list(log_delivery_configuration()),
        "TransitEncryptionEnabled" => boolean(),
        "NotificationConfiguration" => notification_configuration(),
        "CacheSubnetGroupName" => String.t() | atom(),
        "CacheNodes" => list(cache_node()),
        "PreferredOutpostArn" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "CacheSecurityGroups" => list(cache_security_group_membership()),
        "SecurityGroups" => list(security_group_membership()),
        "CacheNodeType" => String.t() | atom(),
        "NumCacheNodes" => integer()
      }
      
  """
  @type cache_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_message() :: %{
        optional("AuthenticationMode") => authentication_mode(),
        optional("NoPasswordRequired") => boolean(),
        optional("Passwords") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        required("AccessString") => String.t() | atom(),
        required("Engine") => String.t() | atom(),
        required("UserId") => String.t() | atom(),
        required("UserName") => String.t() | atom()
      }
      
  """
  @type create_user_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_subnet_group() :: %{
        "ARN" => String.t() | atom(),
        "CacheSubnetGroupDescription" => String.t() | atom(),
        "CacheSubnetGroupName" => String.t() | atom(),
        "Subnets" => list(subnet()),
        "SupportedNetworkTypes" => list(list(any())()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type cache_subnet_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cache_subnet_groups_message() :: %{
        optional("CacheSubnetGroupName") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_cache_subnet_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_serverless_cache_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_serverless_cache_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type node_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_cache_node_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reserved_cache_node_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_group_member() :: %{
        "CacheClusterId" => String.t() | atom(),
        "CacheNodeId" => String.t() | atom(),
        "CurrentRole" => String.t() | atom(),
        "PreferredAvailabilityZone" => String.t() | atom(),
        "PreferredOutpostArn" => String.t() | atom(),
        "ReadEndpoint" => endpoint()
      }
      
  """
  @type node_group_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      api_call_rate_for_customer_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type api_call_rate_for_customer_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replication_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_replication_groups_message() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type describe_replication_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_replication_group_result() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type create_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      destination_details() :: %{
        "CloudWatchLogsDetails" => cloud_watch_logs_destination_details(),
        "KinesisFirehoseDetails" => kinesis_firehose_destination_details()
      }
      
  """
  @type destination_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      purchase_reserved_cache_nodes_offering_result() :: %{
        "ReservedCacheNode" => reserved_cache_node()
      }
      
  """
  @type purchase_reserved_cache_nodes_offering_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_group() :: %{
        "ARN" => String.t() | atom(),
        "AtRestEncryptionEnabled" => boolean(),
        "AuthTokenEnabled" => boolean(),
        "AuthTokenLastModifiedDate" => non_neg_integer(),
        "AutoMinorVersionUpgrade" => boolean(),
        "AutomaticFailover" => list(any()),
        "CacheNodeType" => String.t() | atom(),
        "ClusterEnabled" => boolean(),
        "ClusterMode" => list(any()),
        "ConfigurationEndpoint" => endpoint(),
        "DataTiering" => list(any()),
        "Description" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "GlobalReplicationGroupInfo" => global_replication_group_info(),
        "IpDiscovery" => list(any()),
        "KmsKeyId" => String.t() | atom(),
        "LogDeliveryConfigurations" => list(log_delivery_configuration()),
        "MemberClusters" => list(String.t() | atom()),
        "MemberClustersOutpostArns" => list(String.t() | atom()),
        "MultiAZ" => list(any()),
        "NetworkType" => list(any()),
        "NodeGroups" => list(node_group()),
        "PendingModifiedValues" => replication_group_pending_modified_values(),
        "ReplicationGroupCreateTime" => non_neg_integer(),
        "ReplicationGroupId" => String.t() | atom(),
        "SnapshotRetentionLimit" => integer(),
        "SnapshotWindow" => String.t() | atom(),
        "SnapshottingClusterId" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "TransitEncryptionEnabled" => boolean(),
        "TransitEncryptionMode" => list(any()),
        "UserGroupIds" => list(String.t() | atom())
      }
      
  """
  @type replication_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_serverless_cache_request() :: %{
        optional("FinalSnapshotName") => String.t() | atom(),
        required("ServerlessCacheName") => String.t() | atom()
      }
      
  """
  @type delete_serverless_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_user_message() :: %{
        optional("AccessString") => String.t() | atom(),
        optional("AppendAccessString") => String.t() | atom(),
        optional("AuthenticationMode") => authentication_mode(),
        optional("Engine") => String.t() | atom(),
        optional("NoPasswordRequired") => boolean(),
        optional("Passwords") => list(String.t() | atom()),
        required("UserId") => String.t() | atom()
      }
      
  """
  @type modify_user_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replication_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_message() :: %{
        optional("CacheClusterId") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("ReplicationGroupId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("SnapshotName") => String.t() | atom()
      }
      
  """
  @type create_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_quota_for_customer_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cluster_quota_for_customer_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "TopicArn" => String.t() | atom(),
        "TopicStatus" => String.t() | atom()
      }
      
  """
  @type notification_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_cache_parameter_group_message() :: %{
        required("CacheParameterGroupName") => String.t() | atom(),
        required("ParameterNameValues") => list(parameter_name_value())
      }
      
  """
  @type modify_cache_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_cache_security_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_cache_security_group_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t() | atom(),
        "Port" => integer()
      }
      
  """
  @type endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_cache_subnet_group_message() :: %{
        optional("CacheSubnetGroupDescription") => String.t() | atom(),
        optional("SubnetIds") => list(String.t() | atom()),
        required("CacheSubnetGroupName") => String.t() | atom()
      }
      
  """
  @type modify_cache_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type copy_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_group_pending_modified_values() :: %{
        "AuthTokenStatus" => list(any()),
        "AutomaticFailoverStatus" => list(any()),
        "ClusterMode" => list(any()),
        "LogDeliveryConfigurations" => list(pending_log_delivery_configuration()),
        "PrimaryClusterId" => String.t() | atom(),
        "Resharding" => resharding_status(),
        "TransitEncryptionEnabled" => boolean(),
        "TransitEncryptionMode" => list(any()),
        "UserGroups" => user_groups_update_status()
      }
      
  """
  @type replication_group_pending_modified_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_security_group_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_security_group_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      events_message() :: %{
        "Events" => list(event()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type events_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resharding_configuration() :: %{
        "NodeGroupId" => String.t() | atom(),
        "PreferredAvailabilityZones" => list(String.t() | atom())
      }
      
  """
  @type resharding_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      purchase_reserved_cache_nodes_offering_message() :: %{
        optional("CacheNodeCount") => integer(),
        optional("ReservedCacheNodeId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ReservedCacheNodesOfferingId") => String.t() | atom()
      }
      
  """
  @type purchase_reserved_cache_nodes_offering_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_serverless_caches_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ServerlessCacheName") => String.t() | atom()
      }
      
  """
  @type describe_serverless_caches_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_parameter_group_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_parameter_group_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      processed_update_action() :: %{
        "CacheClusterId" => String.t() | atom(),
        "ReplicationGroupId" => String.t() | atom(),
        "ServiceUpdateName" => String.t() | atom(),
        "UpdateActionStatus" => list(any())
      }
      
  """
  @type processed_update_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_parameters_result() :: %{
        "EngineDefaults" => engine_defaults()
      }
      
  """
  @type describe_engine_default_parameters_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_migration_response() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type test_migration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type delete_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_migration_response() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type start_migration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_user_name_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type duplicate_user_name_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Date" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "SourceIdentifier" => String.t() | atom(),
        "SourceType" => list(any())
      }
      
  """
  @type event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_subnet_group_message() :: %{
        "CacheSubnetGroups" => list(cache_subnet_group()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type cache_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_global_replication_group_message() :: %{
        optional("GlobalReplicationGroupDescription") => String.t() | atom(),
        required("GlobalReplicationGroupIdSuffix") => String.t() | atom(),
        required("PrimaryReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type create_global_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_users_result() :: %{
        "Marker" => String.t() | atom(),
        "Users" => list(user())
      }
      
  """
  @type describe_users_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configure_shard() :: %{
        "NewReplicaCount" => integer(),
        "NodeGroupId" => String.t() | atom(),
        "PreferredAvailabilityZones" => list(String.t() | atom()),
        "PreferredOutpostArns" => list(String.t() | atom())
      }
      
  """
  @type configure_shard() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cache_security_groups_message() :: %{
        optional("CacheSecurityGroupName") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_cache_security_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_global_replication_group_message() :: %{
        required("GlobalReplicationGroupId") => String.t() | atom(),
        required("RetainPrimaryReplicationGroup") => boolean()
      }
      
  """
  @type delete_global_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_action() :: %{
        "CacheClusterId" => String.t() | atom(),
        "CacheNodeUpdateStatus" => list(cache_node_update_status()),
        "Engine" => String.t() | atom(),
        "EstimatedUpdateTime" => String.t() | atom(),
        "NodeGroupUpdateStatus" => list(node_group_update_status()),
        "NodesUpdated" => String.t() | atom(),
        "ReplicationGroupId" => String.t() | atom(),
        "ServiceUpdateName" => String.t() | atom(),
        "ServiceUpdateRecommendedApplyByDate" => non_neg_integer(),
        "ServiceUpdateReleaseDate" => non_neg_integer(),
        "ServiceUpdateSeverity" => list(any()),
        "ServiceUpdateStatus" => list(any()),
        "ServiceUpdateType" => list(any()),
        "SlaMet" => list(any()),
        "UpdateActionAvailableDate" => non_neg_integer(),
        "UpdateActionStatus" => list(any()),
        "UpdateActionStatusModifiedDate" => non_neg_integer()
      }
      
  """
  @type update_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_group_update_status() :: %{
        "NodeGroupId" => String.t() | atom(),
        "NodeGroupMemberUpdateStatus" => list(node_group_member_update_status())
      }
      
  """
  @type node_group_update_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_actions_message() :: %{
        "Marker" => String.t() | atom(),
        "UpdateActions" => list(update_action())
      }
      
  """
  @type update_actions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cache_cluster_message() :: %{
        optional("FinalSnapshotIdentifier") => String.t() | atom(),
        required("CacheClusterId") => String.t() | atom()
      }
      
  """
  @type delete_cache_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "ARN" => String.t() | atom(),
        "AutoMinorVersionUpgrade" => boolean(),
        "AutomaticFailover" => list(any()),
        "CacheClusterCreateTime" => non_neg_integer(),
        "CacheClusterId" => String.t() | atom(),
        "CacheNodeType" => String.t() | atom(),
        "CacheParameterGroupName" => String.t() | atom(),
        "CacheSubnetGroupName" => String.t() | atom(),
        "DataTiering" => list(any()),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "NodeSnapshots" => list(node_snapshot()),
        "NumCacheNodes" => integer(),
        "NumNodeGroups" => integer(),
        "Port" => integer(),
        "PreferredAvailabilityZone" => String.t() | atom(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "PreferredOutpostArn" => String.t() | atom(),
        "ReplicationGroupDescription" => String.t() | atom(),
        "ReplicationGroupId" => String.t() | atom(),
        "SnapshotName" => String.t() | atom(),
        "SnapshotRetentionLimit" => integer(),
        "SnapshotSource" => String.t() | atom(),
        "SnapshotStatus" => String.t() | atom(),
        "SnapshotWindow" => String.t() | atom(),
        "TopicArn" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_cache_nodes_message() :: %{
        optional("CacheNodeType") => String.t() | atom(),
        optional("Duration") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("OfferingType") => String.t() | atom(),
        optional("ProductDescription") => String.t() | atom(),
        optional("ReservedCacheNodeId") => String.t() | atom(),
        optional("ReservedCacheNodesOfferingId") => String.t() | atom()
      }
      
  """
  @type describe_reserved_cache_nodes_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_replication_group() :: %{
        "ARN" => String.t() | atom(),
        "AtRestEncryptionEnabled" => boolean(),
        "AuthTokenEnabled" => boolean(),
        "CacheNodeType" => String.t() | atom(),
        "ClusterEnabled" => boolean(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "GlobalNodeGroups" => list(global_node_group()),
        "GlobalReplicationGroupDescription" => String.t() | atom(),
        "GlobalReplicationGroupId" => String.t() | atom(),
        "Members" => list(global_replication_group_member()),
        "Status" => String.t() | atom(),
        "TransitEncryptionEnabled" => boolean()
      }
      
  """
  @type global_replication_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_list_message() :: %{
        "TagList" => list(tag())
      }
      
  """
  @type tag_list_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet_in_use() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type subnet_in_use() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_subnet_group_message() :: %{
        optional("Tags") => list(tag()),
        required("CacheSubnetGroupDescription") => String.t() | atom(),
        required("CacheSubnetGroupName") => String.t() | atom(),
        required("SubnetIds") => list(String.t() | atom())
      }
      
  """
  @type create_cache_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_linked_role_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_linked_role_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      default_user_associated_to_user_group_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type default_user_associated_to_user_group_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_subnet_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_subnet_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_message() :: %{
        required("ResourceName") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type add_tags_to_resource_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cache_subnet_group_message() :: %{
        required("CacheSubnetGroupName") => String.t() | atom()
      }
      
  """
  @type delete_cache_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_snapshot_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type serverless_cache_snapshot_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_security_group_message() :: %{
        optional("Tags") => list(tag()),
        required("CacheSecurityGroupName") => String.t() | atom(),
        required("Description") => String.t() | atom()
      }
      
  """
  @type create_cache_security_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_replication_group_message() :: %{
        optional("ServerlessCacheSnapshotName") => String.t() | atom(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("UserGroupIds") => list(String.t() | atom()),
        optional("PrimaryClusterId") => String.t() | atom(),
        optional("CacheSubnetGroupName") => String.t() | atom(),
        optional("SnapshotRetentionLimit") => integer(),
        optional("NetworkType") => list(any()),
        optional("GlobalReplicationGroupId") => String.t() | atom(),
        required("ReplicationGroupId") => String.t() | atom(),
        optional("AuthToken") => String.t() | atom(),
        optional("ReplicasPerNodeGroup") => integer(),
        optional("PreferredCacheClusterAZs") => list(String.t() | atom()),
        optional("Engine") => String.t() | atom(),
        optional("IpDiscovery") => list(any()),
        optional("NumCacheClusters") => integer(),
        optional("NumNodeGroups") => integer(),
        optional("CacheParameterGroupName") => String.t() | atom(),
        optional("NotificationTopicArn") => String.t() | atom(),
        optional("TransitEncryptionEnabled") => boolean(),
        optional("SnapshotWindow") => String.t() | atom(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("SnapshotArns") => list(String.t() | atom()),
        optional("LogDeliveryConfigurations") => list(log_delivery_configuration_request()),
        optional("EngineVersion") => String.t() | atom(),
        optional("SnapshotName") => String.t() | atom(),
        optional("ClusterMode") => list(any()),
        optional("NodeGroupConfiguration") => list(node_group_configuration()),
        optional("CacheSecurityGroupNames") => list(String.t() | atom()),
        optional("DataTieringEnabled") => boolean(),
        optional("Port") => integer(),
        optional("AtRestEncryptionEnabled") => boolean(),
        required("ReplicationGroupDescription") => String.t() | atom(),
        optional("AutomaticFailoverEnabled") => boolean(),
        optional("MultiAZEnabled") => boolean(),
        optional("TransitEncryptionMode") => list(any()),
        optional("KmsKeyId") => String.t() | atom(),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("CacheNodeType") => String.t() | atom(),
        optional("Tags") => list(tag())
      }
      
  """
  @type create_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_serverless_cache_snapshot_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_serverless_cache_snapshot_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_events_message() :: %{
        optional("Duration") => integer(),
        optional("EndTime") => non_neg_integer(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("SourceIdentifier") => String.t() | atom(),
        optional("SourceType") => list(any()),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type describe_events_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_security_group_result() :: %{
        "CacheSecurityGroup" => cache_security_group()
      }
      
  """
  @type create_cache_security_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type snapshot_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_cluster_message() :: %{
        "CacheClusters" => list(cache_cluster()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type cache_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_result() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type create_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customer_node_endpoint() :: %{
        "Address" => String.t() | atom(),
        "Port" => integer()
      }
      
  """
  @type customer_node_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      complete_migration_response() :: %{
        "ReplicationGroup" => replication_group()
      }
      
  """
  @type complete_migration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_serverless_cache_snapshots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ServerlessCacheName") => String.t() | atom(),
        optional("ServerlessCacheSnapshotName") => String.t() | atom(),
        optional("SnapshotType") => String.t() | atom()
      }
      
  """
  @type describe_serverless_cache_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_range_filter() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type time_range_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_list_message() :: %{
        "Marker" => String.t() | atom(),
        "Snapshots" => list(snapshot())
      }
      
  """
  @type describe_snapshots_list_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_users_message() :: %{
        optional("Engine") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("UserId") => String.t() | atom()
      }
      
  """
  @type describe_users_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorize_cache_security_group_ingress_message() :: %{
        required("CacheSecurityGroupName") => String.t() | atom(),
        required("EC2SecurityGroupName") => String.t() | atom(),
        required("EC2SecurityGroupOwnerId") => String.t() | atom()
      }
      
  """
  @type authorize_cache_security_group_ingress_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_serverless_cache_response() :: %{
        "ServerlessCache" => serverless_cache()
      }
      
  """
  @type modify_serverless_cache_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user() :: %{
        optional("ARN") => String.t() | atom(),
        optional("AccessString") => String.t() | atom(),
        optional("Authentication") => authentication(),
        optional("Engine") => String.t() | atom(),
        optional("MinimumEngineVersion") => String.t() | atom(),
        optional("Status") => String.t() | atom(),
        optional("UserGroupIds") => list(String.t() | atom()),
        optional("UserId") => String.t() | atom(),
        optional("UserName") => String.t() | atom()
      }
      
  """
  @type user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_parameter_group_message() :: %{
        optional("Tags") => list(tag()),
        required("CacheParameterGroupFamily") => String.t() | atom(),
        required("CacheParameterGroupName") => String.t() | atom(),
        required("Description") => String.t() | atom()
      }
      
  """
  @type create_cache_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_update() :: %{
        "AutoUpdateAfterRecommendedApplyByDate" => boolean(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "EstimatedUpdateTime" => String.t() | atom(),
        "ServiceUpdateDescription" => String.t() | atom(),
        "ServiceUpdateEndDate" => non_neg_integer(),
        "ServiceUpdateName" => String.t() | atom(),
        "ServiceUpdateRecommendedApplyByDate" => non_neg_integer(),
        "ServiceUpdateReleaseDate" => non_neg_integer(),
        "ServiceUpdateSeverity" => list(any()),
        "ServiceUpdateStatus" => list(any()),
        "ServiceUpdateType" => list(any())
      }
      
  """
  @type service_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorize_cache_security_group_ingress_result() :: %{
        "CacheSecurityGroup" => cache_security_group()
      }
      
  """
  @type authorize_cache_security_group_ingress_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_serverless_cache_request() :: %{
        optional("CacheUsageLimits") => cache_usage_limits(),
        optional("DailySnapshotTime") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("MajorEngineVersion") => String.t() | atom(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("SnapshotArnsToRestore") => list(String.t() | atom()),
        optional("SnapshotRetentionLimit") => integer(),
        optional("SubnetIds") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        optional("UserGroupId") => String.t() | atom(),
        required("Engine") => String.t() | atom(),
        required("ServerlessCacheName") => String.t() | atom()
      }
      
  """
  @type create_serverless_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      default_user_required() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type default_user_required() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_serverless_cache_snapshot_response() :: %{
        "ServerlessCacheSnapshot" => serverless_cache_snapshot()
      }
      
  """
  @type create_serverless_cache_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_replication_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_replication_group_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_parameter_group_result() :: %{
        "CacheParameterGroup" => cache_parameter_group()
      }
      
  """
  @type create_cache_parameter_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_replication_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type global_replication_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_engine_version_message() :: %{
        "CacheEngineVersions" => list(cache_engine_version()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type cache_engine_version_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authentication_mode() :: %{
        "Passwords" => list(String.t() | atom()),
        "Type" => list(any())
      }
      
  """
  @type authentication_mode() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      insufficient_cache_cluster_capacity_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type insufficient_cache_cluster_capacity_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_serverless_cache_request() :: %{
        optional("CacheUsageLimits") => cache_usage_limits(),
        optional("DailySnapshotTime") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Engine") => String.t() | atom(),
        optional("MajorEngineVersion") => String.t() | atom(),
        optional("RemoveUserGroup") => boolean(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("SnapshotRetentionLimit") => integer(),
        optional("UserGroupId") => String.t() | atom(),
        required("ServerlessCacheName") => String.t() | atom()
      }
      
  """
  @type modify_serverless_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cache_clusters_message() :: %{
        optional("CacheClusterId") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("ShowCacheClustersNotInReplicationGroups") => boolean(),
        optional("ShowCacheNodeInfo") => boolean()
      }
      
  """
  @type describe_cache_clusters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_message() :: %{
        required("ResourceName") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type remove_tags_from_resource_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_node_update_status() :: %{
        "CacheNodeId" => String.t() | atom(),
        "NodeDeletionDate" => non_neg_integer(),
        "NodeUpdateEndDate" => non_neg_integer(),
        "NodeUpdateInitiatedBy" => list(any()),
        "NodeUpdateInitiatedDate" => non_neg_integer(),
        "NodeUpdateStartDate" => non_neg_integer(),
        "NodeUpdateStatus" => list(any()),
        "NodeUpdateStatusModifiedDate" => non_neg_integer()
      }
      
  """
  @type cache_node_update_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_serverless_cache_snapshot_response() :: %{
        "ServerlessCacheSnapshot" => serverless_cache_snapshot()
      }
      
  """
  @type delete_serverless_cache_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_group_already_under_migration_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replication_group_already_under_migration_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cache_security_group_message() :: %{
        required("CacheSecurityGroupName") => String.t() | atom()
      }
      
  """
  @type delete_cache_security_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_serverless_cache_snapshot_response() :: %{
        "ServerlessCacheSnapshot" => serverless_cache_snapshot()
      }
      
  """
  @type export_serverless_cache_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rebalance_slots_in_global_replication_group_message() :: %{
        required("ApplyImmediately") => boolean(),
        required("GlobalReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type rebalance_slots_in_global_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      decrease_node_groups_in_global_replication_group_message() :: %{
        optional("GlobalNodeGroupsToRemove") => list(String.t() | atom()),
        optional("GlobalNodeGroupsToRetain") => list(String.t() | atom()),
        required("ApplyImmediately") => boolean(),
        required("GlobalReplicationGroupId") => String.t() | atom(),
        required("NodeGroupCount") => integer()
      }
      
  """
  @type decrease_node_groups_in_global_replication_group_message() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      cache_security_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_security_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_feature_not_supported_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type snapshot_feature_not_supported_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type delete_global_replication_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_credentials_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_credentials_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_snapshot_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type serverless_cache_snapshot_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_groups_update_status() :: %{
        "UserGroupIdsToAdd" => list(String.t() | atom()),
        "UserGroupIdsToRemove" => list(String.t() | atom())
      }
      
  """
  @type user_groups_update_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_replication_group_member() :: %{
        "AutomaticFailover" => list(any()),
        "ReplicationGroupId" => String.t() | atom(),
        "ReplicationGroupRegion" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type global_replication_group_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_serverless_cache_snapshot_request() :: %{
        required("ServerlessCacheSnapshotName") => String.t() | atom()
      }
      
  """
  @type delete_serverless_cache_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_node_type_specific_value() :: %{
        "CacheNodeType" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type cache_node_type_specific_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_migration_message() :: %{
        required("CustomerNodeEndpointList") => list(customer_node_endpoint()),
        required("ReplicationGroupId") => String.t() | atom()
      }
      
  """
  @type start_migration_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_groups_per_replication_group_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type node_groups_per_replication_group_quota_exceeded_fault() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      slot_migration() :: %{
        "ProgressPercentage" => float()
      }
      
  """
  @type slot_migration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cache_cluster_result() :: %{
        "CacheCluster" => cache_cluster()
      }
      
  """
  @type create_cache_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_replication_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type global_replication_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_group_message() :: %{
        "Marker" => String.t() | atom(),
        "ReplicationGroups" => list(replication_group())
      }
      
  """
  @type replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_global_replication_group_message() :: %{
        required("GlobalReplicationGroupId") => String.t() | atom(),
        required("ReplicationGroupId") => String.t() | atom(),
        required("ReplicationGroupRegion") => String.t() | atom()
      }
      
  """
  @type disassociate_global_replication_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      serverless_cache_quota_for_customer_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type serverless_cache_quota_for_customer_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cache_cluster_result() :: %{
        "CacheCluster" => cache_cluster()
      }
      
  """
  @type delete_cache_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_cache_cluster_message() :: %{
        optional("AZMode") => list(any()),
        optional("ApplyImmediately") => boolean(),
        optional("AuthToken") => String.t() | atom(),
        optional("AuthTokenUpdateStrategy") => list(any()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("CacheNodeIdsToRemove") => list(String.t() | atom()),
        optional("CacheNodeType") => String.t() | atom(),
        optional("CacheParameterGroupName") => String.t() | atom(),
        optional("CacheSecurityGroupNames") => list(String.t() | atom()),
        optional("Engine") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("IpDiscovery") => list(any()),
        optional("LogDeliveryConfigurations") => list(log_delivery_configuration_request()),
        optional("NewAvailabilityZones") => list(String.t() | atom()),
        optional("NotificationTopicArn") => String.t() | atom(),
        optional("NotificationTopicStatus") => String.t() | atom(),
        optional("NumCacheNodes") => integer(),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("ScaleConfig") => scale_config(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("SnapshotRetentionLimit") => integer(),
        optional("SnapshotWindow") => String.t() | atom(),
        required("CacheClusterId") => String.t() | atom()
      }
      
  """
  @type modify_cache_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_destination_details() :: %{
        "DeliveryStream" => String.t() | atom()
      }
      
  """
  @type kinesis_firehose_destination_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      increase_node_groups_in_global_replication_group_result() :: %{
        "GlobalReplicationGroup" => global_replication_group()
      }
      
  """
  @type increase_node_groups_in_global_replication_group_result() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      cache_subnet_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_subnet_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cache_subnet_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cache_subnet_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      regional_configuration() :: %{
        "ReplicationGroupId" => String.t() | atom(),
        "ReplicationGroupRegion" => String.t() | atom(),
        "ReshardingConfiguration" => list(resharding_configuration())
      }
      
  """
  @type regional_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      node_quota_for_cluster_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type node_quota_for_cluster_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_serverless_cache_response() :: %{
        "ServerlessCache" => serverless_cache()
      }
      
  """
  @type delete_serverless_cache_response() :: %{(String.t() | atom()) => any()}

  @type add_tags_to_resource_errors() ::
          user_group_not_found_fault()
          | invalid_replication_group_state_fault()
          | invalid_serverless_cache_snapshot_state_fault()
          | serverless_cache_snapshot_not_found_fault()
          | cache_subnet_group_not_found_fault()
          | replication_group_not_found_fault()
          | invalid_serverless_cache_state_fault()
          | invalid_arn_fault()
          | cache_security_group_not_found_fault()
          | tag_quota_per_resource_exceeded()
          | serverless_cache_not_found_fault()
          | cache_cluster_not_found_fault()
          | reserved_cache_node_not_found_fault()
          | user_not_found_fault()
          | cache_parameter_group_not_found_fault()
          | snapshot_not_found_fault()

  @type authorize_cache_security_group_ingress_errors() ::
          invalid_cache_security_group_state_fault()
          | invalid_parameter_value_exception()
          | authorization_already_exists_fault()
          | cache_security_group_not_found_fault()
          | invalid_parameter_combination_exception()

  @type batch_apply_update_action_errors() ::
          invalid_parameter_value_exception() | service_update_not_found_fault()

  @type batch_stop_update_action_errors() ::
          invalid_parameter_value_exception() | service_update_not_found_fault()

  @type complete_migration_errors() ::
          invalid_replication_group_state_fault()
          | replication_group_not_found_fault()
          | replication_group_not_under_migration_fault()

  @type copy_serverless_cache_snapshot_errors() ::
          serverless_cache_snapshot_quota_exceeded_fault()
          | invalid_serverless_cache_snapshot_state_fault()
          | serverless_cache_snapshot_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | serverless_cache_snapshot_already_exists_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()

  @type copy_snapshot_errors() ::
          snapshot_already_exists_fault()
          | invalid_parameter_value_exception()
          | invalid_snapshot_state_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | snapshot_not_found_fault()
          | snapshot_quota_exceeded_fault()

  @type create_cache_cluster_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | insufficient_cache_cluster_capacity_fault()
          | invalid_replication_group_state_fault()
          | cache_subnet_group_not_found_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | cache_security_group_not_found_fault()
          | cache_cluster_already_exists_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | cache_parameter_group_not_found_fault()
          | node_quota_for_customer_exceeded_fault()

  @type create_cache_parameter_group_errors() ::
          cache_parameter_group_quota_exceeded_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | invalid_cache_parameter_group_state_fault()
          | cache_parameter_group_already_exists_fault()

  @type create_cache_security_group_errors() ::
          cache_security_group_already_exists_fault()
          | cache_security_group_quota_exceeded_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()

  @type create_cache_subnet_group_errors() ::
          cache_subnet_quota_exceeded_fault()
          | cache_subnet_group_already_exists_fault()
          | subnet_not_allowed_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_subnet()
          | cache_subnet_group_quota_exceeded_fault()

  @type create_global_replication_group_errors() ::
          global_replication_group_already_exists_fault()
          | invalid_replication_group_state_fault()
          | service_linked_role_not_found_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()

  @type create_replication_group_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | node_groups_per_replication_group_quota_exceeded_fault()
          | insufficient_cache_cluster_capacity_fault()
          | user_group_not_found_fault()
          | global_replication_group_not_found_fault()
          | cache_subnet_group_not_found_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | replication_group_already_exists_fault()
          | invalid_parameter_value_exception()
          | cache_security_group_not_found_fault()
          | invalid_global_replication_group_state_fault()
          | invalid_user_group_state_fault()
          | tag_quota_per_resource_exceeded()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()
          | invalid_cache_cluster_state_fault()
          | cache_parameter_group_not_found_fault()
          | node_quota_for_customer_exceeded_fault()

  @type create_serverless_cache_errors() ::
          serverless_cache_quota_for_customer_exceeded_fault()
          | invalid_credentials_exception()
          | user_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_serverless_cache_state_fault()
          | invalid_parameter_value_exception()
          | invalid_user_group_state_fault()
          | tag_quota_per_resource_exceeded()
          | serverless_cache_not_found_fault()
          | invalid_parameter_combination_exception()
          | serverless_cache_already_exists_fault()

  @type create_serverless_cache_snapshot_errors() ::
          serverless_cache_snapshot_quota_exceeded_fault()
          | service_linked_role_not_found_fault()
          | invalid_serverless_cache_state_fault()
          | invalid_parameter_value_exception()
          | serverless_cache_snapshot_already_exists_fault()
          | tag_quota_per_resource_exceeded()
          | serverless_cache_not_found_fault()
          | invalid_parameter_combination_exception()

  @type create_snapshot_errors() ::
          snapshot_feature_not_supported_fault()
          | invalid_replication_group_state_fault()
          | snapshot_already_exists_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()
          | invalid_cache_cluster_state_fault()
          | snapshot_quota_exceeded_fault()

  @type create_user_errors() ::
          service_linked_role_not_found_fault()
          | duplicate_user_name_fault()
          | user_quota_exceeded_fault()
          | user_already_exists_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | invalid_parameter_combination_exception()

  @type create_user_group_errors() ::
          user_group_already_exists_fault()
          | default_user_required()
          | service_linked_role_not_found_fault()
          | duplicate_user_name_fault()
          | user_group_quota_exceeded_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | user_not_found_fault()

  @type decrease_node_groups_in_global_replication_group_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()
          | invalid_parameter_combination_exception()

  @type decrease_replica_count_errors() ::
          node_groups_per_replication_group_quota_exceeded_fault()
          | insufficient_cache_cluster_capacity_fault()
          | invalid_replication_group_state_fault()
          | service_linked_role_not_found_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | no_operation_fault()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | invalid_cache_cluster_state_fault()
          | node_quota_for_customer_exceeded_fault()

  @type delete_cache_cluster_errors() ::
          snapshot_feature_not_supported_fault()
          | snapshot_already_exists_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()
          | invalid_cache_cluster_state_fault()
          | snapshot_quota_exceeded_fault()

  @type delete_cache_parameter_group_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | invalid_cache_parameter_group_state_fault()
          | cache_parameter_group_not_found_fault()

  @type delete_cache_security_group_errors() ::
          invalid_cache_security_group_state_fault()
          | invalid_parameter_value_exception()
          | cache_security_group_not_found_fault()
          | invalid_parameter_combination_exception()

  @type delete_cache_subnet_group_errors() ::
          cache_subnet_group_not_found_fault() | cache_subnet_group_in_use()

  @type delete_global_replication_group_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()

  @type delete_replication_group_errors() ::
          snapshot_feature_not_supported_fault()
          | invalid_replication_group_state_fault()
          | snapshot_already_exists_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | snapshot_quota_exceeded_fault()

  @type delete_serverless_cache_errors() ::
          invalid_credentials_exception()
          | service_linked_role_not_found_fault()
          | invalid_serverless_cache_state_fault()
          | invalid_parameter_value_exception()
          | serverless_cache_snapshot_already_exists_fault()
          | serverless_cache_not_found_fault()
          | invalid_parameter_combination_exception()

  @type delete_serverless_cache_snapshot_errors() ::
          invalid_serverless_cache_snapshot_state_fault()
          | serverless_cache_snapshot_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()

  @type delete_snapshot_errors() ::
          invalid_parameter_value_exception()
          | invalid_snapshot_state_fault()
          | invalid_parameter_combination_exception()
          | snapshot_not_found_fault()

  @type delete_user_errors() ::
          default_user_associated_to_user_group_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | user_not_found_fault()
          | invalid_user_state_fault()

  @type delete_user_group_errors() ::
          user_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_user_group_state_fault()

  @type describe_cache_clusters_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()

  @type describe_cache_parameter_groups_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cache_parameter_group_not_found_fault()

  @type describe_cache_parameters_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cache_parameter_group_not_found_fault()

  @type describe_cache_security_groups_errors() ::
          invalid_parameter_value_exception()
          | cache_security_group_not_found_fault()
          | invalid_parameter_combination_exception()

  @type describe_cache_subnet_groups_errors() :: cache_subnet_group_not_found_fault()

  @type describe_engine_default_parameters_errors() ::
          invalid_parameter_value_exception() | invalid_parameter_combination_exception()

  @type describe_events_errors() ::
          invalid_parameter_value_exception() | invalid_parameter_combination_exception()

  @type describe_global_replication_groups_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_replication_groups_errors() ::
          replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()

  @type describe_reserved_cache_nodes_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | reserved_cache_node_not_found_fault()

  @type describe_reserved_cache_nodes_offerings_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | reserved_cache_nodes_offering_not_found_fault()

  @type describe_serverless_cache_snapshots_errors() ::
          serverless_cache_snapshot_not_found_fault()
          | invalid_parameter_value_exception()
          | serverless_cache_not_found_fault()
          | invalid_parameter_combination_exception()

  @type describe_serverless_caches_errors() ::
          invalid_parameter_value_exception()
          | serverless_cache_not_found_fault()
          | invalid_parameter_combination_exception()

  @type describe_service_updates_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | service_update_not_found_fault()

  @type describe_snapshots_errors() ::
          invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()
          | snapshot_not_found_fault()

  @type describe_update_actions_errors() ::
          invalid_parameter_value_exception() | invalid_parameter_combination_exception()

  @type describe_user_groups_errors() ::
          user_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_combination_exception()

  @type describe_users_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_combination_exception()
          | user_not_found_fault()

  @type disassociate_global_replication_group_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()
          | invalid_parameter_combination_exception()

  @type export_serverless_cache_snapshot_errors() ::
          invalid_serverless_cache_snapshot_state_fault()
          | serverless_cache_snapshot_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()

  @type failover_global_replication_group_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()
          | invalid_parameter_combination_exception()

  @type increase_node_groups_in_global_replication_group_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()

  @type increase_replica_count_errors() ::
          node_groups_per_replication_group_quota_exceeded_fault()
          | insufficient_cache_cluster_capacity_fault()
          | invalid_replication_group_state_fault()
          | cluster_quota_for_customer_exceeded_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | no_operation_fault()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | invalid_kms_key_fault()
          | invalid_cache_cluster_state_fault()
          | node_quota_for_customer_exceeded_fault()

  @type list_allowed_node_type_modifications_errors() ::
          replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()

  @type list_tags_for_resource_errors() ::
          user_group_not_found_fault()
          | invalid_replication_group_state_fault()
          | invalid_serverless_cache_snapshot_state_fault()
          | serverless_cache_snapshot_not_found_fault()
          | cache_subnet_group_not_found_fault()
          | replication_group_not_found_fault()
          | invalid_serverless_cache_state_fault()
          | invalid_arn_fault()
          | cache_security_group_not_found_fault()
          | serverless_cache_not_found_fault()
          | cache_cluster_not_found_fault()
          | reserved_cache_node_not_found_fault()
          | user_not_found_fault()
          | cache_parameter_group_not_found_fault()
          | snapshot_not_found_fault()

  @type modify_cache_cluster_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | insufficient_cache_cluster_capacity_fault()
          | invalid_cache_security_group_state_fault()
          | invalid_parameter_value_exception()
          | cache_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()
          | invalid_cache_cluster_state_fault()
          | cache_parameter_group_not_found_fault()
          | node_quota_for_customer_exceeded_fault()

  @type modify_cache_parameter_group_errors() ::
          invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()
          | invalid_parameter_combination_exception()
          | invalid_cache_parameter_group_state_fault()
          | cache_parameter_group_not_found_fault()

  @type modify_cache_subnet_group_errors() ::
          cache_subnet_quota_exceeded_fault()
          | cache_subnet_group_not_found_fault()
          | subnet_in_use()
          | subnet_not_allowed_fault()
          | invalid_subnet()

  @type modify_global_replication_group_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()

  @type modify_replication_group_errors() ::
          node_quota_for_cluster_exceeded_fault()
          | insufficient_cache_cluster_capacity_fault()
          | user_group_not_found_fault()
          | invalid_replication_group_state_fault()
          | invalid_cache_security_group_state_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | cache_security_group_not_found_fault()
          | invalid_user_group_state_fault()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | cache_cluster_not_found_fault()
          | invalid_kms_key_fault()
          | invalid_cache_cluster_state_fault()
          | cache_parameter_group_not_found_fault()
          | node_quota_for_customer_exceeded_fault()

  @type modify_replication_group_shard_configuration_errors() ::
          node_groups_per_replication_group_quota_exceeded_fault()
          | insufficient_cache_cluster_capacity_fault()
          | invalid_replication_group_state_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_vpc_network_state_fault()
          | invalid_parameter_combination_exception()
          | invalid_kms_key_fault()
          | invalid_cache_cluster_state_fault()
          | node_quota_for_customer_exceeded_fault()

  @type modify_serverless_cache_errors() ::
          invalid_credentials_exception()
          | user_group_not_found_fault()
          | service_linked_role_not_found_fault()
          | invalid_serverless_cache_state_fault()
          | invalid_parameter_value_exception()
          | invalid_user_group_state_fault()
          | serverless_cache_not_found_fault()
          | invalid_parameter_combination_exception()

  @type modify_user_errors() ::
          service_linked_role_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_parameter_combination_exception()
          | user_not_found_fault()
          | invalid_user_state_fault()

  @type modify_user_group_errors() ::
          user_group_not_found_fault()
          | default_user_required()
          | service_linked_role_not_found_fault()
          | duplicate_user_name_fault()
          | invalid_parameter_value_exception()
          | invalid_user_group_state_fault()
          | invalid_parameter_combination_exception()
          | user_not_found_fault()

  @type purchase_reserved_cache_nodes_offering_errors() ::
          reserved_cache_node_quota_exceeded_fault()
          | invalid_parameter_value_exception()
          | tag_quota_per_resource_exceeded()
          | reserved_cache_node_already_exists_fault()
          | invalid_parameter_combination_exception()
          | reserved_cache_nodes_offering_not_found_fault()

  @type rebalance_slots_in_global_replication_group_errors() ::
          global_replication_group_not_found_fault()
          | invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()

  @type reboot_cache_cluster_errors() ::
          cache_cluster_not_found_fault() | invalid_cache_cluster_state_fault()

  @type remove_tags_from_resource_errors() ::
          user_group_not_found_fault()
          | invalid_replication_group_state_fault()
          | invalid_serverless_cache_snapshot_state_fault()
          | serverless_cache_snapshot_not_found_fault()
          | cache_subnet_group_not_found_fault()
          | replication_group_not_found_fault()
          | invalid_serverless_cache_state_fault()
          | invalid_arn_fault()
          | cache_security_group_not_found_fault()
          | serverless_cache_not_found_fault()
          | tag_not_found_fault()
          | cache_cluster_not_found_fault()
          | reserved_cache_node_not_found_fault()
          | user_not_found_fault()
          | cache_parameter_group_not_found_fault()
          | snapshot_not_found_fault()

  @type reset_cache_parameter_group_errors() ::
          invalid_parameter_value_exception()
          | invalid_global_replication_group_state_fault()
          | invalid_parameter_combination_exception()
          | invalid_cache_parameter_group_state_fault()
          | cache_parameter_group_not_found_fault()

  @type revoke_cache_security_group_ingress_errors() ::
          invalid_cache_security_group_state_fault()
          | invalid_parameter_value_exception()
          | cache_security_group_not_found_fault()
          | authorization_not_found_fault()
          | invalid_parameter_combination_exception()

  @type start_migration_errors() ::
          replication_group_already_under_migration_fault()
          | invalid_replication_group_state_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()

  @type test_failover_errors() ::
          invalid_replication_group_state_fault()
          | replication_group_not_found_fault()
          | api_call_rate_for_customer_exceeded_fault()
          | node_group_not_found_fault()
          | invalid_parameter_value_exception()
          | test_failover_not_available_fault()
          | invalid_parameter_combination_exception()
          | invalid_kms_key_fault()
          | invalid_cache_cluster_state_fault()

  @type test_migration_errors() ::
          replication_group_already_under_migration_fault()
          | invalid_replication_group_state_fault()
          | replication_group_not_found_fault()
          | invalid_parameter_value_exception()

  def metadata do
    %{
      api_version: "2015-02-02",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "elasticache",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "ElastiCache",
      signature_version: "v4",
      signing_name: "elasticache",
      target_prefix: "AmazonElastiCacheV9"
    }
  end

  @doc """
  A tag is a key-value pair where the key and value are case-sensitive.

  You can use tags
  to categorize and track all your ElastiCache resources, with the exception of
  global
  replication group. When you add or remove tags on replication groups, those
  actions will
  be replicated to all nodes in the replication group. For more information, see
  [Resource-level permissions](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html).

  For example, you can use cost-allocation tags to your ElastiCache resources,
  Amazon
  generates a cost allocation report as a comma-separated value (CSV) file with
  your usage
  and costs aggregated by your tags. You can apply tags that represent business
  categories
  (such as cost centers, application names, or owners) to organize your costs
  across
  multiple services.

  For more information, see [Using Cost Allocation Tags in Amazon
  ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Tagging.html)
  in the *ElastiCache User
  Guide*.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_message(), list()) ::
          {:ok, tag_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Allows network ingress to a cache security group.

  Applications using ElastiCache must
  be running on Amazon EC2, and Amazon EC2 security groups are used as the
  authorization
  mechanism.

  You cannot authorize ingress from an Amazon EC2 security group in one region to
  an
  ElastiCache cluster in another region.
  """
  @spec authorize_cache_security_group_ingress(
          map(),
          authorize_cache_security_group_ingress_message(),
          list()
        ) ::
          {:ok, authorize_cache_security_group_ingress_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, authorize_cache_security_group_ingress_errors()}
  def authorize_cache_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AuthorizeCacheSecurityGroupIngress", input, options)
  end

  @doc """
  Apply the service update.

  For more information on service updates and applying them,
  see [Applying Service Updates](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/applying-updates.html).
  """
  @spec batch_apply_update_action(map(), batch_apply_update_action_message(), list()) ::
          {:ok, update_action_results_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_apply_update_action_errors()}
  def batch_apply_update_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchApplyUpdateAction", input, options)
  end

  @doc """
  Stop the service update.

  For more information on service updates and stopping them,
  see [Stopping Service
  Updates](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/stopping-self-service-updates.html).
  """
  @spec batch_stop_update_action(map(), batch_stop_update_action_message(), list()) ::
          {:ok, update_action_results_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_stop_update_action_errors()}
  def batch_stop_update_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchStopUpdateAction", input, options)
  end

  @doc """
  Complete the migration of data.
  """
  @spec complete_migration(map(), complete_migration_message(), list()) ::
          {:ok, complete_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_migration_errors()}
  def complete_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CompleteMigration", input, options)
  end

  @doc """
  Creates a copy of an existing serverless cache’s snapshot.

  Available for Valkey, Redis OSS and Serverless Memcached only.
  """
  @spec copy_serverless_cache_snapshot(map(), copy_serverless_cache_snapshot_request(), list()) ::
          {:ok, copy_serverless_cache_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_serverless_cache_snapshot_errors()}
  def copy_serverless_cache_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyServerlessCacheSnapshot", input, options)
  end

  @doc """
  Makes a copy of an existing snapshot.

  This operation is valid for Valkey or Redis OSS only.

  Users or groups that have permissions to use the `CopySnapshot`
  operation can create their own Amazon S3 buckets and copy snapshots to it. To
  control access to your snapshots, use an IAM policy to control who has the
  ability
  to use the `CopySnapshot` operation. For more information about using IAM
  to control the use of ElastiCache operations, see [Exporting Snapshots](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html)
  and [Authentication & Access Control](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.html).

  You could receive the following error messages.

  ## Error Messages

    *

  **Error Message:** The S3 bucket %s is outside of
  the region.

  **Solution:** Create an Amazon S3 bucket in the
  same region as your snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket)
  in the ElastiCache User
  Guide.

    *

  **Error Message:** The S3 bucket %s does not
  exist.

  **Solution:** Create an Amazon S3 bucket in the
  same region as your snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket)
  in the ElastiCache User
  Guide.

    *

  **Error Message:** The S3 bucket %s is not owned
  by the authenticated user.

  **Solution:** Create an Amazon S3 bucket in the
  same region as your snapshot. For more information, see [Step 1: Create an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-create-s3-bucket)
  in the ElastiCache User
  Guide.

    *

  **Error Message:** The authenticated user does
  not have sufficient permissions to perform the desired activity.

  **Solution:** Contact your system administrator
  to get the needed permissions.

    *

  **Error Message:** The S3 bucket %s already
  contains an object with key %s.

  **Solution:** Give the
  `TargetSnapshotName` a new and unique value. If exporting a
  snapshot, you could alternatively create a new Amazon S3 bucket and use this
  same value for `TargetSnapshotName`.

    *

  **Error Message: ** ElastiCache has not been
  granted READ permissions %s on the S3 Bucket.

  **Solution:** Add List and Read permissions on
  the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access)
  in the
  ElastiCache User Guide.

    *

  **Error Message: ** ElastiCache has not been
  granted WRITE permissions %s on the S3 Bucket.

  **Solution:** Add Upload/Delete permissions on
  the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access)
  in the
  ElastiCache User Guide.

    *

  **Error Message: ** ElastiCache has not been
  granted READ_ACP permissions %s on the S3 Bucket.

  **Solution:** Add View Permissions on the bucket.
  For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access)
  in the
  ElastiCache User Guide.
  """
  @spec copy_snapshot(map(), copy_snapshot_message(), list()) ::
          {:ok, copy_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_snapshot_errors()}
  def copy_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopySnapshot", input, options)
  end

  @doc """
  Creates a cluster.

  All nodes in the cluster run the same protocol-compliant cache
  engine software, either Memcached, Valkey or Redis OSS.

  This operation is not supported for Valkey or Redis OSS (cluster mode enabled)
  clusters.
  """
  @spec create_cache_cluster(map(), create_cache_cluster_message(), list()) ::
          {:ok, create_cache_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cache_cluster_errors()}
  def create_cache_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCacheCluster", input, options)
  end

  @doc """
  Creates a new Amazon ElastiCache cache parameter group.

  An ElastiCache cache parameter
  group is a collection of parameters and their values that are applied to all of
  the
  nodes in any cluster or replication group using the CacheParameterGroup.

  A newly created CacheParameterGroup is an exact duplicate of the default
  parameter
  group for the CacheParameterGroupFamily. To customize the newly created
  CacheParameterGroup you can change the values of specific parameters. For more
  information, see:

    *

  [ModifyCacheParameterGroup](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html) in the ElastiCache API Reference.

    *

  [Parameters and
  Parameter
  Groups](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ParameterGroups.html)
  in the ElastiCache User Guide.
  """
  @spec create_cache_parameter_group(map(), create_cache_parameter_group_message(), list()) ::
          {:ok, create_cache_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cache_parameter_group_errors()}
  def create_cache_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCacheParameterGroup", input, options)
  end

  @doc """
  Creates a new cache security group.

  Use a cache security group to control access to
  one or more clusters.

  Cache security groups are only used when you are creating a cluster outside of
  an
  Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside
  of a
  VPC, use a cache subnet group instead. For more information, see
  [CreateCacheSubnetGroup](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html).
  """
  @spec create_cache_security_group(map(), create_cache_security_group_message(), list()) ::
          {:ok, create_cache_security_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cache_security_group_errors()}
  def create_cache_security_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCacheSecurityGroup", input, options)
  end

  @doc """
  Creates a new cache subnet group.

  Use this parameter only when you are creating a cluster in an Amazon Virtual
  Private
  Cloud (Amazon VPC).
  """
  @spec create_cache_subnet_group(map(), create_cache_subnet_group_message(), list()) ::
          {:ok, create_cache_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cache_subnet_group_errors()}
  def create_cache_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCacheSubnetGroup", input, options)
  end

  @doc """
  Global Datastore offers fully managed, fast, reliable and secure
  cross-region replication.

  Using Global Datastore with Valkey or Redis OSS, you can create cross-region
  read replica clusters for ElastiCache to enable low-latency reads and disaster
  recovery across regions. For more information, see [Replication Across Regions Using Global
  Datastore](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Redis-Global-Datastore.html).

    *
  The **GlobalReplicationGroupIdSuffix** is the
  name of the Global datastore.

    *
  The **PrimaryReplicationGroupId** represents the
  name of the primary cluster that accepts writes and will replicate updates to
  the secondary cluster.
  """
  @spec create_global_replication_group(map(), create_global_replication_group_message(), list()) ::
          {:ok, create_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_global_replication_group_errors()}
  def create_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGlobalReplicationGroup", input, options)
  end

  @doc """
  Creates a Valkey or Redis OSS (cluster mode disabled) or a Valkey or Redis OSS
  (cluster mode enabled) replication
  group.

  This API can be used to create a standalone regional replication group or a
  secondary
  replication group associated with a Global datastore.

  A Valkey or Redis OSS (cluster mode disabled) replication group is a collection
  of nodes, where
  one of the nodes is a read/write primary and the others are read-only replicas.
  Writes to the primary are asynchronously propagated to the replicas.

  A Valkey or Redis OSS cluster-mode enabled cluster is comprised of from 1 to 90
  shards (API/CLI:
  node groups). Each shard has a primary node and up to 5 read-only replica nodes.
  The
  configuration can range from 90 shards and 0 replicas to 15 shards and 5
  replicas, which
  is the maximum number or replicas allowed.

  The node or shard limit can be increased to a maximum of 500 per cluster if the
  Valkey or Redis OSS
  engine version is 5.0.6 or higher. For example, you can choose to configure a
  500 node
  cluster that ranges between 83 shards (one primary and 5 replicas per shard) and
  500
  shards (single primary and no replicas). Make sure there are enough available IP
  addresses to accommodate the increase. Common pitfalls include the subnets in
  the subnet
  group have too small a CIDR range or the subnets are shared and heavily used by
  other
  clusters. For more information, see [Creating a Subnet Group](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.Creating.html).
  For versions below 5.0.6, the limit is 250 per cluster.

  To request a limit increase, see [Amazon Service Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
  and
  choose the limit type **Nodes per cluster per instance
  type**.

  When a Valkey or Redis OSS (cluster mode disabled) replication group has been
  successfully created,
  you can add one or more read replicas to it, up to a total of 5 read replicas.
  If you
  need to increase or decrease the number of node groups (console: shards), you
  can use scaling.
  For more information, see [Scaling self-designed clusters](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Scaling.html)
  in the *ElastiCache User
  Guide*.

  This operation is valid for Valkey and Redis OSS only.
  """
  @spec create_replication_group(map(), create_replication_group_message(), list()) ::
          {:ok, create_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_replication_group_errors()}
  def create_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReplicationGroup", input, options)
  end

  @doc """
  Creates a serverless cache.
  """
  @spec create_serverless_cache(map(), create_serverless_cache_request(), list()) ::
          {:ok, create_serverless_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_serverless_cache_errors()}
  def create_serverless_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServerlessCache", input, options)
  end

  @doc """
  This API creates a copy of an entire ServerlessCache at a specific moment in
  time.

  Available for Valkey, Redis OSS and Serverless Memcached only.
  """
  @spec create_serverless_cache_snapshot(
          map(),
          create_serverless_cache_snapshot_request(),
          list()
        ) ::
          {:ok, create_serverless_cache_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_serverless_cache_snapshot_errors()}
  def create_serverless_cache_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServerlessCacheSnapshot", input, options)
  end

  @doc """
  Creates a copy of an entire cluster or replication group at a specific moment in
  time.

  This operation is valid for Valkey or Redis OSS only.
  """
  @spec create_snapshot(map(), create_snapshot_message(), list()) ::
          {:ok, create_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_errors()}
  def create_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  For Valkey engine version 7.2 onwards and Redis OSS 6.0 to 7.1: Creates a user.

  For more information, see
  [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html).
  """
  @spec create_user(map(), create_user_message(), list()) ::
          {:ok, user(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  For Valkey engine version 7.2 onwards and Redis OSS 6.0 to 7.1: Creates a user
  group.

  For more
  information, see [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html)
  """
  @spec create_user_group(map(), create_user_group_message(), list()) ::
          {:ok, user_group(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_group_errors()}
  def create_user_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserGroup", input, options)
  end

  @doc """
  Decreases the number of node groups in a Global datastore
  """
  @spec decrease_node_groups_in_global_replication_group(
          map(),
          decrease_node_groups_in_global_replication_group_message(),
          list()
        ) ::
          {:ok, decrease_node_groups_in_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, decrease_node_groups_in_global_replication_group_errors()}
  def decrease_node_groups_in_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DecreaseNodeGroupsInGlobalReplicationGroup",
      input,
      options
    )
  end

  @doc """
  Dynamically decreases the number of replicas in a Valkey or Redis OSS (cluster
  mode disabled)
  replication group or the number of replica nodes in one or more node groups
  (shards) of
  a Valkey or Redis OSS (cluster mode enabled) replication group.

  This operation is performed with no
  cluster down time.
  """
  @spec decrease_replica_count(map(), decrease_replica_count_message(), list()) ::
          {:ok, decrease_replica_count_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, decrease_replica_count_errors()}
  def decrease_replica_count(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DecreaseReplicaCount", input, options)
  end

  @doc """
  Deletes a previously provisioned cluster.

  `DeleteCacheCluster` deletes all
  associated cache nodes, node endpoints and the cluster itself. When you receive
  a
  successful response from this operation, Amazon ElastiCache immediately begins
  deleting
  the cluster; you cannot cancel or revert this operation.

  This operation is not valid for:

    *
  Valkey or Redis OSS (cluster mode enabled) clusters

    *
  Valkey or Redis OSS (cluster mode disabled) clusters

    *
  A cluster that is the last read replica of a replication group

    *
  A cluster that is the primary node of a replication group

    *
  A node group (shard) that has Multi-AZ mode enabled

    *
  A cluster from a Valkey or Redis OSS (cluster mode enabled) replication group

    *
  A cluster that is not in the `available` state
  """
  @spec delete_cache_cluster(map(), delete_cache_cluster_message(), list()) ::
          {:ok, delete_cache_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cache_cluster_errors()}
  def delete_cache_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCacheCluster", input, options)
  end

  @doc """
  Deletes the specified cache parameter group.

  You cannot delete a cache parameter group
  if it is associated with any cache clusters. You cannot delete the default cache
  parameter groups in your account.
  """
  @spec delete_cache_parameter_group(map(), delete_cache_parameter_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cache_parameter_group_errors()}
  def delete_cache_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCacheParameterGroup", input, options)
  end

  @doc """
  Deletes a cache security group.

  You cannot delete a cache security group if it is associated with any
  clusters.
  """
  @spec delete_cache_security_group(map(), delete_cache_security_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cache_security_group_errors()}
  def delete_cache_security_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCacheSecurityGroup", input, options)
  end

  @doc """
  Deletes a cache subnet group.

  You cannot delete a default cache subnet group or one that is associated with
  any
  clusters.
  """
  @spec delete_cache_subnet_group(map(), delete_cache_subnet_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cache_subnet_group_errors()}
  def delete_cache_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCacheSubnetGroup", input, options)
  end

  @doc """
  Deleting a Global datastore is a two-step process:

    *
  First, you must `DisassociateGlobalReplicationGroup` to remove
  the secondary clusters in the Global datastore.

    *
  Once the Global datastore contains only the primary cluster, you can use the
  `DeleteGlobalReplicationGroup` API to delete the Global datastore
  while retainining the primary cluster using
  `RetainPrimaryReplicationGroup=true`.

  Since the Global Datastore has only a primary cluster, you can delete the Global
  Datastore while retaining the primary by setting
  `RetainPrimaryReplicationGroup=true`. The primary cluster is never
  deleted when deleting a Global Datastore. It can only be deleted when it no
  longer is
  associated with any Global Datastore.

  When you receive a successful response from this operation, Amazon ElastiCache
  immediately begins deleting the selected resources; you cannot cancel or revert
  this
  operation.
  """
  @spec delete_global_replication_group(map(), delete_global_replication_group_message(), list()) ::
          {:ok, delete_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_global_replication_group_errors()}
  def delete_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGlobalReplicationGroup", input, options)
  end

  @doc """
  Deletes an existing replication group.

  By default, this operation deletes the entire
  replication group, including the primary/primaries and all of the read replicas.
  If the
  replication group has only one primary, you can optionally delete only the read
  replicas, while retaining the primary by setting
  `RetainPrimaryCluster=true`.

  When you receive a successful response from this operation, Amazon ElastiCache
  immediately begins deleting the selected resources; you cannot cancel or revert
  this
  operation.

    

  `CreateSnapshot` permission is required to create a final snapshot.
  Without this permission, the API call will fail with an `Access Denied`
  exception.

    
  This operation is valid for Redis OSS only.
  """
  @spec delete_replication_group(map(), delete_replication_group_message(), list()) ::
          {:ok, delete_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_replication_group_errors()}
  def delete_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReplicationGroup", input, options)
  end

  @doc """
  Deletes a specified existing serverless cache.

  `CreateServerlessCacheSnapshot` permission is required to create a final
  snapshot.
  Without this permission, the API call will fail with an `Access Denied`
  exception.
  """
  @spec delete_serverless_cache(map(), delete_serverless_cache_request(), list()) ::
          {:ok, delete_serverless_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_serverless_cache_errors()}
  def delete_serverless_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServerlessCache", input, options)
  end

  @doc """
  Deletes an existing serverless cache snapshot.

  Available for Valkey, Redis OSS and Serverless Memcached only.
  """
  @spec delete_serverless_cache_snapshot(
          map(),
          delete_serverless_cache_snapshot_request(),
          list()
        ) ::
          {:ok, delete_serverless_cache_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_serverless_cache_snapshot_errors()}
  def delete_serverless_cache_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServerlessCacheSnapshot", input, options)
  end

  @doc """
  Deletes an existing snapshot.

  When you receive a successful response from this
  operation, ElastiCache immediately begins deleting the snapshot; you cannot
  cancel or
  revert this operation.

  This operation is valid for Valkey or Redis OSS only.
  """
  @spec delete_snapshot(map(), delete_snapshot_message(), list()) ::
          {:ok, delete_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_snapshot_errors()}
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSnapshot", input, options)
  end

  @doc """
  For Valkey engine version 7.2 onwards and Redis OSS 6.0 onwards: Deletes a user.

  The user will be removed from
  all user groups and in turn removed from all replication groups. For more
  information,
  see [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html).
  """
  @spec delete_user(map(), delete_user_message(), list()) ::
          {:ok, user(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  For Valkey engine version 7.2 onwards and Redis OSS 6.0 onwards: Deletes a user
  group.

  The user group must first
  be disassociated from the replication group before it can be deleted. For more
  information, see [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.RBAC.html).
  """
  @spec delete_user_group(map(), delete_user_group_message(), list()) ::
          {:ok, user_group(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_group_errors()}
  def delete_user_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserGroup", input, options)
  end

  @doc """
  Returns information about all provisioned clusters if no cluster identifier is
  specified, or about a specific cache cluster if a cluster identifier is
  supplied.

  By default, abbreviated information about the clusters is returned. You can use
  the
  optional *ShowCacheNodeInfo* flag to retrieve detailed information
  about the cache nodes associated with the clusters. These details include the
  DNS
  address and port for the cache node endpoint.

  If the cluster is in the *creating* state, only cluster-level
  information is displayed until all of the nodes are successfully provisioned.

  If the cluster is in the *deleting* state, only cluster-level
  information is displayed.

  If cache nodes are currently being added to the cluster, node endpoint
  information and
  creation time for the additional nodes are not displayed until they are
  completely
  provisioned. When the cluster state is *available*, the cluster is
  ready for use.

  If cache nodes are currently being removed from the cluster, no endpoint
  information
  for the removed nodes is displayed.
  """
  @spec describe_cache_clusters(map(), describe_cache_clusters_message(), list()) ::
          {:ok, cache_cluster_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cache_clusters_errors()}
  def describe_cache_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCacheClusters", input, options)
  end

  @doc """
  Returns a list of the available cache engines and their versions.
  """
  @spec describe_cache_engine_versions(map(), describe_cache_engine_versions_message(), list()) ::
          {:ok, cache_engine_version_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_cache_engine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCacheEngineVersions", input, options)
  end

  @doc """
  Returns a list of cache parameter group descriptions.

  If a cache parameter group name
  is specified, the list contains only the descriptions for that group.
  """
  @spec describe_cache_parameter_groups(map(), describe_cache_parameter_groups_message(), list()) ::
          {:ok, cache_parameter_groups_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cache_parameter_groups_errors()}
  def describe_cache_parameter_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCacheParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular cache parameter group.
  """
  @spec describe_cache_parameters(map(), describe_cache_parameters_message(), list()) ::
          {:ok, cache_parameter_group_details(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cache_parameters_errors()}
  def describe_cache_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCacheParameters", input, options)
  end

  @doc """
  Returns a list of cache security group descriptions.

  If a cache security group name is
  specified, the list contains only the description of that group. This applicable
  only
  when you have ElastiCache in Classic setup
  """
  @spec describe_cache_security_groups(map(), describe_cache_security_groups_message(), list()) ::
          {:ok, cache_security_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cache_security_groups_errors()}
  def describe_cache_security_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCacheSecurityGroups", input, options)
  end

  @doc """
  Returns a list of cache subnet group descriptions.

  If a subnet group name is
  specified, the list contains only the description of that group. This is
  applicable only
  when you have ElastiCache in VPC setup. All ElastiCache clusters now launch in
  VPC by
  default.
  """
  @spec describe_cache_subnet_groups(map(), describe_cache_subnet_groups_message(), list()) ::
          {:ok, cache_subnet_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cache_subnet_groups_errors()}
  def describe_cache_subnet_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCacheSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the specified
  cache
  engine.
  """
  @spec describe_engine_default_parameters(
          map(),
          describe_engine_default_parameters_message(),
          list()
        ) ::
          {:ok, describe_engine_default_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_engine_default_parameters_errors()}
  def describe_engine_default_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEngineDefaultParameters", input, options)
  end

  @doc """
  Returns events related to clusters, cache security groups, and cache parameter
  groups.

  You can obtain events specific to a particular cluster, cache security group, or
  cache
  parameter group by providing the name as a parameter.

  By default, only the events occurring within the last hour are returned;
  however, you
  can retrieve up to 14 days' worth of events if necessary.
  """
  @spec describe_events(map(), describe_events_message(), list()) ::
          {:ok, events_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_events_errors()}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about a particular global replication group.

  If no identifier is
  specified, returns information about all Global datastores.
  """
  @spec describe_global_replication_groups(
          map(),
          describe_global_replication_groups_message(),
          list()
        ) ::
          {:ok, describe_global_replication_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_global_replication_groups_errors()}
  def describe_global_replication_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGlobalReplicationGroups", input, options)
  end

  @doc """
  Returns information about a particular replication group.

  If no identifier is
  specified, `DescribeReplicationGroups` returns information about all
  replication groups.

  This operation is valid for Valkey or Redis OSS only.
  """
  @spec describe_replication_groups(map(), describe_replication_groups_message(), list()) ::
          {:ok, replication_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_replication_groups_errors()}
  def describe_replication_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationGroups", input, options)
  end

  @doc """
  Returns information about reserved cache nodes for this account, or about a
  specified
  reserved cache node.
  """
  @spec describe_reserved_cache_nodes(map(), describe_reserved_cache_nodes_message(), list()) ::
          {:ok, reserved_cache_node_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reserved_cache_nodes_errors()}
  def describe_reserved_cache_nodes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedCacheNodes", input, options)
  end

  @doc """
  Lists available reserved cache node offerings.
  """
  @spec describe_reserved_cache_nodes_offerings(
          map(),
          describe_reserved_cache_nodes_offerings_message(),
          list()
        ) ::
          {:ok, reserved_cache_nodes_offering_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_reserved_cache_nodes_offerings_errors()}
  def describe_reserved_cache_nodes_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedCacheNodesOfferings", input, options)
  end

  @doc """
  Returns information about serverless cache snapshots.

  By default, this API lists all of the customer’s serverless cache snapshots.
  It can also describe a single serverless cache snapshot, or the snapshots
  associated with
  a particular serverless cache. Available for Valkey, Redis OSS and Serverless
  Memcached only.
  """
  @spec describe_serverless_cache_snapshots(
          map(),
          describe_serverless_cache_snapshots_request(),
          list()
        ) ::
          {:ok, describe_serverless_cache_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_serverless_cache_snapshots_errors()}
  def describe_serverless_cache_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServerlessCacheSnapshots", input, options)
  end

  @doc """
  Returns information about a specific serverless cache.

  If no identifier is specified, then the API returns information on all the
  serverless caches belonging to
  this Amazon Web Services account.
  """
  @spec describe_serverless_caches(map(), describe_serverless_caches_request(), list()) ::
          {:ok, describe_serverless_caches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_serverless_caches_errors()}
  def describe_serverless_caches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServerlessCaches", input, options)
  end

  @doc """
  Returns details of the service updates
  """
  @spec describe_service_updates(map(), describe_service_updates_message(), list()) ::
          {:ok, service_updates_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_updates_errors()}
  def describe_service_updates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServiceUpdates", input, options)
  end

  @doc """
  Returns information about cluster or replication group snapshots.

  By default,
  `DescribeSnapshots` lists all of your snapshots; it can optionally
  describe a single snapshot, or just the snapshots associated with a particular
  cache
  cluster.

  This operation is valid for Valkey or Redis OSS only.
  """
  @spec describe_snapshots(map(), describe_snapshots_message(), list()) ::
          {:ok, describe_snapshots_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_snapshots_errors()}
  def describe_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSnapshots", input, options)
  end

  @doc """
  Returns details of the update actions
  """
  @spec describe_update_actions(map(), describe_update_actions_message(), list()) ::
          {:ok, update_actions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_update_actions_errors()}
  def describe_update_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUpdateActions", input, options)
  end

  @doc """
  Returns a list of user groups.
  """
  @spec describe_user_groups(map(), describe_user_groups_message(), list()) ::
          {:ok, describe_user_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_groups_errors()}
  def describe_user_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserGroups", input, options)
  end

  @doc """
  Returns a list of users.
  """
  @spec describe_users(map(), describe_users_message(), list()) ::
          {:ok, describe_users_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_users_errors()}
  def describe_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUsers", input, options)
  end

  @doc """
  Remove a secondary cluster from the Global datastore using the Global datastore
  name.

  The secondary cluster will no longer receive updates from the primary cluster,
  but will
  remain as a standalone cluster in that Amazon region.
  """
  @spec disassociate_global_replication_group(
          map(),
          disassociate_global_replication_group_message(),
          list()
        ) ::
          {:ok, disassociate_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_global_replication_group_errors()}
  def disassociate_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateGlobalReplicationGroup", input, options)
  end

  @doc """
  Provides the functionality to export the serverless cache snapshot data to
  Amazon S3.

  Available for Valkey and Redis OSS only.
  """
  @spec export_serverless_cache_snapshot(
          map(),
          export_serverless_cache_snapshot_request(),
          list()
        ) ::
          {:ok, export_serverless_cache_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_serverless_cache_snapshot_errors()}
  def export_serverless_cache_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportServerlessCacheSnapshot", input, options)
  end

  @doc """
  Used to failover the primary region to a secondary region.

  The secondary region will
  become primary, and all other clusters will become secondary.
  """
  @spec failover_global_replication_group(
          map(),
          failover_global_replication_group_message(),
          list()
        ) ::
          {:ok, failover_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, failover_global_replication_group_errors()}
  def failover_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "FailoverGlobalReplicationGroup", input, options)
  end

  @doc """
  Increase the number of node groups in the Global datastore
  """
  @spec increase_node_groups_in_global_replication_group(
          map(),
          increase_node_groups_in_global_replication_group_message(),
          list()
        ) ::
          {:ok, increase_node_groups_in_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, increase_node_groups_in_global_replication_group_errors()}
  def increase_node_groups_in_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "IncreaseNodeGroupsInGlobalReplicationGroup",
      input,
      options
    )
  end

  @doc """
  Dynamically increases the number of replicas in a Valkey or Redis OSS (cluster
  mode disabled)
  replication group or the number of replica nodes in one or more node groups
  (shards) of
  a Valkey or Redis OSS (cluster mode enabled) replication group.

  This operation is performed with no
  cluster down time.
  """
  @spec increase_replica_count(map(), increase_replica_count_message(), list()) ::
          {:ok, increase_replica_count_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, increase_replica_count_errors()}
  def increase_replica_count(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "IncreaseReplicaCount", input, options)
  end

  @doc """
  Lists all available node types that you can scale with your cluster's
  replication
  group's current node type.

  When you use the `ModifyCacheCluster` or
  `ModifyReplicationGroup` operations to scale your cluster or replication
  group, the value of the `CacheNodeType` parameter must be one of the node
  types returned by this operation.
  """
  @spec list_allowed_node_type_modifications(
          map(),
          list_allowed_node_type_modifications_message(),
          list()
        ) ::
          {:ok, allowed_node_type_modifications_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_allowed_node_type_modifications_errors()}
  def list_allowed_node_type_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAllowedNodeTypeModifications", input, options)
  end

  @doc """
  Lists all tags currently on a named resource.

  A tag is a key-value pair where the key and value are case-sensitive. You can
  use
  tags to categorize and track all your ElastiCache resources, with the exception
  of
  global replication group. When you add or remove tags on replication groups,
  those
  actions will be replicated to all nodes in the replication group. For more
  information,
  see [Resource-level permissions](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html).

  If the cluster is not in the *available* state,
  `ListTagsForResource` returns an error.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_message(), list()) ::
          {:ok, tag_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the settings for a cluster.

  You can use this operation to change one or more
  cluster configuration parameters by specifying the parameters and the new
  values.
  """
  @spec modify_cache_cluster(map(), modify_cache_cluster_message(), list()) ::
          {:ok, modify_cache_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cache_cluster_errors()}
  def modify_cache_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCacheCluster", input, options)
  end

  @doc """
  Modifies the parameters of a cache parameter group.

  You can modify up to 20 parameters
  in a single request by submitting a list parameter name and value pairs.
  """
  @spec modify_cache_parameter_group(map(), modify_cache_parameter_group_message(), list()) ::
          {:ok, cache_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cache_parameter_group_errors()}
  def modify_cache_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCacheParameterGroup", input, options)
  end

  @doc """
  Modifies an existing cache subnet group.
  """
  @spec modify_cache_subnet_group(map(), modify_cache_subnet_group_message(), list()) ::
          {:ok, modify_cache_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_cache_subnet_group_errors()}
  def modify_cache_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCacheSubnetGroup", input, options)
  end

  @doc """
  Modifies the settings for a Global datastore.
  """
  @spec modify_global_replication_group(map(), modify_global_replication_group_message(), list()) ::
          {:ok, modify_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_global_replication_group_errors()}
  def modify_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyGlobalReplicationGroup", input, options)
  end

  @doc """
  Modifies the settings for a replication group.

  This is limited to Valkey and Redis OSS 7 and above.

    *

  [Scaling for Valkey or Redis OSS (cluster mode enabled)](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/scaling-redis-cluster-mode-enabled.html)
  in
  the ElastiCache User Guide

    *

  [ModifyReplicationGroupShardConfiguration](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html)
  in the ElastiCache API
  Reference

  This operation is valid for Valkey or Redis OSS only.
  """
  @spec modify_replication_group(map(), modify_replication_group_message(), list()) ::
          {:ok, modify_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_replication_group_errors()}
  def modify_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReplicationGroup", input, options)
  end

  @doc """
  Modifies a replication group's shards (node groups) by allowing you to add
  shards,
  remove shards, or rebalance the keyspaces among existing shards.
  """
  @spec modify_replication_group_shard_configuration(
          map(),
          modify_replication_group_shard_configuration_message(),
          list()
        ) ::
          {:ok, modify_replication_group_shard_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_replication_group_shard_configuration_errors()}
  def modify_replication_group_shard_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReplicationGroupShardConfiguration", input, options)
  end

  @doc """
  This API modifies the attributes of a serverless cache.
  """
  @spec modify_serverless_cache(map(), modify_serverless_cache_request(), list()) ::
          {:ok, modify_serverless_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_serverless_cache_errors()}
  def modify_serverless_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyServerlessCache", input, options)
  end

  @doc """
  Changes user password(s) and/or access string.
  """
  @spec modify_user(map(), modify_user_message(), list()) ::
          {:ok, user(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_user_errors()}
  def modify_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyUser", input, options)
  end

  @doc """
  Changes the list of users that belong to the user group.
  """
  @spec modify_user_group(map(), modify_user_group_message(), list()) ::
          {:ok, user_group(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_user_group_errors()}
  def modify_user_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyUserGroup", input, options)
  end

  @doc """
  Allows you to purchase a reserved cache node offering.

  Reserved nodes are not eligible
  for cancellation and are non-refundable. For more information, see [Managing Costs with Reserved
  Nodes](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/reserved-nodes.html).
  """
  @spec purchase_reserved_cache_nodes_offering(
          map(),
          purchase_reserved_cache_nodes_offering_message(),
          list()
        ) ::
          {:ok, purchase_reserved_cache_nodes_offering_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, purchase_reserved_cache_nodes_offering_errors()}
  def purchase_reserved_cache_nodes_offering(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseReservedCacheNodesOffering", input, options)
  end

  @doc """
  Redistribute slots to ensure uniform distribution across existing shards in the
  cluster.
  """
  @spec rebalance_slots_in_global_replication_group(
          map(),
          rebalance_slots_in_global_replication_group_message(),
          list()
        ) ::
          {:ok, rebalance_slots_in_global_replication_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rebalance_slots_in_global_replication_group_errors()}
  def rebalance_slots_in_global_replication_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebalanceSlotsInGlobalReplicationGroup", input, options)
  end

  @doc """
  Reboots some, or all, of the cache nodes within a provisioned cluster.

  This operation
  applies any modified cache parameter groups to the cluster. The reboot operation
  takes
  place as soon as possible, and results in a momentary outage to the cluster.
  During the
  reboot, the cluster status is set to REBOOTING.

  The reboot causes the contents of the cache (for each cache node being rebooted)
  to be
  lost.

  When the reboot is complete, a cluster event is created.

  Rebooting a cluster is currently supported on Memcached, Valkey and Redis OSS
  (cluster mode
  disabled) clusters. Rebooting is not supported on Valkey or Redis OSS (cluster
  mode enabled)
  clusters.

  If you make changes to parameters that require a Valkey or Redis OSS (cluster
  mode enabled) cluster
  reboot for the changes to be applied, see [Rebooting a Cluster](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/nodes.rebooting.html)
  for an alternate process.
  """
  @spec reboot_cache_cluster(map(), reboot_cache_cluster_message(), list()) ::
          {:ok, reboot_cache_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_cache_cluster_errors()}
  def reboot_cache_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootCacheCluster", input, options)
  end

  @doc """
  Removes the tags identified by the `TagKeys` list from the named resource.

  A tag is a key-value pair where the key and value are case-sensitive. You can
  use tags
  to categorize and track all your ElastiCache resources, with the exception of
  global
  replication group. When you add or remove tags on replication groups, those
  actions will
  be replicated to all nodes in the replication group. For more information, see
  [Resource-level permissions](http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/IAM.ResourceLevelPermissions.html).
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_message(), list()) ::
          {:ok, tag_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a cache parameter group to the engine or system
  default
  value.

  You can reset specific parameters by submitting a list of parameter names. To
  reset the entire cache parameter group, specify the `ResetAllParameters` and
  `CacheParameterGroupName` parameters.
  """
  @spec reset_cache_parameter_group(map(), reset_cache_parameter_group_message(), list()) ::
          {:ok, cache_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_cache_parameter_group_errors()}
  def reset_cache_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetCacheParameterGroup", input, options)
  end

  @doc """
  Revokes ingress from a cache security group.

  Use this operation to disallow access
  from an Amazon EC2 security group that had been previously authorized.
  """
  @spec revoke_cache_security_group_ingress(
          map(),
          revoke_cache_security_group_ingress_message(),
          list()
        ) ::
          {:ok, revoke_cache_security_group_ingress_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_cache_security_group_ingress_errors()}
  def revoke_cache_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeCacheSecurityGroupIngress", input, options)
  end

  @doc """
  Start the migration of data.
  """
  @spec start_migration(map(), start_migration_message(), list()) ::
          {:ok, start_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_migration_errors()}
  def start_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMigration", input, options)
  end

  @doc """
  Represents the input of a `TestFailover` operation which tests automatic
  failover on a specified node group (called shard in the console) in a
  replication group
  (called cluster in the console).

  This API is designed for testing the behavior of your application in case of
  ElastiCache failover. It is not designed to be an operational tool for
  initiating a
  failover to overcome a problem you may have with the cluster. Moreover, in
  certain
  conditions such as large-scale operational events, Amazon may block this API.

  ## Note the following

    *
  A customer can use this operation to test automatic failover on up to 15 shards
  (called node groups in the ElastiCache API and Amazon CLI) in any rolling
  24-hour period.

    *
  If calling this operation on shards in different clusters (called replication
  groups in the API and CLI), the calls can be made concurrently.

    *
  If calling this operation multiple times on different shards in the same Valkey
  or Redis OSS (cluster mode enabled) replication group, the first node
  replacement must
  complete before a subsequent call can be made.

    *
  To determine whether the node replacement is complete you can check Events
  using the Amazon ElastiCache console, the Amazon CLI, or the ElastiCache API.
  Look for the following automatic failover related events, listed here in order
  of occurrance:

      1.
  Replication group message:

  ```
  Test Failover API called for node
  group
  ```

      2.
  Cache cluster message:

  ```
  Failover from primary node
  to replica node
  completed
  ```

      3.
  Replication group message:

  ```
  Failover from primary node
  to replica node
  completed
  ```

      4.
  Cache cluster message:

  ```
  Recovering cache nodes

  ```

      5.
  Cache cluster message:

  ```
  Finished recovery for cache nodes

  ```

  For more information see:

      *

  [Viewing ElastiCache
  Events](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ECEvents.Viewing.html)
  in the *ElastiCache User
  Guide*

      *

  [DescribeEvents](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html) in the ElastiCache API Reference

  Also see, [Testing
  Multi-AZ
  ](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html#auto-failover-test)
  in the *ElastiCache User Guide*.
  """
  @spec test_failover(map(), test_failover_message(), list()) ::
          {:ok, test_failover_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_failover_errors()}
  def test_failover(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestFailover", input, options)
  end

  @doc """
  Async API to test connection between source and target replication group.
  """
  @spec test_migration(map(), test_migration_message(), list()) ::
          {:ok, test_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_migration_errors()}
  def test_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestMigration", input, options)
  end
end
