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
  in a virtual private cloud (VPC) and access an Oracle Exadata system running in
  Oracle Database@Amazon Web Services. You can get started with Oracle
  Database@Amazon Web Services by using the familiar Amazon Web Services
  Management Console, APIs, or CLI.

  This interface reference for Oracle Database@Amazon Web Services contains
  documentation for a programming or command line interface that you can use to
  manage Oracle Database@Amazon Web Services. Oracle Database@Amazon Web Services
  is asynchronous, which means that some interfaces might require techniques such
  as polling or callback functions to determine when a command has been applied.
  The reference structure is as follows.

  In this preview release documentation, the links in the "See Also" sections do
  not work.

  ## Oracle Database@Amazon Web Services API Reference

    * For the alphabetical list of API actions, see .

    * For the alphabetical list of data types, see .

    * For a list of common parameters, see `CommonParameters`.

    * For descriptions of the error codes, see `CommonErrors`.
  """

  alias AWS.Client
  alias AWS.Request

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
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_oci_onboarding_status_output() :: %{
        "existingTenancyActivationLink" => [String.t() | atom()],
        "newTenancyActivationLink" => [String.t() | atom()],
        "status" => list(any())
      }
      
  """
  @type get_oci_onboarding_status_output() :: %{(String.t() | atom()) => any()}

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
      
      get_cloud_exadata_infrastructure_output() :: %{
        "cloudExadataInfrastructure" => cloud_exadata_infrastructure()
      }
      
  """
  @type get_cloud_exadata_infrastructure_output() :: %{(String.t() | atom()) => any()}

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
      
      oci_dns_forwarding_config() :: %{
        "domainName" => [String.t() | atom()],
        "ociDnsListenerIp" => [String.t() | atom()]
      }
      
  """
  @type oci_dns_forwarding_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_oci_onboarding_status_input() :: %{}
      
  """
  @type get_oci_onboarding_status_input() :: %{}

  @typedoc """

  ## Example:
      
      accept_marketplace_registration_output() :: %{}
      
  """
  @type accept_marketplace_registration_output() :: %{}

  @typedoc """

  ## Example:
      
      get_cloud_autonomous_vm_cluster_output() :: %{
        "cloudAutonomousVmCluster" => cloud_autonomous_vm_cluster()
      }
      
  """
  @type get_cloud_autonomous_vm_cluster_output() :: %{(String.t() | atom()) => any()}

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
      
      cloud_autonomous_vm_cluster_resource_details() :: %{
        "cloudAutonomousVmClusterId" => String.t() | atom(),
        "unallocatedAdbStorageInTBs" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster_resource_details() :: %{(String.t() | atom()) => any()}

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
      
      gi_version_summary() :: %{
        "version" => [String.t() | atom()]
      }
      
  """
  @type gi_version_summary() :: %{(String.t() | atom()) => any()}

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
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      cloud_vm_cluster() :: %{
        "iormConfigCache" => exadata_iorm_config(),
        "shape" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "isSparseDiskgroupEnabled" => [boolean()],
        "statusReason" => [String.t() | atom()],
        "hostname" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "lastUpdateHistoryEntryId" => [String.t() | atom()],
        "domain" => [String.t() | atom()],
        "vipIds" => list([String.t() | atom()]()),
        "cpuCoreCount" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "isLocalBackupEnabled" => [boolean()],
        "giVersion" => [String.t() | atom()],
        "systemVersion" => [String.t() | atom()],
        "diskRedundancy" => list(any()),
        "ocid" => [String.t() | atom()],
        "scanDnsName" => [String.t() | atom()],
        "dbServers" => list([String.t() | atom()]()),
        "createdAt" => [non_neg_integer()],
        "clusterName" => [String.t() | atom()],
        "listenerPort" => [integer()],
        "cloudExadataInfrastructureId" => [String.t() | atom()],
        "cloudVmClusterArn" => [String.t() | atom()],
        "percentProgress" => [float()],
        "storageSizeInGBs" => [integer()],
        "sshPublicKeys" => list(String.t() | atom()),
        "timeZone" => [String.t() | atom()],
        "scanDnsRecordId" => [String.t() | atom()],
        "scanIpIds" => list([String.t() | atom()]()),
        "status" => list(any()),
        "ociUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "odbNetworkId" => String.t() | atom(),
        "dataCollectionOptions" => data_collection_options(),
        "cloudVmClusterId" => String.t() | atom()
      }
      
  """
  @type cloud_vm_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_autonomous_vm_cluster_output() :: %{}
      
  """
  @type delete_cloud_autonomous_vm_cluster_output() :: %{}

  @typedoc """

  ## Example:
      
      get_odb_network_output() :: %{
        "odbNetwork" => odb_network()
      }
      
  """
  @type get_odb_network_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_odb_network_input() :: %{
        optional("availabilityZone") => [String.t() | atom()],
        optional("availabilityZoneId") => [String.t() | atom()],
        optional("backupSubnetCidr") => [String.t() | atom()],
        optional("clientToken") => String.t() | atom(),
        optional("customDomainName") => [String.t() | atom()],
        optional("defaultDnsPrefix") => [String.t() | atom()],
        optional("s3Access") => list(any()),
        optional("s3PolicyDocument") => String.t() | atom(),
        optional("tags") => map(),
        optional("zeroEtlAccess") => list(any()),
        required("clientSubnetCidr") => [String.t() | atom()],
        required("displayName") => String.t() | atom()
      }
      
  """
  @type create_odb_network_input() :: %{(String.t() | atom()) => any()}

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
      
      cloud_autonomous_vm_cluster_summary() :: %{
        "shape" => [String.t() | atom()],
        "autonomousDataStoragePercentage" => [float()],
        "reclaimableCpus" => [float()],
        "displayName" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "hostname" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "maxAcdsLowestScaledValue" => [integer()],
        "domain" => [String.t() | atom()],
        "availableContainerDatabases" => [integer()],
        "scanListenerPortNonTls" => [integer()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "totalContainerDatabases" => [integer()],
        "cpuCoreCount" => [integer()],
        "description" => [String.t() | atom()],
        "isMtlsEnabledVmCluster" => [boolean()],
        "dataStorageSizeInGBs" => [float()],
        "dataStorageSizeInTBs" => [float()],
        "provisionedCpus" => [float()],
        "cloudAutonomousVmClusterArn" => [String.t() | atom()],
        "ocid" => [String.t() | atom()],
        "dbServers" => list([String.t() | atom()]()),
        "createdAt" => [non_neg_integer()],
        "availableCpus" => [float()],
        "autonomousDataStorageSizeInTBs" => [float()],
        "timeOrdsCertificateExpires" => [non_neg_integer()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "scanListenerPortTls" => [integer()],
        "percentProgress" => [float()],
        "reservedCpus" => [float()],
        "availableAutonomousDataStorageSizeInTBs" => [float()],
        "timeZone" => [String.t() | atom()],
        "nonProvisionableAutonomousContainerDatabases" => [integer()],
        "timeDatabaseSslCertificateExpires" => [non_neg_integer()],
        "provisionedAutonomousContainerDatabases" => [integer()],
        "status" => list(any()),
        "ociUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "nodeCount" => [integer()],
        "exadataStorageInTBsLowestScaledValue" => [float()],
        "computeModel" => list(any()),
        "cloudAutonomousVmClusterId" => String.t() | atom(),
        "cpuCoreCountPerNode" => [integer()],
        "provisionableAutonomousContainerDatabases" => [integer()],
        "odbNetworkId" => String.t() | atom(),
        "cpuPercentage" => [float()]
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
      
      reboot_db_node_output() :: %{
        "dbNodeId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type reboot_db_node_output() :: %{(String.t() | atom()) => any()}

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
      
      zero_etl_access() :: %{
        "cidr" => [String.t() | atom()],
        "status" => list(any())
      }
      
  """
  @type zero_etl_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

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
      
      create_cloud_vm_cluster_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("clusterName") => [String.t() | atom()],
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
        required("hostname") => [String.t() | atom()],
        required("odbNetworkId") => String.t() | atom(),
        required("sshPublicKeys") => list([String.t() | atom()]())
      }
      
  """
  @type create_cloud_vm_cluster_input() :: %{(String.t() | atom()) => any()}

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
      
      list_db_nodes_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_db_nodes_input() :: %{(String.t() | atom()) => any()}

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
      
      odb_peering_connection() :: %{
        "createdAt" => [non_neg_integer()],
        "displayName" => [String.t() | atom()],
        "odbNetworkArn" => [String.t() | atom()],
        "odbPeeringConnectionArn" => [String.t() | atom()],
        "odbPeeringConnectionId" => String.t() | atom(),
        "odbPeeringConnectionType" => [String.t() | atom()],
        "peerNetworkArn" => [String.t() | atom()],
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type odb_peering_connection() :: %{(String.t() | atom()) => any()}

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
      
      list_odb_networks_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_odb_networks_input() :: %{(String.t() | atom()) => any()}

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
      
      get_cloud_exadata_infrastructure_unallocated_resources_input() :: %{
        optional("dbServers") => list([String.t() | atom()]())
      }
      
  """
  @type get_cloud_exadata_infrastructure_unallocated_resources_input() :: %{
          (String.t() | atom()) => any()
        }

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
      
      delete_odb_peering_connection_input() :: %{}
      
  """
  @type delete_odb_peering_connection_input() :: %{}

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
      
      list_cloud_autonomous_vm_clusters_input() :: %{
        optional("cloudExadataInfrastructureId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_cloud_autonomous_vm_clusters_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_db_server_input() :: %{}
      
  """
  @type get_db_server_input() :: %{}

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
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_exadata_infrastructure_input() :: %{}
      
  """
  @type delete_cloud_exadata_infrastructure_input() :: %{}

  @typedoc """

  ## Example:
      
      cloud_exadata_infrastructure_summary() :: %{
        "shape" => [String.t() | atom()],
        "availableStorageSizeInGBs" => [integer()],
        "activatedStorageCount" => [integer()],
        "displayName" => [String.t() | atom()],
        "statusReason" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "maxDbNodeStorageSizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "cloudExadataInfrastructureArn" => [String.t() | atom()],
        "maxMemoryInGBs" => [integer()],
        "lastMaintenanceRunId" => [String.t() | atom()],
        "cpuCount" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "nextMaintenanceRunId" => [String.t() | atom()],
        "dataStorageSizeInTBs" => [float()],
        "monthlyStorageServerVersion" => [String.t() | atom()],
        "totalStorageSizeInGBs" => [integer()],
        "customerContactsToSendToOCI" => list(customer_contact()),
        "ocid" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "storageServerType" => [String.t() | atom()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "percentProgress" => [float()],
        "storageServerVersion" => [String.t() | atom()],
        "maxCpuCount" => [integer()],
        "storageCount" => [integer()],
        "additionalStorageCount" => [integer()],
        "maxDataStorageInTBs" => [float()],
        "monthlyDbServerVersion" => [String.t() | atom()],
        "status" => list(any()),
        "ociUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "computeModel" => list(any()),
        "dbServerVersion" => [String.t() | atom()],
        "availabilityZoneId" => [String.t() | atom()],
        "databaseServerType" => [String.t() | atom()],
        "availabilityZone" => [String.t() | atom()],
        "computeCount" => [integer()]
      }
      
  """
  @type cloud_exadata_infrastructure_summary() :: %{(String.t() | atom()) => any()}

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
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type odb_peering_connection_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_odb_network_input() :: %{}
      
  """
  @type get_odb_network_input() :: %{}

  @typedoc """

  ## Example:
      
      get_odb_peering_connection_input() :: %{}
      
  """
  @type get_odb_peering_connection_input() :: %{}

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
      
      get_db_node_output() :: %{
        "dbNode" => db_node()
      }
      
  """
  @type get_db_node_output() :: %{(String.t() | atom()) => any()}

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
      
      list_cloud_vm_clusters_input() :: %{
        optional("cloudExadataInfrastructureId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_cloud_vm_clusters_input() :: %{(String.t() | atom()) => any()}

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
      
      data_collection_options() :: %{
        "isDiagnosticsEventsEnabled" => [boolean()],
        "isHealthMonitoringEnabled" => [boolean()],
        "isIncidentLogsEnabled" => [boolean()]
      }
      
  """
  @type data_collection_options() :: %{(String.t() | atom()) => any()}

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
      
      delete_odb_peering_connection_output() :: %{}
      
  """
  @type delete_odb_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_odb_network_output() :: %{}
      
  """
  @type delete_odb_network_output() :: %{}

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
      
      get_cloud_exadata_infrastructure_input() :: %{}
      
  """
  @type get_cloud_exadata_infrastructure_input() :: %{}

  @typedoc """

  ## Example:
      
      get_cloud_vm_cluster_output() :: %{
        "cloudVmCluster" => cloud_vm_cluster()
      }
      
  """
  @type get_cloud_vm_cluster_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initialize_service_input() :: %{}
      
  """
  @type initialize_service_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_cloud_exadata_infrastructure_output() :: %{}
      
  """
  @type delete_cloud_exadata_infrastructure_output() :: %{}

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
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

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
      
      update_odb_network_input() :: %{
        optional("displayName") => String.t() | atom(),
        optional("peeredCidrsToBeAdded") => list([String.t() | atom()]()),
        optional("peeredCidrsToBeRemoved") => list([String.t() | atom()]()),
        optional("s3Access") => list(any()),
        optional("s3PolicyDocument") => String.t() | atom(),
        optional("zeroEtlAccess") => list(any())
      }
      
  """
  @type update_odb_network_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_autonomous_vm_cluster_input() :: %{}
      
  """
  @type delete_cloud_autonomous_vm_cluster_input() :: %{}

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
      
      day_of_week() :: %{
        "name" => list(any())
      }
      
  """
  @type day_of_week() :: %{(String.t() | atom()) => any()}

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
      
      stop_db_node_output() :: %{
        "dbNodeId" => [String.t() | atom()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type stop_db_node_output() :: %{(String.t() | atom()) => any()}

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
      
      list_db_servers_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_db_servers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initialize_service_output() :: %{}
      
  """
  @type initialize_service_output() :: %{}

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
      
      list_odb_peering_connections_output() :: %{
        "nextToken" => [String.t() | atom()],
        "odbPeeringConnections" => list(odb_peering_connection_summary())
      }
      
  """
  @type list_odb_peering_connections_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customer_contact() :: %{
        "email" => String.t() | atom()
      }
      
  """
  @type customer_contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_db_node_input() :: %{}
      
  """
  @type get_db_node_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_odb_network_input() :: %{
        required("deleteAssociatedResources") => [boolean()]
      }
      
  """
  @type delete_odb_network_input() :: %{(String.t() | atom()) => any()}

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
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

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
      
      system_version_summary() :: %{
        "giVersion" => [String.t() | atom()],
        "shape" => [String.t() | atom()],
        "systemVersions" => list([String.t() | atom()]())
      }
      
  """
  @type system_version_summary() :: %{(String.t() | atom()) => any()}

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
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

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
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      month() :: %{
        "name" => list(any())
      }
      
  """
  @type month() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_db_server_output() :: %{
        "dbServer" => db_server()
      }
      
  """
  @type get_db_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_db_node_input() :: %{}
      
  """
  @type start_db_node_input() :: %{}

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
      
      cloud_vm_cluster_summary() :: %{
        "iormConfigCache" => exadata_iorm_config(),
        "shape" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "isSparseDiskgroupEnabled" => [boolean()],
        "statusReason" => [String.t() | atom()],
        "hostname" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "lastUpdateHistoryEntryId" => [String.t() | atom()],
        "domain" => [String.t() | atom()],
        "vipIds" => list([String.t() | atom()]()),
        "cpuCoreCount" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "isLocalBackupEnabled" => [boolean()],
        "giVersion" => [String.t() | atom()],
        "systemVersion" => [String.t() | atom()],
        "diskRedundancy" => list(any()),
        "ocid" => [String.t() | atom()],
        "scanDnsName" => [String.t() | atom()],
        "dbServers" => list([String.t() | atom()]()),
        "createdAt" => [non_neg_integer()],
        "clusterName" => [String.t() | atom()],
        "listenerPort" => [integer()],
        "cloudExadataInfrastructureId" => [String.t() | atom()],
        "cloudVmClusterArn" => [String.t() | atom()],
        "percentProgress" => [float()],
        "storageSizeInGBs" => [integer()],
        "sshPublicKeys" => list(String.t() | atom()),
        "timeZone" => [String.t() | atom()],
        "scanDnsRecordId" => [String.t() | atom()],
        "scanIpIds" => list([String.t() | atom()]()),
        "status" => list(any()),
        "ociUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "odbNetworkId" => String.t() | atom(),
        "dataCollectionOptions" => data_collection_options(),
        "cloudVmClusterId" => String.t() | atom()
      }
      
  """
  @type cloud_vm_cluster_summary() :: %{(String.t() | atom()) => any()}

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
      
      cloud_exadata_infrastructure() :: %{
        "shape" => [String.t() | atom()],
        "availableStorageSizeInGBs" => [integer()],
        "activatedStorageCount" => [integer()],
        "displayName" => [String.t() | atom()],
        "statusReason" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "maxDbNodeStorageSizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "cloudExadataInfrastructureArn" => [String.t() | atom()],
        "maxMemoryInGBs" => [integer()],
        "lastMaintenanceRunId" => [String.t() | atom()],
        "cpuCount" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "nextMaintenanceRunId" => [String.t() | atom()],
        "dataStorageSizeInTBs" => [float()],
        "monthlyStorageServerVersion" => [String.t() | atom()],
        "totalStorageSizeInGBs" => [integer()],
        "customerContactsToSendToOCI" => list(customer_contact()),
        "ocid" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "storageServerType" => [String.t() | atom()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "percentProgress" => [float()],
        "storageServerVersion" => [String.t() | atom()],
        "maxCpuCount" => [integer()],
        "storageCount" => [integer()],
        "additionalStorageCount" => [integer()],
        "maxDataStorageInTBs" => [float()],
        "monthlyDbServerVersion" => [String.t() | atom()],
        "status" => list(any()),
        "ociUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "computeModel" => list(any()),
        "dbServerVersion" => [String.t() | atom()],
        "availabilityZoneId" => [String.t() | atom()],
        "databaseServerType" => [String.t() | atom()],
        "availabilityZone" => [String.t() | atom()],
        "computeCount" => [integer()]
      }
      
  """
  @type cloud_exadata_infrastructure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_autonomous_vm_cluster_input() :: %{}
      
  """
  @type get_cloud_autonomous_vm_cluster_input() :: %{}

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
      
      list_cloud_exadata_infrastructures_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }
      
  """
  @type list_cloud_exadata_infrastructures_input() :: %{(String.t() | atom()) => any()}

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
      
      stop_db_node_input() :: %{}
      
  """
  @type stop_db_node_input() :: %{}

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
      
      accept_marketplace_registration_input() :: %{
        required("marketplaceRegistrationToken") => [String.t() | atom()]
      }
      
  """
  @type accept_marketplace_registration_input() :: %{(String.t() | atom()) => any()}

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
      
      managed_services() :: %{
        "managedS3BackupAccess" => managed_s3_backup_access(),
        "managedServicesIpv4Cidrs" => list([String.t() | atom()]()),
        "resourceGatewayArn" => String.t() | atom(),
        "s3Access" => s3_access(),
        "serviceNetworkArn" => String.t() | atom(),
        "serviceNetworkEndpoint" => service_network_endpoint(),
        "zeroEtlAccess" => zero_etl_access()
      }
      
  """
  @type managed_services() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cloud_vm_cluster_input() :: %{}
      
  """
  @type get_cloud_vm_cluster_input() :: %{}

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

  @typedoc """

  ## Example:
      
      get_odb_peering_connection_output() :: %{
        "odbPeeringConnection" => odb_peering_connection()
      }
      
  """
  @type get_odb_peering_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cloud_exadata_infrastructure_input() :: %{
        optional("maintenanceWindow") => maintenance_window()
      }
      
  """
  @type update_cloud_exadata_infrastructure_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_vm_cluster_input() :: %{}
      
  """
  @type delete_cloud_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      cloud_autonomous_vm_cluster() :: %{
        "shape" => [String.t() | atom()],
        "autonomousDataStoragePercentage" => [float()],
        "reclaimableCpus" => [float()],
        "displayName" => String.t() | atom(),
        "statusReason" => [String.t() | atom()],
        "hostname" => [String.t() | atom()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "maxAcdsLowestScaledValue" => [integer()],
        "domain" => [String.t() | atom()],
        "availableContainerDatabases" => [integer()],
        "scanListenerPortNonTls" => [integer()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "totalContainerDatabases" => [integer()],
        "cpuCoreCount" => [integer()],
        "description" => [String.t() | atom()],
        "isMtlsEnabledVmCluster" => [boolean()],
        "dataStorageSizeInGBs" => [float()],
        "dataStorageSizeInTBs" => [float()],
        "provisionedCpus" => [float()],
        "cloudAutonomousVmClusterArn" => [String.t() | atom()],
        "ocid" => [String.t() | atom()],
        "dbServers" => list([String.t() | atom()]()),
        "createdAt" => [non_neg_integer()],
        "availableCpus" => [float()],
        "autonomousDataStorageSizeInTBs" => [float()],
        "timeOrdsCertificateExpires" => [non_neg_integer()],
        "cloudExadataInfrastructureId" => String.t() | atom(),
        "scanListenerPortTls" => [integer()],
        "percentProgress" => [float()],
        "reservedCpus" => [float()],
        "availableAutonomousDataStorageSizeInTBs" => [float()],
        "timeZone" => [String.t() | atom()],
        "nonProvisionableAutonomousContainerDatabases" => [integer()],
        "timeDatabaseSslCertificateExpires" => [non_neg_integer()],
        "provisionedAutonomousContainerDatabases" => [integer()],
        "status" => list(any()),
        "ociUrl" => [String.t() | atom()],
        "ociResourceAnchorName" => [String.t() | atom()],
        "nodeCount" => [integer()],
        "exadataStorageInTBsLowestScaledValue" => [float()],
        "computeModel" => list(any()),
        "cloudAutonomousVmClusterId" => String.t() | atom(),
        "cpuCoreCountPerNode" => [integer()],
        "provisionableAutonomousContainerDatabases" => [integer()],
        "odbNetworkId" => String.t() | atom(),
        "cpuPercentage" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_odb_peering_connection_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("tags") => map(),
        required("odbNetworkId") => String.t() | atom(),
        required("peerNetworkId") => String.t() | atom()
      }
      
  """
  @type create_odb_peering_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_vm_cluster_output() :: %{}
      
  """
  @type delete_cloud_vm_cluster_output() :: %{}

  @typedoc """

  ## Example:
      
      reboot_db_node_input() :: %{}
      
  """
  @type reboot_db_node_input() :: %{}

  @type accept_marketplace_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_cloud_autonomous_vm_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_cloud_exadata_infrastructure_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_cloud_vm_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_odb_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_odb_peering_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cloud_autonomous_vm_cluster_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cloud_exadata_infrastructure_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cloud_vm_cluster_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_odb_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_odb_peering_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_cloud_autonomous_vm_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_cloud_exadata_infrastructure_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_cloud_exadata_infrastructure_unallocated_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_cloud_vm_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_db_node_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_db_server_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_oci_onboarding_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_odb_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_odb_peering_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type initialize_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_autonomous_virtual_machines_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_cloud_autonomous_vm_clusters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_cloud_exadata_infrastructures_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_cloud_vm_clusters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_db_nodes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_db_servers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_db_system_shapes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_gi_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_odb_networks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_odb_peering_connections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_system_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type reboot_db_node_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_db_node_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_db_node_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          service_quota_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_cloud_exadata_infrastructure_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_odb_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

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
  Creates a peering connection between an ODB network and either another ODB
  network or a customer-owned VPC.

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
end
