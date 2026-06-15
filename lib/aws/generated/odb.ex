# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Odb do
  @moduledoc """
  Oracle Database@Amazon Web Services is an offering that enables you to access
  Oracle Exadata infrastructure managed by Oracle Cloud Infrastructure (OCI)
  inside Amazon Web Services data centers.

  You can migrate your Oracle Exadata workloads, establish low-latency
  connectivity with applications running on Amazon Web Services, and integrate
  with Amazon Web Services services. For example, you can run application servers
  in a Virtual Private Cloud (VPC) and access an Oracle Exadata system running in
  Oracle Database@Amazon Web Services. You can get started with Oracle
  Database@Amazon Web Services by using the familiar Amazon Web Services
  Management Console, APIs, or CLI.

  This interface reference for Oracle Database@Amazon Web Services contains
  documentation for a programming or command line interface that you can use to
  manage Oracle Database@Amazon Web Services. Oracle Database@Amazon Web Services
  is asynchronous, which means that some interfaces might require techniques such
  as polling or callback functions to determine when a command has been applied.
  The reference structure is as follows.

  ## Oracle Database@Amazon Web Services API Reference

    * For the alphabetical list of API actions, see [API Actions](https://docs.aws.amazon.com/odb/latest/APIReference/API_Operations.html).

    * For the alphabetical list of data types, see [Data Types](https://docs.aws.amazon.com/odb/latest/APIReference/API_Types.html).

    * For a list of common query parameters, see [Common Parameters](https://docs.aws.amazon.com/odb/latest/APIReference/CommonParameters.html).

    * For descriptions of the error codes, see [Common Errors](https://docs.aws.amazon.com/odb/latest/APIReference/CommonErrors.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      initialize_service_output() :: %{}
      
  """
  @type initialize_service_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_odb_peering_connection_output() :: %{}
      
  """
  @type delete_odb_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      cross_region_disaster_recovery_configuration() :: %{
        "isReplicateAutomaticBackups" => [boolean()],
        "remoteDisasterRecoveryType" => list(any()),
        "sourceAutonomousDatabaseArn" => String.t() | atom()
      }
      
  """
  @type cross_region_disaster_recovery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type start_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_database_backup_summary() :: %{
        "autonomousDatabaseBackupArn" => String.t() | atom(),
        "autonomousDatabaseBackupId" => String.t() | atom(),
        "autonomousDatabaseId" => String.t() | atom(),
        "dbVersion" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "isAutomatic" => [boolean()],
        "ocid" => [String.t() | atom()],
        "retentionPeriodInDays" => [integer()],
        "sizeInTBs" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "timeAvailableTill" => [non_neg_integer()],
        "timeEnded" => [non_neg_integer()],
        "timeStarted" => [non_neg_integer()],
        "type" => list(any())
      }
      
  """
  @type autonomous_database_backup_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_collection_options() :: %{
        "isDiagnosticsEventsEnabled" => [boolean()],
        "isHealthMonitoringEnabled" => [boolean()],
        "isIncidentLogsEnabled" => [boolean()]
      }
      
  """
  @type data_collection_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customer_contact() :: %{
        "email" => String.t() | atom()
      }
      
  """
  @type customer_contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_odb_peering_connection_input() :: %{}
      
  """
  @type delete_odb_peering_connection_input() :: %{}

  @typedoc """

  ## Example:
      
      autonomous_database_summary() :: %{
        "ociResourceAnchorName" => [String.t() | atom()],
        "sqlWebDeveloperUrl" => [String.t() | atom()],
        "autoRefreshPointLagInSeconds" => [integer()],
        "createdAt" => [non_neg_integer()],
        "privateEndpointLabel" => [String.t() | atom()],
        "refreshableStatus" => list(any()),
        "odbNetworkArn" => String.t() | atom(),
        "dbName" => [String.t() | atom()],
        "isRefreshableClone" => [boolean()],
        "inMemoryAreaInGBs" => [integer()],
        "operationsInsightsStatus" => list(any()),
        "timeOfLastRefreshPoint" => [non_neg_integer()],
        "standbyAllowlistedIpsSource" => list(any()),
        "ocid" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "timeOfAutoRefreshStart" => [non_neg_integer()],
        "provisionableCpus" => list([integer()]()),
        "ociUrl" => [String.t() | atom()],
        "isRemoteDataGuardEnabled" => [boolean()],
        "permissionLevel" => list(any()),
        "isAutoScalingEnabled" => [boolean()],
        "serviceConsoleUrl" => [String.t() | atom()],
        "databaseEdition" => list(any()),
        "timeOfLastSwitchover" => [non_neg_integer()],
        "isReconnectCloneEnabled" => [boolean()],
        "localAdgAutoFailoverMaxDataLossLimit" => [integer()],
        "timeMaintenanceEnd" => [non_neg_integer()],
        "apexDetails" => autonomous_database_apex(),
        "dbToolsDetails" => list(database_tool()),
        "role" => list(any()),
        "failedDataRecoveryInSeconds" => [integer()],
        "privateEndpointIp" => [String.t() | atom()],
        "resourcePoolSummary" => resource_pool_summary(),
        "displayName" => [String.t() | atom()],
        "isLocalDataGuardEnabled" => [boolean()],
        "cloneTableSpaceList" => list([integer()]()),
        "timeDisasterRecoveryRoleChanged" => [non_neg_integer()],
        "status" => list(any()),
        "dbWorkload" => list(any()),
        "longTermBackupSchedule" => long_term_backup_schedule(),
        "autonomousDatabaseId" => String.t() | atom(),
        "timeMaintenanceBegin" => [non_neg_integer()],
        "characterSet" => [String.t() | atom()],
        "customerContacts" => list(customer_contact()),
        "dataSafeStatus" => list(any()),
        "standbyAllowlistedIps" => list([String.t() | atom()]()),
        "localStandbyDb" => database_standby_summary(),
        "availabilityZone" => [String.t() | atom()],
        "usedDataStorageSizeInGBs" => [integer()],
        "dbVersion" => [String.t() | atom()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "timeReclamationOfFreeAutonomousDatabase" => [non_neg_integer()],
        "licenseModel" => list(any()),
        "timeOfLastBackup" => [non_neg_integer()],
        "privateEndpoint" => [String.t() | atom()],
        "timeOfNextRefresh" => [non_neg_integer()],
        "connectionUrls" => autonomous_database_connection_urls(),
        "databaseType" => list(any()),
        "computeModel" => list(any()),
        "isAutoScalingForStorageEnabled" => [boolean()],
        "timeOfLastFailover" => [non_neg_integer()],
        "backupRetentionPeriodInDays" => [integer()],
        "localDisasterRecoveryType" => list(any()),
        "isMtlsConnectionRequired" => [boolean()],
        "nextLongTermBackupTimeStamp" => [non_neg_integer()],
        "encryptionSummary" => encryption_summary(),
        "timeDeletionOfFreeAutonomousDatabase" => [non_neg_integer()],
        "netServicesArchitecture" => list(any()),
        "allowlistedIps" => list([String.t() | atom()]()),
        "availabilityZoneId" => [String.t() | atom()],
        "sourceId" => [String.t() | atom()],
        "resourcePoolLeaderId" => [String.t() | atom()],
        "dataStorageSizeInGBs" => [integer()],
        "autonomousDatabaseArn" => String.t() | atom(),
        "refreshableMode" => list(any()),
        "standbyDb" => database_standby_summary(),
        "odbNetworkId" => String.t() | atom(),
        "timeDataGuardRoleChanged" => [non_neg_integer()],
        "timeLocalDataGuardEnabled" => [non_neg_integer()],
        "allocatedStorageSizeInTBs" => [float()],
        "timeUntilReconnectCloneEnabled" => [non_neg_integer()],
        "byolComputeCountLimit" => [integer()],
        "timeUndeleted" => [non_neg_integer()],
        "openMode" => list(any()),
        "scheduledOperations" => list(scheduled_operation_details()),
        "peerDbIds" => list([String.t() | atom()]()),
        "isBackupRetentionLocked" => [boolean()],
        "timeOfLastRefresh" => [non_neg_integer()],
        "databaseManagementStatus" => list(any()),
        "autonomousMaintenanceScheduleType" => list(any()),
        "autoRefreshFrequencyInSeconds" => [integer()],
        "availableUpgradeVersions" => list([String.t() | atom()]()),
        "totalBackupStorageSizeInGBs" => [float()],
        "ncharacterSet" => [String.t() | atom()],
        "computeCount" => [float()],
        "maintenanceTargetComponent" => [String.t() | atom()],
        "remoteDisasterRecoveryConfiguration" => disaster_recovery_configuration(),
        "usedDataStorageSizeInTBs" => [float()],
        "statusReason" => [String.t() | atom()],
        "actualUsedDataStorageSizeInTBs" => [float()],
        "connectionStringDetails" => autonomous_database_connection_strings(),
        "percentProgress" => [float()]
      }
      
  """
  @type autonomous_database_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cloud_autonomous_vm_clusters_output() :: %{
        "cloudAutonomousVmClusters" => list(cloud_autonomous_vm_cluster_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_cloud_autonomous_vm_clusters_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_vm_cluster_output() :: %{
        "cloudVmCluster" => cloud_vm_cluster()
      }
      
  """
  @type get_cloud_vm_cluster_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_odb_network_input() :: %{
        optional("crossRegionS3RestoreSourcesToDisable") => list([String.t() | atom()]()),
        optional("crossRegionS3RestoreSourcesToEnable") => list([String.t() | atom()]()),
        optional("displayName") => String.t() | atom(),
        optional("kmsAccess") => list(any()),
        optional("kmsPolicyDocument") => String.t() | atom(),
        optional("peeredCidrsToBeAdded") => list([String.t() | atom()]()),
        optional("peeredCidrsToBeRemoved") => list([String.t() | atom()]()),
        optional("s3Access") => list(any()),
        optional("s3PolicyDocument") => String.t() | atom(),
        optional("stsAccess") => list(any()),
        optional("stsPolicyDocument") => String.t() | atom(),
        optional("zeroEtlAccess") => list(any())
      }
      
  """
  @type update_odb_network_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      odb_peering_connection() :: %{
        "createdAt" => [non_neg_integer()],
        "displayName" => [String.t() | atom()],
        "odbNetworkArn" => [String.t() | atom()],
        "odbPeeringConnectionArn" => [String.t() | atom()],
        "odbPeeringConnectionId" => String.t() | atom(),
        "odbPeeringConnectionType" => [String.t() | atom()],
        "peerNetworkArn" => [String.t() | atom()],
        "peerNetworkCidrs" => list(String.t() | atom()),
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type odb_peering_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_vm_cluster_output() :: %{}
      
  """
  @type delete_cloud_vm_cluster_output() :: %{}

  @typedoc """

  ## Example:
      
      create_odb_peering_connection_output() :: %{
        "displayName" => [String.t() | atom()],
        "odbPeeringConnectionId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type create_odb_peering_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      oci_iam_role() :: %{
        "awsIntegration" => list(any()),
        "iamRoleArn" => String.t() | atom()
      }
      
  """
  @type oci_iam_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_db_nodes_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_db_nodes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cloud_autonomous_vm_clusters_input() :: %{
        optional("cloudExadataInfrastructureId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_cloud_autonomous_vm_clusters_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_oci_onboarding_status_input() :: %{}
      
  """
  @type get_oci_onboarding_status_input() :: %{}

  @typedoc """

  ## Example:
      
      shrink_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type shrink_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_exadata_infrastructure_input() :: %{}
      
  """
  @type delete_cloud_exadata_infrastructure_input() :: %{}

  @typedoc """

  ## Example:
      
      subscription_error() :: %{
        "errorMessage" => [String.t() | atom()]
      }
      
  """
  @type subscription_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      odb_peering_connection_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "displayName" => [String.t() | atom()],
        "odbNetworkArn" => [String.t() | atom()],
        "odbPeeringConnectionArn" => [String.t() | atom()],
        "odbPeeringConnectionId" => String.t() | atom(),
        "odbPeeringConnectionType" => [String.t() | atom()],
        "peerNetworkArn" => [String.t() | atom()],
        "peerNetworkCidrs" => list(String.t() | atom()),
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type odb_peering_connection_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_db_node_output() :: %{
        "dbNodeId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type start_db_node_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_virtual_machines_output() :: %{
        "autonomousVirtualMachines" => list(autonomous_virtual_machine_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_virtual_machines_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      point_in_time_restore_configuration() :: %{
        "cloneTableSpaceList" => list([integer()]()),
        "cloneType" => list(any()),
        "sourceAutonomousDatabaseId" => String.t() | atom(),
        "timestamp" => [non_neg_integer()],
        "useLatestAvailableBackupTimestamp" => [boolean()]
      }
      
  """
  @type point_in_time_restore_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_db_node_output() :: %{
        "dbNodeId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type stop_db_node_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      month() :: %{
        "name" => list(any())
      }
      
  """
  @type month() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type stop_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_iam_role_from_resource_input() :: %{
        required("awsIntegration") => list(any()),
        required("iamRoleArn") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type disassociate_iam_role_from_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_character_sets_input() :: %{
        optional("characterSetType") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_character_sets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_autonomous_database_wallet_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("walletType") => list(any()),
        required("autonomousDatabaseId") => String.t() | atom(),
        required("password") => String.t() | atom()
      }
      
  """
  @type create_autonomous_database_wallet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_autonomous_database_input() :: %{
        optional("odbNetworkId") => String.t() | atom(),
        optional("resourcePoolLeaderId") => String.t() | atom(),
        optional("cpuCoreCount") => [integer()],
        optional("privateEndpointIp") => [String.t() | atom()],
        optional("standbyAllowlistedIps") => list([String.t() | atom()]()),
        optional("clientToken") => String.t() | atom(),
        optional("isBackupRetentionLocked") => [boolean()],
        optional("isAutoScalingForStorageEnabled") => [boolean()],
        optional("autonomousMaintenanceScheduleType") => list(any()),
        optional("adminPassword") => String.t() | atom(),
        optional("encryptionKeyConfiguration") => list(),
        optional("dbToolsDetails") => list(database_tool()),
        optional("dataStorageSizeInGBs") => [integer()],
        optional("licenseModel") => list(any()),
        optional("sourceConfiguration") => list(),
        optional("dataStorageSizeInTBs") => [integer()],
        optional("databaseEdition") => list(any()),
        optional("transportableTablespace") => transportable_tablespace(),
        optional("computeCount") => [float()],
        optional("isMtlsConnectionRequired") => [boolean()],
        optional("allowlistedIps") => list([String.t() | atom()]()),
        optional("byolComputeCountLimit") => [float()],
        optional("displayName") => String.t() | atom(),
        optional("encryptionKeyProvider") => list(any()),
        optional("tags") => map(),
        optional("privateEndpointLabel") => [String.t() | atom()],
        optional("ncharacterSet") => [String.t() | atom()],
        optional("source") => list(any()),
        optional("dbWorkload") => list(any()),
        optional("dbVersion") => [String.t() | atom()],
        optional("isAutoScalingEnabled") => [boolean()],
        optional("isLocalDataGuardEnabled") => [boolean()],
        optional("customerContactsToSendToOCI") => list(customer_contact()),
        optional("characterSet") => [String.t() | atom()],
        optional("dbName") => [String.t() | atom()],
        optional("resourcePoolSummary") => resource_pool_summary(),
        optional("backupRetentionPeriodInDays") => [integer()],
        optional("scheduledOperations") => list(scheduled_operation_details()),
        optional("standbyAllowlistedIpsSource") => list(any())
      }
      
  """
  @type create_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_odb_network_input() :: %{
        optional("availabilityZone") => [String.t() | atom()],
        optional("availabilityZoneId") => [String.t() | atom()],
        optional("backupSubnetCidr") => [String.t() | atom()],
        optional("clientToken") => String.t() | atom(),
        optional("crossRegionS3RestoreSourcesToEnable") => list([String.t() | atom()]()),
        optional("customDomainName") => [String.t() | atom()],
        optional("defaultDnsPrefix") => [String.t() | atom()],
        optional("kmsAccess") => list(any()),
        optional("kmsPolicyDocument") => String.t() | atom(),
        optional("s3Access") => list(any()),
        optional("s3PolicyDocument") => String.t() | atom(),
        optional("stsAccess") => list(any()),
        optional("stsPolicyDocument") => String.t() | atom(),
        optional("tags") => map(),
        optional("zeroEtlAccess") => list(any()),
        required("clientSubnetCidr") => [String.t() | atom()],
        required("displayName") => String.t() | atom()
      }
      
  """
  @type create_odb_network_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_db_node_input() :: %{}
      
  """
  @type start_db_node_input() :: %{}

  @typedoc """

  ## Example:
      
      managed_s3_backup_access() :: %{
        "ipv4Addresses" => list([String.t() | atom()]()),
        "status" => list(any())
      }
      
  """
  @type managed_s3_backup_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      gi_version_summary() :: %{
        "version" => [String.t() | atom()]
      }
      
  """
  @type gi_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_odb_peering_connection_input() :: %{
        optional("displayName") => String.t() | atom(),
        optional("peerNetworkCidrsToBeAdded") => list(String.t() | atom()),
        optional("peerNetworkCidrsToBeRemoved") => list(String.t() | atom())
      }
      
  """
  @type update_odb_peering_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_exadata_infrastructure_unallocated_resources_output() :: %{
        "cloudExadataInfrastructureUnallocatedResources" => cloud_exadata_infrastructure_unallocated_resources()
      }
      
  """
  @type get_cloud_exadata_infrastructure_unallocated_resources_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_odb_network_input() :: %{
        required("deleteAssociatedResources") => [boolean()]
      }
      
  """
  @type delete_odb_network_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_marketplace_registration_input() :: %{
        required("marketplaceRegistrationToken") => [String.t() | atom()]
      }
      
  """
  @type accept_marketplace_registration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_db_node_input() :: %{}
      
  """
  @type stop_db_node_input() :: %{}

  @typedoc """

  ## Example:
      
      database_clone_configuration() :: %{
        "cloneType" => list(any()),
        "sourceAutonomousDatabaseId" => String.t() | atom()
      }
      
  """
  @type database_clone_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_autonomous_database_input() :: %{
        required("autonomousDatabaseId") => String.t() | atom(),
        required("timestamp") => [non_neg_integer()]
      }
      
  """
  @type restore_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_exadata_infrastructure_output() :: %{}
      
  """
  @type delete_cloud_exadata_infrastructure_output() :: %{}

  @typedoc """

  ## Example:
      
      kms_access() :: %{
        "domainName" => [String.t() | atom()],
        "ipv4Addresses" => list([String.t() | atom()]()),
        "kmsPolicyDocument" => [String.t() | atom()],
        "status" => list(any())
      }
      
  """
  @type kms_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_exadata_infrastructure_unallocated_resources_input() :: %{
        optional("dbServers") => list([String.t() | atom()]())
      }
      
  """
  @type get_cloud_exadata_infrastructure_unallocated_resources_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_db_servers_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_db_servers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_gi_versions_output() :: %{
        "giVersions" => list(gi_version_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_gi_versions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_autonomous_vm_cluster_output() :: %{
        "cloudAutonomousVmCluster" => cloud_autonomous_vm_cluster()
      }
      
  """
  @type get_cloud_autonomous_vm_cluster_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_node_summary() :: %{
        "additionalDetails" => [String.t() | atom()],
        "backupIpId" => [String.t() | atom()],
        "backupVnic2Id" => [String.t() | atom()],
        "backupVnicId" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeArn" => String.t() | atom(),
        "dbNodeId" => String.t() | atom(),
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t() | atom(),
        "dbSystemId" => [String.t() | atom()],
        "faultDomain" => [String.t() | atom()],
        "hostIpId" => [String.t() | atom()],
        "hostname" => [String.t() | atom()],
        "maintenanceType" => list(any()),
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "ocid" => [String.t() | atom()],
        "softwareStorageSizeInGB" => [integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "timeMaintenanceWindowEnd" => [String.t() | atom()],
        "timeMaintenanceWindowStart" => [String.t() | atom()],
        "totalCpuCoreCount" => [integer()],
        "vnic2Id" => [String.t() | atom()],
        "vnicId" => [String.t() | atom()]
      }
      
  """
  @type db_node_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      oci_dns_forwarding_config() :: %{
        "domainName" => [String.t() | atom()],
        "ociDnsListenerIp" => [String.t() | atom()]
      }
      
  """
  @type oci_dns_forwarding_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_services() :: %{
        "crossRegionS3RestoreSourcesAccess" => list(cross_region_s3_restore_sources_access()),
        "kmsAccess" => kms_access(),
        "managedS3BackupAccess" => managed_s3_backup_access(),
        "managedServicesIpv4Cidrs" => list([String.t() | atom()]()),
        "resourceGatewayArn" => String.t() | atom(),
        "s3Access" => s3_access(),
        "serviceNetworkArn" => String.t() | atom(),
        "serviceNetworkEndpoint" => service_network_endpoint(),
        "stsAccess" => sts_access(),
        "zeroEtlAccess" => zero_etl_access()
      }
      
  """
  @type managed_services() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_odb_network_output() :: %{}
      
  """
  @type delete_odb_network_output() :: %{}

  @typedoc """

  ## Example:
      
      database_tool() :: %{
        "computeCount" => [float()],
        "isEnabled" => [boolean()],
        "maxIdleTimeInMinutes" => [integer()],
        "name" => [String.t() | atom()]
      }
      
  """
  @type database_tool() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cloud_exadata_infrastructures_output() :: %{
        "cloudExadataInfrastructures" => list(cloud_exadata_infrastructure_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_cloud_exadata_infrastructures_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      oci_identity_domain() :: %{
        "accountSetupCloudFormationUrl" => [String.t() | atom()],
        "ociIdentityDomainId" => [String.t() | atom()],
        "ociIdentityDomainResourceUrl" => [String.t() | atom()],
        "ociIdentityDomainUrl" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type oci_identity_domain() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cross_region_data_guard_configuration() :: %{
        "sourceAutonomousDatabaseArn" => String.t() | atom()
      }
      
  """
  @type cross_region_data_guard_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_odb_peering_connections_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("odbNetworkId") => String.t() | atom()
      }
      
  """
  @type list_odb_peering_connections_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_exadata_infrastructure_input() :: %{}
      
  """
  @type get_cloud_exadata_infrastructure_input() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_iam_role_from_resource_output() :: %{}
      
  """
  @type disassociate_iam_role_from_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_cloud_vm_clusters_output() :: %{
        "cloudVmClusters" => list(cloud_vm_cluster_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_cloud_vm_clusters_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type update_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_autonomous_database_input() :: %{
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type stop_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_clones_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_clones_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_autonomous_vm_cluster_output() :: %{
        "cloudAutonomousVmClusterId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type create_cloud_autonomous_vm_cluster_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_iam_role_to_resource_output() :: %{}
      
  """
  @type associate_iam_role_to_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      get_odb_peering_connection_output() :: %{
        "odbPeeringConnection" => odb_peering_connection()
      }
      
  """
  @type get_odb_peering_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_peers_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_peers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_autonomous_database_input() :: %{
        optional("peerDbArn") => String.t() | atom(),
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type failover_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type create_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_gi_versions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("shape") => [String.t() | atom()]
      }
      
  """
  @type list_gi_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      system_version_summary() :: %{
        "giVersion" => [String.t() | atom()],
        "shape" => [String.t() | atom()],
        "systemVersions" => list([String.t() | atom()]())
      }
      
  """
  @type system_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      day_of_week() :: %{
        "name" => list(any())
      }
      
  """
  @type day_of_week() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_system_shape_summary() :: %{
        "areServerTypesSupported" => [boolean()],
        "availableCoreCount" => [integer()],
        "availableCoreCountPerNode" => [integer()],
        "availableDataStorageInTBs" => [integer()],
        "availableDataStoragePerServerInTBs" => [integer()],
        "availableDbNodePerNodeInGBs" => [integer()],
        "availableDbNodeStorageInGBs" => [integer()],
        "availableMemoryInGBs" => [integer()],
        "availableMemoryPerNodeInGBs" => [integer()],
        "computeModel" => list(any()),
        "coreCountIncrement" => [integer()],
        "maxStorageCount" => [integer()],
        "maximumNodeCount" => [integer()],
        "minCoreCountPerNode" => [integer()],
        "minDataStorageInTBs" => [integer()],
        "minDbNodeStoragePerNodeInGBs" => [integer()],
        "minMemoryPerNodeInGBs" => [integer()],
        "minStorageCount" => [integer()],
        "minimumCoreCount" => [integer()],
        "minimumNodeCount" => [integer()],
        "name" => [String.t() | atom()],
        "runtimeMinimumCoreCount" => [integer()],
        "shapeFamily" => [String.t() | atom()],
        "shapeType" => list(any())
      }
      
  """
  @type db_system_shape_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_vm_cluster_output() :: %{
        "cloudVmClusterId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type create_cloud_vm_cluster_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_server() :: %{
        "autonomousVirtualMachineIds" => list([String.t() | atom()]()),
        "autonomousVmClusterIds" => list([String.t() | atom()]()),
        "computeModel" => list(any()),
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t() | atom(),
        "dbServerPatchingDetails" => db_server_patching_details(),
        "displayName" => [String.t() | atom()],
        "exadataInfrastructureId" => [String.t() | atom()],
        "maxCpuCount" => [integer()],
        "maxDbNodeStorageInGBs" => [integer()],
        "maxMemoryInGBs" => [integer()],
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "ocid" => [String.t() | atom()],
        "shape" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "vmClusterIds" => list([String.t() | atom()]())
      }
      
  """
  @type db_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_databases_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_databases_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_exadata_infrastructure_summary() :: %{
        "maxDataStorageInTBs" => [float()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "ocid" => [String.t() | atom()],
        "maxDbNodeStorageSizeInGBs" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "ociUrl" => [String.t() | atom()],
        "monthlyStorageServerVersion" => [String.t() | atom()],
        "availableStorageSizeInGBs" => [integer()],
        "dbServerVersion" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "totalStorageSizeInGBs" => [integer()],
        "status" => list(any()),
        "availabilityZone" => [String.t() | atom()],
        "customerContactsToSendToOCI" => list(customer_contact()),
        "dataStorageSizeInTBs" => [float()],
        "cpuCount" => [integer()],
        "maxCpuCount" => [integer()],
        "activatedStorageCount" => [integer()],
        "computeModel" => list(any()),
        "nextMaintenanceRunId" => [String.t() | atom()],
        "availabilityZoneId" => [String.t() | atom()],
        "monthlyDbServerVersion" => [String.t() | atom()],
        "databaseServerType" => [String.t() | atom()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "storageServerVersion" => [String.t() | atom()],
        "storageCount" => [integer()],
        "cloudExadataInfrastructureArn" => [String.t() | atom()],
        "lastMaintenanceRunId" => [String.t() | atom()],
        "additionalStorageCount" => [integer()],
        "maxMemoryInGBs" => [integer()],
        "storageServerType" => [String.t() | atom()],
        "computeCount" => [integer()],
        "shape" => [String.t() | atom()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "percentProgress" => [float()]
      }
      
  """
  @type cloud_exadata_infrastructure_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_exadata_infrastructure_output() :: %{
        "cloudExadataInfrastructureId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type create_cloud_exadata_infrastructure_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_odb_networks_output() :: %{
        "nextToken" => [String.t() | atom()],
        "odbNetworks" => list(odb_network_summary())
      }
      
  """
  @type list_odb_networks_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_versions_input() :: %{
        optional("dbWorkload") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      shrink_autonomous_database_input() :: %{
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type shrink_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_server_patching_details() :: %{
        "estimatedPatchDuration" => [integer()],
        "patchingStatus" => list(any()),
        "timePatchingEnded" => [String.t() | atom()],
        "timePatchingStarted" => [String.t() | atom()]
      }
      
  """
  @type db_server_patching_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_access() :: %{
        "domainName" => [String.t() | atom()],
        "ipv4Addresses" => list([String.t() | atom()]()),
        "s3PolicyDocument" => [String.t() | atom()],
        "status" => list(any())
      }
      
  """
  @type s3_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      database_connection_string_profile() :: %{
        "consumerGroup" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "hostFormat" => [String.t() | atom()],
        "isRegional" => [boolean()],
        "protocol" => [String.t() | atom()],
        "sessionMode" => [String.t() | atom()],
        "syntaxFormat" => [String.t() | atom()],
        "tlsAuthentication" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }
      
  """
  @type database_connection_string_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_odb_peering_connection_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("peerNetworkCidrsToBeAdded") => list(String.t() | atom()),
        optional("peerNetworkRouteTableIds") => list(String.t() | atom()),
        optional("tags") => map(),
        required("odbNetworkId") => String.t() | atom(),
        required("peerNetworkId") => String.t() | atom()
      }
      
  """
  @type create_odb_peering_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_odb_network_output() :: %{
        "odbNetwork" => odb_network()
      }
      
  """
  @type get_odb_network_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_db_node_input() :: %{}
      
  """
  @type reboot_db_node_input() :: %{}

  @typedoc """

  ## Example:
      
      create_odb_network_output() :: %{
        "displayName" => [String.t() | atom()],
        "odbNetworkId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type create_odb_network_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_database_version_summary() :: %{
        "dbWorkload" => list(any()),
        "details" => [String.t() | atom()],
        "version" => [String.t() | atom()]
      }
      
  """
  @type autonomous_database_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_vm_cluster_input() :: %{}
      
  """
  @type get_cloud_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      autonomous_database_peer_summary() :: %{
        "autonomousDatabaseArn" => String.t() | atom(),
        "autonomousDatabaseId" => String.t() | atom(),
        "ocid" => [String.t() | atom()],
        "region" => [String.t() | atom()]
      }
      
  """
  @type autonomous_database_peer_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_autonomous_database_backup_output() :: %{}
      
  """
  @type delete_autonomous_database_backup_output() :: %{}

  @typedoc """

  ## Example:
      
      cloud_vm_cluster_summary() :: %{
        "ociResourceAnchorName" => [String.t() | atom()],
        "scanIpIds" => list([String.t() | atom()]()),
        "clusterName" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "odbNetworkArn" => String.t() | atom(),
        "ocid" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "isLocalBackupEnabled" => [boolean()],
        "ociUrl" => [String.t() | atom()],
        "giVersion" => [String.t() | atom()],
        "scanDnsName" => [String.t() | atom()],
        "systemVersion" => [String.t() | atom()],
        "vipIds" => list([String.t() | atom()]()),
        "timeZone" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "lastUpdateHistoryEntryId" => [String.t() | atom()],
        "storageSizeInGBs" => [integer()],
        "status" => list(any()),
        "domain" => [String.t() | atom()],
        "dataStorageSizeInTBs" => [float()],
        "cloudVmClusterId" => String.t() | atom(),
        "licenseModel" => list(any()),
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "diskRedundancy" => list(any()),
        "scanDnsRecordId" => [String.t() | atom()],
        "odbNetworkId" => String.t() | atom(),
        "dbNodeStorageSizeInGBs" => [integer()],
        "sshPublicKeys" => list(String.t() | atom()),
        "hostname" => [String.t() | atom()],
        "listenerPort" => [integer()],
        "cloudExadataInfrastructureArn" => String.t() | atom(),
        "isSparseDiskgroupEnabled" => [boolean()],
        "cloudVmClusterArn" => [String.t() | atom()],
        "iamRoles" => list(iam_role()),
        "shape" => [String.t() | atom()],
        "iormConfigCache" => exadata_iorm_config(),
        "cloudExadataInfrastructureId" => [String.t() | atom()],
        "statusReason" => [String.t() | atom()],
        "dataCollectionOptions" => data_collection_options(),
        "dbServers" => list([String.t() | atom()]()),
        "memorySizeInGBs" => [integer()],
        "percentProgress" => [float()]
      }
      
  """
  @type cloud_vm_cluster_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_node() :: %{
        "additionalDetails" => [String.t() | atom()],
        "backupIpId" => [String.t() | atom()],
        "backupVnic2Id" => [String.t() | atom()],
        "backupVnicId" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeArn" => String.t() | atom(),
        "dbNodeId" => String.t() | atom(),
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t() | atom(),
        "dbSystemId" => [String.t() | atom()],
        "faultDomain" => [String.t() | atom()],
        "floatingIpAddress" => [String.t() | atom()],
        "hostIpId" => [String.t() | atom()],
        "hostname" => [String.t() | atom()],
        "maintenanceType" => list(any()),
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "ocid" => [String.t() | atom()],
        "privateIpAddress" => [String.t() | atom()],
        "softwareStorageSizeInGB" => [integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "timeMaintenanceWindowEnd" => [String.t() | atom()],
        "timeMaintenanceWindowStart" => [String.t() | atom()],
        "totalCpuCoreCount" => [integer()],
        "vnic2Id" => [String.t() | atom()],
        "vnicId" => [String.t() | atom()]
      }
      
  """
  @type db_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cloud_vm_clusters_input() :: %{
        optional("cloudExadataInfrastructureId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_cloud_vm_clusters_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_autonomous_database_backup_input() :: %{}
      
  """
  @type delete_autonomous_database_backup_input() :: %{}

  @typedoc """

  ## Example:
      
      get_autonomous_database_backup_input() :: %{}
      
  """
  @type get_autonomous_database_backup_input() :: %{}

  @typedoc """

  ## Example:
      
      autonomous_database() :: %{
        "ociResourceAnchorName" => [String.t() | atom()],
        "sqlWebDeveloperUrl" => [String.t() | atom()],
        "autoRefreshPointLagInSeconds" => [integer()],
        "createdAt" => [non_neg_integer()],
        "privateEndpointLabel" => [String.t() | atom()],
        "refreshableStatus" => list(any()),
        "odbNetworkArn" => String.t() | atom(),
        "dbName" => [String.t() | atom()],
        "isRefreshableClone" => [boolean()],
        "inMemoryAreaInGBs" => [integer()],
        "operationsInsightsStatus" => list(any()),
        "timeOfLastRefreshPoint" => [non_neg_integer()],
        "standbyAllowlistedIpsSource" => list(any()),
        "ocid" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "timeOfAutoRefreshStart" => [non_neg_integer()],
        "provisionableCpus" => list([integer()]()),
        "ociUrl" => [String.t() | atom()],
        "isRemoteDataGuardEnabled" => [boolean()],
        "permissionLevel" => list(any()),
        "isAutoScalingEnabled" => [boolean()],
        "serviceConsoleUrl" => [String.t() | atom()],
        "databaseEdition" => list(any()),
        "timeOfLastSwitchover" => [non_neg_integer()],
        "isReconnectCloneEnabled" => [boolean()],
        "localAdgAutoFailoverMaxDataLossLimit" => [integer()],
        "timeMaintenanceEnd" => [non_neg_integer()],
        "apexDetails" => autonomous_database_apex(),
        "dbToolsDetails" => list(database_tool()),
        "role" => list(any()),
        "failedDataRecoveryInSeconds" => [integer()],
        "privateEndpointIp" => [String.t() | atom()],
        "resourcePoolSummary" => resource_pool_summary(),
        "displayName" => [String.t() | atom()],
        "isLocalDataGuardEnabled" => [boolean()],
        "cloneTableSpaceList" => list([integer()]()),
        "timeDisasterRecoveryRoleChanged" => [non_neg_integer()],
        "status" => list(any()),
        "dbWorkload" => list(any()),
        "longTermBackupSchedule" => long_term_backup_schedule(),
        "autonomousDatabaseId" => String.t() | atom(),
        "timeMaintenanceBegin" => [non_neg_integer()],
        "characterSet" => [String.t() | atom()],
        "customerContacts" => list(customer_contact()),
        "dataSafeStatus" => list(any()),
        "standbyAllowlistedIps" => list([String.t() | atom()]()),
        "localStandbyDb" => database_standby_summary(),
        "availabilityZone" => [String.t() | atom()],
        "usedDataStorageSizeInGBs" => [integer()],
        "dbVersion" => [String.t() | atom()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "timeReclamationOfFreeAutonomousDatabase" => [non_neg_integer()],
        "licenseModel" => list(any()),
        "timeOfLastBackup" => [non_neg_integer()],
        "privateEndpoint" => [String.t() | atom()],
        "timeOfNextRefresh" => [non_neg_integer()],
        "connectionUrls" => autonomous_database_connection_urls(),
        "databaseType" => list(any()),
        "computeModel" => list(any()),
        "isAutoScalingForStorageEnabled" => [boolean()],
        "timeOfLastFailover" => [non_neg_integer()],
        "backupRetentionPeriodInDays" => [integer()],
        "localDisasterRecoveryType" => list(any()),
        "isMtlsConnectionRequired" => [boolean()],
        "nextLongTermBackupTimeStamp" => [non_neg_integer()],
        "encryptionSummary" => encryption_summary(),
        "timeDeletionOfFreeAutonomousDatabase" => [non_neg_integer()],
        "netServicesArchitecture" => list(any()),
        "allowlistedIps" => list([String.t() | atom()]()),
        "availabilityZoneId" => [String.t() | atom()],
        "sourceId" => [String.t() | atom()],
        "resourcePoolLeaderId" => [String.t() | atom()],
        "dataStorageSizeInGBs" => [integer()],
        "autonomousDatabaseArn" => String.t() | atom(),
        "refreshableMode" => list(any()),
        "standbyDb" => database_standby_summary(),
        "odbNetworkId" => String.t() | atom(),
        "timeDataGuardRoleChanged" => [non_neg_integer()],
        "timeLocalDataGuardEnabled" => [non_neg_integer()],
        "allocatedStorageSizeInTBs" => [float()],
        "timeUntilReconnectCloneEnabled" => [non_neg_integer()],
        "byolComputeCountLimit" => [integer()],
        "timeUndeleted" => [non_neg_integer()],
        "openMode" => list(any()),
        "scheduledOperations" => list(scheduled_operation_details()),
        "peerDbIds" => list([String.t() | atom()]()),
        "isBackupRetentionLocked" => [boolean()],
        "timeOfLastRefresh" => [non_neg_integer()],
        "databaseManagementStatus" => list(any()),
        "autonomousMaintenanceScheduleType" => list(any()),
        "autoRefreshFrequencyInSeconds" => [integer()],
        "availableUpgradeVersions" => list([String.t() | atom()]()),
        "totalBackupStorageSizeInGBs" => [float()],
        "ncharacterSet" => [String.t() | atom()],
        "computeCount" => [float()],
        "maintenanceTargetComponent" => [String.t() | atom()],
        "remoteDisasterRecoveryConfiguration" => disaster_recovery_configuration(),
        "usedDataStorageSizeInTBs" => [float()],
        "statusReason" => [String.t() | atom()],
        "actualUsedDataStorageSizeInTBs" => [float()],
        "connectionStringDetails" => autonomous_database_connection_strings(),
        "percentProgress" => [float()]
      }
      
  """
  @type autonomous_database() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_operation_details() :: %{
        "dayOfWeek" => day_of_week(),
        "scheduledStartTime" => [String.t() | atom()],
        "scheduledStopTime" => [String.t() | atom()]
      }
      
  """
  @type scheduled_operation_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_encryption_key_configuration_input() :: %{
        "externalIdType" => list(any()),
        "iamRoleArn" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom()
      }
      
  """
  @type aws_encryption_key_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_autonomous_database_backup_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("retentionPeriodInDays") => [integer()],
        optional("tags") => map(),
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type create_autonomous_database_backup_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      clone_to_refreshable_configuration() :: %{
        "autoRefreshFrequencyInSeconds" => [integer()],
        "autoRefreshPointLagInSeconds" => [integer()],
        "cloneType" => list(any()),
        "openMode" => list(any()),
        "refreshableMode" => list(any()),
        "sourceAutonomousDatabaseId" => String.t() | atom(),
        "timeOfAutoRefreshStart" => [non_neg_integer()]
      }
      
  """
  @type clone_to_refreshable_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_database_character_set_summary() :: %{
        "characterSet" => [String.t() | atom()]
      }
      
  """
  @type autonomous_database_character_set_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_autonomous_vm_cluster_resource_details() :: %{
        "cloudAutonomousVmClusterId" => String.t() | atom(),
        "unallocatedAdbStorageInTBs" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster_resource_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_autonomous_database_wallet_details_output() :: %{
        "autonomousDatabaseWalletDetails" => autonomous_database_wallet_details()
      }
      
  """
  @type get_autonomous_database_wallet_details_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_autonomous_database_input() :: %{
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type start_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_system_versions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("giVersion") => [String.t() | atom()],
        required("shape") => [String.t() | atom()]
      }
      
  """
  @type list_system_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_databases_output() :: %{
        "autonomousDatabases" => list(autonomous_database_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_databases_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_autonomous_database_backups_output() :: %{
        "autonomousDatabaseBackups" => list(autonomous_database_backup_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_backups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_db_node_output() :: %{
        "dbNodeId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type reboot_db_node_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_backups_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("status") => list(any()),
        optional("type") => list(any())
      }
      
  """
  @type list_autonomous_database_backups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cloud_exadata_infrastructure_input() :: %{
        optional("maintenanceWindow") => maintenance_window()
      }
      
  """
  @type update_cloud_exadata_infrastructure_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_iorm_config() :: %{
        "dbName" => [String.t() | atom()],
        "flashCacheLimit" => [String.t() | atom()],
        "share" => [integer()]
      }
      
  """
  @type db_iorm_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_virtual_machines_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_virtual_machines_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_database_wallet_details() :: %{
        "status" => list(any()),
        "timeRotated" => [non_neg_integer()]
      }
      
  """
  @type autonomous_database_wallet_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_cloud_exadata_infrastructure_output() :: %{
        "cloudExadataInfrastructureId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type update_cloud_exadata_infrastructure_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_iam_role_to_resource_input() :: %{
        required("awsIntegration") => list(any()),
        required("iamRoleArn") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type associate_iam_role_to_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_marketplace_registration_output() :: %{}
      
  """
  @type accept_marketplace_registration_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_cloud_autonomous_vm_cluster_input() :: %{}
      
  """
  @type delete_cloud_autonomous_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      autonomous_database_connection_urls() :: %{
        "apexUrl" => [String.t() | atom()],
        "databaseTransformsUrl" => [String.t() | atom()],
        "graphStudioUrl" => [String.t() | atom()],
        "machineLearningNotebookUrl" => [String.t() | atom()],
        "machineLearningUserManagementUrl" => [String.t() | atom()],
        "mongoDbUrl" => [String.t() | atom()],
        "ordsUrl" => [String.t() | atom()],
        "spatialStudioUrl" => [String.t() | atom()],
        "sqlDevWebUrl" => [String.t() | atom()]
      }
      
  """
  @type autonomous_database_connection_urls() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_db_node_output() :: %{
        "dbNode" => db_node()
      }
      
  """
  @type get_db_node_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type failover_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_database_backup() :: %{
        "autonomousDatabaseBackupArn" => String.t() | atom(),
        "autonomousDatabaseBackupId" => String.t() | atom(),
        "autonomousDatabaseId" => String.t() | atom(),
        "dbVersion" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "isAutomatic" => [boolean()],
        "ocid" => [String.t() | atom()],
        "retentionPeriodInDays" => [integer()],
        "sizeInTBs" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "timeAvailableTill" => [non_neg_integer()],
        "timeEnded" => [non_neg_integer()],
        "timeStarted" => [non_neg_integer()],
        "type" => list(any())
      }
      
  """
  @type autonomous_database_backup() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_autonomous_database_wallet_details_input() :: %{
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type get_autonomous_database_wallet_details_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_db_nodes_output() :: %{
        "dbNodes" => list(db_node_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_db_nodes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_network_endpoint() :: %{
        "vpcEndpointId" => [String.t() | atom()],
        "vpcEndpointType" => list(any())
      }
      
  """
  @type service_network_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_exadata_infrastructure_output() :: %{
        "cloudExadataInfrastructure" => cloud_exadata_infrastructure()
      }
      
  """
  @type get_cloud_exadata_infrastructure_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_db_system_shapes_input() :: %{
        optional("availabilityZone") => [String.t() | atom()],
        optional("availabilityZoneId") => [String.t() | atom()],
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_db_system_shapes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_clones_output() :: %{
        "autonomousDatabaseClones" => list(autonomous_database_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_clones_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_vm_cluster() :: %{
        "ociResourceAnchorName" => [String.t() | atom()],
        "scanIpIds" => list([String.t() | atom()]()),
        "clusterName" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "odbNetworkArn" => String.t() | atom(),
        "ocid" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "isLocalBackupEnabled" => [boolean()],
        "ociUrl" => [String.t() | atom()],
        "giVersion" => [String.t() | atom()],
        "scanDnsName" => [String.t() | atom()],
        "systemVersion" => [String.t() | atom()],
        "vipIds" => list([String.t() | atom()]()),
        "timeZone" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "lastUpdateHistoryEntryId" => [String.t() | atom()],
        "storageSizeInGBs" => [integer()],
        "status" => list(any()),
        "domain" => [String.t() | atom()],
        "dataStorageSizeInTBs" => [float()],
        "cloudVmClusterId" => String.t() | atom(),
        "licenseModel" => list(any()),
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "diskRedundancy" => list(any()),
        "scanDnsRecordId" => [String.t() | atom()],
        "odbNetworkId" => String.t() | atom(),
        "dbNodeStorageSizeInGBs" => [integer()],
        "sshPublicKeys" => list(String.t() | atom()),
        "hostname" => [String.t() | atom()],
        "listenerPort" => [integer()],
        "cloudExadataInfrastructureArn" => String.t() | atom(),
        "isSparseDiskgroupEnabled" => [boolean()],
        "cloudVmClusterArn" => [String.t() | atom()],
        "iamRoles" => list(iam_role()),
        "shape" => [String.t() | atom()],
        "iormConfigCache" => exadata_iorm_config(),
        "cloudExadataInfrastructureId" => [String.t() | atom()],
        "statusReason" => [String.t() | atom()],
        "dataCollectionOptions" => data_collection_options(),
        "dbServers" => list([String.t() | atom()]()),
        "memorySizeInGBs" => [integer()],
        "percentProgress" => [float()]
      }
      
  """
  @type cloud_vm_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_autonomous_database_backup_input() :: %{
        optional("retentionPeriodInDays") => [integer()]
      }
      
  """
  @type update_autonomous_database_backup_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cloud_exadata_infrastructures_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_cloud_exadata_infrastructures_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_autonomous_database_output() :: %{}
      
  """
  @type delete_autonomous_database_output() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type reboot_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_role() :: %{
        "awsIntegration" => list(any()),
        "iamRoleArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type iam_role() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_virtual_machine_summary() :: %{
        "autonomousVirtualMachineId" => String.t() | atom(),
        "clientIpAddress" => [String.t() | atom()],
        "cloudAutonomousVmClusterId" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerDisplayName" => [String.t() | atom()],
        "dbServerId" => String.t() | atom(),
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "ocid" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "vmName" => [String.t() | atom()]
      }
      
  """
  @type autonomous_virtual_machine_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      switchover_autonomous_database_input() :: %{
        optional("peerDbArn") => String.t() | atom(),
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type switchover_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_vm_cluster_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("clusterName") => String.t() | atom(),
        optional("dataCollectionOptions") => data_collection_options(),
        optional("dataStorageSizeInTBs") => [float()],
        optional("dbNodeStorageSizeInGBs") => [integer()],
        optional("dbServers") => list([String.t() | atom()]()),
        optional("isLocalBackupEnabled") => [boolean()],
        optional("isSparseDiskgroupEnabled") => [boolean()],
        optional("licenseModel") => list(any()),
        optional("memorySizeInGBs") => [integer()],
        optional("scanListenerPortTcp") => [integer()],
        optional("systemVersion") => [String.t() | atom()],
        optional("tags") => map(),
        optional("timeZone") => [String.t() | atom()],
        required("cloudExadataInfrastructureId") => String.t() | atom(),
        required("cpuCoreCount") => [integer()],
        required("displayName") => String.t() | atom(),
        required("giVersion") => [String.t() | atom()],
        required("hostname") => String.t() | atom(),
        required("odbNetworkId") => String.t() | atom(),
        required("sshPublicKeys") => list([String.t() | atom()]())
      }
      
  """
  @type create_cloud_vm_cluster_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_odb_peering_connection_output() :: %{
        "displayName" => [String.t() | atom()],
        "odbPeeringConnectionId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type update_odb_peering_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_database_connection_strings() :: %{
        "allConnectionStrings" => map(),
        "dedicated" => [String.t() | atom()],
        "high" => [String.t() | atom()],
        "low" => [String.t() | atom()],
        "medium" => [String.t() | atom()],
        "profiles" => list(database_connection_string_profile())
      }
      
  """
  @type autonomous_database_connection_strings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_autonomous_database_backup_output() :: %{
        "autonomousDatabaseBackupId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type update_autonomous_database_backup_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_exadata_infrastructure() :: %{
        "maxDataStorageInTBs" => [float()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "ocid" => [String.t() | atom()],
        "maxDbNodeStorageSizeInGBs" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "ociUrl" => [String.t() | atom()],
        "monthlyStorageServerVersion" => [String.t() | atom()],
        "availableStorageSizeInGBs" => [integer()],
        "dbServerVersion" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "totalStorageSizeInGBs" => [integer()],
        "status" => list(any()),
        "availabilityZone" => [String.t() | atom()],
        "customerContactsToSendToOCI" => list(customer_contact()),
        "dataStorageSizeInTBs" => [float()],
        "cpuCount" => [integer()],
        "maxCpuCount" => [integer()],
        "activatedStorageCount" => [integer()],
        "computeModel" => list(any()),
        "nextMaintenanceRunId" => [String.t() | atom()],
        "availabilityZoneId" => [String.t() | atom()],
        "monthlyDbServerVersion" => [String.t() | atom()],
        "databaseServerType" => [String.t() | atom()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "storageServerVersion" => [String.t() | atom()],
        "storageCount" => [integer()],
        "cloudExadataInfrastructureArn" => [String.t() | atom()],
        "lastMaintenanceRunId" => [String.t() | atom()],
        "additionalStorageCount" => [integer()],
        "maxMemoryInGBs" => [integer()],
        "storageServerType" => [String.t() | atom()],
        "computeCount" => [integer()],
        "shape" => [String.t() | atom()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "percentProgress" => [float()]
      }
      
  """
  @type cloud_exadata_infrastructure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_peers_output() :: %{
        "autonomousDatabasePeers" => list(autonomous_database_peer_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_peers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_autonomous_database_input() :: %{
        optional("isOnlineReboot") => [boolean()],
        required("autonomousDatabaseId") => String.t() | atom()
      }
      
  """
  @type reboot_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_autonomous_database_output() :: %{
        "autonomousDatabase" => autonomous_database()
      }
      
  """
  @type get_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      db_server_summary() :: %{
        "autonomousVirtualMachineIds" => list([String.t() | atom()]()),
        "autonomousVmClusterIds" => list([String.t() | atom()]()),
        "computeModel" => list(any()),
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t() | atom(),
        "dbServerPatchingDetails" => db_server_patching_details(),
        "displayName" => [String.t() | atom()],
        "exadataInfrastructureId" => [String.t() | atom()],
        "maxCpuCount" => [integer()],
        "maxDbNodeStorageInGBs" => [integer()],
        "maxMemoryInGBs" => [integer()],
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "ocid" => [String.t() | atom()],
        "shape" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "vmClusterIds" => list([String.t() | atom()]())
      }
      
  """
  @type db_server_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_db_servers_output() :: %{
        "dbServers" => list(db_server_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_db_servers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_autonomous_database_input() :: %{}
      
  """
  @type delete_autonomous_database_input() :: %{}

  @typedoc """

  ## Example:
      
      initialize_service_input() :: %{
        optional("ociIdentityDomain") => [boolean()]
      }
      
  """
  @type initialize_service_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_autonomous_database_input() :: %{}
      
  """
  @type get_autonomous_database_input() :: %{}

  @typedoc """

  ## Example:
      
      list_autonomous_database_character_sets_output() :: %{
        "autonomousDatabaseCharacterSets" => list(autonomous_database_character_set_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_character_sets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_db_server_input() :: %{}
      
  """
  @type get_db_server_input() :: %{}

  @typedoc """

  ## Example:
      
      odb_network_summary() :: %{
        "availabilityZone" => [String.t() | atom()],
        "availabilityZoneId" => [String.t() | atom()],
        "backupSubnetCidr" => [String.t() | atom()],
        "clientSubnetCidr" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "customDomainName" => [String.t() | atom()],
        "defaultDnsPrefix" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "ec2PlacementGroupIds" => list(String.t() | atom()),
        "managedServices" => managed_services(),
        "ociDnsForwardingConfigs" => list(oci_dns_forwarding_config()),
        "ociNetworkAnchorId" => [String.t() | atom()],
        "ociNetworkAnchorUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "ociVcnId" => [String.t() | atom()],
        "ociVcnUrl" => [String.t() | atom()],
        "odbNetworkArn" => [String.t() | atom()],
        "odbNetworkId" => String.t() | atom(),
        "peeredCidrs" => list([String.t() | atom()]()),
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type odb_network_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      oci_encryption_key_configuration() :: %{
        "kmsKeyId" => [String.t() | atom()],
        "vaultId" => [String.t() | atom()]
      }
      
  """
  @type oci_encryption_key_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_autonomous_database_backup_output() :: %{
        "autonomousDatabaseBackup" => autonomous_database_backup()
      }
      
  """
  @type get_autonomous_database_backup_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      long_term_backup_schedule() :: %{
        "isDisabled" => [boolean()],
        "repeatCadence" => list(any()),
        "retentionPeriodInDays" => [integer()],
        "timeOfBackup" => [non_neg_integer()]
      }
      
  """
  @type long_term_backup_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_autonomous_database_backup_output() :: %{
        "autonomousDatabaseBackupId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type create_autonomous_database_backup_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_oci_onboarding_status_output() :: %{
        "autonomousDatabaseOciIntegrationIamRoles" => list(oci_iam_role()),
        "existingTenancyActivationLink" => [String.t() | atom()],
        "linkedOciCompartmentId" => [String.t() | atom()],
        "linkedOciTenancyId" => [String.t() | atom()],
        "newTenancyActivationLink" => [String.t() | atom()],
        "ociIdentityDomain" => oci_identity_domain(),
        "status" => list(any()),
        "subscriptionErrors" => list(subscription_error())
      }
      
  """
  @type get_oci_onboarding_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      database_standby_summary() :: %{
        "availabilityDomain" => [String.t() | atom()],
        "lagTimeInSeconds" => [integer()],
        "maintenanceTargetComponent" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "timeDataGuardRoleChanged" => [non_neg_integer()],
        "timeDisasterRecoveryRoleChanged" => [non_neg_integer()],
        "timeMaintenanceBegin" => [non_neg_integer()],
        "timeMaintenanceEnd" => [non_neg_integer()]
      }
      
  """
  @type database_standby_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_db_server_output() :: %{
        "dbServer" => db_server()
      }
      
  """
  @type get_db_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_exadata_infrastructure_input() :: %{
        optional("availabilityZone") => [String.t() | atom()],
        optional("availabilityZoneId") => [String.t() | atom()],
        optional("clientToken") => String.t() | atom(),
        optional("customerContactsToSendToOCI") => list(customer_contact()),
        optional("databaseServerType") => String.t() | atom(),
        optional("maintenanceWindow") => maintenance_window(),
        optional("storageServerType") => String.t() | atom(),
        optional("tags") => map(),
        required("computeCount") => [integer()],
        required("displayName") => String.t() | atom(),
        required("shape") => String.t() | atom(),
        required("storageCount") => [integer()]
      }
      
  """
  @type create_cloud_exadata_infrastructure_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_from_backup_configuration() :: %{
        "autonomousDatabaseBackupId" => String.t() | atom(),
        "cloneTableSpaceList" => list([integer()]()),
        "cloneType" => list(any())
      }
      
  """
  @type restore_from_backup_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_vm_cluster_input() :: %{}
      
  """
  @type delete_cloud_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      update_odb_network_output() :: %{
        "displayName" => [String.t() | atom()],
        "odbNetworkId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type update_odb_network_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maintenance_window() :: %{
        "customActionTimeoutInMins" => [integer()],
        "daysOfWeek" => list(day_of_week()),
        "hoursOfDay" => list([integer()]()),
        "isCustomActionTimeoutEnabled" => [boolean()],
        "leadTimeInWeeks" => [integer()],
        "months" => list(month()),
        "patchingMode" => list(any()),
        "preference" => list(any()),
        "skipRu" => [boolean()],
        "weeksOfMonth" => list([integer()]())
      }
      
  """
  @type maintenance_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_odb_peering_connection_input() :: %{}
      
  """
  @type get_odb_peering_connection_input() :: %{}

  @typedoc """

  ## Example:
      
      zero_etl_access() :: %{
        "cidr" => [String.t() | atom()],
        "status" => list(any())
      }
      
  """
  @type zero_etl_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      switchover_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type switchover_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_odb_network_input() :: %{}
      
  """
  @type get_odb_network_input() :: %{}

  @typedoc """

  ## Example:
      
      list_odb_networks_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_odb_networks_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      exadata_iorm_config() :: %{
        "dbPlans" => list(db_iorm_config()),
        "lifecycleDetails" => [String.t() | atom()],
        "lifecycleState" => list(any()),
        "objective" => list(any())
      }
      
  """
  @type exadata_iorm_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transportable_tablespace() :: %{
        "ttsBundleUrl" => [String.t() | atom()]
      }
      
  """
  @type transportable_tablespace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_autonomous_database_output() :: %{
        "autonomousDatabaseId" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type restore_autonomous_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      okv_encryption_key_configuration() :: %{
        "certificateDirectoryName" => [String.t() | atom()],
        "certificateId" => [String.t() | atom()],
        "directoryName" => [String.t() | atom()],
        "okvKmsKey" => [String.t() | atom()],
        "okvUri" => [String.t() | atom()]
      }
      
  """
  @type okv_encryption_key_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_db_node_input() :: %{}
      
  """
  @type get_db_node_input() :: %{}

  @typedoc """

  ## Example:
      
      list_db_system_shapes_output() :: %{
        "dbSystemShapes" => list(db_system_shape_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_db_system_shapes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_encryption_key_configuration() :: %{
        "externalIdType" => list(any()),
        "iamRoleArn" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom()
      }
      
  """
  @type aws_encryption_key_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cross_region_s3_restore_sources_access() :: %{
        "ipv4Addresses" => list([String.t() | atom()]()),
        "region" => [String.t() | atom()],
        "status" => list(any())
      }
      
  """
  @type cross_region_s3_restore_sources_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_database_versions_output() :: %{
        "autonomousDatabaseVersions" => list(autonomous_database_version_summary()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_autonomous_database_versions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_autonomous_database_input() :: %{
        optional("resourcePoolLeaderId") => String.t() | atom(),
        optional("cpuCoreCount") => [integer()],
        optional("isDisconnectPeer") => [boolean()],
        optional("privateEndpointIp") => [String.t() | atom()],
        optional("autoRefreshFrequencyInSeconds") => [integer()],
        optional("isRefreshableClone") => [boolean()],
        optional("standbyAllowlistedIps") => list([String.t() | atom()]()),
        optional("isBackupRetentionLocked") => [boolean()],
        optional("isAutoScalingForStorageEnabled") => [boolean()],
        optional("autonomousMaintenanceScheduleType") => list(any()),
        optional("adminPassword") => String.t() | atom(),
        optional("peerDbId") => String.t() | atom(),
        optional("encryptionKeyConfiguration") => list(),
        optional("dbToolsDetails") => list(database_tool()),
        optional("refreshableMode") => list(any()),
        optional("dataStorageSizeInGBs") => [integer()],
        optional("licenseModel") => list(any()),
        optional("dataStorageSizeInTBs") => [integer()],
        optional("databaseEdition") => list(any()),
        required("autonomousDatabaseId") => String.t() | atom(),
        optional("computeCount") => [float()],
        optional("isMtlsConnectionRequired") => [boolean()],
        optional("timeOfAutoRefreshStart") => [non_neg_integer()],
        optional("allowlistedIps") => list([String.t() | atom()]()),
        optional("byolComputeCountLimit") => [float()],
        optional("openMode") => list(any()),
        optional("displayName") => String.t() | atom(),
        optional("encryptionKeyProvider") => list(any()),
        optional("privateEndpointLabel") => [String.t() | atom()],
        optional("longTermBackupSchedule") => long_term_backup_schedule(),
        optional("dbWorkload") => list(any()),
        optional("dbVersion") => [String.t() | atom()],
        optional("isAutoScalingEnabled") => [boolean()],
        optional("isLocalDataGuardEnabled") => [boolean()],
        optional("customerContactsToSendToOCI") => list(customer_contact()),
        optional("localAdgAutoFailoverMaxDataLossLimit") => [integer()],
        optional("dbName") => [String.t() | atom()],
        optional("resourcePoolSummary") => resource_pool_summary(),
        optional("backupRetentionPeriodInDays") => [integer()],
        optional("autoRefreshPointLagInSeconds") => [integer()],
        optional("permissionLevel") => list(any()),
        optional("scheduledOperations") => list(scheduled_operation_details()),
        optional("standbyAllowlistedIpsSource") => list(any())
      }
      
  """
  @type update_autonomous_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_autonomous_vm_cluster_summary() :: %{
        "ociResourceAnchorName" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "odbNetworkArn" => String.t() | atom(),
        "exadataStorageInTBsLowestScaledValue" => [float()],
        "ocid" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "provisionedAutonomousContainerDatabases" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "ociUrl" => [String.t() | atom()],
        "nonProvisionableAutonomousContainerDatabases" => [integer()],
        "scanListenerPortNonTls" => [integer()],
        "timeZone" => [String.t() | atom()],
        "reservedCpus" => [float()],
        "displayName" => String.t() | atom(),
        "reclaimableCpus" => [float()],
        "status" => list(any()),
        "cpuCoreCountPerNode" => [integer()],
        "domain" => [String.t() | atom()],
        "maxAcdsLowestScaledValue" => [integer()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "availableCpus" => [float()],
        "totalContainerDatabases" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "licenseModel" => list(any()),
        "autonomousDataStoragePercentage" => [float()],
        "provisionedCpus" => [float()],
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "isMtlsEnabledVmCluster" => [boolean()],
        "cpuPercentage" => [float()],
        "availableContainerDatabases" => [integer()],
        "dataStorageSizeInGBs" => [float()],
        "odbNetworkId" => String.t() | atom(),
        "autonomousDataStorageSizeInTBs" => [float()],
        "provisionableAutonomousContainerDatabases" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "timeDatabaseSslCertificateExpires" => [non_neg_integer()],
        "hostname" => [String.t() | atom()],
        "scanListenerPortTls" => [integer()],
        "cloudAutonomousVmClusterId" => String.t() | atom(),
        "cloudExadataInfrastructureArn" => String.t() | atom(),
        "cloudAutonomousVmClusterArn" => [String.t() | atom()],
        "iamRoles" => list(iam_role()),
        "availableAutonomousDataStorageSizeInTBs" => [float()],
        "shape" => [String.t() | atom()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "timeOrdsCertificateExpires" => [non_neg_integer()],
        "dbServers" => list([String.t() | atom()]()),
        "memorySizeInGBs" => [integer()],
        "percentProgress" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cloud_autonomous_vm_cluster_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("dbServers") => list([String.t() | atom()]()),
        optional("description") => [String.t() | atom()],
        optional("isMtlsEnabledVmCluster") => [boolean()],
        optional("licenseModel") => list(any()),
        optional("maintenanceWindow") => maintenance_window(),
        optional("scanListenerPortNonTls") => [integer()],
        optional("scanListenerPortTls") => [integer()],
        optional("tags") => map(),
        optional("timeZone") => [String.t() | atom()],
        required("autonomousDataStorageSizeInTBs") => [float()],
        required("cloudExadataInfrastructureId") => String.t() | atom(),
        required("cpuCoreCountPerNode") => [integer()],
        required("displayName") => String.t() | atom(),
        required("memoryPerOracleComputeUnitInGBs") => [integer()],
        required("odbNetworkId") => String.t() | atom(),
        required("totalContainerDatabases") => [integer()]
      }
      
  """
  @type create_cloud_autonomous_vm_cluster_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_pool_summary() :: %{
        "availableComputeCapacity" => [integer()],
        "availableStorageCapacityInTBs" => [float()],
        "isDisabled" => [boolean()],
        "poolSize" => [integer()],
        "poolStorageSizeInTBs" => [integer()],
        "totalComputeCapacity" => [integer()]
      }
      
  """
  @type resource_pool_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_system_versions_output() :: %{
        "nextToken" => [String.t() | atom()],
        "systemVersions" => list(system_version_summary())
      }
      
  """
  @type list_system_versions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autonomous_database_apex() :: %{
        "apexVersion" => [String.t() | atom()],
        "ordsVersion" => [String.t() | atom()]
      }
      
  """
  @type autonomous_database_apex() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      odb_network() :: %{
        "availabilityZone" => [String.t() | atom()],
        "availabilityZoneId" => [String.t() | atom()],
        "backupSubnetCidr" => [String.t() | atom()],
        "clientSubnetCidr" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "customDomainName" => [String.t() | atom()],
        "defaultDnsPrefix" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "ec2PlacementGroupIds" => list(String.t() | atom()),
        "managedServices" => managed_services(),
        "ociDnsForwardingConfigs" => list(oci_dns_forwarding_config()),
        "ociNetworkAnchorId" => [String.t() | atom()],
        "ociNetworkAnchorUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "ociVcnId" => [String.t() | atom()],
        "ociVcnUrl" => [String.t() | atom()],
        "odbNetworkArn" => [String.t() | atom()],
        "odbNetworkId" => String.t() | atom(),
        "peeredCidrs" => list([String.t() | atom()]()),
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type odb_network() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_odb_peering_connections_output() :: %{
        "nextToken" => [String.t() | atom()],
        "odbPeeringConnections" => list(odb_peering_connection_summary())
      }
      
  """
  @type list_odb_peering_connections_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_autonomous_vm_cluster() :: %{
        "ociResourceAnchorName" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "odbNetworkArn" => String.t() | atom(),
        "exadataStorageInTBsLowestScaledValue" => [float()],
        "ocid" => [String.t() | atom()],
        "cpuCoreCount" => [integer()],
        "provisionedAutonomousContainerDatabases" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "ociUrl" => [String.t() | atom()],
        "nonProvisionableAutonomousContainerDatabases" => [integer()],
        "scanListenerPortNonTls" => [integer()],
        "timeZone" => [String.t() | atom()],
        "reservedCpus" => [float()],
        "displayName" => String.t() | atom(),
        "reclaimableCpus" => [float()],
        "status" => list(any()),
        "cpuCoreCountPerNode" => [integer()],
        "domain" => [String.t() | atom()],
        "maxAcdsLowestScaledValue" => [integer()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "availableCpus" => [float()],
        "totalContainerDatabases" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "licenseModel" => list(any()),
        "autonomousDataStoragePercentage" => [float()],
        "provisionedCpus" => [float()],
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "isMtlsEnabledVmCluster" => [boolean()],
        "cpuPercentage" => [float()],
        "availableContainerDatabases" => [integer()],
        "dataStorageSizeInGBs" => [float()],
        "odbNetworkId" => String.t() | atom(),
        "autonomousDataStorageSizeInTBs" => [float()],
        "provisionableAutonomousContainerDatabases" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "timeDatabaseSslCertificateExpires" => [non_neg_integer()],
        "hostname" => [String.t() | atom()],
        "scanListenerPortTls" => [integer()],
        "cloudAutonomousVmClusterId" => String.t() | atom(),
        "cloudExadataInfrastructureArn" => String.t() | atom(),
        "cloudAutonomousVmClusterArn" => [String.t() | atom()],
        "iamRoles" => list(iam_role()),
        "availableAutonomousDataStorageSizeInTBs" => [float()],
        "shape" => [String.t() | atom()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "timeOrdsCertificateExpires" => [non_neg_integer()],
        "dbServers" => list([String.t() | atom()]()),
        "memorySizeInGBs" => [integer()],
        "percentProgress" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disaster_recovery_configuration() :: %{
        "disasterRecoveryType" => list(any()),
        "isReplicateAutomaticBackups" => [boolean()],
        "isSnapshotStandby" => [boolean()],
        "timeSnapshotStandbyEnabledTill" => [non_neg_integer()]
      }
      
  """
  @type disaster_recovery_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_autonomous_vm_cluster_output() :: %{}
      
  """
  @type delete_cloud_autonomous_vm_cluster_output() :: %{}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_autonomous_vm_cluster_input() :: %{}
      
  """
  @type get_cloud_autonomous_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      sts_access() :: %{
        "domainName" => [String.t() | atom()],
        "ipv4Addresses" => list([String.t() | atom()]()),
        "status" => list(any()),
        "stsPolicyDocument" => [String.t() | atom()]
      }
      
  """
  @type sts_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_autonomous_database_wallet_output() :: %{
        "autonomousDatabaseWalletFile" => binary()
      }
      
  """
  @type create_autonomous_database_wallet_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_summary() :: %{
        "encryptionKeyConfiguration" => list(),
        "encryptionKeyProvider" => list(any())
      }
      
  """
  @type encryption_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_exadata_infrastructure_unallocated_resources() :: %{
        "cloudAutonomousVmClusters" => list(cloud_autonomous_vm_cluster_resource_details()),
        "cloudExadataInfrastructureDisplayName" => [String.t() | atom()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "exadataStorageInTBs" => [float()],
        "localStorageInGBs" => [integer()],
        "memoryInGBs" => [integer()],
        "ocpus" => [integer()]
      }
      
  """
  @type cloud_exadata_infrastructure_unallocated_resources() :: %{(String.t() | atom()) => any()}

  @type accept_marketplace_registration_errors() ::
          conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type associate_iam_role_to_resource_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_autonomous_database_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_autonomous_database_backup_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_autonomous_database_wallet_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_cloud_autonomous_vm_cluster_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_cloud_exadata_infrastructure_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_cloud_vm_cluster_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_odb_network_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_odb_peering_connection_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_autonomous_database_backup_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_cloud_autonomous_vm_cluster_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_cloud_exadata_infrastructure_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_cloud_vm_cluster_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type delete_odb_network_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_odb_peering_connection_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type disassociate_iam_role_from_resource_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type failover_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_autonomous_database_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_autonomous_database_backup_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_autonomous_database_wallet_details_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_cloud_autonomous_vm_cluster_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_cloud_exadata_infrastructure_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_cloud_exadata_infrastructure_unallocated_resources_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_cloud_vm_cluster_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_db_node_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_db_server_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_oci_onboarding_status_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_odb_network_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_odb_peering_connection_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type initialize_service_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_autonomous_database_backups_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_autonomous_database_character_sets_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_autonomous_database_clones_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_autonomous_database_peers_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_autonomous_database_versions_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_autonomous_databases_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_autonomous_virtual_machines_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_cloud_autonomous_vm_clusters_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_cloud_exadata_infrastructures_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_cloud_vm_clusters_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_db_nodes_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_db_servers_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_db_system_shapes_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_gi_versions_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_odb_networks_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_odb_peering_connections_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_system_versions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type reboot_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type reboot_db_node_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type restore_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type shrink_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type start_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type start_db_node_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type stop_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type stop_db_node_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type switchover_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type tag_resource_errors() ::
          service_quota_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_autonomous_database_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_autonomous_database_backup_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_cloud_exadata_infrastructure_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_odb_network_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_odb_peering_connection_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  def metadata do
    %{
      api_version: "2024-08-20",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "odb",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "odb",
      signature_version: "v4",
      signing_name: "odb",
      target_prefix: "Odb"
    }
  end

  @doc """
  Registers the Amazon Web Services Marketplace token for your Amazon Web Services
  account to activate your Oracle Database@Amazon Web Services subscription.
  """
  @spec accept_marketplace_registration(map(), accept_marketplace_registration_input(), list()) ::
          {:ok, accept_marketplace_registration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_marketplace_registration_errors()}
  def accept_marketplace_registration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptMarketplaceRegistration", input, options)
  end

  @doc """
  Associates an Amazon Web Services Identity and Access Management (IAM) service
  role with a specified resource to enable Amazon Web Services service
  integration.
  """
  @spec associate_iam_role_to_resource(map(), associate_iam_role_to_resource_input(), list()) ::
          {:ok, associate_iam_role_to_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_iam_role_to_resource_errors()}
  def associate_iam_role_to_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateIamRoleToResource", input, options)
  end

  @doc """
  Creates a new Autonomous Database.
  """
  @spec create_autonomous_database(map(), create_autonomous_database_input(), list()) ::
          {:ok, create_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_autonomous_database_errors()}
  def create_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAutonomousDatabase", input, options)
  end

  @doc """
  Creates a new backup of the specified Autonomous Database.
  """
  @spec create_autonomous_database_backup(
          map(),
          create_autonomous_database_backup_input(),
          list()
        ) ::
          {:ok, create_autonomous_database_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_autonomous_database_backup_errors()}
  def create_autonomous_database_backup(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAutonomousDatabaseBackup", input, options)
  end

  @doc """
  Creates a new wallet for the specified Autonomous Database.
  """
  @spec create_autonomous_database_wallet(
          map(),
          create_autonomous_database_wallet_input(),
          list()
        ) ::
          {:ok, create_autonomous_database_wallet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_autonomous_database_wallet_errors()}
  def create_autonomous_database_wallet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAutonomousDatabaseWallet", input, options)
  end

  @doc """
  Creates a new Autonomous VM cluster in the specified Exadata infrastructure.
  """
  @spec create_cloud_autonomous_vm_cluster(
          map(),
          create_cloud_autonomous_vm_cluster_input(),
          list()
        ) ::
          {:ok, create_cloud_autonomous_vm_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_autonomous_vm_cluster_errors()}
  def create_cloud_autonomous_vm_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCloudAutonomousVmCluster", input, options)
  end

  @doc """
  Creates an Exadata infrastructure.
  """
  @spec create_cloud_exadata_infrastructure(
          map(),
          create_cloud_exadata_infrastructure_input(),
          list()
        ) ::
          {:ok, create_cloud_exadata_infrastructure_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_exadata_infrastructure_errors()}
  def create_cloud_exadata_infrastructure(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCloudExadataInfrastructure", input, options)
  end

  @doc """
  Creates a VM cluster on the specified Exadata infrastructure.
  """
  @spec create_cloud_vm_cluster(map(), create_cloud_vm_cluster_input(), list()) ::
          {:ok, create_cloud_vm_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_vm_cluster_errors()}
  def create_cloud_vm_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCloudVmCluster", input, options)
  end

  @doc """
  Creates an ODB network.
  """
  @spec create_odb_network(map(), create_odb_network_input(), list()) ::
          {:ok, create_odb_network_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_odb_network_errors()}
  def create_odb_network(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateOdbNetwork", input, options)
  end

  @doc """
  Creates a peering connection between an ODB network and a VPC.

  A peering connection enables private connectivity between the networks for
  application-tier communication.
  """
  @spec create_odb_peering_connection(map(), create_odb_peering_connection_input(), list()) ::
          {:ok, create_odb_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_odb_peering_connection_errors()}
  def create_odb_peering_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateOdbPeeringConnection", input, options)
  end

  @doc """
  Deletes the specified Autonomous Database.
  """
  @spec delete_autonomous_database(map(), delete_autonomous_database_input(), list()) ::
          {:ok, delete_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_autonomous_database_errors()}
  def delete_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAutonomousDatabase", input, options)
  end

  @doc """
  Deletes the specified Autonomous Database backup.
  """
  @spec delete_autonomous_database_backup(
          map(),
          delete_autonomous_database_backup_input(),
          list()
        ) ::
          {:ok, delete_autonomous_database_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_autonomous_database_backup_errors()}
  def delete_autonomous_database_backup(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAutonomousDatabaseBackup", input, options)
  end

  @doc """
  Deletes an Autonomous VM cluster.
  """
  @spec delete_cloud_autonomous_vm_cluster(
          map(),
          delete_cloud_autonomous_vm_cluster_input(),
          list()
        ) ::
          {:ok, delete_cloud_autonomous_vm_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cloud_autonomous_vm_cluster_errors()}
  def delete_cloud_autonomous_vm_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCloudAutonomousVmCluster", input, options)
  end

  @doc """
  Deletes the specified Exadata infrastructure.

  Before you use this operation, make sure to delete all of the VM clusters that
  are hosted on this Exadata infrastructure.
  """
  @spec delete_cloud_exadata_infrastructure(
          map(),
          delete_cloud_exadata_infrastructure_input(),
          list()
        ) ::
          {:ok, delete_cloud_exadata_infrastructure_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cloud_exadata_infrastructure_errors()}
  def delete_cloud_exadata_infrastructure(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCloudExadataInfrastructure", input, options)
  end

  @doc """
  Deletes the specified VM cluster.
  """
  @spec delete_cloud_vm_cluster(map(), delete_cloud_vm_cluster_input(), list()) ::
          {:ok, delete_cloud_vm_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cloud_vm_cluster_errors()}
  def delete_cloud_vm_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCloudVmCluster", input, options)
  end

  @doc """
  Deletes the specified ODB network.
  """
  @spec delete_odb_network(map(), delete_odb_network_input(), list()) ::
          {:ok, delete_odb_network_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_odb_network_errors()}
  def delete_odb_network(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOdbNetwork", input, options)
  end

  @doc """
  Deletes an ODB peering connection.

  When you delete an ODB peering connection, the underlying VPC peering connection
  is also deleted.
  """
  @spec delete_odb_peering_connection(map(), delete_odb_peering_connection_input(), list()) ::
          {:ok, delete_odb_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_odb_peering_connection_errors()}
  def delete_odb_peering_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteOdbPeeringConnection", input, options)
  end

  @doc """
  Disassociates an Amazon Web Services Identity and Access Management (IAM)
  service role from a specified resource to disable Amazon Web Services service
  integration.
  """
  @spec disassociate_iam_role_from_resource(
          map(),
          disassociate_iam_role_from_resource_input(),
          list()
        ) ::
          {:ok, disassociate_iam_role_from_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_iam_role_from_resource_errors()}
  def disassociate_iam_role_from_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateIamRoleFromResource", input, options)
  end

  @doc """
  Initiates a failover of the specified Autonomous Database to a standby peer
  database.
  """
  @spec failover_autonomous_database(map(), failover_autonomous_database_input(), list()) ::
          {:ok, failover_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, failover_autonomous_database_errors()}
  def failover_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "FailoverAutonomousDatabase", input, options)
  end

  @doc """
  Gets information about a specific Autonomous Database.
  """
  @spec get_autonomous_database(map(), get_autonomous_database_input(), list()) ::
          {:ok, get_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_autonomous_database_errors()}
  def get_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAutonomousDatabase", input, options)
  end

  @doc """
  Gets information about a specific Autonomous Database backup.
  """
  @spec get_autonomous_database_backup(map(), get_autonomous_database_backup_input(), list()) ::
          {:ok, get_autonomous_database_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_autonomous_database_backup_errors()}
  def get_autonomous_database_backup(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAutonomousDatabaseBackup", input, options)
  end

  @doc """
  Gets the wallet details for the specified Autonomous Database.
  """
  @spec get_autonomous_database_wallet_details(
          map(),
          get_autonomous_database_wallet_details_input(),
          list()
        ) ::
          {:ok, get_autonomous_database_wallet_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_autonomous_database_wallet_details_errors()}
  def get_autonomous_database_wallet_details(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAutonomousDatabaseWalletDetails", input, options)
  end

  @doc """
  Gets information about a specific Autonomous VM cluster.
  """
  @spec get_cloud_autonomous_vm_cluster(map(), get_cloud_autonomous_vm_cluster_input(), list()) ::
          {:ok, get_cloud_autonomous_vm_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_autonomous_vm_cluster_errors()}
  def get_cloud_autonomous_vm_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCloudAutonomousVmCluster", input, options)
  end

  @doc """
  Returns information about the specified Exadata infrastructure.
  """
  @spec get_cloud_exadata_infrastructure(map(), get_cloud_exadata_infrastructure_input(), list()) ::
          {:ok, get_cloud_exadata_infrastructure_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_exadata_infrastructure_errors()}
  def get_cloud_exadata_infrastructure(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCloudExadataInfrastructure", input, options)
  end

  @doc """
  Retrieves information about unallocated resources in a specified Cloud Exadata
  Infrastructure.
  """
  @spec get_cloud_exadata_infrastructure_unallocated_resources(
          map(),
          get_cloud_exadata_infrastructure_unallocated_resources_input(),
          list()
        ) ::
          {:ok, get_cloud_exadata_infrastructure_unallocated_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_exadata_infrastructure_unallocated_resources_errors()}
  def get_cloud_exadata_infrastructure_unallocated_resources(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetCloudExadataInfrastructureUnallocatedResources",
      input,
      options
    )
  end

  @doc """
  Returns information about the specified VM cluster.
  """
  @spec get_cloud_vm_cluster(map(), get_cloud_vm_cluster_input(), list()) ::
          {:ok, get_cloud_vm_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_vm_cluster_errors()}
  def get_cloud_vm_cluster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCloudVmCluster", input, options)
  end

  @doc """
  Returns information about the specified DB node.
  """
  @spec get_db_node(map(), get_db_node_input(), list()) ::
          {:ok, get_db_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_db_node_errors()}
  def get_db_node(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDbNode", input, options)
  end

  @doc """
  Returns information about the specified database server.
  """
  @spec get_db_server(map(), get_db_server_input(), list()) ::
          {:ok, get_db_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_db_server_errors()}
  def get_db_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDbServer", input, options)
  end

  @doc """
  Returns the tenancy activation link and onboarding status for your Amazon Web
  Services account.
  """
  @spec get_oci_onboarding_status(map(), get_oci_onboarding_status_input(), list()) ::
          {:ok, get_oci_onboarding_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_oci_onboarding_status_errors()}
  def get_oci_onboarding_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOciOnboardingStatus", input, options)
  end

  @doc """
  Returns information about the specified ODB network.
  """
  @spec get_odb_network(map(), get_odb_network_input(), list()) ::
          {:ok, get_odb_network_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_odb_network_errors()}
  def get_odb_network(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOdbNetwork", input, options)
  end

  @doc """
  Retrieves information about an ODB peering connection.
  """
  @spec get_odb_peering_connection(map(), get_odb_peering_connection_input(), list()) ::
          {:ok, get_odb_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_odb_peering_connection_errors()}
  def get_odb_peering_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOdbPeeringConnection", input, options)
  end

  @doc """
  Initializes the ODB service for the first time in an account.
  """
  @spec initialize_service(map(), initialize_service_input(), list()) ::
          {:ok, initialize_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initialize_service_errors()}
  def initialize_service(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "InitializeService", input, options)
  end

  @doc """
  Lists the backups of the specified Autonomous Database.
  """
  @spec list_autonomous_database_backups(map(), list_autonomous_database_backups_input(), list()) ::
          {:ok, list_autonomous_database_backups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autonomous_database_backups_errors()}
  def list_autonomous_database_backups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutonomousDatabaseBackups", input, options)
  end

  @doc """
  Lists the available character sets for Autonomous Databases.
  """
  @spec list_autonomous_database_character_sets(
          map(),
          list_autonomous_database_character_sets_input(),
          list()
        ) ::
          {:ok, list_autonomous_database_character_sets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autonomous_database_character_sets_errors()}
  def list_autonomous_database_character_sets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutonomousDatabaseCharacterSets", input, options)
  end

  @doc """
  Lists the clones of the specified Autonomous Database.
  """
  @spec list_autonomous_database_clones(map(), list_autonomous_database_clones_input(), list()) ::
          {:ok, list_autonomous_database_clones_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autonomous_database_clones_errors()}
  def list_autonomous_database_clones(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutonomousDatabaseClones", input, options)
  end

  @doc """
  Lists the peer databases of the specified Autonomous Database.
  """
  @spec list_autonomous_database_peers(map(), list_autonomous_database_peers_input(), list()) ::
          {:ok, list_autonomous_database_peers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autonomous_database_peers_errors()}
  def list_autonomous_database_peers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutonomousDatabasePeers", input, options)
  end

  @doc """
  Lists the available Oracle Database software versions for Autonomous Databases.
  """
  @spec list_autonomous_database_versions(
          map(),
          list_autonomous_database_versions_input(),
          list()
        ) ::
          {:ok, list_autonomous_database_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autonomous_database_versions_errors()}
  def list_autonomous_database_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutonomousDatabaseVersions", input, options)
  end

  @doc """
  Returns information about the Autonomous Databases owned by your Amazon Web
  Services account in the current Amazon Web Services Region.
  """
  @spec list_autonomous_databases(map(), list_autonomous_databases_input(), list()) ::
          {:ok, list_autonomous_databases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autonomous_databases_errors()}
  def list_autonomous_databases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutonomousDatabases", input, options)
  end

  @doc """
  Lists all Autonomous VMs in an Autonomous VM cluster.
  """
  @spec list_autonomous_virtual_machines(map(), list_autonomous_virtual_machines_input(), list()) ::
          {:ok, list_autonomous_virtual_machines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_autonomous_virtual_machines_errors()}
  def list_autonomous_virtual_machines(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutonomousVirtualMachines", input, options)
  end

  @doc """
  Lists all Autonomous VM clusters in a specified Cloud Exadata infrastructure.
  """
  @spec list_cloud_autonomous_vm_clusters(
          map(),
          list_cloud_autonomous_vm_clusters_input(),
          list()
        ) ::
          {:ok, list_cloud_autonomous_vm_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cloud_autonomous_vm_clusters_errors()}
  def list_cloud_autonomous_vm_clusters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCloudAutonomousVmClusters", input, options)
  end

  @doc """
  Returns information about the Exadata infrastructures owned by your Amazon Web
  Services account.
  """
  @spec list_cloud_exadata_infrastructures(
          map(),
          list_cloud_exadata_infrastructures_input(),
          list()
        ) ::
          {:ok, list_cloud_exadata_infrastructures_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cloud_exadata_infrastructures_errors()}
  def list_cloud_exadata_infrastructures(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCloudExadataInfrastructures", input, options)
  end

  @doc """
  Returns information about the VM clusters owned by your Amazon Web Services
  account or only the ones on the specified Exadata infrastructure.
  """
  @spec list_cloud_vm_clusters(map(), list_cloud_vm_clusters_input(), list()) ::
          {:ok, list_cloud_vm_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cloud_vm_clusters_errors()}
  def list_cloud_vm_clusters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCloudVmClusters", input, options)
  end

  @doc """
  Returns information about the DB nodes for the specified VM cluster.
  """
  @spec list_db_nodes(map(), list_db_nodes_input(), list()) ::
          {:ok, list_db_nodes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_db_nodes_errors()}
  def list_db_nodes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDbNodes", input, options)
  end

  @doc """
  Returns information about the database servers that belong to the specified
  Exadata infrastructure.
  """
  @spec list_db_servers(map(), list_db_servers_input(), list()) ::
          {:ok, list_db_servers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_db_servers_errors()}
  def list_db_servers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDbServers", input, options)
  end

  @doc """
  Returns information about the shapes that are available for an Exadata
  infrastructure.
  """
  @spec list_db_system_shapes(map(), list_db_system_shapes_input(), list()) ::
          {:ok, list_db_system_shapes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_db_system_shapes_errors()}
  def list_db_system_shapes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDbSystemShapes", input, options)
  end

  @doc """
  Returns information about Oracle Grid Infrastructure (GI) software versions that
  are available for a VM cluster for the specified shape.
  """
  @spec list_gi_versions(map(), list_gi_versions_input(), list()) ::
          {:ok, list_gi_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gi_versions_errors()}
  def list_gi_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGiVersions", input, options)
  end

  @doc """
  Returns information about the ODB networks owned by your Amazon Web Services
  account.
  """
  @spec list_odb_networks(map(), list_odb_networks_input(), list()) ::
          {:ok, list_odb_networks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_odb_networks_errors()}
  def list_odb_networks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOdbNetworks", input, options)
  end

  @doc """
  Lists all ODB peering connections or those associated with a specific ODB
  network.
  """
  @spec list_odb_peering_connections(map(), list_odb_peering_connections_input(), list()) ::
          {:ok, list_odb_peering_connections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_odb_peering_connections_errors()}
  def list_odb_peering_connections(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOdbPeeringConnections", input, options)
  end

  @doc """
  Returns information about the system versions that are available for a VM
  cluster for the specified `giVersion` and `shape`.
  """
  @spec list_system_versions(map(), list_system_versions_input(), list()) ::
          {:ok, list_system_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_system_versions_errors()}
  def list_system_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSystemVersions", input, options)
  end

  @doc """
  Returns information about the tags applied to this resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Reboots the specified Autonomous Database.
  """
  @spec reboot_autonomous_database(map(), reboot_autonomous_database_input(), list()) ::
          {:ok, reboot_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_autonomous_database_errors()}
  def reboot_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootAutonomousDatabase", input, options)
  end

  @doc """
  Reboots the specified DB node in a VM cluster.
  """
  @spec reboot_db_node(map(), reboot_db_node_input(), list()) ::
          {:ok, reboot_db_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_db_node_errors()}
  def reboot_db_node(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RebootDbNode", input, options)
  end

  @doc """
  Restores the specified Autonomous Database to a point in time.
  """
  @spec restore_autonomous_database(map(), restore_autonomous_database_input(), list()) ::
          {:ok, restore_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_autonomous_database_errors()}
  def restore_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreAutonomousDatabase", input, options)
  end

  @doc """
  Shrinks the storage of the specified Autonomous Database to reclaim unused
  space.
  """
  @spec shrink_autonomous_database(map(), shrink_autonomous_database_input(), list()) ::
          {:ok, shrink_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, shrink_autonomous_database_errors()}
  def shrink_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ShrinkAutonomousDatabase", input, options)
  end

  @doc """
  Starts the specified Autonomous Database.
  """
  @spec start_autonomous_database(map(), start_autonomous_database_input(), list()) ::
          {:ok, start_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_autonomous_database_errors()}
  def start_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartAutonomousDatabase", input, options)
  end

  @doc """
  Starts the specified DB node in a VM cluster.
  """
  @spec start_db_node(map(), start_db_node_input(), list()) ::
          {:ok, start_db_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_db_node_errors()}
  def start_db_node(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDbNode", input, options)
  end

  @doc """
  Stops the specified Autonomous Database.
  """
  @spec stop_autonomous_database(map(), stop_autonomous_database_input(), list()) ::
          {:ok, stop_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_autonomous_database_errors()}
  def stop_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopAutonomousDatabase", input, options)
  end

  @doc """
  Stops the specified DB node in a VM cluster.
  """
  @spec stop_db_node(map(), stop_db_node_input(), list()) ::
          {:ok, stop_db_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_db_node_errors()}
  def stop_db_node(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopDbNode", input, options)
  end

  @doc """
  Performs a switchover of the specified Autonomous Database to a standby peer
  database.
  """
  @spec switchover_autonomous_database(map(), switchover_autonomous_database_input(), list()) ::
          {:ok, switchover_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, switchover_autonomous_database_errors()}
  def switchover_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SwitchoverAutonomousDatabase", input, options)
  end

  @doc """
  Applies tags to the specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the properties of an Autonomous Database.
  """
  @spec update_autonomous_database(map(), update_autonomous_database_input(), list()) ::
          {:ok, update_autonomous_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_autonomous_database_errors()}
  def update_autonomous_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAutonomousDatabase", input, options)
  end

  @doc """
  Updates the properties of an Autonomous Database backup.
  """
  @spec update_autonomous_database_backup(
          map(),
          update_autonomous_database_backup_input(),
          list()
        ) ::
          {:ok, update_autonomous_database_backup_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_autonomous_database_backup_errors()}
  def update_autonomous_database_backup(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAutonomousDatabaseBackup", input, options)
  end

  @doc """
  Updates the properties of an Exadata infrastructure resource.
  """
  @spec update_cloud_exadata_infrastructure(
          map(),
          update_cloud_exadata_infrastructure_input(),
          list()
        ) ::
          {:ok, update_cloud_exadata_infrastructure_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cloud_exadata_infrastructure_errors()}
  def update_cloud_exadata_infrastructure(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCloudExadataInfrastructure", input, options)
  end

  @doc """
  Updates properties of a specified ODB network.
  """
  @spec update_odb_network(map(), update_odb_network_input(), list()) ::
          {:ok, update_odb_network_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_odb_network_errors()}
  def update_odb_network(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateOdbNetwork", input, options)
  end

  @doc """
  Modifies the settings of an Oracle Database@Amazon Web Services peering
  connection.

  You can update the display name and add or remove CIDR blocks from the peering
  connection.
  """
  @spec update_odb_peering_connection(map(), update_odb_peering_connection_input(), list()) ::
          {:ok, update_odb_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_odb_peering_connection_errors()}
  def update_odb_peering_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateOdbPeeringConnection", input, options)
  end
end
