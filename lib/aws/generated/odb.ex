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
        "displayName" => [String.t()],
        "odbNetworkId" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type create_odb_network_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_oci_onboarding_status_output() :: %{
        "existingTenancyActivationLink" => [String.t()],
        "newTenancyActivationLink" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type get_oci_onboarding_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_system_shapes_input() :: %{
        optional("availabilityZone") => [String.t()],
        optional("availabilityZoneId") => [String.t()],
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_db_system_shapes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cloud_exadata_infrastructure_output() :: %{
        "cloudExadataInfrastructure" => cloud_exadata_infrastructure()
      }
      
  """
  @type get_cloud_exadata_infrastructure_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_servers_output() :: %{
        "dbServers" => list(db_server_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_db_servers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      oci_dns_forwarding_config() :: %{
        "domainName" => [String.t()],
        "ociDnsListenerIp" => [String.t()]
      }
      
  """
  @type oci_dns_forwarding_config() :: %{String.t() => any()}

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
  @type get_cloud_autonomous_vm_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_system_versions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("giVersion") => [String.t()],
        required("shape") => [String.t()]
      }
      
  """
  @type list_system_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_autonomous_vm_cluster_resource_details() :: %{
        "cloudAutonomousVmClusterId" => String.t(),
        "unallocatedAdbStorageInTBs" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster_resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_network_endpoint() :: %{
        "vpcEndpointId" => [String.t()],
        "vpcEndpointType" => list(any())
      }
      
  """
  @type service_network_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gi_version_summary() :: %{
        "version" => [String.t()]
      }
      
  """
  @type gi_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_nodes_output() :: %{
        "dbNodes" => list(db_node_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_db_nodes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      cloud_vm_cluster() :: %{
        "iormConfigCache" => exadata_iorm_config(),
        "shape" => [String.t()],
        "displayName" => [String.t()],
        "isSparseDiskgroupEnabled" => [boolean()],
        "statusReason" => [String.t()],
        "hostname" => [String.t()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "lastUpdateHistoryEntryId" => [String.t()],
        "domain" => [String.t()],
        "vipIds" => list([String.t()]()),
        "cpuCoreCount" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "isLocalBackupEnabled" => [boolean()],
        "giVersion" => [String.t()],
        "systemVersion" => [String.t()],
        "diskRedundancy" => list(any()),
        "ocid" => [String.t()],
        "scanDnsName" => [String.t()],
        "dbServers" => list([String.t()]()),
        "createdAt" => [non_neg_integer()],
        "clusterName" => [String.t()],
        "listenerPort" => [integer()],
        "cloudExadataInfrastructureId" => [String.t()],
        "cloudVmClusterArn" => [String.t()],
        "percentProgress" => [float()],
        "storageSizeInGBs" => [integer()],
        "sshPublicKeys" => list(String.t()),
        "timeZone" => [String.t()],
        "scanDnsRecordId" => [String.t()],
        "scanIpIds" => list([String.t()]()),
        "status" => list(any()),
        "ociUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "odbNetworkId" => String.t(),
        "dataCollectionOptions" => data_collection_options(),
        "cloudVmClusterId" => String.t()
      }
      
  """
  @type cloud_vm_cluster() :: %{String.t() => any()}

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
  @type get_odb_network_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_odb_network_input() :: %{
        optional("availabilityZone") => [String.t()],
        optional("availabilityZoneId") => [String.t()],
        optional("backupSubnetCidr") => [String.t()],
        optional("clientToken") => String.t(),
        optional("customDomainName") => [String.t()],
        optional("defaultDnsPrefix") => [String.t()],
        optional("s3Access") => list(any()),
        optional("s3PolicyDocument") => String.t(),
        optional("tags") => map(),
        optional("zeroEtlAccess") => list(any()),
        required("clientSubnetCidr") => [String.t()],
        required("displayName") => String.t()
      }
      
  """
  @type create_odb_network_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_node_output() :: %{
        "dbNodeId" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type start_db_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_node_summary() :: %{
        "additionalDetails" => [String.t()],
        "backupIpId" => [String.t()],
        "backupVnic2Id" => [String.t()],
        "backupVnicId" => [String.t()],
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeArn" => String.t(),
        "dbNodeId" => String.t(),
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t(),
        "dbSystemId" => [String.t()],
        "faultDomain" => [String.t()],
        "hostIpId" => [String.t()],
        "hostname" => [String.t()],
        "maintenanceType" => list(any()),
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t()],
        "ocid" => [String.t()],
        "softwareStorageSizeInGB" => [integer()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "timeMaintenanceWindowEnd" => [String.t()],
        "timeMaintenanceWindowStart" => [String.t()],
        "totalCpuCoreCount" => [integer()],
        "vnic2Id" => [String.t()],
        "vnicId" => [String.t()]
      }
      
  """
  @type db_node_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_autonomous_vm_cluster_summary() :: %{
        "shape" => [String.t()],
        "autonomousDataStoragePercentage" => [float()],
        "reclaimableCpus" => [float()],
        "displayName" => String.t(),
        "statusReason" => [String.t()],
        "hostname" => [String.t()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "maxAcdsLowestScaledValue" => [integer()],
        "domain" => [String.t()],
        "availableContainerDatabases" => [integer()],
        "scanListenerPortNonTls" => [integer()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "totalContainerDatabases" => [integer()],
        "cpuCoreCount" => [integer()],
        "description" => [String.t()],
        "isMtlsEnabledVmCluster" => [boolean()],
        "dataStorageSizeInGBs" => [float()],
        "dataStorageSizeInTBs" => [float()],
        "provisionedCpus" => [float()],
        "cloudAutonomousVmClusterArn" => [String.t()],
        "ocid" => [String.t()],
        "dbServers" => list([String.t()]()),
        "createdAt" => [non_neg_integer()],
        "availableCpus" => [float()],
        "autonomousDataStorageSizeInTBs" => [float()],
        "timeOrdsCertificateExpires" => [non_neg_integer()],
        "cloudExadataInfrastructureId" => String.t(),
        "scanListenerPortTls" => [integer()],
        "percentProgress" => [float()],
        "reservedCpus" => [float()],
        "availableAutonomousDataStorageSizeInTBs" => [float()],
        "timeZone" => [String.t()],
        "nonProvisionableAutonomousContainerDatabases" => [integer()],
        "timeDatabaseSslCertificateExpires" => [non_neg_integer()],
        "provisionedAutonomousContainerDatabases" => [integer()],
        "status" => list(any()),
        "ociUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "nodeCount" => [integer()],
        "exadataStorageInTBsLowestScaledValue" => [float()],
        "computeModel" => list(any()),
        "cloudAutonomousVmClusterId" => String.t(),
        "cpuCoreCountPerNode" => [integer()],
        "provisionableAutonomousContainerDatabases" => [integer()],
        "odbNetworkId" => String.t(),
        "cpuPercentage" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_autonomous_vm_cluster_input() :: %{
        optional("clientToken") => String.t(),
        optional("dbServers") => list([String.t()]()),
        optional("description") => [String.t()],
        optional("isMtlsEnabledVmCluster") => [boolean()],
        optional("licenseModel") => list(any()),
        optional("maintenanceWindow") => maintenance_window(),
        optional("scanListenerPortNonTls") => [integer()],
        optional("scanListenerPortTls") => [integer()],
        optional("tags") => map(),
        optional("timeZone") => [String.t()],
        required("autonomousDataStorageSizeInTBs") => [float()],
        required("cloudExadataInfrastructureId") => String.t(),
        required("cpuCoreCountPerNode") => [integer()],
        required("displayName") => String.t(),
        required("memoryPerOracleComputeUnitInGBs") => [integer()],
        required("odbNetworkId") => String.t(),
        required("totalContainerDatabases") => [integer()]
      }
      
  """
  @type create_cloud_autonomous_vm_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_db_node_output() :: %{
        "dbNodeId" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type reboot_db_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_system_versions_output() :: %{
        "nextToken" => [String.t()],
        "systemVersions" => list(system_version_summary())
      }
      
  """
  @type list_system_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      zero_etl_access() :: %{
        "cidr" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type zero_etl_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gi_versions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("shape") => [String.t()]
      }
      
  """
  @type list_gi_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_vm_cluster_input() :: %{
        optional("clientToken") => String.t(),
        optional("clusterName") => [String.t()],
        optional("dataCollectionOptions") => data_collection_options(),
        optional("dataStorageSizeInTBs") => [float()],
        optional("dbNodeStorageSizeInGBs") => [integer()],
        optional("dbServers") => list([String.t()]()),
        optional("isLocalBackupEnabled") => [boolean()],
        optional("isSparseDiskgroupEnabled") => [boolean()],
        optional("licenseModel") => list(any()),
        optional("memorySizeInGBs") => [integer()],
        optional("scanListenerPortTcp") => [integer()],
        optional("systemVersion") => [String.t()],
        optional("tags") => map(),
        optional("timeZone") => [String.t()],
        required("cloudExadataInfrastructureId") => String.t(),
        required("cpuCoreCount") => [integer()],
        required("displayName") => String.t(),
        required("giVersion") => [String.t()],
        required("hostname") => [String.t()],
        required("odbNetworkId") => String.t(),
        required("sshPublicKeys") => list([String.t()]())
      }
      
  """
  @type create_cloud_vm_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_odb_peering_connection_output() :: %{
        "displayName" => [String.t()],
        "odbPeeringConnectionId" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type create_odb_peering_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_nodes_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_db_nodes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_access() :: %{
        "domainName" => [String.t()],
        "ipv4Addresses" => list([String.t()]()),
        "s3PolicyDocument" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type s3_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      odb_peering_connection() :: %{
        "createdAt" => [non_neg_integer()],
        "displayName" => [String.t()],
        "odbNetworkArn" => [String.t()],
        "odbPeeringConnectionArn" => [String.t()],
        "odbPeeringConnectionId" => String.t(),
        "odbPeeringConnectionType" => [String.t()],
        "peerNetworkArn" => [String.t()],
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type odb_peering_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_autonomous_virtual_machines_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_autonomous_virtual_machines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_odb_networks_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_odb_networks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_server_patching_details() :: %{
        "estimatedPatchDuration" => [integer()],
        "patchingStatus" => list(any()),
        "timePatchingEnded" => [String.t()],
        "timePatchingStarted" => [String.t()]
      }
      
  """
  @type db_server_patching_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cloud_exadata_infrastructure_unallocated_resources_input() :: %{
        optional("dbServers") => list([String.t()]())
      }
      
  """
  @type get_cloud_exadata_infrastructure_unallocated_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_odb_networks_output() :: %{
        "nextToken" => [String.t()],
        "odbNetworks" => list(odb_network_summary())
      }
      
  """
  @type list_odb_networks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_autonomous_vm_cluster_output() :: %{
        "cloudAutonomousVmClusterId" => [String.t()],
        "displayName" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type create_cloud_autonomous_vm_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_odb_peering_connection_input() :: %{}
      
  """
  @type delete_odb_peering_connection_input() :: %{}

  @typedoc """

  ## Example:
      
      exadata_iorm_config() :: %{
        "dbPlans" => list(db_iorm_config()),
        "lifecycleDetails" => [String.t()],
        "lifecycleState" => list(any()),
        "objective" => list(any())
      }
      
  """
  @type exadata_iorm_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cloud_autonomous_vm_clusters_input() :: %{
        optional("cloudExadataInfrastructureId") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_cloud_autonomous_vm_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_server_input() :: %{}
      
  """
  @type get_db_server_input() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_exadata_infrastructure_input() :: %{}
      
  """
  @type delete_cloud_exadata_infrastructure_input() :: %{}

  @typedoc """

  ## Example:
      
      cloud_exadata_infrastructure_summary() :: %{
        "shape" => [String.t()],
        "availableStorageSizeInGBs" => [integer()],
        "activatedStorageCount" => [integer()],
        "displayName" => [String.t()],
        "statusReason" => [String.t()],
        "memorySizeInGBs" => [integer()],
        "maxDbNodeStorageSizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "cloudExadataInfrastructureArn" => [String.t()],
        "maxMemoryInGBs" => [integer()],
        "lastMaintenanceRunId" => [String.t()],
        "cpuCount" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "nextMaintenanceRunId" => [String.t()],
        "dataStorageSizeInTBs" => [float()],
        "monthlyStorageServerVersion" => [String.t()],
        "totalStorageSizeInGBs" => [integer()],
        "customerContactsToSendToOCI" => list(customer_contact()),
        "ocid" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "storageServerType" => [String.t()],
        "cloudExadataInfrastructureId" => String.t(),
        "percentProgress" => [float()],
        "storageServerVersion" => [String.t()],
        "maxCpuCount" => [integer()],
        "storageCount" => [integer()],
        "additionalStorageCount" => [integer()],
        "maxDataStorageInTBs" => [float()],
        "monthlyDbServerVersion" => [String.t()],
        "status" => list(any()),
        "ociUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "computeModel" => list(any()),
        "dbServerVersion" => [String.t()],
        "availabilityZoneId" => [String.t()],
        "databaseServerType" => [String.t()],
        "availabilityZone" => [String.t()],
        "computeCount" => [integer()]
      }
      
  """
  @type cloud_exadata_infrastructure_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      odb_peering_connection_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "displayName" => [String.t()],
        "odbNetworkArn" => [String.t()],
        "odbPeeringConnectionArn" => [String.t()],
        "odbPeeringConnectionId" => String.t(),
        "odbPeeringConnectionType" => [String.t()],
        "peerNetworkArn" => [String.t()],
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type odb_peering_connection_summary() :: %{String.t() => any()}

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
        optional("nextToken") => [String.t()],
        optional("odbNetworkId") => String.t()
      }
      
  """
  @type list_odb_peering_connections_input() :: %{String.t() => any()}

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
        "name" => [String.t()],
        "runtimeMinimumCoreCount" => [integer()],
        "shapeFamily" => [String.t()],
        "shapeType" => list(any())
      }
      
  """
  @type db_system_shape_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_node_output() :: %{
        "dbNode" => db_node()
      }
      
  """
  @type get_db_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cloud_vm_clusters_input() :: %{
        optional("cloudExadataInfrastructureId") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_cloud_vm_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cloud_vm_clusters_output() :: %{
        "cloudVmClusters" => list(cloud_vm_cluster_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_cloud_vm_clusters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_collection_options() :: %{
        "isDiagnosticsEventsEnabled" => [boolean()],
        "isHealthMonitoringEnabled" => [boolean()],
        "isIncidentLogsEnabled" => [boolean()]
      }
      
  """
  @type data_collection_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cloud_exadata_infrastructure_output() :: %{
        "cloudExadataInfrastructureId" => [String.t()],
        "displayName" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type update_cloud_exadata_infrastructure_output() :: %{String.t() => any()}

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
  @type get_cloud_exadata_infrastructure_unallocated_resources_output() :: %{String.t() => any()}

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
  @type get_cloud_vm_cluster_output() :: %{String.t() => any()}

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
        "displayName" => [String.t()],
        "odbNetworkId" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type update_odb_network_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      odb_network() :: %{
        "availabilityZone" => [String.t()],
        "availabilityZoneId" => [String.t()],
        "backupSubnetCidr" => [String.t()],
        "clientSubnetCidr" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "customDomainName" => [String.t()],
        "defaultDnsPrefix" => [String.t()],
        "displayName" => [String.t()],
        "managedServices" => managed_services(),
        "ociDnsForwardingConfigs" => list(oci_dns_forwarding_config()),
        "ociNetworkAnchorId" => [String.t()],
        "ociNetworkAnchorUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "ociVcnId" => [String.t()],
        "ociVcnUrl" => [String.t()],
        "odbNetworkArn" => [String.t()],
        "odbNetworkId" => String.t(),
        "peeredCidrs" => list([String.t()]()),
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type odb_network() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_odb_network_input() :: %{
        optional("displayName") => String.t(),
        optional("peeredCidrsToBeAdded") => list([String.t()]()),
        optional("peeredCidrsToBeRemoved") => list([String.t()]()),
        optional("s3Access") => list(any()),
        optional("s3PolicyDocument") => String.t(),
        optional("zeroEtlAccess") => list(any())
      }
      
  """
  @type update_odb_network_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_autonomous_vm_cluster_input() :: %{}
      
  """
  @type delete_cloud_autonomous_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      day_of_week() :: %{
        "name" => list(any())
      }
      
  """
  @type day_of_week() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      odb_network_summary() :: %{
        "availabilityZone" => [String.t()],
        "availabilityZoneId" => [String.t()],
        "backupSubnetCidr" => [String.t()],
        "clientSubnetCidr" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "customDomainName" => [String.t()],
        "defaultDnsPrefix" => [String.t()],
        "displayName" => [String.t()],
        "managedServices" => managed_services(),
        "ociDnsForwardingConfigs" => list(oci_dns_forwarding_config()),
        "ociNetworkAnchorId" => [String.t()],
        "ociNetworkAnchorUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "ociVcnId" => [String.t()],
        "ociVcnUrl" => [String.t()],
        "odbNetworkArn" => [String.t()],
        "odbNetworkId" => String.t(),
        "peeredCidrs" => list([String.t()]()),
        "percentProgress" => [float()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type odb_network_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_server_summary() :: %{
        "autonomousVirtualMachineIds" => list([String.t()]()),
        "autonomousVmClusterIds" => list([String.t()]()),
        "computeModel" => list(any()),
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t(),
        "dbServerPatchingDetails" => db_server_patching_details(),
        "displayName" => [String.t()],
        "exadataInfrastructureId" => [String.t()],
        "maxCpuCount" => [integer()],
        "maxDbNodeStorageInGBs" => [integer()],
        "maxMemoryInGBs" => [integer()],
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t()],
        "ocid" => [String.t()],
        "shape" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vmClusterIds" => list([String.t()]())
      }
      
  """
  @type db_server_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_node_output() :: %{
        "dbNodeId" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type stop_db_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_exadata_infrastructure_input() :: %{
        optional("availabilityZone") => [String.t()],
        optional("availabilityZoneId") => [String.t()],
        optional("clientToken") => String.t(),
        optional("customerContactsToSendToOCI") => list(customer_contact()),
        optional("databaseServerType") => String.t(),
        optional("maintenanceWindow") => maintenance_window(),
        optional("storageServerType") => String.t(),
        optional("tags") => map(),
        required("computeCount") => [integer()],
        required("displayName") => String.t(),
        required("shape") => String.t(),
        required("storageCount") => [integer()]
      }
      
  """
  @type create_cloud_exadata_infrastructure_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_servers_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_db_servers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initialize_service_output() :: %{}
      
  """
  @type initialize_service_output() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_odb_peering_connections_output() :: %{
        "nextToken" => [String.t()],
        "odbPeeringConnections" => list(odb_peering_connection_summary())
      }
      
  """
  @type list_odb_peering_connections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_contact() :: %{
        "email" => String.t()
      }
      
  """
  @type customer_contact() :: %{String.t() => any()}

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
  @type delete_odb_network_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      autonomous_virtual_machine_summary() :: %{
        "autonomousVirtualMachineId" => String.t(),
        "clientIpAddress" => [String.t()],
        "cloudAutonomousVmClusterId" => [String.t()],
        "cpuCoreCount" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerDisplayName" => [String.t()],
        "dbServerId" => String.t(),
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t()],
        "ocid" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vmName" => [String.t()]
      }
      
  """
  @type autonomous_virtual_machine_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_exadata_infrastructure_output() :: %{
        "cloudExadataInfrastructureId" => [String.t()],
        "displayName" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type create_cloud_exadata_infrastructure_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cloud_exadata_infrastructures_output() :: %{
        "cloudExadataInfrastructures" => list(cloud_exadata_infrastructure_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_cloud_exadata_infrastructures_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      system_version_summary() :: %{
        "giVersion" => [String.t()],
        "shape" => [String.t()],
        "systemVersions" => list([String.t()]())
      }
      
  """
  @type system_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_s3_backup_access() :: %{
        "ipv4Addresses" => list([String.t()]()),
        "status" => list(any())
      }
      
  """
  @type managed_s3_backup_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      db_node() :: %{
        "additionalDetails" => [String.t()],
        "backupIpId" => [String.t()],
        "backupVnic2Id" => [String.t()],
        "backupVnicId" => [String.t()],
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeArn" => String.t(),
        "dbNodeId" => String.t(),
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t(),
        "dbSystemId" => [String.t()],
        "faultDomain" => [String.t()],
        "floatingIpAddress" => [String.t()],
        "hostIpId" => [String.t()],
        "hostname" => [String.t()],
        "maintenanceType" => list(any()),
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t()],
        "ocid" => [String.t()],
        "privateIpAddress" => [String.t()],
        "softwareStorageSizeInGB" => [integer()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "timeMaintenanceWindowEnd" => [String.t()],
        "timeMaintenanceWindowStart" => [String.t()],
        "totalCpuCoreCount" => [integer()],
        "vnic2Id" => [String.t()],
        "vnicId" => [String.t()]
      }
      
  """
  @type db_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      month() :: %{
        "name" => list(any())
      }
      
  """
  @type month() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_server_output() :: %{
        "dbServer" => db_server()
      }
      
  """
  @type get_db_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_db_node_input() :: %{}
      
  """
  @type start_db_node_input() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_vm_cluster_summary() :: %{
        "iormConfigCache" => exadata_iorm_config(),
        "shape" => [String.t()],
        "displayName" => [String.t()],
        "isSparseDiskgroupEnabled" => [boolean()],
        "statusReason" => [String.t()],
        "hostname" => [String.t()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "lastUpdateHistoryEntryId" => [String.t()],
        "domain" => [String.t()],
        "vipIds" => list([String.t()]()),
        "cpuCoreCount" => [integer()],
        "dataStorageSizeInTBs" => [float()],
        "isLocalBackupEnabled" => [boolean()],
        "giVersion" => [String.t()],
        "systemVersion" => [String.t()],
        "diskRedundancy" => list(any()),
        "ocid" => [String.t()],
        "scanDnsName" => [String.t()],
        "dbServers" => list([String.t()]()),
        "createdAt" => [non_neg_integer()],
        "clusterName" => [String.t()],
        "listenerPort" => [integer()],
        "cloudExadataInfrastructureId" => [String.t()],
        "cloudVmClusterArn" => [String.t()],
        "percentProgress" => [float()],
        "storageSizeInGBs" => [integer()],
        "sshPublicKeys" => list(String.t()),
        "timeZone" => [String.t()],
        "scanDnsRecordId" => [String.t()],
        "scanIpIds" => list([String.t()]()),
        "status" => list(any()),
        "ociUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "nodeCount" => [integer()],
        "computeModel" => list(any()),
        "odbNetworkId" => String.t(),
        "dataCollectionOptions" => data_collection_options(),
        "cloudVmClusterId" => String.t()
      }
      
  """
  @type cloud_vm_cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_iorm_config() :: %{
        "dbName" => [String.t()],
        "flashCacheLimit" => [String.t()],
        "share" => [integer()]
      }
      
  """
  @type db_iorm_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_exadata_infrastructure() :: %{
        "shape" => [String.t()],
        "availableStorageSizeInGBs" => [integer()],
        "activatedStorageCount" => [integer()],
        "displayName" => [String.t()],
        "statusReason" => [String.t()],
        "memorySizeInGBs" => [integer()],
        "maxDbNodeStorageSizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "cloudExadataInfrastructureArn" => [String.t()],
        "maxMemoryInGBs" => [integer()],
        "lastMaintenanceRunId" => [String.t()],
        "cpuCount" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "nextMaintenanceRunId" => [String.t()],
        "dataStorageSizeInTBs" => [float()],
        "monthlyStorageServerVersion" => [String.t()],
        "totalStorageSizeInGBs" => [integer()],
        "customerContactsToSendToOCI" => list(customer_contact()),
        "ocid" => [String.t()],
        "createdAt" => [non_neg_integer()],
        "storageServerType" => [String.t()],
        "cloudExadataInfrastructureId" => String.t(),
        "percentProgress" => [float()],
        "storageServerVersion" => [String.t()],
        "maxCpuCount" => [integer()],
        "storageCount" => [integer()],
        "additionalStorageCount" => [integer()],
        "maxDataStorageInTBs" => [float()],
        "monthlyDbServerVersion" => [String.t()],
        "status" => list(any()),
        "ociUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "computeModel" => list(any()),
        "dbServerVersion" => [String.t()],
        "availabilityZoneId" => [String.t()],
        "databaseServerType" => [String.t()],
        "availabilityZone" => [String.t()],
        "computeCount" => [integer()]
      }
      
  """
  @type cloud_exadata_infrastructure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_cloud_autonomous_vm_cluster_input() :: %{}
      
  """
  @type get_cloud_autonomous_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      list_autonomous_virtual_machines_output() :: %{
        "autonomousVirtualMachines" => list(autonomous_virtual_machine_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_autonomous_virtual_machines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cloud_exadata_infrastructures_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_cloud_exadata_infrastructures_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gi_versions_output() :: %{
        "giVersions" => list(gi_version_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_gi_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_db_node_input() :: %{}
      
  """
  @type stop_db_node_input() :: %{}

  @typedoc """

  ## Example:
      
      list_db_system_shapes_output() :: %{
        "dbSystemShapes" => list(db_system_shape_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_db_system_shapes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_server() :: %{
        "autonomousVirtualMachineIds" => list([String.t()]()),
        "autonomousVmClusterIds" => list([String.t()]()),
        "computeModel" => list(any()),
        "cpuCoreCount" => [integer()],
        "createdAt" => [non_neg_integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "dbServerId" => String.t(),
        "dbServerPatchingDetails" => db_server_patching_details(),
        "displayName" => [String.t()],
        "exadataInfrastructureId" => [String.t()],
        "maxCpuCount" => [integer()],
        "maxDbNodeStorageInGBs" => [integer()],
        "maxMemoryInGBs" => [integer()],
        "memorySizeInGBs" => [integer()],
        "ociResourceAnchorName" => [String.t()],
        "ocid" => [String.t()],
        "shape" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()],
        "vmClusterIds" => list([String.t()]())
      }
      
  """
  @type db_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_marketplace_registration_input() :: %{
        required("marketplaceRegistrationToken") => [String.t()]
      }
      
  """
  @type accept_marketplace_registration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cloud_autonomous_vm_clusters_output() :: %{
        "cloudAutonomousVmClusters" => list(cloud_autonomous_vm_cluster_summary()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_cloud_autonomous_vm_clusters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cloud_vm_cluster_output() :: %{
        "cloudVmClusterId" => [String.t()],
        "displayName" => [String.t()],
        "status" => list(any()),
        "statusReason" => [String.t()]
      }
      
  """
  @type create_cloud_vm_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      managed_services() :: %{
        "managedS3BackupAccess" => managed_s3_backup_access(),
        "managedServicesIpv4Cidrs" => list([String.t()]()),
        "resourceGatewayArn" => String.t(),
        "s3Access" => s3_access(),
        "serviceNetworkArn" => String.t(),
        "serviceNetworkEndpoint" => service_network_endpoint(),
        "zeroEtlAccess" => zero_etl_access()
      }
      
  """
  @type managed_services() :: %{String.t() => any()}

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
  @type maintenance_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_exadata_infrastructure_unallocated_resources() :: %{
        "cloudAutonomousVmClusters" => list(cloud_autonomous_vm_cluster_resource_details()),
        "cloudExadataInfrastructureDisplayName" => [String.t()],
        "cloudExadataInfrastructureId" => String.t(),
        "exadataStorageInTBs" => [float()],
        "localStorageInGBs" => [integer()],
        "memoryInGBs" => [integer()],
        "ocpus" => [integer()]
      }
      
  """
  @type cloud_exadata_infrastructure_unallocated_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_odb_peering_connection_output() :: %{
        "odbPeeringConnection" => odb_peering_connection()
      }
      
  """
  @type get_odb_peering_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_cloud_exadata_infrastructure_input() :: %{
        optional("maintenanceWindow") => maintenance_window()
      }
      
  """
  @type update_cloud_exadata_infrastructure_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cloud_vm_cluster_input() :: %{}
      
  """
  @type delete_cloud_vm_cluster_input() :: %{}

  @typedoc """

  ## Example:
      
      cloud_autonomous_vm_cluster() :: %{
        "shape" => [String.t()],
        "autonomousDataStoragePercentage" => [float()],
        "reclaimableCpus" => [float()],
        "displayName" => String.t(),
        "statusReason" => [String.t()],
        "hostname" => [String.t()],
        "memorySizeInGBs" => [integer()],
        "dbNodeStorageSizeInGBs" => [integer()],
        "licenseModel" => list(any()),
        "maxAcdsLowestScaledValue" => [integer()],
        "domain" => [String.t()],
        "availableContainerDatabases" => [integer()],
        "scanListenerPortNonTls" => [integer()],
        "memoryPerOracleComputeUnitInGBs" => [integer()],
        "maintenanceWindow" => maintenance_window(),
        "totalContainerDatabases" => [integer()],
        "cpuCoreCount" => [integer()],
        "description" => [String.t()],
        "isMtlsEnabledVmCluster" => [boolean()],
        "dataStorageSizeInGBs" => [float()],
        "dataStorageSizeInTBs" => [float()],
        "provisionedCpus" => [float()],
        "cloudAutonomousVmClusterArn" => [String.t()],
        "ocid" => [String.t()],
        "dbServers" => list([String.t()]()),
        "createdAt" => [non_neg_integer()],
        "availableCpus" => [float()],
        "autonomousDataStorageSizeInTBs" => [float()],
        "timeOrdsCertificateExpires" => [non_neg_integer()],
        "cloudExadataInfrastructureId" => String.t(),
        "scanListenerPortTls" => [integer()],
        "percentProgress" => [float()],
        "reservedCpus" => [float()],
        "availableAutonomousDataStorageSizeInTBs" => [float()],
        "timeZone" => [String.t()],
        "nonProvisionableAutonomousContainerDatabases" => [integer()],
        "timeDatabaseSslCertificateExpires" => [non_neg_integer()],
        "provisionedAutonomousContainerDatabases" => [integer()],
        "status" => list(any()),
        "ociUrl" => [String.t()],
        "ociResourceAnchorName" => [String.t()],
        "nodeCount" => [integer()],
        "exadataStorageInTBsLowestScaledValue" => [float()],
        "computeModel" => list(any()),
        "cloudAutonomousVmClusterId" => String.t(),
        "cpuCoreCountPerNode" => [integer()],
        "provisionableAutonomousContainerDatabases" => [integer()],
        "odbNetworkId" => String.t(),
        "cpuPercentage" => [float()]
      }
      
  """
  @type cloud_autonomous_vm_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_odb_peering_connection_input() :: %{
        optional("clientToken") => String.t(),
        optional("displayName") => String.t(),
        optional("tags") => map(),
        required("odbNetworkId") => String.t(),
        required("peerNetworkId") => String.t()
      }
      
  """
  @type create_odb_peering_connection_input() :: %{String.t() => any()}

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
