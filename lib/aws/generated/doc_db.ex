# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DocDB do
  @moduledoc """
  Amazon DocumentDB is a fast, reliable, and fully managed database service.

  Amazon DocumentDB makes it easy to set up, operate, and scale MongoDB-compatible
  databases in the cloud.
  With Amazon DocumentDB, you can run the same application code and use the same
  drivers and tools that you use with MongoDB.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      restore_db_cluster_from_snapshot_message() :: %{
        optional("AvailabilityZones") => list(String.t() | atom()),
        optional("DBClusterParameterGroupName") => String.t() | atom(),
        optional("DBSubnetGroupName") => String.t() | atom(),
        optional("DeletionProtection") => boolean(),
        optional("EnableCloudwatchLogsExports") => list(String.t() | atom()),
        optional("EngineVersion") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("Port") => integer(),
        optional("StorageType") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VpcSecurityGroupIds") => list(String.t() | atom()),
        required("DBClusterIdentifier") => String.t() | atom(),
        required("Engine") => String.t() | atom(),
        required("SnapshotIdentifier") => String.t() | atom()
      }
      
  """
  @type restore_db_cluster_from_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_subnet_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_db_cluster_message() :: %{
        required("DBClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type start_db_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_cluster_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_subscriptions_message() :: %{
        "EventSubscriptionsList" => list(event_subscription()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type event_subscriptions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type delete_db_cluster_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_maintenance_action() :: %{
        "Action" => String.t() | atom(),
        "AutoAppliedAfterDate" => non_neg_integer(),
        "CurrentApplyDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ForcedApplyDate" => non_neg_integer(),
        "OptInStatus" => String.t() | atom()
      }
      
  """
  @type pending_maintenance_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_parameter_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      apply_pending_maintenance_action_message() :: %{
        required("ApplyAction") => String.t() | atom(),
        required("OptInType") => String.t() | atom(),
        required("ResourceIdentifier") => String.t() | atom()
      }
      
  """
  @type apply_pending_maintenance_action_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet_already_in_use() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type subnet_already_in_use() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot() :: %{
        "AvailabilityZones" => list(String.t() | atom()),
        "ClusterCreateTime" => non_neg_integer(),
        "DBClusterIdentifier" => String.t() | atom(),
        "DBClusterSnapshotArn" => String.t() | atom(),
        "DBClusterSnapshotIdentifier" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "MasterUsername" => String.t() | atom(),
        "PercentProgress" => integer(),
        "Port" => integer(),
        "SnapshotCreateTime" => non_neg_integer(),
        "SnapshotType" => String.t() | atom(),
        "SourceDBClusterSnapshotArn" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StorageEncrypted" => boolean(),
        "StorageType" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type db_cluster_snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type delete_db_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type snapshot_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_subnet_group_message() :: %{
        optional("DBSubnetGroupDescription") => String.t() | atom(),
        required("DBSubnetGroupName") => String.t() | atom(),
        required("SubnetIds") => list(String.t() | atom())
      }
      
  """
  @type modify_db_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_message() :: %{
        "DBSubnetGroups" => list(db_subnet_group()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type db_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_parameters_message() :: %{
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("Source") => String.t() | atom(),
        required("DBClusterParameterGroupName") => String.t() | atom()
      }
      
  """
  @type describe_db_cluster_parameters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_pending_maintenance_actions() :: %{
        "PendingMaintenanceActionDetails" => list(pending_maintenance_action()),
        "ResourceIdentifier" => String.t() | atom()
      }
      
  """
  @type resource_pending_maintenance_actions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_categories_map() :: %{
        "EventCategories" => list(String.t() | atom()),
        "SourceType" => String.t() | atom()
      }
      
  """
  @type event_categories_map() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type delete_global_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group_name_message() :: %{
        "DBClusterParameterGroupName" => String.t() | atom()
      }
      
  """
  @type db_cluster_parameter_group_name_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type availability_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_snapshot_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_instances_message() :: %{
        optional("DBInstanceIdentifier") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_instances_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      shared_snapshot_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type shared_snapshot_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_parameter_group_message() :: %{
        optional("Tags") => list(tag()),
        required("DBClusterParameterGroupName") => String.t() | atom(),
        required("DBParameterGroupFamily") => String.t() | atom(),
        required("Description") => String.t() | atom()
      }
      
  """
  @type create_db_cluster_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_parameter_group_result() :: %{
        "DBClusterParameterGroup" => db_cluster_parameter_group()
      }
      
  """
  @type copy_db_cluster_parameter_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_message() :: %{
        optional("Enabled") => boolean(),
        optional("EventCategories") => list(String.t() | atom()),
        optional("SnsTopicArn") => String.t() | atom(),
        optional("SourceType") => String.t() | atom(),
        required("SubscriptionName") => String.t() | atom()
      }
      
  """
  @type modify_event_subscription_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_parameter_group_message() :: %{
        optional("Tags") => list(tag()),
        required("SourceDBClusterParameterGroupIdentifier") => String.t() | atom(),
        required("TargetDBClusterParameterGroupDescription") => String.t() | atom(),
        required("TargetDBClusterParameterGroupIdentifier") => String.t() | atom()
      }
      
  """
  @type copy_db_cluster_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_pending_maintenance_actions_message() :: %{
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("ResourceIdentifier") => String.t() | atom()
      }
      
  """
  @type describe_pending_maintenance_actions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_orderable_db_instance_options_message() :: %{
        optional("DBInstanceClass") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("LicenseModel") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("Vpc") => boolean(),
        required("Engine") => String.t() | atom()
      }
      
  """
  @type describe_orderable_db_instance_options_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_cloudwatch_logs_exports() :: %{
        "LogTypesToDisable" => list(String.t() | atom()),
        "LogTypesToEnable" => list(String.t() | atom())
      }
      
  """
  @type pending_cloudwatch_logs_exports() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engine_defaults() :: %{
        "DBParameterGroupFamily" => String.t() | atom(),
        "Marker" => String.t() | atom(),
        "Parameters" => list(parameter())
      }
      
  """
  @type engine_defaults() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_subnet_group_result() :: %{
        "DBSubnetGroup" => db_subnet_group()
      }
      
  """
  @type create_db_subnet_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      switchover_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type switchover_global_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloudwatch_logs_export_configuration() :: %{
        "DisableLogTypes" => list(String.t() | atom()),
        "EnableLogTypes" => list(String.t() | atom())
      }
      
  """
  @type cloudwatch_logs_export_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_instance_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_instance_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      insufficient_db_instance_capacity_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type insufficient_db_instance_capacity_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_role() :: %{
        "RoleArn" => String.t() | atom(),
        "Status" => String.t() | atom()
      }
      
  """
  @type db_cluster_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type modify_db_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_subscription() :: %{
        "CustSubscriptionId" => String.t() | atom(),
        "CustomerAwsId" => String.t() | atom(),
        "Enabled" => boolean(),
        "EventCategoriesList" => list(String.t() | atom()),
        "EventSubscriptionArn" => String.t() | atom(),
        "SnsTopicArn" => String.t() | atom(),
        "SourceIdsList" => list(String.t() | atom()),
        "SourceType" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "SubscriptionCreationTime" => String.t() | atom()
      }
      
  """
  @type event_subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_cluster_member() :: %{
        "DBClusterArn" => String.t() | atom(),
        "IsWriter" => boolean(),
        "Readers" => list(String.t() | atom())
      }
      
  """
  @type global_cluster_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_snapshot_attribute_message() :: %{
        optional("ValuesToAdd") => list(String.t() | atom()),
        optional("ValuesToRemove") => list(String.t() | atom()),
        required("AttributeName") => String.t() | atom(),
        required("DBClusterSnapshotIdentifier") => String.t() | atom()
      }
      
  """
  @type modify_db_cluster_snapshot_attribute_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_source_identifier_to_subscription_message() :: %{
        required("SourceIdentifier") => String.t() | atom(),
        required("SubscriptionName") => String.t() | atom()
      }
      
  """
  @type add_source_identifier_to_subscription_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_restore_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_restore_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_certificates_message() :: %{
        optional("CertificateIdentifier") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_certificates_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_to_point_in_time_message() :: %{
        optional("DBSubnetGroupName") => String.t() | atom(),
        optional("DeletionProtection") => boolean(),
        optional("EnableCloudwatchLogsExports") => list(String.t() | atom()),
        optional("KmsKeyId") => String.t() | atom(),
        optional("Port") => integer(),
        optional("RestoreToTime") => non_neg_integer(),
        optional("RestoreType") => String.t() | atom(),
        optional("StorageType") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("UseLatestRestorableTime") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t() | atom()),
        required("DBClusterIdentifier") => String.t() | atom(),
        required("SourceDBClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type restore_db_cluster_to_point_in_time_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_subnet_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_subnet_group_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subnet() :: %{
        "SubnetAvailabilityZone" => availability_zone(),
        "SubnetIdentifier" => String.t() | atom(),
        "SubnetStatus" => String.t() | atom()
      }
      
  """
  @type subnet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_source_identifier_from_subscription_message() :: %{
        required("SourceIdentifier") => String.t() | atom(),
        required("SubscriptionName") => String.t() | atom()
      }
      
  """
  @type remove_source_identifier_from_subscription_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_message() :: %{
        "DBClusterSnapshots" => list(db_cluster_snapshot()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type db_cluster_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_subnet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_message() :: %{
        optional("Filters") => list(filter()),
        required("ResourceName") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_snapshots_message() :: %{
        optional("DBClusterIdentifier") => String.t() | atom(),
        optional("DBClusterSnapshotIdentifier") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("IncludePublic") => boolean(),
        optional("IncludeShared") => boolean(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("SnapshotType") => String.t() | atom()
      }
      
  """
  @type describe_db_cluster_snapshots_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_message() :: %{
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("AvailabilityZone") => String.t() | atom(),
        optional("CACertificateIdentifier") => String.t() | atom(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("PerformanceInsightsKMSKeyId") => String.t() | atom(),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("PromotionTier") => integer(),
        optional("Tags") => list(tag()),
        required("DBClusterIdentifier") => String.t() | atom(),
        required("DBInstanceClass") => String.t() | atom(),
        required("DBInstanceIdentifier") => String.t() | atom(),
        required("Engine") => String.t() | atom()
      }
      
  """
  @type create_db_instance_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type create_db_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_to_point_in_time_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type restore_db_cluster_to_point_in_time_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      storage_type_not_supported_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type storage_type_not_supported_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_snapshot_attributes_result() :: %{
        "DBClusterSnapshotAttributesResult" => db_cluster_snapshot_attributes_result()
      }
      
  """
  @type describe_db_cluster_snapshot_attributes_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_subnet_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_subnet_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_instance() :: %{
        "AutoMinorVersionUpgrade" => boolean(),
        "AvailabilityZone" => String.t() | atom(),
        "BackupRetentionPeriod" => integer(),
        "CACertificateIdentifier" => String.t() | atom(),
        "CertificateDetails" => certificate_details(),
        "CopyTagsToSnapshot" => boolean(),
        "DBClusterIdentifier" => String.t() | atom(),
        "DBInstanceArn" => String.t() | atom(),
        "DBInstanceClass" => String.t() | atom(),
        "DBInstanceIdentifier" => String.t() | atom(),
        "DBInstanceStatus" => String.t() | atom(),
        "DBSubnetGroup" => db_subnet_group(),
        "DbiResourceId" => String.t() | atom(),
        "EnabledCloudwatchLogsExports" => list(String.t() | atom()),
        "Endpoint" => endpoint(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "InstanceCreateTime" => non_neg_integer(),
        "KmsKeyId" => String.t() | atom(),
        "LatestRestorableTime" => non_neg_integer(),
        "PendingModifiedValues" => pending_modified_values(),
        "PerformanceInsightsEnabled" => boolean(),
        "PerformanceInsightsKMSKeyId" => String.t() | atom(),
        "PreferredBackupWindow" => String.t() | atom(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "PromotionTier" => integer(),
        "PubliclyAccessible" => boolean(),
        "StatusInfos" => list(db_instance_status_info()),
        "StorageEncrypted" => boolean(),
        "VpcSecurityGroups" => list(vpc_security_group_membership())
      }
      
  """
  @type db_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_cluster_parameters_result() :: %{
        "EngineDefaults" => engine_defaults()
      }
      
  """
  @type describe_engine_default_cluster_parameters_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type copy_db_cluster_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscription_already_exist_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type subscription_already_exist_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_parameter_group_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_message() :: %{
        "DBClusters" => list(db_cluster()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type db_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_subnet_group_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type failover_global_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_global_cluster_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_global_cluster_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_engine_versions_message() :: %{
        optional("DBParameterGroupFamily") => String.t() | atom(),
        optional("DefaultOnly") => boolean(),
        optional("Engine") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("ListSupportedCharacterSets") => boolean(),
        optional("ListSupportedTimezones") => boolean(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_engine_versions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_message() :: %{
        optional("FinalDBSnapshotIdentifier") => String.t() | atom(),
        optional("SkipFinalSnapshot") => boolean(),
        required("DBClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_db_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type reboot_db_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_source_identifier_to_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type add_source_identifier_to_subscription_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cluster_master_user_secret() :: %{
        "KmsKeyId" => String.t() | atom(),
        "SecretArn" => String.t() | atom(),
        "SecretStatus" => String.t() | atom()
      }
      
  """
  @type cluster_master_user_secret() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_parameter_group_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_message() :: %{
        required("DBInstanceIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_db_instance_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_vpc_network_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_vpc_network_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_event_subscription_message() :: %{
        optional("Enabled") => boolean(),
        optional("EventCategories") => list(String.t() | atom()),
        optional("SourceIds") => list(String.t() | atom()),
        optional("SourceType") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("SnsTopicArn") => String.t() | atom(),
        required("SubscriptionName") => String.t() | atom()
      }
      
  """
  @type create_event_subscription_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_security_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_security_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type modify_db_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      orderable_db_instance_options_message() :: %{
        "Marker" => String.t() | atom(),
        "OrderableDBInstanceOptions" => list(orderable_db_instance_option())
      }
      
  """
  @type orderable_db_instance_options_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_event_subscriptions_message() :: %{
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        optional("SubscriptionName") => String.t() | atom()
      }
      
  """
  @type describe_event_subscriptions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_cluster_snapshot_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_snapshot_attribute_result() :: %{
        "DBClusterSnapshotAttributesResult" => db_cluster_snapshot_attributes_result()
      }
      
  """
  @type modify_db_cluster_snapshot_attribute_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_attribute() :: %{
        "AttributeName" => String.t() | atom(),
        "AttributeValues" => list(String.t() | atom())
      }
      
  """
  @type db_cluster_snapshot_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_does_not_cover_enough_a_zs() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_subnet_group_does_not_cover_enough_a_zs() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "BackupRetentionPeriod" => integer(),
        "CACertificateIdentifier" => String.t() | atom(),
        "DBInstanceClass" => String.t() | atom(),
        "DBInstanceIdentifier" => String.t() | atom(),
        "DBSubnetGroupName" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "Iops" => integer(),
        "LicenseModel" => String.t() | atom(),
        "MasterUserPassword" => String.t() | atom(),
        "MultiAZ" => boolean(),
        "PendingCloudwatchLogsExports" => pending_cloudwatch_logs_exports(),
        "Port" => integer(),
        "StorageType" => String.t() | atom()
      }
      
  """
  @type pending_modified_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      orderable_db_instance_option() :: %{
        "AvailabilityZones" => list(availability_zone()),
        "DBInstanceClass" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "LicenseModel" => String.t() | atom(),
        "StorageType" => String.t() | atom(),
        "Vpc" => boolean()
      }
      
  """
  @type orderable_db_instance_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_groups_message() :: %{
        "DBClusterParameterGroups" => list(db_cluster_parameter_group()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type db_cluster_parameter_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_parameter_groups_message() :: %{
        optional("DBClusterParameterGroupName") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_cluster_parameter_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorization_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type authorization_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_instance_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_instance_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_snapshot_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_cluster_snapshot_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_snapshot_message() :: %{
        optional("CopyTags") => boolean(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("PreSignedUrl") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("SourceDBClusterSnapshotIdentifier") => String.t() | atom(),
        required("TargetDBClusterSnapshotIdentifier") => String.t() | atom()
      }
      
  """
  @type copy_db_cluster_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_cluster() :: %{
        "DatabaseName" => String.t() | atom(),
        "DeletionProtection" => boolean(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "GlobalClusterArn" => String.t() | atom(),
        "GlobalClusterIdentifier" => String.t() | atom(),
        "GlobalClusterMembers" => list(global_cluster_member()),
        "GlobalClusterResourceId" => String.t() | atom(),
        "Status" => String.t() | atom(),
        "StorageEncrypted" => boolean()
      }
      
  """
  @type global_cluster() :: %{(String.t() | atom()) => any()}

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
      
      create_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type create_global_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_message() :: %{
        "Certificates" => list(certificate()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type certificate_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_upgrade_dependency_failure_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_upgrade_dependency_failure_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_clusters_message() :: %{
        "GlobalClusters" => list(global_cluster()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type global_clusters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type certificate_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type modify_global_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_from_global_cluster_message() :: %{
        required("DbClusterIdentifier") => String.t() | atom(),
        required("GlobalClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type remove_from_global_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_db_instance_message() :: %{
        optional("ForceFailover") => boolean(),
        required("DBInstanceIdentifier") => String.t() | atom()
      }
      
  """
  @type reboot_db_instance_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type source_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_engine_version_message() :: %{
        "DBEngineVersions" => list(db_engine_version()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type db_engine_version_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_global_cluster_message() :: %{
        optional("DeletionProtection") => boolean(),
        optional("NewGlobalClusterIdentifier") => String.t() | atom(),
        required("GlobalClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type modify_global_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_engine_version() :: %{
        "DBEngineDescription" => String.t() | atom(),
        "DBEngineVersionDescription" => String.t() | atom(),
        "DBParameterGroupFamily" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "ExportableLogTypes" => list(String.t() | atom()),
        "SupportedCACertificateIdentifiers" => list(String.t() | atom()),
        "SupportsCertificateRotationWithoutRestart" => boolean(),
        "SupportsLogExportsToCloudwatchLogs" => boolean(),
        "ValidUpgradeTarget" => list(upgrade_target())
      }
      
  """
  @type db_engine_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "AllowedValues" => String.t() | atom(),
        "ApplyMethod" => list(any()),
        "ApplyType" => String.t() | atom(),
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
      
      db_subnet_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_subnet_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_event_subscription_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_event_subscription_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_snapshot_message() :: %{
        optional("Tags") => list(tag()),
        required("DBClusterIdentifier") => String.t() | atom(),
        required("DBClusterSnapshotIdentifier") => String.t() | atom()
      }
      
  """
  @type create_db_cluster_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_parameter_group_message() :: %{
        required("DBClusterParameterGroupName") => String.t() | atom()
      }
      
  """
  @type delete_db_cluster_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_clusters_message() :: %{
        optional("DBClusterIdentifier") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_clusters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      switchover_global_cluster_message() :: %{
        required("GlobalClusterIdentifier") => String.t() | atom(),
        required("TargetDbClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type switchover_global_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_parameter_group_message() :: %{
        required("DBClusterParameterGroupName") => String.t() | atom(),
        required("Parameters") => list(parameter())
      }
      
  """
  @type modify_db_cluster_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscription_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type subscription_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_message() :: %{
        optional("AvailabilityZones") => list(String.t() | atom()),
        optional("BackupRetentionPeriod") => integer(),
        optional("DBClusterParameterGroupName") => String.t() | atom(),
        optional("DBSubnetGroupName") => String.t() | atom(),
        optional("DeletionProtection") => boolean(),
        optional("EnableCloudwatchLogsExports") => list(String.t() | atom()),
        optional("EngineVersion") => String.t() | atom(),
        optional("GlobalClusterIdentifier") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("ManageMasterUserPassword") => boolean(),
        optional("MasterUserPassword") => String.t() | atom(),
        optional("MasterUserSecretKmsKeyId") => String.t() | atom(),
        optional("MasterUsername") => String.t() | atom(),
        optional("Port") => integer(),
        optional("PreSignedUrl") => String.t() | atom(),
        optional("PreferredBackupWindow") => String.t() | atom(),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("StorageEncrypted") => boolean(),
        optional("StorageType") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VpcSecurityGroupIds") => list(String.t() | atom()),
        required("DBClusterIdentifier") => String.t() | atom(),
        required("Engine") => String.t() | atom()
      }
      
  """
  @type create_db_cluster_message() :: %{(String.t() | atom()) => any()}

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
      
      instance_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type instance_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_global_cluster_message() :: %{
        optional("DatabaseName") => String.t() | atom(),
        optional("DeletionProtection") => boolean(),
        optional("Engine") => String.t() | atom(),
        optional("EngineVersion") => String.t() | atom(),
        optional("SourceDBClusterIdentifier") => String.t() | atom(),
        optional("StorageEncrypted") => boolean(),
        required("GlobalClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type create_global_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      storage_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type storage_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_snapshot_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_snapshot_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type create_db_cluster_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t() | atom(),
        "HostedZoneId" => String.t() | atom(),
        "Port" => integer()
      }
      
  """
  @type endpoint() :: %{(String.t() | atom()) => any()}

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
      
      db_snapshot_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_snapshot_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_cluster_parameter_group_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_db_cluster_parameter_group_message() :: %{
        optional("Parameters") => list(parameter()),
        optional("ResetAllParameters") => boolean(),
        required("DBClusterParameterGroupName") => String.t() | atom()
      }
      
  """
  @type reset_db_cluster_parameter_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_global_cluster_message() :: %{
        required("GlobalClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_global_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_message() :: %{
        required("SubscriptionName") => String.t() | atom()
      }
      
  """
  @type delete_event_subscription_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscription_category_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type subscription_category_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate() :: %{
        "CertificateArn" => String.t() | atom(),
        "CertificateIdentifier" => String.t() | atom(),
        "CertificateType" => String.t() | atom(),
        "Thumbprint" => String.t() | atom(),
        "ValidFrom" => non_neg_integer(),
        "ValidTill" => non_neg_integer()
      }
      
  """
  @type certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_key_not_accessible_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type kms_key_not_accessible_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_parameter_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_parameter_group_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s_n_s_invalid_topic_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type s_n_s_invalid_topic_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_cluster_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_parameter_group_result() :: %{
        "DBClusterParameterGroup" => db_cluster_parameter_group()
      }
      
  """
  @type create_db_cluster_parameter_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Date" => non_neg_integer(),
        "EventCategories" => list(String.t() | atom()),
        "Message" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "SourceIdentifier" => String.t() | atom(),
        "SourceType" => list(any())
      }
      
  """
  @type event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type create_event_subscription_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_instance_message() :: %{
        "DBInstances" => list(db_instance()),
        "Marker" => String.t() | atom()
      }
      
  """
  @type db_instance_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_cluster_parameters_message() :: %{
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer(),
        required("DBParameterGroupFamily") => String.t() | atom()
      }
      
  """
  @type describe_engine_default_cluster_parameters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_list_message() :: %{
        "TagList" => list(tag())
      }
      
  """
  @type tag_list_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster() :: %{
        "Status" => String.t() | atom(),
        "DBClusterParameterGroup" => String.t() | atom(),
        "LatestRestorableTime" => non_neg_integer(),
        "MasterUserSecret" => cluster_master_user_secret(),
        "Engine" => String.t() | atom(),
        "VpcSecurityGroups" => list(vpc_security_group_membership()),
        "MultiAZ" => boolean(),
        "EarliestRestorableTime" => non_neg_integer(),
        "PreferredMaintenanceWindow" => String.t() | atom(),
        "CloneGroupId" => String.t() | atom(),
        "PreferredBackupWindow" => String.t() | atom(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t() | atom(),
        "ReadReplicaIdentifiers" => list(String.t() | atom()),
        "EnabledCloudwatchLogsExports" => list(String.t() | atom()),
        "ClusterCreateTime" => non_neg_integer(),
        "PercentProgress" => String.t() | atom(),
        "ReplicationSourceIdentifier" => String.t() | atom(),
        "Port" => integer(),
        "DBClusterArn" => String.t() | atom(),
        "AvailabilityZones" => list(String.t() | atom()),
        "MasterUsername" => String.t() | atom(),
        "DbClusterResourceId" => String.t() | atom(),
        "DBClusterMembers" => list(db_cluster_member()),
        "ReaderEndpoint" => String.t() | atom(),
        "DBClusterIdentifier" => String.t() | atom(),
        "DeletionProtection" => boolean(),
        "StorageType" => String.t() | atom(),
        "DBSubnetGroup" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "HostedZoneId" => String.t() | atom(),
        "AssociatedRoles" => list(db_cluster_role()),
        "StorageEncrypted" => boolean(),
        "Endpoint" => String.t() | atom()
      }
      
  """
  @type db_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s_n_s_topic_arn_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type s_n_s_topic_arn_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_source_identifier_from_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type remove_source_identifier_from_subscription_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_security_group_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_security_group_state_fault() :: %{(String.t() | atom()) => any()}

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
      
      event_categories_message() :: %{
        "EventCategoriesMapList" => list(event_categories_map())
      }
      
  """
  @type event_categories_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_cluster_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_cluster_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type delete_db_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_subnet_group_message() :: %{
        optional("Tags") => list(tag()),
        required("DBSubnetGroupDescription") => String.t() | atom(),
        required("DBSubnetGroupName") => String.t() | atom(),
        required("SubnetIds") => list(String.t() | atom())
      }
      
  """
  @type create_db_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_from_snapshot_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type restore_db_cluster_from_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      insufficient_db_cluster_capacity_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type insufficient_db_cluster_capacity_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_instance_status_info() :: %{
        "Message" => String.t() | atom(),
        "Normal" => boolean(),
        "Status" => String.t() | atom(),
        "StatusType" => String.t() | atom()
      }
      
  """
  @type db_instance_status_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_global_clusters_message() :: %{
        optional("Filters") => list(filter()),
        optional("GlobalClusterIdentifier") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_global_clusters_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_cluster_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type global_cluster_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_events_message() :: %{
        optional("Duration") => integer(),
        optional("EndTime") => non_neg_integer(),
        optional("EventCategories") => list(String.t() | atom()),
        optional("Filters") => list(filter()),
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
      
      describe_db_cluster_snapshot_attributes_message() :: %{
        required("DBClusterSnapshotIdentifier") => String.t() | atom()
      }
      
  """
  @type describe_db_cluster_snapshot_attributes_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type start_db_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_cluster_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type global_cluster_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_attributes_result() :: %{
        "DBClusterSnapshotAttributes" => list(db_cluster_snapshot_attribute()),
        "DBClusterSnapshotIdentifier" => String.t() | atom()
      }
      
  """
  @type db_cluster_snapshot_attributes_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type modify_event_subscription_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_cluster_already_exists_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type global_cluster_already_exists_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      apply_pending_maintenance_action_result() :: %{
        "ResourcePendingMaintenanceActions" => resource_pending_maintenance_actions()
      }
      
  """
  @type apply_pending_maintenance_action_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upgrade_target() :: %{
        "AutoUpgrade" => boolean(),
        "Description" => String.t() | atom(),
        "Engine" => String.t() | atom(),
        "EngineVersion" => String.t() | atom(),
        "IsMajorVersionUpgrade" => boolean()
      }
      
  """
  @type upgrade_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type delete_event_subscription_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_details() :: %{
        "CAIdentifier" => String.t() | atom(),
        "ValidTill" => non_neg_integer()
      }
      
  """
  @type certificate_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_db_subnet_groups_message() :: %{
        optional("DBSubnetGroupName") => String.t() | atom(),
        optional("Filters") => list(filter()),
        optional("Marker") => String.t() | atom(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_subnet_groups_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_subnet_group_result() :: %{
        "DBSubnetGroup" => db_subnet_group()
      }
      
  """
  @type modify_db_subnet_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group() :: %{
        "DBSubnetGroupArn" => String.t() | atom(),
        "DBSubnetGroupDescription" => String.t() | atom(),
        "DBSubnetGroupName" => String.t() | atom(),
        "SubnetGroupStatus" => String.t() | atom(),
        "Subnets" => list(subnet()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type db_subnet_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_subnet_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_subnet_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_db_cluster_message() :: %{
        optional("DBClusterIdentifier") => String.t() | atom(),
        optional("TargetDBInstanceIdentifier") => String.t() | atom()
      }
      
  """
  @type failover_db_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_subnet_group_message() :: %{
        required("DBSubnetGroupName") => String.t() | atom()
      }
      
  """
  @type delete_db_subnet_group_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_from_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type remove_from_global_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_member() :: %{
        "DBClusterParameterGroupStatus" => String.t() | atom(),
        "DBInstanceIdentifier" => String.t() | atom(),
        "IsClusterWriter" => boolean(),
        "PromotionTier" => integer()
      }
      
  """
  @type db_cluster_member() :: %{(String.t() | atom()) => any()}

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
      
      event_subscription_quota_exceeded_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type event_subscription_quota_exceeded_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_message() :: %{
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("ApplyImmediately") => boolean(),
        optional("BackupRetentionPeriod") => integer(),
        optional("CloudwatchLogsExportConfiguration") => cloudwatch_logs_export_configuration(),
        optional("DBClusterParameterGroupName") => String.t() | atom(),
        optional("DeletionProtection") => boolean(),
        optional("EngineVersion") => String.t() | atom(),
        optional("ManageMasterUserPassword") => boolean(),
        optional("MasterUserPassword") => String.t() | atom(),
        optional("MasterUserSecretKmsKeyId") => String.t() | atom(),
        optional("NewDBClusterIdentifier") => String.t() | atom(),
        optional("Port") => integer(),
        optional("PreferredBackupWindow") => String.t() | atom(),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("RotateMasterUserPassword") => boolean(),
        optional("StorageType") => String.t() | atom(),
        optional("VpcSecurityGroupIds") => list(String.t() | atom()),
        required("DBClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type modify_db_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_event_categories_message() :: %{
        optional("Filters") => list(filter()),
        optional("SourceType") => String.t() | atom()
      }
      
  """
  @type describe_event_categories_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group() :: %{
        "DBClusterParameterGroupArn" => String.t() | atom(),
        "DBClusterParameterGroupName" => String.t() | atom(),
        "DBParameterGroupFamily" => String.t() | atom(),
        "Description" => String.t() | atom()
      }
      
  """
  @type db_cluster_parameter_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_db_cluster_message() :: %{
        required("DBClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type stop_db_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_not_found_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type db_cluster_snapshot_not_found_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s_n_s_no_authorization_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type s_n_s_no_authorization_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_security_group_membership() :: %{
        "Status" => String.t() | atom(),
        "VpcSecurityGroupId" => String.t() | atom()
      }
      
  """
  @type vpc_security_group_membership() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_snapshot_message() :: %{
        required("DBClusterSnapshotIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_db_cluster_snapshot_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type failover_db_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_db_instance_message() :: %{
        optional("ApplyImmediately") => boolean(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("CACertificateIdentifier") => String.t() | atom(),
        optional("CertificateRotationRestart") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DBInstanceClass") => String.t() | atom(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("NewDBInstanceIdentifier") => String.t() | atom(),
        optional("PerformanceInsightsKMSKeyId") => String.t() | atom(),
        optional("PreferredMaintenanceWindow") => String.t() | atom(),
        optional("PromotionTier") => integer(),
        required("DBInstanceIdentifier") => String.t() | atom()
      }
      
  """
  @type modify_db_instance_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type create_db_instance_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_global_cluster_message() :: %{
        optional("AllowDataLoss") => boolean(),
        optional("Switchover") => boolean(),
        required("GlobalClusterIdentifier") => String.t() | atom(),
        required("TargetDbClusterIdentifier") => String.t() | atom()
      }
      
  """
  @type failover_global_cluster_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group_details() :: %{
        "Marker" => String.t() | atom(),
        "Parameters" => list(parameter())
      }
      
  """
  @type db_cluster_parameter_group_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type stop_db_cluster_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_maintenance_actions_message() :: %{
        "Marker" => String.t() | atom(),
        "PendingMaintenanceActions" => list(resource_pending_maintenance_actions())
      }
      
  """
  @type pending_maintenance_actions_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_db_instance_state_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_db_instance_state_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      insufficient_storage_cluster_capacity_fault() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type insufficient_storage_cluster_capacity_fault() :: %{(String.t() | atom()) => any()}

  @type add_source_identifier_to_subscription_errors() ::
          subscription_not_found_fault() | source_not_found_fault()

  @type add_tags_to_resource_errors() ::
          db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | db_instance_not_found_fault()

  @type apply_pending_maintenance_action_errors() ::
          invalid_db_instance_state_fault()
          | invalid_db_cluster_state_fault()
          | resource_not_found_fault()

  @type copy_db_cluster_parameter_group_errors() ::
          db_parameter_group_already_exists_fault()
          | db_parameter_group_quota_exceeded_fault()
          | db_parameter_group_not_found_fault()

  @type copy_db_cluster_snapshot_errors() ::
          db_cluster_snapshot_not_found_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | db_cluster_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type create_db_cluster_errors() ::
          insufficient_storage_cluster_capacity_fault()
          | invalid_db_instance_state_fault()
          | global_cluster_not_found_fault()
          | db_cluster_not_found_fault()
          | db_cluster_already_exists_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | db_cluster_parameter_group_not_found_fault()
          | storage_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | db_instance_not_found_fault()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | invalid_vpc_network_state_fault()
          | invalid_global_cluster_state_fault()
          | invalid_subnet()
          | invalid_db_subnet_group_state_fault()
          | db_cluster_quota_exceeded_fault()

  @type create_db_cluster_parameter_group_errors() ::
          db_parameter_group_already_exists_fault() | db_parameter_group_quota_exceeded_fault()

  @type create_db_cluster_snapshot_errors() ::
          db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | db_cluster_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type create_db_instance_errors() ::
          db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | storage_quota_exceeded_fault()
          | instance_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | authorization_not_found_fault()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type create_db_subnet_group_errors() ::
          db_subnet_group_does_not_cover_enough_a_zs()
          | db_subnet_group_quota_exceeded_fault()
          | db_subnet_quota_exceeded_fault()
          | invalid_subnet()
          | db_subnet_group_already_exists_fault()

  @type create_event_subscription_errors() ::
          s_n_s_no_authorization_fault()
          | event_subscription_quota_exceeded_fault()
          | s_n_s_topic_arn_not_found_fault()
          | s_n_s_invalid_topic_fault()
          | subscription_category_not_found_fault()
          | source_not_found_fault()
          | subscription_already_exist_fault()

  @type create_global_cluster_errors() ::
          global_cluster_already_exists_fault()
          | global_cluster_quota_exceeded_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type delete_db_cluster_errors() ::
          db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | db_cluster_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type delete_db_cluster_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type delete_db_cluster_snapshot_errors() ::
          db_cluster_snapshot_not_found_fault() | invalid_db_cluster_snapshot_state_fault()

  @type delete_db_instance_errors() ::
          invalid_db_instance_state_fault()
          | invalid_db_cluster_state_fault()
          | db_instance_not_found_fault()
          | db_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type delete_db_subnet_group_errors() ::
          invalid_db_subnet_state_fault()
          | db_subnet_group_not_found_fault()
          | invalid_db_subnet_group_state_fault()

  @type delete_event_subscription_errors() ::
          subscription_not_found_fault() | invalid_event_subscription_state_fault()

  @type delete_global_cluster_errors() ::
          global_cluster_not_found_fault() | invalid_global_cluster_state_fault()

  @type describe_certificates_errors() :: certificate_not_found_fault()

  @type describe_db_cluster_parameter_groups_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_cluster_parameters_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_cluster_snapshot_attributes_errors() :: db_cluster_snapshot_not_found_fault()

  @type describe_db_cluster_snapshots_errors() :: db_cluster_snapshot_not_found_fault()

  @type describe_db_clusters_errors() :: db_cluster_not_found_fault()

  @type describe_db_instances_errors() :: db_instance_not_found_fault()

  @type describe_db_subnet_groups_errors() :: db_subnet_group_not_found_fault()

  @type describe_event_subscriptions_errors() :: subscription_not_found_fault()

  @type describe_global_clusters_errors() :: global_cluster_not_found_fault()

  @type describe_pending_maintenance_actions_errors() :: resource_not_found_fault()

  @type failover_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type failover_global_cluster_errors() ::
          global_cluster_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_global_cluster_state_fault()

  @type list_tags_for_resource_errors() ::
          db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | db_instance_not_found_fault()

  @type modify_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | db_cluster_already_exists_fault()
          | invalid_db_security_group_state_fault()
          | invalid_db_cluster_state_fault()
          | db_cluster_parameter_group_not_found_fault()
          | storage_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | invalid_subnet()
          | invalid_db_subnet_group_state_fault()

  @type modify_db_cluster_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type modify_db_cluster_snapshot_attribute_errors() ::
          db_cluster_snapshot_not_found_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | shared_snapshot_quota_exceeded_fault()

  @type modify_db_instance_errors() ::
          invalid_db_instance_state_fault()
          | invalid_db_security_group_state_fault()
          | storage_quota_exceeded_fault()
          | certificate_not_found_fault()
          | db_upgrade_dependency_failure_fault()
          | db_instance_not_found_fault()
          | authorization_not_found_fault()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | storage_type_not_supported_fault()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type modify_db_subnet_group_errors() ::
          db_subnet_group_not_found_fault()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | db_subnet_quota_exceeded_fault()
          | invalid_subnet()
          | subnet_already_in_use()

  @type modify_event_subscription_errors() ::
          s_n_s_no_authorization_fault()
          | event_subscription_quota_exceeded_fault()
          | s_n_s_topic_arn_not_found_fault()
          | s_n_s_invalid_topic_fault()
          | subscription_category_not_found_fault()
          | subscription_not_found_fault()

  @type modify_global_cluster_errors() ::
          global_cluster_not_found_fault() | invalid_global_cluster_state_fault()

  @type reboot_db_instance_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

  @type remove_from_global_cluster_errors() ::
          global_cluster_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_global_cluster_state_fault()

  @type remove_source_identifier_from_subscription_errors() ::
          subscription_not_found_fault() | source_not_found_fault()

  @type remove_tags_from_resource_errors() ::
          db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | db_instance_not_found_fault()

  @type reset_db_cluster_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type restore_db_cluster_from_snapshot_errors() ::
          insufficient_storage_cluster_capacity_fault()
          | db_cluster_snapshot_not_found_fault()
          | insufficient_db_cluster_capacity_fault()
          | db_cluster_already_exists_fault()
          | kms_key_not_accessible_fault()
          | db_snapshot_not_found_fault()
          | invalid_db_snapshot_state_fault()
          | storage_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | invalid_vpc_network_state_fault()
          | invalid_subnet()
          | invalid_restore_fault()
          | db_cluster_quota_exceeded_fault()

  @type restore_db_cluster_to_point_in_time_errors() ::
          insufficient_storage_cluster_capacity_fault()
          | db_cluster_snapshot_not_found_fault()
          | insufficient_db_cluster_capacity_fault()
          | db_cluster_not_found_fault()
          | db_cluster_already_exists_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | invalid_db_snapshot_state_fault()
          | storage_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | invalid_vpc_network_state_fault()
          | invalid_subnet()
          | invalid_restore_fault()
          | db_cluster_quota_exceeded_fault()

  @type start_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type stop_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type switchover_global_cluster_errors() ::
          global_cluster_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_global_cluster_state_fault()

  def metadata do
    %{
      api_version: "2014-10-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "rds",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "DocDB",
      signature_version: "v4",
      signing_name: "rds",
      target_prefix: "AmazonRDSv19"
    }
  end

  @doc """
  Adds a source identifier to an existing event notification
  subscription.
  """
  @spec add_source_identifier_to_subscription(
          map(),
          add_source_identifier_to_subscription_message(),
          list()
        ) ::
          {:ok, add_source_identifier_to_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_source_identifier_to_subscription_errors()}
  def add_source_identifier_to_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon DocumentDB resource.

  You can use these tags
  with cost allocation reporting to track costs that are associated
  with Amazon DocumentDB resources or in a `Condition` statement in
  an Identity and Access Management (IAM) policy for Amazon DocumentDB.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example,
  to an Amazon DocumentDB instance).
  """
  @spec apply_pending_maintenance_action(
          map(),
          apply_pending_maintenance_action_message(),
          list()
        ) ::
          {:ok, apply_pending_maintenance_action_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, apply_pending_maintenance_action_errors()}
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Copies the specified cluster parameter group.
  """
  @spec copy_db_cluster_parameter_group(map(), copy_db_cluster_parameter_group_message(), list()) ::
          {:ok, copy_db_cluster_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_db_cluster_parameter_group_errors()}
  def copy_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a cluster.

  To copy a cluster snapshot from a shared manual cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon
  Resource Name (ARN) of the shared cluster snapshot. You can only
  copy a shared DB cluster snapshot, whether encrypted or not, in the
  same Amazon Web Services Region.

  To cancel the copy operation after it is in progress, delete the
  target cluster snapshot identified by
  `TargetDBClusterSnapshotIdentifier` while that cluster
  snapshot is in the *copying* status.
  """
  @spec copy_db_cluster_snapshot(map(), copy_db_cluster_snapshot_message(), list()) ::
          {:ok, copy_db_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_db_cluster_snapshot_errors()}
  def copy_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new Amazon DocumentDB cluster.
  """
  @spec create_db_cluster(map(), create_db_cluster_message(), list()) ::
          {:ok, create_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_db_cluster_errors()}
  def create_db_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new cluster parameter group.

  Parameters in a cluster parameter group apply to all of the
  instances in a cluster.

  A cluster parameter group is initially created with the default
  parameters for the database engine used by instances in the cluster.
  In Amazon DocumentDB, you cannot make modifications directly to the
  `default.docdb3.6` cluster parameter group. If your
  Amazon DocumentDB cluster is using the default cluster parameter group and you
  want to modify a value in it, you must first [
  create a new parameter
  group](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html)
  or [
  copy an existing parameter
  group](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html),
  modify it, and then apply the modified parameter group to your
  cluster. For the new cluster parameter group and associated settings
  to take effect, you must then reboot the instances in the cluster
  without failover. For more information,
  see [
  Modifying Amazon DocumentDB Cluster Parameter
  Groups](https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html).
  """
  @spec create_db_cluster_parameter_group(
          map(),
          create_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, create_db_cluster_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_db_cluster_parameter_group_errors()}
  def create_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a cluster.
  """
  @spec create_db_cluster_snapshot(map(), create_db_cluster_snapshot_message(), list()) ::
          {:ok, create_db_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_db_cluster_snapshot_errors()}
  def create_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new instance.
  """
  @spec create_db_instance(map(), create_db_instance_message(), list()) ::
          {:ok, create_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_db_instance_errors()}
  def create_db_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDBInstance", input, options)
  end

  @doc """
  Creates a new subnet group.

  subnet groups must contain at least one subnet in at
  least two Availability Zones in the Amazon Web Services Region.
  """
  @spec create_db_subnet_group(map(), create_db_subnet_group_message(), list()) ::
          {:ok, create_db_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_db_subnet_group_errors()}
  def create_db_subnet_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an Amazon DocumentDB event notification subscription.

  This action requires a topic Amazon Resource Name (ARN) created by using the
  Amazon DocumentDB console, the Amazon SNS console, or the Amazon SNS API. To
  obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and
  subscribe to the topic. The ARN is displayed in the Amazon SNS console.

  You can specify the type of source (`SourceType`) that you want to be notified
  of. You can also provide a list of Amazon DocumentDB sources (`SourceIds`) that
  trigger the events, and you can provide a list of event categories
  (`EventCategories`) for events that you want to be notified of. For example, you
  can specify `SourceType = db-instance`, `SourceIds = mydbinstance1,
  mydbinstance2` and `EventCategories = Availability, Backup`.

  If you specify both the `SourceType` and `SourceIds` (such as `SourceType =
  db-instance` and `SourceIdentifier = myDBInstance1`), you are notified of all
  the `db-instance` events for the specified source. If you specify a `SourceType`
  but do not specify a `SourceIdentifier`, you receive notice of the events for
  that source type for all your Amazon DocumentDB sources. If you do not specify
  either the `SourceType` or the `SourceIdentifier`, you are notified of events
  generated from all Amazon DocumentDB sources belonging to your customer account.
  """
  @spec create_event_subscription(map(), create_event_subscription_message(), list()) ::
          {:ok, create_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_subscription_errors()}
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEventSubscription", input, options)
  end

  @doc """
  Creates an Amazon DocumentDB global cluster that can span multiple multiple
  Amazon Web Services Regions.

  The global cluster contains one primary cluster with read-write capability, and
  up-to give read-only secondary clusters. Global clusters uses storage-based fast
  replication across regions with latencies less than one second, using dedicated
  infrastructure with no impact to your workload’s performance.

  You can create a global cluster that is initially empty, and then add a primary
  and a secondary to it. Or you can specify an existing cluster during the create
  operation, and this cluster becomes the primary of the global cluster.

  This action only applies to Amazon DocumentDB clusters.
  """
  @spec create_global_cluster(map(), create_global_cluster_message(), list()) ::
          {:ok, create_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_global_cluster_errors()}
  def create_global_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGlobalCluster", input, options)
  end

  @doc """
  Deletes a previously provisioned cluster.

  When you delete a cluster, all automated backups for that cluster are deleted
  and can't be recovered. Manual DB cluster snapshots of the specified cluster are
  not deleted.
  """
  @spec delete_db_cluster(map(), delete_db_cluster_message(), list()) ::
          {:ok, delete_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_db_cluster_errors()}
  def delete_db_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a specified cluster parameter group.

  The cluster parameter group to be deleted can't be associated with any clusters.
  """
  @spec delete_db_cluster_parameter_group(
          map(),
          delete_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_db_cluster_parameter_group_errors()}
  def delete_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a cluster snapshot.

  If the snapshot is being copied, the copy operation is terminated.

  The cluster snapshot must be in the `available` state to be deleted.
  """
  @spec delete_db_cluster_snapshot(map(), delete_db_cluster_snapshot_message(), list()) ::
          {:ok, delete_db_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_db_cluster_snapshot_errors()}
  def delete_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  Deletes a previously provisioned instance.
  """
  @spec delete_db_instance(map(), delete_db_instance_message(), list()) ::
          {:ok, delete_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_db_instance_errors()}
  def delete_db_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes a subnet group.

  The specified database subnet group must not be associated with any DB
  instances.
  """
  @spec delete_db_subnet_group(map(), delete_db_subnet_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_db_subnet_group_errors()}
  def delete_db_subnet_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Deletes an Amazon DocumentDB event notification subscription.
  """
  @spec delete_event_subscription(map(), delete_event_subscription_message(), list()) ::
          {:ok, delete_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_subscription_errors()}
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes a global cluster.

  The primary and secondary clusters must already be detached or deleted before
  attempting to delete a global cluster.

  This action only applies to Amazon DocumentDB clusters.
  """
  @spec delete_global_cluster(map(), delete_global_cluster_message(), list()) ::
          {:ok, delete_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_global_cluster_errors()}
  def delete_global_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGlobalCluster", input, options)
  end

  @doc """
  Returns a list of certificate authority (CA) certificates provided by Amazon
  DocumentDB for this Amazon Web Services account.
  """
  @spec describe_certificates(map(), describe_certificates_message(), list()) ::
          {:ok, certificate_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_certificates_errors()}
  def describe_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCertificates", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions.

  If a `DBClusterParameterGroupName` parameter is specified, the list contains
  only the description of the specified cluster parameter group.
  """
  @spec describe_db_cluster_parameter_groups(
          map(),
          describe_db_cluster_parameter_groups_message(),
          list()
        ) ::
          {:ok, db_cluster_parameter_groups_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_db_cluster_parameter_groups_errors()}
  def describe_db_cluster_parameter_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular cluster parameter
  group.
  """
  @spec describe_db_cluster_parameters(map(), describe_db_cluster_parameters_message(), list()) ::
          {:ok, db_cluster_parameter_group_details(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_db_cluster_parameters_errors()}
  def describe_db_cluster_parameters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of cluster snapshot attribute names and values for a manual DB
  cluster snapshot.

  When you share snapshots with other Amazon Web Services accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute and a list
  of IDs for the Amazon Web Services accounts that are authorized to copy or
  restore the manual cluster snapshot. If `all` is included in the list of values
  for the `restore` attribute, then the manual cluster snapshot is public and can
  be copied or restored by all Amazon Web Services accounts.
  """
  @spec describe_db_cluster_snapshot_attributes(
          map(),
          describe_db_cluster_snapshot_attributes_message(),
          list()
        ) ::
          {:ok, describe_db_cluster_snapshot_attributes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_db_cluster_snapshot_attributes_errors()}
  def describe_db_cluster_snapshot_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBClusterSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about cluster snapshots.

  This API operation supports pagination.
  """
  @spec describe_db_cluster_snapshots(map(), describe_db_cluster_snapshots_message(), list()) ::
          {:ok, db_cluster_snapshot_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_db_cluster_snapshots_errors()}
  def describe_db_cluster_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB clusters.

  This API
  operation supports pagination. For certain management features
  such as cluster and instance lifecycle management, Amazon DocumentDB leverages
  operational technology that is shared with Amazon RDS and Amazon
  Neptune. Use the `filterName=engine,Values=docdb` filter
  parameter to return only Amazon DocumentDB clusters.
  """
  @spec describe_db_clusters(map(), describe_db_clusters_message(), list()) ::
          {:ok, db_cluster_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_db_clusters_errors()}
  def describe_db_clusters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available engines.
  """
  @spec describe_db_engine_versions(map(), describe_db_engine_versions_message(), list()) ::
          {:ok, db_engine_version_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_db_engine_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB instances.

  This API supports pagination.
  """
  @spec describe_db_instances(map(), describe_db_instances_message(), list()) ::
          {:ok, db_instance_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_db_instances_errors()}
  def describe_db_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of `DBSubnetGroup` descriptions.

  If a
  `DBSubnetGroupName` is specified, the list will contain only the descriptions of
  the specified `DBSubnetGroup`.
  """
  @spec describe_db_subnet_groups(map(), describe_db_subnet_groups_message(), list()) ::
          {:ok, db_subnet_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_db_subnet_groups_errors()}
  def describe_db_subnet_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDBSubnetGroups", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the cluster
  database
  engine.
  """
  @spec describe_engine_default_cluster_parameters(
          map(),
          describe_engine_default_cluster_parameters_message(),
          list()
        ) ::
          {:ok, describe_engine_default_cluster_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_engine_default_cluster_parameters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEngineDefaultClusterParameters", input, options)
  end

  @doc """
  Displays a list of categories for all event source types, or, if specified, for
  a
  specified source type.
  """
  @spec describe_event_categories(map(), describe_event_categories_message(), list()) ::
          {:ok, event_categories_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_event_categories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the subscription descriptions for a customer account.

  The description for a subscription includes `SubscriptionName`, `SNSTopicARN`,
  `CustomerID`, `SourceType`, `SourceID`, `CreationTime`, and `Status`.

  If you specify a `SubscriptionName`, lists the description for that
  subscription.
  """
  @spec describe_event_subscriptions(map(), describe_event_subscriptions_message(), list()) ::
          {:ok, event_subscriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_event_subscriptions_errors()}
  def describe_event_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to instances, security groups, snapshots, and DB
  parameter groups for the past 14 days.

  You can obtain events specific to a particular DB instance, security group,
  snapshot, or parameter group by providing the name as a parameter. By default,
  the events of the past hour are returned.
  """
  @spec describe_events(map(), describe_events_message(), list()) ::
          {:ok, events_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about Amazon DocumentDB global clusters.

  This API supports pagination.

  This action only applies to Amazon DocumentDB clusters.
  """
  @spec describe_global_clusters(map(), describe_global_clusters_message(), list()) ::
          {:ok, global_clusters_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_global_clusters_errors()}
  def describe_global_clusters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGlobalClusters", input, options)
  end

  @doc """
  Returns a list of orderable instance options for the specified engine.
  """
  @spec describe_orderable_db_instance_options(
          map(),
          describe_orderable_db_instance_options_message(),
          list()
        ) ::
          {:ok, orderable_db_instance_options_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_orderable_db_instance_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, instances) that have at least one
  pending
  maintenance action.
  """
  @spec describe_pending_maintenance_actions(
          map(),
          describe_pending_maintenance_actions_message(),
          list()
        ) ::
          {:ok, pending_maintenance_actions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_pending_maintenance_actions_errors()}
  def describe_pending_maintenance_actions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Forces a failover for a cluster.

  A failover for a cluster promotes one of the Amazon DocumentDB replicas
  (read-only instances) in the cluster to be the primary instance (the cluster
  writer).

  If the primary instance fails, Amazon DocumentDB automatically fails over to an
  Amazon DocumentDB replica, if one exists. You can force a failover when you want
  to simulate a failure of a primary instance for testing.
  """
  @spec failover_db_cluster(map(), failover_db_cluster_message(), list()) ::
          {:ok, failover_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, failover_db_cluster_errors()}
  def failover_db_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "FailoverDBCluster", input, options)
  end

  @doc """
  Promotes the specified secondary DB cluster to be the primary DB cluster in the
  global cluster when failing over a global cluster occurs.

  Use this operation to respond to an unplanned event, such as a regional disaster
  in the primary region.
  Failing over can result in a loss of write transaction data that wasn't
  replicated to the chosen secondary before the failover event occurred.
  However, the recovery process that promotes a DB instance on the chosen seconday
  DB cluster to be the primary writer DB instance guarantees that the data is in a
  transactionally consistent state.
  """
  @spec failover_global_cluster(map(), failover_global_cluster_message(), list()) ::
          {:ok, failover_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, failover_global_cluster_errors()}
  def failover_global_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "FailoverGlobalCluster", input, options)
  end

  @doc """
  Lists all tags on an Amazon DocumentDB resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_message(), list()) ::
          {:ok, tag_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies a setting for an Amazon DocumentDB cluster.

  You can change one or more database
  configuration parameters by specifying these parameters and the new values in
  the
  request.
  """
  @spec modify_db_cluster(map(), modify_db_cluster_message(), list()) ::
          {:ok, modify_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_db_cluster_errors()}
  def modify_db_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the parameters of a cluster parameter group.

  To modify more than one
  parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20
  parameters can be modified in a single request.

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters require a reboot or maintenance window

  before the change can take effect.

  After you create a cluster parameter group, you should wait at least 5 minutes
  before creating your first cluster that uses that cluster parameter group as
  the default parameter group. This allows Amazon DocumentDB to fully complete the
  create action
  before the parameter group is used as the default for a new cluster. This step
  is
  especially important for parameters that are critical when creating the default
  database for a cluster, such as the character set for the default database
  defined by the `character_set_database` parameter.
  """
  @spec modify_db_cluster_parameter_group(
          map(),
          modify_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, db_cluster_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_db_cluster_parameter_group_errors()}
  def modify_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual cluster snapshot.

  To share a manual cluster snapshot with other Amazon Web Services accounts,
  specify `restore` as the `AttributeName`, and use the `ValuesToAdd` parameter to
  add a list of IDs of the Amazon Web Services accounts that are authorized to
  restore the manual cluster snapshot. Use the value `all` to make the manual
  cluster snapshot public, which means that it can be copied or restored by all
  Amazon Web Services accounts. Do not add the `all` value for any manual cluster
  snapshots that contain private information that you don't want available to all
  Amazon Web Services accounts. If a manual cluster snapshot is encrypted, it can
  be shared, but only by specifying a list of authorized Amazon Web Services
  account IDs for the `ValuesToAdd` parameter. You can't use `all` as a value for
  that parameter in this case.
  """
  @spec modify_db_cluster_snapshot_attribute(
          map(),
          modify_db_cluster_snapshot_attribute_message(),
          list()
        ) ::
          {:ok, modify_db_cluster_snapshot_attribute_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_db_cluster_snapshot_attribute_errors()}
  def modify_db_cluster_snapshot_attribute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for an instance.

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request.
  """
  @spec modify_db_instance(map(), modify_db_instance_message(), list()) ::
          {:ok, modify_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_db_instance_errors()}
  def modify_db_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies an existing subnet group.

  subnet groups must contain at least one subnet in at least two Availability
  Zones in the Amazon Web Services Region.
  """
  @spec modify_db_subnet_group(map(), modify_db_subnet_group_message(), list()) ::
          {:ok, modify_db_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_db_subnet_group_errors()}
  def modify_db_subnet_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing Amazon DocumentDB event notification subscription.
  """
  @spec modify_event_subscription(map(), modify_event_subscription_message(), list()) ::
          {:ok, modify_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_event_subscription_errors()}
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyEventSubscription", input, options)
  end

  @doc """
  Modify a setting for an Amazon DocumentDB global cluster.

  You can change one or more configuration parameters (for example: deletion
  protection), or the global cluster identifier by specifying these parameters and
  the new values in the request.

  This action only applies to Amazon DocumentDB clusters.
  """
  @spec modify_global_cluster(map(), modify_global_cluster_message(), list()) ::
          {:ok, modify_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_global_cluster_errors()}
  def modify_global_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ModifyGlobalCluster", input, options)
  end

  @doc """
  You might need to reboot your instance, usually for maintenance reasons.

  For
  example, if you make certain changes, or if you change the cluster parameter
  group
  that is associated with the instance, you must reboot the instance for the
  changes to
  take effect.

  Rebooting an instance restarts the database engine service. Rebooting an
  instance
  results in a momentary outage, during which the instance status is set to
  *rebooting*.
  """
  @spec reboot_db_instance(map(), reboot_db_instance_message(), list()) ::
          {:ok, reboot_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_db_instance_errors()}
  def reboot_db_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootDBInstance", input, options)
  end

  @doc """
  Detaches an Amazon DocumentDB secondary cluster from a global cluster.

  The cluster becomes a standalone cluster with read-write capability instead of
  being read-only and receiving data from a primary in a different region.

  This action only applies to Amazon DocumentDB clusters.
  """
  @spec remove_from_global_cluster(map(), remove_from_global_cluster_message(), list()) ::
          {:ok, remove_from_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_from_global_cluster_errors()}
  def remove_from_global_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveFromGlobalCluster", input, options)
  end

  @doc """
  Removes a source identifier from an existing Amazon DocumentDB event
  notification
  subscription.
  """
  @spec remove_source_identifier_from_subscription(
          map(),
          remove_source_identifier_from_subscription_message(),
          list()
        ) ::
          {:ok, remove_source_identifier_from_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_source_identifier_from_subscription_errors()}
  def remove_source_identifier_from_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveSourceIdentifierFromSubscription", input, options)
  end

  @doc """
  Removes metadata tags from an Amazon DocumentDB resource.
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a cluster parameter group to the default value.

  To
  reset specific parameters, submit a list of the following: `ParameterName`
  and `ApplyMethod`. To reset the entire cluster parameter group, specify
  the `DBClusterParameterGroupName` and `ResetAllParameters`
  parameters.

  When you reset the entire group, dynamic parameters are updated immediately and
  static parameters are set to `pending-reboot` to take effect on the next DB
  instance reboot.
  """
  @spec reset_db_cluster_parameter_group(
          map(),
          reset_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, db_cluster_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_db_cluster_parameter_group_errors()}
  def reset_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a new cluster from a snapshot or cluster snapshot.

  If a snapshot is specified, the target cluster is created from the source DB
  snapshot with a default configuration and default security group.

  If a cluster snapshot is specified, the target cluster is created from the
  source cluster restore point with the same configuration as the original source
  DB cluster, except that the new cluster is created with the default security
  group.
  """
  @spec restore_db_cluster_from_snapshot(
          map(),
          restore_db_cluster_from_snapshot_message(),
          list()
        ) ::
          {:ok, restore_db_cluster_from_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_db_cluster_from_snapshot_errors()}
  def restore_db_cluster_from_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a cluster to an arbitrary point in time.

  Users can restore to any point in
  time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target cluster is created from the
  source cluster with the same configuration as the original cluster, except that
  the new cluster is created with the default security group.
  """
  @spec restore_db_cluster_to_point_in_time(
          map(),
          restore_db_cluster_to_point_in_time_message(),
          list()
        ) ::
          {:ok, restore_db_cluster_to_point_in_time_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_db_cluster_to_point_in_time_errors()}
  def restore_db_cluster_to_point_in_time(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Restarts the stopped cluster that is specified by `DBClusterIdentifier`.

  For more information, see [Stopping and Starting an Amazon DocumentDB
  Cluster](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).
  """
  @spec start_db_cluster(map(), start_db_cluster_message(), list()) ::
          {:ok, start_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_db_cluster_errors()}
  def start_db_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDBCluster", input, options)
  end

  @doc """
  Stops the running cluster that is specified by `DBClusterIdentifier`.

  The
  cluster must be in the *available* state. For more information, see
  [Stopping and Starting an Amazon DocumentDB
  Cluster](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html).
  """
  @spec stop_db_cluster(map(), stop_db_cluster_message(), list()) ::
          {:ok, stop_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_db_cluster_errors()}
  def stop_db_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopDBCluster", input, options)
  end

  @doc """
  Switches over the specified secondary Amazon DocumentDB cluster to be the new
  primary Amazon DocumentDB cluster in the global database cluster.
  """
  @spec switchover_global_cluster(map(), switchover_global_cluster_message(), list()) ::
          {:ok, switchover_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, switchover_global_cluster_errors()}
  def switchover_global_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SwitchoverGlobalCluster", input, options)
  end
end
