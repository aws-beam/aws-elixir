# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RDS do
  @moduledoc """
  Amazon Relational Database Service

  Amazon Relational Database Service (Amazon RDS) is a web service that makes it
  easier to set up, operate, and
  scale a relational database in the cloud.

  It provides cost-efficient, resizeable capacity for an industry-standard
  relational
  database and manages common database administration tasks, freeing up developers
  to focus on what makes their applications
  and businesses unique.

  Amazon RDS gives you access to the capabilities of a MySQL, MariaDB, PostgreSQL,
  Microsoft SQL Server,
  Oracle, Db2, or Amazon Aurora database server. These capabilities mean that the
  code, applications, and tools
  you already use today with your existing databases work with Amazon RDS without
  modification. Amazon RDS
  automatically backs up your database and maintains the database software that
  powers your DB instance. Amazon RDS
  is flexible: you can scale your DB instance's compute resources and storage
  capacity to meet your
  application's demand. As with all Amazon Web Services, there are no up-front
  investments, and you pay only for
  the resources you use.

  This interface reference for Amazon RDS contains documentation for a programming
  or command line interface
  you can use to manage Amazon RDS. Amazon RDS is asynchronous, which means that
  some interfaces might
  require techniques such as polling or callback functions to determine when a
  command has been applied. In this
  reference, the parameter descriptions indicate whether a command is applied
  immediately, on the next instance reboot,
  or during the maintenance window. The reference structure is as follows, and we
  list following some related topics
  from the user guide.

  ## Amazon RDS API Reference

    *
  For the alphabetical list of API actions, see
  [API Actions](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).

    *
  For the alphabetical list of data types, see
  [Data Types](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).

    *
  For a list of common query parameters, see
  [Common Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).

    *
  For descriptions of the error codes, see
  [Common Errors](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).

  ## Amazon RDS User Guide

    *
  For a summary of the Amazon RDS interfaces, see
  [Available RDS Interfaces](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).

    *
  For more information about how to use the Query API, see
  [Using the Query API](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      restore_db_cluster_from_snapshot_message() :: %{
        optional("DBClusterParameterGroupName") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        optional("EngineMode") => String.t(),
        optional("NetworkType") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("RdsCustomClusterConfiguration") => rds_custom_cluster_configuration(),
        optional("DatabaseName") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("ScalingConfiguration") => scaling_configuration(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("DBClusterInstanceClass") => String.t(),
        optional("PubliclyAccessible") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("BacktrackWindow") => float(),
        optional("MonitoringRoleArn") => String.t(),
        optional("Iops") => integer(),
        required("DBClusterIdentifier") => String.t(),
        optional("Port") => integer(),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("SnapshotIdentifier") => String.t(),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("AvailabilityZones") => list(String.t()()),
        optional("DBSubnetGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
        required("Engine") => String.t(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type restore_db_cluster_from_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type reboot_db_cluster_result() :: %{String.t() => any()}

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
        "Marker" => String.t(),
        "Parameters" => list(parameter()())
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
      
      db_proxy_target_already_registered_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_target_already_registered_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_attribute() :: %{
        "AttributeName" => String.t(),
        "AttributeValues" => list(String.t()())
      }
      
  """
  @type db_snapshot_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_snapshot_message() :: %{
        required("DBSnapshotIdentifier") => String.t()
      }
      
  """
  @type delete_db_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type delete_db_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommended_action() :: %{
        "ActionId" => String.t(),
        "ApplyModes" => list(String.t()()),
        "ContextAttributes" => list(context_attribute()()),
        "Description" => String.t(),
        "IssueDetails" => issue_details(),
        "Operation" => String.t(),
        "Parameters" => list(recommended_action_parameter()()),
        "Status" => String.t(),
        "Title" => String.t()
      }
      
  """
  @type recommended_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_resource_state_fault() :: %{String.t() => any()}

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
      
      target_health() :: %{
        "Description" => String.t(),
        "Reason" => list(any()),
        "State" => list(any())
      }
      
  """
  @type target_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_quota() :: %{
        "AccountQuotaName" => String.t(),
        "Max" => float(),
        "Used" => float()
      }
      
  """
  @type account_quota() :: %{String.t() => any()}

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
      
      invalid_db_proxy_endpoint_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_proxy_endpoint_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_snapshot() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZones" => list(String.t()()),
        "ClusterCreateTime" => non_neg_integer(),
        "DBClusterIdentifier" => String.t(),
        "DBClusterSnapshotArn" => String.t(),
        "DBClusterSnapshotIdentifier" => String.t(),
        "DBSystemId" => String.t(),
        "DbClusterResourceId" => String.t(),
        "Engine" => String.t(),
        "EngineMode" => String.t(),
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
        "StorageThroughput" => integer(),
        "StorageType" => String.t(),
        "TagList" => list(tag()()),
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
      
      db_cluster_capacity_info() :: %{
        optional("CurrentCapacity") => integer(),
        optional("DBClusterIdentifier") => String.t(),
        optional("PendingCapacity") => integer(),
        optional("SecondsBeforeTimeout") => integer(),
        optional("TimeoutAction") => String.t()
      }
      
  """
  @type db_cluster_capacity_info() :: %{String.t() => any()}

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
      
      db_proxy_endpoint() :: %{
        "CreatedDate" => non_neg_integer(),
        "DBProxyEndpointArn" => String.t(),
        "DBProxyEndpointName" => String.t(),
        "DBProxyName" => String.t(),
        "Endpoint" => String.t(),
        "IsDefault" => boolean(),
        "Status" => list(any()),
        "TargetRole" => list(any()),
        "VpcId" => String.t(),
        "VpcSecurityGroupIds" => list(String.t()()),
        "VpcSubnetIds" => list(String.t()())
      }
      
  """
  @type db_proxy_endpoint() :: %{String.t() => any()}

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
      
      stop_activity_stream_request() :: %{
        optional("ApplyImmediately") => boolean(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type stop_activity_stream_request() :: %{String.t() => any()}

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
      
      create_db_proxy_request() :: %{
        optional("DebugLogging") => boolean(),
        optional("IdleClientTimeout") => integer(),
        optional("RequireTLS") => boolean(),
        optional("Tags") => list(tag()()),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("Auth") => list(user_auth_config()()),
        required("DBProxyName") => String.t(),
        required("EngineFamily") => list(any()),
        required("RoleArn") => String.t(),
        required("VpcSubnetIds") => list(String.t()())
      }
      
  """
  @type create_db_proxy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_proxy_target_group_request() :: %{
        optional("ConnectionPoolConfig") => connection_pool_configuration(),
        optional("NewName") => String.t(),
        required("DBProxyName") => String.t(),
        required("TargetGroupName") => String.t()
      }
      
  """
  @type modify_db_proxy_target_group_request() :: %{String.t() => any()}

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
      
      connection_pool_configuration_info() :: %{
        "ConnectionBorrowTimeout" => integer(),
        "InitQuery" => String.t(),
        "MaxConnectionsPercent" => integer(),
        "MaxIdleConnectionsPercent" => integer(),
        "SessionPinningFilters" => list(String.t()())
      }
      
  """
  @type connection_pool_configuration_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type delete_global_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_role_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type iam_role_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tenant_database_message() :: %{
        optional("CharacterSetName") => String.t(),
        optional("NcharCharacterSetName") => String.t(),
        optional("Tags") => list(tag()()),
        required("DBInstanceIdentifier") => String.t(),
        required("MasterUserPassword") => String.t(),
        required("MasterUsername") => String.t(),
        required("TenantDBName") => String.t()
      }
      
  """
  @type create_tenant_database_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      performance_insights_metric_dimension_group() :: %{
        "Dimensions" => list(String.t()()),
        "Group" => String.t(),
        "Limit" => integer()
      }
      
  """
  @type performance_insights_metric_dimension_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      max_db_shard_group_limit_reached() :: %{
        "message" => String.t()
      }
      
  """
  @type max_db_shard_group_limit_reached() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_parameter_group_name_message() :: %{
        "DBClusterParameterGroupName" => String.t()
      }
      
  """
  @type db_cluster_parameter_group_name_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_automated_backup_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_automated_backup_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_snapshot_attributes_result() :: %{
        "DBSnapshotAttributesResult" => db_snapshot_attributes_result()
      }
      
  """
  @type describe_db_snapshot_attributes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type stop_db_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t()
      }
      
  """
  @type availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_db_instance_message() :: %{
        "Marker" => String.t(),
        "ReservedDBInstances" => list(reserved_db_instance()())
      }
      
  """
  @type reserved_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_read_replica_message() :: %{
        optional("StorageType") => String.t(),
        optional("SourceDBInstanceIdentifier") => String.t(),
        optional("NetworkType") => String.t(),
        optional("AllocatedStorage") => integer(),
        optional("DomainOu") => String.t(),
        optional("EnableCustomerOwnedIp") => boolean(),
        optional("MonitoringInterval") => integer(),
        optional("UpgradeStorageConfig") => boolean(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("SourceDBClusterIdentifier") => String.t(),
        optional("DedicatedLogVolume") => boolean(),
        optional("AvailabilityZone") => String.t(),
        optional("PreSignedUrl") => String.t(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("DomainDnsIps") => list(String.t()()),
        optional("ProcessorFeatures") => list(processor_feature()()),
        optional("MonitoringRoleArn") => String.t(),
        optional("DBInstanceClass") => String.t(),
        optional("MaxAllocatedStorage") => integer(),
        optional("ReplicaMode") => list(any()),
        required("DBInstanceIdentifier") => String.t(),
        optional("DomainAuthSecretArn") => String.t(),
        optional("Iops") => integer(),
        optional("Port") => integer(),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("CustomIamInstanceProfile") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CACertificateIdentifier") => String.t(),
        optional("DBParameterGroupName") => String.t(),
        optional("DatabaseInsightsMode") => list(any()),
        optional("KmsKeyId") => String.t(),
        optional("DomainFqdn") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("StorageThroughput") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
        optional("UseDefaultProcessorFeatures") => boolean(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type create_db_instance_read_replica_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_instance_message() :: %{
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type start_db_instance_message() :: %{String.t() => any()}

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
      
      db_recommendation_message() :: %{
        "DBRecommendation" => db_recommendation()
      }
      
  """
  @type db_recommendation_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_proxy_request() :: %{
        optional("Auth") => list(user_auth_config()()),
        optional("DebugLogging") => boolean(),
        optional("IdleClientTimeout") => integer(),
        optional("NewDBProxyName") => String.t(),
        optional("RequireTLS") => boolean(),
        optional("RoleArn") => String.t(),
        optional("SecurityGroups") => list(String.t()()),
        required("DBProxyName") => String.t()
      }
      
  """
  @type modify_db_proxy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_security_group_not_supported_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_security_group_not_supported_fault() :: %{String.t() => any()}

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
      
      blue_green_deployment() :: %{
        "BlueGreenDeploymentIdentifier" => String.t(),
        "BlueGreenDeploymentName" => String.t(),
        "CreateTime" => non_neg_integer(),
        "DeleteTime" => non_neg_integer(),
        "Source" => String.t(),
        "Status" => String.t(),
        "StatusDetails" => String.t(),
        "SwitchoverDetails" => list(switchover_detail()()),
        "TagList" => list(tag()()),
        "Target" => String.t(),
        "Tasks" => list(blue_green_deployment_task()())
      }
      
  """
  @type blue_green_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      blue_green_deployment_task() :: %{
        "Name" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type blue_green_deployment_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      performance_issue_details() :: %{
        "Analysis" => String.t(),
        "EndTime" => non_neg_integer(),
        "Metrics" => list(metric()()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type performance_issue_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_automated_backup_message() :: %{
        optional("DBInstanceAutomatedBackupsArn") => String.t(),
        optional("DbiResourceId") => String.t()
      }
      
  """
  @type delete_db_instance_automated_backup_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration() :: %{
        "AdditionalEncryptionContext" => map(),
        "CreateTime" => non_neg_integer(),
        "DataFilter" => String.t(),
        "Description" => String.t(),
        "Errors" => list(integration_error()()),
        "IntegrationArn" => String.t(),
        "IntegrationName" => String.t(),
        "KMSKeyId" => String.t(),
        "SourceArn" => String.t(),
        "Status" => list(any()),
        "Tags" => list(tag()()),
        "TargetArn" => String.t()
      }
      
  """
  @type integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tenant_database() :: %{
        "CharacterSetName" => String.t(),
        "DBInstanceIdentifier" => String.t(),
        "DbiResourceId" => String.t(),
        "DeletionProtection" => boolean(),
        "MasterUsername" => String.t(),
        "NcharCharacterSetName" => String.t(),
        "PendingModifiedValues" => tenant_database_pending_modified_values(),
        "Status" => String.t(),
        "TagList" => list(tag()()),
        "TenantDBName" => String.t(),
        "TenantDatabaseARN" => String.t(),
        "TenantDatabaseCreateTime" => non_neg_integer(),
        "TenantDatabaseResourceId" => String.t()
      }
      
  """
  @type tenant_database() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_db_cluster_message() :: %{
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type reboot_db_cluster_message() :: %{String.t() => any()}

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
      
      connection_pool_configuration() :: %{
        "ConnectionBorrowTimeout" => integer(),
        "InitQuery" => String.t(),
        "MaxConnectionsPercent" => integer(),
        "MaxIdleConnectionsPercent" => integer(),
        "SessionPinningFilters" => list(String.t()())
      }
      
  """
  @type connection_pool_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_cluster_parameter_group_result() :: %{
        "DBClusterParameterGroup" => db_cluster_parameter_group()
      }
      
  """
  @type copy_db_cluster_parameter_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_instance_message() :: %{
        optional("DBSnapshotIdentifier") => String.t(),
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type stop_db_instance_message() :: %{String.t() => any()}

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
      
      processor_feature() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type processor_feature() :: %{String.t() => any()}

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
        optional("AvailabilityZoneGroup") => String.t(),
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
      
      modify_activity_stream_response() :: %{
        "EngineNativeAuditFieldsIncluded" => boolean(),
        "KinesisStreamName" => String.t(),
        "KmsKeyId" => String.t(),
        "Mode" => list(any()),
        "PolicyStatus" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type modify_activity_stream_response() :: %{String.t() => any()}

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
      
      metric() :: %{
        "MetricQuery" => metric_query(),
        "Name" => String.t(),
        "References" => list(metric_reference()()),
        "StatisticsDetails" => String.t()
      }
      
  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_instance_from_s3_message() :: %{
        optional("StorageType") => String.t(),
        required("SourceEngineVersion") => String.t(),
        optional("NetworkType") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("AllocatedStorage") => integer(),
        optional("MasterUserSecretKmsKeyId") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("MasterUsername") => String.t(),
        optional("S3Prefix") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        required("SourceEngine") => String.t(),
        optional("DedicatedLogVolume") => boolean(),
        optional("BackupRetentionPeriod") => integer(),
        optional("AvailabilityZone") => String.t(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("EngineVersion") => String.t(),
        required("S3IngestionRoleArn") => String.t(),
        optional("ProcessorFeatures") => list(processor_feature()()),
        optional("MonitoringRoleArn") => String.t(),
        optional("LicenseModel") => String.t(),
        optional("MaxAllocatedStorage") => integer(),
        required("DBInstanceIdentifier") => String.t(),
        optional("Iops") => integer(),
        optional("ManageMasterUserPassword") => boolean(),
        optional("Port") => integer(),
        optional("DBSecurityGroups") => list(String.t()()),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        required("DBInstanceClass") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("StorageEncrypted") => boolean(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CACertificateIdentifier") => String.t(),
        optional("DBParameterGroupName") => String.t(),
        optional("DatabaseInsightsMode") => list(any()),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("DBName") => String.t(),
        optional("StorageThroughput") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
        optional("PreferredMaintenanceWindow") => String.t(),
        required("Engine") => String.t(),
        required("S3BucketName") => String.t(),
        optional("UseDefaultProcessorFeatures") => boolean(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type restore_db_instance_from_s3_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_export_task_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_export_task_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_proxy_targets_response() :: %{
        "Marker" => String.t(),
        "Targets" => list(db_proxy_target()())
      }
      
  """
  @type describe_db_proxy_targets_response() :: %{String.t() => any()}

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
      
      purchase_reserved_db_instances_offering_message() :: %{
        optional("DBInstanceCount") => integer(),
        optional("ReservedDBInstanceId") => String.t(),
        optional("Tags") => list(tag()()),
        required("ReservedDBInstancesOfferingId") => String.t()
      }
      
  """
  @type purchase_reserved_db_instances_offering_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backtrack_db_cluster_message() :: %{
        optional("Force") => boolean(),
        optional("UseEarliestTimeOnPointInTimeUnavailable") => boolean(),
        required("BacktrackTo") => non_neg_integer(),
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type backtrack_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_backtrack_message() :: %{
        "DBClusterBacktracks" => list(db_cluster_backtrack()()),
        "Marker" => String.t()
      }
      
  """
  @type db_cluster_backtrack_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_attributes_result() :: %{
        "DBSnapshotAttributes" => list(db_snapshot_attribute()()),
        "DBSnapshotIdentifier" => String.t()
      }
      
  """
  @type db_snapshot_attributes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_subnet_group_result() :: %{
        "DBSubnetGroup" => db_subnet_group()
      }
      
  """
  @type create_db_subnet_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reference_details() :: %{
        "ScalarReferenceDetails" => scalar_reference_details()
      }
      
  """
  @type reference_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      switchover_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type switchover_global_cluster_result() :: %{String.t() => any()}

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
      
      delete_tenant_database_message() :: %{
        optional("FinalDBSnapshotIdentifier") => String.t(),
        optional("SkipFinalSnapshot") => boolean(),
        required("DBInstanceIdentifier") => String.t(),
        required("TenantDBName") => String.t()
      }
      
  """
  @type delete_tenant_database_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_http_endpoint_response() :: %{
        "HttpEndpointEnabled" => boolean(),
        "ResourceArn" => String.t()
      }
      
  """
  @type disable_http_endpoint_response() :: %{String.t() => any()}

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
      
      promote_read_replica_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type promote_read_replica_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_snapshots_message() :: %{
        optional("DBInstanceIdentifier") => String.t(),
        optional("DBSnapshotIdentifier") => String.t(),
        optional("DbiResourceId") => String.t(),
        optional("Filters") => list(filter()()),
        optional("IncludePublic") => boolean(),
        optional("IncludeShared") => boolean(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SnapshotType") => String.t()
      }
      
  """
  @type describe_db_snapshots_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_target_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_target_group_not_found_fault() :: %{String.t() => any()}

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
      
      describe_blue_green_deployments_request() :: %{
        optional("BlueGreenDeploymentIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_blue_green_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_security_group() :: %{
        "EC2SecurityGroupId" => String.t(),
        "EC2SecurityGroupName" => String.t(),
        "EC2SecurityGroupOwnerId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type ec2_security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster_member() :: %{
        "DBClusterArn" => String.t(),
        "GlobalWriteForwardingStatus" => list(any()),
        "IsWriter" => boolean(),
        "Readers" => list(String.t()()),
        "SynchronizationStatus" => list(any())
      }
      
  """
  @type global_cluster_member() :: %{String.t() => any()}

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
      
      invalid_db_shard_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_shard_group_state_fault() :: %{String.t() => any()}

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
      
      invalid_db_subnet_group_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_subnet_group_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_db_engine_version_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_db_engine_version_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_blue_green_deployments_response() :: %{
        "BlueGreenDeployments" => list(blue_green_deployment()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_blue_green_deployments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_backtrack_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_backtrack_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificates_message() :: %{
        optional("CertificateIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_certificates_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_activity_stream_request() :: %{
        optional("AuditPolicyState") => list(any()),
        optional("ResourceArn") => String.t()
      }
      
  """
  @type modify_activity_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_to_point_in_time_message() :: %{
        optional("DBClusterParameterGroupName") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        optional("EngineMode") => String.t(),
        optional("NetworkType") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("RdsCustomClusterConfiguration") => rds_custom_cluster_configuration(),
        optional("MonitoringInterval") => integer(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("SourceDBClusterIdentifier") => String.t(),
        optional("RestoreType") => String.t(),
        optional("ScalingConfiguration") => scaling_configuration(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("SourceDbClusterResourceId") => String.t(),
        optional("DBClusterInstanceClass") => String.t(),
        optional("PubliclyAccessible") => boolean(),
        optional("BacktrackWindow") => float(),
        optional("MonitoringRoleArn") => String.t(),
        optional("Iops") => integer(),
        required("DBClusterIdentifier") => String.t(),
        optional("Port") => integer(),
        optional("RestoreToTime") => non_neg_integer(),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("DBSubnetGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
        optional("UseLatestRestorableTime") => boolean(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type restore_db_cluster_to_point_in_time_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_configuration_info() :: %{
        "AutoPause" => boolean(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer(),
        "SecondsBeforeTimeout" => integer(),
        "SecondsUntilAutoPause" => integer(),
        "TimeoutAction" => String.t()
      }
      
  """
  @type scaling_configuration_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_subnet_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_subnet_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }
      
  """
  @type integration_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_security_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("DBSecurityGroupDescription") => String.t(),
        required("DBSecurityGroupName") => String.t()
      }
      
  """
  @type create_db_security_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet() :: %{
        "SubnetAvailabilityZone" => availability_zone(),
        "SubnetIdentifier" => String.t(),
        "SubnetOutpost" => outpost(),
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
        optional("DbClusterResourceId") => String.t(),
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
      
      db_shard_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_shard_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_db_engine_version_message() :: %{
        optional("DatabaseInstallationFilesS3BucketName") => String.t(),
        optional("DatabaseInstallationFilesS3Prefix") => String.t(),
        optional("Description") => String.t(),
        optional("ImageId") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("Manifest") => String.t(),
        optional("SourceCustomDbEngineVersionIdentifier") => String.t(),
        optional("Tags") => list(tag()()),
        optional("UseAwsProvidedLatestImage") => boolean(),
        required("Engine") => String.t(),
        required("EngineVersion") => String.t()
      }
      
  """
  @type create_custom_db_engine_version_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_security_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_security_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_message() :: %{
        optional("StorageType") => String.t(),
        optional("MultiTenant") => boolean(),
        optional("Timezone") => String.t(),
        optional("NetworkType") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("AllocatedStorage") => integer(),
        optional("DomainOu") => String.t(),
        optional("MasterUserSecretKmsKeyId") => String.t(),
        optional("EnableCustomerOwnedIp") => boolean(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("MasterUsername") => String.t(),
        optional("BackupTarget") => String.t(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DedicatedLogVolume") => boolean(),
        optional("NcharCharacterSetName") => String.t(),
        optional("BackupRetentionPeriod") => integer(),
        optional("AvailabilityZone") => String.t(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("DomainDnsIps") => list(String.t()()),
        optional("ProcessorFeatures") => list(processor_feature()()),
        optional("MonitoringRoleArn") => String.t(),
        optional("LicenseModel") => String.t(),
        optional("MaxAllocatedStorage") => integer(),
        optional("CharacterSetName") => String.t(),
        required("DBInstanceIdentifier") => String.t(),
        optional("DomainAuthSecretArn") => String.t(),
        optional("Iops") => integer(),
        optional("ManageMasterUserPassword") => boolean(),
        optional("Port") => integer(),
        optional("TdeCredentialPassword") => String.t(),
        optional("DBSecurityGroups") => list(String.t()()),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        required("DBInstanceClass") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("StorageEncrypted") => boolean(),
        optional("CustomIamInstanceProfile") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("DBSystemId") => String.t(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CACertificateIdentifier") => String.t(),
        optional("DBParameterGroupName") => String.t(),
        optional("DatabaseInsightsMode") => list(any()),
        optional("KmsKeyId") => String.t(),
        optional("DomainFqdn") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("DBName") => String.t(),
        optional("PromotionTier") => integer(),
        optional("DBClusterIdentifier") => String.t(),
        optional("StorageThroughput") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
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
      
      delete_db_proxy_response() :: %{
        "DBProxy" => db_proxy()
      }
      
  """
  @type delete_db_proxy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_reference() :: %{
        "Name" => String.t(),
        "ReferenceDetails" => reference_details()
      }
      
  """
  @type metric_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_option_group_options_message() :: %{
        optional("Filters") => list(filter()()),
        optional("MajorEngineVersion") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("EngineName") => String.t()
      }
      
  """
  @type describe_option_group_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_db_engine_version_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_db_engine_version_quota_exceeded_fault() :: %{String.t() => any()}

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
      
      delete_db_security_group_message() :: %{
        required("DBSecurityGroupName") => String.t()
      }
      
  """
  @type delete_db_security_group_message() :: %{String.t() => any()}

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
        "DBSystemId" => String.t(),
        "LatestRestorableTime" => non_neg_integer(),
        "MasterUserSecret" => master_user_secret(),
        "DBName" => String.t(),
        "StatusInfos" => list(db_instance_status_info()()),
        "Engine" => String.t(),
        "MultiTenant" => boolean(),
        "VpcSecurityGroups" => list(vpc_security_group_membership()()),
        "NetworkType" => String.t(),
        "ActivityStreamKmsKeyId" => String.t(),
        "NcharCharacterSetName" => String.t(),
        "MultiAZ" => boolean(),
        "CACertificateIdentifier" => String.t(),
        "Timezone" => String.t(),
        "PreferredMaintenanceWindow" => String.t(),
        "Iops" => integer(),
        "MonitoringInterval" => integer(),
        "ReadReplicaDBInstanceIdentifiers" => list(String.t()()),
        "CustomerOwnedIpEnabled" => boolean(),
        "AwsBackupRecoveryPointArn" => String.t(),
        "OptionGroupMemberships" => list(option_group_membership()()),
        "ReadReplicaSourceDBClusterIdentifier" => String.t(),
        "ActivityStreamKinesisStreamName" => String.t(),
        "PreferredBackupWindow" => String.t(),
        "DatabaseInsightsMode" => list(any()),
        "PendingModifiedValues" => pending_modified_values(),
        "PerformanceInsightsEnabled" => boolean(),
        "PromotionTier" => integer(),
        "ReadReplicaSourceDBInstanceIdentifier" => String.t(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t(),
        "ActivityStreamMode" => list(any()),
        "AvailabilityZone" => String.t(),
        "CopyTagsToSnapshot" => boolean(),
        "ProcessorFeatures" => list(processor_feature()()),
        "DBInstanceClass" => String.t(),
        "ReadReplicaDBClusterIdentifiers" => list(String.t()()),
        "CustomIamInstanceProfile" => String.t(),
        "BackupTarget" => String.t(),
        "ActivityStreamEngineNativeAuditFieldsIncluded" => boolean(),
        "EnhancedMonitoringResourceArn" => String.t(),
        "DedicatedLogVolume" => boolean(),
        "EnabledCloudwatchLogsExports" => list(String.t()()),
        "AutoMinorVersionUpgrade" => boolean(),
        "IsStorageConfigUpgradeAvailable" => boolean(),
        "DBInstanceArn" => String.t(),
        "TagList" => list(tag()()),
        "PercentProgress" => String.t(),
        "ReplicaMode" => list(any()),
        "EngineLifecycleSupport" => String.t(),
        "DbiResourceId" => String.t(),
        "DBParameterGroups" => list(db_parameter_group_status()()),
        "AutomationMode" => list(any()),
        "StorageThroughput" => integer(),
        "DBInstanceStatus" => String.t(),
        "ActivityStreamPolicyStatus" => list(any()),
        "TdeCredentialArn" => String.t(),
        "PerformanceInsightsKMSKeyId" => String.t(),
        "DBInstanceAutomatedBackupsReplications" => list(db_instance_automated_backups_replication()()),
        "MasterUsername" => String.t(),
        "LicenseModel" => String.t(),
        "AutomaticRestartTime" => non_neg_integer(),
        "DBInstanceIdentifier" => String.t(),
        "DBClusterIdentifier" => String.t(),
        "DeletionProtection" => boolean(),
        "StorageType" => String.t(),
        "DBSubnetGroup" => db_subnet_group(),
        "PerformanceInsightsRetentionPeriod" => integer(),
        "InstanceCreateTime" => non_neg_integer(),
        "DomainMemberships" => list(domain_membership()()),
        "DbInstancePort" => integer(),
        "SecondaryAvailabilityZone" => String.t(),
        "ActivityStreamStatus" => list(any()),
        "CertificateDetails" => certificate_details(),
        "PubliclyAccessible" => boolean(),
        "EngineVersion" => String.t(),
        "AllocatedStorage" => integer(),
        "AssociatedRoles" => list(db_instance_role()()),
        "MaxAllocatedStorage" => integer(),
        "StorageEncrypted" => boolean(),
        "DBSecurityGroups" => list(db_security_group_membership()()),
        "Endpoint" => endpoint(),
        "ResumeFullAutomationModeTime" => non_neg_integer(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "CharacterSetName" => String.t(),
        "MonitoringRoleArn" => String.t(),
        "ListenerEndpoint" => endpoint()
      }
      
  """
  @type db_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_endpoint_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_endpoint_already_exists_fault() :: %{String.t() => any()}

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
      
      db_cluster_automated_backup_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_automated_backup_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_default_cluster_parameters_result() :: %{
        "EngineDefaults" => engine_defaults()
      }
      
  """
  @type describe_engine_default_cluster_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_target() :: %{
        "Endpoint" => String.t(),
        "Port" => integer(),
        "RdsResourceId" => String.t(),
        "Role" => list(any()),
        "TargetArn" => String.t(),
        "TargetHealth" => target_health(),
        "TrackedClusterId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type db_proxy_target() :: %{String.t() => any()}

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
      
      recommended_action_parameter() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type recommended_action_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_blue_green_deployment_response() :: %{
        "BlueGreenDeployment" => blue_green_deployment()
      }
      
  """
  @type delete_blue_green_deployment_response() :: %{String.t() => any()}

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
      
      create_db_snapshot_message() :: %{
        optional("Tags") => list(tag()()),
        required("DBInstanceIdentifier") => String.t(),
        required("DBSnapshotIdentifier") => String.t()
      }
      
  """
  @type create_db_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      minimum_engine_version_per_allowed_value() :: %{
        "AllowedValue" => String.t(),
        "MinimumEngineVersion" => String.t()
      }
      
  """
  @type minimum_engine_version_per_allowed_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_valid_db_instance_modifications_result() :: %{
        "ValidDBInstanceModificationsMessage" => valid_db_instance_modifications_message()
      }
      
  """
  @type describe_valid_db_instance_modifications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_image_properties_not_supported_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type ec2_image_properties_not_supported_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_option_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("SourceOptionGroupIdentifier") => String.t(),
        required("TargetOptionGroupDescription") => String.t(),
        required("TargetOptionGroupIdentifier") => String.t()
      }
      
  """
  @type copy_option_group_message() :: %{String.t() => any()}

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
      
      delete_tenant_database_result() :: %{
        "TenantDatabase" => tenant_database()
      }
      
  """
  @type delete_tenant_database_result() :: %{String.t() => any()}

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
      
      invalid_db_instance_automated_backup_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_instance_automated_backup_state_fault() :: %{String.t() => any()}

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
        optional("IncludeAll") => boolean(),
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
      
      create_blue_green_deployment_request() :: %{
        optional("Tags") => list(tag()()),
        optional("TargetAllocatedStorage") => integer(),
        optional("TargetDBClusterParameterGroupName") => String.t(),
        optional("TargetDBInstanceClass") => String.t(),
        optional("TargetDBParameterGroupName") => String.t(),
        optional("TargetEngineVersion") => String.t(),
        optional("TargetIops") => integer(),
        optional("TargetStorageThroughput") => integer(),
        optional("TargetStorageType") => String.t(),
        optional("UpgradeTargetStorageConfig") => boolean(),
        required("BlueGreenDeploymentName") => String.t(),
        required("Source") => String.t()
      }
      
  """
  @type create_blue_green_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type domain_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_read_replica_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type create_db_instance_read_replica_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_from_s3_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type restore_db_cluster_from_s3_result() :: %{String.t() => any()}

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
      
      download_db_log_file_portion_details() :: %{
        "AdditionalDataPending" => boolean(),
        "LogFileData" => String.t(),
        "Marker" => String.t()
      }
      
  """
  @type download_db_log_file_portion_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_certificates_message() :: %{
        optional("CertificateIdentifier") => String.t(),
        optional("RemoveCustomerOverride") => boolean()
      }
      
  """
  @type modify_certificates_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_security_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_security_group_already_exists_fault() :: %{String.t() => any()}

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
        optional("DeleteAutomatedBackups") => boolean(),
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
      
      switchover_blue_green_deployment_request() :: %{
        optional("SwitchoverTimeout") => integer(),
        required("BlueGreenDeploymentIdentifier") => String.t()
      }
      
  """
  @type switchover_blue_green_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_automated_backup_message() :: %{
        "DBInstanceAutomatedBackups" => list(db_instance_automated_backup()()),
        "Marker" => String.t()
      }
      
  """
  @type db_instance_automated_backup_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_security_group() :: %{
        "DBSecurityGroupArn" => String.t(),
        "DBSecurityGroupDescription" => String.t(),
        "DBSecurityGroupName" => String.t(),
        "EC2SecurityGroups" => list(ec2_security_group()()),
        "IPRanges" => list(ip_range()()),
        "OwnerId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type db_security_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_proxy_endpoints_response() :: %{
        "DBProxyEndpoints" => list(db_proxy_endpoint()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_db_proxy_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_export_source_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_export_source_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_task_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type export_task_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_source_identifier_to_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type add_source_identifier_to_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_shard_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_shard_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_message() :: %{}
      
  """
  @type describe_account_attributes_message() :: %{}

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
      
      describe_reserved_db_instances_offerings_message() :: %{
        optional("DBInstanceClass") => String.t(),
        optional("Duration") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("MultiAZ") => boolean(),
        optional("OfferingType") => String.t(),
        optional("ProductDescription") => String.t(),
        optional("ReservedDBInstancesOfferingId") => String.t()
      }
      
  """
  @type describe_reserved_db_instances_offerings_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_db_engine_version_a_m_i() :: %{
        "ImageId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type custom_db_engine_version_a_m_i() :: %{String.t() => any()}

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
        optional("DeleteAutomatedBackups") => boolean(),
        optional("FinalDBSnapshotIdentifier") => String.t(),
        optional("SkipFinalSnapshot") => boolean(),
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type delete_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_instance_automated_backups_replication_result() :: %{
        "DBInstanceAutomatedBackup" => db_instance_automated_backup()
      }
      
  """
  @type stop_db_instance_automated_backups_replication_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_vpc_network_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_vpc_network_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type option_group_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_region() :: %{
        "Endpoint" => String.t(),
        "RegionName" => String.t(),
        "Status" => String.t(),
        "SupportsDBInstanceAutomatedBackupsReplication" => boolean()
      }
      
  """
  @type source_region() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      iam_role_missing_permissions_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type iam_role_missing_permissions_fault() :: %{String.t() => any()}

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
      
      switchover_read_replica_message() :: %{
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type switchover_read_replica_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_security_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_security_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_proxies_request() :: %{
        optional("DBProxyName") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_proxies_request() :: %{String.t() => any()}

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
      
      tenant_database_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type tenant_database_quota_exceeded_fault() :: %{String.t() => any()}

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
      
      authorize_db_security_group_ingress_message() :: %{
        optional("CIDRIP") => String.t(),
        optional("EC2SecurityGroupId") => String.t(),
        optional("EC2SecurityGroupName") => String.t(),
        optional("EC2SecurityGroupOwnerId") => String.t(),
        required("DBSecurityGroupName") => String.t()
      }
      
  """
  @type authorize_db_security_group_ingress_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      switchover_detail() :: %{
        "SourceMember" => String.t(),
        "Status" => String.t(),
        "TargetMember" => String.t()
      }
      
  """
  @type switchover_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_conflict_operation_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_conflict_operation_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_recommendations_message() :: %{
        "DBRecommendations" => list(db_recommendation()()),
        "Marker" => String.t()
      }
      
  """
  @type db_recommendations_message() :: %{String.t() => any()}

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
      
      create_db_shard_group_message() :: %{
        optional("ComputeRedundancy") => integer(),
        optional("MinACU") => float(),
        optional("PubliclyAccessible") => boolean(),
        optional("Tags") => list(tag()()),
        required("DBClusterIdentifier") => String.t(),
        required("DBShardGroupIdentifier") => String.t(),
        required("MaxACU") => float()
      }
      
  """
  @type create_db_shard_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_instance_automated_backups_message() :: %{
        optional("DBInstanceAutomatedBackupsArn") => String.t(),
        optional("DBInstanceIdentifier") => String.t(),
        optional("DbiResourceId") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_instance_automated_backups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_custom_db_engine_version_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_custom_db_engine_version_state_fault() :: %{String.t() => any()}

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
      
      delete_integration_message() :: %{
        required("IntegrationIdentifier") => String.t()
      }
      
  """
  @type delete_integration_message() :: %{String.t() => any()}

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
      
      start_activity_stream_request() :: %{
        optional("ApplyImmediately") => boolean(),
        optional("EngineNativeAuditFieldsIncluded") => boolean(),
        required("KmsKeyId") => String.t(),
        required("Mode") => list(any()),
        required("ResourceArn") => String.t()
      }
      
  """
  @type start_activity_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_does_not_cover_enough_a_zs() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_group_does_not_cover_enough_a_zs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_security_groups_message() :: %{
        optional("DBSecurityGroupName") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_security_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "AutomationMode" => list(any()),
        "BackupRetentionPeriod" => integer(),
        "CACertificateIdentifier" => String.t(),
        "DBInstanceClass" => String.t(),
        "DBInstanceIdentifier" => String.t(),
        "DBSubnetGroupName" => String.t(),
        "DedicatedLogVolume" => boolean(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "Iops" => integer(),
        "LicenseModel" => String.t(),
        "MasterUserPassword" => String.t(),
        "MultiAZ" => boolean(),
        "MultiTenant" => boolean(),
        "PendingCloudwatchLogsExports" => pending_cloudwatch_logs_exports(),
        "Port" => integer(),
        "ProcessorFeatures" => list(processor_feature()()),
        "ResumeFullAutomationModeTime" => non_neg_integer(),
        "StorageThroughput" => integer(),
        "StorageType" => String.t()
      }
      
  """
  @type pending_modified_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_type_not_supported() :: %{
        "message" => String.t()
      }
      
  """
  @type network_type_not_supported() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      orderable_db_instance_option() :: %{
        "MultiAZCapable" => boolean(),
        "MaxStorageSize" => integer(),
        "MinStorageSize" => integer(),
        "Engine" => String.t(),
        "MaxIopsPerGib" => float(),
        "OutpostCapable" => boolean(),
        "SupportsEnhancedMonitoring" => boolean(),
        "MinStorageThroughputPerDbInstance" => integer(),
        "MinStorageThroughputPerIops" => float(),
        "Vpc" => boolean(),
        "MaxStorageThroughputPerIops" => float(),
        "SupportsIAMDatabaseAuthentication" => boolean(),
        "SupportsPerformanceInsights" => boolean(),
        "SupportedEngineModes" => list(String.t()()),
        "SupportsKerberosAuthentication" => boolean(),
        "SupportsIops" => boolean(),
        "DBInstanceClass" => String.t(),
        "MaxStorageThroughputPerDbInstance" => integer(),
        "SupportsGlobalDatabases" => boolean(),
        "MaxIopsPerDbInstance" => integer(),
        "AvailableProcessorFeatures" => list(available_processor_feature()()),
        "AvailabilityZones" => list(availability_zone()()),
        "SupportsDedicatedLogVolume" => boolean(),
        "MinIopsPerDbInstance" => integer(),
        "SupportsClusters" => boolean(),
        "LicenseModel" => String.t(),
        "SupportsStorageEncryption" => boolean(),
        "SupportsStorageThroughput" => boolean(),
        "StorageType" => String.t(),
        "SupportedNetworkTypes" => list(String.t()()),
        "SupportsStorageAutoscaling" => boolean(),
        "ReadReplicaCapable" => boolean(),
        "MinIopsPerGib" => float(),
        "SupportedActivityStreamModes" => list(String.t()()),
        "EngineVersion" => String.t(),
        "AvailabilityZoneGroup" => String.t()
      }
      
  """
  @type orderable_db_instance_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      backup_policy_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type backup_policy_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_parameter_group_message() :: %{
        required("DBParameterGroupName") => String.t()
      }
      
  """
  @type delete_db_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_option_setting() :: %{
        "AllowedValues" => String.t(),
        "ApplyType" => String.t(),
        "DefaultValue" => String.t(),
        "IsModifiable" => boolean(),
        "IsRequired" => boolean(),
        "MinimumEngineVersionPerAllowedValue" => list(minimum_engine_version_per_allowed_value()()),
        "SettingDescription" => String.t(),
        "SettingName" => String.t()
      }
      
  """
  @type option_group_option_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_not_ready_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_not_ready_fault() :: %{String.t() => any()}

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
      
      db_instance_automated_backup_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_automated_backup_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_instance_from_db_snapshot_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type restore_db_instance_from_db_snapshot_result() :: %{String.t() => any()}

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
      
      db_security_group_message() :: %{
        "DBSecurityGroups" => list(db_security_group()()),
        "Marker" => String.t()
      }
      
  """
  @type db_security_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      available_processor_feature() :: %{
        "AllowedValues" => String.t(),
        "DefaultValue" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type available_processor_feature() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_recommendations_message() :: %{
        optional("Filters") => list(filter()()),
        optional("LastUpdatedAfter") => non_neg_integer(),
        optional("LastUpdatedBefore") => non_neg_integer(),
        optional("Locale") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_recommendations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_role_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_role_not_found_fault() :: %{String.t() => any()}

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
      
      db_instance_role_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_role_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_db_security_group_ingress_result() :: %{
        "DBSecurityGroup" => db_security_group()
      }
      
  """
  @type revoke_db_security_group_ingress_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster() :: %{
        "DatabaseName" => String.t(),
        "DeletionProtection" => boolean(),
        "Endpoint" => String.t(),
        "Engine" => String.t(),
        "EngineLifecycleSupport" => String.t(),
        "EngineVersion" => String.t(),
        "FailoverState" => failover_state(),
        "GlobalClusterArn" => String.t(),
        "GlobalClusterIdentifier" => String.t(),
        "GlobalClusterMembers" => list(global_cluster_member()()),
        "GlobalClusterResourceId" => String.t(),
        "Status" => String.t(),
        "StorageEncrypted" => boolean(),
        "TagList" => list(tag()())
      }
      
  """
  @type global_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_http_endpoint_response() :: %{
        "HttpEndpointEnabled" => boolean(),
        "ResourceArn" => String.t()
      }
      
  """
  @type enable_http_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_automated_backups_replication() :: %{
        "DBInstanceAutomatedBackupsArn" => String.t()
      }
      
  """
  @type db_instance_automated_backups_replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_proxies_response() :: %{
        "DBProxies" => list(db_proxy()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_db_proxies_response() :: %{String.t() => any()}

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
      
      master_user_secret() :: %{
        "KmsKeyId" => String.t(),
        "SecretArn" => String.t(),
        "SecretStatus" => String.t()
      }
      
  """
  @type master_user_secret() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_role_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_instance_role_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_global_cluster_result() :: %{
        "GlobalCluster" => global_cluster()
      }
      
  """
  @type create_global_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_message() :: %{
        "Certificates" => list(certificate()()),
        "DefaultCertificateForNewLaunches" => String.t(),
        "Marker" => String.t()
      }
      
  """
  @type certificate_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_v2_features_support() :: %{
        "MaxCapacity" => float(),
        "MinCapacity" => float()
      }
      
  """
  @type serverless_v2_features_support() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_db_proxy_targets_request() :: %{
        optional("DBClusterIdentifiers") => list(String.t()()),
        optional("DBInstanceIdentifiers") => list(String.t()()),
        optional("TargetGroupName") => String.t(),
        required("DBProxyName") => String.t()
      }
      
  """
  @type deregister_db_proxy_targets_request() :: %{String.t() => any()}

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
      
      deregister_db_proxy_targets_response() :: %{}
      
  """
  @type deregister_db_proxy_targets_response() :: %{}

  @typedoc """

  ## Example:
      
      certificate_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type certificate_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorize_db_security_group_ingress_result() :: %{
        "DBSecurityGroup" => db_security_group()
      }
      
  """
  @type authorize_db_security_group_ingress_result() :: %{String.t() => any()}

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
        optional("DbClusterIdentifier") => String.t(),
        optional("GlobalClusterIdentifier") => String.t()
      }
      
  """
  @type remove_from_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_range() :: %{
        "CIDRIP" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type ip_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_state() :: %{
        "FromDbClusterArn" => String.t(),
        "IsDataLossAllowed" => boolean(),
        "Status" => list(any()),
        "ToDbClusterArn" => String.t()
      }
      
  """
  @type failover_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_role() :: %{
        "FeatureName" => String.t(),
        "RoleArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type db_instance_role() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_tenant_databases_message() :: %{
        "DBSnapshotTenantDatabases" => list(db_snapshot_tenant_database()()),
        "Marker" => String.t()
      }
      
  """
  @type db_snapshot_tenant_databases_message() :: %{String.t() => any()}

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
      
      describe_db_proxy_target_groups_request() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TargetGroupName") => String.t(),
        required("DBProxyName") => String.t()
      }
      
  """
  @type describe_db_proxy_target_groups_request() :: %{String.t() => any()}

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
      
      switchover_read_replica_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type switchover_read_replica_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_global_cluster_message() :: %{
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("GlobalClusterIdentifier") => String.t(),
        optional("NewGlobalClusterIdentifier") => String.t()
      }
      
  """
  @type modify_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_engine_version() :: %{
        "Status" => String.t(),
        "DatabaseInstallationFilesS3BucketName" => String.t(),
        "SupportedCACertificateIdentifiers" => list(String.t()()),
        "Engine" => String.t(),
        "ValidUpgradeTarget" => list(upgrade_target()()),
        "SupportsReadReplica" => boolean(),
        "MajorEngineVersion" => String.t(),
        "ServerlessV2FeaturesSupport" => serverless_v2_features_support(),
        "DBEngineMediaType" => String.t(),
        "SupportsLocalWriteForwarding" => boolean(),
        "CustomDBEngineVersionManifest" => String.t(),
        "Image" => custom_db_engine_version_a_m_i(),
        "DefaultCharacterSet" => character_set(),
        "CreateTime" => non_neg_integer(),
        "SupportsLimitlessDatabase" => boolean(),
        "SupportsIntegrations" => boolean(),
        "SupportedEngineModes" => list(String.t()()),
        "ExportableLogTypes" => list(String.t()()),
        "SupportedFeatureNames" => list(String.t()()),
        "KMSKeyId" => String.t(),
        "DBEngineVersionArn" => String.t(),
        "SupportsParallelQuery" => boolean(),
        "DBParameterGroupFamily" => String.t(),
        "DBEngineVersionDescription" => String.t(),
        "SupportsLogExportsToCloudwatchLogs" => boolean(),
        "SupportedTimezones" => list(timezone()()),
        "SupportsGlobalDatabases" => boolean(),
        "TagList" => list(tag()()),
        "SupportedCharacterSets" => list(character_set()()),
        "SupportsBabelfish" => boolean(),
        "DBEngineDescription" => String.t(),
        "SupportedNcharCharacterSets" => list(character_set()()),
        "SupportsCertificateRotationWithoutRestart" => boolean(),
        "DatabaseInstallationFilesS3Prefix" => String.t(),
        "EngineVersion" => String.t()
      }
      
  """
  @type db_engine_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_proxy_endpoint_request() :: %{
        optional("NewDBProxyEndpointName") => String.t(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("DBProxyEndpointName") => String.t()
      }
      
  """
  @type modify_db_proxy_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_tenant_database_message() :: %{
        optional("MasterUserPassword") => String.t(),
        optional("NewTenantDBName") => String.t(),
        required("DBInstanceIdentifier") => String.t(),
        required("TenantDBName") => String.t()
      }
      
  """
  @type modify_tenant_database_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_export_task_message() :: %{
        required("ExportTaskIdentifier") => String.t()
      }
      
  """
  @type cancel_export_task_message() :: %{String.t() => any()}

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
        "Source" => String.t(),
        "SupportedEngineModes" => list(String.t()())
      }
      
  """
  @type parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      promote_read_replica_message() :: %{
        optional("BackupRetentionPeriod") => integer(),
        optional("PreferredBackupWindow") => String.t(),
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type promote_read_replica_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_shard_groups_message() :: %{
        optional("DBShardGroupIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_shard_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_role_to_db_instance_message() :: %{
        required("DBInstanceIdentifier") => String.t(),
        required("FeatureName") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type add_role_to_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_snapshot_attributes_message() :: %{
        required("DBSnapshotIdentifier") => String.t()
      }
      
  """
  @type describe_db_snapshot_attributes_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_event_subscription_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_event_subscription_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point_in_time_restore_not_enabled_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type point_in_time_restore_not_enabled_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_source_regions_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("RegionName") => String.t()
      }
      
  """
  @type describe_source_regions_message() :: %{String.t() => any()}

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
      
      db_shard_group() :: %{
        "ComputeRedundancy" => integer(),
        "DBClusterIdentifier" => String.t(),
        "DBShardGroupArn" => String.t(),
        "DBShardGroupIdentifier" => String.t(),
        "DBShardGroupResourceId" => String.t(),
        "Endpoint" => String.t(),
        "MaxACU" => float(),
        "MinACU" => float(),
        "PubliclyAccessible" => boolean(),
        "Status" => String.t(),
        "TagList" => list(tag()())
      }
      
  """
  @type db_shard_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot() :: %{
        "Status" => String.t(),
        "DBSystemId" => String.t(),
        "Engine" => String.t(),
        "MultiTenant" => boolean(),
        "Encrypted" => boolean(),
        "Timezone" => String.t(),
        "Iops" => integer(),
        "SourceRegion" => String.t(),
        "KmsKeyId" => String.t(),
        "OriginalSnapshotCreateTime" => non_neg_integer(),
        "VpcId" => String.t(),
        "AvailabilityZone" => String.t(),
        "ProcessorFeatures" => list(processor_feature()()),
        "SourceDBSnapshotIdentifier" => String.t(),
        "DedicatedLogVolume" => boolean(),
        "SnapshotTarget" => String.t(),
        "SnapshotDatabaseTime" => non_neg_integer(),
        "TagList" => list(tag()()),
        "PercentProgress" => integer(),
        "Port" => integer(),
        "DbiResourceId" => String.t(),
        "StorageThroughput" => integer(),
        "TdeCredentialArn" => String.t(),
        "DBSnapshotArn" => String.t(),
        "MasterUsername" => String.t(),
        "SnapshotCreateTime" => non_neg_integer(),
        "LicenseModel" => String.t(),
        "DBInstanceIdentifier" => String.t(),
        "StorageType" => String.t(),
        "InstanceCreateTime" => non_neg_integer(),
        "OptionGroupName" => String.t(),
        "DBSnapshotIdentifier" => String.t(),
        "SnapshotType" => String.t(),
        "EngineVersion" => String.t(),
        "AllocatedStorage" => integer(),
        "IAMDatabaseAuthenticationEnabled" => boolean()
      }
      
  """
  @type db_snapshot() :: %{String.t() => any()}

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
      
      delete_custom_db_engine_version_message() :: %{
        required("Engine") => String.t(),
        required("EngineVersion") => String.t()
      }
      
  """
  @type delete_custom_db_engine_version_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_parameter_group_message() :: %{
        required("DBClusterParameterGroupName") => String.t()
      }
      
  """
  @type delete_db_cluster_parameter_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_snapshot_message() :: %{
        optional("EngineVersion") => String.t(),
        optional("OptionGroupName") => String.t(),
        required("DBSnapshotIdentifier") => String.t()
      }
      
  """
  @type modify_db_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_clusters_message() :: %{
        optional("DBClusterIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("IncludeShared") => boolean(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_clusters_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_export_only_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_export_only_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group_not_allowed_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_subnet_group_not_allowed_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cluster_pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "BackupRetentionPeriod" => integer(),
        "CertificateDetails" => certificate_details(),
        "DBClusterIdentifier" => String.t(),
        "EngineVersion" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "Iops" => integer(),
        "MasterUserPassword" => String.t(),
        "PendingCloudwatchLogsExports" => pending_cloudwatch_logs_exports(),
        "RdsCustomClusterConfiguration" => rds_custom_cluster_configuration(),
        "StorageType" => String.t()
      }
      
  """
  @type cluster_pending_modified_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_certificates_result() :: %{
        "Certificate" => certificate()
      }
      
  """
  @type modify_certificates_result() :: %{String.t() => any()}

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
      
      describe_db_log_files_response() :: %{
        "DescribeDBLogFiles" => list(describe_db_log_files_details()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_db_log_files_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_export_task_message() :: %{
        optional("ExportOnly") => list(String.t()()),
        optional("S3Prefix") => String.t(),
        required("ExportTaskIdentifier") => String.t(),
        required("IamRoleArn") => String.t(),
        required("KmsKeyId") => String.t(),
        required("S3BucketName") => String.t(),
        required("SourceArn") => String.t()
      }
      
  """
  @type start_export_task_message() :: %{String.t() => any()}

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
      
      modify_option_group_result() :: %{
        "OptionGroup" => option_group()
      }
      
  """
  @type modify_option_group_result() :: %{String.t() => any()}

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
      
      create_db_snapshot_result() :: %{
        "DBSnapshot" => db_snapshot()
      }
      
  """
  @type create_db_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      switchover_global_cluster_message() :: %{
        required("GlobalClusterIdentifier") => String.t(),
        required("TargetDbClusterIdentifier") => String.t()
      }
      
  """
  @type switchover_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_instance_to_point_in_time_message() :: %{
        optional("StorageType") => String.t(),
        optional("SourceDBInstanceIdentifier") => String.t(),
        optional("SourceDbiResourceId") => String.t(),
        optional("NetworkType") => String.t(),
        optional("SourceDBInstanceAutomatedBackupsArn") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("AllocatedStorage") => integer(),
        optional("DomainOu") => String.t(),
        optional("EnableCustomerOwnedIp") => boolean(),
        optional("RestoreTime") => non_neg_integer(),
        optional("Engine") => String.t(),
        optional("BackupTarget") => String.t(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DedicatedLogVolume") => boolean(),
        optional("AvailabilityZone") => String.t(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("DomainDnsIps") => list(String.t()()),
        optional("ProcessorFeatures") => list(processor_feature()()),
        optional("DBInstanceClass") => String.t(),
        optional("LicenseModel") => String.t(),
        optional("MaxAllocatedStorage") => integer(),
        optional("DomainAuthSecretArn") => String.t(),
        optional("Iops") => integer(),
        optional("Port") => integer(),
        optional("TdeCredentialPassword") => String.t(),
        optional("CustomIamInstanceProfile") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CACertificateIdentifier") => String.t(),
        optional("DBParameterGroupName") => String.t(),
        optional("DomainFqdn") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("DBName") => String.t(),
        optional("StorageThroughput") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        required("TargetDBInstanceIdentifier") => String.t(),
        optional("TdeCredentialArn") => String.t(),
        optional("UseDefaultProcessorFeatures") => boolean(),
        optional("UseLatestRestorableTime") => boolean(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type restore_db_instance_to_point_in_time_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_tasks_message() :: %{
        "ExportTasks" => list(export_task()()),
        "Marker" => String.t()
      }
      
  """
  @type export_tasks_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_option_groups_message() :: %{
        optional("EngineName") => String.t(),
        optional("Filters") => list(filter()()),
        optional("MajorEngineVersion") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("OptionGroupName") => String.t()
      }
      
  """
  @type describe_option_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_http_endpoint_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type disable_http_endpoint_request() :: %{String.t() => any()}

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
        "AuthSecretArn" => String.t(),
        "DnsIps" => list(String.t()()),
        "Domain" => String.t(),
        "FQDN" => String.t(),
        "IAMRoleName" => String.t(),
        "OU" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type domain_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_region_message() :: %{
        "Marker" => String.t(),
        "SourceRegions" => list(source_region()())
      }
      
  """
  @type source_region_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_http_endpoint_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type enable_http_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_database_not_supported_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type source_database_not_supported_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_endpoint_message() :: %{
        required("DBClusterEndpointIdentifier") => String.t()
      }
      
  """
  @type delete_db_cluster_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_option_group_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_option_group_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_message() :: %{
        optional("DBClusterParameterGroupName") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        optional("ClusterScalabilityType") => list(any()),
        optional("EngineMode") => String.t(),
        optional("NetworkType") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("RdsCustomClusterConfiguration") => rds_custom_cluster_configuration(),
        optional("AllocatedStorage") => integer(),
        optional("EnableHttpEndpoint") => boolean(),
        optional("MasterUserSecretKmsKeyId") => String.t(),
        optional("DatabaseName") => String.t(),
        optional("ReplicationSourceIdentifier") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("MasterUsername") => String.t(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("EnableLimitlessDatabase") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("ScalingConfiguration") => scaling_configuration(),
        optional("BackupRetentionPeriod") => integer(),
        optional("PreSignedUrl") => String.t(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("EnableGlobalWriteForwarding") => boolean(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("DBClusterInstanceClass") => String.t(),
        optional("PubliclyAccessible") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("GlobalClusterIdentifier") => String.t(),
        optional("BacktrackWindow") => float(),
        optional("MonitoringRoleArn") => String.t(),
        optional("CharacterSetName") => String.t(),
        optional("Iops") => integer(),
        optional("ManageMasterUserPassword") => boolean(),
        required("DBClusterIdentifier") => String.t(),
        optional("Port") => integer(),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("StorageEncrypted") => boolean(),
        optional("EnableLocalWriteForwarding") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("DBSystemId") => String.t(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CACertificateIdentifier") => String.t(),
        optional("DatabaseInsightsMode") => list(any()),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("AvailabilityZones") => list(String.t()()),
        optional("DBSubnetGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
        optional("PreferredMaintenanceWindow") => String.t(),
        required("Engine") => String.t(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type create_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      valid_storage_options() :: %{
        "IopsToStorageRatio" => list(double_range()()),
        "ProvisionedIops" => list(range()()),
        "ProvisionedStorageThroughput" => list(range()()),
        "StorageSize" => list(range()()),
        "StorageThroughputToIopsRatio" => list(double_range()()),
        "StorageType" => String.t(),
        "SupportsStorageAutoscaling" => boolean()
      }
      
  """
  @type valid_storage_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      doc_link() :: %{
        "Text" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type doc_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_instance_automated_backups_replication_message() :: %{
        required("SourceDBInstanceArn") => String.t()
      }
      
  """
  @type stop_db_instance_automated_backups_replication_message() :: %{String.t() => any()}

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
      
      reserved_db_instances_offering_message() :: %{
        "Marker" => String.t(),
        "ReservedDBInstancesOfferings" => list(reserved_db_instances_offering()())
      }
      
  """
  @type reserved_db_instances_offering_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type instance_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_recommendation_message() :: %{
        optional("Locale") => String.t(),
        optional("RecommendedActionUpdates") => list(recommended_action_update()()),
        optional("Status") => String.t(),
        required("RecommendationId") => String.t()
      }
      
  """
  @type modify_db_recommendation_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      valid_db_instance_modifications_message() :: %{
        "Storage" => list(valid_storage_options()()),
        "SupportsDedicatedLogVolume" => boolean(),
        "ValidProcessorFeatures" => list(available_processor_feature()())
      }
      
  """
  @type valid_db_instance_modifications_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_endpoint_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_endpoint_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_shard_groups_response() :: %{
        "DBShardGroups" => list(db_shard_group()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_db_shard_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_global_cluster_message() :: %{
        optional("DatabaseName") => String.t(),
        optional("DeletionProtection") => boolean(),
        optional("Engine") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("GlobalClusterIdentifier") => String.t(),
        optional("SourceDBClusterIdentifier") => String.t(),
        optional("StorageEncrypted") => boolean(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type create_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_option_group_result() :: %{
        "OptionGroup" => option_group()
      }
      
  """
  @type create_option_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_endpoint_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_endpoint_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_tenant_database_result() :: %{
        "TenantDatabase" => tenant_database()
      }
      
  """
  @type modify_tenant_database_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_version() :: %{
        "IsDefault" => boolean(),
        "Version" => String.t()
      }
      
  """
  @type option_version() :: %{String.t() => any()}

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
      
      user_auth_config() :: %{
        "AuthScheme" => list(any()),
        "ClientPasswordAuthType" => list(any()),
        "Description" => String.t(),
        "IAMAuth" => list(any()),
        "SecretArn" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type user_auth_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_snapshot_result() :: %{
        "DBClusterSnapshot" => db_cluster_snapshot()
      }
      
  """
  @type create_db_cluster_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      integration_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type integration_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_configuration() :: %{
        "DBSecurityGroupMemberships" => list(String.t()()),
        "OptionName" => String.t(),
        "OptionSettings" => list(option_setting()()),
        "OptionVersion" => String.t(),
        "Port" => integer(),
        "VpcSecurityGroupMemberships" => list(String.t()())
      }
      
  """
  @type option_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_parameter_group_result() :: %{
        "DBParameterGroup" => db_parameter_group()
      }
      
  """
  @type create_db_parameter_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_query() :: %{
        "PerformanceInsightsMetricQuery" => performance_insights_metric_query()
      }
      
  """
  @type metric_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_reserved_db_instances_message() :: %{
        optional("DBInstanceClass") => String.t(),
        optional("Duration") => String.t(),
        optional("Filters") => list(filter()()),
        optional("LeaseId") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("MultiAZ") => boolean(),
        optional("OfferingType") => String.t(),
        optional("ProductDescription") => String.t(),
        optional("ReservedDBInstanceId") => String.t(),
        optional("ReservedDBInstancesOfferingId") => String.t()
      }
      
  """
  @type describe_reserved_db_instances_message() :: %{String.t() => any()}

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
      
      modify_integration_message() :: %{
        optional("DataFilter") => String.t(),
        optional("Description") => String.t(),
        optional("IntegrationName") => String.t(),
        required("IntegrationIdentifier") => String.t()
      }
      
  """
  @type modify_integration_message() :: %{String.t() => any()}

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
      
      export_task() :: %{
        "ExportOnly" => list(String.t()()),
        "ExportTaskIdentifier" => String.t(),
        "FailureCause" => String.t(),
        "IamRoleArn" => String.t(),
        "KmsKeyId" => String.t(),
        "PercentProgress" => integer(),
        "S3Bucket" => String.t(),
        "S3Prefix" => String.t(),
        "SnapshotTime" => non_neg_integer(),
        "SourceArn" => String.t(),
        "SourceType" => list(any()),
        "Status" => String.t(),
        "TaskEndTime" => non_neg_integer(),
        "TaskStartTime" => non_neg_integer(),
        "TotalExtractedDataInGB" => integer(),
        "WarningMessage" => String.t()
      }
      
  """
  @type export_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_automated_backup_result() :: %{
        "DBClusterAutomatedBackup" => db_cluster_automated_backup()
      }
      
  """
  @type delete_db_cluster_automated_backup_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tenant_database_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type tenant_database_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_instance_from_s3_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type restore_db_instance_from_s3_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_global_cluster_message() :: %{
        required("GlobalClusterIdentifier") => String.t()
      }
      
  """
  @type delete_global_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group() :: %{
        "AllowsVpcAndNonVpcInstanceMemberships" => boolean(),
        "CopyTimestamp" => non_neg_integer(),
        "EngineName" => String.t(),
        "MajorEngineVersion" => String.t(),
        "OptionGroupArn" => String.t(),
        "OptionGroupDescription" => String.t(),
        "OptionGroupName" => String.t(),
        "Options" => list(option()()),
        "SourceAccountId" => String.t(),
        "SourceOptionGroup" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type option_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_message() :: %{
        required("SubscriptionName") => String.t()
      }
      
  """
  @type delete_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_proxy_target_groups_response() :: %{
        "Marker" => String.t(),
        "TargetGroups" => list(db_proxy_target_group()())
      }
      
  """
  @type describe_db_proxy_target_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_target_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_target_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_category_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_category_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_db_proxy_targets_request() :: %{
        optional("DBClusterIdentifiers") => list(String.t()()),
        optional("DBInstanceIdentifiers") => list(String.t()()),
        optional("TargetGroupName") => String.t(),
        required("DBProxyName") => String.t()
      }
      
  """
  @type register_db_proxy_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate() :: %{
        "CertificateArn" => String.t(),
        "CertificateIdentifier" => String.t(),
        "CertificateType" => String.t(),
        "CustomerOverride" => boolean(),
        "CustomerOverrideValidTill" => non_neg_integer(),
        "Thumbprint" => String.t(),
        "ValidFrom" => non_neg_integer(),
        "ValidTill" => non_neg_integer()
      }
      
  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_option_group_result() :: %{
        "OptionGroup" => option_group()
      }
      
  """
  @type copy_option_group_result() :: %{String.t() => any()}

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
      
      create_integration_message() :: %{
        optional("AdditionalEncryptionContext") => map(),
        optional("DataFilter") => String.t(),
        optional("Description") => String.t(),
        optional("KMSKeyId") => String.t(),
        optional("Tags") => list(tag()()),
        required("IntegrationName") => String.t(),
        required("SourceArn") => String.t(),
        required("TargetArn") => String.t()
      }
      
  """
  @type create_integration_message() :: %{String.t() => any()}

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
      
      invalid_db_proxy_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_proxy_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_cluster_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type option_group_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_db_shard_group_message() :: %{
        required("DBShardGroupIdentifier") => String.t()
      }
      
  """
  @type reboot_db_shard_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_db_engine_version_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_db_engine_version_fault() :: %{String.t() => any()}

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
      
      reserved_db_instances_offering() :: %{
        "CurrencyCode" => String.t(),
        "DBInstanceClass" => String.t(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "MultiAZ" => boolean(),
        "OfferingType" => String.t(),
        "ProductDescription" => String.t(),
        "RecurringCharges" => list(recurring_charge()()),
        "ReservedDBInstancesOfferingId" => String.t(),
        "UsagePrice" => float()
      }
      
  """
  @type reserved_db_instances_offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_shard_group_message() :: %{
        optional("ComputeRedundancy") => integer(),
        optional("MaxACU") => float(),
        optional("MinACU") => float(),
        required("DBShardGroupIdentifier") => String.t()
      }
      
  """
  @type modify_db_shard_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_proxy_endpoint_response() :: %{
        "DBProxyEndpoint" => db_proxy_endpoint()
      }
      
  """
  @type delete_db_proxy_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_snapshot_attribute_message() :: %{
        optional("ValuesToAdd") => list(String.t()()),
        optional("ValuesToRemove") => list(String.t()()),
        required("AttributeName") => String.t(),
        required("DBSnapshotIdentifier") => String.t()
      }
      
  """
  @type modify_db_snapshot_attribute_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      performance_insights_metric_query() :: %{
        "GroupBy" => performance_insights_metric_dimension_group(),
        "Metric" => String.t()
      }
      
  """
  @type performance_insights_metric_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      context_attribute() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type context_attribute() :: %{String.t() => any()}

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
      
      describe_db_proxy_targets_request() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TargetGroupName") => String.t(),
        required("DBProxyName") => String.t()
      }
      
  """
  @type describe_db_proxy_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tenant_databases_message() :: %{
        optional("DBInstanceIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("TenantDBName") => String.t()
      }
      
  """
  @type describe_tenant_databases_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_option_group_message() :: %{
        required("OptionGroupName") => String.t()
      }
      
  """
  @type delete_option_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_instance_to_point_in_time_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type restore_db_instance_to_point_in_time_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_integration_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_integration_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster() :: %{
        "Status" => String.t(),
        "DBClusterParameterGroup" => String.t(),
        "DBSystemId" => String.t(),
        "LatestRestorableTime" => non_neg_integer(),
        "MasterUserSecret" => master_user_secret(),
        "StatusInfos" => list(db_cluster_status_info()()),
        "Engine" => String.t(),
        "GlobalWriteForwardingRequested" => boolean(),
        "VpcSecurityGroups" => list(vpc_security_group_membership()()),
        "NetworkType" => String.t(),
        "ActivityStreamKmsKeyId" => String.t(),
        "MultiAZ" => boolean(),
        "EarliestRestorableTime" => non_neg_integer(),
        "DatabaseName" => String.t(),
        "PreferredMaintenanceWindow" => String.t(),
        "LocalWriteForwardingStatus" => list(any()),
        "Iops" => integer(),
        "ScalingConfigurationInfo" => scaling_configuration_info(),
        "MonitoringInterval" => integer(),
        "ClusterScalabilityType" => list(any()),
        "CloneGroupId" => String.t(),
        "AwsBackupRecoveryPointArn" => String.t(),
        "ActivityStreamKinesisStreamName" => String.t(),
        "PreferredBackupWindow" => String.t(),
        "DatabaseInsightsMode" => list(any()),
        "GlobalWriteForwardingStatus" => list(any()),
        "PendingModifiedValues" => cluster_pending_modified_values(),
        "PerformanceInsightsEnabled" => boolean(),
        "BackupRetentionPeriod" => integer(),
        "KmsKeyId" => String.t(),
        "ActivityStreamMode" => list(any()),
        "ReadReplicaIdentifiers" => list(String.t()()),
        "CopyTagsToSnapshot" => boolean(),
        "RdsCustomClusterConfiguration" => rds_custom_cluster_configuration(),
        "ServerlessV2ScalingConfiguration" => serverless_v2_scaling_configuration_info(),
        "DBClusterInstanceClass" => String.t(),
        "Capacity" => integer(),
        "EnabledCloudwatchLogsExports" => list(String.t()()),
        "HttpEndpointEnabled" => boolean(),
        "AutoMinorVersionUpgrade" => boolean(),
        "TagList" => list(tag()()),
        "BacktrackWindow" => float(),
        "ClusterCreateTime" => non_neg_integer(),
        "PercentProgress" => String.t(),
        "ReplicationSourceIdentifier" => String.t(),
        "EngineLifecycleSupport" => String.t(),
        "Port" => integer(),
        "DBClusterArn" => String.t(),
        "AvailabilityZones" => list(String.t()()),
        "CrossAccountClone" => boolean(),
        "BacktrackConsumedChangeRecords" => float(),
        "LimitlessDatabase" => limitless_database(),
        "StorageThroughput" => integer(),
        "PerformanceInsightsKMSKeyId" => String.t(),
        "MasterUsername" => String.t(),
        "DbClusterResourceId" => String.t(),
        "DBClusterMembers" => list(db_cluster_member()()),
        "ReaderEndpoint" => String.t(),
        "AutomaticRestartTime" => non_neg_integer(),
        "CustomEndpoints" => list(String.t()()),
        "EarliestBacktrackTime" => non_neg_integer(),
        "DBClusterIdentifier" => String.t(),
        "DeletionProtection" => boolean(),
        "StorageType" => String.t(),
        "DBSubnetGroup" => String.t(),
        "PerformanceInsightsRetentionPeriod" => integer(),
        "DomainMemberships" => list(domain_membership()()),
        "DBClusterOptionGroupMemberships" => list(db_cluster_option_group_status()()),
        "EngineMode" => String.t(),
        "ActivityStreamStatus" => list(any()),
        "CertificateDetails" => certificate_details(),
        "PubliclyAccessible" => boolean(),
        "EngineVersion" => String.t(),
        "AllocatedStorage" => integer(),
        "HostedZoneId" => String.t(),
        "AssociatedRoles" => list(db_cluster_role()()),
        "IOOptimizedNextAllowedModificationTime" => non_neg_integer(),
        "StorageEncrypted" => boolean(),
        "Endpoint" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "CharacterSetName" => String.t(),
        "MonitoringRoleArn" => String.t()
      }
      
  """
  @type db_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      switchover_blue_green_deployment_response() :: %{
        "BlueGreenDeployment" => blue_green_deployment()
      }
      
  """
  @type switchover_blue_green_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_topic_arn_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_topic_arn_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_snapshot_result() :: %{
        "DBSnapshot" => db_snapshot()
      }
      
  """
  @type delete_db_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_option_group_message() :: %{
        optional("ApplyImmediately") => boolean(),
        optional("OptionsToInclude") => list(option_configuration()()),
        optional("OptionsToRemove") => list(String.t()()),
        required("OptionGroupName") => String.t()
      }
      
  """
  @type modify_option_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_bucket_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_s3_bucket_fault() :: %{String.t() => any()}

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
      
      option_setting() :: %{
        "AllowedValues" => String.t(),
        "ApplyType" => String.t(),
        "DataType" => String.t(),
        "DefaultValue" => String.t(),
        "Description" => String.t(),
        "IsCollection" => boolean(),
        "IsModifiable" => boolean(),
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type option_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_instance_automated_backups_replication_result() :: %{
        "DBInstanceAutomatedBackup" => db_instance_automated_backup()
      }
      
  """
  @type start_db_instance_automated_backups_replication_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_role_from_db_instance_message() :: %{
        required("DBInstanceIdentifier") => String.t(),
        required("FeatureName") => String.t(),
        required("RoleArn") => String.t()
      }
      
  """
  @type remove_role_from_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_security_group_result() :: %{
        "DBSecurityGroup" => db_security_group()
      }
      
  """
  @type create_db_security_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_instance_result() :: %{
        "DBInstance" => db_instance()
      }
      
  """
  @type start_db_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_activity_stream_response() :: %{
        "KinesisStreamName" => String.t(),
        "KmsKeyId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type stop_activity_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_proxy_target_group_response() :: %{
        "DBProxyTargetGroup" => db_proxy_target_group()
      }
      
  """
  @type modify_db_proxy_target_group_response() :: %{String.t() => any()}

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
      
      register_db_proxy_targets_response() :: %{
        "DBProxyTargets" => list(db_proxy_target()())
      }
      
  """
  @type register_db_proxy_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_snapshot_result() :: %{
        "DBSnapshot" => db_snapshot()
      }
      
  """
  @type copy_db_snapshot_result() :: %{String.t() => any()}

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
      
      scaling_configuration() :: %{
        "AutoPause" => boolean(),
        "MaxCapacity" => integer(),
        "MinCapacity" => integer(),
        "SecondsBeforeTimeout" => integer(),
        "SecondsUntilAutoPause" => integer(),
        "TimeoutAction" => String.t()
      }
      
  """
  @type scaling_configuration() :: %{String.t() => any()}

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
      
      modify_current_db_cluster_capacity_message() :: %{
        optional("Capacity") => integer(),
        optional("SecondsBeforeTimeout") => integer(),
        optional("TimeoutAction") => String.t(),
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type modify_current_db_cluster_capacity_message() :: %{String.t() => any()}

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
      
      describe_db_cluster_backtracks_message() :: %{
        optional("BacktrackIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("DBClusterIdentifier") => String.t()
      }
      
  """
  @type describe_db_cluster_backtracks_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tenant_database_pending_modified_values() :: %{
        "MasterUserPassword" => String.t(),
        "TenantDBName" => String.t()
      }
      
  """
  @type tenant_database_pending_modified_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_instance_from_db_snapshot_message() :: %{
        optional("StorageType") => String.t(),
        optional("NetworkType") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("AllocatedStorage") => integer(),
        optional("DomainOu") => String.t(),
        optional("EnableCustomerOwnedIp") => boolean(),
        optional("DBClusterSnapshotIdentifier") => String.t(),
        optional("DBSnapshotIdentifier") => String.t(),
        optional("Engine") => String.t(),
        optional("BackupTarget") => String.t(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DedicatedLogVolume") => boolean(),
        optional("AvailabilityZone") => String.t(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("DomainDnsIps") => list(String.t()()),
        optional("ProcessorFeatures") => list(processor_feature()()),
        optional("DBInstanceClass") => String.t(),
        optional("LicenseModel") => String.t(),
        required("DBInstanceIdentifier") => String.t(),
        optional("DomainAuthSecretArn") => String.t(),
        optional("Iops") => integer(),
        optional("Port") => integer(),
        optional("TdeCredentialPassword") => String.t(),
        optional("CustomIamInstanceProfile") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CACertificateIdentifier") => String.t(),
        optional("DBParameterGroupName") => String.t(),
        optional("DomainFqdn") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("DBName") => String.t(),
        optional("StorageThroughput") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        optional("TdeCredentialArn") => String.t(),
        optional("UseDefaultProcessorFeatures") => boolean(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type restore_db_instance_from_db_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_integrations_response() :: %{
        "Integrations" => list(integration()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_integrations_response() :: %{String.t() => any()}

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
      
      describe_db_log_files_message() :: %{
        optional("FileLastWritten") => float(),
        optional("FileSize") => float(),
        optional("FilenameContains") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("DBInstanceIdentifier") => String.t()
      }
      
  """
  @type describe_db_log_files_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_global_clusters_message() :: %{
        optional("Filters") => list(filter()()),
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
      
      purchase_reserved_db_instances_offering_result() :: %{
        "ReservedDBInstance" => reserved_db_instance()
      }
      
  """
  @type purchase_reserved_db_instances_offering_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommended_action_update() :: %{
        "ActionId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type recommended_action_update() :: %{String.t() => any()}

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
      
      describe_db_snapshot_tenant_databases_message() :: %{
        optional("DBInstanceIdentifier") => String.t(),
        optional("DBSnapshotIdentifier") => String.t(),
        optional("DbiResourceId") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SnapshotType") => String.t()
      }
      
  """
  @type describe_db_snapshot_tenant_databases_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_db_snapshot_message() :: %{
        optional("CopyOptionGroup") => boolean(),
        optional("CopyTags") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("PreSignedUrl") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TargetCustomAvailabilityZone") => String.t(),
        required("SourceDBSnapshotIdentifier") => String.t(),
        required("TargetDBSnapshotIdentifier") => String.t()
      }
      
  """
  @type copy_db_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_backtrack() :: %{
        "BacktrackIdentifier" => String.t(),
        "BacktrackRequestCreationTime" => non_neg_integer(),
        "BacktrackTo" => non_neg_integer(),
        "BacktrackedFrom" => non_neg_integer(),
        "DBClusterIdentifier" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type db_cluster_backtrack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_proxy_request() :: %{
        required("DBProxyName") => String.t()
      }
      
  """
  @type delete_db_proxy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_proxy_endpoint_request() :: %{
        required("DBProxyEndpointName") => String.t()
      }
      
  """
  @type delete_db_proxy_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type option_group_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_groups() :: %{
        "Marker" => String.t(),
        "OptionGroupsList" => list(option_group()())
      }
      
  """
  @type option_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_proxy_response() :: %{
        "DBProxy" => db_proxy()
      }
      
  """
  @type modify_db_proxy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_attributes_message() :: %{
        "AccountQuotas" => list(account_quota()())
      }
      
  """
  @type account_attributes_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      blue_green_deployment_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type blue_green_deployment_not_found_fault() :: %{String.t() => any()}

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
      
      export_task_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type export_task_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_db_engine_version_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_db_engine_version_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_result() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type modify_event_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_available_ips_in_subnet_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_available_ips_in_subnet_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_cluster_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type global_cluster_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_automated_backup_message() :: %{
        "DBClusterAutomatedBackups" => list(db_cluster_automated_backup()()),
        "Marker" => String.t()
      }
      
  """
  @type db_cluster_automated_backup_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_pending_maintenance_action_result() :: %{
        "ResourcePendingMaintenanceActions" => resource_pending_maintenance_actions()
      }
      
  """
  @type apply_pending_maintenance_action_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_blue_green_deployment_response() :: %{
        "BlueGreenDeployment" => blue_green_deployment()
      }
      
  """
  @type create_blue_green_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_cluster_not_supported_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type source_cluster_not_supported_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_target() :: %{
        "AutoUpgrade" => boolean(),
        "Description" => String.t(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "IsMajorVersionUpgrade" => boolean(),
        "SupportedEngineModes" => list(String.t()()),
        "SupportsBabelfish" => boolean(),
        "SupportsGlobalDatabases" => boolean(),
        "SupportsIntegrations" => boolean(),
        "SupportsLimitlessDatabase" => boolean(),
        "SupportsLocalWriteForwarding" => boolean(),
        "SupportsParallelQuery" => boolean()
      }
      
  """
  @type upgrade_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_db_instance_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_db_instance_not_found_fault() :: %{String.t() => any()}

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
      
      limitless_database() :: %{
        "MinRequiredACU" => float(),
        "Status" => list(any())
      }
      
  """
  @type limitless_database() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_option() :: %{
        "CopyableCrossAccount" => boolean(),
        "DefaultPort" => integer(),
        "Description" => String.t(),
        "EngineName" => String.t(),
        "MajorEngineVersion" => String.t(),
        "MinimumRequiredMinorEngineVersion" => String.t(),
        "Name" => String.t(),
        "OptionGroupOptionSettings" => list(option_group_option_setting()()),
        "OptionGroupOptionVersions" => list(option_version()()),
        "OptionsConflictsWith" => list(String.t()()),
        "OptionsDependedOn" => list(String.t()()),
        "Permanent" => boolean(),
        "Persistent" => boolean(),
        "PortRequired" => boolean(),
        "RequiresAutoMinorEngineVersionUpgrade" => boolean(),
        "SupportsOptionVersionDowngrade" => boolean(),
        "VpcOnly" => boolean()
      }
      
  """
  @type option_group_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      download_db_log_file_portion_message() :: %{
        optional("Marker") => String.t(),
        optional("NumberOfLines") => integer(),
        required("DBInstanceIdentifier") => String.t(),
        required("LogFileName") => String.t()
      }
      
  """
  @type download_db_log_file_portion_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_automated_backup() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZone" => String.t(),
        "AwsBackupRecoveryPointArn" => String.t(),
        "BackupRetentionPeriod" => integer(),
        "BackupTarget" => String.t(),
        "DBInstanceArn" => String.t(),
        "DBInstanceAutomatedBackupsArn" => String.t(),
        "DBInstanceAutomatedBackupsReplications" => list(db_instance_automated_backups_replication()()),
        "DBInstanceIdentifier" => String.t(),
        "DbiResourceId" => String.t(),
        "DedicatedLogVolume" => boolean(),
        "Encrypted" => boolean(),
        "Engine" => String.t(),
        "EngineVersion" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "InstanceCreateTime" => non_neg_integer(),
        "Iops" => integer(),
        "KmsKeyId" => String.t(),
        "LicenseModel" => String.t(),
        "MasterUsername" => String.t(),
        "MultiTenant" => boolean(),
        "OptionGroupName" => String.t(),
        "Port" => integer(),
        "Region" => String.t(),
        "RestoreWindow" => restore_window(),
        "Status" => String.t(),
        "StorageThroughput" => integer(),
        "StorageType" => String.t(),
        "TdeCredentialArn" => String.t(),
        "Timezone" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type db_instance_automated_backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_status_info() :: %{
        "Message" => String.t(),
        "Normal" => boolean(),
        "Status" => String.t(),
        "StatusType" => String.t()
      }
      
  """
  @type db_cluster_status_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_instance_automated_backups_replication_message() :: %{
        optional("BackupRetentionPeriod") => integer(),
        optional("KmsKeyId") => String.t(),
        optional("PreSignedUrl") => String.t(),
        required("SourceDBInstanceArn") => String.t()
      }
      
  """
  @type start_db_instance_automated_backups_replication_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_automated_backup_result() :: %{
        "DBInstanceAutomatedBackup" => db_instance_automated_backup()
      }
      
  """
  @type delete_db_instance_automated_backup_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_details() :: %{
        "CAIdentifier" => String.t(),
        "ValidTill" => non_neg_integer()
      }
      
  """
  @type certificate_details() :: %{String.t() => any()}

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
      
      describe_export_tasks_message() :: %{
        optional("ExportTaskIdentifier") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("SourceArn") => String.t(),
        optional("SourceType") => list(any())
      }
      
  """
  @type describe_export_tasks_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option() :: %{
        "DBSecurityGroupMemberships" => list(db_security_group_membership()()),
        "OptionDescription" => String.t(),
        "OptionName" => String.t(),
        "OptionSettings" => list(option_setting()()),
        "OptionVersion" => String.t(),
        "Permanent" => boolean(),
        "Persistent" => boolean(),
        "Port" => integer(),
        "VpcSecurityGroupMemberships" => list(vpc_security_group_membership()())
      }
      
  """
  @type option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_blue_green_deployment_request() :: %{
        optional("DeleteTarget") => boolean(),
        required("BlueGreenDeploymentIdentifier") => String.t()
      }
      
  """
  @type delete_blue_green_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tenant_database_result() :: %{
        "TenantDatabase" => tenant_database()
      }
      
  """
  @type create_tenant_database_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_iops_not_available_in_a_z_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type provisioned_iops_not_available_in_a_z_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scalar_reference_details() :: %{
        "Value" => float()
      }
      
  """
  @type scalar_reference_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_automated_backup_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_cluster_automated_backup_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_proxy_endpoints_request() :: %{
        optional("DBProxyEndpointName") => String.t(),
        optional("DBProxyName") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_proxy_endpoints_request() :: %{String.t() => any()}

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
      
      user_auth_config_info() :: %{
        "AuthScheme" => list(any()),
        "ClientPasswordAuthType" => list(any()),
        "Description" => String.t(),
        "IAMAuth" => list(any()),
        "SecretArn" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type user_auth_config_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_recommendation() :: %{
        "AdditionalInfo" => String.t(),
        "Category" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Detection" => String.t(),
        "Impact" => String.t(),
        "IssueDetails" => issue_details(),
        "Links" => list(doc_link()()),
        "Reason" => String.t(),
        "Recommendation" => String.t(),
        "RecommendationId" => String.t(),
        "RecommendedActions" => list(recommended_action()()),
        "ResourceArn" => String.t(),
        "Severity" => String.t(),
        "Source" => String.t(),
        "Status" => String.t(),
        "TypeDetection" => String.t(),
        "TypeId" => String.t(),
        "TypeRecommendation" => String.t(),
        "UpdatedTime" => non_neg_integer()
      }
      
  """
  @type db_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_subnet_group_result() :: %{
        "DBSubnetGroup" => db_subnet_group()
      }
      
  """
  @type modify_db_subnet_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_group_options_message() :: %{
        "Marker" => String.t(),
        "OptionGroupOptions" => list(option_group_option()())
      }
      
  """
  @type option_group_options_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_db_log_files_details() :: %{
        "LastWritten" => float(),
        "LogFileName" => String.t(),
        "Size" => float()
      }
      
  """
  @type describe_db_log_files_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_snapshot_result() :: %{
        "DBSnapshot" => db_snapshot()
      }
      
  """
  @type modify_db_snapshot_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_db_instance_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_db_instance_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_tenant_database_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_snapshot_tenant_database_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      serverless_v2_scaling_configuration_info() :: %{
        "MaxCapacity" => float(),
        "MinCapacity" => float(),
        "SecondsUntilAutoPause" => integer()
      }
      
  """
  @type serverless_v2_scaling_configuration_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_proxy_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_integrations_message() :: %{
        optional("Filters") => list(filter()()),
        optional("IntegrationIdentifier") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_integrations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_db_cluster_from_s3_message() :: %{
        optional("DBClusterParameterGroupName") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        required("SourceEngineVersion") => String.t(),
        optional("NetworkType") => String.t(),
        optional("EngineLifecycleSupport") => String.t(),
        optional("MasterUserSecretKmsKeyId") => String.t(),
        optional("DatabaseName") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("DomainIAMRoleName") => String.t(),
        optional("S3Prefix") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        required("SourceEngine") => String.t(),
        optional("BackupRetentionPeriod") => integer(),
        optional("EnableCloudwatchLogsExports") => list(String.t()()),
        optional("EngineVersion") => String.t(),
        required("S3IngestionRoleArn") => String.t(),
        optional("BacktrackWindow") => float(),
        optional("CharacterSetName") => String.t(),
        optional("ManageMasterUserPassword") => boolean(),
        required("DBClusterIdentifier") => String.t(),
        required("MasterUsername") => String.t(),
        optional("Port") => integer(),
        optional("StorageEncrypted") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("KmsKeyId") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("AvailabilityZones") => list(String.t()()),
        optional("DBSubnetGroupName") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        required("Engine") => String.t(),
        required("S3BucketName") => String.t(),
        optional("Tags") => list(tag()())
      }
      
  """
  @type restore_db_cluster_from_s3_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_proxy_endpoint_response() :: %{
        "DBProxyEndpoint" => db_proxy_endpoint()
      }
      
  """
  @type modify_db_proxy_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_automated_backup_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_cluster_automated_backup_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_message() :: %{
        "DBSnapshots" => list(db_snapshot()()),
        "Marker" => String.t()
      }
      
  """
  @type db_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_subnet_group() :: %{
        "DBSubnetGroupArn" => String.t(),
        "DBSubnetGroupDescription" => String.t(),
        "DBSubnetGroupName" => String.t(),
        "SubnetGroupStatus" => String.t(),
        "Subnets" => list(subnet()()),
        "SupportedNetworkTypes" => list(String.t()()),
        "VpcId" => String.t()
      }
      
  """
  @type db_subnet_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_snapshot_tenant_database() :: %{
        "CharacterSetName" => String.t(),
        "DBInstanceIdentifier" => String.t(),
        "DBSnapshotIdentifier" => String.t(),
        "DBSnapshotTenantDatabaseARN" => String.t(),
        "DbiResourceId" => String.t(),
        "EngineName" => String.t(),
        "MasterUsername" => String.t(),
        "NcharCharacterSetName" => String.t(),
        "SnapshotType" => String.t(),
        "TagList" => list(tag()()),
        "TenantDBName" => String.t(),
        "TenantDatabaseCreateTime" => non_neg_integer(),
        "TenantDatabaseResourceId" => String.t()
      }
      
  """
  @type db_snapshot_tenant_database() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_custom_db_engine_version_message() :: %{
        optional("Description") => String.t(),
        optional("Status") => list(any()),
        required("Engine") => String.t(),
        required("EngineVersion") => String.t()
      }
      
  """
  @type modify_custom_db_engine_version_message() :: %{String.t() => any()}

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
        optional("TargetDBInstanceIdentifier") => String.t(),
        required("DBClusterIdentifier") => String.t()
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
      
      tenant_database_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type tenant_database_not_found_fault() :: %{String.t() => any()}

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
      
      db_proxy() :: %{
        "Auth" => list(user_auth_config_info()()),
        "CreatedDate" => non_neg_integer(),
        "DBProxyArn" => String.t(),
        "DBProxyName" => String.t(),
        "DebugLogging" => boolean(),
        "Endpoint" => String.t(),
        "EngineFamily" => String.t(),
        "IdleClientTimeout" => integer(),
        "RequireTLS" => boolean(),
        "RoleArn" => String.t(),
        "Status" => list(any()),
        "UpdatedDate" => non_neg_integer(),
        "VpcId" => String.t(),
        "VpcSecurityGroupIds" => list(String.t()()),
        "VpcSubnetIds" => list(String.t()())
      }
      
  """
  @type db_proxy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_type_not_available_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type storage_type_not_available_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_db_cluster_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_db_cluster_capacity_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_snapshot_attribute_result() :: %{
        "DBSnapshotAttributesResult" => db_snapshot_attributes_result()
      }
      
  """
  @type modify_db_snapshot_attribute_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_quota_exceeded_fault() :: %{String.t() => any()}

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
        optional("DBClusterParameterGroupName") => String.t(),
        optional("ServerlessV2ScalingConfiguration") => serverless_v2_scaling_configuration(),
        optional("StorageType") => String.t(),
        optional("EngineMode") => String.t(),
        optional("NetworkType") => String.t(),
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("AllocatedStorage") => integer(),
        optional("EnableHttpEndpoint") => boolean(),
        optional("MasterUserSecretKmsKeyId") => String.t(),
        optional("NewDBClusterIdentifier") => String.t(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("EnableLimitlessDatabase") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("ScalingConfiguration") => scaling_configuration(),
        optional("BackupRetentionPeriod") => integer(),
        optional("EnableGlobalWriteForwarding") => boolean(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("DBClusterInstanceClass") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("DBInstanceParameterGroupName") => String.t(),
        optional("BacktrackWindow") => float(),
        optional("MonitoringRoleArn") => String.t(),
        optional("CloudwatchLogsExportConfiguration") => cloudwatch_logs_export_configuration(),
        optional("Iops") => integer(),
        optional("ManageMasterUserPassword") => boolean(),
        required("DBClusterIdentifier") => String.t(),
        optional("Port") => integer(),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("EnableLocalWriteForwarding") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("AllowEngineModeChange") => boolean(),
        optional("CACertificateIdentifier") => String.t(),
        optional("ApplyImmediately") => boolean(),
        optional("RotateMasterUserPassword") => boolean(),
        optional("DatabaseInsightsMode") => list(any()),
        optional("AwsBackupRecoveryPointArn") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
        optional("PreferredMaintenanceWindow") => String.t()
      }
      
  """
  @type modify_db_cluster_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_log_file_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type db_log_file_not_found_fault() :: %{String.t() => any()}

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
      
      rds_custom_cluster_configuration() :: %{
        "InterconnectSubnetId" => String.t(),
        "ReplicaMode" => list(any()),
        "TransitGatewayMulticastDomainId" => String.t()
      }
      
  """
  @type rds_custom_cluster_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_db_instances_offering_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_db_instances_offering_not_found_fault() :: %{String.t() => any()}

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
      
      describe_db_cluster_automated_backups_message() :: %{
        optional("DBClusterIdentifier") => String.t(),
        optional("DbClusterResourceId") => String.t(),
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_db_cluster_automated_backups_message() :: %{String.t() => any()}

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
        "DBParameterGroupName" => String.t()
      }
      
  """
  @type db_parameter_group_name_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      outpost() :: %{
        "Arn" => String.t()
      }
      
  """
  @type outpost() :: %{String.t() => any()}

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
      
      create_custom_db_engine_version_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type create_custom_db_engine_version_fault() :: %{String.t() => any()}

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
      
      issue_details() :: %{
        "PerformanceIssueDetails" => performance_issue_details()
      }
      
  """
  @type issue_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_shard_group_message() :: %{
        required("DBShardGroupIdentifier") => String.t()
      }
      
  """
  @type delete_db_shard_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_availability_zone_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type custom_availability_zone_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_proxy_target_group() :: %{
        "ConnectionPoolConfig" => connection_pool_configuration_info(),
        "CreatedDate" => non_neg_integer(),
        "DBProxyName" => String.t(),
        "IsDefault" => boolean(),
        "Status" => String.t(),
        "TargetGroupArn" => String.t(),
        "TargetGroupName" => String.t(),
        "UpdatedDate" => non_neg_integer()
      }
      
  """
  @type db_proxy_target_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_proxy_response() :: %{
        "DBProxy" => db_proxy()
      }
      
  """
  @type create_db_proxy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revoke_db_security_group_ingress_message() :: %{
        optional("CIDRIP") => String.t(),
        optional("EC2SecurityGroupId") => String.t(),
        optional("EC2SecurityGroupName") => String.t(),
        optional("EC2SecurityGroupOwnerId") => String.t(),
        required("DBSecurityGroupName") => String.t()
      }
      
  """
  @type revoke_db_security_group_ingress_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_snapshot_message() :: %{
        required("DBClusterSnapshotIdentifier") => String.t()
      }
      
  """
  @type delete_db_cluster_snapshot_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_db_instance_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type reserved_db_instance_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_db_instance() :: %{
        "CurrencyCode" => String.t(),
        "DBInstanceClass" => String.t(),
        "DBInstanceCount" => integer(),
        "Duration" => integer(),
        "FixedPrice" => float(),
        "LeaseId" => String.t(),
        "MultiAZ" => boolean(),
        "OfferingType" => String.t(),
        "ProductDescription" => String.t(),
        "RecurringCharges" => list(recurring_charge()()),
        "ReservedDBInstanceArn" => String.t(),
        "ReservedDBInstanceId" => String.t(),
        "ReservedDBInstancesOfferingId" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => String.t(),
        "UsagePrice" => float()
      }
      
  """
  @type reserved_db_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_automated_backup() :: %{
        "AllocatedStorage" => integer(),
        "AvailabilityZones" => list(String.t()()),
        "AwsBackupRecoveryPointArn" => String.t(),
        "BackupRetentionPeriod" => integer(),
        "ClusterCreateTime" => non_neg_integer(),
        "DBClusterArn" => String.t(),
        "DBClusterAutomatedBackupsArn" => String.t(),
        "DBClusterIdentifier" => String.t(),
        "DbClusterResourceId" => String.t(),
        "Engine" => String.t(),
        "EngineMode" => String.t(),
        "EngineVersion" => String.t(),
        "IAMDatabaseAuthenticationEnabled" => boolean(),
        "Iops" => integer(),
        "KmsKeyId" => String.t(),
        "LicenseModel" => String.t(),
        "MasterUsername" => String.t(),
        "Port" => integer(),
        "Region" => String.t(),
        "RestoreWindow" => restore_window(),
        "Status" => String.t(),
        "StorageEncrypted" => boolean(),
        "StorageThroughput" => integer(),
        "StorageType" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type db_cluster_automated_backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_blue_green_deployment_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_blue_green_deployment_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_db_cluster_result() :: %{
        "DBCluster" => db_cluster()
      }
      
  """
  @type failover_db_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_window() :: %{
        "EarliestTime" => non_neg_integer(),
        "LatestTime" => non_neg_integer()
      }
      
  """
  @type restore_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_db_instance_message() :: %{
        optional("StorageType") => String.t(),
        optional("AutomationMode") => list(any()),
        optional("MultiTenant") => boolean(),
        optional("NetworkType") => String.t(),
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("AllocatedStorage") => integer(),
        optional("DomainOu") => String.t(),
        optional("MasterUserSecretKmsKeyId") => String.t(),
        optional("EnableCustomerOwnedIp") => boolean(),
        optional("MasterUserPassword") => String.t(),
        optional("PreferredBackupWindow") => String.t(),
        optional("MonitoringInterval") => integer(),
        optional("DisableDomain") => boolean(),
        optional("DBPortNumber") => integer(),
        optional("ResumeFullAutomationModeMinutes") => integer(),
        optional("Engine") => String.t(),
        optional("DomainIAMRoleName") => String.t(),
        optional("Domain") => String.t(),
        optional("EnableIAMDatabaseAuthentication") => boolean(),
        optional("CopyTagsToSnapshot") => boolean(),
        optional("DedicatedLogVolume") => boolean(),
        optional("BackupRetentionPeriod") => integer(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("PubliclyAccessible") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("DomainDnsIps") => list(String.t()()),
        optional("ProcessorFeatures") => list(processor_feature()()),
        optional("MonitoringRoleArn") => String.t(),
        optional("DBInstanceClass") => String.t(),
        optional("LicenseModel") => String.t(),
        optional("MaxAllocatedStorage") => integer(),
        optional("ReplicaMode") => list(any()),
        required("DBInstanceIdentifier") => String.t(),
        optional("NewDBInstanceIdentifier") => String.t(),
        optional("DomainAuthSecretArn") => String.t(),
        optional("CloudwatchLogsExportConfiguration") => cloudwatch_logs_export_configuration(),
        optional("Iops") => integer(),
        optional("ManageMasterUserPassword") => boolean(),
        optional("TdeCredentialPassword") => String.t(),
        optional("DBSecurityGroups") => list(String.t()()),
        optional("PerformanceInsightsKMSKeyId") => String.t(),
        optional("EnablePerformanceInsights") => boolean(),
        optional("MultiAZ") => boolean(),
        optional("DeletionProtection") => boolean(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        optional("CertificateRotationRestart") => boolean(),
        optional("CACertificateIdentifier") => String.t(),
        optional("ApplyImmediately") => boolean(),
        optional("RotateMasterUserPassword") => boolean(),
        optional("DBParameterGroupName") => String.t(),
        optional("DatabaseInsightsMode") => list(any()),
        optional("AwsBackupRecoveryPointArn") => String.t(),
        optional("DomainFqdn") => String.t(),
        optional("OptionGroupName") => String.t(),
        optional("PromotionTier") => integer(),
        optional("StorageThroughput") => integer(),
        optional("DBSubnetGroupName") => String.t(),
        optional("PerformanceInsightsRetentionPeriod") => integer(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("TdeCredentialArn") => String.t(),
        optional("UseDefaultProcessorFeatures") => boolean()
      }
      
  """
  @type modify_db_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tenant_databases_message() :: %{
        "Marker" => String.t(),
        "TenantDatabases" => list(tenant_database()())
      }
      
  """
  @type tenant_databases_message() :: %{String.t() => any()}

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
        "MinCapacity" => float(),
        "SecondsUntilAutoPause" => integer()
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
      
      create_db_proxy_endpoint_response() :: %{
        "DBProxyEndpoint" => db_proxy_endpoint()
      }
      
  """
  @type create_db_proxy_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      blue_green_deployment_already_exists_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type blue_green_deployment_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failover_global_cluster_message() :: %{
        optional("AllowDataLoss") => boolean(),
        optional("Switchover") => boolean(),
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
        "Marker" => String.t(),
        "Parameters" => list(parameter()())
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
      
      create_option_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("EngineName") => String.t(),
        required("MajorEngineVersion") => String.t(),
        required("OptionGroupDescription") => String.t(),
        required("OptionGroupName") => String.t()
      }
      
  """
  @type create_option_group_message() :: %{String.t() => any()}

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
      
      create_db_proxy_endpoint_request() :: %{
        optional("Tags") => list(tag()()),
        optional("TargetRole") => list(any()),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("DBProxyEndpointName") => String.t(),
        required("DBProxyName") => String.t(),
        required("VpcSubnetIds") => list(String.t()())
      }
      
  """
  @type create_db_proxy_endpoint_request() :: %{String.t() => any()}

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
      
      start_activity_stream_response() :: %{
        "ApplyImmediately" => boolean(),
        "EngineNativeAuditFieldsIncluded" => boolean(),
        "KinesisStreamName" => String.t(),
        "KmsKeyId" => String.t(),
        "Mode" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type start_activity_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_automated_backup_message() :: %{
        required("DbClusterResourceId") => String.t()
      }
      
  """
  @type delete_db_cluster_automated_backup_message() :: %{String.t() => any()}

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

  @type add_role_to_db_instance_errors() ::
          invalid_db_instance_state_fault()
          | db_instance_role_already_exists_fault()
          | db_instance_role_quota_exceeded_fault()
          | db_instance_not_found_fault()

  @type add_source_identifier_to_subscription_errors() ::
          subscription_not_found_fault() | source_not_found_fault()

  @type add_tags_to_resource_errors() ::
          tenant_database_not_found_fault()
          | db_snapshot_tenant_database_not_found_fault()
          | blue_green_deployment_not_found_fault()
          | db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | integration_not_found_fault()
          | db_proxy_not_found_fault()
          | db_instance_not_found_fault()
          | db_proxy_target_group_not_found_fault()

  @type apply_pending_maintenance_action_errors() ::
          invalid_db_instance_state_fault()
          | invalid_db_cluster_state_fault()
          | resource_not_found_fault()

  @type authorize_db_security_group_ingress_errors() ::
          authorization_quota_exceeded_fault()
          | invalid_db_security_group_state_fault()
          | authorization_already_exists_fault()
          | db_security_group_not_found_fault()

  @type backtrack_db_cluster_errors() ::
          db_cluster_not_found_fault() | invalid_db_cluster_state_fault()

  @type cancel_export_task_errors() ::
          export_task_not_found_fault() | invalid_export_task_state_fault()

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

  @type copy_db_snapshot_errors() ::
          custom_availability_zone_not_found_fault()
          | kms_key_not_accessible_fault()
          | db_snapshot_not_found_fault()
          | invalid_db_snapshot_state_fault()
          | db_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type copy_option_group_errors() ::
          option_group_not_found_fault()
          | option_group_already_exists_fault()
          | option_group_quota_exceeded_fault()

  @type create_blue_green_deployment_errors() ::
          invalid_db_instance_state_fault()
          | blue_green_deployment_already_exists_fault()
          | source_cluster_not_supported_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | db_cluster_parameter_group_not_found_fault()
          | instance_quota_exceeded_fault()
          | source_database_not_supported_fault()
          | db_instance_not_found_fault()
          | db_parameter_group_not_found_fault()
          | db_cluster_quota_exceeded_fault()

  @type create_custom_db_engine_version_errors() ::
          create_custom_db_engine_version_fault()
          | custom_db_engine_version_already_exists_fault()
          | kms_key_not_accessible_fault()
          | ec2_image_properties_not_supported_fault()
          | custom_db_engine_version_quota_exceeded_fault()

  @type create_db_cluster_errors() ::
          insufficient_storage_cluster_capacity_fault()
          | invalid_db_instance_state_fault()
          | global_cluster_not_found_fault()
          | option_group_not_found_fault()
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
          | domain_not_found_fault()
          | invalid_global_cluster_state_fault()
          | invalid_subnet()
          | invalid_db_subnet_group_state_fault()
          | invalid_db_subnet_group_fault()
          | insufficient_db_instance_capacity_fault()
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
          | certificate_not_found_fault()
          | authorization_not_found_fault()
          | backup_policy_not_found_fault()
          | network_type_not_supported()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | tenant_database_quota_exceeded_fault()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type create_db_instance_read_replica_errors() ::
          invalid_db_instance_state_fault()
          | provisioned_iops_not_available_in_a_z_fault()
          | option_group_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | storage_quota_exceeded_fault()
          | instance_quota_exceeded_fault()
          | db_subnet_group_not_allowed_fault()
          | db_subnet_group_not_found_fault()
          | certificate_not_found_fault()
          | db_instance_not_found_fault()
          | network_type_not_supported()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | tenant_database_quota_exceeded_fault()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | invalid_db_subnet_group_fault()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type create_db_parameter_group_errors() ::
          db_parameter_group_already_exists_fault() | db_parameter_group_quota_exceeded_fault()

  @type create_db_proxy_errors() ::
          db_proxy_quota_exceeded_fault() | invalid_subnet() | db_proxy_already_exists_fault()

  @type create_db_proxy_endpoint_errors() ::
          invalid_db_proxy_state_fault()
          | db_proxy_endpoint_quota_exceeded_fault()
          | db_proxy_not_found_fault()
          | db_proxy_endpoint_already_exists_fault()
          | invalid_subnet()

  @type create_db_security_group_errors() ::
          db_security_group_already_exists_fault()
          | db_security_group_quota_exceeded_fault()
          | db_security_group_not_supported_fault()

  @type create_db_shard_group_errors() ::
          db_cluster_not_found_fault()
          | unsupported_db_engine_version_fault()
          | invalid_db_cluster_state_fault()
          | network_type_not_supported()
          | invalid_vpc_network_state_fault()
          | db_shard_group_already_exists_fault()
          | max_db_shard_group_limit_reached()

  @type create_db_snapshot_errors() ::
          invalid_db_instance_state_fault()
          | db_instance_not_found_fault()
          | db_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

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

  @type create_integration_errors() ::
          db_cluster_not_found_fault()
          | kms_key_not_accessible_fault()
          | db_instance_not_found_fault()
          | integration_quota_exceeded_fault()
          | integration_conflict_operation_fault()
          | integration_already_exists_fault()

  @type create_option_group_errors() ::
          option_group_already_exists_fault() | option_group_quota_exceeded_fault()

  @type create_tenant_database_errors() ::
          invalid_db_instance_state_fault()
          | tenant_database_already_exists_fault()
          | db_instance_not_found_fault()
          | tenant_database_quota_exceeded_fault()

  @type delete_blue_green_deployment_errors() ::
          invalid_blue_green_deployment_state_fault() | blue_green_deployment_not_found_fault()

  @type delete_custom_db_engine_version_errors() ::
          invalid_custom_db_engine_version_state_fault()
          | custom_db_engine_version_not_found_fault()

  @type delete_db_cluster_errors() ::
          db_cluster_automated_backup_quota_exceeded_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_db_cluster_snapshot_state_fault()
          | db_cluster_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type delete_db_cluster_automated_backup_errors() ::
          invalid_db_cluster_automated_backup_state_fault()
          | db_cluster_automated_backup_not_found_fault()

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
          | db_instance_automated_backup_quota_exceeded_fault()
          | snapshot_quota_exceeded_fault()

  @type delete_db_instance_automated_backup_errors() ::
          db_instance_automated_backup_not_found_fault()
          | invalid_db_instance_automated_backup_state_fault()

  @type delete_db_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type delete_db_proxy_errors() :: invalid_db_proxy_state_fault() | db_proxy_not_found_fault()

  @type delete_db_proxy_endpoint_errors() ::
          db_proxy_endpoint_not_found_fault() | invalid_db_proxy_endpoint_state_fault()

  @type delete_db_security_group_errors() ::
          invalid_db_security_group_state_fault() | db_security_group_not_found_fault()

  @type delete_db_shard_group_errors() ::
          invalid_db_cluster_state_fault()
          | db_shard_group_not_found_fault()
          | invalid_db_shard_group_state_fault()

  @type delete_db_snapshot_errors() ::
          db_snapshot_not_found_fault() | invalid_db_snapshot_state_fault()

  @type delete_db_subnet_group_errors() ::
          invalid_db_subnet_state_fault()
          | db_subnet_group_not_found_fault()
          | invalid_db_subnet_group_state_fault()

  @type delete_event_subscription_errors() ::
          subscription_not_found_fault() | invalid_event_subscription_state_fault()

  @type delete_global_cluster_errors() ::
          global_cluster_not_found_fault() | invalid_global_cluster_state_fault()

  @type delete_integration_errors() ::
          invalid_integration_state_fault()
          | integration_not_found_fault()
          | integration_conflict_operation_fault()

  @type delete_option_group_errors() ::
          option_group_not_found_fault() | invalid_option_group_state_fault()

  @type delete_tenant_database_errors() ::
          invalid_db_instance_state_fault()
          | tenant_database_not_found_fault()
          | db_instance_not_found_fault()

  @type deregister_db_proxy_targets_errors() ::
          invalid_db_proxy_state_fault()
          | db_proxy_target_not_found_fault()
          | db_proxy_not_found_fault()
          | db_proxy_target_group_not_found_fault()

  @type describe_blue_green_deployments_errors() :: blue_green_deployment_not_found_fault()

  @type describe_certificates_errors() :: certificate_not_found_fault()

  @type describe_db_cluster_automated_backups_errors() ::
          db_cluster_automated_backup_not_found_fault()

  @type describe_db_cluster_backtracks_errors() ::
          db_cluster_not_found_fault() | db_cluster_backtrack_not_found_fault()

  @type describe_db_cluster_endpoints_errors() :: db_cluster_not_found_fault()

  @type describe_db_cluster_parameter_groups_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_cluster_parameters_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_cluster_snapshot_attributes_errors() :: db_cluster_snapshot_not_found_fault()

  @type describe_db_cluster_snapshots_errors() :: db_cluster_snapshot_not_found_fault()

  @type describe_db_clusters_errors() :: db_cluster_not_found_fault()

  @type describe_db_instance_automated_backups_errors() ::
          db_instance_automated_backup_not_found_fault()

  @type describe_db_instances_errors() :: db_instance_not_found_fault()

  @type describe_db_log_files_errors() ::
          db_instance_not_found_fault() | db_instance_not_ready_fault()

  @type describe_db_parameter_groups_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_parameters_errors() :: db_parameter_group_not_found_fault()

  @type describe_db_proxies_errors() :: db_proxy_not_found_fault()

  @type describe_db_proxy_endpoints_errors() ::
          db_proxy_endpoint_not_found_fault() | db_proxy_not_found_fault()

  @type describe_db_proxy_target_groups_errors() ::
          invalid_db_proxy_state_fault()
          | db_proxy_not_found_fault()
          | db_proxy_target_group_not_found_fault()

  @type describe_db_proxy_targets_errors() ::
          invalid_db_proxy_state_fault()
          | db_proxy_target_not_found_fault()
          | db_proxy_not_found_fault()
          | db_proxy_target_group_not_found_fault()

  @type describe_db_security_groups_errors() :: db_security_group_not_found_fault()

  @type describe_db_shard_groups_errors() ::
          db_cluster_not_found_fault() | db_shard_group_not_found_fault()

  @type describe_db_snapshot_attributes_errors() :: db_snapshot_not_found_fault()

  @type describe_db_snapshot_tenant_databases_errors() :: db_snapshot_not_found_fault()

  @type describe_db_snapshots_errors() :: db_snapshot_not_found_fault()

  @type describe_db_subnet_groups_errors() :: db_subnet_group_not_found_fault()

  @type describe_event_subscriptions_errors() :: subscription_not_found_fault()

  @type describe_export_tasks_errors() :: export_task_not_found_fault()

  @type describe_global_clusters_errors() :: global_cluster_not_found_fault()

  @type describe_integrations_errors() :: integration_not_found_fault()

  @type describe_option_groups_errors() :: option_group_not_found_fault()

  @type describe_pending_maintenance_actions_errors() :: resource_not_found_fault()

  @type describe_reserved_db_instances_errors() :: reserved_db_instance_not_found_fault()

  @type describe_reserved_db_instances_offerings_errors() ::
          reserved_db_instances_offering_not_found_fault()

  @type describe_tenant_databases_errors() :: db_instance_not_found_fault()

  @type describe_valid_db_instance_modifications_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

  @type disable_http_endpoint_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type download_db_log_file_portion_errors() ::
          db_log_file_not_found_fault()
          | db_instance_not_found_fault()
          | db_instance_not_ready_fault()

  @type enable_http_endpoint_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

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
          tenant_database_not_found_fault()
          | db_snapshot_tenant_database_not_found_fault()
          | blue_green_deployment_not_found_fault()
          | db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | integration_not_found_fault()
          | db_proxy_not_found_fault()
          | db_instance_not_found_fault()
          | db_proxy_target_group_not_found_fault()

  @type modify_activity_stream_errors() ::
          invalid_db_instance_state_fault()
          | db_instance_not_found_fault()
          | resource_not_found_fault()

  @type modify_certificates_errors() :: certificate_not_found_fault()

  @type modify_current_db_cluster_capacity_errors() ::
          invalid_db_cluster_capacity_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type modify_custom_db_engine_version_errors() ::
          invalid_custom_db_engine_version_state_fault()
          | custom_db_engine_version_not_found_fault()

  @type modify_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | storage_type_not_available_fault()
          | option_group_not_found_fault()
          | db_cluster_not_found_fault()
          | db_cluster_already_exists_fault()
          | invalid_db_security_group_state_fault()
          | invalid_db_cluster_state_fault()
          | db_cluster_parameter_group_not_found_fault()
          | storage_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | invalid_subnet()
          | invalid_db_subnet_group_state_fault()
          | db_instance_already_exists_fault()

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
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | storage_quota_exceeded_fault()
          | certificate_not_found_fault()
          | db_upgrade_dependency_failure_fault()
          | db_instance_not_found_fault()
          | authorization_not_found_fault()
          | backup_policy_not_found_fault()
          | network_type_not_supported()
          | tenant_database_quota_exceeded_fault()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type modify_db_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type modify_db_proxy_errors() ::
          invalid_db_proxy_state_fault()
          | db_proxy_not_found_fault()
          | db_proxy_already_exists_fault()

  @type modify_db_proxy_endpoint_errors() ::
          invalid_db_proxy_state_fault()
          | db_proxy_endpoint_not_found_fault()
          | db_proxy_endpoint_already_exists_fault()
          | invalid_db_proxy_endpoint_state_fault()

  @type modify_db_proxy_target_group_errors() ::
          invalid_db_proxy_state_fault()
          | db_proxy_not_found_fault()
          | db_proxy_target_group_not_found_fault()

  @type modify_db_shard_group_errors() ::
          invalid_db_cluster_state_fault()
          | db_shard_group_not_found_fault()
          | db_shard_group_already_exists_fault()

  @type modify_db_snapshot_errors() :: db_snapshot_not_found_fault()

  @type modify_db_snapshot_attribute_errors() ::
          db_snapshot_not_found_fault()
          | invalid_db_snapshot_state_fault()
          | shared_snapshot_quota_exceeded_fault()

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
          invalid_db_instance_state_fault()
          | global_cluster_already_exists_fault()
          | global_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_global_cluster_state_fault()

  @type modify_integration_errors() ::
          invalid_integration_state_fault()
          | integration_not_found_fault()
          | integration_conflict_operation_fault()

  @type modify_option_group_errors() ::
          option_group_not_found_fault() | invalid_option_group_state_fault()

  @type modify_tenant_database_errors() ::
          invalid_db_instance_state_fault()
          | tenant_database_not_found_fault()
          | tenant_database_already_exists_fault()
          | db_instance_not_found_fault()

  @type promote_read_replica_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

  @type promote_read_replica_db_cluster_errors() ::
          db_cluster_not_found_fault() | invalid_db_cluster_state_fault()

  @type purchase_reserved_db_instances_offering_errors() ::
          reserved_db_instance_already_exists_fault()
          | reserved_db_instances_offering_not_found_fault()
          | reserved_db_instance_quota_exceeded_fault()

  @type reboot_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type reboot_db_instance_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

  @type reboot_db_shard_group_errors() ::
          db_shard_group_not_found_fault() | invalid_db_shard_group_state_fault()

  @type register_db_proxy_targets_errors() ::
          invalid_db_instance_state_fault()
          | insufficient_available_ips_in_subnet_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_db_proxy_state_fault()
          | db_proxy_not_found_fault()
          | db_instance_not_found_fault()
          | db_proxy_target_group_not_found_fault()
          | db_proxy_target_already_registered_fault()

  @type remove_from_global_cluster_errors() ::
          global_cluster_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_global_cluster_state_fault()

  @type remove_role_from_db_cluster_errors() ::
          db_cluster_role_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type remove_role_from_db_instance_errors() ::
          invalid_db_instance_state_fault()
          | db_instance_not_found_fault()
          | db_instance_role_not_found_fault()

  @type remove_source_identifier_from_subscription_errors() ::
          subscription_not_found_fault() | source_not_found_fault()

  @type remove_tags_from_resource_errors() ::
          tenant_database_not_found_fault()
          | db_snapshot_tenant_database_not_found_fault()
          | blue_green_deployment_not_found_fault()
          | db_cluster_not_found_fault()
          | db_snapshot_not_found_fault()
          | integration_not_found_fault()
          | db_proxy_not_found_fault()
          | db_instance_not_found_fault()
          | db_proxy_target_group_not_found_fault()

  @type reset_db_cluster_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type reset_db_parameter_group_errors() ::
          invalid_db_parameter_group_state_fault() | db_parameter_group_not_found_fault()

  @type restore_db_cluster_from_s3_errors() ::
          insufficient_storage_cluster_capacity_fault()
          | db_cluster_not_found_fault()
          | db_cluster_already_exists_fault()
          | invalid_s3_bucket_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | db_cluster_parameter_group_not_found_fault()
          | storage_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | invalid_db_subnet_group_state_fault()
          | db_cluster_quota_exceeded_fault()

  @type restore_db_cluster_from_snapshot_errors() ::
          insufficient_storage_cluster_capacity_fault()
          | invalid_db_instance_state_fault()
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
          | db_subnet_group_does_not_cover_enough_a_zs()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | invalid_subnet()
          | invalid_restore_fault()
          | insufficient_db_instance_capacity_fault()
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
          | domain_not_found_fault()
          | db_cluster_automated_backup_not_found_fault()
          | invalid_subnet()
          | invalid_restore_fault()
          | insufficient_db_instance_capacity_fault()
          | db_cluster_quota_exceeded_fault()

  @type restore_db_instance_from_db_snapshot_errors() ::
          db_cluster_snapshot_not_found_fault()
          | provisioned_iops_not_available_in_a_z_fault()
          | option_group_not_found_fault()
          | kms_key_not_accessible_fault()
          | db_snapshot_not_found_fault()
          | invalid_db_snapshot_state_fault()
          | storage_quota_exceeded_fault()
          | instance_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | certificate_not_found_fault()
          | authorization_not_found_fault()
          | backup_policy_not_found_fault()
          | network_type_not_supported()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | tenant_database_quota_exceeded_fault()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | invalid_restore_fault()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type restore_db_instance_from_s3_errors() ::
          provisioned_iops_not_available_in_a_z_fault()
          | option_group_not_found_fault()
          | invalid_s3_bucket_fault()
          | kms_key_not_accessible_fault()
          | storage_quota_exceeded_fault()
          | instance_quota_exceeded_fault()
          | db_subnet_group_not_found_fault()
          | certificate_not_found_fault()
          | authorization_not_found_fault()
          | backup_policy_not_found_fault()
          | network_type_not_supported()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type restore_db_instance_to_point_in_time_errors() ::
          invalid_db_instance_state_fault()
          | provisioned_iops_not_available_in_a_z_fault()
          | option_group_not_found_fault()
          | kms_key_not_accessible_fault()
          | storage_quota_exceeded_fault()
          | instance_quota_exceeded_fault()
          | point_in_time_restore_not_enabled_fault()
          | db_subnet_group_not_found_fault()
          | certificate_not_found_fault()
          | db_instance_not_found_fault()
          | authorization_not_found_fault()
          | db_instance_automated_backup_not_found_fault()
          | backup_policy_not_found_fault()
          | network_type_not_supported()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | tenant_database_quota_exceeded_fault()
          | db_security_group_not_found_fault()
          | invalid_vpc_network_state_fault()
          | domain_not_found_fault()
          | storage_type_not_supported_fault()
          | invalid_subnet()
          | invalid_restore_fault()
          | insufficient_db_instance_capacity_fault()
          | db_instance_already_exists_fault()
          | db_parameter_group_not_found_fault()

  @type revoke_db_security_group_ingress_errors() ::
          invalid_db_security_group_state_fault()
          | authorization_not_found_fault()
          | db_security_group_not_found_fault()

  @type start_activity_stream_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | db_instance_not_found_fault()
          | resource_not_found_fault()

  @type start_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type start_db_instance_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | kms_key_not_accessible_fault()
          | db_subnet_group_not_found_fault()
          | db_instance_not_found_fault()
          | authorization_not_found_fault()
          | db_subnet_group_does_not_cover_enough_a_zs()
          | invalid_vpc_network_state_fault()
          | invalid_subnet()
          | insufficient_db_instance_capacity_fault()

  @type start_db_instance_automated_backups_replication_errors() ::
          invalid_db_instance_state_fault()
          | kms_key_not_accessible_fault()
          | db_instance_not_found_fault()
          | storage_type_not_supported_fault()
          | db_instance_automated_backup_quota_exceeded_fault()

  @type start_export_task_errors() ::
          db_cluster_snapshot_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_s3_bucket_fault()
          | kms_key_not_accessible_fault()
          | db_snapshot_not_found_fault()
          | invalid_export_only_fault()
          | iam_role_missing_permissions_fault()
          | export_task_already_exists_fault()
          | invalid_export_source_state_fault()
          | iam_role_not_found_fault()

  @type stop_activity_stream_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | db_instance_not_found_fault()
          | resource_not_found_fault()

  @type stop_db_cluster_errors() ::
          invalid_db_instance_state_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()

  @type stop_db_instance_errors() ::
          invalid_db_instance_state_fault()
          | invalid_db_cluster_state_fault()
          | db_instance_not_found_fault()
          | db_snapshot_already_exists_fault()
          | snapshot_quota_exceeded_fault()

  @type stop_db_instance_automated_backups_replication_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

  @type switchover_blue_green_deployment_errors() ::
          invalid_blue_green_deployment_state_fault() | blue_green_deployment_not_found_fault()

  @type switchover_global_cluster_errors() ::
          global_cluster_not_found_fault()
          | db_cluster_not_found_fault()
          | invalid_db_cluster_state_fault()
          | invalid_global_cluster_state_fault()

  @type switchover_read_replica_errors() ::
          invalid_db_instance_state_fault() | db_instance_not_found_fault()

  def metadata do
    %{
      api_version: "2014-10-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "rds",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "RDS",
      signature_version: "v4",
      signing_name: "rds",
      target_prefix: "AmazonRDSv19"
    }
  end

  @doc """
  Associates an Identity and Access Management (IAM) role with a DB cluster.
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
  Associates an Amazon Web Services Identity and Access Management (IAM) role with
  a DB instance.

  To add a role to a DB instance, the status of the DB instance must be
  `available`.

  This command doesn't apply to RDS Custom.
  """
  @spec add_role_to_db_instance(map(), add_role_to_db_instance_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_role_to_db_instance_errors()}
  def add_role_to_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddRoleToDBInstance", input, options)
  end

  @doc """
  Adds a source identifier to an existing RDS event notification subscription.
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
  Adds metadata tags to an Amazon RDS resource.

  These tags can also be used with cost allocation reporting to track cost
  associated with Amazon RDS resources, or used in a Condition statement in an IAM
  policy for Amazon RDS.

  For an overview on tagging your relational database resources,
  see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html)
  or [Tagging Amazon Aurora and Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.html).
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
  Enables ingress to a DBSecurityGroup using one of two forms of authorization.

  First, EC2 or VPC security
  groups can be added to the DBSecurityGroup if the application using the database
  is running on EC2 or VPC
  instances. Second, IP ranges are available if the application accessing your
  database is running on the internet.
  Required parameters for this API are one of CIDR range, EC2SecurityGroupId for
  VPC, or (EC2SecurityGroupOwnerId
  and either EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).

  You can't authorize ingress from an EC2 security group in one Amazon Web
  Services Region to an Amazon RDS DB instance in
  another. You can't authorize ingress from a VPC security group in one VPC to an
  Amazon RDS DB instance in another.

  For an overview of CIDR ranges, go to the
  [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

  EC2-Classic was retired on August 15, 2022. If you haven't migrated from
  EC2-Classic to a VPC, we recommend that
  you migrate as soon as possible. For more information, see [Migrate from EC2-Classic to a
  VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in
  the
  *Amazon EC2 User Guide*, the blog [EC2-Classic Networking is Retiring – Here’s How to
  Prepare](http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/),
  and [Moving a DB instance not in a VPC into a
  VPC](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html)
  in the *Amazon RDS User Guide*.
  """
  @spec authorize_db_security_group_ingress(
          map(),
          authorize_db_security_group_ingress_message(),
          list()
        ) ::
          {:ok, authorize_db_security_group_ingress_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, authorize_db_security_group_ingress_errors()}
  def authorize_db_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AuthorizeDBSecurityGroupIngress", input, options)
  end

  @doc """
  Backtracks a DB cluster to a specific time, without creating a new DB cluster.

  For more information on backtracking, see
  [
  Backtracking an Aurora DB
  Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html)
  in the
  *Amazon Aurora User Guide*.

  This action applies only to Aurora MySQL DB clusters.
  """
  @spec backtrack_db_cluster(map(), backtrack_db_cluster_message(), list()) ::
          {:ok, db_cluster_backtrack(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, backtrack_db_cluster_errors()}
  def backtrack_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BacktrackDBCluster", input, options)
  end

  @doc """
  Cancels an export task in progress that is exporting a snapshot or cluster to
  Amazon S3.

  Any data that has already been written to the S3 bucket isn't removed.
  """
  @spec cancel_export_task(map(), cancel_export_task_message(), list()) ::
          {:ok, export_task(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_export_task_errors()}
  def cancel_export_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelExportTask", input, options)
  end

  @doc """
  Copies the specified DB cluster parameter group.

  You can't copy a default DB cluster parameter group. Instead, create a new
  custom DB cluster parameter group, which copies
  the default parameters and values for the specified DB cluster parameter group
  family.
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
  `SourceDBClusterSnapshotIdentifier`
  must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.

  You can copy an encrypted DB cluster snapshot from another Amazon Web Services
  Region. In that case,
  the Amazon Web Services Region where you call the `CopyDBClusterSnapshot`
  operation is the
  destination Amazon Web Services Region for the encrypted DB cluster snapshot to
  be copied to. To copy
  an encrypted DB cluster snapshot from another Amazon Web Services Region, you
  must provide the
  following values:

    *

  `KmsKeyId` - The Amazon Web Services Key Management System (Amazon Web Services
  KMS) key identifier for the key to use to
  encrypt the copy of the DB cluster snapshot in the destination Amazon Web
  Services Region.

    *

  `TargetDBClusterSnapshotIdentifier` - The identifier for the new copy of the DB
  cluster snapshot in the destination Amazon Web Services Region.

    *

  `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
  identifier for the encrypted DB cluster snapshot to be copied. This identifier
  must be in the ARN format for the source Amazon Web Services Region and is the
  same value as
  the `SourceDBClusterSnapshotIdentifier` in the presigned URL.

  To cancel the copy operation once it is in progress, delete the target DB
  cluster snapshot identified
  by `TargetDBClusterSnapshotIdentifier` while that DB cluster snapshot is in
  "copying" status.

  For more information on copying encrypted Amazon Aurora DB cluster snapshots
  from one Amazon Web Services Region to another, see
  [
  Copying a
  Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html)
  in the *Amazon Aurora User Guide*.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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

  You can't copy a default DB parameter group. Instead, create a new custom DB
  parameter group, which copies the default
  parameters and values for the specified DB parameter group family.
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
  Copies the specified DB snapshot.

  The source DB snapshot must be in the `available` state.

  You can copy a snapshot from one Amazon Web Services Region to another. In that
  case, the
  Amazon Web Services Region where you call the `CopyDBSnapshot` operation is the
  destination
  Amazon Web Services Region for the DB snapshot copy.

  This command doesn't apply to RDS Custom.

  For more information about copying snapshots, see
  [Copying a DB Snapshot](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBSnapshot)
  in the *Amazon RDS User Guide*.
  """
  @spec copy_db_snapshot(map(), copy_db_snapshot_message(), list()) ::
          {:ok, copy_db_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_db_snapshot_errors()}
  def copy_db_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyDBSnapshot", input, options)
  end

  @doc """
  Copies the specified option group.
  """
  @spec copy_option_group(map(), copy_option_group_message(), list()) ::
          {:ok, copy_option_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_option_group_errors()}
  def copy_option_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyOptionGroup", input, options)
  end

  @doc """
  Creates a blue/green deployment.

  A blue/green deployment creates a staging environment that copies the production
  environment.
  In a blue/green deployment, the blue environment is the current production
  environment.
  The green environment is the staging environment, and it stays in sync
  with the current production environment.

  You can make changes to the databases in the green environment without affecting
  production workloads. For example, you can upgrade the major or minor DB engine
  version, change
  database parameters, or make schema changes in the staging environment. You can
  thoroughly test
  changes in the green environment. When ready, you can switch over the
  environments to promote the
  green environment to be the new production environment. The switchover typically
  takes under a minute.

  For more information, see [Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
  in the *Amazon RDS User Guide* and
  [
  Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
  in the *Amazon Aurora
  User Guide*.
  """
  @spec create_blue_green_deployment(map(), create_blue_green_deployment_request(), list()) ::
          {:ok, create_blue_green_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_blue_green_deployment_errors()}
  def create_blue_green_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBlueGreenDeployment", input, options)
  end

  @doc """
  Creates a custom DB engine version (CEV).
  """
  @spec create_custom_db_engine_version(map(), create_custom_db_engine_version_message(), list()) ::
          {:ok, db_engine_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_db_engine_version_errors()}
  def create_custom_db_engine_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomDBEngineVersion", input, options)
  end

  @doc """
  Creates a new Amazon Aurora DB cluster or Multi-AZ DB cluster.

  If you create an Aurora DB cluster, the request creates an empty cluster. You
  must
  explicitly create the writer instance for your DB cluster using the
  [CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) operation. If you create a Multi-AZ DB cluster, the
  request creates a writer and two reader DB instances for you, each in a
  different
  Availability Zone.

  You can use the `ReplicationSourceIdentifier` parameter to create an Amazon
  Aurora DB cluster as a read replica of another DB cluster or Amazon RDS for
  MySQL or
  PostgreSQL DB instance. For more information about Amazon Aurora, see [What is
  Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User
  Guide*.

  You can also use the `ReplicationSourceIdentifier` parameter to create a
  Multi-AZ DB cluster read replica with an RDS for MySQL or PostgreSQL DB instance
  as the
  source. For more information about Multi-AZ DB clusters, see [Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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
  Creates a new custom endpoint and associates it with an Amazon Aurora DB
  cluster.

  This action applies only to Aurora DB clusters.
  """
  @spec create_db_cluster_endpoint(map(), create_db_cluster_endpoint_message(), list()) ::
          {:ok, db_cluster_endpoint(), any()}
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

  A DB cluster parameter group is initially created with the default parameters
  for the
  database engine used by instances in the DB cluster. To provide custom values
  for any of the
  parameters, you must modify the group after creating it using
  `ModifyDBClusterParameterGroup`. Once you've created a DB cluster parameter
  group, you need to
  associate it with your DB cluster using `ModifyDBCluster`.

  When you associate a new DB cluster parameter group with a running Aurora DB
  cluster, reboot the DB
  instances in the DB cluster without failover for the new DB cluster parameter
  group and
  associated settings to take effect.

  When you associate a new DB cluster parameter group with a running Multi-AZ DB
  cluster, reboot the DB
  cluster without failover for the new DB cluster parameter group and associated
  settings to take effect.

  After you create a DB cluster parameter group, you should wait at least 5
  minutes
  before creating your first DB cluster that uses that DB cluster parameter group
  as
  the default parameter group. This allows Amazon RDS to fully complete the create
  action before the DB cluster parameter group is used as the default for a new DB
  cluster. This is especially important for parameters that are critical when
  creating
  the default database for a DB cluster, such as the character set for the default
  database defined by the `character_set_database` parameter. You can use
  the *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` operation to verify that your DB
  cluster parameter group has been created or modified.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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

  For more information on Amazon Aurora, see [ What is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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

  The new DB instance can be an RDS DB instance, or it can be a DB instance in an
  Aurora DB cluster.
  For an Aurora DB cluster, you can call this operation multiple times to add more
  than one DB instance
  to the cluster.

  For more information about creating an RDS DB instance, see [
  Creating an Amazon RDS DB
  instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateDBInstance.html)
  in the *Amazon RDS User Guide*.

  For more information about creating a DB instance in an Aurora DB cluster, see
  [
  Creating an Amazon Aurora DB
  cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.CreateInstance.html)
  in the *Amazon Aurora User Guide*.
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
  Creates a new DB instance that acts as a read replica for an existing source DB
  instance or Multi-AZ DB cluster.

  You can create a read replica for a DB instance running
  Db2, MariaDB, MySQL, Oracle, PostgreSQL, or SQL Server. You can create a read
  replica for a
  Multi-AZ DB cluster running MySQL or PostgreSQL. For more information, see
  [Working with read
  replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)
  and [Migrating from a Multi-AZ DB cluster to a DB instance using a read replica](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html#multi-az-db-clusters-migrating-to-instance-with-read-replica)
  in the *Amazon RDS User Guide*.

  Amazon Aurora doesn't support this operation. To create a DB instance for an
  Aurora DB cluster, use the `CreateDBInstance`
  operation.

  All read replica DB instances are created with backups disabled. All other
  attributes
  (including DB security groups and DB parameter groups) are inherited from the
  source DB
  instance or cluster, except as specified.

  Your source DB instance or cluster must have backup retention enabled.
  """
  @spec create_db_instance_read_replica(map(), create_db_instance_read_replica_message(), list()) ::
          {:ok, create_db_instance_read_replica_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_instance_read_replica_errors()}
  def create_db_instance_read_replica(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBInstanceReadReplica", input, options)
  end

  @doc """
  Creates a new DB parameter group.

  A DB parameter group is initially created with the default parameters for the
  database engine used by the DB instance. To provide custom values for any of the
  parameters, you must modify the group after creating it using
  `ModifyDBParameterGroup`. Once you've created a DB parameter group, you need to
  associate it with your DB instance using `ModifyDBInstance`. When you associate
  a new DB parameter group with a running DB instance, you need to reboot the DB
  instance without failover for the new DB parameter group and associated settings
  to take effect.

  This command doesn't apply to RDS Custom.
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
  Creates a new DB proxy.
  """
  @spec create_db_proxy(map(), create_db_proxy_request(), list()) ::
          {:ok, create_db_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_proxy_errors()}
  def create_db_proxy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBProxy", input, options)
  end

  @doc """
  Creates a `DBProxyEndpoint`.

  Only applies to proxies that are associated with Aurora DB clusters.
  You can use DB proxy endpoints to specify read/write or read-only access to the
  DB cluster. You can also use
  DB proxy endpoints to access a DB proxy through a different VPC than the proxy's
  default VPC.
  """
  @spec create_db_proxy_endpoint(map(), create_db_proxy_endpoint_request(), list()) ::
          {:ok, create_db_proxy_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_proxy_endpoint_errors()}
  def create_db_proxy_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBProxyEndpoint", input, options)
  end

  @doc """
  Creates a new DB security group.

  DB security groups control access to a DB instance.

  A DB security group controls access to EC2-Classic DB instances that are not in
  a VPC.

  EC2-Classic was retired on August 15, 2022. If you haven't migrated from
  EC2-Classic to a VPC, we recommend that
  you migrate as soon as possible. For more information, see [Migrate from EC2-Classic to a
  VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in
  the
  *Amazon EC2 User Guide*, the blog [EC2-Classic Networking is Retiring – Here’s How to
  Prepare](http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/),
  and [Moving a DB instance not in a VPC into a
  VPC](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html)
  in the *Amazon RDS User Guide*.
  """
  @spec create_db_security_group(map(), create_db_security_group_message(), list()) ::
          {:ok, create_db_security_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_security_group_errors()}
  def create_db_security_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBSecurityGroup", input, options)
  end

  @doc """
  Creates a new DB shard group for Aurora Limitless Database.

  You must enable Aurora Limitless Database to create a DB shard group.

  Valid for: Aurora DB clusters only
  """
  @spec create_db_shard_group(map(), create_db_shard_group_message(), list()) ::
          {:ok, db_shard_group(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_shard_group_errors()}
  def create_db_shard_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBShardGroup", input, options)
  end

  @doc """
  Creates a snapshot of a DB instance.

  The source DB instance must be in the `available` or
  `storage-optimization` state.
  """
  @spec create_db_snapshot(map(), create_db_snapshot_message(), list()) ::
          {:ok, create_db_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_snapshot_errors()}
  def create_db_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDBSnapshot", input, options)
  end

  @doc """
  Creates a new DB subnet group.

  DB subnet groups must contain at least one subnet in at least two AZs in the
  Amazon Web Services Region.
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
  Creates an RDS event notification subscription.

  This operation requires a topic Amazon
  Resource Name (ARN) created by either the RDS console, the SNS console, or the
  SNS API.
  To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe
  to the
  topic. The ARN is displayed in the SNS console.

  You can specify the type of source (`SourceType`) that you want to be
  notified of and provide a list of RDS sources (`SourceIds`) that triggers the
  events. You can also provide a list of event categories (`EventCategories`)
  for events that you want to be notified of. For example, you can specify
  `SourceType` = `db-instance`, `SourceIds` =
  `mydbinstance1`, `mydbinstance2` and
  `EventCategories` = `Availability`,
  `Backup`.

  If you specify both the `SourceType` and `SourceIds`, such as `SourceType` =
  `db-instance`
  and `SourceIds` = `myDBInstance1`, you are notified of all the `db-instance`
  events for
  the specified source. If you specify a `SourceType` but do not specify
  `SourceIds`,
  you receive notice of the events for that source type for all your RDS sources.
  If you
  don't specify either the SourceType or the `SourceIds`, you are notified of
  events
  generated from all RDS sources belonging to your customer account.

  For more information about subscribing to an event for RDS DB engines, see
  [
  Subscribing to Amazon RDS event
  notification](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Subscribing.html)
  in the *Amazon RDS User Guide*.

  For more information about subscribing to an event for Aurora DB engines, see
  [
  Subscribing to Amazon RDS event
  notification](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Subscribing.html)
  in the *Amazon Aurora User Guide*.
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
  Creates an Aurora global database
  spread across multiple Amazon Web Services Regions.

  The global database
  contains a single primary cluster with read-write capability,
  and a read-only secondary cluster that receives
  data from the primary cluster through high-speed replication
  performed by the Aurora storage subsystem.

  You can create a global database that is initially empty, and then
  create the primary and secondary DB clusters in the global database.
  Or you can specify an existing Aurora cluster during the create operation,
  and this cluster becomes the primary cluster of the global database.

  This operation applies only to Aurora DB clusters.
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
  Creates a zero-ETL integration with Amazon Redshift.
  """
  @spec create_integration(map(), create_integration_message(), list()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIntegration", input, options)
  end

  @doc """
  Creates a new option group.

  You can create up to 20 option groups.

  This command doesn't apply to RDS Custom.
  """
  @spec create_option_group(map(), create_option_group_message(), list()) ::
          {:ok, create_option_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_option_group_errors()}
  def create_option_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOptionGroup", input, options)
  end

  @doc """
  Creates a tenant database in a DB instance that uses the multi-tenant
  configuration.

  Only RDS for Oracle container database (CDB) instances are supported.
  """
  @spec create_tenant_database(map(), create_tenant_database_message(), list()) ::
          {:ok, create_tenant_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tenant_database_errors()}
  def create_tenant_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTenantDatabase", input, options)
  end

  @doc """
  Deletes a blue/green deployment.

  For more information, see [Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
  in the *Amazon RDS User
  Guide* and [Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
  in the *Amazon Aurora
  User Guide*.
  """
  @spec delete_blue_green_deployment(map(), delete_blue_green_deployment_request(), list()) ::
          {:ok, delete_blue_green_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_blue_green_deployment_errors()}
  def delete_blue_green_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBlueGreenDeployment", input, options)
  end

  @doc """
  Deletes a custom engine version.

  To run this command, make sure you meet the following prerequisites:

    *
  The CEV must not be the default for RDS Custom. If it is, change the default
  before running this command.

    *
  The CEV must not be associated with an RDS Custom DB instance, RDS Custom
  instance snapshot,
  or automated backup of your RDS Custom instance.

  Typically, deletion takes a few minutes.

  The MediaImport service that imports files from Amazon S3 to create CEVs isn't
  integrated with
  Amazon Web Services CloudTrail. If you turn on data logging for Amazon RDS in
  CloudTrail, calls to the
  `DeleteCustomDbEngineVersion` event aren't logged. However, you might see calls
  from the
  API gateway that accesses your Amazon S3 bucket. These calls originate from the
  MediaImport service for
  the `DeleteCustomDbEngineVersion` event.

  For more information, see [Deleting a CEV](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.delete)
  in the *Amazon RDS User Guide*.
  """
  @spec delete_custom_db_engine_version(map(), delete_custom_db_engine_version_message(), list()) ::
          {:ok, db_engine_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_db_engine_version_errors()}
  def delete_custom_db_engine_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomDBEngineVersion", input, options)
  end

  @doc """
  The DeleteDBCluster action deletes a previously provisioned DB cluster.

  When you delete a DB cluster, all automated backups for that DB cluster are
  deleted and can't be recovered.
  Manual DB cluster snapshots of the specified DB cluster are not deleted.

  If you're deleting a Multi-AZ DB cluster with read replicas, all cluster members
  are
  terminated and read replicas are promoted to standalone instances.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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
  Deletes automated backups using the `DbClusterResourceId` value of the source DB
  cluster or the Amazon
  Resource Name (ARN) of the automated backups.
  """
  @spec delete_db_cluster_automated_backup(
          map(),
          delete_db_cluster_automated_backup_message(),
          list()
        ) ::
          {:ok, delete_db_cluster_automated_backup_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_cluster_automated_backup_errors()}
  def delete_db_cluster_automated_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBClusterAutomatedBackup", input, options)
  end

  @doc """
  Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster.

  This action only applies to Aurora DB clusters.
  """
  @spec delete_db_cluster_endpoint(map(), delete_db_cluster_endpoint_message(), list()) ::
          {:ok, db_cluster_endpoint(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_cluster_endpoint_errors()}
  def delete_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBClusterEndpoint", input, options)
  end

  @doc """
  Deletes a specified DB cluster parameter group.

  The DB cluster parameter group to be deleted can't be associated with any DB
  clusters.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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

  If the snapshot is being copied, the copy operation is terminated.

  The DB cluster snapshot must be in the `available` state to be
  deleted.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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
  Deletes a previously provisioned DB instance.

  When you delete a DB instance, all automated backups for that instance are
  deleted and can't be recovered.
  However, manual DB snapshots of the DB instance aren't deleted.

  If you request a final DB snapshot, the status of the Amazon RDS DB instance is
  `deleting` until the DB snapshot is created.
  This operation can't be canceled or reverted after it begins. To monitor the
  status of this operation, use `DescribeDBInstance`.

  When a DB instance is in a failure state and has a status of `failed`,
  `incompatible-restore`,
  or `incompatible-network`, you can only delete it when you skip creation of the
  final snapshot with the `SkipFinalSnapshot` parameter.

  If the specified DB instance is part of an Amazon Aurora DB cluster, you can't
  delete the DB instance if both of the following
  conditions are true:

    *
  The DB cluster is a read replica of another Amazon Aurora DB cluster.

    *
  The DB instance is the only instance in the DB cluster.

  To delete a DB instance in this case, first use the
  `PromoteReadReplicaDBCluster` operation to promote the DB cluster so that it's
  no longer a read replica.
  After the promotion completes, use the `DeleteDBInstance` operation to delete
  the final instance in the DB cluster.

  For RDS Custom DB instances, deleting the DB instance permanently deletes the
  EC2 instance and the associated EBS volumes. Make sure that you don't terminate
  or delete
  these resources before you delete the DB instance. Otherwise, deleting the DB
  instance and creation of the final snapshot might fail.
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
  Deletes automated backups using the `DbiResourceId` value of the source DB
  instance or the Amazon Resource Name (ARN) of the automated backups.
  """
  @spec delete_db_instance_automated_backup(
          map(),
          delete_db_instance_automated_backup_message(),
          list()
        ) ::
          {:ok, delete_db_instance_automated_backup_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_instance_automated_backup_errors()}
  def delete_db_instance_automated_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBInstanceAutomatedBackup", input, options)
  end

  @doc """
  Deletes a specified DB parameter group.

  The DB parameter group to be deleted can't be associated with any DB instances.
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
  Deletes an existing DB proxy.
  """
  @spec delete_db_proxy(map(), delete_db_proxy_request(), list()) ::
          {:ok, delete_db_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_proxy_errors()}
  def delete_db_proxy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBProxy", input, options)
  end

  @doc """
  Deletes a `DBProxyEndpoint`.

  Doing so removes the ability to access the DB proxy using the
  endpoint that you defined. The endpoint that you delete might have provided
  capabilities such as read/write
  or read-only operations, or using a different VPC than the DB proxy's default
  VPC.
  """
  @spec delete_db_proxy_endpoint(map(), delete_db_proxy_endpoint_request(), list()) ::
          {:ok, delete_db_proxy_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_proxy_endpoint_errors()}
  def delete_db_proxy_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBProxyEndpoint", input, options)
  end

  @doc """
  Deletes a DB security group.

  The specified DB security group must not be associated with any DB instances.

  EC2-Classic was retired on August 15, 2022. If you haven't migrated from
  EC2-Classic to a VPC, we recommend that
  you migrate as soon as possible. For more information, see [Migrate from EC2-Classic to a
  VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in
  the
  *Amazon EC2 User Guide*, the blog [EC2-Classic Networking is Retiring – Here’s How to
  Prepare](http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/),
  and [Moving a DB instance not in a VPC into a
  VPC](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html)
  in the *Amazon RDS User Guide*.
  """
  @spec delete_db_security_group(map(), delete_db_security_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_security_group_errors()}
  def delete_db_security_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBSecurityGroup", input, options)
  end

  @doc """
  Deletes an Aurora Limitless Database DB shard group.
  """
  @spec delete_db_shard_group(map(), delete_db_shard_group_message(), list()) ::
          {:ok, db_shard_group(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_shard_group_errors()}
  def delete_db_shard_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBShardGroup", input, options)
  end

  @doc """
  Deletes a DB snapshot.

  If the snapshot is being copied, the copy operation is
  terminated.

  The DB snapshot must be in the `available` state to be deleted.
  """
  @spec delete_db_snapshot(map(), delete_db_snapshot_message(), list()) ::
          {:ok, delete_db_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_snapshot_errors()}
  def delete_db_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDBSnapshot", input, options)
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
  Deletes an RDS event notification subscription.
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
  Deletes a global database cluster.

  The primary and secondary clusters must already be detached or
  destroyed first.

  This action only applies to Aurora DB clusters.
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
  Deletes a zero-ETL integration with Amazon Redshift.
  """
  @spec delete_integration(map(), delete_integration_message(), list()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIntegration", input, options)
  end

  @doc """
  Deletes an existing option group.
  """
  @spec delete_option_group(map(), delete_option_group_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_option_group_errors()}
  def delete_option_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOptionGroup", input, options)
  end

  @doc """
  Deletes a tenant database from your DB instance.

  This command only applies to RDS for
  Oracle container database (CDB) instances.

  You can't delete a tenant database when it is the only tenant in the DB
  instance.
  """
  @spec delete_tenant_database(map(), delete_tenant_database_message(), list()) ::
          {:ok, delete_tenant_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tenant_database_errors()}
  def delete_tenant_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTenantDatabase", input, options)
  end

  @doc """
  Remove the association between one or more `DBProxyTarget` data structures and a
  `DBProxyTargetGroup`.
  """
  @spec deregister_db_proxy_targets(map(), deregister_db_proxy_targets_request(), list()) ::
          {:ok, deregister_db_proxy_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_db_proxy_targets_errors()}
  def deregister_db_proxy_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterDBProxyTargets", input, options)
  end

  @doc """
  Lists all of the attributes for a customer account.

  The attributes include Amazon RDS quotas for the account, such as the number of
  DB instances allowed. The description for a quota includes the quota name,
  current usage toward that quota, and the quota's maximum value.

  This command doesn't take any parameters.
  """
  @spec describe_account_attributes(map(), describe_account_attributes_message(), list()) ::
          {:ok, account_attributes_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Describes one or more blue/green deployments.

  For more information, see [Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
  in the *Amazon RDS User Guide* and
  [
  Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
  in the *Amazon Aurora
  User Guide*.
  """
  @spec describe_blue_green_deployments(map(), describe_blue_green_deployments_request(), list()) ::
          {:ok, describe_blue_green_deployments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_blue_green_deployments_errors()}
  def describe_blue_green_deployments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBlueGreenDeployments", input, options)
  end

  @doc """
  Lists the set of certificate authority (CA) certificates provided by Amazon RDS
  for this Amazon Web Services account.

  For more information, see [Using SSL/TLS to encrypt a connection to a DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
  in the *Amazon RDS User Guide* and
  [
  Using SSL/TLS to encrypt a connection to a DB
  cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html)
  in the *Amazon Aurora
  User Guide*.
  """
  @spec describe_certificates(map(), describe_certificates_message(), list()) ::
          {:ok, certificate_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_certificates_errors()}
  def describe_certificates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCertificates", input, options)
  end

  @doc """
  Displays backups for both current and deleted DB clusters.

  For example, use this operation to find details
  about automated backups for previously deleted clusters. Current clusters are
  returned for both the
  `DescribeDBClusterAutomatedBackups` and `DescribeDBClusters` operations.

  All parameters are optional.
  """
  @spec describe_db_cluster_automated_backups(
          map(),
          describe_db_cluster_automated_backups_message(),
          list()
        ) ::
          {:ok, db_cluster_automated_backup_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_cluster_automated_backups_errors()}
  def describe_db_cluster_automated_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusterAutomatedBackups", input, options)
  end

  @doc """
  Returns information about backtracks for a DB cluster.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  This action only applies to Aurora MySQL DB clusters.
  """
  @spec describe_db_cluster_backtracks(map(), describe_db_cluster_backtracks_message(), list()) ::
          {:ok, db_cluster_backtrack_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_cluster_backtracks_errors()}
  def describe_db_cluster_backtracks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBClusterBacktracks", input, options)
  end

  @doc """
  Returns information about endpoints for an Amazon Aurora DB cluster.

  This action only applies to Aurora DB clusters.
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
  `DBClusterParameterGroupName` parameter is specified,
  the list will contain only the description of the specified DB cluster parameter
  group.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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
  cluster snapshot.

  When sharing snapshots with other Amazon Web Services accounts,
  `DescribeDBClusterSnapshotAttributes`
  returns the `restore` attribute and a list of IDs for the Amazon Web Services
  accounts that are
  authorized to copy or restore the manual DB cluster snapshot. If `all` is
  included in the list of
  values for the `restore` attribute, then the manual DB cluster snapshot is
  public and
  can be copied or restored by all Amazon Web Services accounts.

  To add or remove access for an Amazon Web Services account to copy or restore a
  manual DB cluster snapshot, or to make the
  manual DB cluster snapshot public or private, use the
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

  This API action supports pagination.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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
  Describes existing Amazon Aurora DB clusters and Multi-AZ DB clusters.

  This API supports pagination.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.

  This operation can also return information for Amazon Neptune DB instances and
  Amazon DocumentDB instances.
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
  Describes the properties of specific versions of DB engines.
  """
  @spec describe_db_engine_versions(map(), describe_db_engine_versions_message(), list()) ::
          {:ok, db_engine_version_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_db_engine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBEngineVersions", input, options)
  end

  @doc """
  Displays backups for both current and deleted
  instances.

  For example, use this operation to
  find details about automated backups for previously deleted instances. Current
  instances
  with retention periods greater than zero (0) are returned for both the
  `DescribeDBInstanceAutomatedBackups` and
  `DescribeDBInstances` operations.

  All parameters are optional.
  """
  @spec describe_db_instance_automated_backups(
          map(),
          describe_db_instance_automated_backups_message(),
          list()
        ) ::
          {:ok, db_instance_automated_backup_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_instance_automated_backups_errors()}
  def describe_db_instance_automated_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBInstanceAutomatedBackups", input, options)
  end

  @doc """
  Describes provisioned RDS instances.

  This API supports pagination.

  This operation can also return information for Amazon Neptune DB instances and
  Amazon DocumentDB instances.
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
  Returns a list of DB log files for the DB instance.

  This command doesn't apply to RDS Custom.
  """
  @spec describe_db_log_files(map(), describe_db_log_files_message(), list()) ::
          {:ok, describe_db_log_files_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_log_files_errors()}
  def describe_db_log_files(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBLogFiles", input, options)
  end

  @doc """
  Returns a list of `DBParameterGroup` descriptions.

  If a `DBParameterGroupName` is specified,
  the list will contain only the description of the specified DB parameter group.
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
  Returns information about DB proxies.
  """
  @spec describe_db_proxies(map(), describe_db_proxies_request(), list()) ::
          {:ok, describe_db_proxies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_proxies_errors()}
  def describe_db_proxies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBProxies", input, options)
  end

  @doc """
  Returns information about DB proxy endpoints.
  """
  @spec describe_db_proxy_endpoints(map(), describe_db_proxy_endpoints_request(), list()) ::
          {:ok, describe_db_proxy_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_proxy_endpoints_errors()}
  def describe_db_proxy_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBProxyEndpoints", input, options)
  end

  @doc """
  Returns information about DB proxy target groups, represented by
  `DBProxyTargetGroup` data structures.
  """
  @spec describe_db_proxy_target_groups(map(), describe_db_proxy_target_groups_request(), list()) ::
          {:ok, describe_db_proxy_target_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_proxy_target_groups_errors()}
  def describe_db_proxy_target_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBProxyTargetGroups", input, options)
  end

  @doc """
  Returns information about `DBProxyTarget` objects.

  This API supports pagination.
  """
  @spec describe_db_proxy_targets(map(), describe_db_proxy_targets_request(), list()) ::
          {:ok, describe_db_proxy_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_proxy_targets_errors()}
  def describe_db_proxy_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBProxyTargets", input, options)
  end

  @doc """
  Describes the recommendations to resolve the issues for your DB instances, DB
  clusters, and DB parameter groups.
  """
  @spec describe_db_recommendations(map(), describe_db_recommendations_message(), list()) ::
          {:ok, db_recommendations_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_db_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBRecommendations", input, options)
  end

  @doc """
  Returns a list of `DBSecurityGroup` descriptions.

  If a `DBSecurityGroupName` is specified,
  the list will contain only the descriptions of the specified DB security group.

  EC2-Classic was retired on August 15, 2022. If you haven't migrated from
  EC2-Classic to a VPC, we recommend that
  you migrate as soon as possible. For more information, see [Migrate from EC2-Classic to a
  VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in
  the
  *Amazon EC2 User Guide*, the blog [EC2-Classic Networking is Retiring – Here’s How to
  Prepare](http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/),
  and [Moving a DB instance not in a VPC into a
  VPC](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html)
  in the *Amazon RDS User Guide*.
  """
  @spec describe_db_security_groups(map(), describe_db_security_groups_message(), list()) ::
          {:ok, db_security_group_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_security_groups_errors()}
  def describe_db_security_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBSecurityGroups", input, options)
  end

  @doc """
  Describes existing Aurora Limitless Database DB shard groups.
  """
  @spec describe_db_shard_groups(map(), describe_db_shard_groups_message(), list()) ::
          {:ok, describe_db_shard_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_shard_groups_errors()}
  def describe_db_shard_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBShardGroups", input, options)
  end

  @doc """
  Returns a list of DB snapshot attribute names and values for a manual DB
  snapshot.

  When sharing snapshots with other Amazon Web Services accounts,
  `DescribeDBSnapshotAttributes`
  returns the `restore` attribute and a list of IDs for the Amazon Web Services
  accounts that are
  authorized to copy or restore the manual DB snapshot. If `all` is included in
  the list of
  values for the `restore` attribute, then the manual DB snapshot is public and
  can be copied or restored by all Amazon Web Services accounts.

  To add or remove access for an Amazon Web Services account to copy or restore a
  manual DB snapshot, or to make the
  manual DB snapshot public or private, use the `ModifyDBSnapshotAttribute` API
  action.
  """
  @spec describe_db_snapshot_attributes(map(), describe_db_snapshot_attributes_message(), list()) ::
          {:ok, describe_db_snapshot_attributes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_snapshot_attributes_errors()}
  def describe_db_snapshot_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBSnapshotAttributes", input, options)
  end

  @doc """
  Describes the tenant databases that exist in a DB snapshot.

  This command only applies
  to RDS for Oracle DB instances in the multi-tenant configuration.

  You can use this command to inspect the tenant databases within a snapshot
  before
  restoring it. You can't directly interact with the tenant databases in a DB
  snapshot. If
  you restore a snapshot that was taken from DB instance using the multi-tenant
  configuration, you restore all its tenant databases.
  """
  @spec describe_db_snapshot_tenant_databases(
          map(),
          describe_db_snapshot_tenant_databases_message(),
          list()
        ) ::
          {:ok, db_snapshot_tenant_databases_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_snapshot_tenant_databases_errors()}
  def describe_db_snapshot_tenant_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBSnapshotTenantDatabases", input, options)
  end

  @doc """
  Returns information about DB snapshots.

  This API action supports pagination.
  """
  @spec describe_db_snapshots(map(), describe_db_snapshots_message(), list()) ::
          {:ok, db_snapshot_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_db_snapshots_errors()}
  def describe_db_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDBSnapshots", input, options)
  end

  @doc """
  Returns a list of DBSubnetGroup descriptions.

  If a DBSubnetGroupName is specified, the list will contain only the descriptions
  of the specified DBSubnetGroup.

  For an overview of CIDR ranges, go to the
  [Wikipedia Tutorial](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).
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
  database engine.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.
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
  database engine.
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
  a specified source type.

  You can also see this list in the "Amazon RDS event categories and event
  messages" section of the [
  *Amazon RDS User Guide*
  ](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Messages.html)
  or the
  [
  *Amazon Aurora User Guide*
  ](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Messages.html).
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

  The description for a subscription includes
  `SubscriptionName`, `SNSTopicARN`, `CustomerID`, `SourceType`, `SourceID`,
  `CreationTime`, and `Status`.

  If you specify a `SubscriptionName`, lists the description for that
  subscription.
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
  Returns events related to DB instances, DB clusters, DB parameter groups, DB
  security groups, DB snapshots, DB cluster snapshots, and RDS Proxies for the
  past 14 days.

  Events specific to a particular DB instance, DB cluster, DB parameter group, DB
  security group, DB snapshot, DB cluster snapshot group, or RDS Proxy can be
  obtained by providing the name as a parameter.

  For more information on working with events, see [Monitoring Amazon RDS events](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/working-with-events.html)
  in the *Amazon RDS User Guide* and [Monitoring Amazon Aurora events](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/working-with-events.html)
  in the *Amazon Aurora User Guide*.

  By default, RDS returns events that were generated in the past hour.
  """
  @spec describe_events(map(), describe_events_message(), list()) ::
          {:ok, events_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about a snapshot or cluster export to Amazon S3.

  This API operation supports
  pagination.
  """
  @spec describe_export_tasks(map(), describe_export_tasks_message(), list()) ::
          {:ok, export_tasks_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_export_tasks_errors()}
  def describe_export_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExportTasks", input, options)
  end

  @doc """
  Returns information about Aurora global database clusters.

  This API supports pagination.

  For more information on Amazon Aurora, see [ What is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the
  *Amazon Aurora User Guide*.

  This action only applies to Aurora DB clusters.
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
  Describe one or more zero-ETL integrations with Amazon Redshift.
  """
  @spec describe_integrations(map(), describe_integrations_message(), list()) ::
          {:ok, describe_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_integrations_errors()}
  def describe_integrations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIntegrations", input, options)
  end

  @doc """
  Describes all available options for the specified engine.
  """
  @spec describe_option_group_options(map(), describe_option_group_options_message(), list()) ::
          {:ok, option_group_options_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_option_group_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOptionGroupOptions", input, options)
  end

  @doc """
  Describes the available option groups.
  """
  @spec describe_option_groups(map(), describe_option_groups_message(), list()) ::
          {:ok, option_groups(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_option_groups_errors()}
  def describe_option_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOptionGroups", input, options)
  end

  @doc """
  Describes the orderable DB instance options for a specified DB engine.
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
  pending maintenance action.

  This API follows an eventual consistency model. This means that the result of
  the
  `DescribePendingMaintenanceActions` command might not be immediately
  visible to all subsequent RDS commands. Keep this in mind when you use
  `DescribePendingMaintenanceActions` immediately after using a previous
  API command such as `ApplyPendingMaintenanceActions`.
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
  Returns information about reserved DB instances for this account, or about a
  specified reserved DB instance.
  """
  @spec describe_reserved_db_instances(map(), describe_reserved_db_instances_message(), list()) ::
          {:ok, reserved_db_instance_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_reserved_db_instances_errors()}
  def describe_reserved_db_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedDBInstances", input, options)
  end

  @doc """
  Lists available reserved DB instance offerings.
  """
  @spec describe_reserved_db_instances_offerings(
          map(),
          describe_reserved_db_instances_offerings_message(),
          list()
        ) ::
          {:ok, reserved_db_instances_offering_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_reserved_db_instances_offerings_errors()}
  def describe_reserved_db_instances_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReservedDBInstancesOfferings", input, options)
  end

  @doc """
  Returns a list of the source Amazon Web Services Regions where the current
  Amazon Web Services Region can create a read replica,
  copy a DB snapshot from, or replicate automated backups from.

  Use this operation to determine whether cross-Region features are supported
  between other Regions
  and your current Region. This operation supports pagination.

  To return information about the Regions that are enabled for your account, or
  all Regions,
  use the EC2 operation `DescribeRegions`. For more information, see
  [
  DescribeRegions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRegions.html)
  in the *Amazon EC2 API Reference*.
  """
  @spec describe_source_regions(map(), describe_source_regions_message(), list()) ::
          {:ok, source_region_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_source_regions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSourceRegions", input, options)
  end

  @doc """
  Describes the tenant databases in a DB instance that uses the multi-tenant
  configuration.

  Only RDS for Oracle CDB instances are supported.
  """
  @spec describe_tenant_databases(map(), describe_tenant_databases_message(), list()) ::
          {:ok, tenant_databases_message(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tenant_databases_errors()}
  def describe_tenant_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTenantDatabases", input, options)
  end

  @doc """
  You can call `DescribeValidDBInstanceModifications` to learn what modifications
  you can make to
  your DB instance.

  You can use this information when you call `ModifyDBInstance`.

  This command doesn't apply to RDS Custom.
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
  Disables the HTTP endpoint for the specified DB cluster.

  Disabling this endpoint disables RDS Data API.

  For more information, see [Using RDS Data API](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
  in the
  *Amazon Aurora User Guide*.

  This operation applies only to Aurora Serverless v2 and provisioned DB clusters.
  To disable the HTTP endpoint for Aurora Serverless v1 DB clusters,
  use the `EnableHttpEndpoint` parameter of the `ModifyDBCluster` operation.
  """
  @spec disable_http_endpoint(map(), disable_http_endpoint_request(), list()) ::
          {:ok, disable_http_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_http_endpoint_errors()}
  def disable_http_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableHttpEndpoint", input, options)
  end

  @doc """
  Downloads all or a portion of the specified log file, up to 1 MB in size.

  This command doesn't apply to RDS Custom.
  """
  @spec download_db_log_file_portion(map(), download_db_log_file_portion_message(), list()) ::
          {:ok, download_db_log_file_portion_details(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, download_db_log_file_portion_errors()}
  def download_db_log_file_portion(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DownloadDBLogFilePortion", input, options)
  end

  @doc """
  Enables the HTTP endpoint for the DB cluster.

  By default, the HTTP endpoint
  isn't enabled.

  When enabled, this endpoint provides a connectionless web service API (RDS Data
  API)
  for running SQL queries on the Aurora DB cluster. You can also query your
  database from inside the RDS console
  with the RDS query editor.

  For more information, see [Using RDS Data API](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
  in the
  *Amazon Aurora User Guide*.

  This operation applies only to Aurora Serverless v2 and provisioned DB clusters.
  To enable the HTTP endpoint for Aurora Serverless v1 DB clusters,
  use the `EnableHttpEndpoint` parameter of the `ModifyDBCluster` operation.
  """
  @spec enable_http_endpoint(map(), enable_http_endpoint_request(), list()) ::
          {:ok, enable_http_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_http_endpoint_errors()}
  def enable_http_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableHttpEndpoint", input, options)
  end

  @doc """
  Forces a failover for a DB cluster.

  For an Aurora DB cluster, failover for a DB cluster promotes one of the Aurora
  Replicas (read-only instances)
  in the DB cluster to be the primary DB instance (the cluster writer).

  For a Multi-AZ DB cluster, after RDS terminates the primary DB instance, the
  internal monitoring system detects that the primary DB instance is unhealthy and
  promotes a readable standby (read-only instances)
  in the DB cluster to be the primary DB instance (the cluster writer).
  Failover times are typically less than 35 seconds.

  An Amazon Aurora DB cluster automatically fails over to an Aurora Replica, if
  one exists,
  when the primary DB instance fails. A Multi-AZ DB cluster automatically fails
  over to a readable standby
  DB instance when the primary DB instance fails.

  To simulate a failure of a primary instance for testing, you can force a
  failover.
  Because each instance in a DB cluster has its own endpoint address, make sure to
  clean up and re-establish any existing
  connections that use those endpoint addresses when the failover is complete.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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
  Promotes the specified secondary DB cluster to be the primary DB cluster in the
  global database cluster to fail over or switch over a global database.

  Switchover operations were previously called "managed planned failovers."

  Although this operation can be used either to fail over or to switch over a
  global database cluster, its intended use is for global database failover.
  To switch over a global database cluster, we recommend that you use the
  `SwitchoverGlobalCluster` operation instead.

  How you use this operation depends on whether you are failing over or switching
  over your global database cluster:

    *
  Failing over - Specify the `AllowDataLoss` parameter and don't specify the
  `Switchover` parameter.

    *
  Switching over - Specify the `Switchover` parameter or omit it, but don't
  specify the `AllowDataLoss` parameter.

  ## About failing over and switching over

  While failing over and switching over a global database cluster both change the
  primary DB cluster, you use these operations for different reasons:

    *

  *Failing over* - Use this operation to respond to an unplanned event, such as a
  Regional disaster in the primary Region.
  Failing over can result in a loss of write transaction data that wasn't
  replicated to the chosen secondary before the failover event occurred.
  However, the recovery process that promotes a DB instance on the chosen seconday
  DB cluster to be the primary writer DB instance guarantees
  that the data is in a transactionally consistent state.

  For more information about failing over an Amazon Aurora global database, see
  [Performing managed failovers for Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-failover.managed-unplanned)
  in the *Amazon Aurora User Guide*.

    *

  *Switching over* - Use this operation on a healthy global database cluster for
  planned events, such as Regional rotation or to
  fail back to the original primary DB cluster after a failover operation. With
  this operation, there is no data loss.

  For more information about switching over an Amazon Aurora global database, see
  [Performing switchovers for Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-disaster-recovery.managed-failover)
  in the *Amazon Aurora User Guide*.
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
  Lists all tags on an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource,
  see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html)
  in the *Amazon RDS User Guide*
  or [Tagging Amazon Aurora and Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.html)
  in the *Amazon Aurora User Guide*.
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
  Changes the audit policy state of a database activity stream to either locked
  (default) or unlocked.

  A locked policy is read-only,
  whereas an unlocked policy is read/write. If your activity stream is started and
  locked, you can unlock it, customize your audit policy,
  and then lock your activity stream. Restarting the activity stream isn't
  required. For more information, see [ Modifying a database activity stream](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.Modifying.html)
  in the
  *Amazon RDS User Guide*.

  This operation is supported for RDS for Oracle and Microsoft SQL Server.
  """
  @spec modify_activity_stream(map(), modify_activity_stream_request(), list()) ::
          {:ok, modify_activity_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_activity_stream_errors()}
  def modify_activity_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyActivityStream", input, options)
  end

  @doc """
  Override the system-default Secure Sockets Layer/Transport Layer Security
  (SSL/TLS)
  certificate for Amazon RDS for new DB instances, or remove the override.

  By using this operation, you can specify an RDS-approved SSL/TLS certificate for
  new DB
  instances that is different from the default certificate provided by RDS. You
  can also
  use this operation to remove the override, so that new DB instances use the
  default
  certificate provided by RDS.

  You might need to override the default certificate in the following situations:

    *
  You already migrated your applications to support the latest certificate
  authority (CA) certificate, but the new CA certificate is not yet
  the RDS default CA certificate for the specified Amazon Web Services Region.

    *
  RDS has already moved to a new default CA certificate for the specified Amazon
  Web Services
  Region, but you are still in the process of supporting the new CA certificate.
  In this case, you temporarily need additional time to finish your application
  changes.

  For more information about rotating your SSL/TLS certificate for RDS DB engines,
  see
  [
  Rotating Your SSL/TLS
  Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html)
  in the *Amazon RDS User Guide*.

  For more information about rotating your SSL/TLS certificate for Aurora DB
  engines, see
  [
  Rotating Your SSL/TLS
  Certificate](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html)
  in the *Amazon Aurora User Guide*.
  """
  @spec modify_certificates(map(), modify_certificates_message(), list()) ::
          {:ok, modify_certificates_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_certificates_errors()}
  def modify_certificates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCertificates", input, options)
  end

  @doc """
  Set the capacity of an Aurora Serverless v1 DB cluster to a specific value.

  Aurora Serverless v1 scales seamlessly based on the workload on the DB cluster.
  In some cases, the capacity might not scale
  fast enough to meet a sudden change in workload, such as a large number of new
  transactions. Call `ModifyCurrentDBClusterCapacity`
  to set the capacity explicitly.

  After this call sets the DB cluster capacity, Aurora Serverless v1 can
  automatically scale
  the DB cluster based on the cooldown period for scaling up and the cooldown
  period
  for scaling down.

  For more information about Aurora Serverless v1, see [Using Amazon Aurora Serverless
  v1](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
  in the
  *Amazon Aurora User Guide*.

  If you call `ModifyCurrentDBClusterCapacity` with the default `TimeoutAction`,
  connections that
  prevent Aurora Serverless v1 from finding a scaling point might be dropped. For
  more information about scaling points,
  see [
  Autoscaling for Aurora Serverless
  v1](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling)
  in the *Amazon Aurora User Guide*.

  This operation only applies to Aurora Serverless v1 DB clusters.
  """
  @spec modify_current_db_cluster_capacity(
          map(),
          modify_current_db_cluster_capacity_message(),
          list()
        ) ::
          {:ok, db_cluster_capacity_info(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_current_db_cluster_capacity_errors()}
  def modify_current_db_cluster_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCurrentDBClusterCapacity", input, options)
  end

  @doc """
  Modifies the status of a custom engine version (CEV).

  You can find CEVs to modify by calling
  `DescribeDBEngineVersions`.

  The MediaImport service that imports files from Amazon S3 to create CEVs isn't
  integrated with
  Amazon Web Services CloudTrail. If you turn on data logging for Amazon RDS in
  CloudTrail, calls to the
  `ModifyCustomDbEngineVersion` event aren't logged. However, you might see calls
  from the
  API gateway that accesses your Amazon S3 bucket. These calls originate from the
  MediaImport service for
  the `ModifyCustomDbEngineVersion` event.

  For more information, see [Modifying CEV status](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.modify)
  in the *Amazon RDS User Guide*.
  """
  @spec modify_custom_db_engine_version(map(), modify_custom_db_engine_version_message(), list()) ::
          {:ok, db_engine_version(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_custom_db_engine_version_errors()}
  def modify_custom_db_engine_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCustomDBEngineVersion", input, options)
  end

  @doc """
  Modifies the settings of an Amazon Aurora DB cluster or a Multi-AZ DB cluster.

  You can change one or more settings by specifying these parameters and the new
  values in the
  request.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide*.
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
  Modifies the properties of an endpoint in an Amazon Aurora DB cluster.

  This operation only applies to Aurora DB clusters.
  """
  @spec modify_db_cluster_endpoint(map(), modify_db_cluster_endpoint_message(), list()) ::
          {:ok, db_cluster_endpoint(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_cluster_endpoint_errors()}
  def modify_db_cluster_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBClusterEndpoint", input, options)
  end

  @doc """
  Modifies the parameters of a DB cluster parameter group.

  To modify more than one parameter,
  submit a list of the following: `ParameterName`, `ParameterValue`,
  and `ApplyMethod`. A maximum of 20
  parameters can be modified in a single request.

  After you create a DB cluster parameter group, you should wait at least 5
  minutes
  before creating your first DB cluster that uses that DB cluster parameter group
  as the default parameter
  group. This allows Amazon RDS to fully complete the create operation before the
  parameter
  group is used as the default for a new DB cluster. This is especially important
  for parameters
  that are critical when creating the default database for a DB cluster, such as
  the character set
  for the default database defined by the `character_set_database` parameter. You
  can use the
  *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the
  `DescribeDBClusterParameters` operation to verify
  that your DB cluster parameter group has been created or modified.

  If the modified DB cluster parameter group is used by an Aurora Serverless v1
  cluster, Aurora
  applies the update immediately. The cluster restart might interrupt your
  workload. In that case,
  your application must reopen any connections and retry any transactions that
  were active
  when the parameter changes took effect.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide.*
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
  manual DB cluster snapshot.

  To share a manual DB cluster snapshot with other Amazon Web Services accounts,
  specify
  `restore` as the `AttributeName` and use the
  `ValuesToAdd` parameter to add a list of IDs of the Amazon Web Services accounts
  that are
  authorized to restore the manual DB cluster snapshot. Use the value `all` to
  make the manual DB cluster snapshot public, which means that it can be copied or
  restored by all Amazon Web Services accounts.

  Don't add the `all` value for any manual DB cluster snapshots
  that contain private information that you don't want available to all Amazon Web
  Services
  accounts.

  If a manual DB cluster snapshot is encrypted, it can be shared, but only by
  specifying a list of authorized Amazon Web Services account IDs for the
  `ValuesToAdd`
  parameter. You can't use `all` as a value for that parameter in this
  case.

  To view which Amazon Web Services accounts have access to copy or restore a
  manual DB cluster
  snapshot, or whether a manual DB cluster snapshot is public or private, use the
  `DescribeDBClusterSnapshotAttributes` API operation. The accounts are
  returned as values for the `restore` attribute.
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

  You can change one or more database configuration parameters by specifying these
  parameters and the new values in the request.
  To learn what modifications you can make to your DB instance,
  call `DescribeValidDBInstanceModifications`
  before you call `ModifyDBInstance`.
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

  After you modify a DB parameter group, you should wait at least 5 minutes
  before creating your first DB instance that uses that DB parameter group as the
  default parameter
  group. This allows Amazon RDS to fully complete the modify operation before the
  parameter
  group is used as the default for a new DB instance. This is especially important
  for parameters
  that are critical when creating the default database for a DB instance, such as
  the character set
  for the default database defined by the `character_set_database` parameter. You
  can use the
  *Parameter Groups* option of the [Amazon RDS console](https://console.aws.amazon.com/rds/) or the
  *DescribeDBParameters* command to verify
  that your DB parameter group has been created or modified.
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
  Changes the settings for an existing DB proxy.
  """
  @spec modify_db_proxy(map(), modify_db_proxy_request(), list()) ::
          {:ok, modify_db_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_proxy_errors()}
  def modify_db_proxy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBProxy", input, options)
  end

  @doc """
  Changes the settings for an existing DB proxy endpoint.
  """
  @spec modify_db_proxy_endpoint(map(), modify_db_proxy_endpoint_request(), list()) ::
          {:ok, modify_db_proxy_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_proxy_endpoint_errors()}
  def modify_db_proxy_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBProxyEndpoint", input, options)
  end

  @doc """
  Modifies the properties of a `DBProxyTargetGroup`.
  """
  @spec modify_db_proxy_target_group(map(), modify_db_proxy_target_group_request(), list()) ::
          {:ok, modify_db_proxy_target_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_proxy_target_group_errors()}
  def modify_db_proxy_target_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBProxyTargetGroup", input, options)
  end

  @doc """
  Updates the recommendation status and recommended action status for the
  specified recommendation.
  """
  @spec modify_db_recommendation(map(), modify_db_recommendation_message(), list()) ::
          {:ok, db_recommendation_message(), any()}
          | {:error, {:unexpected_response, any()}}
  def modify_db_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBRecommendation", input, options)
  end

  @doc """
  Modifies the settings of an Aurora Limitless Database DB shard group.

  You can change one or more settings by
  specifying these parameters and the new values in the request.
  """
  @spec modify_db_shard_group(map(), modify_db_shard_group_message(), list()) ::
          {:ok, db_shard_group(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_shard_group_errors()}
  def modify_db_shard_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBShardGroup", input, options)
  end

  @doc """
  Updates a manual DB snapshot with a new engine version.

  The snapshot can be encrypted
  or unencrypted, but not shared or public.

  Amazon RDS supports upgrading DB snapshots for MySQL, PostgreSQL, and Oracle.
  This operation
  doesn't apply to RDS Custom or RDS for Db2.
  """
  @spec modify_db_snapshot(map(), modify_db_snapshot_message(), list()) ::
          {:ok, modify_db_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_snapshot_errors()}
  def modify_db_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBSnapshot", input, options)
  end

  @doc """
  Adds an attribute and values to, or removes an attribute and values from, a
  manual DB snapshot.

  To share a manual DB snapshot with other Amazon Web Services accounts, specify
  `restore`
  as the `AttributeName` and use the `ValuesToAdd` parameter to add
  a list of IDs of the Amazon Web Services accounts that are authorized to restore
  the manual DB snapshot.
  Uses the value `all` to make the manual DB snapshot public, which means it
  can be copied or restored by all Amazon Web Services accounts.

  Don't add the `all` value for any manual DB snapshots that
  contain private information that you don't want available to all Amazon Web
  Services
  accounts.

  If the manual DB snapshot is encrypted, it can be shared, but only by specifying
  a
  list of authorized Amazon Web Services account IDs for the `ValuesToAdd`
  parameter. You
  can't use `all` as a value for that parameter in this case.

  To view which Amazon Web Services accounts have access to copy or restore a
  manual DB snapshot, or
  whether a manual DB snapshot public or private, use the
  `DescribeDBSnapshotAttributes` API operation. The accounts are returned as
  values for the `restore` attribute.
  """
  @spec modify_db_snapshot_attribute(map(), modify_db_snapshot_attribute_message(), list()) ::
          {:ok, modify_db_snapshot_attribute_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_db_snapshot_attribute_errors()}
  def modify_db_snapshot_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDBSnapshotAttribute", input, options)
  end

  @doc """
  Modifies an existing DB subnet group.

  DB subnet groups must contain at least one subnet in at least two AZs in the
  Amazon Web Services Region.
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
  Modifies an existing RDS event notification subscription.

  You can't modify the source identifiers using this call. To change
  source identifiers for a subscription, use the
  `AddSourceIdentifierToSubscription` and `RemoveSourceIdentifierFromSubscription`
  calls.

  You can see a list of the event categories for a given source type
  (`SourceType`)
  in
  [Events](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
  in the *Amazon RDS User Guide*
  or by using the `DescribeEventCategories` operation.
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
  Modifies a setting for an Amazon Aurora global database cluster.

  You can change one or more database configuration
  parameters by specifying these parameters and the new values in the request. For
  more information on
  Amazon Aurora, see [ What is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the
  *Amazon Aurora User Guide*.

  This operation only applies to Aurora global database clusters.
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
  Modifies a zero-ETL integration with Amazon Redshift.
  """
  @spec modify_integration(map(), modify_integration_message(), list()) ::
          {:ok, integration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_integration_errors()}
  def modify_integration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyIntegration", input, options)
  end

  @doc """
  Modifies an existing option group.
  """
  @spec modify_option_group(map(), modify_option_group_message(), list()) ::
          {:ok, modify_option_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_option_group_errors()}
  def modify_option_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyOptionGroup", input, options)
  end

  @doc """
  Modifies an existing tenant database in a DB instance.

  You can change the tenant
  database name or the master user password. This operation is supported only for
  RDS for
  Oracle CDB instances using the multi-tenant configuration.
  """
  @spec modify_tenant_database(map(), modify_tenant_database_message(), list()) ::
          {:ok, modify_tenant_database_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_tenant_database_errors()}
  def modify_tenant_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyTenantDatabase", input, options)
  end

  @doc """
  Promotes a read replica DB instance to a standalone DB instance.

    
  Backup duration is a function of the amount of changes to the database since the
  previous
  backup. If you plan to promote a read replica to a standalone instance, we
  recommend that you enable backups and complete at least one backup prior to
  promotion. In addition, a read replica cannot be promoted to a standalone
  instance when it is in the `backing-up` status. If you have
  enabled backups on your read replica, configure the automated backup window
  so that daily backups do not interfere with read replica
  promotion.

    
  This command doesn't apply to Aurora MySQL, Aurora PostgreSQL, or RDS Custom.
  """
  @spec promote_read_replica(map(), promote_read_replica_message(), list()) ::
          {:ok, promote_read_replica_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, promote_read_replica_errors()}
  def promote_read_replica(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PromoteReadReplica", input, options)
  end

  @doc """
  Promotes a read replica DB cluster to a standalone DB cluster.
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
  Purchases a reserved DB instance offering.
  """
  @spec purchase_reserved_db_instances_offering(
          map(),
          purchase_reserved_db_instances_offering_message(),
          list()
        ) ::
          {:ok, purchase_reserved_db_instances_offering_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, purchase_reserved_db_instances_offering_errors()}
  def purchase_reserved_db_instances_offering(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseReservedDBInstancesOffering", input, options)
  end

  @doc """
  You might need to reboot your DB cluster, usually for maintenance reasons.

  For example, if you make certain modifications,
  or if you change the DB cluster parameter group associated with the DB cluster,
  reboot the DB cluster for the changes to take effect.

  Rebooting a DB cluster restarts the database engine service. Rebooting a DB
  cluster results in a momentary outage, during which the DB cluster status is set
  to rebooting.

  Use this operation only for a non-Aurora Multi-AZ DB cluster.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide.*
  """
  @spec reboot_db_cluster(map(), reboot_db_cluster_message(), list()) ::
          {:ok, reboot_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_db_cluster_errors()}
  def reboot_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootDBCluster", input, options)
  end

  @doc """
  You might need to reboot your DB instance, usually for maintenance reasons.

  For example, if you make certain modifications,
  or if you change the DB parameter group associated with the DB instance,
  you must reboot the instance for the changes to take effect.

  Rebooting a DB instance restarts the database engine service.
  Rebooting a DB instance results in a momentary outage, during which the DB
  instance status is set to rebooting.

  For more information about rebooting, see [Rebooting a DB Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html)
  in the *Amazon RDS User Guide.*

  This command doesn't apply to RDS Custom.

  If your DB instance is part of a Multi-AZ DB cluster, you can reboot the DB
  cluster with the `RebootDBCluster` operation.
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
  You might need to reboot your DB shard group, usually for maintenance reasons.

  For example, if you make certain modifications, reboot
  the DB shard group for the changes to take effect.

  This operation applies only to Aurora Limitless Database DBb shard groups.
  """
  @spec reboot_db_shard_group(map(), reboot_db_shard_group_message(), list()) ::
          {:ok, db_shard_group(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_db_shard_group_errors()}
  def reboot_db_shard_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootDBShardGroup", input, options)
  end

  @doc """
  Associate one or more `DBProxyTarget` data structures with a
  `DBProxyTargetGroup`.
  """
  @spec register_db_proxy_targets(map(), register_db_proxy_targets_request(), list()) ::
          {:ok, register_db_proxy_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_db_proxy_targets_errors()}
  def register_db_proxy_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterDBProxyTargets", input, options)
  end

  @doc """
  Detaches an Aurora secondary cluster from an Aurora global database cluster.

  The cluster becomes a
  standalone cluster with read-write capability instead of being read-only and
  receiving data from a
  primary cluster in a different Region.

  This operation only applies to Aurora DB clusters.
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
  Removes the asssociation of an Amazon Web Services Identity and Access
  Management (IAM) role from a
  DB cluster.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide.*
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
  Disassociates an Amazon Web Services Identity and Access Management (IAM) role
  from a DB instance.
  """
  @spec remove_role_from_db_instance(map(), remove_role_from_db_instance_message(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_role_from_db_instance_errors()}
  def remove_role_from_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveRoleFromDBInstance", input, options)
  end

  @doc """
  Removes a source identifier from an existing RDS event notification
  subscription.
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
  Removes metadata tags from an Amazon RDS resource.

  For an overview on tagging an Amazon RDS resource,
  see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html)
  in the *Amazon RDS User Guide*
  or [Tagging Amazon Aurora and Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.html)
  in the *Amazon Aurora User Guide*.
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

  To
  reset specific parameters submit a list of the following: `ParameterName`
  and `ApplyMethod`. To reset the
  entire DB cluster parameter group, specify the `DBClusterParameterGroupName`
  and `ResetAllParameters` parameters.

  When resetting the entire group, dynamic parameters are updated immediately and
  static parameters
  are set to `pending-reboot` to take effect on the next DB instance restart
  or `RebootDBInstance` request. You must call `RebootDBInstance` for every
  DB instance in your DB cluster that you want the updated static parameter to
  apply to.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide.*
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

  To reset specific parameters, provide a list of the following:
  `ParameterName` and `ApplyMethod`. To reset the entire DB
  parameter group, specify the `DBParameterGroup` name and
  `ResetAllParameters` parameters. When resetting the entire group, dynamic
  parameters are updated immediately and static parameters are set to
  `pending-reboot` to take effect on the next DB instance restart or
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
  Creates an Amazon Aurora DB cluster from MySQL data stored in an Amazon S3
  bucket.

  Amazon RDS must be authorized to access the Amazon S3 bucket and the data must
  be
  created using the Percona XtraBackup utility as described in [ Migrating Data from MySQL by Using an Amazon S3
  Bucket](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3)
  in the
  *Amazon Aurora User Guide*.

  This operation only restores the DB cluster, not the DB instances for that DB
  cluster. You must invoke the `CreateDBInstance` operation to create DB
  instances for the restored DB cluster, specifying the identifier of the restored
  DB
  cluster in `DBClusterIdentifier`. You can create DB instances only after
  the `RestoreDBClusterFromS3` operation has completed and the DB
  cluster is available.

  For more information on Amazon Aurora, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  This operation only applies to Aurora DB clusters. The source DB engine must be
  MySQL.
  """
  @spec restore_db_cluster_from_s3(map(), restore_db_cluster_from_s3_message(), list()) ::
          {:ok, restore_db_cluster_from_s3_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_db_cluster_from_s3_errors()}
  def restore_db_cluster_from_s3(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreDBClusterFromS3", input, options)
  end

  @doc """
  Creates a new DB cluster from a DB snapshot or DB cluster snapshot.

  The target DB cluster is created from the source snapshot with a default
  configuration. If you don't specify a security group, the new DB cluster is
  associated with the default security group.

  This operation only restores the DB cluster, not the DB instances for that DB
  cluster. You must invoke the `CreateDBInstance` operation to create DB
  instances for the restored DB cluster, specifying the identifier of the restored
  DB
  cluster in `DBClusterIdentifier`. You can create DB instances only after
  the `RestoreDBClusterFromSnapshot` operation has completed and the DB
  cluster is available.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide.*
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

  Users can restore to any point
  in time before `LatestRestorableTime` for up to
  `BackupRetentionPeriod` days. The target DB cluster is created from the
  source DB cluster with the same configuration as the original DB cluster, except
  that
  the new DB cluster is created with the default DB security group.

  For Aurora, this operation only restores the DB cluster, not the DB instances
  for that DB
  cluster. You must invoke the `CreateDBInstance` operation to create DB
  instances for the restored DB cluster, specifying the identifier of the restored
  DB
  cluster in `DBClusterIdentifier`. You can create DB instances only after
  the `RestoreDBClusterToPointInTime` operation has completed and the DB
  cluster is available.

  For more information on Amazon Aurora DB clusters, see
  [
  What is Amazon
  Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
  in the *Amazon Aurora User Guide*.

  For more information on Multi-AZ DB clusters, see [ Multi-AZ DB cluster
  deployments](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html)
  in the *Amazon RDS User
  Guide.*
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
  Creates a new DB instance from a DB snapshot.

  The target database is created from the source database restore point with most
  of the source's original configuration, including the default security group and
  DB parameter group. By default, the new DB
  instance is created as a Single-AZ deployment, except when the instance is a SQL
  Server instance that has an option group
  associated with mirroring. In this case, the instance becomes a Multi-AZ
  deployment, not a Single-AZ deployment.

  If you want to replace your original DB instance with the new, restored DB
  instance, then rename your original DB instance
  before you call the `RestoreDBInstanceFromDBSnapshot` operation. RDS doesn't
  allow two DB instances with the same name. After you
  have renamed your original DB instance with a different identifier, then you can
  pass the original name of the DB instance as
  the `DBInstanceIdentifier` in the call to the `RestoreDBInstanceFromDBSnapshot`
  operation. The result is that you replace the original
  DB instance with the DB instance created from the snapshot.

  If you are restoring from a shared manual DB snapshot, the
  `DBSnapshotIdentifier`
  must be the ARN of the shared DB snapshot.

  To restore from a DB snapshot with an unsupported engine version, you must first
  upgrade the
  engine version of the snapshot. For more information about upgrading a RDS for
  MySQL DB snapshot engine version, see [Upgrading a MySQL DB snapshot engine version](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/mysql-upgrade-snapshot.html).
  For more information about upgrading a RDS for PostgreSQL DB snapshot engine
  version, [Upgrading a PostgreSQL DB snapshot engine version](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBSnapshot.PostgreSQL.html).

  This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora,
  use `RestoreDBClusterFromSnapshot`.
  """
  @spec restore_db_instance_from_db_snapshot(
          map(),
          restore_db_instance_from_db_snapshot_message(),
          list()
        ) ::
          {:ok, restore_db_instance_from_db_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_db_instance_from_db_snapshot_errors()}
  def restore_db_instance_from_db_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreDBInstanceFromDBSnapshot", input, options)
  end

  @doc """
  Amazon Relational Database Service (Amazon RDS)
  supports importing MySQL databases by using backup files.

  You can create a backup of your on-premises database,
  store it on Amazon Simple Storage Service (Amazon S3),
  and then restore the backup file onto a new Amazon RDS DB instance running
  MySQL.
  For more information, see [Importing Data into an Amazon RDS MySQL DB Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  in the *Amazon RDS User Guide.*

  This operation doesn't apply to RDS Custom.
  """
  @spec restore_db_instance_from_s3(map(), restore_db_instance_from_s3_message(), list()) ::
          {:ok, restore_db_instance_from_s3_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_db_instance_from_s3_errors()}
  def restore_db_instance_from_s3(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreDBInstanceFromS3", input, options)
  end

  @doc """
  Restores a DB instance to an arbitrary point in time.

  You can restore to any point in time before the time identified by the
  `LatestRestorableTime` property. You can restore to a point up to the number of
  days specified by the `BackupRetentionPeriod` property.

  The target database is created with most of the original configuration, but in a
  system-selected Availability Zone, with the default security group, the default
  subnet
  group, and the default DB parameter group. By default, the new DB instance is
  created as
  a single-AZ deployment except when the instance is a SQL Server instance that
  has an
  option group that is associated with mirroring; in this case, the instance
  becomes a
  mirrored deployment and not a single-AZ deployment.

  This operation doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora,
  use `RestoreDBClusterToPointInTime`.
  """
  @spec restore_db_instance_to_point_in_time(
          map(),
          restore_db_instance_to_point_in_time_message(),
          list()
        ) ::
          {:ok, restore_db_instance_to_point_in_time_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_db_instance_to_point_in_time_errors()}
  def restore_db_instance_to_point_in_time(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreDBInstanceToPointInTime", input, options)
  end

  @doc """
  Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or
  EC2 or VPC security groups.

  Required
  parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC, or
  (EC2SecurityGroupOwnerId and either
  EC2SecurityGroupName or EC2SecurityGroupId).

  EC2-Classic was retired on August 15, 2022. If you haven't migrated from
  EC2-Classic to a VPC, we recommend that
  you migrate as soon as possible. For more information, see [Migrate from EC2-Classic to a
  VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in
  the
  *Amazon EC2 User Guide*, the blog [EC2-Classic Networking is Retiring – Here’s How to
  Prepare](http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/),
  and [Moving a DB instance not in a VPC into a
  VPC](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html)
  in the *Amazon RDS User Guide*.
  """
  @spec revoke_db_security_group_ingress(
          map(),
          revoke_db_security_group_ingress_message(),
          list()
        ) ::
          {:ok, revoke_db_security_group_ingress_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_db_security_group_ingress_errors()}
  def revoke_db_security_group_ingress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeDBSecurityGroupIngress", input, options)
  end

  @doc """
  Starts a database activity stream to monitor activity on the database.

  For more information, see
  [
  Monitoring Amazon Aurora with Database Activity
  Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
  in the *Amazon Aurora User Guide* or
  [
  Monitoring Amazon RDS with Database Activity
  Streams](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.html)
  in the *Amazon RDS User Guide*.
  """
  @spec start_activity_stream(map(), start_activity_stream_request(), list()) ::
          {:ok, start_activity_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_activity_stream_errors()}
  def start_activity_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartActivityStream", input, options)
  end

  @doc """
  Starts an Amazon Aurora DB cluster that was stopped using the Amazon Web
  Services console, the stop-db-cluster
  CLI command, or the `StopDBCluster` operation.

  For more information, see
  [
  Stopping and Starting an Aurora
  Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
  in the *Amazon Aurora User Guide*.

  This operation only applies to Aurora DB clusters.
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
  Starts an Amazon RDS DB instance that was stopped using the Amazon Web Services
  console, the stop-db-instance CLI command, or the `StopDBInstance` operation.

  For more information, see
  [
  Starting an Amazon RDS DB instance That Was Previously
  Stopped](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html)
  in the
  *Amazon RDS User Guide.*

  This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora PostgreSQL.
  For Aurora DB clusters, use `StartDBCluster` instead.
  """
  @spec start_db_instance(map(), start_db_instance_message(), list()) ::
          {:ok, start_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_db_instance_errors()}
  def start_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDBInstance", input, options)
  end

  @doc """
  Enables replication of automated backups to a different Amazon Web Services
  Region.

  This command doesn't apply to RDS Custom.

  For more information, see [
  Replicating Automated Backups to Another Amazon Web Services
  Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
  in the *Amazon RDS User Guide.*
  """
  @spec start_db_instance_automated_backups_replication(
          map(),
          start_db_instance_automated_backups_replication_message(),
          list()
        ) ::
          {:ok, start_db_instance_automated_backups_replication_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_db_instance_automated_backups_replication_errors()}
  def start_db_instance_automated_backups_replication(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "StartDBInstanceAutomatedBackupsReplication",
      input,
      options
    )
  end

  @doc """
  Starts an export of DB snapshot or DB cluster data to Amazon S3.

  The provided IAM role must have access to the S3 bucket.

  You can't export snapshot data from Db2 or RDS Custom DB instances.

  For more information on exporting DB snapshot data, see
  [Exporting DB snapshot data to Amazon
  S3](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ExportSnapshot.html)
  in the *Amazon RDS User Guide*
  or [Exporting DB cluster snapshot data to Amazon
  S3](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-export-snapshot.html)
  in the *Amazon Aurora User Guide*.

  For more information on exporting DB cluster data, see
  [Exporting DB cluster data to Amazon
  S3](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/export-cluster-data.html)
  in the *Amazon Aurora User Guide*.
  """
  @spec start_export_task(map(), start_export_task_message(), list()) ::
          {:ok, export_task(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_export_task_errors()}
  def start_export_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExportTask", input, options)
  end

  @doc """
  Stops a database activity stream that was started using the Amazon Web Services
  console,
  the `start-activity-stream` CLI command, or the `StartActivityStream` operation.

  For more information, see
  [
  Monitoring Amazon Aurora with Database Activity
  Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html)
  in the *Amazon Aurora User Guide*
  or [
  Monitoring Amazon RDS with Database Activity
  Streams](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/DBActivityStreams.html)
  in the *Amazon RDS User Guide*.
  """
  @spec stop_activity_stream(map(), stop_activity_stream_request(), list()) ::
          {:ok, stop_activity_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_activity_stream_errors()}
  def stop_activity_stream(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopActivityStream", input, options)
  end

  @doc """
  Stops an Amazon Aurora DB cluster.

  When you stop a DB cluster, Aurora retains the DB cluster's
  metadata, including its endpoints and DB parameter groups. Aurora also
  retains the transaction logs so you can do a point-in-time restore if necessary.

  For more information, see
  [
  Stopping and Starting an Aurora
  Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html)
  in the *Amazon Aurora User Guide*.

  This operation only applies to Aurora DB clusters.
  """
  @spec stop_db_cluster(map(), stop_db_cluster_message(), list()) ::
          {:ok, stop_db_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_db_cluster_errors()}
  def stop_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDBCluster", input, options)
  end

  @doc """
  Stops an Amazon RDS DB instance temporarily.

  When you stop a DB instance, Amazon RDS retains the DB instance's metadata,
  including its endpoint, DB parameter group, and option group membership. Amazon
  RDS also retains
  the transaction logs so you can do a point-in-time restore if necessary. The
  instance restarts automatically
  after 7 days.

  For more information, see
  [
  Stopping an Amazon RDS DB Instance
  Temporarily](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html)
  in the
  *Amazon RDS User Guide.*

  This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora PostgreSQL.
  For Aurora clusters, use `StopDBCluster` instead.
  """
  @spec stop_db_instance(map(), stop_db_instance_message(), list()) ::
          {:ok, stop_db_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_db_instance_errors()}
  def stop_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDBInstance", input, options)
  end

  @doc """
  Stops automated backup replication for a DB instance.

  This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora PostgreSQL.

  For more information, see [
  Replicating Automated Backups to Another Amazon Web Services
  Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
  in the *Amazon RDS User Guide.*
  """
  @spec stop_db_instance_automated_backups_replication(
          map(),
          stop_db_instance_automated_backups_replication_message(),
          list()
        ) ::
          {:ok, stop_db_instance_automated_backups_replication_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_db_instance_automated_backups_replication_errors()}
  def stop_db_instance_automated_backups_replication(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "StopDBInstanceAutomatedBackupsReplication",
      input,
      options
    )
  end

  @doc """
  Switches over a blue/green deployment.

  Before you switch over, production traffic is routed to the databases in the
  blue environment.
  After you switch over, production traffic is routed to the databases in the
  green environment.

  For more information, see [Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html)
  in the *Amazon RDS User
  Guide* and [Using Amazon RDS Blue/Green Deployments for database
  updates](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html)
  in the *Amazon Aurora
  User Guide*.
  """
  @spec switchover_blue_green_deployment(
          map(),
          switchover_blue_green_deployment_request(),
          list()
        ) ::
          {:ok, switchover_blue_green_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, switchover_blue_green_deployment_errors()}
  def switchover_blue_green_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SwitchoverBlueGreenDeployment", input, options)
  end

  @doc """
  Switches over the specified secondary DB cluster to be the new primary DB
  cluster in the global database cluster.

  Switchover operations were previously called "managed planned failovers."

  Aurora promotes the specified secondary cluster to assume full read/write
  capabilities and demotes the current primary cluster
  to a secondary (read-only) cluster, maintaining the orginal replication
  topology. All secondary clusters are synchronized with the primary
  at the beginning of the process so the new primary continues operations for the
  Aurora global database without losing any data. Your database
  is unavailable for a short time while the primary and selected secondary
  clusters are assuming their new roles. For more information about
  switching over an Aurora global database, see [Performing switchovers for Amazon Aurora global
  databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-disaster-recovery.managed-failover)
  in the *Amazon Aurora User Guide*.

  This operation is intended for controlled environments, for operations such as
  "regional rotation" or to fall back to the original
  primary after a global database failover.
  """
  @spec switchover_global_cluster(map(), switchover_global_cluster_message(), list()) ::
          {:ok, switchover_global_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, switchover_global_cluster_errors()}
  def switchover_global_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SwitchoverGlobalCluster", input, options)
  end

  @doc """
  Switches over an Oracle standby database in an Oracle Data Guard environment,
  making it the new
  primary database.

  Issue this command in the Region that hosts the current standby database.
  """
  @spec switchover_read_replica(map(), switchover_read_replica_message(), list()) ::
          {:ok, switchover_read_replica_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, switchover_read_replica_errors()}
  def switchover_read_replica(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SwitchoverReadReplica", input, options)
  end
end
