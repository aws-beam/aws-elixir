# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Neptune do
  @moduledoc """
  Amazon Neptune

  Amazon Neptune is a fast, reliable, fully-managed graph database service that
  makes it
  easy to build and run applications that work with highly connected datasets.

  The core of
  Amazon Neptune is a purpose-built, high-performance graph database engine
  optimized for
  storing billions of relationships and querying the graph with milliseconds
  latency. Amazon
  Neptune supports popular graph models Property Graph and W3C's RDF, and their
  respective query
  languages Apache TinkerPop Gremlin and SPARQL, allowing you to easily build
  queries that
  efficiently navigate highly connected datasets. Neptune powers graph use cases
  such as
  recommendation engines, fraud detection, knowledge graphs, drug discovery, and
  network
  security.

  This interface reference for Amazon Neptune contains documentation for a
  programming or
  command line interface you can use to manage Amazon Neptune. Note that Amazon
  Neptune is
  asynchronous, which means that some interfaces might require techniques such as
  polling or
  callback functions to determine when a command has been applied. In this
  reference, the
  parameter descriptions indicate whether a command is applied immediately, on the
  next instance
  reboot, or during the maintenance window. The reference structure is as follows,
  and we list
  following some related topics from the user guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      restore_db_cluster_from_snapshot_message() :: %{
        optional("AvailabilityZones") => list(String.t()()),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DBClusterParameterGroupName") => String.t(),
        optional("DBSubnetGroupName") => String.t(),
        optional("DatabaseName") => String.t(),
        optional("DeletionProtection") => boolean(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("Port") => integer(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("DBClusterIdentifier") => String.t(),
        required("Engine") => String.t(),
        required("SnapshotIdentifier") => String.t()
      }
      
  """
  @type restore_db_cluster_from_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_cluster_message() :: %{
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type start_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_details() :: %{
        optional("Marker") => String.t(),
        optional("Parameters") => list(parameter()())
      }
      
  """
  @type db_parameter_group_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_subscriptions_message() :: %{
        "EventSubscriptionsList" => list(event_subscription()()),
        "Marker" => String.t()
      }
      
  """
  @type event_subscriptions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type delete_db_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_membership() :: %{
        "OptionGroupName" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type option_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_maintenance_action() :: %{
        "Action" => String.t(),
        "AutoAppliedAfterDate" => non_neg_integer(),
        "CurrentApplyDate" => non_neg_integer(),
        "Description" => String.t(),
        "ForcedApplyDate" => non_neg_integer(),
        "OptInStatus" => String.t()
      }
      
  """
  @type pending_maintenance_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_parameter_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_pending_maintenance_action_message() :: %{
        required("ApplyAction") => String.t(),
        required("OptInType") => String.t(),
        required("ResourceIdentifier") => String.t()
      }
      
  """
  @type apply_pending_maintenance_action_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_already_in_use() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_already_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZones" => list(String.t()()),
        "ClusterCreateTime" => non_neg_integer(),
        "DBClusterIdentifier" => String.t(),
        "DBClusterSnapshotArn" => String.t(),
        "DBClusterSnapshotIdentifier" => String.t(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "KmsKeyId" => String.t(),
        "LicenseModel" => String.t(),
        "MasterUsername" => String.t(),
        "PercentProgress" => integer(),
        "Port" => integer(),
        "SnapshotCreateTime" => non_neg_integer(),
        "SnapshotType" => String.t(),
        "SourceDBClusterSnapshotArn" => String.t(),
        "Status" => String.t(),
        "StorageEncrypted" => boolean(),
        "StorageType" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type db_cluster_snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type delete_db_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      snapshot_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type snapshot_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_subnet_group_message() :: %{
        optional("DBSubnetGroupDescription") => String.t(),
        required("DBSubnetGroupName") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type modify_db_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_message() :: %{
        "DBSubnetGroups" => list(db_subnet_group()()),
        "Marker" => String.t()
      }
      
  """
  @type db_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_parameters_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("Source") => String.t(),
        required("DBClusterParameterGroupName") => String.t()
      }
      
  """
  @type describe_db_cluster_parameters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_pending_maintenance_actions() :: %{
        "PendingMaintenanceActionDetails" => list(pending_maintenance_action()()),
        "ResourceIdentifier" => String.t()
      }
      
  """
  @type resource_pending_maintenance_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_categories_map() :: %{
        "EventCategories" => list(String.t()()),
        "SourceType" => String.t()
      }
      
  """
  @type event_categories_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      range() :: %{
        "From" => integer(),
        "Step" => integer(),
        "To" => integer()
      }
      
  """
  @type range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type delete_global_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group_name_message() :: %{
        optional("DBClusterParameterGroupName") => String.t()
      }
      
  """
  @type db_cluster_parameter_group_name_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t()
      }
      
  """
  @type availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_snapshot_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_instances_message() :: %{
        optional("DBInstanceIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_instances_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shared_snapshot_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type shared_snapshot_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_parameter_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("DBParameterGroupFamily") => String.t(),
        required("DBParameterGroupName") => String.t(),
        required("Description") => String.t()
      }
      
  """
  @type create_db_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_parameter_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("DBClusterParameterGroupName") => String.t(),
        required("DBParameterGroupFamily") => String.t(),
        required("Description") => String.t()
      }
      
  """
  @type create_db_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_parameter_group_result() :: %{
        "DBClusterParameterGroup" => db_cluster_parameter_group()
      }
      
  """
  @type copy_db_cluster_parameter_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_message() :: %{
        optional("Enabled") => boolean(),
        optional("EventCategories") => list(String.t()()),
        optional("SnsTopicArn") => String.t(),
        optional("SourceType") => String.t(),
        required("SubscriptionName") => String.t()
      }
      
  """
  @type modify_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_parameter_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("SourceDBClusterParameterGroupIdentifier") => String.t(),
        required("TargetDBClusterParameterGroupDescription") => String.t(),
        required("TargetDBClusterParameterGroupIdentifier") => String.t()
      }
      
  """
  @type copy_db_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pending_maintenance_actions_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ResourceIdentifier") => String.t()
      }
      
  """
  @type describe_pending_maintenance_actions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_orderable_db_instance_options_message() :: %{
        optional("DBInstanceClass") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("Filters") => list(filter()()),
        optional("LicenseModel") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("Vpc") => boolean(),
        required("Engine") => String.t()
      }
      
  """
  @type describe_orderable_db_instance_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_cloudwatch_logs_exports() :: %{
        "LogTypesToDisable" => list(String.t()()),
        "LogTypesToEnable" => list(String.t()())
      }
      
  """
  @type pending_cloudwatch_logs_exports() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      double_range() :: %{
        "From" => float(),
        "To" => float()
      }
      
  """
  @type double_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engine_defaults() :: %{
        "DBParameterGroupFamily" => String.t(),
        "Marker" => String.t(),
        "Parameters" => list(parameter()())
      }
      
  """
  @type engine_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_subnet_group_result() :: %{
        "DBSubnetGroup" => db_subnet_group()
      }
      
  """
  @type create_db_subnet_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloudwatch_logs_export_configuration() :: %{
        "DisableLogTypes" => list(String.t()()),
        "EnableLogTypes" => list(String.t()())
      }
      
  """
  @type cloudwatch_logs_export_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_db_instance_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_db_instance_capacity_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_role() :: %{
        "FeatureName" => String.t(),
        "RoleArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type db_cluster_role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type modify_db_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_subscription() :: %{
        "CustSubscriptionId" => String.t(),
        "CustomerAwsId" => String.t(),
        "Enabled" => boolean(),
        "EventCategoriesList" => list(String.t()()),
        "EventSubscriptionArn" => String.t(),
        "SnsTopicArn" => String.t(),
        "SourceIdsList" => list(String.t()()),
        "SourceType" => String.t(),
        "Status" => String.t(),
        "SubscriptionCreationTime" => String.t()
      }
      
  """
  @type event_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster_member() :: %{
        "DBClusterArn" => String.t(),
        "IsWriter" => boolean(),
        "Readers" => list(String.t()())
      }
      
  """
  @type global_cluster_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_snapshot_attribute_message() :: %{
        optional("ValuesToAdd") => list(String.t()()),
        optional("ValuesToRemove") => list(String.t()()),
        required("AttributeName") => String.t(),
        required("DBClusterSnapshotIdentifier") => String.t()
      }
      
  """
  @type modify_db_cluster_snapshot_attribute_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_source_identifier_to_subscription_message() :: %{
        required("SourceIdentifier") => String.t(),
        required("SubscriptionName") => String.t()
      }
      
  """
  @type add_source_identifier_to_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_restore_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_restore_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_to_point_in_time_message() :: %{
        optional("DBClusterParameterGroupName") => String.t(),
        optional("DBSubnetGroupName") => String.t(),
        optional("DeletionProtection") => boolean(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("Port") => integer(),
        optional("RestoreToTime") => non_neg_integer(),
        optional("RestoreType") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        optional("Tags") => list(tag()()),
        optional("UseLatestRestorableTime") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("DBClusterIdentifier") => String.t(),
        required("SourceDBClusterIdentifier") => String.t()
      }
      
  """
  @type restore_db_cluster_to_point_in_time_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_subnet_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_subnet_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_endpoint_output() :: %{
        "CustomEndpointType" => String.t(),
        "DBClusterEndpointArn" => String.t(),
        "DBClusterEndpointIdentifier" => String.t(),
        "DBClusterEndpointResourceIdentifier" => String.t(),
        "DBClusterIdentifier" => String.t(),
        "Endpoint" => String.t(),
        "EndpointType" => String.t(),
        "ExcludedMembers" => list(String.t()()),
        "StaticMembers" => list(String.t()()),
        "Status" => String.t()
      }
      
  """
  @type create_db_cluster_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet() :: %{
        "SubnetAvailabilityZone" => availability_zone(),
        "SubnetIdentifier" => String.t(),
        "SubnetStatus" => String.t()
      }
      
  """
  @type subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_source_identifier_from_subscription_message() :: %{
        required("SourceIdentifier") => String.t(),
        required("SubscriptionName") => String.t()
      }
      
  """
  @type remove_source_identifier_from_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_message() :: %{
        "DBClusterSnapshots" => list(db_cluster_snapshot()()),
        "Marker" => String.t()
      }
      
  """
  @type db_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_message() :: %{
        optional("Filters") => list(filter()()),
        required("ResourceName") => String.t()
      }
      
  """
  @type list_tags_for_resource_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_snapshots_message() :: %{
        optional("DBClusterIdentifier") => String.t(),
        optional("DBClusterSnapshotIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("IncludePublic") => boolean(),
        optional("IncludeShared") => boolean(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SnapshotType") => String.t()
      }
      
  """
  @type describe_db_cluster_snapshots_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_message() :: %{
        optional("StorageType") => String.t(),
        optional("Timezone") => String.t(),
        optional("AllocatedStorage") => integer(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("MasterUsername") => String.t(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("BackupRetentionPeriod") => integer(),
        optional("AvailabilityZone") => String.t(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("MonitoringRoleArn") => String.t(),
        optional("LicenseModel") => String.t(),
        optional("CharacterSetName") => String.t(),
        required("DBInstanceIdentifier") => String.t(),
        optional("Iops") => integer(),
        required("DBClusterIdentifier") => String.t(),
        optional("Port") => integer(),
        optional("TdeCredentialPassword") => String.t(),
        optional("DBSecurityGroups") => list(String.t()()),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        required("DBInstanceClass") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("StorageEncrypted") => boolean(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("DBParameterGroupName") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("DBName") => String.t(),
        optional("PromotionTier") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        required("Engine") => String.t(),
        optional("TdeCredentialArn") => String.t(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type create_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type create_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_to_point_in_time_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type restore_db_cluster_to_point_in_time_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_type_not_supported_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type storage_type_not_supported_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_snapshot_attributes_result() :: %{
        "DBClusterSnapshotAttributesResult" => db_cluster_snapshot_attributes_result()
      }
      
  """
  @type describe_db_cluster_snapshot_attributes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance() :: %{
        "LatestRestorableTime" => non_neg_integer(),
        "DBName" => String.t(),
        "StatusInfos" => list(db_instance_status_info()()),
        "Engine" => String.t(),
        "VpcSecurityGroups" => list(vpc_security_group_membership()()),
        "MultiAZ" => boolean(),
        "CACertificateIdentifier" => String.t(),
        "Timezone" => String.t(),
        "PreferredMaintenanceWindow" => String.t(),
        "Iops" => integer(),
        "MonitoringInterval" => integer(),
        "ReadReplicaDBInstanceIdentifiers" => list(String.t()()),
        "OptionGroupMemberships" => list(option_group_membership()()),
        "PreferredBackupWindow" => String.t(),
        "PendingModifiedValues" => pending_modified_values(),
        "PerformanceInsightsEnabled" => boolean(),
        "PromotionTier" => integer(),
        "ReadReplicaSourceDBInstanceIdentifier" => String.t(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t(),
        "AvailabilityZone" => String.t(),
        "CopyTagsToSnapshot" => boolean(),
        "DBInstanceClass" => String.t(),
        "ReadReplicaDBClusterIdentifiers" => list(String.t()()),
        "EnhancedMonitoringResourceArn" => String.t(),
        "EnabledCloudwatchLogsExports" => list(String.t()()),
        "AutoMinorVersionUpgrade" => boolean(),
        "DBInstanceArn" => String.t(),
        "DbiResourceId" => String.t(),
        "DBParameterGroups" => list(db_parameter_group_status()()),
        "DBInstanceStatus" => String.t(),
        "TdeCredentialArn" => String.t(),
        "PerformanceInsightsKMSKeyId" => String.t(),
        "MasterUsername" => String.t(),
        "LicenseModel" => String.t(),
        "DBInstanceIdentifier" => String.t(),
        "DBClusterIdentifier" => String.t(),
        "DeletionProtection" => boolean(),
        "StorageType" => String.t(),
        "DBSubnetGroup" => db_subnet_group(),
        "InstanceCreateTime" => non_neg_integer(),
        "DomainMemberships" => list(domain_membership()()),
        "DbInstancePort" => integer(),
        "SecondaryAvailabilityZone" => String.t(),
        "PubliclyAccessible" => boolean(),
        "EngineVersion" => String.t(),
        "AllocatedStorage" => integer(),
        "StorageEncrypted" => boolean(),
        "DBSecurityGroups" => list(db_security_group_membership()()),
        "Endpoint" => endpoint(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "CharacterSetName" => String.t(),
        "MonitoringRoleArn" => String.t()
      }
      
  """
  @type db_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_role_to_db_cluster_message() :: %{
        optional("FeatureName") => String.t(),
        required("DBClusterIdentifier") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type add_role_to_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_cluster_parameters_result() :: %{
        "EngineDefaults" => engine_defaults()
      }
      
  """
  @type describe_engine_default_cluster_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type copy_db_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_already_exist_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_already_exist_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_parameter_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_message() :: %{
        "DBClusters" => list(db_cluster()()),
        "Marker" => String.t()
      }
      
  """
  @type db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_valid_db_instance_modifications_result() :: %{
        "ValidDBInstanceModificationsMessage" => valid_db_instance_modifications_message()
      }
      
  """
  @type describe_valid_db_instance_modifications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_parameters_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("DBParameterGroupFamily") => String.t()
      }
      
  """
  @type describe_engine_default_parameters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_valid_db_instance_modifications_message() :: %{
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type describe_valid_db_instance_modifications_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type failover_global_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_global_cluster_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_global_cluster_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_endpoint_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_cluster_endpoint_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_engine_versions_message() :: %{
        optional("DBParameterGroupFamily") => String.t(),
        optional("DefaultOnly") => boolean(),
        optional("Engine") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("Filters") => list(filter()()),
        optional("ListSupportedCharacterSets") => boolean(),
        optional("ListSupportedTimezones") => boolean(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_engine_versions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_read_replica_db_cluster_message() :: %{
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type promote_read_replica_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type domain_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_endpoint_message() :: %{
        "DBClusterEndpoints" => list(db_cluster_endpoint()()),
        "Marker" => String.t()
      }
      
  """
  @type db_cluster_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      character_set() :: %{
        "CharacterSetDescription" => String.t(),
        "CharacterSetName" => String.t()
      }
      
  """
  @type character_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_message() :: %{
        optional("FinalDBSnapshotIdentifier") => String.t(),
        optional("SkipFinalSnapshot") => boolean(),
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type delete_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type reboot_db_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_endpoint_output() :: %{
        "CustomEndpointType" => String.t(),
        "DBClusterEndpointArn" => String.t(),
        "DBClusterEndpointIdentifier" => String.t(),
        "DBClusterEndpointResourceIdentifier" => String.t(),
        "DBClusterIdentifier" => String.t(),
        "Endpoint" => String.t(),
        "EndpointType" => String.t(),
        "ExcludedMembers" => list(String.t()()),
        "StaticMembers" => list(String.t()()),
        "Status" => String.t()
      }
      
  """
  @type delete_db_cluster_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_source_identifier_to_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type add_source_identifier_to_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group() :: %{
        "DBParameterGroupArn" => String.t(),
        "DBParameterGroupFamily" => String.t(),
        "DBParameterGroupName" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type db_parameter_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_parameter_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_message() :: %{
        optional("FinalDBSnapshotIdentifier") => String.t(),
        optional("SkipFinalSnapshot") => boolean(),
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type delete_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_vpc_network_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_vpc_network_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_db_parameter_group_message() :: %{
        optional("Parameters") => list(parameter()()),
        optional("ResetAllParameters") => boolean(),
        required("DBParameterGroupName") => String.t()
      }
      
  """
  @type reset_db_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_subscription_message() :: %{
        optional("Enabled") => boolean(),
        optional("EventCategories") => list(String.t()()),
        optional("SourceIds") => list(String.t()()),
        optional("SourceType") => String.t(),
        optional("Tags") => list(tag()()),
        required("SnsTopicArn") => String.t(),
        required("SubscriptionName") => String.t()
      }
      
  """
  @type create_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_security_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_security_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_endpoints_message() :: %{
        optional("DBClusterEndpointIdentifier") => String.t(),
        optional("DBClusterIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_cluster_endpoints_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type modify_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      orderable_db_instance_options_message() :: %{
        "Marker" => String.t(),
        "OrderableDBInstanceOptions" => list(orderable_db_instance_option()())
      }
      
  """
  @type orderable_db_instance_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_read_replica_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type promote_read_replica_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_subscriptions_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SubscriptionName") => String.t()
      }
      
  """
  @type describe_event_subscriptions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_snapshot_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_endpoint_message() :: %{
        optional("ExcludedMembers") => list(String.t()()),
        optional("StaticMembers") => list(String.t()()),
        optional("Tags") => list(tag()()),
        required("DBClusterEndpointIdentifier") => String.t(),
        required("DBClusterIdentifier") => String.t(),
        required("EndpointType") => String.t()
      }
      
  """
  @type create_db_cluster_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_snapshot_attribute_result() :: %{
        "DBClusterSnapshotAttributesResult" => db_cluster_snapshot_attributes_result()
      }
      
  """
  @type modify_db_cluster_snapshot_attribute_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_attribute() :: %{
        "AttributeName" => String.t(),
        "AttributeValues" => list(String.t()())
      }
      
  """
  @type db_cluster_snapshot_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_does_not_cover_enough_a_zs() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_group_does_not_cover_enough_a_zs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "BackupRetentionPeriod" => integer(),
        "CACertificateIdentifier" => String.t(),
        "DBInstanceClass" => String.t(),
        "DBInstanceIdentifier" => String.t(),
        "DBSubnetGroupName" => String.t(),
        "EngineVersion" => String.t(),
        "Iops" => integer(),
        "LicenseModel" => String.t(),
        "MasterUserPassword" => String.t(),
        "MultiAZ" => boolean(),
        "PendingCloudwatchLogsExports" => pending_cloudwatch_logs_exports(),
        "Port" => integer(),
        "StorageType" => String.t()
      }
      
  """
  @type pending_modified_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      orderable_db_instance_option() :: %{
        "AvailabilityZones" => list(availability_zone()()),
        "DBInstanceClass" => String.t(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "LicenseModel" => String.t(),
        "MaxIopsPerDbInstance" => integer(),
        "MaxIopsPerGib" => float(),
        "MaxStorageSize" => integer(),
        "MinIopsPerDbInstance" => integer(),
        "MinIopsPerGib" => float(),
        "MinStorageSize" => integer(),
        "MultiAZCapable" => boolean(),
        "ReadReplicaCapable" => boolean(),
        "StorageType" => String.t(),
        "SupportsEnhancedMonitoring" => boolean(),
        "SupportsGlobalDatabases" => boolean(),
        "SupportsIAMDatabaseAuthentication" => boolean(),
        "SupportsIops" => boolean(),
        "SupportsPerformanceInsights" => boolean(),
        "SupportsStorageEncryption" => boolean(),
        "Vpc" => boolean()
      }
      
  """
  @type orderable_db_instance_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_parameter_group_message() :: %{
        required("DBParameterGroupName") => String.t()
      }
      
  """
  @type delete_db_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_groups_message() :: %{
        "DBClusterParameterGroups" => list(db_cluster_parameter_group()()),
        "Marker" => String.t()
      }
      
  """
  @type db_cluster_parameter_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_parameter_groups_message() :: %{
        optional("DBClusterParameterGroupName") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_cluster_parameter_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_snapshot_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_cluster_snapshot_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_snapshot_message() :: %{
        optional("CopyTags") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("PreSignedUrl") => String.t(),
        optional("Tags") => list(tag()()),
        required("SourceDBClusterSnapshotIdentifier") => String.t(),
        required("TargetDBClusterSnapshotIdentifier") => String.t()
      }
      
  """
  @type copy_db_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster() :: %{
        "DeletionProtection" => boolean(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "GlobalClusterArn" => String.t(),
        "GlobalClusterIdentifier" => String.t(),
        "GlobalClusterMembers" => list(global_cluster_member()()),
        "GlobalClusterResourceId" => String.t(),
        "Status" => String.t(),
        "StorageEncrypted" => boolean()
      }
      
  """
  @type global_cluster() :: %{String.t() => any()}

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
      
      create_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type create_global_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_upgrade_dependency_failure_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_upgrade_dependency_failure_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_clusters_message() :: %{
        "GlobalClusters" => list(global_cluster()()),
        "Marker" => String.t()
      }
      
  """
  @type global_clusters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type certificate_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type modify_global_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_from_global_cluster_message() :: %{
        required("DbClusterIdentifier") => String.t(),
        required("GlobalClusterIdentifier") => String.t()
      }
      
  """
  @type remove_from_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_db_instance_message() :: %{
        optional("ForceFailover") => boolean(),
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type reboot_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_parameters_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("Source") => String.t(),
        required("DBParameterGroupName") => String.t()
      }
      
  """
  @type describe_db_parameters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_role_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_role_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type source_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_engine_version_message() :: %{
        "DBEngineVersions" => list(db_engine_version()()),
        "Marker" => String.t()
      }
      
  """
  @type db_engine_version_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_endpoint_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_endpoint_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_global_cluster_message() :: %{
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("NewGlobalClusterIdentifier") => String.t(),
        required("GlobalClusterIdentifier") => String.t()
      }
      
  """
  @type modify_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_engine_version() :: %{
        "DBEngineDescription" => String.t(),
        "DBEngineVersionDescription" => String.t(),
        "DBParameterGroupFamily" => String.t(),
        "DefaultCharacterSet" => character_set(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "ExportableLogTypes" => list(String.t()()),
        "SupportedCharacterSets" => list(character_set()()),
        "SupportedTimezones" => list(timezone()()),
        "SupportsGlobalDatabases" => boolean(),
        "SupportsLogExportsToCloudwatchLogs" => boolean(),
        "SupportsReadReplica" => boolean(),
        "ValidUpgradeTarget" => list(upgrade_target()())
      }
      
  """
  @type db_engine_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter() :: %{
        "AllowedValues" => String.t(),
        "ApplyMethod" => list(any()),
        "ApplyType" => String.t(),
        "DataType" => String.t(),
        "Description" => String.t(),
        "IsModifiable" => boolean(),
        "MinimumEngineVersion" => String.t(),
        "ParameterName" => String.t(),
        "ParameterValue" => String.t(),
        "Source" => String.t()
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_event_subscription_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_event_subscription_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_snapshot_message() :: %{
        optional("Tags") => list(tag()()),
        required("DBClusterIdentifier") => String.t(),
        required("DBClusterSnapshotIdentifier") => String.t()
      }
      
  """
  @type create_db_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_security_group_membership() :: %{
        "DBSecurityGroupName" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type db_security_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_parameter_group_message() :: %{
        required("DBClusterParameterGroupName") => String.t()
      }
      
  """
  @type delete_db_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_clusters_message() :: %{
        optional("DBClusterIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_clusters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "BackupRetentionPeriod" => integer(),
        "DBClusterIdentifier" => String.t(),
        "EngineVersion" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "Iops" => integer(),
        "PendingCloudwatchLogsExports" => pending_cloudwatch_logs_exports(),
        "StorageType" => String.t()
      }
      
  """
  @type cluster_pending_modified_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_endpoint() :: %{
        "CustomEndpointType" => String.t(),
        "DBClusterEndpointArn" => String.t(),
        "DBClusterEndpointIdentifier" => String.t(),
        "DBClusterEndpointResourceIdentifier" => String.t(),
        "DBClusterIdentifier" => String.t(),
        "Endpoint" => String.t(),
        "EndpointType" => String.t(),
        "ExcludedMembers" => list(String.t()()),
        "StaticMembers" => list(String.t()()),
        "Status" => String.t()
      }
      
  """
  @type db_cluster_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_endpoint_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_endpoint_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_parameter_groups_message() :: %{
        optional("DBParameterGroupName") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_parameter_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_parameter_group_message() :: %{
        required("DBParameterGroupName") => String.t(),
        required("Parameters") => list(parameter()())
      }
      
  """
  @type modify_db_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_parameter_group_message() :: %{
        required("DBClusterParameterGroupName") => String.t(),
        required("Parameters") => list(parameter()())
      }
      
  """
  @type modify_db_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_membership() :: %{
        "Domain" => String.t(),
        "FQDN" => String.t(),
        "IAMRoleName" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type domain_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_endpoint_message() :: %{
        required("DBClusterEndpointIdentifier") => String.t()
      }
      
  """
  @type delete_db_cluster_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_message() :: %{
        optional("AvailabilityZones") => list(String.t()()),
        optional("BackupRetentionPeriod") => integer(),
        optional("CharacterSetName") => String.t(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DBClusterParameterGroupName") => String.t(),
        optional("DBSubnetGroupName") => String.t(),
        optional("DatabaseName") => String.t(),
        optional("DeletionProtection") => boolean(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("GlobalClusterIdentifier") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("MasterUsername") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("Port") => integer(),
        optional("PreSignedUrl") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("ReplicationSourceIdentifier") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageEncrypted") => boolean(),
        optional("StorageType") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("DBClusterIdentifier") => String.t(),
        required("Engine") => String.t()
      }
      
  """
  @type create_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      valid_storage_options() :: %{
        "IopsToStorageRatio" => list(double_range()()),
        "ProvisionedIops" => list(range()()),
        "StorageSize" => list(range()()),
        "StorageType" => String.t()
      }
      
  """
  @type valid_storage_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_groups_message() :: %{
        "DBParameterGroups" => list(db_parameter_group()()),
        "Marker" => String.t()
      }
      
  """
  @type db_parameter_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type instance_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      valid_db_instance_modifications_message() :: %{
        "Storage" => list(valid_storage_options()())
      }
      
  """
  @type valid_db_instance_modifications_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_global_cluster_message() :: %{
        optional("DeletionProtection") => boolean(),
        optional("Engine") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("SourceDBClusterIdentifier") => String.t(),
        optional("StorageEncrypted") => boolean(),
        required("GlobalClusterIdentifier") => String.t()
      }
      
  """
  @type create_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type storage_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_snapshot_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_snapshot_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type create_db_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_parameter_group_result() :: %{
        "DBParameterGroup" => db_parameter_group()
      }
      
  """
  @type create_db_parameter_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t(),
        "HostedZoneId" => String.t(),
        "Port" => integer()
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      events_message() :: %{
        "Events" => list(event()()),
        "Marker" => String.t()
      }
      
  """
  @type events_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_snapshot_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_parameter_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_db_cluster_parameter_group_message() :: %{
        optional("Parameters") => list(parameter()()),
        optional("ResetAllParameters") => boolean(),
        required("DBClusterParameterGroupName") => String.t()
      }
      
  """
  @type reset_db_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_global_cluster_message() :: %{
        required("GlobalClusterIdentifier") => String.t()
      }
      
  """
  @type delete_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_message() :: %{
        required("SubscriptionName") => String.t()
      }
      
  """
  @type delete_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_category_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_category_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_key_not_accessible_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_key_not_accessible_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_parameter_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_parameter_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_invalid_topic_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_invalid_topic_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_role_from_db_cluster_message() :: %{
        optional("FeatureName") => String.t(),
        required("DBClusterIdentifier") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type remove_role_from_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_parameters_result() :: %{
        "EngineDefaults" => engine_defaults()
      }
      
  """
  @type describe_engine_default_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_cluster_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_parameter_group_result() :: %{
        "DBClusterParameterGroup" => db_cluster_parameter_group()
      }
      
  """
  @type create_db_cluster_parameter_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Date" => non_neg_integer(),
        "EventCategories" => list(String.t()()),
        "Message" => String.t(),
        "SourceArn" => String.t(),
        "SourceIdentifier" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type create_event_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_message() :: %{
        "DBInstances" => list(db_instance()()),
        "Marker" => String.t()
      }
      
  """
  @type db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_cluster_parameters_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("DBParameterGroupFamily") => String.t()
      }
      
  """
  @type describe_engine_default_cluster_parameters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_list_message() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type tag_list_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster() :: %{
        "Status" => String.t(),
        "DBClusterParameterGroup" => String.t(),
        "LatestRestorableTime" => non_neg_integer(),
        "Engine" => String.t(),
        "VpcSecurityGroups" => list(vpc_security_group_membership()()),
        "MultiAZ" => boolean(),
        "EarliestRestorableTime" => non_neg_integer(),
        "DatabaseName" => String.t(),
        "PreferredMaintenanceWindow" => String.t(),
        "CloneGroupId" => String.t(),
        "PreferredBackupWindow" => String.t(),
        "PendingModifiedValues" => cluster_pending_modified_values(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t(),
        "ReadReplicaIdentifiers" => list(String.t()()),
        "CopyTagsToSnapshot" => boolean(),
        "ServerlessV2ScalingConfiguration" => serverless_v2_scaling_configuration_info(),
        "EnabledCloudwatchLogsExports" => list(String.t()()),
        "ClusterCreateTime" => non_neg_integer(),
        "PercentProgress" => String.t(),
        "ReplicationSourceIdentifier" => String.t(),
        "Port" => integer(),
        "DBClusterArn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "CrossAccountClone" => boolean(),
        "MasterUsername" => String.t(),
        "DbClusterResourceId" => String.t(),
        "DBClusterMembers" => list(db_cluster_member()()),
        "ReaderEndpoint" => String.t(),
        "AutomaticRestartTime" => non_neg_integer(),
        "DBClusterIdentifier" => String.t(),
        "DeletionProtection" => boolean(),
        "StorageType" => String.t(),
        "DBSubnetGroup" => String.t(),
        "DBClusterOptionGroupMemberships" => list(db_cluster_option_group_status()()),
        "EngineVersion" => String.t(),
        "AllocatedStorage" => integer(),
        "HostedZoneId" => String.t(),
        "AssociatedRoles" => list(db_cluster_role()()),
        "GlobalClusterIdentifier" => String.t(),
        "IOOptimizedNextAllowedModificationTime" => non_neg_integer(),
        "StorageEncrypted" => boolean(),
        "Endpoint" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "CharacterSetName" => String.t()
      }
      
  """
  @type db_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_topic_arn_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_topic_arn_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_source_identifier_from_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type remove_source_identifier_from_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_security_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_security_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_message() :: %{
        required("ResourceName") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_to_resource_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_categories_message() :: %{
        "EventCategoriesMapList" => list(event_categories_map()())
      }
      
  """
  @type event_categories_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type delete_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_subnet_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("DBSubnetGroupDescription") => String.t(),
        required("DBSubnetGroupName") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_db_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_from_snapshot_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type restore_db_cluster_from_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_db_cluster_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_db_cluster_capacity_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_status_info() :: %{
        "Message" => String.t(),
        "Normal" => boolean(),
        "Status" => String.t(),
        "StatusType" => String.t()
      }
      
  """
  @type db_instance_status_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_clusters_message() :: %{
        optional("GlobalClusterIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_global_clusters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type global_cluster_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_message() :: %{
        optional("Duration") => integer(),
        optional("EndTime") => non_neg_integer(),
        optional("EventCategories") => list(String.t()()),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SourceIdentifier") => String.t(),
        optional("SourceType") => list(any()),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type describe_events_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_cluster_snapshot_attributes_message() :: %{
        required("DBClusterSnapshotIdentifier") => String.t()
      }
      
  """
  @type describe_db_cluster_snapshot_attributes_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type start_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type option_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type global_cluster_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_attributes_result() :: %{
        "DBClusterSnapshotAttributes" => list(db_cluster_snapshot_attribute()()),
        "DBClusterSnapshotIdentifier" => String.t()
      }
      
  """
  @type db_cluster_snapshot_attributes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type modify_event_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type global_cluster_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_pending_maintenance_action_result() :: %{
        "ResourcePendingMaintenanceActions" => resource_pending_maintenance_actions()
      }
      
  """
  @type apply_pending_maintenance_action_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_target() :: %{
        "AutoUpgrade" => boolean(),
        "Description" => String.t(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "IsMajorVersionUpgrade" => boolean(),
        "SupportsGlobalDatabases" => boolean()
      }
      
  """
  @type upgrade_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_parameter_group_result() :: %{
        "DBParameterGroup" => db_parameter_group()
      }
      
  """
  @type copy_db_parameter_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type delete_event_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_option_group_status() :: %{
        "DBClusterOptionGroupName" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type db_cluster_option_group_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_iops_not_available_in_a_z_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type provisioned_iops_not_available_in_a_z_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_subnet_groups_message() :: %{
        optional("DBSubnetGroupName") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_subnet_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_subnet_group_result() :: %{
        "DBSubnetGroup" => db_subnet_group()
      }
      
  """
  @type modify_db_subnet_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_v2_scaling_configuration_info() :: %{
        "MaxCapacity" => float(),
        "MinCapacity" => float()
      }
      
  """
  @type serverless_v2_scaling_configuration_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group() :: %{
        "DBSubnetGroupArn" => String.t(),
        "DBSubnetGroupDescription" => String.t(),
        "DBSubnetGroupName" => String.t(),
        "SubnetGroupStatus" => String.t(),
        "Subnets" => list(subnet()()),
        "VpcId" => String.t()
      }
      
  """
  @type db_subnet_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_subnet_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_subnet_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_db_cluster_message() :: %{
        optional("DBClusterIdentifier") => String.t(),
        optional("TargetDBInstanceIdentifier") => String.t()
      }
      
  """
  @type failover_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_subnet_group_message() :: %{
        required("DBSubnetGroupName") => String.t()
      }
      
  """
  @type delete_db_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_from_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type remove_from_global_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_member() :: %{
        "DBClusterParameterGroupStatus" => String.t(),
        "DBInstanceIdentifier" => String.t(),
        "IsClusterWriter" => boolean(),
        "PromotionTier" => integer()
      }
      
  """
  @type db_cluster_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_message() :: %{
        required("ResourceName") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type remove_tags_from_resource_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_subscription_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type event_subscription_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_message() :: %{
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("ApplyImmediately") => boolean(),
        optional("BackupRetentionPeriod") => integer(),
        optional("CloudwatchLogsExportConfiguration") => cloudwatch_logs_export_configuration(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DBClusterParameterGroupName") => String.t(),
        optional("DBInstanceParameterGroupName") => String.t(),
        optional("DeletionProtection") => boolean(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("NewDBClusterIdentifier") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("Port") => integer(),
        optional("PreferredBackupWindow") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type modify_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_categories_message() :: %{
        optional("Filters") => list(filter()()),
        optional("SourceType") => String.t()
      }
      
  """
  @type describe_event_categories_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group() :: %{
        "DBClusterParameterGroupArn" => String.t(),
        "DBClusterParameterGroupName" => String.t(),
        "DBParameterGroupFamily" => String.t(),
        "Description" => String.t()
      }
      
  """
  @type db_cluster_parameter_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_cluster_message() :: %{
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type stop_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_snapshot_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_status() :: %{
        "DBParameterGroupName" => String.t(),
        "ParameterApplyStatus" => String.t()
      }
      
  """
  @type db_parameter_group_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_name_message() :: %{
        optional("DBParameterGroupName") => String.t()
      }
      
  """
  @type db_parameter_group_name_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_no_authorization_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_no_authorization_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_endpoint_message() :: %{
        optional("EndpointType") => String.t(),
        optional("ExcludedMembers") => list(String.t()()),
        optional("StaticMembers") => list(String.t()()),
        required("DBClusterEndpointIdentifier") => String.t()
      }
      
  """
  @type modify_db_cluster_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_security_group_membership() :: %{
        "Status" => String.t(),
        "VpcSecurityGroupId" => String.t()
      }
      
  """
  @type vpc_security_group_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_cluster_endpoint_output() :: %{
        "CustomEndpointType" => String.t(),
        "DBClusterEndpointArn" => String.t(),
        "DBClusterEndpointIdentifier" => String.t(),
        "DBClusterEndpointResourceIdentifier" => String.t(),
        "DBClusterIdentifier" => String.t(),
        "Endpoint" => String.t(),
        "EndpointType" => String.t(),
        "ExcludedMembers" => list(String.t()()),
        "StaticMembers" => list(String.t()()),
        "Status" => String.t()
      }
      
  """
  @type modify_db_cluster_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_snapshot_message() :: %{
        required("DBClusterSnapshotIdentifier") => String.t()
      }
      
  """
  @type delete_db_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type failover_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_instance_message() :: %{
        optional("StorageType") => String.t(),
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("AllocatedStorage") => integer(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("DBPortNumber") => integer(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("BackupRetentionPeriod") => integer(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("MonitoringRoleArn") => String.t(),
        optional("DBInstanceClass") => String.t(),
        optional("LicenseModel") => String.t(),
        required("DBInstanceIdentifier") => String.t(),
        optional("NewDBInstanceIdentifier") => String.t(),
        optional("CloudwatchLogsExportConfiguration") => cloudwatch_logs_export_configuration(),
        optional("Iops") => integer(),
        optional("TdeCredentialPassword") => String.t(),
        optional("DBSecurityGroups") => list(String.t()()),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CACertificateIdentifier") => String.t(),
        optional("ApplyImmediately") => boolean(),
        optional("DBParameterGroupName") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("PromotionTier") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("TdeCredentialArn") => String.t()
      }
      
  """
  @type modify_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_endpoint_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_endpoint_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_v2_scaling_configuration() :: %{
        "MaxCapacity" => float(),
        "MinCapacity" => float()
      }
      
  """
  @type serverless_v2_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type create_db_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_global_cluster_message() :: %{
        required("GlobalClusterIdentifier") => String.t(),
        required("TargetDbClusterIdentifier") => String.t()
      }
      
  """
  @type failover_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_role_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_role_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group_details() :: %{
        optional("Marker") => String.t(),
        optional("Parameters") => list(parameter()())
      }
      
  """
  @type db_cluster_parameter_group_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type stop_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_maintenance_actions_message() :: %{
        "Marker" => String.t(),
        "PendingMaintenanceActions" => list(resource_pending_maintenance_actions()())
      }
      
  """
  @type pending_maintenance_actions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timezone() :: %{
        "TimezoneName" => String.t()
      }
      
  """
  @type timezone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_instance_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_instance_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_role_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_role_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_parameter_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("SourceDBParameterGroupIdentifier") => String.t(),
        required("TargetDBParameterGroupDescription") => String.t(),
        required("TargetDBParameterGroupIdentifier") => String.t()
      }
      
  """
  @type copy_db_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_storage_cluster_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_storage_cluster_capacity_fault() :: %{String.t() => any()}

  @type add_role_to_db_cluster_errors() ::
          db_cluster_role_quota_exceeded_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | db_cluster_role_already_exists_fault()

  @type add_source_identifier_to_subscription_errors() ::
          subscription_not_found_fault() | source_not_found_fault()

  @type add_tags_to_resource_errors() ::
          db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | db_instance_not_found_fault()

  @type apply_pending_maintenance_action_errors() :: resource_not_found_fault()

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

  @type copy_db_parameter_group_errors() ::
          db_parameter_group_already_exists_fault()
          | db_parameter_group_quota_exceeded_fault()
          | db_parameter_group_not_found_fault()

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

  @type create_db_cluster_endpoint_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_endpoint_already_exists_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | db_cluster_endpoint_quota_exceeded_fault()
          | db_instance_not_found_fault()

  @type create_db_cluster_parameter_group_errors() ::
          db_parameter_group_already_exists_fault() | db_parameter_group_quota_exceeded_fault()

  @type create_db_cluster_snapshot_errors() ::
          db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | db_cluster_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type create_db_instance_errors() ::
          provisioned_iops_not_available_in_a_z_fault()
          | option_group_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | storage_quota_exceeded_fault()
          | instance_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | authorization_not_found_fault()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type create_db_parameter_group_errors() ::
          db_parameter_group_already_exists_fault() | db_parameter_group_quota_exceeded_fault()

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

  @type delete_db_cluster_endpoint_errors() ::
          invalid_db_cluster_state_fault()
          | db_cluster_endpoint_not_found_fault()
          | invalid_db_cluster_endpoint_state_fault()

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

  @type delete_db_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type delete_db_subnet_group_errors() ::
          invalid_db_subnet_state_fault()
          | db_subnet_group_not_found_fault()
          | invalid_db_subnet_group_state_fault()

  @type delete_event_subscription_errors() ::
          subscription_not_found_fault() | invalid_event_subscription_state_fault()

  @type delete_global_cluster_errors() ::
          global_cluster_not_found_fault() | invalid_global_cluster_state_fault()

  @type describe_db_cluster_endpoints_errors() :: db_cluster_not_found_fault()

  @type describe_db_cluster_parameter_groups_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_cluster_parameters_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_cluster_snapshot_attributes_errors() :: db_cluster_snapshot_not_found_fault()

  @type describe_db_cluster_snapshots_errors() :: db_cluster_snapshot_not_found_fault()

  @type describe_db_clusters_errors() :: db_cluster_not_found_fault()

  @type describe_db_instances_errors() :: db_instance_not_found_fault()

  @type describe_db_parameter_groups_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_parameters_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_subnet_groups_errors() :: db_subnet_group_not_found_fault()

  @type describe_event_subscriptions_errors() :: subscription_not_found_fault()

  @type describe_global_clusters_errors() :: global_cluster_not_found_fault()

  @type describe_pending_maintenance_actions_errors() :: resource_not_found_fault()

  @type describe_valid_db_instance_modifications_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

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
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | invalid_db_subnet_group_state_fault()

  @type modify_db_cluster_endpoint_errors() ::
          invalid_db_instance_state_fault()
          | invalid_db_cluster_state_fault()
          | db_cluster_endpoint_not_found_fault()
          | db_instance_not_found_fault()
          | invalid_db_cluster_endpoint_state_fault()

  @type modify_db_cluster_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type modify_db_cluster_snapshot_attribute_errors() ::
          db_cluster_snapshot_not_found_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | shared_snapshot_quota_exceeded_fault()

  @type modify_db_instance_errors() ::
          invalid_db_instance_state_fault()
          | provisioned_iops_not_available_in_a_z_fault()
          | option_group_not_found_fault()
          | invalid_db_security_group_state_fault()
          | storage_quota_exceeded_fault()
          | certificate_not_found_fault()
          | db_upgrade_dependency_failure_fault()
          | db_instance_not_found_fault()
          | authorization_not_found_fault()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type modify_db_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

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

  @type promote_read_replica_db_cluster_errors() ::
          db_cluster_not_found_fault() | invalid_db_cluster_state_fault()

  @type reboot_db_instance_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

  @type remove_from_global_cluster_errors() ::
          global_cluster_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_global_cluster_state_fault()

  @type remove_role_from_db_cluster_errors() ::
          db_cluster_role_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type remove_source_identifier_from_subscription_errors() ::
          subscription_not_found_fault() | source_not_found_fault()

  @type remove_tags_from_resource_errors() ::
          db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | db_instance_not_found_fault()

  @type reset_db_cluster_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type reset_db_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type restore_db_cluster_from_snapshot_errors() ::
          insufficient_storage_cluster_capacity_fault()
          | db_cluster_snapshot_not_found_fault()
          | option_group_not_found_fault()
          | insufficient_db_cluster_capacity_fault()
          | db_cluster_already_exists_fault()
          | kms_key_not_accessible_fault()
          | db_cluster_parameter_group_not_found_fault()
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
          | option_group_not_found_fault()
          | insufficient_db_cluster_capacity_fault()
          | db_cluster_not_found_fault()
          | db_cluster_already_exists_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | db_cluster_parameter_group_not_found_fault()
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

  def metadata do
    %{
      api_version: "2014-10-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "rds",
      global?: false,
      protocol: "query",
      service_id: "Neptune",
      signature_version: "v4",
      signing_name: "rds",
      target_prefix: "AmazonRDSv19"
    }
  end

  @doc """
  Associates an Identity and Access Management (IAM) role with an
  Neptune DB cluster.
  """
  @spec add_role_to_db_cluster(map(), add_role_to_db_cluster_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_role_to_db_cluster_errors()}
  def add_role_to_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddRoleToDBCluster", input, options)
  end

  @doc """
  Adds a source identifier to an existing event notification subscription.
  """
  @spec add_source_identifier_to_subscription(
          map(),
          add_source_identifier_to_subscription_message(),
          list()
        ) ::
          {:ok, add_source_identifier_to_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_source_identifier_to_subscription_errors()}
  def add_source_identifier_to_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddSourceIdentifierToSubscription", input, options)
  end

  @doc """
  Adds metadata tags to an Amazon Neptune resource.

  These tags can also be used with cost
  allocation reporting to track cost associated with Amazon Neptune resources, or
  used in a
  Condition statement in an IAM policy for Amazon Neptune.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a DB
  instance).
  """
  @spec apply_pending_maintenance_action(
          map(),
          apply_pending_maintenance_action_message(),
          list()
        ) ::
          {:ok, apply_pending_maintenance_action_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, apply_pending_maintenance_action_errors()}
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Copies the specified DB cluster parameter group.
  """
  @spec copy_db_cluster_parameter_group(map(), copy_db_cluster_parameter_group_message(), list()) ::
          {:ok, copy_db_cluster_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_db_cluster_parameter_group_errors()}
  def copy_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyDBClusterParameterGroup", input, options)
  end

  @doc """
  Copies a snapshot of a DB cluster.

  To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
  `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name (ARN) of
  the
  shared DB cluster snapshot.
  """
  @spec copy_db_cluster_snapshot(map(), copy_db_cluster_snapshot_message(), list()) ::
          {:ok, copy_db_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_db_cluster_snapshot_errors()}
  def copy_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyDBClusterSnapshot", input, options)
  end

  @doc """
  Copies the specified DB parameter group.
  """
  @spec copy_db_parameter_group(map(), copy_db_parameter_group_message(), list()) ::
          {:ok, copy_db_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_db_parameter_group_errors()}
  def copy_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyDBParameterGroup", input, options)
  end

  @doc """
  Creates a new Amazon Neptune DB cluster.

  You can use the `ReplicationSourceIdentifier` parameter to create the DB
  cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance.

  Note that when you create a new cluster using `CreateDBCluster` directly,
  deletion protection is disabled by default (when you create a new production
  cluster in
  the console, deletion protection is enabled by default). You can only delete a
  DB
  cluster if its `DeletionProtection` field is set to `false`.
  """
  @spec create_db_cluster(map(), create_db_cluster_message(), list()) ::
          {:ok, create_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_cluster_errors()}
  def create_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBCluster", input, options)
  end

  @doc """
  Creates a new custom endpoint and associates it with an Amazon Neptune DB
  cluster.
  """
  @spec create_db_cluster_endpoint(map(), create_db_cluster_endpoint_message(), list()) ::
          {:ok, create_db_cluster_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_cluster_endpoint_errors()}
  def create_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBClusterEndpoint", input, options)
  end

  @doc """
  Creates a new DB cluster parameter group.

  Parameters in a DB cluster parameter group apply to all of the instances in a DB
  cluster.

  A DB cluster parameter group is initially created with the default
  parameters for the database engine used by instances in the DB cluster.
  To provide custom values for any of the parameters, you must modify the
  group after creating it using `ModifyDBClusterParameterGroup`.
  Once you've created a DB cluster parameter group, you need to associate it
  with your DB cluster using `ModifyDBCluster`.
  When you associate a new DB cluster parameter group with a running DB cluster,
  you need to reboot the DB instances in the DB cluster without failover for the
  new DB cluster parameter group and associated settings to take effect.

  After you create a DB cluster parameter group, you should wait at least
  5 minutes before creating your first DB cluster that uses that DB cluster
  parameter group as the default parameter group. This allows Amazon Neptune
  to fully complete the create action before the DB cluster parameter group
  is used as the default for a new DB cluster. This is especially important for
  parameters that are critical when creating the default database for a DB
  cluster, such as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter
  Groups* option of the [Amazon Neptune console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters`
  command to verify that your DB cluster parameter group has been created or
  modified.
  """
  @spec create_db_cluster_parameter_group(
          map(),
          create_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, create_db_cluster_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_cluster_parameter_group_errors()}
  def create_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBClusterParameterGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB cluster.
  """
  @spec create_db_cluster_snapshot(map(), create_db_cluster_snapshot_message(), list()) ::
          {:ok, create_db_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_cluster_snapshot_errors()}
  def create_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBClusterSnapshot", input, options)
  end

  @doc """
  Creates a new DB instance.
  """
  @spec create_db_instance(map(), create_db_instance_message(), list()) ::
          {:ok, create_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_instance_errors()}
  def create_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBInstance", input, options)
  end

  @doc """
  Creates a new DB parameter group.

  A DB parameter group is initially created with the default parameters for the
  database
  engine used by the DB instance. To provide custom values for any of the
  parameters, you must
  modify the group after creating it using *ModifyDBParameterGroup*. Once
  you've created a DB parameter group, you need to associate it with your DB
  instance using
  *ModifyDBInstance*. When you associate a new DB parameter group with a
  running DB instance, you need to reboot the DB instance without failover for the
  new DB
  parameter group and associated settings to take effect.

  After you create a DB parameter group, you should wait at least 5 minutes before
  creating your first DB instance that uses that DB parameter group as the default
  parameter
  group. This allows Amazon Neptune to fully complete the create action before the
  parameter
  group is used as the default for a new DB instance. This is especially important
  for
  parameters that are critical when creating the default database for a DB
  instance, such as
  the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter
  Groups* option of the Amazon Neptune console or the
  *DescribeDBParameters* command to verify that your DB parameter group has
  been created or modified.
  """
  @spec create_db_parameter_group(map(), create_db_parameter_group_message(), list()) ::
          {:ok, create_db_parameter_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_parameter_group_errors()}
  def create_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB subnet group.

  DB subnet groups must contain at least one subnet in at
  least two AZs in the Amazon Region.
  """
  @spec create_db_subnet_group(map(), create_db_subnet_group_message(), list()) ::
          {:ok, create_db_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_subnet_group_errors()}
  def create_db_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBSubnetGroup", input, options)
  end

  @doc """
  Creates an event notification subscription.

  This action requires a topic ARN (Amazon
  Resource Name) created by either the Neptune console, the SNS console, or the
  SNS API. To
  obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to
  the topic. The
  ARN is displayed in the SNS console.

  You can specify the type of source (SourceType) you want to be notified of,
  provide a list
  of Neptune sources (SourceIds) that triggers the events, and provide a list of
  event
  categories (EventCategories) for events you want to be notified of. For example,
  you can
  specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and
  EventCategories
  = Availability, Backup.

  If you specify both the SourceType and SourceIds, such as SourceType =
  db-instance and
  SourceIdentifier = myDBInstance1, you are notified of all the db-instance events
  for the
  specified source. If you specify a SourceType but do not specify a
  SourceIdentifier, you
  receive notice of the events for that source type for all your Neptune sources.
  If you do not
  specify either the SourceType nor the SourceIdentifier, you are notified of
  events generated
  from all Neptune sources belonging to your customer account.
  """
  @spec create_event_subscription(map(), create_event_subscription_message(), list()) ::
          {:ok, create_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_subscription_errors()}
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEventSubscription", input, options)
  end

  @doc """
  Creates a Neptune global database spread across multiple Amazon Regions.

  The global database contains a single primary cluster with read-write
  capability, and read-only secondary clusters that receive data from the
  primary cluster through high-speed replication performed by the Neptune
  storage subsystem.

  You can create a global database that is initially empty, and then
  add a primary cluster and secondary clusters to it, or you can specify
  an existing Neptune cluster during the create operation to become the
  primary cluster of the global database.
  """
  @spec create_global_cluster(map(), create_global_cluster_message(), list()) ::
          {:ok, create_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_global_cluster_errors()}
  def create_global_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGlobalCluster", input, options)
  end

  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.

  When you delete a
  DB cluster, all automated backups for that DB cluster are deleted and can't be
  recovered.
  Manual DB cluster snapshots of the specified DB cluster are not deleted.

  Note that the DB Cluster cannot be deleted if deletion protection is enabled. To
  delete it, you must first set its `DeletionProtection` field to
  `False`.
  """
  @spec delete_db_cluster(map(), delete_db_cluster_message(), list()) ::
          {:ok, delete_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_cluster_errors()}
  def delete_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBCluster", input, options)
  end

  @doc """
  Deletes a custom endpoint and removes it from an Amazon Neptune DB cluster.
  """
  @spec delete_db_cluster_endpoint(map(), delete_db_cluster_endpoint_message(), list()) ::
          {:ok, delete_db_cluster_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_cluster_endpoint_errors()}
  def delete_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBClusterEndpoint", input, options)
  end

  @doc """
  Deletes a specified DB cluster parameter group.

  The DB cluster parameter group to be
  deleted can't be associated with any DB clusters.
  """
  @spec delete_db_cluster_parameter_group(
          map(),
          delete_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_cluster_parameter_group_errors()}
  def delete_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBClusterParameterGroup", input, options)
  end

  @doc """
  Deletes a DB cluster snapshot.

  If the snapshot is being copied, the copy operation is
  terminated.

  The DB cluster snapshot must be in the `available` state to be
  deleted.
  """
  @spec delete_db_cluster_snapshot(map(), delete_db_cluster_snapshot_message(), list()) ::
          {:ok, delete_db_cluster_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_cluster_snapshot_errors()}
  def delete_db_cluster_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBClusterSnapshot", input, options)
  end

  @doc """
  The DeleteDBInstance action deletes a previously provisioned DB instance.

  When you delete
  a DB instance, all automated backups for that instance are deleted and can't be
  recovered.
  Manual DB snapshots of the DB instance to be deleted by `DeleteDBInstance` are
  not
  deleted.

  If you request a final DB snapshot the status of the Amazon Neptune DB instance
  is
  `deleting` until the DB snapshot is created. The API action
  `DescribeDBInstance` is used to monitor the status of this operation. The action
  can't be canceled or reverted once submitted.

  Note that when a DB instance is in a failure state and has a status of
  `failed`, `incompatible-restore`, or `incompatible-network`,
  you can only delete it when the `SkipFinalSnapshot` parameter is set to
  `true`.

  You can't delete a DB instance if it is the only instance in the DB cluster, or
  if it has deletion protection enabled.
  """
  @spec delete_db_instance(map(), delete_db_instance_message(), list()) ::
          {:ok, delete_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_instance_errors()}
  def delete_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBInstance", input, options)
  end

  @doc """
  Deletes a specified DBParameterGroup.

  The DBParameterGroup to be deleted can't be
  associated with any DB instances.
  """
  @spec delete_db_parameter_group(map(), delete_db_parameter_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_parameter_group_errors()}
  def delete_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBParameterGroup", input, options)
  end

  @doc """
  Deletes a DB subnet group.

  The specified database subnet group must not be associated with any DB
  instances.
  """
  @spec delete_db_subnet_group(map(), delete_db_subnet_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_subnet_group_errors()}
  def delete_db_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBSubnetGroup", input, options)
  end

  @doc """
  Deletes an event notification subscription.
  """
  @spec delete_event_subscription(map(), delete_event_subscription_message(), list()) ::
          {:ok, delete_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_subscription_errors()}
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes a global database.

  The primary and all secondary clusters must
  already be detached or deleted first.
  """
  @spec delete_global_cluster(map(), delete_global_cluster_message(), list()) ::
          {:ok, delete_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_global_cluster_errors()}
  def delete_global_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGlobalCluster", input, options)
  end

  @doc """
  Returns information about endpoints for an Amazon Neptune DB cluster.

  This operation can also return information for Amazon RDS clusters
  and Amazon DocDB clusters.
  """
  @spec describe_db_cluster_endpoints(map(), describe_db_cluster_endpoints_message(), list()) ::
          {:ok, db_cluster_endpoint_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_cluster_endpoints_errors()}
  def describe_db_cluster_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusterEndpoints", input, options)
  end

  @doc """
  Returns a list of `DBClusterParameterGroup` descriptions.

  If a
  `DBClusterParameterGroupName` parameter is specified, the list will contain only
  the description of the specified DB cluster parameter group.
  """
  @spec describe_db_cluster_parameter_groups(
          map(),
          describe_db_cluster_parameter_groups_message(),
          list()
        ) ::
          {:ok, db_cluster_parameter_groups_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_cluster_parameter_groups_errors()}
  def describe_db_cluster_parameter_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusterParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB cluster parameter group.
  """
  @spec describe_db_cluster_parameters(map(), describe_db_cluster_parameters_message(), list()) ::
          {:ok, db_cluster_parameter_group_details(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_cluster_parameters_errors()}
  def describe_db_cluster_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusterParameters", input, options)
  end

  @doc """
  Returns a list of DB cluster snapshot attribute names and values for a manual DB
  cluster
  snapshot.

  When sharing snapshots with other Amazon accounts,
  `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute
  and a list of IDs for the Amazon accounts that are authorized to copy or restore
  the manual DB
  cluster snapshot. If `all` is included in the list of values for the
  `restore` attribute, then the manual DB cluster snapshot is public and can be
  copied or restored by all Amazon accounts.

  To add or remove access for an Amazon account to copy or restore a manual DB
  cluster
  snapshot, or to make the manual DB cluster snapshot public or private, use the
  `ModifyDBClusterSnapshotAttribute` API action.
  """
  @spec describe_db_cluster_snapshot_attributes(
          map(),
          describe_db_cluster_snapshot_attributes_message(),
          list()
        ) ::
          {:ok, describe_db_cluster_snapshot_attributes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_cluster_snapshot_attributes_errors()}
  def describe_db_cluster_snapshot_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusterSnapshotAttributes", input, options)
  end

  @doc """
  Returns information about DB cluster snapshots.

  This API action supports
  pagination.
  """
  @spec describe_db_cluster_snapshots(map(), describe_db_cluster_snapshots_message(), list()) ::
          {:ok, db_cluster_snapshot_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_cluster_snapshots_errors()}
  def describe_db_cluster_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusterSnapshots", input, options)
  end

  @doc """
  Returns information about provisioned DB clusters, and supports
  pagination.

  This operation can also return information for Amazon RDS clusters
  and Amazon DocDB clusters.
  """
  @spec describe_db_clusters(map(), describe_db_clusters_message(), list()) ::
          {:ok, db_cluster_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_clusters_errors()}
  def describe_db_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusters", input, options)
  end

  @doc """
  Returns a list of the available DB engines.
  """
  @spec describe_db_engine_versions(map(), describe_db_engine_versions_message(), list()) ::
          {:ok, db_engine_version_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_db_engine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Returns information about provisioned instances, and supports pagination.

  This operation can also return information for Amazon RDS instances
  and Amazon DocDB instances.
  """
  @spec describe_db_instances(map(), describe_db_instances_message(), list()) ::
          {:ok, db_instance_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_instances_errors()}
  def describe_db_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBInstances", input, options)
  end

  @doc """
  Returns a list of `DBParameterGroup` descriptions.

  If a
  `DBParameterGroupName` is specified, the list will contain only the description
  of
  the specified DB parameter group.
  """
  @spec describe_db_parameter_groups(map(), describe_db_parameter_groups_message(), list()) ::
          {:ok, db_parameter_groups_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_parameter_groups_errors()}
  def describe_db_parameter_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBParameterGroups", input, options)
  end

  @doc """
  Returns the detailed parameter list for a particular DB parameter group.
  """
  @spec describe_db_parameters(map(), describe_db_parameters_message(), list()) ::
          {:ok, db_parameter_group_details(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_parameters_errors()}
  def describe_db_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBParameters", input, options)
  end

  @doc """
  Returns a list of DBSubnetGroup descriptions.

  If a DBSubnetGroupName is specified, the
  list will contain only the descriptions of the specified DBSubnetGroup.

  For an overview of CIDR ranges, go to the [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
  """
  @spec describe_db_subnet_groups(map(), describe_db_subnet_groups_message(), list()) ::
          {:ok, db_subnet_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_subnet_groups_errors()}
  def describe_db_subnet_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def describe_engine_default_cluster_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEngineDefaultClusterParameters", input, options)
  end

  @doc """
  Returns the default engine and system parameter information for the specified
  database
  engine.
  """
  @spec describe_engine_default_parameters(
          map(),
          describe_engine_default_parameters_message(),
          list()
        ) ::
          {:ok, describe_engine_default_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_engine_default_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEngineDefaultParameters", input, options)
  end

  @doc """
  Displays a list of categories for all event source types, or, if specified, for
  a
  specified source type.
  """
  @spec describe_event_categories(map(), describe_event_categories_message(), list()) ::
          {:ok, event_categories_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_event_categories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the subscription descriptions for a customer account.

  The description for a
  subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType,
  SourceID,
  CreationTime, and Status.

  If you specify a SubscriptionName, lists the description for that subscription.
  """
  @spec describe_event_subscriptions(map(), describe_event_subscriptions_message(), list()) ::
          {:ok, event_subscriptions_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_subscriptions_errors()}
  def describe_event_subscriptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Returns events related to DB instances, DB security groups, DB snapshots, and DB
  parameter
  groups for the past 14 days.

  Events specific to a particular DB instance, DB security group,
  database snapshot, or DB parameter group can be obtained by providing the name
  as a parameter.
  By default, the past hour of events are returned.
  """
  @spec describe_events(map(), describe_events_message(), list()) ::
          {:ok, events_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about Neptune global database clusters.

  This API
  supports pagination.
  """
  @spec describe_global_clusters(map(), describe_global_clusters_message(), list()) ::
          {:ok, global_clusters_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_global_clusters_errors()}
  def describe_global_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGlobalClusters", input, options)
  end

  @doc """
  Returns a list of orderable DB instance options for the specified engine.
  """
  @spec describe_orderable_db_instance_options(
          map(),
          describe_orderable_db_instance_options_message(),
          list()
        ) ::
          {:ok, orderable_db_instance_options_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_orderable_db_instance_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOrderableDBInstanceOptions", input, options)
  end

  @doc """
  Returns a list of resources (for example, DB instances) that have at least one
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
          | {:error, describe_pending_maintenance_actions_errors()}
  def describe_pending_maintenance_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  You can call `DescribeValidDBInstanceModifications`
  to learn what modifications you can make to your DB instance.

  You can use this
  information when you call `ModifyDBInstance`.
  """
  @spec describe_valid_db_instance_modifications(
          map(),
          describe_valid_db_instance_modifications_message(),
          list()
        ) ::
          {:ok, describe_valid_db_instance_modifications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_valid_db_instance_modifications_errors()}
  def describe_valid_db_instance_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeValidDBInstanceModifications", input, options)
  end

  @doc """
  Forces a failover for a DB cluster.

  A failover for a DB cluster promotes one of the Read Replicas (read-only
  instances) in the
  DB cluster to be the primary instance (the cluster writer).

  Amazon Neptune will automatically fail over to a Read Replica, if one exists,
  when the
  primary instance fails. You can force a failover when you want to simulate a
  failure of a
  primary instance for testing. Because each instance in a DB cluster has its own
  endpoint
  address, you will need to clean up and re-establish any existing connections
  that use those
  endpoint addresses when the failover is complete.
  """
  @spec failover_db_cluster(map(), failover_db_cluster_message(), list()) ::
          {:ok, failover_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, failover_db_cluster_errors()}
  def failover_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "FailoverDBCluster", input, options)
  end

  @doc """
  Initiates the failover process for a Neptune global database.

  A failover for a Neptune global database promotes one of secondary
  read-only DB clusters to be the primary DB cluster and demotes the
  primary DB cluster to being a secondary (read-only) DB cluster. In other
  words, the role of the current primary DB cluster and the selected
  target secondary DB cluster are switched. The selected secondary DB cluster
  assumes full read/write capabilities for the Neptune global database.

  This action applies **only** to
  Neptune global databases. This action is only intended for use on healthy
  Neptune global databases with healthy Neptune DB clusters and no region-wide
  outages, to test disaster recovery scenarios or to reconfigure the global
  database topology.
  """
  @spec failover_global_cluster(map(), failover_global_cluster_message(), list()) ::
          {:ok, failover_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, failover_global_cluster_errors()}
  def failover_global_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "FailoverGlobalCluster", input, options)
  end

  @doc """
  Lists all tags on an Amazon Neptune resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_message(), list()) ::
          {:ok, tag_list_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Modify a setting for a DB cluster.

  You can change one or more database configuration
  parameters by specifying these parameters and the new values in the request.
  """
  @spec modify_db_cluster(map(), modify_db_cluster_message(), list()) ::
          {:ok, modify_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_cluster_errors()}
  def modify_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBCluster", input, options)
  end

  @doc """
  Modifies the properties of an endpoint in an Amazon Neptune DB cluster.
  """
  @spec modify_db_cluster_endpoint(map(), modify_db_cluster_endpoint_message(), list()) ::
          {:ok, modify_db_cluster_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_cluster_endpoint_errors()}
  def modify_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBClusterEndpoint", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group.

  To modify more than one
  parameter, submit a list of the following: `ParameterName`,
  `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
  modified in a single request.

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters
  require a reboot without failover to the DB cluster associated with the
  parameter group
  before the change can take effect.

  After you create a DB cluster parameter group, you should wait at least 5
  minutes before
  creating your first DB cluster that uses that DB cluster parameter group as the
  default
  parameter group. This allows Amazon Neptune to fully complete the create action
  before the
  parameter group is used as the default for a new DB cluster. This is especially
  important
  for parameters that are critical when creating the default database for a DB
  cluster, such
  as the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter
  Groups* option of the Amazon Neptune console or the
  `DescribeDBClusterParameters` command to verify that your DB cluster parameter
  group has been created or modified.
  """
  @spec modify_db_cluster_parameter_group(
          map(),
          modify_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, db_cluster_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_cluster_parameter_group_errors()}
  def modify_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBClusterParameterGroup", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB
  cluster snapshot.

  To share a manual DB cluster snapshot with other Amazon accounts, specify
  `restore` as the `AttributeName` and use the `ValuesToAdd`
  parameter to add a list of IDs of the Amazon accounts that are authorized to
  restore the manual
  DB cluster snapshot. Use the value `all` to make the manual DB cluster snapshot
  public, which means that it can be copied or restored by all Amazon accounts. Do
  not add the
  `all` value for any manual DB cluster snapshots that contain private information
  that you don't want available to all Amazon accounts. If a manual DB cluster
  snapshot is
  encrypted, it can be shared, but only by specifying a list of authorized Amazon
  account IDs for
  the `ValuesToAdd` parameter. You can't use `all` as a value for that
  parameter in this case.

  To view which Amazon accounts have access to copy or restore a manual DB cluster
  snapshot, or
  whether a manual DB cluster snapshot public or private, use the
  `DescribeDBClusterSnapshotAttributes` API action.
  """
  @spec modify_db_cluster_snapshot_attribute(
          map(),
          modify_db_cluster_snapshot_attribute_message(),
          list()
        ) ::
          {:ok, modify_db_cluster_snapshot_attribute_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_cluster_snapshot_attribute_errors()}
  def modify_db_cluster_snapshot_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBClusterSnapshotAttribute", input, options)
  end

  @doc """
  Modifies settings for a DB instance.

  You can change one or more database configuration
  parameters by specifying these parameters and the new values in the request. To
  learn what
  modifications you can make to your DB instance, call
  `DescribeValidDBInstanceModifications` before you call `ModifyDBInstance`.
  """
  @spec modify_db_instance(map(), modify_db_instance_message(), list()) ::
          {:ok, modify_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_instance_errors()}
  def modify_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBInstance", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group.

  To modify more than one parameter,
  submit a list of the following: `ParameterName`, `ParameterValue`, and
  `ApplyMethod`. A maximum of 20 parameters can be modified in a single request.

  Changes to dynamic parameters are applied immediately. Changes to static
  parameters
  require a reboot without failover to the DB instance associated with the
  parameter group
  before the change can take effect.

  After you modify a DB parameter group, you should wait at least 5 minutes before
  creating your first DB instance that uses that DB parameter group as the default
  parameter
  group. This allows Amazon Neptune to fully complete the modify action before the
  parameter
  group is used as the default for a new DB instance. This is especially important
  for
  parameters that are critical when creating the default database for a DB
  instance, such as
  the character set for the default database defined by the
  `character_set_database` parameter. You can use the *Parameter
  Groups* option of the Amazon Neptune console or the
  *DescribeDBParameters* command to verify that your DB parameter group has
  been created or modified.
  """
  @spec modify_db_parameter_group(map(), modify_db_parameter_group_message(), list()) ::
          {:ok, db_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_parameter_group_errors()}
  def modify_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBParameterGroup", input, options)
  end

  @doc """
  Modifies an existing DB subnet group.

  DB subnet groups must contain at least one subnet in
  at least two AZs in the Amazon Region.
  """
  @spec modify_db_subnet_group(map(), modify_db_subnet_group_message(), list()) ::
          {:ok, modify_db_subnet_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_subnet_group_errors()}
  def modify_db_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBSubnetGroup", input, options)
  end

  @doc """
  Modifies an existing event notification subscription.

  Note that you can't modify the
  source identifiers using this call; to change source identifiers for a
  subscription, use the
  `AddSourceIdentifierToSubscription` and `RemoveSourceIdentifierFromSubscription`
  calls.

  You can see a list of the event categories for a given SourceType
  by using the **DescribeEventCategories** action.
  """
  @spec modify_event_subscription(map(), modify_event_subscription_message(), list()) ::
          {:ok, modify_event_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_event_subscription_errors()}
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyEventSubscription", input, options)
  end

  @doc """
  Modify a setting for an Amazon Neptune global cluster.

  You can change one
  or more database configuration parameters by specifying these parameters
  and their new values in the request.
  """
  @spec modify_global_cluster(map(), modify_global_cluster_message(), list()) ::
          {:ok, modify_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_global_cluster_errors()}
  def modify_global_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyGlobalCluster", input, options)
  end

  @doc """
  Not supported.
  """
  @spec promote_read_replica_db_cluster(map(), promote_read_replica_db_cluster_message(), list()) ::
          {:ok, promote_read_replica_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, promote_read_replica_db_cluster_errors()}
  def promote_read_replica_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PromoteReadReplicaDBCluster", input, options)
  end

  @doc """
  You might need to reboot your DB instance, usually for maintenance reasons.

  For example,
  if you make certain modifications, or if you change the DB parameter group
  associated with the
  DB instance, you must reboot the instance for the changes to take effect.

  Rebooting a DB instance restarts the database engine service. Rebooting a DB
  instance
  results in a momentary outage, during which the DB instance status is set to
  rebooting.
  """
  @spec reboot_db_instance(map(), reboot_db_instance_message(), list()) ::
          {:ok, reboot_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_db_instance_errors()}
  def reboot_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootDBInstance", input, options)
  end

  @doc """
  Detaches a Neptune DB cluster from a Neptune global database.

  A secondary
  cluster becomes a normal standalone cluster with read-write capability
  instead of being read-only, and no longer receives data from a the
  primary cluster.
  """
  @spec remove_from_global_cluster(map(), remove_from_global_cluster_message(), list()) ::
          {:ok, remove_from_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_from_global_cluster_errors()}
  def remove_from_global_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveFromGlobalCluster", input, options)
  end

  @doc """
  Disassociates an Identity and Access Management (IAM) role from a DB cluster.
  """
  @spec remove_role_from_db_cluster(map(), remove_role_from_db_cluster_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_role_from_db_cluster_errors()}
  def remove_role_from_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveRoleFromDBCluster", input, options)
  end

  @doc """
  Removes a source identifier from an existing event notification subscription.
  """
  @spec remove_source_identifier_from_subscription(
          map(),
          remove_source_identifier_from_subscription_message(),
          list()
        ) ::
          {:ok, remove_source_identifier_from_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_source_identifier_from_subscription_errors()}
  def remove_source_identifier_from_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveSourceIdentifierFromSubscription", input, options)
  end

  @doc """
  Removes metadata tags from an Amazon Neptune resource.
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group to the default value.

  To reset
  specific parameters submit a list of the following: `ParameterName` and
  `ApplyMethod`. To reset the entire DB cluster parameter group, specify the
  `DBClusterParameterGroupName` and `ResetAllParameters` parameters.

  When resetting the entire group, dynamic parameters are updated immediately and
  static
  parameters are set to `pending-reboot` to take effect on the next DB instance
  restart or `RebootDBInstance` request. You must call `RebootDBInstance` for
  every DB instance in your DB cluster
  that you want the updated static parameter to apply to.
  """
  @spec reset_db_cluster_parameter_group(
          map(),
          reset_db_cluster_parameter_group_message(),
          list()
        ) ::
          {:ok, db_cluster_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_db_cluster_parameter_group_errors()}
  def reset_db_cluster_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetDBClusterParameterGroup", input, options)
  end

  @doc """
  Modifies the parameters of a DB parameter group to the engine/system default
  value.

  To
  reset specific parameters, provide a list of the following: `ParameterName` and
  `ApplyMethod`. To reset the entire DB parameter group, specify the
  `DBParameterGroup` name and `ResetAllParameters` parameters. When
  resetting the entire group, dynamic parameters are updated immediately and
  static parameters
  are set to `pending-reboot` to take effect on the next DB instance restart or
  `RebootDBInstance` request.
  """
  @spec reset_db_parameter_group(map(), reset_db_parameter_group_message(), list()) ::
          {:ok, db_parameter_group_name_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_db_parameter_group_errors()}
  def reset_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetDBParameterGroup", input, options)
  end

  @doc """
  Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

  If a DB snapshot is specified, the target DB cluster is created from the source
  DB
  snapshot with a default configuration and default security group.

  If a DB cluster snapshot is specified, the target DB cluster is created from the
  source DB
  cluster restore point with the same configuration as the original source DB
  cluster, except
  that the new DB cluster is created with the default security group.
  """
  @spec restore_db_cluster_from_snapshot(
          map(),
          restore_db_cluster_from_snapshot_message(),
          list()
        ) ::
          {:ok, restore_db_cluster_from_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_db_cluster_from_snapshot_errors()}
  def restore_db_cluster_from_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreDBClusterFromSnapshot", input, options)
  end

  @doc """
  Restores a DB cluster to an arbitrary point in time.

  Users can restore to any point in
  time before `LatestRestorableTime` for up to `BackupRetentionPeriod`
  days. The target DB cluster is created from the source DB cluster with the same
  configuration
  as the original DB cluster, except that the new DB cluster is created with the
  default DB
  security group.

  This action only restores the DB cluster, not the DB instances for that DB
  cluster. You
  must invoke the `CreateDBInstance` action to create DB instances for the
  restored DB cluster, specifying the identifier of the restored DB cluster in
  `DBClusterIdentifier`. You can create DB instances only after the
  `RestoreDBClusterToPointInTime` action has completed and the DB cluster is
  available.
  """
  @spec restore_db_cluster_to_point_in_time(
          map(),
          restore_db_cluster_to_point_in_time_message(),
          list()
        ) ::
          {:ok, restore_db_cluster_to_point_in_time_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_db_cluster_to_point_in_time_errors()}
  def restore_db_cluster_to_point_in_time(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreDBClusterToPointInTime", input, options)
  end

  @doc """
  Starts an Amazon Neptune DB cluster that was stopped using the Amazon
  console, the Amazon CLI stop-db-cluster command, or the StopDBCluster API.
  """
  @spec start_db_cluster(map(), start_db_cluster_message(), list()) ::
          {:ok, start_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_db_cluster_errors()}
  def start_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDBCluster", input, options)
  end

  @doc """
  Stops an Amazon Neptune DB cluster.

  When you stop a DB cluster, Neptune
  retains the DB cluster's metadata, including its endpoints and DB parameter
  groups.

  Neptune also retains the transaction logs so you can do a point-in-time
  restore if necessary.
  """
  @spec stop_db_cluster(map(), stop_db_cluster_message(), list()) ::
          {:ok, stop_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_db_cluster_errors()}
  def stop_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDBCluster", input, options)
  end
end
