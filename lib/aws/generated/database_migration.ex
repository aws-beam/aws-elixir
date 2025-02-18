# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DatabaseMigration do
  @moduledoc """
  Database Migration Service

  Database Migration Service (DMS) can migrate your data to and from the most
  widely used commercial and open-source databases such as Oracle, PostgreSQL,
  Microsoft SQL
  Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server
  Enterprise
  (ASE).

  The service supports homogeneous migrations such as Oracle to Oracle, as well as
  heterogeneous migrations between different database platforms, such as Oracle to
  MySQL or
  SQL Server to PostgreSQL.

  For more information about DMS, see [What Is Database Migration Service?](https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html)
  in the *Database Migration Service User Guide.*
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      redshift_settings() :: %{
        "AcceptAnyDate" => boolean(),
        "AfterConnectScript" => String.t(),
        "BucketFolder" => String.t(),
        "BucketName" => String.t(),
        "CaseSensitiveNames" => boolean(),
        "CompUpdate" => boolean(),
        "ConnectionTimeout" => integer(),
        "DatabaseName" => String.t(),
        "DateFormat" => String.t(),
        "EmptyAsNull" => boolean(),
        "EncryptionMode" => list(any()),
        "ExplicitIds" => boolean(),
        "FileTransferUploadStreams" => integer(),
        "LoadTimeout" => integer(),
        "MapBooleanAsBoolean" => boolean(),
        "MaxFileSize" => integer(),
        "Password" => String.t(),
        "Port" => integer(),
        "RemoveQuotes" => boolean(),
        "ReplaceChars" => String.t(),
        "ReplaceInvalidChars" => String.t(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "ServerSideEncryptionKmsKeyId" => String.t(),
        "ServiceAccessRoleArn" => String.t(),
        "TimeFormat" => String.t(),
        "TrimBlanks" => boolean(),
        "TruncateColumns" => boolean(),
        "Username" => String.t(),
        "WriteBufferSize" => integer()
      }
      
  """
  @type redshift_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      collector_response() :: %{
        "CollectorHealthCheck" => collector_health_check(),
        "CollectorName" => String.t(),
        "CollectorReferencedId" => String.t(),
        "CollectorVersion" => String.t(),
        "CreatedDate" => String.t(),
        "Description" => String.t(),
        "InventoryData" => inventory_data(),
        "LastDataReceived" => String.t(),
        "ModifiedDate" => String.t(),
        "RegisteredDate" => String.t(),
        "S3BucketName" => String.t(),
        "ServiceAccessRoleArn" => String.t(),
        "VersionStatus" => list(any())
      }
      
  """
  @type collector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_advisor_schema_object_response() :: %{
        "CodeLineCount" => float(),
        "CodeSize" => float(),
        "NumberOfObjects" => float(),
        "ObjectType" => String.t(),
        "SchemaId" => String.t()
      }
      
  """
  @type fleet_advisor_schema_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_databases_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_advisor_databases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_statistics_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("ReplicationTaskArn") => String.t()
      }
      
  """
  @type describe_table_statistics_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_settings() :: %{
        "IncludeControlDetails" => boolean(),
        "IncludeNullAndEmpty" => boolean(),
        "IncludePartitionValue" => boolean(),
        "IncludeTableAlterOperations" => boolean(),
        "IncludeTransactionDetails" => boolean(),
        "MessageFormat" => list(any()),
        "NoHexPrefix" => boolean(),
        "PartitionIncludeSchemaTable" => boolean(),
        "ServiceAccessRoleArn" => String.t(),
        "StreamArn" => String.t(),
        "UseLargeIntegerValue" => boolean()
      }
      
  """
  @type kinesis_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_resource_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_provider() :: %{
        "DataProviderArn" => String.t(),
        "DataProviderCreationTime" => non_neg_integer(),
        "DataProviderName" => String.t(),
        "Description" => String.t(),
        "Engine" => String.t(),
        "Settings" => list()
      }
      
  """
  @type data_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_provider_message() :: %{
        required("DataProviderIdentifier") => String.t()
      }
      
  """
  @type delete_data_provider_message() :: %{String.t() => any()}

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
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type apply_pending_maintenance_action_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upgrade_dependency_failure_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type upgrade_dependency_failure_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subnet_already_in_use() :: %{
        "message" => String.t()
      }
      
  """
  @type subnet_already_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_versions_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_engine_versions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_endpoints_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oracle_data_provider_settings() :: %{
        "AsmServer" => String.t(),
        "CertificateArn" => String.t(),
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "SecretsManagerOracleAsmAccessRoleArn" => String.t(),
        "SecretsManagerOracleAsmSecretId" => String.t(),
        "SecretsManagerSecurityDbEncryptionAccessRoleArn" => String.t(),
        "SecretsManagerSecurityDbEncryptionSecretId" => String.t(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type oracle_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_orderable_replication_instances_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_orderable_replication_instances_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_metadata_model_assessment_result_entry() :: %{
        "ObjectURL" => String.t(),
        "S3ObjectKey" => String.t()
      }
      
  """
  @type export_metadata_model_assessment_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_configs_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_replication_configs_message() :: %{String.t() => any()}

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
      
      start_metadata_model_import_message() :: %{
        optional("Refresh") => boolean(),
        required("MigrationProjectIdentifier") => String.t(),
        required("Origin") => list(any()),
        required("SelectionRules") => String.t()
      }
      
  """
  @type start_metadata_model_import_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_subnet_group_response() :: %{
        "ReplicationSubnetGroup" => replication_subnet_group()
      }
      
  """
  @type create_replication_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_collectors_response() :: %{
        "Collectors" => list(collector_response()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_advisor_collectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_state_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_invalid_state_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_imports_response() :: %{
        "Marker" => String.t(),
        "Requests" => list(schema_conversion_request()())
      }
      
  """
  @type describe_metadata_model_imports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_task_message() :: %{
        optional("CdcStartPosition") => String.t(),
        optional("CdcStartTime") => non_neg_integer(),
        optional("CdcStopPosition") => String.t(),
        required("ReplicationTaskArn") => String.t(),
        required("StartReplicationTaskType") => list(any())
      }
      
  """
  @type start_replication_task_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_profile_response() :: %{
        "InstanceProfile" => instance_profile()
      }
      
  """
  @type delete_instance_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_recommendation() :: %{
        "RequirementsToTarget" => rds_requirements(),
        "TargetConfiguration" => rds_configuration()
      }
      
  """
  @type rds_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_profile() :: %{
        "AvailabilityZone" => String.t(),
        "Description" => String.t(),
        "InstanceProfileArn" => String.t(),
        "InstanceProfileCreationTime" => non_neg_integer(),
        "InstanceProfileName" => String.t(),
        "KmsKeyArn" => String.t(),
        "NetworkType" => String.t(),
        "PubliclyAccessible" => boolean(),
        "SubnetGroupIdentifier" => String.t(),
        "VpcSecurityGroups" => list(String.t()())
      }
      
  """
  @type instance_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      default_error_details() :: %{
        "Message" => String.t()
      }
      
  """
  @type default_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_instance_profile_response() :: %{
        "InstanceProfile" => instance_profile()
      }
      
  """
  @type modify_instance_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_migration_project_message() :: %{
        optional("Description") => String.t(),
        optional("MigrationProjectName") => String.t(),
        optional("SchemaConversionApplicationAttributes") => s_capplication_attributes(),
        optional("Tags") => list(tag()()),
        optional("TransformationRules") => String.t(),
        required("InstanceProfileIdentifier") => String.t(),
        required("SourceDataProviderDescriptors") => list(data_provider_descriptor_definition()()),
        required("TargetDataProviderDescriptors") => list(data_provider_descriptor_definition()())
      }
      
  """
  @type create_migration_project_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_setting() :: %{
        "Applicability" => String.t(),
        "DefaultValue" => String.t(),
        "EnumValues" => list(String.t()()),
        "IntValueMax" => integer(),
        "IntValueMin" => integer(),
        "Name" => String.t(),
        "Sensitive" => boolean(),
        "Type" => list(any()),
        "Units" => String.t()
      }
      
  """
  @type endpoint_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_zone() :: %{
        "Name" => String.t()
      }
      
  """
  @type availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_stats() :: %{
        "ElapsedTimeMillis" => float(),
        "FreshStartDate" => non_neg_integer(),
        "FullLoadFinishDate" => non_neg_integer(),
        "FullLoadProgressPercent" => integer(),
        "FullLoadStartDate" => non_neg_integer(),
        "StartDate" => non_neg_integer(),
        "StopDate" => non_neg_integer(),
        "TablesErrored" => integer(),
        "TablesLoaded" => integer(),
        "TablesLoading" => integer(),
        "TablesQueued" => integer()
      }
      
  """
  @type replication_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inventory_data() :: %{
        "NumberOfDatabases" => integer(),
        "NumberOfSchemas" => integer()
      }
      
  """
  @type inventory_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_task_assessment_run_message() :: %{
        required("ReplicationTaskAssessmentRunArn") => String.t()
      }
      
  """
  @type delete_replication_task_assessment_run_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommendation_limitations_response() :: %{
        "Limitations" => list(limitation()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_recommendation_limitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_categories_response() :: %{
        "EventCategoryGroupList" => list(event_category_group()())
      }
      
  """
  @type describe_event_categories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_advisor_collector_request() :: %{
        optional("Description") => String.t(),
        required("CollectorName") => String.t(),
        required("S3BucketName") => String.t(),
        required("ServiceAccessRoleArn") => String.t()
      }
      
  """
  @type create_fleet_advisor_collector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_conversions_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type describe_metadata_model_conversions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sybase_settings() :: %{
        "DatabaseName" => String.t(),
        "Password" => String.t(),
        "Port" => integer(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "Username" => String.t()
      }
      
  """
  @type sybase_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_subnet_group_message() :: %{
        optional("Tags") => list(tag()()),
        required("ReplicationSubnetGroupDescription") => String.t(),
        required("ReplicationSubnetGroupIdentifier") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type create_replication_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_migration_project_message() :: %{
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type delete_migration_project_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_advisor_databases_request() :: %{
        required("DatabaseIds") => list(String.t()())
      }
      
  """
  @type delete_fleet_advisor_databases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_databases_response() :: %{
        "Databases" => list(database_response()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_advisor_databases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_short_info_response() :: %{
        "DatabaseId" => String.t(),
        "DatabaseIpAddress" => String.t(),
        "DatabaseName" => String.t(),
        "SchemaId" => String.t(),
        "SchemaName" => String.t()
      }
      
  """
  @type schema_short_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engine_version() :: %{
        "AutoUpgradeDate" => non_neg_integer(),
        "AvailableUpgrades" => list(String.t()()),
        "DeprecationDate" => non_neg_integer(),
        "ForceUpgradeDate" => non_neg_integer(),
        "LaunchDate" => non_neg_integer(),
        "Lifecycle" => String.t(),
        "ReleaseStatus" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type engine_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_response() :: %{}
      
  """
  @type remove_tags_from_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_replication_table_statistics_response() :: %{
        "Marker" => String.t(),
        "ReplicationConfigArn" => String.t(),
        "ReplicationTableStatistics" => list(table_statistics()())
      }
      
  """
  @type describe_replication_table_statistics_response() :: %{String.t() => any()}

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
      
      start_metadata_model_export_as_script_message() :: %{
        optional("FileName") => String.t(),
        required("MigrationProjectIdentifier") => String.t(),
        required("Origin") => list(any()),
        required("SelectionRules") => String.t()
      }
      
  """
  @type start_metadata_model_export_as_script_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_task_assessment_results_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ReplicationTaskArn") => String.t()
      }
      
  """
  @type describe_replication_task_assessment_results_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_tasks_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("WithoutSettings") => boolean()
      }
      
  """
  @type describe_replication_tasks_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pending_maintenance_actions_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type describe_pending_maintenance_actions_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_import_response() :: %{
        "RequestIdentifier" => String.t()
      }
      
  """
  @type start_metadata_model_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_replication_task_message() :: %{
        required("ReplicationTaskArn") => String.t()
      }
      
  """
  @type stop_replication_task_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_instance_task_logs_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type describe_replication_instance_task_logs_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_migration_response() :: %{
        "DataMigration" => data_migration()
      }
      
  """
  @type delete_data_migration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_exports_to_target_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type describe_metadata_model_exports_to_target_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_subnet_group_response() :: %{}
      
  """
  @type delete_replication_subnet_group_response() :: %{}

  @typedoc """

  ## Example:
      
      s_capplication_attributes() :: %{
        "S3BucketPath" => String.t(),
        "S3BucketRoleArn" => String.t()
      }
      
  """
  @type s_capplication_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_assessment_message() :: %{
        required("MigrationProjectIdentifier") => String.t(),
        required("SelectionRules") => String.t()
      }
      
  """
  @type start_metadata_model_assessment_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      move_replication_task_message() :: %{
        required("ReplicationTaskArn") => String.t(),
        required("TargetReplicationInstanceArn") => String.t()
      }
      
  """
  @type move_replication_task_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_subnet_group_response() :: %{
        "ReplicationSubnetGroup" => replication_subnet_group()
      }
      
  """
  @type modify_replication_subnet_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_lsa_analysis_response() :: %{
        "Analysis" => list(fleet_advisor_lsa_analysis_response()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_advisor_lsa_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_schema_object_summary_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_advisor_schema_object_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_instance() :: %{
        "AllocatedStorage" => integer(),
        "AutoMinorVersionUpgrade" => boolean(),
        "AvailabilityZone" => String.t(),
        "DnsNameServers" => String.t(),
        "EngineVersion" => String.t(),
        "FreeUntil" => non_neg_integer(),
        "InstanceCreateTime" => non_neg_integer(),
        "KerberosAuthenticationSettings" => kerberos_authentication_settings(),
        "KmsKeyId" => String.t(),
        "MultiAZ" => boolean(),
        "NetworkType" => String.t(),
        "PendingModifiedValues" => replication_pending_modified_values(),
        "PreferredMaintenanceWindow" => String.t(),
        "PubliclyAccessible" => boolean(),
        "ReplicationInstanceArn" => String.t(),
        "ReplicationInstanceClass" => String.t(),
        "ReplicationInstanceIdentifier" => String.t(),
        "ReplicationInstanceIpv6Addresses" => list(String.t()()),
        "ReplicationInstancePrivateIpAddress" => String.t(),
        "ReplicationInstancePrivateIpAddresses" => list(String.t()()),
        "ReplicationInstancePublicIpAddress" => String.t(),
        "ReplicationInstancePublicIpAddresses" => list(String.t()()),
        "ReplicationInstanceStatus" => String.t(),
        "ReplicationSubnetGroup" => replication_subnet_group(),
        "SecondaryAvailabilityZone" => String.t(),
        "VpcSecurityGroups" => list(vpc_security_group_membership()())
      }
      
  """
  @type replication_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_schemas_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("EndpointArn") => String.t()
      }
      
  """
  @type describe_schemas_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_endpoint_response() :: %{
        "Endpoint" => endpoint()
      }
      
  """
  @type modify_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_subscription() :: %{
        "CustSubscriptionId" => String.t(),
        "CustomerAwsId" => String.t(),
        "Enabled" => boolean(),
        "EventCategoriesList" => list(String.t()()),
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
      
      premigration_assessment_status() :: %{
        "AssessmentProgress" => replication_task_assessment_run_progress(),
        "FailOnAssessmentFailure" => boolean(),
        "LastFailureMessage" => String.t(),
        "PremigrationAssessmentRunArn" => String.t(),
        "PremigrationAssessmentRunCreationDate" => non_neg_integer(),
        "ResultEncryptionMode" => String.t(),
        "ResultKmsKeyArn" => String.t(),
        "ResultLocationBucket" => String.t(),
        "ResultLocationFolder" => String.t(),
        "ResultStatistic" => replication_task_assessment_run_result_statistic(),
        "Status" => String.t()
      }
      
  """
  @type premigration_assessment_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_task_assessment_results_response() :: %{
        "BucketName" => String.t(),
        "Marker" => String.t(),
        "ReplicationTaskAssessmentResults" => list(replication_task_assessment_result()())
      }
      
  """
  @type describe_replication_task_assessment_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_providers_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_data_providers_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificates_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_certificates_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_settings() :: %{
        "ServiceAccessRoleArn" => String.t()
      }
      
  """
  @type dynamo_db_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ibm_db2z_os_data_provider_settings() :: %{
        "CertificateArn" => String.t(),
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type ibm_db2z_os_data_provider_settings() :: %{String.t() => any()}

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
      
      describe_migration_projects_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_migration_projects_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_conversions_response() :: %{
        "Marker" => String.t(),
        "Requests" => list(schema_conversion_request()())
      }
      
  """
  @type describe_metadata_model_conversions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_settings() :: %{
        "EndpointUri" => String.t(),
        "ErrorRetryDuration" => integer(),
        "FullLoadErrorPercentage" => integer(),
        "ServiceAccessRoleArn" => String.t(),
        "UseNewMappingType" => boolean()
      }
      
  """
  @type elasticsearch_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_response() :: %{
        "InstanceProfile" => instance_profile()
      }
      
  """
  @type create_instance_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_message() :: %{
        optional("CdcStartPosition") => String.t(),
        optional("CdcStartTime") => non_neg_integer(),
        optional("CdcStopPosition") => String.t(),
        optional("PremigrationAssessmentSettings") => String.t(),
        required("ReplicationConfigArn") => String.t(),
        required("StartReplicationType") => String.t()
      }
      
  """
  @type start_replication_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_subnet() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_response() :: %{
        "Endpoints" => list(endpoint()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_message() :: %{
        optional("ResourceArn") => String.t(),
        optional("ResourceArnList") => list(String.t()())
      }
      
  """
  @type list_tags_for_resource_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_response() :: %{
        "Collectors" => list(collector_short_info_response()()),
        "DatabaseId" => String.t(),
        "DatabaseName" => String.t(),
        "IpAddress" => String.t(),
        "NumberOfSchemas" => float(),
        "Server" => server_short_info_response(),
        "SoftwareDetails" => database_instance_software_details_response()
      }
      
  """
  @type database_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_data() :: %{
        "RdsEngine" => rds_recommendation()
      }
      
  """
  @type recommendation_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_exports_as_script_response() :: %{
        "Marker" => String.t(),
        "Requests" => list(schema_conversion_request()())
      }
      
  """
  @type describe_metadata_model_exports_as_script_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      doc_db_data_provider_settings() :: %{
        "CertificateArn" => String.t(),
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type doc_db_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_task_stats() :: %{
        "ElapsedTimeMillis" => float(),
        "FreshStartDate" => non_neg_integer(),
        "FullLoadFinishDate" => non_neg_integer(),
        "FullLoadProgressPercent" => integer(),
        "FullLoadStartDate" => non_neg_integer(),
        "StartDate" => non_neg_integer(),
        "StopDate" => non_neg_integer(),
        "TablesErrored" => integer(),
        "TablesLoaded" => integer(),
        "TablesLoading" => integer(),
        "TablesQueued" => integer()
      }
      
  """
  @type replication_task_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_short_info_response() :: %{
        "IpAddress" => String.t(),
        "ServerId" => String.t(),
        "ServerName" => String.t()
      }
      
  """
  @type server_short_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_applicable_individual_assessments_response() :: %{
        "IndividualAssessmentNames" => list(String.t()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_applicable_individual_assessments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_data_migration_message() :: %{
        required("DataMigrationIdentifier") => String.t()
      }
      
  """
  @type stop_data_migration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_certificate_response() :: %{
        "Certificate" => certificate()
      }
      
  """
  @type import_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_schemas_message() :: %{
        required("EndpointArn") => String.t(),
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type refresh_schemas_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_config_response() :: %{
        "ReplicationConfig" => replication_config()
      }
      
  """
  @type delete_replication_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      collector_health_check() :: %{
        "CollectorStatus" => list(any()),
        "LocalCollectorS3Access" => boolean(),
        "WebCollectorGrantedRoleBasedAccess" => boolean(),
        "WebCollectorS3Access" => boolean()
      }
      
  """
  @type collector_health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_profiles_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_instance_profiles_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestream_settings() :: %{
        "CdcInsertsAndUpdates" => boolean(),
        "DatabaseName" => String.t(),
        "EnableMagneticStoreWrites" => boolean(),
        "MagneticDuration" => integer(),
        "MemoryDuration" => integer()
      }
      
  """
  @type timestream_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommendations_response() :: %{
        "NextToken" => String.t(),
        "Recommendations" => list(recommendation()())
      }
      
  """
  @type describe_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_collectors_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_advisor_collectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscriptions_to_event_bridge_message() :: %{
        optional("ForceMove") => boolean()
      }
      
  """
  @type update_subscriptions_to_event_bridge_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_recommendations_request() :: %{
        required("DatabaseId") => String.t(),
        required("Settings") => recommendation_settings()
      }
      
  """
  @type start_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_migration_message() :: %{
        required("DataMigrationIdentifier") => String.t()
      }
      
  """
  @type delete_data_migration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_task_message() :: %{
        optional("CdcStartPosition") => String.t(),
        optional("CdcStartTime") => non_neg_integer(),
        optional("CdcStopPosition") => String.t(),
        optional("MigrationType") => list(any()),
        optional("ReplicationTaskIdentifier") => String.t(),
        optional("ReplicationTaskSettings") => String.t(),
        optional("TableMappings") => String.t(),
        optional("TaskData") => String.t(),
        required("ReplicationTaskArn") => String.t()
      }
      
  """
  @type modify_replication_task_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_subnet_group_does_not_cover_enough_a_zs() :: %{
        "message" => String.t()
      }
      
  """
  @type replication_subnet_group_does_not_cover_enough_a_zs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_extension_pack_associations_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type describe_extension_pack_associations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_configuration() :: %{
        "DeploymentOption" => String.t(),
        "EngineEdition" => String.t(),
        "EngineVersion" => String.t(),
        "InstanceMemory" => float(),
        "InstanceType" => String.t(),
        "InstanceVcpu" => float(),
        "StorageIops" => integer(),
        "StorageSize" => integer(),
        "StorageType" => String.t()
      }
      
  """
  @type rds_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_task() :: %{
        "CdcStartPosition" => String.t(),
        "CdcStopPosition" => String.t(),
        "LastFailureMessage" => String.t(),
        "MigrationType" => list(any()),
        "RecoveryCheckpoint" => String.t(),
        "ReplicationInstanceArn" => String.t(),
        "ReplicationTaskArn" => String.t(),
        "ReplicationTaskCreationDate" => non_neg_integer(),
        "ReplicationTaskIdentifier" => String.t(),
        "ReplicationTaskSettings" => String.t(),
        "ReplicationTaskStartDate" => non_neg_integer(),
        "ReplicationTaskStats" => replication_task_stats(),
        "SourceEndpointArn" => String.t(),
        "Status" => String.t(),
        "StopReason" => String.t(),
        "TableMappings" => String.t(),
        "TargetEndpointArn" => String.t(),
        "TargetReplicationInstanceArn" => String.t(),
        "TaskData" => String.t()
      }
      
  """
  @type replication_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_data_migration_message() :: %{
        optional("DataMigrationName") => String.t(),
        optional("DataMigrationType") => list(any()),
        optional("EnableCloudwatchLogs") => boolean(),
        optional("NumberOfJobs") => integer(),
        optional("SelectionRules") => String.t(),
        optional("ServiceAccessRoleArn") => String.t(),
        optional("SourceDataSettings") => list(source_data_setting()()),
        optional("TargetDataSettings") => list(target_data_setting()()),
        required("DataMigrationIdentifier") => String.t()
      }
      
  """
  @type modify_data_migration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_statistics() :: %{
        "AppliedDdls" => float(),
        "AppliedDeletes" => float(),
        "AppliedInserts" => float(),
        "AppliedUpdates" => float(),
        "Ddls" => float(),
        "Deletes" => float(),
        "FullLoadCondtnlChkFailedRows" => float(),
        "FullLoadEndTime" => non_neg_integer(),
        "FullLoadErrorRows" => float(),
        "FullLoadReloaded" => boolean(),
        "FullLoadRows" => float(),
        "FullLoadStartTime" => non_neg_integer(),
        "Inserts" => float(),
        "LastUpdateTime" => non_neg_integer(),
        "SchemaName" => String.t(),
        "TableName" => String.t(),
        "TableState" => String.t(),
        "Updates" => float(),
        "ValidationFailedRecords" => float(),
        "ValidationPendingRecords" => float(),
        "ValidationState" => String.t(),
        "ValidationStateDetails" => String.t(),
        "ValidationSuspendedRecords" => float()
      }
      
  """
  @type table_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mongo_db_data_provider_settings() :: %{
        "AuthMechanism" => list(any()),
        "AuthSource" => String.t(),
        "AuthType" => list(any()),
        "CertificateArn" => String.t(),
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type mongo_db_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_recommendations_request_entry() :: %{
        "DatabaseId" => String.t(),
        "Settings" => recommendation_settings()
      }
      
  """
  @type start_recommendations_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_subnet_groups_response() :: %{
        "Marker" => String.t(),
        "ReplicationSubnetGroups" => list(replication_subnet_group()())
      }
      
  """
  @type describe_replication_subnet_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_data_migration_response() :: %{
        "DataMigration" => data_migration()
      }
      
  """
  @type modify_data_migration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_response() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type delete_event_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dms_transfer_settings() :: %{
        "BucketName" => String.t(),
        "ServiceAccessRoleArn" => String.t()
      }
      
  """
  @type dms_transfer_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_settings() :: %{
        "UseTaskStartTimeForFullLoadTimestamp" => boolean(),
        "IncludeOpForFullLoad" => boolean(),
        "RowGroupLength" => integer(),
        "MaxFileSize" => integer(),
        "ServiceAccessRoleArn" => String.t(),
        "DataFormat" => list(any()),
        "CdcInsertsOnly" => boolean(),
        "ServerSideEncryptionKmsKeyId" => String.t(),
        "DatePartitionEnabled" => boolean(),
        "DatePartitionDelimiter" => list(any()),
        "EncryptionMode" => list(any()),
        "DictPageSizeLimit" => integer(),
        "IgnoreHeaderRows" => integer(),
        "CsvNoSupValue" => String.t(),
        "BucketFolder" => String.t(),
        "AddTrailingPaddingCharacter" => boolean(),
        "CdcPath" => String.t(),
        "CsvNullValue" => String.t(),
        "PreserveTransactions" => boolean(),
        "CdcInsertsAndUpdates" => boolean(),
        "AddColumnName" => boolean(),
        "Rfc4180" => boolean(),
        "CompressionType" => list(any()),
        "UseCsvNoSupValue" => boolean(),
        "ExpectedBucketOwner" => String.t(),
        "CdcMaxBatchInterval" => integer(),
        "CsvRowDelimiter" => String.t(),
        "BucketName" => String.t(),
        "EnableStatistics" => boolean(),
        "DataPageSize" => integer(),
        "CsvDelimiter" => String.t(),
        "DatePartitionSequence" => list(any()),
        "ParquetTimestampInMillisecond" => boolean(),
        "EncodingType" => list(any()),
        "GlueCatalogGeneration" => boolean(),
        "ParquetVersion" => list(any()),
        "CannedAclForObjects" => list(any()),
        "CdcMinFileSize" => integer(),
        "ExternalTableDefinition" => String.t(),
        "TimestampColumnName" => String.t(),
        "DatePartitionTimezone" => String.t()
      }
      
  """
  @type s3_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_subnet_group_message() :: %{
        optional("ReplicationSubnetGroupDescription") => String.t(),
        required("ReplicationSubnetGroupIdentifier") => String.t(),
        required("SubnetIds") => list(String.t()())
      }
      
  """
  @type modify_replication_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_conversion_request() :: %{
        "Error" => list(),
        "ExportSqlDetails" => export_sql_details(),
        "MigrationProjectArn" => String.t(),
        "RequestIdentifier" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type schema_conversion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_metadata_model_assessment_message() :: %{
        optional("AssessmentReportTypes") => list(list(any())()),
        optional("FileName") => String.t(),
        required("MigrationProjectIdentifier") => String.t(),
        required("SelectionRules") => String.t()
      }
      
  """
  @type export_metadata_model_assessment_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connections_response() :: %{
        "Connections" => list(connection()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_config_response() :: %{
        "ReplicationConfig" => replication_config()
      }
      
  """
  @type modify_replication_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_message() :: %{}
      
  """
  @type describe_account_attributes_message() :: %{}

  @typedoc """

  ## Example:
      
      describe_metadata_model_assessments_response() :: %{
        "Marker" => String.t(),
        "Requests" => list(schema_conversion_request()())
      }
      
  """
  @type describe_metadata_model_assessments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_instances_response() :: %{
        "Marker" => String.t(),
        "ReplicationInstances" => list(replication_instance()())
      }
      
  """
  @type describe_replication_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_access_denied_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_access_denied_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_task_message() :: %{
        optional("CdcStartPosition") => String.t(),
        optional("CdcStartTime") => non_neg_integer(),
        optional("CdcStopPosition") => String.t(),
        optional("ReplicationTaskSettings") => String.t(),
        optional("ResourceIdentifier") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TaskData") => String.t(),
        required("MigrationType") => list(any()),
        required("ReplicationInstanceArn") => String.t(),
        required("ReplicationTaskIdentifier") => String.t(),
        required("SourceEndpointArn") => String.t(),
        required("TableMappings") => String.t(),
        required("TargetEndpointArn") => String.t()
      }
      
  """
  @type create_replication_task_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_dependency_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type failed_dependency_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ibm_db2_luw_data_provider_settings() :: %{
        "CertificateArn" => String.t(),
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type ibm_db2_luw_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_replication_task_response() :: %{
        "ReplicationTask" => replication_task()
      }
      
  """
  @type stop_replication_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_migration_statistics() :: %{
        "CDCLatency" => integer(),
        "ElapsedTimeMillis" => float(),
        "FullLoadPercentage" => integer(),
        "StartTime" => non_neg_integer(),
        "StopTime" => non_neg_integer(),
        "TablesErrored" => integer(),
        "TablesLoaded" => integer(),
        "TablesLoading" => integer(),
        "TablesQueued" => integer()
      }
      
  """
  @type data_migration_statistics() :: %{String.t() => any()}

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
      
      delete_instance_profile_message() :: %{
        required("InstanceProfileIdentifier") => String.t()
      }
      
  """
  @type delete_instance_profile_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_configs_response() :: %{
        "Marker" => String.t(),
        "ReplicationConfigs" => list(replication_config()())
      }
      
  """
  @type describe_replication_configs_response() :: %{String.t() => any()}

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
      
      describe_schemas_response() :: %{
        "Marker" => String.t(),
        "Schemas" => list(String.t()())
      }
      
  """
  @type describe_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_task_assessment_run_progress() :: %{
        "IndividualAssessmentCompletedCount" => integer(),
        "IndividualAssessmentCount" => integer()
      }
      
  """
  @type replication_task_assessment_run_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_task_individual_assessment() :: %{
        "IndividualAssessmentName" => String.t(),
        "ReplicationTaskAssessmentRunArn" => String.t(),
        "ReplicationTaskIndividualAssessmentArn" => String.t(),
        "ReplicationTaskIndividualAssessmentStartDate" => non_neg_integer(),
        "Status" => String.t()
      }
      
  """
  @type replication_task_individual_assessment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_providers_response() :: %{
        "DataProviders" => list(data_provider()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_data_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_provider_message() :: %{
        optional("DataProviderName") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Engine") => String.t(),
        required("Settings") => list()
      }
      
  """
  @type create_data_provider_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reload_tables_response() :: %{
        "ReplicationTaskArn" => String.t()
      }
      
  """
  @type reload_tables_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      microsoft_sql_server_data_provider_settings() :: %{
        "CertificateArn" => String.t(),
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type microsoft_sql_server_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication() :: %{
        "CdcStartPosition" => String.t(),
        "CdcStartTime" => non_neg_integer(),
        "CdcStopPosition" => String.t(),
        "FailureMessages" => list(String.t()()),
        "PremigrationAssessmentStatuses" => list(premigration_assessment_status()()),
        "ProvisionData" => provision_data(),
        "RecoveryCheckpoint" => String.t(),
        "ReplicationConfigArn" => String.t(),
        "ReplicationConfigIdentifier" => String.t(),
        "ReplicationCreateTime" => non_neg_integer(),
        "ReplicationDeprovisionTime" => non_neg_integer(),
        "ReplicationLastStopTime" => non_neg_integer(),
        "ReplicationStats" => replication_stats(),
        "ReplicationType" => list(any()),
        "ReplicationUpdateTime" => non_neg_integer(),
        "SourceEndpointArn" => String.t(),
        "StartReplicationType" => String.t(),
        "Status" => String.t(),
        "StopReason" => String.t(),
        "TargetEndpointArn" => String.t()
      }
      
  """
  @type replication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommendations_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_lsa_analysis_request() :: %{
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_advisor_lsa_analysis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_subscription_response() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type create_event_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_settings() :: %{
        "InstanceSizingType" => String.t(),
        "WorkloadType" => String.t()
      }
      
  """
  @type recommendation_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      i_b_m_db2_settings() :: %{
        "CurrentLsn" => String.t(),
        "DatabaseName" => String.t(),
        "KeepCsvFiles" => boolean(),
        "LoadTimeout" => integer(),
        "MaxFileSize" => integer(),
        "MaxKBytesPerRead" => integer(),
        "Password" => String.t(),
        "Port" => integer(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "SetDataCaptureChanges" => boolean(),
        "Username" => String.t(),
        "WriteBufferSize" => integer()
      }
      
  """
  @type i_b_m_db2_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "ResourceArn" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_message() :: %{
        required("EndpointArn") => String.t()
      }
      
  """
  @type delete_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_task_assessment_runs_response() :: %{
        "Marker" => String.t(),
        "ReplicationTaskAssessmentRuns" => list(replication_task_assessment_run()())
      }
      
  """
  @type describe_replication_task_assessment_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_response() :: %{
        "Endpoint" => endpoint()
      }
      
  """
  @type delete_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_schemas_response() :: %{
        "FleetAdvisorSchemas" => list(schema_response()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_advisor_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_data_provider_message() :: %{
        optional("DataProviderName") => String.t(),
        optional("Description") => String.t(),
        optional("Engine") => String.t(),
        optional("ExactSettings") => boolean(),
        optional("Settings") => list(),
        required("DataProviderIdentifier") => String.t()
      }
      
  """
  @type modify_data_provider_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_config_message() :: %{
        required("ReplicationConfigArn") => String.t()
      }
      
  """
  @type delete_replication_config_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_config_message() :: %{
        optional("ReplicationSettings") => String.t(),
        optional("ResourceIdentifier") => String.t(),
        optional("SupplementalSettings") => String.t(),
        optional("Tags") => list(tag()()),
        required("ComputeConfig") => compute_config(),
        required("ReplicationConfigIdentifier") => String.t(),
        required("ReplicationType") => list(any()),
        required("SourceEndpointArn") => String.t(),
        required("TableMappings") => String.t(),
        required("TargetEndpointArn") => String.t()
      }
      
  """
  @type create_replication_config_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_data_migration_response() :: %{
        "DataMigration" => data_migration()
      }
      
  """
  @type start_data_migration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "EndpointArn" => String.t(),
        "EndpointIdentifier" => String.t(),
        "LastFailureMessage" => String.t(),
        "ReplicationInstanceArn" => String.t(),
        "ReplicationInstanceIdentifier" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_category_group() :: %{
        "EventCategories" => list(String.t()()),
        "SourceType" => String.t()
      }
      
  """
  @type event_category_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_replication_instance_response() :: %{
        "ReplicationInstance" => replication_instance()
      }
      
  """
  @type reboot_replication_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_settings_response() :: %{
        "EndpointSettings" => list(endpoint_setting()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_endpoint_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_replication_instance_message() :: %{
        optional("ForceFailover") => boolean(),
        optional("ForcePlannedFailover") => boolean(),
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type reboot_replication_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_task_assessment_run_response() :: %{
        "ReplicationTaskAssessmentRun" => replication_task_assessment_run()
      }
      
  """
  @type delete_replication_task_assessment_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_pending_maintenance_actions_response() :: %{
        "Marker" => String.t(),
        "PendingMaintenanceActions" => list(resource_pending_maintenance_actions()())
      }
      
  """
  @type describe_pending_maintenance_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_data_setting() :: %{
        "TablePreparationMode" => list(any())
      }
      
  """
  @type target_data_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation() :: %{
        "CreatedDate" => String.t(),
        "Data" => recommendation_data(),
        "DatabaseId" => String.t(),
        "EngineName" => String.t(),
        "Preferred" => boolean(),
        "Settings" => recommendation_settings(),
        "Status" => String.t()
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_to_reload() :: %{
        "SchemaName" => String.t(),
        "TableName" => String.t()
      }
      
  """
  @type table_to_reload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_types_response() :: %{
        "Marker" => String.t(),
        "SupportedEndpointTypes" => list(supported_endpoint_type()())
      }
      
  """
  @type describe_endpoint_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      neptune_settings() :: %{
        "ErrorRetryDuration" => integer(),
        "IamAuthEnabled" => boolean(),
        "MaxFileSize" => integer(),
        "MaxRetryCount" => integer(),
        "S3BucketFolder" => String.t(),
        "S3BucketName" => String.t(),
        "ServiceAccessRoleArn" => String.t()
      }
      
  """
  @type neptune_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_applicable_individual_assessments_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("MigrationType") => list(any()),
        optional("ReplicationConfigArn") => String.t(),
        optional("ReplicationInstanceArn") => String.t(),
        optional("ReplicationTaskArn") => String.t(),
        optional("SourceEngineName") => String.t(),
        optional("TargetEngineName") => String.t()
      }
      
  """
  @type describe_applicable_individual_assessments_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_metadata_model_assessment_response() :: %{
        "CsvReport" => export_metadata_model_assessment_result_entry(),
        "PdfReport" => export_metadata_model_assessment_result_entry()
      }
      
  """
  @type export_metadata_model_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_table_statistics_response() :: %{
        "Marker" => String.t(),
        "ReplicationTaskArn" => String.t(),
        "TableStatistics" => list(table_statistics()())
      }
      
  """
  @type describe_table_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_advisor_collector_response() :: %{
        "CollectorName" => String.t(),
        "CollectorReferencedId" => String.t(),
        "Description" => String.t(),
        "S3BucketName" => String.t(),
        "ServiceAccessRoleArn" => String.t()
      }
      
  """
  @type create_fleet_advisor_collector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_data_provider_response() :: %{
        "DataProvider" => data_provider()
      }
      
  """
  @type modify_data_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_requirements() :: %{
        "DeploymentOption" => String.t(),
        "EngineEdition" => String.t(),
        "EngineVersion" => String.t(),
        "InstanceMemory" => float(),
        "InstanceVcpu" => float(),
        "StorageIops" => integer(),
        "StorageSize" => integer()
      }
      
  """
  @type rds_requirements() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_certificate_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_certificate_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_conversion_response() :: %{
        "RequestIdentifier" => String.t()
      }
      
  """
  @type start_metadata_model_conversion_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_extension_pack_associations_response() :: %{
        "Marker" => String.t(),
        "Requests" => list(schema_conversion_request()())
      }
      
  """
  @type describe_extension_pack_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kerberos_authentication_settings() :: %{
        "KeyCacheSecretIamArn" => String.t(),
        "KeyCacheSecretId" => String.t(),
        "Krb5FileContents" => String.t()
      }
      
  """
  @type kerberos_authentication_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      move_replication_task_response() :: %{
        "ReplicationTask" => replication_task()
      }
      
  """
  @type move_replication_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_collector_request() :: %{
        required("CollectorReferencedId") => String.t()
      }
      
  """
  @type delete_collector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_data_setting() :: %{
        "CDCStartPosition" => String.t(),
        "CDCStartTime" => non_neg_integer(),
        "CDCStopTime" => non_neg_integer(),
        "SlotName" => String.t()
      }
      
  """
  @type source_data_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "TagList" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redis_settings() :: %{
        "AuthPassword" => String.t(),
        "AuthType" => list(any()),
        "AuthUserName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslCaCertificateArn" => String.t(),
        "SslSecurityProtocol" => list(any())
      }
      
  """
  @type redis_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_instances_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_replication_instances_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      orderable_replication_instance() :: %{
        "AvailabilityZones" => list(String.t()()),
        "DefaultAllocatedStorage" => integer(),
        "EngineVersion" => String.t(),
        "IncludedAllocatedStorage" => integer(),
        "MaxAllocatedStorage" => integer(),
        "MinAllocatedStorage" => integer(),
        "ReleaseStatus" => list(any()),
        "ReplicationInstanceClass" => String.t(),
        "StorageType" => String.t()
      }
      
  """
  @type orderable_replication_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_account_attributes_response() :: %{
        "AccountQuotas" => list(account_quota()()),
        "UniqueAccountIdentifier" => String.t()
      }
      
  """
  @type describe_account_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_message() :: %{
        required("EndpointArn") => String.t(),
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type delete_connection_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_schema_object_summary_response() :: %{
        "FleetAdvisorSchemaObjects" => list(fleet_advisor_schema_object_response()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_advisor_schema_object_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_task_response() :: %{
        "ReplicationTask" => replication_task()
      }
      
  """
  @type start_replication_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_message() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("Description") => String.t(),
        optional("InstanceProfileName") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("NetworkType") => String.t(),
        optional("PubliclyAccessible") => boolean(),
        optional("SubnetGroupIdentifier") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VpcSecurityGroups") => list(String.t()())
      }
      
  """
  @type create_instance_profile_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_assessments_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type describe_metadata_model_assessments_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_refresh_schemas_status_message() :: %{
        required("EndpointArn") => String.t()
      }
      
  """
  @type describe_refresh_schemas_status_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_instance_task_log() :: %{
        "ReplicationInstanceTaskLogSize" => float(),
        "ReplicationTaskArn" => String.t(),
        "ReplicationTaskName" => String.t()
      }
      
  """
  @type replication_instance_task_log() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_resource_capacity_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type insufficient_resource_capacity_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_exports_as_script_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type describe_metadata_model_exports_as_script_message() :: %{String.t() => any()}

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
      
      delete_replication_subnet_group_message() :: %{
        required("ReplicationSubnetGroupIdentifier") => String.t()
      }
      
  """
  @type delete_replication_subnet_group_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_response() :: %{}
      
  """
  @type add_tags_to_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      doc_db_settings() :: %{
        "DatabaseName" => String.t(),
        "DocsToInvestigate" => integer(),
        "ExtractDocId" => boolean(),
        "KmsKeyId" => String.t(),
        "NestingLevel" => list(any()),
        "Password" => String.t(),
        "Port" => integer(),
        "ReplicateShardCollections" => boolean(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "UseUpdateLookUp" => boolean(),
        "Username" => String.t()
      }
      
  """
  @type doc_db_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_endpoint_message() :: %{
        required("EndpointArn") => String.t(),
        optional("PostgreSQLSettings") => postgre_s_q_l_settings(),
        optional("ExternalTableDefinition") => String.t(),
        optional("MicrosoftSQLServerSettings") => microsoft_s_q_l_server_settings(),
        optional("DatabaseName") => String.t(),
        optional("ExtraConnectionAttributes") => String.t(),
        optional("TimestreamSettings") => timestream_settings(),
        optional("MongoDbSettings") => mongo_db_settings(),
        optional("OracleSettings") => oracle_settings(),
        optional("ElasticsearchSettings") => elasticsearch_settings(),
        optional("DynamoDbSettings") => dynamo_db_settings(),
        optional("ExactSettings") => boolean(),
        optional("Username") => String.t(),
        optional("EngineName") => String.t(),
        optional("IBMDb2Settings") => i_b_m_db2_settings(),
        optional("ServerName") => String.t(),
        optional("CertificateArn") => String.t(),
        optional("DocDbSettings") => doc_db_settings(),
        optional("NeptuneSettings") => neptune_settings(),
        optional("Password") => String.t(),
        optional("DmsTransferSettings") => dms_transfer_settings(),
        optional("S3Settings") => s3_settings(),
        optional("SybaseSettings") => sybase_settings(),
        optional("KafkaSettings") => kafka_settings(),
        optional("SslMode") => list(any()),
        optional("EndpointType") => list(any()),
        optional("GcpMySQLSettings") => gcp_my_s_q_l_settings(),
        optional("ServiceAccessRoleArn") => String.t(),
        optional("MySQLSettings") => my_s_q_l_settings(),
        optional("Port") => integer(),
        optional("RedisSettings") => redis_settings(),
        optional("KinesisSettings") => kinesis_settings(),
        optional("EndpointIdentifier") => String.t(),
        optional("RedshiftSettings") => redshift_settings()
      }
      
  """
  @type modify_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connections_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_connections_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_access_denied_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s3_access_denied_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type storage_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_event_subscription_response() :: %{
        "EventSubscription" => event_subscription()
      }
      
  """
  @type modify_event_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_task_individual_assessments_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_replication_task_individual_assessments_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_migration() :: %{
        "DataMigrationArn" => String.t(),
        "DataMigrationCidrBlocks" => list(String.t()()),
        "DataMigrationCreateTime" => non_neg_integer(),
        "DataMigrationEndTime" => non_neg_integer(),
        "DataMigrationName" => String.t(),
        "DataMigrationSettings" => data_migration_settings(),
        "DataMigrationStartTime" => non_neg_integer(),
        "DataMigrationStatistics" => data_migration_statistics(),
        "DataMigrationStatus" => String.t(),
        "DataMigrationType" => list(any()),
        "LastFailureMessage" => String.t(),
        "MigrationProjectArn" => String.t(),
        "PublicIpAddresses" => list(String.t()()),
        "ServiceAccessRoleArn" => String.t(),
        "SourceDataSettings" => list(source_data_setting()()),
        "StopReason" => String.t(),
        "TargetDataSettings" => list(target_data_setting()())
      }
      
  """
  @type data_migration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_data_migration_response() :: %{
        "DataMigration" => data_migration()
      }
      
  """
  @type stop_data_migration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_data_provider_settings() :: %{
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t()
      }
      
  """
  @type redshift_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Status" => String.t(),
        "ServiceAccessRoleArn" => String.t(),
        "RedshiftSettings" => redshift_settings(),
        "MicrosoftSQLServerSettings" => microsoft_s_q_l_server_settings(),
        "DynamoDbSettings" => dynamo_db_settings(),
        "DatabaseName" => String.t(),
        "DmsTransferSettings" => dms_transfer_settings(),
        "EndpointArn" => String.t(),
        "MongoDbSettings" => mongo_db_settings(),
        "DocDbSettings" => doc_db_settings(),
        "GcpMySQLSettings" => gcp_my_s_q_l_settings(),
        "CertificateArn" => String.t(),
        "KmsKeyId" => String.t(),
        "OracleSettings" => oracle_settings(),
        "ExtraConnectionAttributes" => String.t(),
        "ElasticsearchSettings" => elasticsearch_settings(),
        "IBMDb2Settings" => i_b_m_db2_settings(),
        "SybaseSettings" => sybase_settings(),
        "Port" => integer(),
        "ExternalId" => String.t(),
        "EngineName" => String.t(),
        "RedisSettings" => redis_settings(),
        "EndpointIdentifier" => String.t(),
        "TimestreamSettings" => timestream_settings(),
        "EndpointType" => list(any()),
        "MySQLSettings" => my_s_q_l_settings(),
        "EngineDisplayName" => String.t(),
        "Username" => String.t(),
        "ExternalTableDefinition" => String.t(),
        "KafkaSettings" => kafka_settings(),
        "PostgreSQLSettings" => postgre_s_q_l_settings(),
        "S3Settings" => s3_settings(),
        "SslMode" => list(any()),
        "KinesisSettings" => kinesis_settings(),
        "ServerName" => String.t(),
        "NeptuneSettings" => neptune_settings()
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_task_individual_assessments_response() :: %{
        "Marker" => String.t(),
        "ReplicationTaskIndividualAssessments" => list(replication_task_individual_assessment()())
      }
      
  """
  @type describe_replication_task_individual_assessments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_certificate_message() :: %{
        required("CertificateArn") => String.t()
      }
      
  """
  @type delete_certificate_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_migration_response() :: %{
        "DataMigration" => data_migration()
      }
      
  """
  @type create_data_migration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_export_to_target_message() :: %{
        optional("OverwriteExtensionPack") => boolean(),
        required("MigrationProjectIdentifier") => String.t(),
        required("SelectionRules") => String.t()
      }
      
  """
  @type start_metadata_model_export_to_target_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_instance_response() :: %{
        "ReplicationInstance" => replication_instance()
      }
      
  """
  @type create_replication_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_subscription_message() :: %{
        required("SubscriptionName") => String.t()
      }
      
  """
  @type delete_event_subscription_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_task_assessment_result() :: %{
        "AssessmentResults" => String.t(),
        "AssessmentResultsFile" => String.t(),
        "AssessmentStatus" => String.t(),
        "ReplicationTaskArn" => String.t(),
        "ReplicationTaskIdentifier" => String.t(),
        "ReplicationTaskLastAssessmentDate" => non_neg_integer(),
        "S3ObjectUrl" => String.t()
      }
      
  """
  @type replication_task_assessment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_connection_response() :: %{
        "Connection" => connection()
      }
      
  """
  @type test_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_task_assessment_run_result_statistic() :: %{
        "Cancelled" => integer(),
        "Error" => integer(),
        "Failed" => integer(),
        "Passed" => integer(),
        "Warning" => integer()
      }
      
  """
  @type replication_task_assessment_run_result_statistic() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_instance_message() :: %{
        optional("AllocatedStorage") => integer(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("AvailabilityZone") => String.t(),
        optional("DnsNameServers") => String.t(),
        optional("EngineVersion") => String.t(),
        optional("KerberosAuthenticationSettings") => kerberos_authentication_settings(),
        optional("KmsKeyId") => String.t(),
        optional("MultiAZ") => boolean(),
        optional("NetworkType") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("PubliclyAccessible") => boolean(),
        optional("ReplicationSubnetGroupIdentifier") => String.t(),
        optional("ResourceIdentifier") => String.t(),
        optional("Tags") => list(tag()()),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("ReplicationInstanceClass") => String.t(),
        required("ReplicationInstanceIdentifier") => String.t()
      }
      
  """
  @type create_replication_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_task_assessment_run_response() :: %{
        "ReplicationTaskAssessmentRun" => replication_task_assessment_run()
      }
      
  """
  @type start_replication_task_assessment_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      my_s_q_l_settings() :: %{
        "AfterConnectScript" => String.t(),
        "CleanSourceMetadataOnMismatch" => boolean(),
        "DatabaseName" => String.t(),
        "EventsPollInterval" => integer(),
        "ExecuteTimeout" => integer(),
        "MaxFileSize" => integer(),
        "ParallelLoadThreads" => integer(),
        "Password" => String.t(),
        "Port" => integer(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "ServerTimezone" => String.t(),
        "TargetDbType" => list(any()),
        "Username" => String.t()
      }
      
  """
  @type my_s_q_l_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate() :: %{
        "CertificateArn" => String.t(),
        "CertificateCreationDate" => non_neg_integer(),
        "CertificateIdentifier" => String.t(),
        "CertificateOwner" => String.t(),
        "CertificatePem" => String.t(),
        "CertificateWallet" => binary(),
        "KeyLength" => integer(),
        "SigningAlgorithm" => String.t(),
        "ValidFromDate" => non_neg_integer(),
        "ValidToDate" => non_neg_integer()
      }
      
  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_replication_message() :: %{
        required("ReplicationConfigArn") => String.t()
      }
      
  """
  @type stop_replication_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_key_not_accessible_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_key_not_accessible_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_invalid_topic_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_invalid_topic_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_table_statistics_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("ReplicationConfigArn") => String.t()
      }
      
  """
  @type describe_replication_table_statistics_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_subscriptions_response() :: %{
        "EventSubscriptionsList" => list(event_subscription()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_event_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replications_response() :: %{
        "Marker" => String.t(),
        "Replications" => list(replication()())
      }
      
  """
  @type describe_replications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Date" => non_neg_integer(),
        "EventCategories" => list(String.t()()),
        "Message" => String.t(),
        "SourceIdentifier" => String.t(),
        "SourceType" => list(any())
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      collector_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type collector_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_connection_message() :: %{
        required("EndpointArn") => String.t(),
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type test_connection_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_fault() :: %{
        "message" => String.t(),
        "resourceArn" => String.t()
      }
      
  """
  @type resource_already_exists_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_assessment_response() :: %{
        "RequestIdentifier" => String.t()
      }
      
  """
  @type start_metadata_model_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_advisor_databases_response() :: %{
        "DatabaseIds" => list(String.t()())
      }
      
  """
  @type delete_fleet_advisor_databases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommendation_limitations_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_recommendation_limitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_migrations_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        optional("WithoutSettings") => boolean(),
        optional("WithoutStatistics") => boolean()
      }
      
  """
  @type describe_data_migrations_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_migration_settings() :: %{
        "CloudwatchLogsEnabled" => boolean(),
        "NumberOfJobs" => integer(),
        "SelectionRules" => String.t()
      }
      
  """
  @type data_migration_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mongo_db_settings() :: %{
        "AuthMechanism" => list(any()),
        "AuthSource" => String.t(),
        "AuthType" => list(any()),
        "DatabaseName" => String.t(),
        "DocsToInvestigate" => String.t(),
        "ExtractDocId" => String.t(),
        "KmsKeyId" => String.t(),
        "NestingLevel" => list(any()),
        "Password" => String.t(),
        "Port" => integer(),
        "ReplicateShardCollections" => boolean(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "UseUpdateLookUp" => boolean(),
        "Username" => String.t()
      }
      
  """
  @type mongo_db_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_replication_task_assessment_run_message() :: %{
        required("ReplicationTaskAssessmentRunArn") => String.t()
      }
      
  """
  @type cancel_replication_task_assessment_run_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_export_as_script_response() :: %{
        "RequestIdentifier" => String.t()
      }
      
  """
  @type start_metadata_model_export_as_script_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_config() :: %{
        "AvailabilityZone" => String.t(),
        "DnsNameServers" => String.t(),
        "KmsKeyId" => String.t(),
        "MaxCapacityUnits" => integer(),
        "MinCapacityUnits" => integer(),
        "MultiAZ" => boolean(),
        "PreferredMaintenanceWindow" => String.t(),
        "ReplicationSubnetGroupId" => String.t(),
        "VpcSecurityGroupIds" => list(String.t()())
      }
      
  """
  @type compute_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_message() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_to_resource_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oracle_settings() :: %{
        "AsmUser" => String.t(),
        "SecurityDbEncryptionName" => String.t(),
        "AllowSelectNestedTables" => boolean(),
        "AdditionalArchivedLogDestId" => integer(),
        "AsmServer" => String.t(),
        "ReplacePathPrefix" => boolean(),
        "UseAlternateFolderForOnline" => boolean(),
        "OpenTransactionWindow" => integer(),
        "AsmPassword" => String.t(),
        "DatabaseName" => String.t(),
        "UsePathPrefix" => String.t(),
        "NumberDatatypeScale" => integer(),
        "StandbyDelayTime" => integer(),
        "SecretsManagerOracleAsmSecretId" => String.t(),
        "SpatialDataOptionToGeoJsonFunctionName" => String.t(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "AuthenticationMethod" => list(any()),
        "ArchivedLogsOnly" => boolean(),
        "ReadTableSpaceName" => boolean(),
        "ArchivedLogDestId" => integer(),
        "UseBFile" => boolean(),
        "UseDirectPathFullLoad" => boolean(),
        "ConvertTimestampWithZoneToUTC" => boolean(),
        "Port" => integer(),
        "RetryInterval" => integer(),
        "FailTasksOnLobTruncation" => boolean(),
        "SecretsManagerOracleAsmAccessRoleArn" => String.t(),
        "OraclePathPrefix" => String.t(),
        "UseLogminerReader" => boolean(),
        "Password" => String.t(),
        "AddSupplementalLogging" => boolean(),
        "ExtraArchivedLogDestIds" => list(integer()()),
        "EnableHomogenousTablespace" => boolean(),
        "SecurityDbEncryption" => String.t(),
        "AccessAlternateDirectly" => boolean(),
        "DirectPathNoLog" => boolean(),
        "Username" => String.t(),
        "DirectPathParallelLoad" => boolean(),
        "CharLengthSemantics" => list(any()),
        "SecretsManagerSecretId" => String.t(),
        "TrimSpaceInChar" => boolean(),
        "ParallelAsmReadThreads" => integer(),
        "ReadAheadBlocks" => integer(),
        "ServerName" => String.t()
      }
      
  """
  @type oracle_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_conversion_configuration_response() :: %{
        "MigrationProjectIdentifier" => String.t()
      }
      
  """
  @type modify_conversion_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_replication_response() :: %{
        "Replication" => replication()
      }
      
  """
  @type stop_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_response() :: %{
        "Replication" => replication()
      }
      
  """
  @type start_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kafka_settings() :: %{
        "Broker" => String.t(),
        "IncludeControlDetails" => boolean(),
        "IncludeNullAndEmpty" => boolean(),
        "IncludePartitionValue" => boolean(),
        "IncludeTableAlterOperations" => boolean(),
        "IncludeTransactionDetails" => boolean(),
        "MessageFormat" => list(any()),
        "MessageMaxBytes" => integer(),
        "NoHexPrefix" => boolean(),
        "PartitionIncludeSchemaTable" => boolean(),
        "SaslMechanism" => list(any()),
        "SaslPassword" => String.t(),
        "SaslUsername" => String.t(),
        "SecurityProtocol" => list(any()),
        "SslCaCertificateArn" => String.t(),
        "SslClientCertificateArn" => String.t(),
        "SslClientKeyArn" => String.t(),
        "SslClientKeyPassword" => String.t(),
        "SslEndpointIdentificationAlgorithm" => list(any()),
        "Topic" => String.t(),
        "UseLargeIntegerValue" => boolean()
      }
      
  """
  @type kafka_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_imports_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type describe_metadata_model_imports_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gcp_my_s_q_l_settings() :: %{
        "AfterConnectScript" => String.t(),
        "CleanSourceMetadataOnMismatch" => boolean(),
        "DatabaseName" => String.t(),
        "EventsPollInterval" => integer(),
        "MaxFileSize" => integer(),
        "ParallelLoadThreads" => integer(),
        "Password" => String.t(),
        "Port" => integer(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "ServerTimezone" => String.t(),
        "TargetDbType" => list(any()),
        "Username" => String.t()
      }
      
  """
  @type gcp_my_s_q_l_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conversion_configuration_response() :: %{
        "ConversionConfiguration" => String.t(),
        "MigrationProjectIdentifier" => String.t()
      }
      
  """
  @type describe_conversion_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_orderable_replication_instances_response() :: %{
        "Marker" => String.t(),
        "OrderableReplicationInstances" => list(orderable_replication_instance()())
      }
      
  """
  @type describe_orderable_replication_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limitation() :: %{
        "DatabaseId" => String.t(),
        "Description" => String.t(),
        "EngineName" => String.t(),
        "Impact" => String.t(),
        "Name" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type limitation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_instance_message() :: %{
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type delete_replication_instance_message() :: %{String.t() => any()}

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
      
      describe_endpoint_types_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_endpoint_types_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_migration_project_message() :: %{
        optional("Description") => String.t(),
        optional("InstanceProfileIdentifier") => String.t(),
        optional("MigrationProjectName") => String.t(),
        optional("SchemaConversionApplicationAttributes") => s_capplication_attributes(),
        optional("SourceDataProviderDescriptors") => list(data_provider_descriptor_definition()()),
        optional("TargetDataProviderDescriptors") => list(data_provider_descriptor_definition()()),
        optional("TransformationRules") => String.t(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type modify_migration_project_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_task_response() :: %{
        "ReplicationTask" => replication_task()
      }
      
  """
  @type create_replication_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_export_to_target_response() :: %{
        "RequestIdentifier" => String.t()
      }
      
  """
  @type start_metadata_model_export_to_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_instance_software_details_response() :: %{
        "Engine" => String.t(),
        "EngineEdition" => String.t(),
        "EngineVersion" => String.t(),
        "OsArchitecture" => integer(),
        "ServicePack" => String.t(),
        "SupportLevel" => String.t(),
        "Tooltip" => String.t()
      }
      
  """
  @type database_instance_software_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_instance_response() :: %{
        "ReplicationInstance" => replication_instance()
      }
      
  """
  @type modify_replication_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instance_profiles_response() :: %{
        "InstanceProfiles" => list(instance_profile()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_instance_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_response() :: %{
        "Connection" => connection()
      }
      
  """
  @type delete_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maria_db_data_provider_settings() :: %{
        "CertificateArn" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type maria_db_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_migration_message() :: %{
        optional("DataMigrationName") => String.t(),
        optional("EnableCloudwatchLogs") => boolean(),
        optional("NumberOfJobs") => integer(),
        optional("SelectionRules") => String.t(),
        optional("SourceDataSettings") => list(source_data_setting()()),
        optional("Tags") => list(tag()()),
        optional("TargetDataSettings") => list(target_data_setting()()),
        required("DataMigrationType") => list(any()),
        required("MigrationProjectIdentifier") => String.t(),
        required("ServiceAccessRoleArn") => String.t()
      }
      
  """
  @type create_data_migration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_subnet_group() :: %{
        "ReplicationSubnetGroupDescription" => String.t(),
        "ReplicationSubnetGroupIdentifier" => String.t(),
        "SubnetGroupStatus" => String.t(),
        "Subnets" => list(subnet()()),
        "SupportedNetworkTypes" => list(String.t()()),
        "VpcId" => String.t()
      }
      
  """
  @type replication_subnet_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_task_assessment_response() :: %{
        "ReplicationTask" => replication_task()
      }
      
  """
  @type start_replication_task_assessment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_migration_project_response() :: %{
        "MigrationProject" => migration_project()
      }
      
  """
  @type create_migration_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provision_data() :: %{
        "DateNewProvisioningDataAvailable" => non_neg_integer(),
        "DateProvisioned" => non_neg_integer(),
        "IsNewProvisioningAvailable" => boolean(),
        "ProvisionState" => String.t(),
        "ProvisionedCapacityUnits" => integer(),
        "ReasonForNewProvisioningData" => String.t()
      }
      
  """
  @type provision_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_task_assessment_run_message() :: %{
        optional("Exclude") => list(String.t()()),
        optional("IncludeOnly") => list(String.t()()),
        optional("ResultEncryptionMode") => String.t(),
        optional("ResultKmsKeyArn") => String.t(),
        optional("ResultLocationFolder") => String.t(),
        optional("Tags") => list(tag()()),
        required("AssessmentRunName") => String.t(),
        required("ReplicationTaskArn") => String.t(),
        required("ResultLocationBucket") => String.t(),
        required("ServiceAccessRoleArn") => String.t()
      }
      
  """
  @type start_replication_task_assessment_run_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_start_recommendations_error_entry() :: %{
        "Code" => String.t(),
        "DatabaseId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type batch_start_recommendations_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run_fleet_advisor_lsa_analysis_response() :: %{
        "LsaAnalysisId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type run_fleet_advisor_lsa_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_replication_config_response() :: %{
        "ReplicationConfig" => replication_config()
      }
      
  """
  @type create_replication_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_operation_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_data_migrations_response() :: %{
        "DataMigrations" => list(data_migration()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_data_migrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_tasks_response() :: %{
        "Marker" => String.t(),
        "ReplicationTasks" => list(replication_task()())
      }
      
  """
  @type describe_replication_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_schemas_response() :: %{
        "RefreshSchemasStatus" => refresh_schemas_status()
      }
      
  """
  @type refresh_schemas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_extension_pack_association_message() :: %{
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type start_extension_pack_association_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_task_message() :: %{
        required("ReplicationTaskArn") => String.t()
      }
      
  """
  @type delete_replication_task_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_config_message() :: %{
        optional("ComputeConfig") => compute_config(),
        optional("ReplicationConfigIdentifier") => String.t(),
        optional("ReplicationSettings") => String.t(),
        optional("ReplicationType") => list(any()),
        optional("SourceEndpointArn") => String.t(),
        optional("SupplementalSettings") => String.t(),
        optional("TableMappings") => String.t(),
        optional("TargetEndpointArn") => String.t(),
        required("ReplicationConfigArn") => String.t()
      }
      
  """
  @type modify_replication_config_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_response() :: %{
        "CodeLineCount" => float(),
        "CodeSize" => float(),
        "Complexity" => String.t(),
        "DatabaseInstance" => database_short_info_response(),
        "OriginalSchema" => schema_short_info_response(),
        "SchemaId" => String.t(),
        "SchemaName" => String.t(),
        "Server" => server_short_info_response(),
        "Similarity" => float()
      }
      
  """
  @type schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_task_response() :: %{
        "ReplicationTask" => replication_task()
      }
      
  """
  @type modify_replication_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_conversion_configuration_message() :: %{
        required("ConversionConfiguration") => String.t(),
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type modify_conversion_configuration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_certificate_message() :: %{
        optional("CertificatePem") => String.t(),
        optional("CertificateWallet") => binary(),
        optional("Tags") => list(tag()()),
        required("CertificateIdentifier") => String.t()
      }
      
  """
  @type import_certificate_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      postgre_sql_data_provider_settings() :: %{
        "CertificateArn" => String.t(),
        "DatabaseName" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type postgre_sql_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_data_migration_message() :: %{
        required("DataMigrationIdentifier") => String.t(),
        required("StartType") => list(any())
      }
      
  """
  @type start_data_migration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_instance_profile_message() :: %{
        optional("AvailabilityZone") => String.t(),
        optional("Description") => String.t(),
        optional("InstanceProfileName") => String.t(),
        optional("KmsKeyArn") => String.t(),
        optional("NetworkType") => String.t(),
        optional("PubliclyAccessible") => boolean(),
        optional("SubnetGroupIdentifier") => String.t(),
        optional("VpcSecurityGroups") => list(String.t()()),
        required("InstanceProfileIdentifier") => String.t()
      }
      
  """
  @type modify_instance_profile_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      database_short_info_response() :: %{
        "DatabaseEngine" => String.t(),
        "DatabaseId" => String.t(),
        "DatabaseIpAddress" => String.t(),
        "DatabaseName" => String.t()
      }
      
  """
  @type database_short_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_metadata_model_conversion_message() :: %{
        required("MigrationProjectIdentifier") => String.t(),
        required("SelectionRules") => String.t()
      }
      
  """
  @type start_metadata_model_conversion_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_extension_pack_association_response() :: %{
        "RequestIdentifier" => String.t()
      }
      
  """
  @type start_extension_pack_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_migration_projects_response() :: %{
        "Marker" => String.t(),
        "MigrationProjects" => list(migration_project()())
      }
      
  """
  @type describe_migration_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_disabled_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_disabled_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_message() :: %{
        optional("PostgreSQLSettings") => postgre_s_q_l_settings(),
        optional("ExternalTableDefinition") => String.t(),
        optional("MicrosoftSQLServerSettings") => microsoft_s_q_l_server_settings(),
        optional("DatabaseName") => String.t(),
        optional("ExtraConnectionAttributes") => String.t(),
        optional("TimestreamSettings") => timestream_settings(),
        optional("MongoDbSettings") => mongo_db_settings(),
        optional("OracleSettings") => oracle_settings(),
        optional("ElasticsearchSettings") => elasticsearch_settings(),
        optional("DynamoDbSettings") => dynamo_db_settings(),
        optional("Username") => String.t(),
        required("EndpointIdentifier") => String.t(),
        optional("IBMDb2Settings") => i_b_m_db2_settings(),
        optional("ServerName") => String.t(),
        optional("CertificateArn") => String.t(),
        optional("DocDbSettings") => doc_db_settings(),
        optional("NeptuneSettings") => neptune_settings(),
        optional("Password") => String.t(),
        optional("DmsTransferSettings") => dms_transfer_settings(),
        optional("S3Settings") => s3_settings(),
        optional("SybaseSettings") => sybase_settings(),
        optional("KafkaSettings") => kafka_settings(),
        optional("SslMode") => list(any()),
        optional("GcpMySQLSettings") => gcp_my_s_q_l_settings(),
        optional("ServiceAccessRoleArn") => String.t(),
        optional("MySQLSettings") => my_s_q_l_settings(),
        required("EndpointType") => list(any()),
        optional("Port") => integer(),
        optional("RedisSettings") => redis_settings(),
        optional("KinesisSettings") => kinesis_settings(),
        optional("KmsKeyId") => String.t(),
        optional("ResourceIdentifier") => String.t(),
        required("EngineName") => String.t(),
        optional("Tags") => list(tag()()),
        optional("RedshiftSettings") => redshift_settings()
      }
      
  """
  @type create_endpoint_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_migration_project_response() :: %{
        "MigrationProject" => migration_project()
      }
      
  """
  @type modify_migration_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_message() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type remove_tags_from_resource_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_response() :: %{
        "Endpoint" => endpoint()
      }
      
  """
  @type create_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      microsoft_s_q_l_server_settings() :: %{
        "AuthenticationMethod" => list(any()),
        "BcpPacketSize" => integer(),
        "ControlTablesFileGroup" => String.t(),
        "DatabaseName" => String.t(),
        "ForceLobLookup" => boolean(),
        "Password" => String.t(),
        "Port" => integer(),
        "QuerySingleAlwaysOnNode" => boolean(),
        "ReadBackupOnly" => boolean(),
        "SafeguardPolicy" => list(any()),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "TlogAccessMode" => list(any()),
        "TrimSpaceInChar" => boolean(),
        "UseBcpFullLoad" => boolean(),
        "UseThirdPartyBackupDevice" => boolean(),
        "Username" => String.t()
      }
      
  """
  @type microsoft_s_q_l_server_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      apply_pending_maintenance_action_response() :: %{
        "ResourcePendingMaintenanceActions" => resource_pending_maintenance_actions()
      }
      
  """
  @type apply_pending_maintenance_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_quota_exceeded_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_quota_exceeded_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reload_replication_tables_response() :: %{
        "ReplicationConfigArn" => String.t()
      }
      
  """
  @type reload_replication_tables_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_subnet_groups_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_replication_subnet_groups_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_provider_descriptor_definition() :: %{
        "DataProviderIdentifier" => String.t(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t()
      }
      
  """
  @type data_provider_descriptor_definition() :: %{String.t() => any()}

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
      
      postgre_s_q_l_settings() :: %{
        "AfterConnectScript" => String.t(),
        "BabelfishDatabaseName" => String.t(),
        "CaptureDdls" => boolean(),
        "DatabaseMode" => list(any()),
        "DatabaseName" => String.t(),
        "DdlArtifactsSchema" => String.t(),
        "DisableUnicodeSourceFilter" => boolean(),
        "ExecuteTimeout" => integer(),
        "FailTasksOnLobTruncation" => boolean(),
        "HeartbeatEnable" => boolean(),
        "HeartbeatFrequency" => integer(),
        "HeartbeatSchema" => String.t(),
        "MapBooleanAsBoolean" => boolean(),
        "MapJsonbAsClob" => boolean(),
        "MapLongVarcharAs" => list(any()),
        "MaxFileSize" => integer(),
        "Password" => String.t(),
        "PluginName" => list(any()),
        "Port" => integer(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t(),
        "ServerName" => String.t(),
        "SlotName" => String.t(),
        "TrimSpaceInChar" => boolean(),
        "Username" => String.t()
      }
      
  """
  @type postgre_s_q_l_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_refresh_schemas_status_response() :: %{
        "RefreshSchemasStatus" => refresh_schemas_status()
      }
      
  """
  @type describe_refresh_schemas_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_start_recommendations_response() :: %{
        "ErrorEntries" => list(batch_start_recommendations_error_entry()())
      }
      
  """
  @type batch_start_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_provider_response() :: %{
        "DataProvider" => data_provider()
      }
      
  """
  @type delete_data_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replications_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_replications_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reload_replication_tables_message() :: %{
        optional("ReloadOption") => list(any()),
        required("ReplicationConfigArn") => String.t(),
        required("TablesToReload") => list(table_to_reload()())
      }
      
  """
  @type reload_replication_tables_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_start_recommendations_request() :: %{
        optional("Data") => list(start_recommendations_request_entry()())
      }
      
  """
  @type batch_start_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_metadata_model_exports_to_target_response() :: %{
        "Marker" => String.t(),
        "Requests" => list(schema_conversion_request()())
      }
      
  """
  @type describe_metadata_model_exports_to_target_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_schemas_status() :: %{
        "EndpointArn" => String.t(),
        "LastFailureMessage" => String.t(),
        "LastRefreshDate" => non_neg_integer(),
        "ReplicationInstanceArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type refresh_schemas_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engine_versions_response() :: %{
        "EngineVersions" => list(engine_version()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_engine_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_s_no_authorization_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s_n_s_no_authorization_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      modify_replication_instance_message() :: %{
        optional("AllocatedStorage") => integer(),
        optional("AllowMajorVersionUpgrade") => boolean(),
        optional("ApplyImmediately") => boolean(),
        optional("AutoMinorVersionUpgrade") => boolean(),
        optional("EngineVersion") => String.t(),
        optional("KerberosAuthenticationSettings") => kerberos_authentication_settings(),
        optional("MultiAZ") => boolean(),
        optional("NetworkType") => String.t(),
        optional("PreferredMaintenanceWindow") => String.t(),
        optional("ReplicationInstanceClass") => String.t(),
        optional("ReplicationInstanceIdentifier") => String.t(),
        optional("VpcSecurityGroupIds") => list(String.t()()),
        required("ReplicationInstanceArn") => String.t()
      }
      
  """
  @type modify_replication_instance_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_instance_task_logs_response() :: %{
        "Marker" => String.t(),
        "ReplicationInstanceArn" => String.t(),
        "ReplicationInstanceTaskLogs" => list(replication_instance_task_log()())
      }
      
  """
  @type describe_replication_instance_task_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_replication_instance_response() :: %{
        "ReplicationInstance" => replication_instance()
      }
      
  """
  @type delete_replication_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificates_response() :: %{
        "Certificates" => list(certificate()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_certificates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      collector_short_info_response() :: %{
        "CollectorName" => String.t(),
        "CollectorReferencedId" => String.t()
      }
      
  """
  @type collector_short_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_sql_details() :: %{
        "ObjectURL" => String.t(),
        "S3ObjectKey" => String.t()
      }
      
  """
  @type export_sql_details() :: %{String.t() => any()}

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
      
      delete_replication_task_response() :: %{
        "ReplicationTask" => replication_task()
      }
      
  """
  @type delete_replication_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_config() :: %{
        "ComputeConfig" => compute_config(),
        "ReplicationConfigArn" => String.t(),
        "ReplicationConfigCreateTime" => non_neg_integer(),
        "ReplicationConfigIdentifier" => String.t(),
        "ReplicationConfigUpdateTime" => non_neg_integer(),
        "ReplicationSettings" => String.t(),
        "ReplicationType" => list(any()),
        "SourceEndpointArn" => String.t(),
        "SupplementalSettings" => String.t(),
        "TableMappings" => String.t(),
        "TargetEndpointArn" => String.t()
      }
      
  """
  @type replication_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      migration_project() :: %{
        "Description" => String.t(),
        "InstanceProfileArn" => String.t(),
        "InstanceProfileName" => String.t(),
        "MigrationProjectArn" => String.t(),
        "MigrationProjectCreationTime" => non_neg_integer(),
        "MigrationProjectName" => String.t(),
        "SchemaConversionApplicationAttributes" => s_capplication_attributes(),
        "SourceDataProviderDescriptors" => list(data_provider_descriptor()()),
        "TargetDataProviderDescriptors" => list(data_provider_descriptor()()),
        "TransformationRules" => String.t()
      }
      
  """
  @type migration_project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_advisor_lsa_analysis_response() :: %{
        "LsaAnalysisId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type fleet_advisor_lsa_analysis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_throttling_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_throttling_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_migration_project_response() :: %{
        "MigrationProject" => migration_project()
      }
      
  """
  @type delete_migration_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_advisor_schemas_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxRecords") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_advisor_schemas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_replication_task_assessment_runs_message() :: %{
        optional("Filters") => list(filter()()),
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer()
      }
      
  """
  @type describe_replication_task_assessment_runs_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_provider_descriptor() :: %{
        "DataProviderArn" => String.t(),
        "DataProviderName" => String.t(),
        "SecretsManagerAccessRoleArn" => String.t(),
        "SecretsManagerSecretId" => String.t()
      }
      
  """
  @type data_provider_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      my_sql_data_provider_settings() :: %{
        "CertificateArn" => String.t(),
        "Port" => integer(),
        "ServerName" => String.t(),
        "SslMode" => list(any())
      }
      
  """
  @type my_sql_data_provider_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_pending_modified_values() :: %{
        "AllocatedStorage" => integer(),
        "EngineVersion" => String.t(),
        "MultiAZ" => boolean(),
        "NetworkType" => String.t(),
        "ReplicationInstanceClass" => String.t()
      }
      
  """
  @type replication_pending_modified_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_resource_not_found_fault() :: %{
        "message" => String.t()
      }
      
  """
  @type s3_resource_not_found_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscriptions_to_event_bridge_response() :: %{
        "Result" => String.t()
      }
      
  """
  @type update_subscriptions_to_event_bridge_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_endpoint_settings_message() :: %{
        optional("Marker") => String.t(),
        optional("MaxRecords") => integer(),
        required("EngineName") => String.t()
      }
      
  """
  @type describe_endpoint_settings_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_response() :: %{
        "Events" => list(event()()),
        "Marker" => String.t()
      }
      
  """
  @type describe_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_conversion_configuration_message() :: %{
        required("MigrationProjectIdentifier") => String.t()
      }
      
  """
  @type describe_conversion_configuration_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reload_tables_message() :: %{
        optional("ReloadOption") => list(any()),
        required("ReplicationTaskArn") => String.t(),
        required("TablesToReload") => list(table_to_reload()())
      }
      
  """
  @type reload_tables_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_replication_task_assessment_message() :: %{
        required("ReplicationTaskArn") => String.t()
      }
      
  """
  @type start_replication_task_assessment_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_replication_task_assessment_run_response() :: %{
        "ReplicationTaskAssessmentRun" => replication_task_assessment_run()
      }
      
  """
  @type cancel_replication_task_assessment_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_certificate_response() :: %{
        "Certificate" => certificate()
      }
      
  """
  @type delete_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_provider_response() :: %{
        "DataProvider" => data_provider()
      }
      
  """
  @type create_data_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      supported_endpoint_type() :: %{
        "EndpointType" => list(any()),
        "EngineDisplayName" => String.t(),
        "EngineName" => String.t(),
        "ReplicationInstanceEngineMinimumVersion" => String.t(),
        "SupportsCDC" => boolean()
      }
      
  """
  @type supported_endpoint_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_task_assessment_run() :: %{
        "AssessmentProgress" => replication_task_assessment_run_progress(),
        "AssessmentRunName" => String.t(),
        "IsLatestTaskAssessmentRun" => boolean(),
        "LastFailureMessage" => String.t(),
        "ReplicationTaskArn" => String.t(),
        "ReplicationTaskAssessmentRunArn" => String.t(),
        "ReplicationTaskAssessmentRunCreationDate" => non_neg_integer(),
        "ResultEncryptionMode" => String.t(),
        "ResultKmsKeyArn" => String.t(),
        "ResultLocationBucket" => String.t(),
        "ResultLocationFolder" => String.t(),
        "ResultStatistic" => replication_task_assessment_run_result_statistic(),
        "ServiceAccessRoleArn" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type replication_task_assessment_run() :: %{String.t() => any()}

  @type add_tags_to_resource_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type apply_pending_maintenance_action_errors() :: resource_not_found_fault()

  @type batch_start_recommendations_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type cancel_replication_task_assessment_run_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type create_data_migration_errors() ::
          resource_quota_exceeded_fault()
          | invalid_operation_fault()
          | resource_already_exists_fault()
          | failed_dependency_fault()
          | resource_not_found_fault()

  @type create_data_provider_errors() ::
          resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | failed_dependency_fault()
          | access_denied_fault()

  @type create_endpoint_errors() ::
          resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type create_event_subscription_errors() ::
          kms_throttling_fault()
          | s_n_s_no_authorization_fault()
          | resource_quota_exceeded_fault()
          | kms_disabled_fault()
          | resource_already_exists_fault()
          | s_n_s_invalid_topic_fault()
          | kms_not_found_fault()
          | kms_access_denied_fault()
          | kms_invalid_state_fault()
          | resource_not_found_fault()

  @type create_fleet_advisor_collector_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()

  @type create_instance_profile_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | failed_dependency_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type create_migration_project_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | s3_access_denied_fault()
          | failed_dependency_fault()
          | access_denied_fault()
          | resource_not_found_fault()

  @type create_replication_config_errors() ::
          resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | replication_subnet_group_does_not_cover_enough_a_zs()
          | invalid_subnet()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type create_replication_instance_errors() ::
          resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | storage_quota_exceeded_fault()
          | insufficient_resource_capacity_fault()
          | replication_subnet_group_does_not_cover_enough_a_zs()
          | invalid_subnet()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type create_replication_subnet_group_errors() ::
          resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | replication_subnet_group_does_not_cover_enough_a_zs()
          | invalid_subnet()
          | access_denied_fault()
          | resource_not_found_fault()

  @type create_replication_task_errors() ::
          resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type delete_certificate_errors() :: invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_connection_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_data_migration_errors() ::
          failed_dependency_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_data_provider_errors() ::
          failed_dependency_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type delete_endpoint_errors() :: invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_event_subscription_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_fleet_advisor_collector_errors() ::
          collector_not_found_fault() | access_denied_fault() | invalid_resource_state_fault()

  @type delete_fleet_advisor_databases_errors() ::
          invalid_operation_fault() | access_denied_fault() | resource_not_found_fault()

  @type delete_instance_profile_errors() ::
          failed_dependency_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type delete_migration_project_errors() ::
          failed_dependency_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type delete_replication_config_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_replication_instance_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_replication_subnet_group_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_replication_task_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type delete_replication_task_assessment_run_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type describe_applicable_individual_assessments_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type describe_certificates_errors() :: resource_not_found_fault()

  @type describe_connections_errors() :: resource_not_found_fault()

  @type describe_conversion_configuration_errors() :: resource_not_found_fault()

  @type describe_data_migrations_errors() ::
          failed_dependency_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type describe_data_providers_errors() ::
          failed_dependency_fault() | access_denied_fault() | resource_not_found_fault()

  @type describe_endpoints_errors() :: resource_not_found_fault()

  @type describe_event_subscriptions_errors() :: resource_not_found_fault()

  @type describe_fleet_advisor_collectors_errors() :: invalid_resource_state_fault()

  @type describe_fleet_advisor_databases_errors() :: invalid_resource_state_fault()

  @type describe_fleet_advisor_lsa_analysis_errors() :: invalid_resource_state_fault()

  @type describe_fleet_advisor_schema_object_summary_errors() :: invalid_resource_state_fault()

  @type describe_fleet_advisor_schemas_errors() :: invalid_resource_state_fault()

  @type describe_instance_profiles_errors() ::
          failed_dependency_fault() | access_denied_fault() | resource_not_found_fault()

  @type describe_metadata_model_assessments_errors() :: resource_not_found_fault()

  @type describe_metadata_model_conversions_errors() :: resource_not_found_fault()

  @type describe_metadata_model_exports_as_script_errors() :: resource_not_found_fault()

  @type describe_metadata_model_exports_to_target_errors() :: resource_not_found_fault()

  @type describe_metadata_model_imports_errors() :: resource_not_found_fault()

  @type describe_migration_projects_errors() ::
          failed_dependency_fault() | access_denied_fault() | resource_not_found_fault()

  @type describe_pending_maintenance_actions_errors() :: resource_not_found_fault()

  @type describe_recommendation_limitations_errors() ::
          access_denied_fault() | invalid_resource_state_fault()

  @type describe_recommendations_errors() ::
          access_denied_fault() | invalid_resource_state_fault()

  @type describe_refresh_schemas_status_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type describe_replication_configs_errors() :: resource_not_found_fault()

  @type describe_replication_instance_task_logs_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type describe_replication_instances_errors() :: resource_not_found_fault()

  @type describe_replication_subnet_groups_errors() :: resource_not_found_fault()

  @type describe_replication_table_statistics_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type describe_replication_task_assessment_results_errors() :: resource_not_found_fault()

  @type describe_replication_task_assessment_runs_errors() :: resource_not_found_fault()

  @type describe_replication_task_individual_assessments_errors() :: resource_not_found_fault()

  @type describe_replication_tasks_errors() :: resource_not_found_fault()

  @type describe_replications_errors() :: resource_not_found_fault()

  @type describe_schemas_errors() :: invalid_resource_state_fault() | resource_not_found_fault()

  @type describe_table_statistics_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type export_metadata_model_assessment_errors() :: resource_not_found_fault()

  @type import_certificate_errors() ::
          resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | invalid_certificate_fault()

  @type list_tags_for_resource_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type modify_conversion_configuration_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type modify_data_migration_errors() ::
          failed_dependency_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type modify_data_provider_errors() ::
          failed_dependency_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type modify_endpoint_errors() ::
          resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type modify_event_subscription_errors() ::
          kms_throttling_fault()
          | s_n_s_no_authorization_fault()
          | resource_quota_exceeded_fault()
          | kms_disabled_fault()
          | s_n_s_invalid_topic_fault()
          | kms_not_found_fault()
          | kms_access_denied_fault()
          | kms_invalid_state_fault()
          | access_denied_fault()
          | resource_not_found_fault()

  @type modify_instance_profile_errors() ::
          s3_resource_not_found_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | failed_dependency_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type modify_migration_project_errors() ::
          s3_resource_not_found_fault()
          | s3_access_denied_fault()
          | failed_dependency_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type modify_replication_config_errors() ::
          kms_key_not_accessible_fault()
          | replication_subnet_group_does_not_cover_enough_a_zs()
          | invalid_subnet()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type modify_replication_instance_errors() ::
          resource_already_exists_fault()
          | storage_quota_exceeded_fault()
          | insufficient_resource_capacity_fault()
          | access_denied_fault()
          | upgrade_dependency_failure_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type modify_replication_subnet_group_errors() ::
          resource_quota_exceeded_fault()
          | replication_subnet_group_does_not_cover_enough_a_zs()
          | invalid_subnet()
          | access_denied_fault()
          | subnet_already_in_use()
          | resource_not_found_fault()

  @type modify_replication_task_errors() ::
          resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type move_replication_task_errors() ::
          resource_quota_exceeded_fault()
          | kms_key_not_accessible_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type reboot_replication_instance_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type refresh_schemas_errors() ::
          resource_quota_exceeded_fault()
          | kms_key_not_accessible_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type reload_replication_tables_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type reload_tables_errors() :: invalid_resource_state_fault() | resource_not_found_fault()

  @type remove_tags_from_resource_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type run_fleet_advisor_lsa_analysis_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type start_data_migration_errors() ::
          resource_quota_exceeded_fault()
          | invalid_operation_fault()
          | failed_dependency_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type start_extension_pack_association_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type start_metadata_model_assessment_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type start_metadata_model_conversion_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type start_metadata_model_export_as_script_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type start_metadata_model_export_to_target_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type start_metadata_model_import_errors() ::
          s3_resource_not_found_fault()
          | resource_quota_exceeded_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type start_recommendations_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type start_replication_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type start_replication_task_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type start_replication_task_assessment_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type start_replication_task_assessment_run_errors() ::
          s3_resource_not_found_fault()
          | kms_disabled_fault()
          | resource_already_exists_fault()
          | kms_key_not_accessible_fault()
          | s3_access_denied_fault()
          | kms_not_found_fault()
          | kms_fault()
          | kms_access_denied_fault()
          | kms_invalid_state_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type stop_data_migration_errors() ::
          failed_dependency_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type stop_replication_errors() ::
          access_denied_fault() | invalid_resource_state_fault() | resource_not_found_fault()

  @type stop_replication_task_errors() ::
          invalid_resource_state_fault() | resource_not_found_fault()

  @type test_connection_errors() ::
          resource_quota_exceeded_fault()
          | kms_key_not_accessible_fault()
          | access_denied_fault()
          | invalid_resource_state_fault()
          | resource_not_found_fault()

  @type update_subscriptions_to_event_bridge_errors() ::
          access_denied_fault() | invalid_resource_state_fault()

  def metadata do
    %{
      api_version: "2016-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dms",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Database Migration Service",
      signature_version: "v4",
      signing_name: "dms",
      target_prefix: "AmazonDMSv20160101"
    }
  end

  @doc """
  Adds metadata tags to an DMS resource, including replication instance, endpoint,
  subnet group, and migration task.

  These tags can also be used with cost allocation
  reporting to track cost associated with DMS resources, or used in a Condition
  statement in
  an IAM policy for DMS. For more information, see [
  `Tag`
  ](https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data type
  description.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_message(), list()) ::
          {:ok, add_tags_to_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a
  replication
  instance).
  """
  @spec apply_pending_maintenance_action(
          map(),
          apply_pending_maintenance_action_message(),
          list()
        ) ::
          {:ok, apply_pending_maintenance_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, apply_pending_maintenance_action_errors()}
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Starts the analysis of up to 20 source databases to recommend target engines for
  each
  source database.

  This is a batch version of
  [StartRecommendations](https://docs.aws.amazon.com/dms/latest/APIReference/API_StartRecommendations.html).

  The result of analysis of each source database is reported individually in the
  response. Because the batch request can result in a combination of successful
  and
  unsuccessful actions, you should check for batch errors even when the call
  returns an
  HTTP status code of `200`.
  """
  @spec batch_start_recommendations(map(), batch_start_recommendations_request(), list()) ::
          {:ok, batch_start_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_start_recommendations_errors()}
  def batch_start_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchStartRecommendations", input, options)
  end

  @doc """
  Cancels a single premigration assessment run.

  This operation prevents any individual assessments from running if they haven't
  started
  running. It also attempts to cancel any individual assessments that are
  currently
  running.
  """
  @spec cancel_replication_task_assessment_run(
          map(),
          cancel_replication_task_assessment_run_message(),
          list()
        ) ::
          {:ok, cancel_replication_task_assessment_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_replication_task_assessment_run_errors()}
  def cancel_replication_task_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelReplicationTaskAssessmentRun", input, options)
  end

  @doc """
  Creates a data migration using the provided settings.
  """
  @spec create_data_migration(map(), create_data_migration_message(), list()) ::
          {:ok, create_data_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_migration_errors()}
  def create_data_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataMigration", input, options)
  end

  @doc """
  Creates a data provider using the provided settings.

  A data provider stores a data store
  type and location information about your database.
  """
  @spec create_data_provider(map(), create_data_provider_message(), list()) ::
          {:ok, create_data_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_provider_errors()}
  def create_data_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataProvider", input, options)
  end

  @doc """
  Creates an endpoint using the provided settings.

  For a MySQL source or target endpoint, don't explicitly specify the database
  using
  the `DatabaseName` request parameter on the `CreateEndpoint` API
  call. Specifying `DatabaseName` when you create a MySQL endpoint replicates
  all the task tables to this single database. For MySQL endpoints, you specify
  the
  database only when you specify the schema in the table-mapping rules of the DMS
  task.
  """
  @spec create_endpoint(map(), create_endpoint_message(), list()) ::
          {:ok, create_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_endpoint_errors()}
  def create_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpoint", input, options)
  end

  @doc """
  Creates an DMS event notification subscription.

  You can specify the type of source (`SourceType`) you want to be notified of,
  provide a list of DMS source IDs (`SourceIds`) that triggers the events, and
  provide a list of event categories (`EventCategories`) for events you want to be
  notified of. If you specify both the `SourceType` and `SourceIds`,
  such as `SourceType = replication-instance` and

  ```
  SourceIdentifier =
  my-replinstance
  ```

  , you will be notified of all the replication instance events for
  the specified source. If you specify a `SourceType` but don't specify a
  `SourceIdentifier`, you receive notice of the events for that source type for
  all your DMS sources. If you don't specify either `SourceType` nor
  `SourceIdentifier`, you will be notified of events generated from all DMS
  sources belonging to your customer account.

  For more information about DMS events, see [Working with Events and Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *Database Migration Service User Guide.*
  """
  @spec create_event_subscription(map(), create_event_subscription_message(), list()) ::
          {:ok, create_event_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_subscription_errors()}
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEventSubscription", input, options)
  end

  @doc """
  Creates a Fleet Advisor collector using the specified parameters.
  """
  @spec create_fleet_advisor_collector(map(), create_fleet_advisor_collector_request(), list()) ::
          {:ok, create_fleet_advisor_collector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_advisor_collector_errors()}
  def create_fleet_advisor_collector(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleetAdvisorCollector", input, options)
  end

  @doc """
  Creates the instance profile using the specified parameters.
  """
  @spec create_instance_profile(map(), create_instance_profile_message(), list()) ::
          {:ok, create_instance_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_instance_profile_errors()}
  def create_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstanceProfile", input, options)
  end

  @doc """
  Creates the migration project using the specified parameters.

  You can run this action only after you create an instance profile and data
  providers
  using
  [CreateInstanceProfile](https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateInstanceProfile.html) and
  [CreateDataProvider](https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateDataProvider.html).
  """
  @spec create_migration_project(map(), create_migration_project_message(), list()) ::
          {:ok, create_migration_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_migration_project_errors()}
  def create_migration_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMigrationProject", input, options)
  end

  @doc """
  Creates a configuration that you can later provide to configure and start an DMS
  Serverless replication.

  You can also provide options to validate the configuration inputs
  before you start the replication.
  """
  @spec create_replication_config(map(), create_replication_config_message(), list()) ::
          {:ok, create_replication_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replication_config_errors()}
  def create_replication_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReplicationConfig", input, options)
  end

  @doc """
  Creates the replication instance using the specified parameters.

  DMS requires that your account have certain roles with appropriate permissions
  before
  you can create a replication instance. For information on the required roles,
  see [Creating the IAM Roles to Use With the CLI and DMS API](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole).
  For information on
  the required permissions, see [IAM Permissions Needed to Use
  DMS](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions).

  If you don't specify a version when creating a replication instance, DMS will
  create the instance using the default engine version. For information about the
  default
  engine version, see [Release Notes](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReleaseNotes.html).
  """
  @spec create_replication_instance(map(), create_replication_instance_message(), list()) ::
          {:ok, create_replication_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replication_instance_errors()}
  def create_replication_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReplicationInstance", input, options)
  end

  @doc """
  Creates a replication subnet group given a list of the subnet IDs in a VPC.

  The VPC needs to have at least one subnet in at least two availability zones in
  the
  Amazon Web Services Region, otherwise the service will throw a
  `ReplicationSubnetGroupDoesNotCoverEnoughAZs` exception.

  If a replication subnet group exists in your Amazon Web Services account, the
  CreateReplicationSubnetGroup action returns the following error message: The
  Replication
  Subnet Group already exists. In this case, delete the existing replication
  subnet group. To
  do so, use the
  [DeleteReplicationSubnetGroup](https://docs.aws.amazon.com/en_us/dms/latest/APIReference/API_DeleteReplicationSubnetGroup.html)
  action. Optionally, choose Subnet groups in the
  DMS console, then choose your subnet group. Next, choose Delete from Actions.
  """
  @spec create_replication_subnet_group(map(), create_replication_subnet_group_message(), list()) ::
          {:ok, create_replication_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replication_subnet_group_errors()}
  def create_replication_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReplicationSubnetGroup", input, options)
  end

  @doc """
  Creates a replication task using the specified parameters.
  """
  @spec create_replication_task(map(), create_replication_task_message(), list()) ::
          {:ok, create_replication_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replication_task_errors()}
  def create_replication_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReplicationTask", input, options)
  end

  @doc """
  Deletes the specified certificate.
  """
  @spec delete_certificate(map(), delete_certificate_message(), list()) ::
          {:ok, delete_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_certificate_errors()}
  def delete_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCertificate", input, options)
  end

  @doc """
  Deletes the connection between a replication instance and an endpoint.
  """
  @spec delete_connection(map(), delete_connection_message(), list()) ::
          {:ok, delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connection_errors()}
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Deletes the specified data migration.
  """
  @spec delete_data_migration(map(), delete_data_migration_message(), list()) ::
          {:ok, delete_data_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_migration_errors()}
  def delete_data_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataMigration", input, options)
  end

  @doc """
  Deletes the specified data provider.

  All migration projects associated with the data provider must be deleted or
  modified
  before you can delete the data provider.
  """
  @spec delete_data_provider(map(), delete_data_provider_message(), list()) ::
          {:ok, delete_data_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_provider_errors()}
  def delete_data_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataProvider", input, options)
  end

  @doc """
  Deletes the specified endpoint.

  All tasks associated with the endpoint must be deleted before you can delete the
  endpoint.
  """
  @spec delete_endpoint(map(), delete_endpoint_message(), list()) ::
          {:ok, delete_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_endpoint_errors()}
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an DMS event subscription.
  """
  @spec delete_event_subscription(map(), delete_event_subscription_message(), list()) ::
          {:ok, delete_event_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_subscription_errors()}
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes the specified Fleet Advisor collector.
  """
  @spec delete_fleet_advisor_collector(map(), delete_collector_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_advisor_collector_errors()}
  def delete_fleet_advisor_collector(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleetAdvisorCollector", input, options)
  end

  @doc """
  Deletes the specified Fleet Advisor collector databases.
  """
  @spec delete_fleet_advisor_databases(map(), delete_fleet_advisor_databases_request(), list()) ::
          {:ok, delete_fleet_advisor_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_advisor_databases_errors()}
  def delete_fleet_advisor_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleetAdvisorDatabases", input, options)
  end

  @doc """
  Deletes the specified instance profile.

  All migration projects associated with the instance profile must be deleted or
  modified before you can delete the instance profile.
  """
  @spec delete_instance_profile(map(), delete_instance_profile_message(), list()) ::
          {:ok, delete_instance_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_instance_profile_errors()}
  def delete_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstanceProfile", input, options)
  end

  @doc """
  Deletes the specified migration project.

  The migration project must be closed before you can delete it.
  """
  @spec delete_migration_project(map(), delete_migration_project_message(), list()) ::
          {:ok, delete_migration_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_migration_project_errors()}
  def delete_migration_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMigrationProject", input, options)
  end

  @doc """
  Deletes an DMS Serverless replication configuration.

  This effectively deprovisions any
  and all replications that use this configuration. You can't delete the
  configuration for an
  DMS Serverless replication that is ongoing. You can delete the configuration
  when the
  replication is in a non-RUNNING and non-STARTING state.
  """
  @spec delete_replication_config(map(), delete_replication_config_message(), list()) ::
          {:ok, delete_replication_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_config_errors()}
  def delete_replication_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReplicationConfig", input, options)
  end

  @doc """
  Deletes the specified replication instance.

  You must delete any migration tasks that are associated with the replication
  instance
  before you can delete it.
  """
  @spec delete_replication_instance(map(), delete_replication_instance_message(), list()) ::
          {:ok, delete_replication_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_instance_errors()}
  def delete_replication_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReplicationInstance", input, options)
  end

  @doc """
  Deletes a subnet group.
  """
  @spec delete_replication_subnet_group(map(), delete_replication_subnet_group_message(), list()) ::
          {:ok, delete_replication_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_subnet_group_errors()}
  def delete_replication_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReplicationSubnetGroup", input, options)
  end

  @doc """
  Deletes the specified replication task.
  """
  @spec delete_replication_task(map(), delete_replication_task_message(), list()) ::
          {:ok, delete_replication_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_task_errors()}
  def delete_replication_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReplicationTask", input, options)
  end

  @doc """
  Deletes the record of a single premigration assessment run.

  This operation removes all metadata that DMS maintains about this assessment
  run.
  However, the operation leaves untouched all information about this assessment
  run that is
  stored in your Amazon S3 bucket.
  """
  @spec delete_replication_task_assessment_run(
          map(),
          delete_replication_task_assessment_run_message(),
          list()
        ) ::
          {:ok, delete_replication_task_assessment_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_task_assessment_run_errors()}
  def delete_replication_task_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReplicationTaskAssessmentRun", input, options)
  end

  @doc """
  Lists all of the DMS attributes for a customer account.

  These attributes include DMS
  quotas for the account and a unique account identifier in a particular DMS
  region. DMS
  quotas include a list of resource quotas supported by the account, such as the
  number of
  replication instances allowed. The description for each resource quota, includes
  the quota
  name, current usage toward that quota, and the quota's maximum value. DMS uses
  the unique
  account identifier to name each artifact used by DMS in the given region.

  This command does not take any parameters.
  """
  @spec describe_account_attributes(map(), describe_account_attributes_message(), list()) ::
          {:ok, describe_account_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Provides a list of individual assessments that you can specify for a new
  premigration
  assessment run, given one or more parameters.

  If you specify an existing migration task, this operation provides the default
  individual assessments you can specify for that task. Otherwise, the specified
  parameters
  model elements of a possible migration task on which to base a premigration
  assessment
  run.

  To use these migration task modeling parameters, you must specify an existing
  replication instance, a source database engine, a target database engine, and a
  migration
  type. This combination of parameters potentially limits the default individual
  assessments
  available for an assessment run created for a corresponding migration task.

  If you specify no parameters, this operation provides a list of all possible
  individual
  assessments that you can specify for an assessment run. If you specify any one
  of the task
  modeling parameters, you must specify all of them or the operation cannot
  provide a list of
  individual assessments. The only parameter that you can specify alone is for an
  existing
  migration task. The specified task definition then determines the default list
  of
  individual assessments that you can specify in an assessment run for the task.
  """
  @spec describe_applicable_individual_assessments(
          map(),
          describe_applicable_individual_assessments_message(),
          list()
        ) ::
          {:ok, describe_applicable_individual_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_applicable_individual_assessments_errors()}
  def describe_applicable_individual_assessments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicableIndividualAssessments", input, options)
  end

  @doc """
  Provides a description of the certificate.
  """
  @spec describe_certificates(map(), describe_certificates_message(), list()) ::
          {:ok, describe_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_certificates_errors()}
  def describe_certificates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCertificates", input, options)
  end

  @doc """
  Describes the status of the connections that have been made between the
  replication
  instance and an endpoint.

  Connections are created when you test an endpoint.
  """
  @spec describe_connections(map(), describe_connections_message(), list()) ::
          {:ok, describe_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_connections_errors()}
  def describe_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnections", input, options)
  end

  @doc """
  Returns configuration parameters for a schema conversion project.
  """
  @spec describe_conversion_configuration(
          map(),
          describe_conversion_configuration_message(),
          list()
        ) ::
          {:ok, describe_conversion_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_conversion_configuration_errors()}
  def describe_conversion_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConversionConfiguration", input, options)
  end

  @doc """
  Returns information about data migrations.
  """
  @spec describe_data_migrations(map(), describe_data_migrations_message(), list()) ::
          {:ok, describe_data_migrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_migrations_errors()}
  def describe_data_migrations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataMigrations", input, options)
  end

  @doc """
  Returns a paginated list of data providers for your account in the current
  region.
  """
  @spec describe_data_providers(map(), describe_data_providers_message(), list()) ::
          {:ok, describe_data_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_data_providers_errors()}
  def describe_data_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataProviders", input, options)
  end

  @doc """
  Returns information about the possible endpoint settings available when you
  create an
  endpoint for a specific database engine.
  """
  @spec describe_endpoint_settings(map(), describe_endpoint_settings_message(), list()) ::
          {:ok, describe_endpoint_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_endpoint_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpointSettings", input, options)
  end

  @doc """
  Returns information about the type of endpoints available.
  """
  @spec describe_endpoint_types(map(), describe_endpoint_types_message(), list()) ::
          {:ok, describe_endpoint_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_endpoint_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpointTypes", input, options)
  end

  @doc """
  Returns information about the endpoints for your account in the current region.
  """
  @spec describe_endpoints(map(), describe_endpoints_message(), list()) ::
          {:ok, describe_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_endpoints_errors()}
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoints", input, options)
  end

  @doc """
  Returns information about the replication instance versions used in the project.
  """
  @spec describe_engine_versions(map(), describe_engine_versions_message(), list()) ::
          {:ok, describe_engine_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_engine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEngineVersions", input, options)
  end

  @doc """
  Lists categories for all event source types, or, if specified, for a specified
  source
  type.

  You can see a list of the event categories and source types in [Working with Events
  and
  Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *Database Migration Service User Guide.*
  """
  @spec describe_event_categories(map(), describe_event_categories_message(), list()) ::
          {:ok, describe_event_categories_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_event_categories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the event subscriptions for a customer account.

  The description of a
  subscription includes `SubscriptionName`, `SNSTopicARN`,
  `CustomerID`, `SourceType`, `SourceID`,
  `CreationTime`, and `Status`.

  If you specify `SubscriptionName`, this action lists the description for that
  subscription.
  """
  @spec describe_event_subscriptions(map(), describe_event_subscriptions_message(), list()) ::
          {:ok, describe_event_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_subscriptions_errors()}
  def describe_event_subscriptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Lists events for a given source identifier and source type.

  You can also specify a
  start and end time. For more information on DMS events, see [Working with Events and
  Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *Database Migration Service User Guide.*
  """
  @spec describe_events(map(), describe_events_message(), list()) ::
          {:ok, describe_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns a paginated list of extension pack associations for the specified
  migration
  project.

  An extension pack is an add-on module that emulates functions present in a
  source
  database that are required when converting objects to the target database.
  """
  @spec describe_extension_pack_associations(
          map(),
          describe_extension_pack_associations_message(),
          list()
        ) ::
          {:ok, describe_extension_pack_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_extension_pack_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExtensionPackAssociations", input, options)
  end

  @doc """
  Returns a list of the Fleet Advisor collectors in your account.
  """
  @spec describe_fleet_advisor_collectors(
          map(),
          describe_fleet_advisor_collectors_request(),
          list()
        ) ::
          {:ok, describe_fleet_advisor_collectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_advisor_collectors_errors()}
  def describe_fleet_advisor_collectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetAdvisorCollectors", input, options)
  end

  @doc """
  Returns a list of Fleet Advisor databases in your account.
  """
  @spec describe_fleet_advisor_databases(
          map(),
          describe_fleet_advisor_databases_request(),
          list()
        ) ::
          {:ok, describe_fleet_advisor_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_advisor_databases_errors()}
  def describe_fleet_advisor_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetAdvisorDatabases", input, options)
  end

  @doc """
  Provides descriptions of large-scale assessment (LSA) analyses produced by your
  Fleet
  Advisor collectors.
  """
  @spec describe_fleet_advisor_lsa_analysis(
          map(),
          describe_fleet_advisor_lsa_analysis_request(),
          list()
        ) ::
          {:ok, describe_fleet_advisor_lsa_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_advisor_lsa_analysis_errors()}
  def describe_fleet_advisor_lsa_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetAdvisorLsaAnalysis", input, options)
  end

  @doc """
  Provides descriptions of the schemas discovered by your Fleet Advisor
  collectors.
  """
  @spec describe_fleet_advisor_schema_object_summary(
          map(),
          describe_fleet_advisor_schema_object_summary_request(),
          list()
        ) ::
          {:ok, describe_fleet_advisor_schema_object_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_advisor_schema_object_summary_errors()}
  def describe_fleet_advisor_schema_object_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetAdvisorSchemaObjectSummary", input, options)
  end

  @doc """
  Returns a list of schemas detected by Fleet Advisor Collectors in your account.
  """
  @spec describe_fleet_advisor_schemas(map(), describe_fleet_advisor_schemas_request(), list()) ::
          {:ok, describe_fleet_advisor_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_advisor_schemas_errors()}
  def describe_fleet_advisor_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetAdvisorSchemas", input, options)
  end

  @doc """
  Returns a paginated list of instance profiles for your account in the current
  region.
  """
  @spec describe_instance_profiles(map(), describe_instance_profiles_message(), list()) ::
          {:ok, describe_instance_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_instance_profiles_errors()}
  def describe_instance_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstanceProfiles", input, options)
  end

  @doc """
  Returns a paginated list of metadata model assessments for your account in the
  current
  region.
  """
  @spec describe_metadata_model_assessments(
          map(),
          describe_metadata_model_assessments_message(),
          list()
        ) ::
          {:ok, describe_metadata_model_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_metadata_model_assessments_errors()}
  def describe_metadata_model_assessments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetadataModelAssessments", input, options)
  end

  @doc """
  Returns a paginated list of metadata model conversions for a migration project.
  """
  @spec describe_metadata_model_conversions(
          map(),
          describe_metadata_model_conversions_message(),
          list()
        ) ::
          {:ok, describe_metadata_model_conversions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_metadata_model_conversions_errors()}
  def describe_metadata_model_conversions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetadataModelConversions", input, options)
  end

  @doc """
  Returns a paginated list of metadata model exports.
  """
  @spec describe_metadata_model_exports_as_script(
          map(),
          describe_metadata_model_exports_as_script_message(),
          list()
        ) ::
          {:ok, describe_metadata_model_exports_as_script_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_metadata_model_exports_as_script_errors()}
  def describe_metadata_model_exports_as_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetadataModelExportsAsScript", input, options)
  end

  @doc """
  Returns a paginated list of metadata model exports.
  """
  @spec describe_metadata_model_exports_to_target(
          map(),
          describe_metadata_model_exports_to_target_message(),
          list()
        ) ::
          {:ok, describe_metadata_model_exports_to_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_metadata_model_exports_to_target_errors()}
  def describe_metadata_model_exports_to_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetadataModelExportsToTarget", input, options)
  end

  @doc """
  Returns a paginated list of metadata model imports.
  """
  @spec describe_metadata_model_imports(map(), describe_metadata_model_imports_message(), list()) ::
          {:ok, describe_metadata_model_imports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_metadata_model_imports_errors()}
  def describe_metadata_model_imports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMetadataModelImports", input, options)
  end

  @doc """
  Returns a paginated list of migration projects for your account in the current
  region.
  """
  @spec describe_migration_projects(map(), describe_migration_projects_message(), list()) ::
          {:ok, describe_migration_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_migration_projects_errors()}
  def describe_migration_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMigrationProjects", input, options)
  end

  @doc """
  Returns information about the replication instance types that can be created in
  the
  specified region.
  """
  @spec describe_orderable_replication_instances(
          map(),
          describe_orderable_replication_instances_message(),
          list()
        ) ::
          {:ok, describe_orderable_replication_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_orderable_replication_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOrderableReplicationInstances", input, options)
  end

  @doc """
  Returns a list of upcoming maintenance events for replication instances in your
  account
  in the current Region.
  """
  @spec describe_pending_maintenance_actions(
          map(),
          describe_pending_maintenance_actions_message(),
          list()
        ) ::
          {:ok, describe_pending_maintenance_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pending_maintenance_actions_errors()}
  def describe_pending_maintenance_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Returns a paginated list of limitations for recommendations of target Amazon Web
  Services
  engines.
  """
  @spec describe_recommendation_limitations(
          map(),
          describe_recommendation_limitations_request(),
          list()
        ) ::
          {:ok, describe_recommendation_limitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_recommendation_limitations_errors()}
  def describe_recommendation_limitations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRecommendationLimitations", input, options)
  end

  @doc """
  Returns a paginated list of target engine recommendations for your source
  databases.
  """
  @spec describe_recommendations(map(), describe_recommendations_request(), list()) ::
          {:ok, describe_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_recommendations_errors()}
  def describe_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRecommendations", input, options)
  end

  @doc """
  Returns the status of the RefreshSchemas operation.
  """
  @spec describe_refresh_schemas_status(map(), describe_refresh_schemas_status_message(), list()) ::
          {:ok, describe_refresh_schemas_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_refresh_schemas_status_errors()}
  def describe_refresh_schemas_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRefreshSchemasStatus", input, options)
  end

  @doc """
  Returns one or more existing DMS Serverless replication configurations as a list
  of
  structures.
  """
  @spec describe_replication_configs(map(), describe_replication_configs_message(), list()) ::
          {:ok, describe_replication_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_configs_errors()}
  def describe_replication_configs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationConfigs", input, options)
  end

  @doc """
  Returns information about the task logs for the specified task.
  """
  @spec describe_replication_instance_task_logs(
          map(),
          describe_replication_instance_task_logs_message(),
          list()
        ) ::
          {:ok, describe_replication_instance_task_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_instance_task_logs_errors()}
  def describe_replication_instance_task_logs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationInstanceTaskLogs", input, options)
  end

  @doc """
  Returns information about replication instances for your account in the current
  region.
  """
  @spec describe_replication_instances(map(), describe_replication_instances_message(), list()) ::
          {:ok, describe_replication_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_instances_errors()}
  def describe_replication_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationInstances", input, options)
  end

  @doc """
  Returns information about the replication subnet groups.
  """
  @spec describe_replication_subnet_groups(
          map(),
          describe_replication_subnet_groups_message(),
          list()
        ) ::
          {:ok, describe_replication_subnet_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_subnet_groups_errors()}
  def describe_replication_subnet_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationSubnetGroups", input, options)
  end

  @doc """
  Returns table and schema statistics for one or more provisioned replications
  that use a
  given DMS Serverless replication configuration.
  """
  @spec describe_replication_table_statistics(
          map(),
          describe_replication_table_statistics_message(),
          list()
        ) ::
          {:ok, describe_replication_table_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_table_statistics_errors()}
  def describe_replication_table_statistics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationTableStatistics", input, options)
  end

  @doc """
  Returns the task assessment results from the Amazon S3 bucket that DMS creates
  in your
  Amazon Web Services account.

  This action always returns the latest results.

  For more information about DMS task assessments, see [Creating a task assessment report](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html)
  in the *Database Migration Service User Guide*.
  """
  @spec describe_replication_task_assessment_results(
          map(),
          describe_replication_task_assessment_results_message(),
          list()
        ) ::
          {:ok, describe_replication_task_assessment_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_task_assessment_results_errors()}
  def describe_replication_task_assessment_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationTaskAssessmentResults", input, options)
  end

  @doc """
  Returns a paginated list of premigration assessment runs based on filter
  settings.

  These filter settings can specify a combination of premigration assessment runs,
  migration tasks, replication instances, and assessment run status values.

  This operation doesn't return information about individual assessments. For this
  information, see the `DescribeReplicationTaskIndividualAssessments`
  operation.
  """
  @spec describe_replication_task_assessment_runs(
          map(),
          describe_replication_task_assessment_runs_message(),
          list()
        ) ::
          {:ok, describe_replication_task_assessment_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_task_assessment_runs_errors()}
  def describe_replication_task_assessment_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationTaskAssessmentRuns", input, options)
  end

  @doc """
  Returns a paginated list of individual assessments based on filter settings.

  These filter settings can specify a combination of premigration assessment runs,
  migration tasks, and assessment status values.
  """
  @spec describe_replication_task_individual_assessments(
          map(),
          describe_replication_task_individual_assessments_message(),
          list()
        ) ::
          {:ok, describe_replication_task_individual_assessments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_task_individual_assessments_errors()}
  def describe_replication_task_individual_assessments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeReplicationTaskIndividualAssessments",
      input,
      options
    )
  end

  @doc """
  Returns information about replication tasks for your account in the current
  region.
  """
  @spec describe_replication_tasks(map(), describe_replication_tasks_message(), list()) ::
          {:ok, describe_replication_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_tasks_errors()}
  def describe_replication_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplicationTasks", input, options)
  end

  @doc """
  Provides details on replication progress by returning status information for one
  or more
  provisioned DMS Serverless replications.
  """
  @spec describe_replications(map(), describe_replications_message(), list()) ::
          {:ok, describe_replications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replications_errors()}
  def describe_replications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReplications", input, options)
  end

  @doc """
  Returns information about the schema for the specified endpoint.
  """
  @spec describe_schemas(map(), describe_schemas_message(), list()) ::
          {:ok, describe_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_schemas_errors()}
  def describe_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSchemas", input, options)
  end

  @doc """
  Returns table statistics on the database migration task, including table name,
  rows
  inserted, rows updated, and rows deleted.

  Note that the "last updated" column the DMS console only indicates the time that
  DMS
  last updated the table statistics record for a table. It does not indicate the
  time of the
  last update to the table.
  """
  @spec describe_table_statistics(map(), describe_table_statistics_message(), list()) ::
          {:ok, describe_table_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_table_statistics_errors()}
  def describe_table_statistics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTableStatistics", input, options)
  end

  @doc """
  Saves a copy of a database migration assessment report to your Amazon S3 bucket.

  DMS can
  save your assessment report as a comma-separated value (CSV) or a PDF file.
  """
  @spec export_metadata_model_assessment(
          map(),
          export_metadata_model_assessment_message(),
          list()
        ) ::
          {:ok, export_metadata_model_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_metadata_model_assessment_errors()}
  def export_metadata_model_assessment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportMetadataModelAssessment", input, options)
  end

  @doc """
  Uploads the specified certificate.
  """
  @spec import_certificate(map(), import_certificate_message(), list()) ::
          {:ok, import_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_certificate_errors()}
  def import_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportCertificate", input, options)
  end

  @doc """
  Lists all metadata tags attached to an DMS resource, including replication
  instance,
  endpoint, subnet group, and migration task.

  For more information, see [
  `Tag`
  ](https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html)
  data type description.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_message(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the specified schema conversion configuration using the provided
  parameters.
  """
  @spec modify_conversion_configuration(map(), modify_conversion_configuration_message(), list()) ::
          {:ok, modify_conversion_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_conversion_configuration_errors()}
  def modify_conversion_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyConversionConfiguration", input, options)
  end

  @doc """
  Modifies an existing DMS data migration.
  """
  @spec modify_data_migration(map(), modify_data_migration_message(), list()) ::
          {:ok, modify_data_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_data_migration_errors()}
  def modify_data_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDataMigration", input, options)
  end

  @doc """
  Modifies the specified data provider using the provided settings.

  You must remove the data provider from all migration projects before you can
  modify
  it.
  """
  @spec modify_data_provider(map(), modify_data_provider_message(), list()) ::
          {:ok, modify_data_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_data_provider_errors()}
  def modify_data_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyDataProvider", input, options)
  end

  @doc """
  Modifies the specified endpoint.

  For a MySQL source or target endpoint, don't explicitly specify the database
  using
  the `DatabaseName` request parameter on the `ModifyEndpoint` API
  call. Specifying `DatabaseName` when you modify a MySQL endpoint replicates
  all the task tables to this single database. For MySQL endpoints, you specify
  the
  database only when you specify the schema in the table-mapping rules of the DMS
  task.
  """
  @spec modify_endpoint(map(), modify_endpoint_message(), list()) ::
          {:ok, modify_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_endpoint_errors()}
  def modify_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyEndpoint", input, options)
  end

  @doc """
  Modifies an existing DMS event notification subscription.
  """
  @spec modify_event_subscription(map(), modify_event_subscription_message(), list()) ::
          {:ok, modify_event_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_event_subscription_errors()}
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyEventSubscription", input, options)
  end

  @doc """
  Modifies the specified instance profile using the provided parameters.

  All migration projects associated with the instance profile must be deleted or
  modified before you can modify the instance profile.
  """
  @spec modify_instance_profile(map(), modify_instance_profile_message(), list()) ::
          {:ok, modify_instance_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_instance_profile_errors()}
  def modify_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyInstanceProfile", input, options)
  end

  @doc """
  Modifies the specified migration project using the provided parameters.

  The migration project must be closed before you can modify it.
  """
  @spec modify_migration_project(map(), modify_migration_project_message(), list()) ::
          {:ok, modify_migration_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_migration_project_errors()}
  def modify_migration_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyMigrationProject", input, options)
  end

  @doc """
  Modifies an existing DMS Serverless replication configuration that you can use
  to
  start a replication.

  This command includes input validation and logic to check the state of
  any replication that uses this configuration. You can only modify a replication
  configuration before any replication that uses it has started. As soon as you
  have
  initially started a replication with a given configuiration, you can't modify
  that
  configuration, even if you stop it.

  Other run statuses that allow you to run this command include FAILED and
  CREATED. A
  provisioning state that allows you to run this command is FAILED_PROVISION.
  """
  @spec modify_replication_config(map(), modify_replication_config_message(), list()) ::
          {:ok, modify_replication_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_replication_config_errors()}
  def modify_replication_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReplicationConfig", input, options)
  end

  @doc """
  Modifies the replication instance to apply new settings.

  You can change one or more
  parameters by specifying these parameters and the new values in the request.

  Some settings are applied during the maintenance window.
  """
  @spec modify_replication_instance(map(), modify_replication_instance_message(), list()) ::
          {:ok, modify_replication_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_replication_instance_errors()}
  def modify_replication_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReplicationInstance", input, options)
  end

  @doc """
  Modifies the settings for the specified replication subnet group.
  """
  @spec modify_replication_subnet_group(map(), modify_replication_subnet_group_message(), list()) ::
          {:ok, modify_replication_subnet_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_replication_subnet_group_errors()}
  def modify_replication_subnet_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReplicationSubnetGroup", input, options)
  end

  @doc """
  Modifies the specified replication task.

  You can't modify the task endpoints. The task must be stopped before you can
  modify it.

  For more information about DMS tasks, see [Working with Migration Tasks](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in the
  *Database Migration Service User Guide*.
  """
  @spec modify_replication_task(map(), modify_replication_task_message(), list()) ::
          {:ok, modify_replication_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_replication_task_errors()}
  def modify_replication_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyReplicationTask", input, options)
  end

  @doc """
  Moves a replication task from its current replication instance to a different
  target
  replication instance using the specified parameters.

  The target replication instance must
  be created with the same or later DMS version as the current replication
  instance.
  """
  @spec move_replication_task(map(), move_replication_task_message(), list()) ::
          {:ok, move_replication_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, move_replication_task_errors()}
  def move_replication_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MoveReplicationTask", input, options)
  end

  @doc """
  Reboots a replication instance.

  Rebooting results in a momentary outage, until the
  replication instance becomes available again.
  """
  @spec reboot_replication_instance(map(), reboot_replication_instance_message(), list()) ::
          {:ok, reboot_replication_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reboot_replication_instance_errors()}
  def reboot_replication_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootReplicationInstance", input, options)
  end

  @doc """
  Populates the schema for the specified endpoint.

  This is an asynchronous operation and
  can take several minutes. You can check the status of this operation by calling
  the
  DescribeRefreshSchemasStatus operation.
  """
  @spec refresh_schemas(map(), refresh_schemas_message(), list()) ::
          {:ok, refresh_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, refresh_schemas_errors()}
  def refresh_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RefreshSchemas", input, options)
  end

  @doc """
  Reloads the target database table with the source data for a given DMS
  Serverless
  replication configuration.

  You can only use this operation with a task in the RUNNING state, otherwise the
  service
  will throw an `InvalidResourceStateFault` exception.
  """
  @spec reload_replication_tables(map(), reload_replication_tables_message(), list()) ::
          {:ok, reload_replication_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reload_replication_tables_errors()}
  def reload_replication_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReloadReplicationTables", input, options)
  end

  @doc """
  Reloads the target database table with the source data.

  You can only use this operation with a task in the `RUNNING` state, otherwise
  the service will throw an `InvalidResourceStateFault` exception.
  """
  @spec reload_tables(map(), reload_tables_message(), list()) ::
          {:ok, reload_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reload_tables_errors()}
  def reload_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReloadTables", input, options)
  end

  @doc """
  Removes metadata tags from an DMS resource, including replication instance,
  endpoint,
  subnet group, and migration task.

  For more information, see [
  `Tag`
  ](https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data type
  description.
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_message(), list()) ::
          {:ok, remove_tags_from_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Runs large-scale assessment (LSA) analysis on every Fleet Advisor collector in
  your account.
  """
  @spec run_fleet_advisor_lsa_analysis(map(), %{}, list()) ::
          {:ok, run_fleet_advisor_lsa_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, run_fleet_advisor_lsa_analysis_errors()}
  def run_fleet_advisor_lsa_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RunFleetAdvisorLsaAnalysis", input, options)
  end

  @doc """
  Starts the specified data migration.
  """
  @spec start_data_migration(map(), start_data_migration_message(), list()) ::
          {:ok, start_data_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_data_migration_errors()}
  def start_data_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDataMigration", input, options)
  end

  @doc """
  Applies the extension pack to your target database.

  An extension pack is an add-on
  module that emulates functions present in a source database that are required
  when
  converting objects to the target database.
  """
  @spec start_extension_pack_association(
          map(),
          start_extension_pack_association_message(),
          list()
        ) ::
          {:ok, start_extension_pack_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_extension_pack_association_errors()}
  def start_extension_pack_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExtensionPackAssociation", input, options)
  end

  @doc """
  Creates a database migration assessment report by assessing the migration
  complexity for
  your source database.

  A database migration assessment report summarizes all of the schema
  conversion tasks. It also details the action items for database objects that
  can't be
  converted to the database engine of your target database instance.
  """
  @spec start_metadata_model_assessment(map(), start_metadata_model_assessment_message(), list()) ::
          {:ok, start_metadata_model_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metadata_model_assessment_errors()}
  def start_metadata_model_assessment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMetadataModelAssessment", input, options)
  end

  @doc """
  Converts your source database objects to a format compatible with the target
  database.
  """
  @spec start_metadata_model_conversion(map(), start_metadata_model_conversion_message(), list()) ::
          {:ok, start_metadata_model_conversion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metadata_model_conversion_errors()}
  def start_metadata_model_conversion(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMetadataModelConversion", input, options)
  end

  @doc """
  Saves your converted code to a file as a SQL script, and stores this file on
  your Amazon S3
  bucket.
  """
  @spec start_metadata_model_export_as_script(
          map(),
          start_metadata_model_export_as_script_message(),
          list()
        ) ::
          {:ok, start_metadata_model_export_as_script_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metadata_model_export_as_script_errors()}
  def start_metadata_model_export_as_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMetadataModelExportAsScript", input, options)
  end

  @doc """
  Applies converted database objects to your target database.
  """
  @spec start_metadata_model_export_to_target(
          map(),
          start_metadata_model_export_to_target_message(),
          list()
        ) ::
          {:ok, start_metadata_model_export_to_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metadata_model_export_to_target_errors()}
  def start_metadata_model_export_to_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMetadataModelExportToTarget", input, options)
  end

  @doc """
  Loads the metadata for all the dependent database objects of the parent object.

  This operation uses your project's Amazon S3 bucket as a metadata cache to
  improve
  performance.
  """
  @spec start_metadata_model_import(map(), start_metadata_model_import_message(), list()) ::
          {:ok, start_metadata_model_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_metadata_model_import_errors()}
  def start_metadata_model_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMetadataModelImport", input, options)
  end

  @doc """
  Starts the analysis of your source database to provide recommendations of target
  engines.

  You can create recommendations for multiple source databases using
  [BatchStartRecommendations](https://docs.aws.amazon.com/dms/latest/APIReference/API_BatchStartRecommendations.html).
  """
  @spec start_recommendations(map(), start_recommendations_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_recommendations_errors()}
  def start_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartRecommendations", input, options)
  end

  @doc """
  For a given DMS Serverless replication configuration, DMS connects to the source
  endpoint and collects the metadata to analyze the replication workload.

  Using this
  metadata, DMS then computes and provisions the required capacity and starts
  replicating
  to the target endpoint using the server resources that DMS has provisioned for
  the DMS
  Serverless replication.
  """
  @spec start_replication(map(), start_replication_message(), list()) ::
          {:ok, start_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_replication_errors()}
  def start_replication(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartReplication", input, options)
  end

  @doc """
  Starts the replication task.

  For more information about DMS tasks, see [Working with Migration Tasks
  ](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in the
  *Database Migration Service User Guide.*
  """
  @spec start_replication_task(map(), start_replication_task_message(), list()) ::
          {:ok, start_replication_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_replication_task_errors()}
  def start_replication_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartReplicationTask", input, options)
  end

  @doc """
  Starts the replication task assessment for unsupported data types in the source
  database.

  You can only use this operation for a task if the following conditions are true:

    *
  The task must be in the `stopped` state.

    *
  The task must have successful connections to the source and target.

  If either of these conditions are not met, an `InvalidResourceStateFault`
  error will result.

  For information about DMS task assessments, see [Creating a task assessment report](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html)
  in the *Database Migration Service User
  Guide*.
  """
  @spec start_replication_task_assessment(
          map(),
          start_replication_task_assessment_message(),
          list()
        ) ::
          {:ok, start_replication_task_assessment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_replication_task_assessment_errors()}
  def start_replication_task_assessment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartReplicationTaskAssessment", input, options)
  end

  @doc """
  Starts a new premigration assessment run for one or more individual assessments
  of a
  migration task.

  The assessments that you can specify depend on the source and target database
  engine and
  the migration type defined for the given task. To run this operation, your
  migration task
  must already be created. After you run this operation, you can review the status
  of each
  individual assessment. You can also run the migration task manually after the
  assessment
  run and its individual assessments complete.
  """
  @spec start_replication_task_assessment_run(
          map(),
          start_replication_task_assessment_run_message(),
          list()
        ) ::
          {:ok, start_replication_task_assessment_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_replication_task_assessment_run_errors()}
  def start_replication_task_assessment_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartReplicationTaskAssessmentRun", input, options)
  end

  @doc """
  Stops the specified data migration.
  """
  @spec stop_data_migration(map(), stop_data_migration_message(), list()) ::
          {:ok, stop_data_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_data_migration_errors()}
  def stop_data_migration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDataMigration", input, options)
  end

  @doc """
  For a given DMS Serverless replication configuration, DMS stops any and all
  ongoing
  DMS Serverless replications.

  This command doesn't deprovision the stopped
  replications.
  """
  @spec stop_replication(map(), stop_replication_message(), list()) ::
          {:ok, stop_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_replication_errors()}
  def stop_replication(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopReplication", input, options)
  end

  @doc """
  Stops the replication task.
  """
  @spec stop_replication_task(map(), stop_replication_task_message(), list()) ::
          {:ok, stop_replication_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_replication_task_errors()}
  def stop_replication_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopReplicationTask", input, options)
  end

  @doc """
  Tests the connection between the replication instance and the endpoint.
  """
  @spec test_connection(map(), test_connection_message(), list()) ::
          {:ok, test_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, test_connection_errors()}
  def test_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestConnection", input, options)
  end

  @doc """
  Migrates 10 active and enabled Amazon SNS subscriptions at a time and converts
  them to
  corresponding Amazon EventBridge rules.

  By default, this operation migrates subscriptions
  only when all your replication instance versions are 3.4.5 or higher. If any
  replication
  instances are from versions earlier than 3.4.5, the operation raises an error
  and tells you
  to upgrade these instances to version 3.4.5 or higher. To enable migration
  regardless of
  version, set the `Force` option to true. However, if you don't upgrade instances
  earlier than version 3.4.5, some types of events might not be available when you
  use Amazon
  EventBridge.

  To call this operation, make sure that you have certain permissions added to
  your user
  account. For more information, see [Migrating event subscriptions to Amazon EventBridge](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html#CHAP_Events-migrate-to-eventbridge)
  in the
  *Amazon Web Services Database Migration Service User Guide*.
  """
  @spec update_subscriptions_to_event_bridge(
          map(),
          update_subscriptions_to_event_bridge_message(),
          list()
        ) ::
          {:ok, update_subscriptions_to_event_bridge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscriptions_to_event_bridge_errors()}
  def update_subscriptions_to_event_bridge(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSubscriptionsToEventBridge", input, options)
  end
end
