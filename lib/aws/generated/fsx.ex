# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FSx do
  @moduledoc """
  Amazon FSx is a fully managed service that makes it easy for storage and
  application administrators to launch and use shared file storage.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      disk_iops_configuration() :: %{
        "Iops" => float(),
        "Mode" => list(any())
      }
      
  """
  @type disk_iops_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_system() :: %{
        "AdministrativeActions" => list(administrative_action()),
        "CreationTime" => non_neg_integer(),
        "DNSName" => String.t() | atom(),
        "FailureDetails" => file_system_failure_details(),
        "FileSystemId" => String.t() | atom(),
        "FileSystemType" => list(any()),
        "FileSystemTypeVersion" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "LustreConfiguration" => lustre_file_system_configuration(),
        "NetworkInterfaceIds" => list(String.t() | atom()),
        "NetworkType" => list(any()),
        "OntapConfiguration" => ontap_file_system_configuration(),
        "OpenZFSConfiguration" => open_z_f_s_file_system_configuration(),
        "OwnerId" => String.t() | atom(),
        "ResourceARN" => String.t() | atom(),
        "StorageCapacity" => integer(),
        "StorageType" => list(any()),
        "SubnetIds" => list(String.t() | atom()),
        "Tags" => list(tag()),
        "VpcId" => String.t() | atom(),
        "WindowsConfiguration" => windows_file_system_configuration()
      }
      
  """
  @type file_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_cache_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("CopyTagsToDataRepositoryAssociations") => boolean(),
        optional("DataRepositoryAssociations") => list(file_cache_data_repository_association()),
        optional("KmsKeyId") => String.t() | atom(),
        optional("LustreConfiguration") => create_file_cache_lustre_configuration(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        required("FileCacheType") => list(any()),
        required("FileCacheTypeVersion") => String.t() | atom(),
        required("StorageCapacity") => integer(),
        required("SubnetIds") => list(String.t() | atom())
      }
      
  """
  @type create_file_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_backup_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type copy_backup_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_does_not_support_tagging() :: %{
        "Message" => String.t() | atom(),
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type resource_does_not_support_tagging() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_data_repository_association_response() :: %{
        "AssociationId" => String.t() | atom(),
        "DeleteDataInFileSystem" => boolean(),
        "Lifecycle" => list(any())
      }
      
  """
  @type delete_data_repository_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("SnapshotId") => String.t() | atom()
      }
      
  """
  @type delete_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_access_point_vpc_configuration() :: %{
        "VpcId" => String.t() | atom()
      }
      
  """
  @type s3_access_point_vpc_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_lustre_metadata_configuration() :: %{
        "Iops" => integer(),
        "Mode" => list(any())
      }
      
  """
  @type create_file_system_lustre_metadata_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_user_or_group_quota() :: %{
        "Id" => integer(),
        "StorageCapacityQuotaGiB" => integer(),
        "Type" => list(any())
      }
      
  """
  @type open_z_f_s_user_or_group_quota() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found() :: %{
        "Message" => String.t() | atom(),
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type resource_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type snapshot_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_data_repository_association_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("ImportedFileChunkSize") => integer(),
        optional("S3") => s3_data_repository_configuration(),
        required("AssociationId") => String.t() | atom()
      }
      
  """
  @type update_data_repository_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_client_configuration() :: %{
        "Clients" => String.t() | atom(),
        "Options" => list(String.t() | atom())
      }
      
  """
  @type open_z_f_s_client_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_access_points() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type too_many_access_points() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      storage_virtual_machine_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type storage_virtual_machine_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_windows_configuration() :: %{
        "ActiveDirectoryId" => String.t() | atom(),
        "Aliases" => list(String.t() | atom()),
        "AuditLogConfiguration" => windows_audit_log_create_configuration(),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "PreferredSubnetId" => String.t() | atom(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type create_file_system_windows_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_import_policy() :: %{
        "Events" => list(list(any())())
      }
      
  """
  @type auto_import_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache() :: %{
        "CreationTime" => non_neg_integer(),
        "DNSName" => String.t() | atom(),
        "DataRepositoryAssociationIds" => list(String.t() | atom()),
        "FailureDetails" => file_cache_failure_details(),
        "FileCacheId" => String.t() | atom(),
        "FileCacheType" => list(any()),
        "FileCacheTypeVersion" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "LustreConfiguration" => file_cache_lustre_configuration(),
        "NetworkInterfaceIds" => list(String.t() | atom()),
        "OwnerId" => String.t() | atom(),
        "ResourceARN" => String.t() | atom(),
        "StorageCapacity" => integer(),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type file_cache() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_region() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_region() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aggregate_configuration() :: %{
        "Aggregates" => list(String.t() | atom()),
        "TotalConstituents" => integer()
      }
      
  """
  @type aggregate_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_volume_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("OntapConfiguration") => delete_volume_ontap_configuration(),
        optional("OpenZFSConfiguration") => delete_volume_open_z_f_s_configuration(),
        required("VolumeId") => String.t() | atom()
      }
      
  """
  @type delete_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_file_caches_response() :: %{
        "FileCaches" => list(file_cache()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_file_caches_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_svm_active_directory_configuration() :: %{
        "NetBiosName" => String.t() | atom(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration_updates()
      }
      
  """
  @type update_svm_active_directory_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_export_path() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_export_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_open_z_f_s_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "CopyTagsToVolumes" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddressRange" => String.t() | atom(),
        "EndpointIpv6AddressRange" => String.t() | atom(),
        "PreferredSubnetId" => String.t() | atom(),
        "ReadCacheConfiguration" => open_z_f_s_read_cache_configuration(),
        "RootVolumeConfiguration" => open_z_f_s_create_root_volume_configuration(),
        "RouteTableIds" => list(String.t() | atom()),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type create_file_system_open_z_f_s_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      start_misconfigured_state_recovery_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type start_misconfigured_state_recovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("SnapshotId") => String.t() | atom()
      }
      
  """
  @type update_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_ontap_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddressRange" => String.t() | atom(),
        "FsxAdminPassword" => String.t() | atom(),
        "HAPairs" => integer(),
        "PreferredSubnetId" => String.t() | atom(),
        "RouteTableIds" => list(String.t() | atom()),
        "ThroughputCapacity" => integer(),
        "ThroughputCapacityPerHAPair" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type create_file_system_ontap_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_system_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type update_file_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("VolumeId") => String.t() | atom()
      }
      
  """
  @type create_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_svm_active_directory_configuration() :: %{
        "NetBiosName" => String.t() | atom(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration()
      }
      
  """
  @type create_svm_active_directory_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache_failure_details() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type file_cache_failure_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      nfs_data_repository_configuration() :: %{
        "AutoExportPolicy" => auto_export_policy(),
        "DnsIps" => list(String.t() | atom()),
        "Version" => list(any())
      }
      
  """
  @type nfs_data_repository_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_network_settings() :: %{
        "InvalidRouteTableId" => String.t() | atom(),
        "InvalidSecurityGroupId" => String.t() | atom(),
        "InvalidSubnetId" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_network_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_response() :: %{
        "NextToken" => String.t() | atom(),
        "Snapshots" => list(snapshot())
      }
      
  """
  @type describe_snapshots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type create_file_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duration_since_last_access() :: %{
        "Unit" => list(any()),
        "Value" => float()
      }
      
  """
  @type duration_since_last_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retention_period() :: %{
        "Type" => list(any()),
        "Value" => integer()
      }
      
  """
  @type retention_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_volumes_request() :: %{
        optional("Filters") => list(volume_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("VolumeIds") => list(String.t() | atom())
      }
      
  """
  @type describe_volumes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_response() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type create_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      autocommit_period() :: %{
        "Type" => list(any()),
        "Value" => integer()
      }
      
  """
  @type autocommit_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_volume_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("OntapConfiguration") => update_ontap_volume_configuration(),
        optional("OpenZFSConfiguration") => update_open_z_f_s_volume_configuration(),
        required("VolumeId") => String.t() | atom()
      }
      
  """
  @type update_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_volume_ontap_configuration() :: %{
        "BypassSnaplockEnterpriseRetention" => boolean(),
        "FinalBackupTags" => list(tag()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_volume_ontap_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_and_attach_s3_access_point_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("OpenZFSConfiguration") => create_and_attach_s3_access_point_open_z_f_s_configuration(),
        optional("S3AccessPoint") => create_and_attach_s3_access_point_s3_configuration(),
        required("Name") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type create_and_attach_s3_access_point_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      missing_volume_configuration() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type missing_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_repository_task_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_and_attach_s3_access_point_open_z_f_s_configuration() :: %{
        "FileSystemIdentity" => open_z_f_s_file_system_identity(),
        "VolumeId" => String.t() | atom()
      }
      
  """
  @type create_and_attach_s3_access_point_open_z_f_s_configuration() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      backup_in_progress() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type backup_in_progress() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_storage_virtual_machines_response() :: %{
        "NextToken" => String.t() | atom(),
        "StorageVirtualMachines" => list(storage_virtual_machine())
      }
      
  """
  @type describe_storage_virtual_machines_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache_nfs_configuration() :: %{
        "DnsIps" => list(String.t() | atom()),
        "Version" => list(any())
      }
      
  """
  @type file_cache_nfs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      windows_audit_log_configuration() :: %{
        "AuditLogDestination" => String.t() | atom(),
        "FileAccessAuditLogLevel" => list(any()),
        "FileShareAccessAuditLogLevel" => list(any())
      }
      
  """
  @type windows_audit_log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_access_point_attachments_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type s3_access_point_attachments_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      administrative_action() :: %{
        "AdministrativeActionType" => list(any()),
        "FailureDetails" => administrative_action_failure_details(),
        "ProgressPercent" => integer(),
        "RemainingTransferBytes" => float(),
        "RequestTime" => non_neg_integer(),
        "Status" => list(any()),
        "TargetFileSystemValues" => file_system(),
        "TargetSnapshotValues" => snapshot(),
        "TargetVolumeValues" => volume(),
        "TotalTransferBytes" => float()
      }
      
  """
  @type administrative_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_backup_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("CopyTags") => boolean(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("SourceRegion") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("SourceBackupId") => String.t() | atom()
      }
      
  """
  @type copy_backup_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      release_file_system_nfs_v3_locks_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type release_file_system_nfs_v3_locks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_ontap_volume_configuration() :: %{
        "CopyTagsToBackups" => boolean(),
        "JunctionPath" => String.t() | atom(),
        "SecurityStyle" => list(any()),
        "SizeInBytes" => float(),
        "SizeInMegabytes" => integer(),
        "SnaplockConfiguration" => update_snaplock_configuration(),
        "SnapshotPolicy" => String.t() | atom(),
        "StorageEfficiencyEnabled" => boolean(),
        "TieringPolicy" => tiering_policy()
      }
      
  """
  @type update_ontap_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache_creating() :: %{
        "CopyTagsToDataRepositoryAssociations" => boolean(),
        "CreationTime" => non_neg_integer(),
        "DNSName" => String.t() | atom(),
        "DataRepositoryAssociationIds" => list(String.t() | atom()),
        "FailureDetails" => file_cache_failure_details(),
        "FileCacheId" => String.t() | atom(),
        "FileCacheType" => list(any()),
        "FileCacheTypeVersion" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "LustreConfiguration" => file_cache_lustre_configuration(),
        "NetworkInterfaceIds" => list(String.t() | atom()),
        "OwnerId" => String.t() | atom(),
        "ResourceARN" => String.t() | atom(),
        "StorageCapacity" => integer(),
        "SubnetIds" => list(String.t() | atom()),
        "Tags" => list(tag()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type file_cache_creating() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lustre_root_squash_configuration() :: %{
        "NoSquashNids" => list(String.t() | atom()),
        "RootSquash" => String.t() | atom()
      }
      
  """
  @type lustre_root_squash_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_nfs_export() :: %{
        "ClientConfigurations" => list(open_z_f_s_client_configuration())
      }
      
  """
  @type open_z_f_s_nfs_export() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_system_endpoints() :: %{
        "Intercluster" => file_system_endpoint(),
        "Management" => file_system_endpoint()
      }
      
  """
  @type file_system_endpoints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_and_update_volume_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("CopyStrategy") => list(any()),
        optional("Options") => list(list(any())()),
        required("SourceSnapshotARN") => String.t() | atom(),
        required("VolumeId") => String.t() | atom()
      }
      
  """
  @type copy_snapshot_and_update_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lifecycle_transition_reason() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type lifecycle_transition_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_system_failure_details() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type file_system_failure_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_system_ontap_configuration() :: %{
        "AddRouteTableIds" => list(String.t() | atom()),
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "FsxAdminPassword" => String.t() | atom(),
        "HAPairs" => integer(),
        "RemoveRouteTableIds" => list(String.t() | atom()),
        "ThroughputCapacity" => integer(),
        "ThroughputCapacityPerHAPair" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type update_file_system_ontap_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      storage_virtual_machine_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type storage_virtual_machine_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_aliases_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("Aliases") => list(String.t() | atom()),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type associate_file_system_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_open_z_f_s_origin_snapshot_configuration() :: %{
        "CopyStrategy" => list(any()),
        "SnapshotARN" => String.t() | atom()
      }
      
  """
  @type create_open_z_f_s_origin_snapshot_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      release_configuration() :: %{
        "DurationSinceLastAccess" => duration_since_last_access()
      }
      
  """
  @type release_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      self_managed_active_directory_attributes() :: %{
        "DnsIps" => list(String.t() | atom()),
        "DomainName" => String.t() | atom(),
        "FileSystemAdministratorsGroup" => String.t() | atom(),
        "OrganizationalUnitDistinguishedName" => String.t() | atom(),
        "UserName" => String.t() | atom()
      }
      
  """
  @type self_managed_active_directory_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_data_repository_task_request() :: %{
        required("TaskId") => String.t() | atom()
      }
      
  """
  @type cancel_data_repository_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_cache_response() :: %{
        "FileCacheId" => String.t() | atom(),
        "Lifecycle" => list(any())
      }
      
  """
  @type delete_file_cache_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_aliases_response() :: %{
        "Aliases" => list(alias()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_file_system_aliases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_lustre_response() :: %{
        "FinalBackupId" => String.t() | atom(),
        "FinalBackupTags" => list(tag())
      }
      
  """
  @type delete_file_system_lustre_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_executing() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_repository_task_executing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_system_endpoint() :: %{
        "DNSName" => String.t() | atom(),
        "IpAddresses" => list(String.t() | atom())
      }
      
  """
  @type file_system_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_volume_open_z_f_s_configuration() :: %{
        "Options" => list(list(any())())
      }
      
  """
  @type delete_volume_open_z_f_s_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_volume_from_backup_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("OntapConfiguration") => create_ontap_volume_configuration(),
        optional("Tags") => list(tag()),
        required("BackupId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_volume_from_backup_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      self_managed_active_directory_configuration_updates() :: %{
        "DnsIps" => list(String.t() | atom()),
        "DomainName" => String.t() | atom(),
        "FileSystemAdministratorsGroup" => String.t() | atom(),
        "OrganizationalUnitDistinguishedName" => String.t() | atom(),
        "Password" => String.t() | atom(),
        "UserName" => String.t() | atom()
      }
      
  """
  @type self_managed_active_directory_configuration_updates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tiering_policy() :: %{
        "CoolingPeriod" => integer(),
        "Name" => list(any())
      }
      
  """
  @type tiering_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      svm_active_directory_configuration() :: %{
        "NetBiosName" => String.t() | atom(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_attributes()
      }
      
  """
  @type svm_active_directory_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_failure_details() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_repository_task_failure_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      svm_endpoints() :: %{
        "Iscsi" => svm_endpoint(),
        "Management" => svm_endpoint(),
        "Nfs" => svm_endpoint(),
        "Smb" => svm_endpoint()
      }
      
  """
  @type svm_endpoints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      backup_restoring() :: %{
        "FileSystemId" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type backup_restoring() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unsupported_operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_volume_ontap_response() :: %{
        "FinalBackupId" => String.t() | atom(),
        "FinalBackupTags" => list(tag())
      }
      
  """
  @type delete_volume_ontap_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_storage_virtual_machine_request() :: %{
        optional("ActiveDirectoryConfiguration") => create_svm_active_directory_configuration(),
        optional("ClientRequestToken") => String.t() | atom(),
        optional("RootVolumeSecurityStyle") => list(any()),
        optional("SvmAdminPassword") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("FileSystemId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_storage_virtual_machine_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_aliases_response() :: %{
        "Aliases" => list(alias())
      }
      
  """
  @type disassociate_file_system_aliases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_snapshot_and_update_volume_response() :: %{
        "AdministrativeActions" => list(administrative_action()),
        "Lifecycle" => list(any()),
        "VolumeId" => String.t() | atom()
      }
      
  """
  @type copy_snapshot_and_update_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_snaplock_configuration() :: %{
        "AuditLogVolume" => boolean(),
        "AutocommitPeriod" => autocommit_period(),
        "PrivilegedDelete" => list(any()),
        "RetentionPeriod" => snaplock_retention_period(),
        "VolumeAppendModeEnabled" => boolean()
      }
      
  """
  @type update_snaplock_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_aggregate_configuration() :: %{
        "Aggregates" => list(String.t() | atom()),
        "ConstituentsPerAggregate" => integer()
      }
      
  """
  @type create_aggregate_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_backups_request() :: %{
        optional("BackupIds") => list(String.t() | atom()),
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_backups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_open_z_f_s_volume_configuration() :: %{
        "DataCompressionType" => list(any()),
        "NfsExports" => list(open_z_f_s_nfs_export()),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "StorageCapacityQuotaGiB" => integer(),
        "StorageCapacityReservationGiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota())
      }
      
  """
  @type update_open_z_f_s_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_status() :: %{
        "FailedCount" => float(),
        "LastUpdatedTime" => non_neg_integer(),
        "ReleasedCapacity" => float(),
        "SucceededCount" => float(),
        "TotalCount" => float()
      }
      
  """
  @type data_repository_task_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_system_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("FileSystemTypeVersion") => String.t() | atom(),
        optional("LustreConfiguration") => update_file_system_lustre_configuration(),
        optional("NetworkType") => list(any()),
        optional("OntapConfiguration") => update_file_system_ontap_configuration(),
        optional("OpenZFSConfiguration") => update_file_system_open_z_f_s_configuration(),
        optional("StorageCapacity") => integer(),
        optional("StorageType") => list(any()),
        optional("WindowsConfiguration") => update_file_system_windows_configuration(),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type update_file_system_request() :: %{(String.t() | atom()) => any()}

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
      
      update_shared_vpc_configuration_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("EnableFsxRouteTableUpdatesFromParticipantAccounts") => String.t() | atom()
      }
      
  """
  @type update_shared_vpc_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_data_repository_association_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("DeleteDataInFileSystem") => boolean(),
        required("AssociationId") => String.t() | atom()
      }
      
  """
  @type delete_data_repository_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      active_directory_error() :: %{
        "ActiveDirectoryId" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type active_directory_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_response() :: %{
        "FileSystemId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "LustreResponse" => delete_file_system_lustre_response(),
        "OpenZFSResponse" => delete_file_system_open_z_f_s_response(),
        "WindowsResponse" => delete_file_system_windows_response()
      }
      
  """
  @type delete_file_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_association_response() :: %{
        "Association" => data_repository_association()
      }
      
  """
  @type create_data_repository_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_aliases_response() :: %{
        "Aliases" => list(alias())
      }
      
  """
  @type associate_file_system_aliases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_source_kms_key() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_source_kms_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snaplock_configuration() :: %{
        "AuditLogVolume" => boolean(),
        "AutocommitPeriod" => autocommit_period(),
        "PrivilegedDelete" => list(any()),
        "RetentionPeriod" => snaplock_retention_period(),
        "SnaplockType" => list(any()),
        "VolumeAppendModeEnabled" => boolean()
      }
      
  """
  @type snaplock_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_open_z_f_s_configuration() :: %{
        "FinalBackupTags" => list(tag()),
        "Options" => list(list(any())()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_file_system_open_z_f_s_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_lustre_configuration() :: %{
        "AutoImportPolicy" => list(any()),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DataCompressionType" => list(any()),
        "DataReadCacheConfiguration" => lustre_read_cache_configuration(),
        "DeploymentType" => list(any()),
        "DriveCacheType" => list(any()),
        "EfaEnabled" => boolean(),
        "ExportPath" => String.t() | atom(),
        "ImportPath" => String.t() | atom(),
        "ImportedFileChunkSize" => integer(),
        "LogConfiguration" => lustre_log_create_configuration(),
        "MetadataConfiguration" => create_file_system_lustre_metadata_configuration(),
        "PerUnitStorageThroughput" => integer(),
        "RootSquashConfiguration" => lustre_root_squash_configuration(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type create_file_system_lustre_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_storage_virtual_machine_response() :: %{
        "Lifecycle" => list(any()),
        "StorageVirtualMachineId" => String.t() | atom()
      }
      
  """
  @type delete_storage_virtual_machine_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_data_repository_type() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_data_repository_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("FileSystemTypeVersion") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("LustreConfiguration") => create_file_system_lustre_configuration(),
        optional("NetworkType") => list(any()),
        optional("OntapConfiguration") => create_file_system_ontap_configuration(),
        optional("OpenZFSConfiguration") => create_file_system_open_z_f_s_configuration(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("StorageCapacity") => integer(),
        optional("StorageType") => list(any()),
        optional("Tags") => list(tag()),
        optional("WindowsConfiguration") => create_file_system_windows_configuration(),
        required("FileSystemType") => list(any()),
        required("SubnetIds") => list(String.t() | atom())
      }
      
  """
  @type create_file_system_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      not_service_resource_error() :: %{
        "Message" => String.t() | atom(),
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type not_service_resource_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_open_z_f_s_response() :: %{
        "FinalBackupId" => String.t() | atom(),
        "FinalBackupTags" => list(tag())
      }
      
  """
  @type delete_file_system_open_z_f_s_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      storage_virtual_machine() :: %{
        "ActiveDirectoryConfiguration" => svm_active_directory_configuration(),
        "CreationTime" => non_neg_integer(),
        "Endpoints" => svm_endpoints(),
        "FileSystemId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "LifecycleTransitionReason" => lifecycle_transition_reason(),
        "Name" => String.t() | atom(),
        "ResourceARN" => String.t() | atom(),
        "RootVolumeSecurityStyle" => list(any()),
        "StorageVirtualMachineId" => String.t() | atom(),
        "Subtype" => list(any()),
        "Tags" => list(tag()),
        "UUID" => String.t() | atom()
      }
      
  """
  @type storage_virtual_machine() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_system_lustre_configuration() :: %{
        "AutoImportPolicy" => list(any()),
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DataCompressionType" => list(any()),
        "DataReadCacheConfiguration" => lustre_read_cache_configuration(),
        "LogConfiguration" => lustre_log_create_configuration(),
        "MetadataConfiguration" => update_file_system_lustre_metadata_configuration(),
        "PerUnitStorageThroughput" => integer(),
        "RootSquashConfiguration" => lustre_root_squash_configuration(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type update_file_system_lustre_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      release_file_system_nfs_v3_locks_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type release_file_system_nfs_v3_locks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      svm_endpoint() :: %{
        "DNSName" => String.t() | atom(),
        "IpAddresses" => list(String.t() | atom())
      }
      
  """
  @type svm_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_and_delete_s3_access_point_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type detach_and_delete_s3_access_point_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_backup_response() :: %{
        "BackupId" => String.t() | atom(),
        "Lifecycle" => list(any())
      }
      
  """
  @type delete_backup_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_file_system_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "CopyTagsToVolumes" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddress" => String.t() | atom(),
        "EndpointIpAddressRange" => String.t() | atom(),
        "EndpointIpv6Address" => String.t() | atom(),
        "EndpointIpv6AddressRange" => String.t() | atom(),
        "PreferredSubnetId" => String.t() | atom(),
        "ReadCacheConfiguration" => open_z_f_s_read_cache_configuration(),
        "RootVolumeId" => String.t() | atom(),
        "RouteTableIds" => list(String.t() | atom()),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type open_z_f_s_file_system_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_storage_virtual_machine_request() :: %{
        optional("ActiveDirectoryConfiguration") => update_svm_active_directory_configuration(),
        optional("ClientRequestToken") => String.t() | atom(),
        optional("SvmAdminPassword") => String.t() | atom(),
        required("StorageVirtualMachineId") => String.t() | atom()
      }
      
  """
  @type update_storage_virtual_machine_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_s3_access_point_attachments_request() :: %{
        optional("Filters") => list(s3_access_point_attachments_filter()),
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_s3_access_point_attachments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_association_request() :: %{
        optional("BatchImportMetaDataOnCreate") => boolean(),
        optional("ClientRequestToken") => String.t() | atom(),
        optional("FileSystemPath") => String.t() | atom(),
        optional("ImportedFileChunkSize") => integer(),
        optional("S3") => s3_data_repository_configuration(),
        optional("Tags") => list(tag()),
        required("DataRepositoryPath") => String.t() | atom(),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type create_data_repository_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_shared_vpc_configuration_request() :: %{}
      
  """
  @type describe_shared_vpc_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      invalid_per_unit_storage_throughput() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_per_unit_storage_throughput() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lustre_log_create_configuration() :: %{
        "Destination" => String.t() | atom(),
        "Level" => list(any())
      }
      
  """
  @type lustre_log_create_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_volume_response() :: %{
        "Volume" => volume()
      }
      
  """
  @type create_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_access_point_open_z_f_s_configuration() :: %{
        "FileSystemIdentity" => open_z_f_s_file_system_identity(),
        "VolumeId" => String.t() | atom()
      }
      
  """
  @type s3_access_point_open_z_f_s_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_storage_virtual_machine_response() :: %{
        "StorageVirtualMachine" => storage_virtual_machine()
      }
      
  """
  @type update_storage_virtual_machine_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_and_attach_s3_access_point_response() :: %{
        "S3AccessPointAttachment" => s3_access_point_attachment()
      }
      
  """
  @type create_and_attach_s3_access_point_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      missing_file_cache_configuration() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type missing_file_cache_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_file_system_identity() :: %{
        "PosixUser" => open_z_f_s_posix_file_system_user(),
        "Type" => list(any())
      }
      
  """
  @type open_z_f_s_file_system_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_cache_lustre_configuration() :: %{
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type update_file_cache_lustre_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lustre_log_configuration() :: %{
        "Destination" => String.t() | atom(),
        "Level" => list(any())
      }
      
  """
  @type lustre_log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_access_point() :: %{
        "Alias" => String.t() | atom(),
        "ResourceARN" => String.t() | atom(),
        "VpcConfiguration" => s3_access_point_vpc_configuration()
      }
      
  """
  @type s3_access_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_destination_kms_key() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_destination_kms_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lustre_file_system_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DataCompressionType" => list(any()),
        "DataReadCacheConfiguration" => lustre_read_cache_configuration(),
        "DataRepositoryConfiguration" => data_repository_configuration(),
        "DeploymentType" => list(any()),
        "DriveCacheType" => list(any()),
        "EfaEnabled" => boolean(),
        "LogConfiguration" => lustre_log_configuration(),
        "MetadataConfiguration" => file_system_lustre_metadata_configuration(),
        "MountName" => String.t() | atom(),
        "PerUnitStorageThroughput" => integer(),
        "RootSquashConfiguration" => lustre_root_squash_configuration(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type lustre_file_system_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_volumes_response() :: %{
        "NextToken" => String.t() | atom(),
        "Volumes" => list(volume())
      }
      
  """
  @type describe_volumes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_export_policy() :: %{
        "Events" => list(list(any())())
      }
      
  """
  @type auto_export_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_volume_from_snapshot_response() :: %{
        "AdministrativeActions" => list(administrative_action()),
        "Lifecycle" => list(any()),
        "VolumeId" => String.t() | atom()
      }
      
  """
  @type restore_volume_from_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lustre_read_cache_configuration() :: %{
        "SizeGiB" => integer(),
        "SizingMode" => list(any())
      }
      
  """
  @type lustre_read_cache_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_system_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type file_system_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type file_cache_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detach_and_delete_s3_access_point_response() :: %{
        "Lifecycle" => list(any()),
        "Name" => String.t() | atom()
      }
      
  """
  @type detach_and_delete_s3_access_point_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      missing_file_system_configuration() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type missing_file_system_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snaplock_retention_period() :: %{
        "DefaultRetention" => retention_period(),
        "MaximumRetention" => retention_period(),
        "MinimumRetention" => retention_period()
      }
      
  """
  @type snaplock_retention_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_task_request() :: %{
        optional("CapacityToRelease") => float(),
        optional("ClientRequestToken") => String.t() | atom(),
        optional("Paths") => list(String.t() | atom()),
        optional("ReleaseConfiguration") => release_configuration(),
        optional("Tags") => list(tag()),
        required("FileSystemId") => String.t() | atom(),
        required("Report") => completion_report(),
        required("Type") => list(any())
      }
      
  """
  @type create_data_repository_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_storage_virtual_machine_response() :: %{
        "StorageVirtualMachine" => storage_virtual_machine()
      }
      
  """
  @type create_storage_virtual_machine_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_open_z_f_s_volume_configuration() :: %{
        "CopyTagsToSnapshots" => boolean(),
        "DataCompressionType" => list(any()),
        "NfsExports" => list(open_z_f_s_nfs_export()),
        "OriginSnapshot" => create_open_z_f_s_origin_snapshot_configuration(),
        "ParentVolumeId" => String.t() | atom(),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "StorageCapacityQuotaGiB" => integer(),
        "StorageCapacityReservationGiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota())
      }
      
  """
  @type create_open_z_f_s_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_point_already_owned_by_you() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type access_point_already_owned_by_you() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      active_directory_backup_attributes() :: %{
        "ActiveDirectoryId" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type active_directory_backup_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      backup_failure_details() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type backup_failure_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      backup() :: %{
        "BackupId" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DirectoryInformation" => active_directory_backup_attributes(),
        "FailureDetails" => backup_failure_details(),
        "FileSystem" => file_system(),
        "KmsKeyId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "OwnerId" => String.t() | atom(),
        "ProgressPercent" => integer(),
        "ResourceARN" => String.t() | atom(),
        "ResourceType" => list(any()),
        "SizeInBytes" => float(),
        "SourceBackupId" => String.t() | atom(),
        "SourceBackupRegion" => String.t() | atom(),
        "Tags" => list(tag()),
        "Type" => list(any()),
        "Volume" => volume()
      }
      
  """
  @type backup() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_association_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_repository_association_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_cache_lustre_configuration() :: %{
        "DeploymentType" => list(any()),
        "MetadataConfiguration" => file_cache_lustre_metadata_configuration(),
        "PerUnitStorageThroughput" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type create_file_cache_lustre_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      completion_report() :: %{
        "Enabled" => boolean(),
        "Format" => list(any()),
        "Path" => String.t() | atom(),
        "Scope" => list(any())
      }
      
  """
  @type completion_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      backup_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type backup_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_volume_response() :: %{
        "Lifecycle" => list(any()),
        "OntapResponse" => delete_volume_ontap_response(),
        "VolumeId" => String.t() | atom()
      }
      
  """
  @type delete_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_failure_details() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_repository_failure_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type snapshot_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_data_repository_configuration() :: %{
        "AutoExportPolicy" => auto_export_policy(),
        "AutoImportPolicy" => auto_import_policy()
      }
      
  """
  @type s3_data_repository_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_read_cache_configuration() :: %{
        "SizeGiB" => integer(),
        "SizingMode" => list(any())
      }
      
  """
  @type open_z_f_s_read_cache_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_ontap_volume_configuration() :: %{
        "AggregateConfiguration" => create_aggregate_configuration(),
        "CopyTagsToBackups" => boolean(),
        "JunctionPath" => String.t() | atom(),
        "OntapVolumeType" => list(any()),
        "SecurityStyle" => list(any()),
        "SizeInBytes" => float(),
        "SizeInMegabytes" => integer(),
        "SnaplockConfiguration" => create_snaplock_configuration(),
        "SnapshotPolicy" => String.t() | atom(),
        "StorageEfficiencyEnabled" => boolean(),
        "StorageVirtualMachineId" => String.t() | atom(),
        "TieringPolicy" => tiering_policy(),
        "VolumeStyle" => list(any())
      }
      
  """
  @type create_ontap_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_system_windows_configuration() :: %{
        "AuditLogConfiguration" => windows_audit_log_create_configuration(),
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_configuration_updates(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type update_file_system_windows_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_file_systems_request() :: %{
        optional("FileSystemIds") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_file_systems_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_tasks_response() :: %{
        "DataRepositoryTasks" => list(data_repository_task()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_data_repository_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_repository_task_response() :: %{
        "DataRepositoryTask" => data_repository_task()
      }
      
  """
  @type create_data_repository_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ontap_volume_configuration() :: %{
        "AggregateConfiguration" => aggregate_configuration(),
        "CopyTagsToBackups" => boolean(),
        "FlexCacheEndpointType" => list(any()),
        "JunctionPath" => String.t() | atom(),
        "OntapVolumeType" => list(any()),
        "SecurityStyle" => list(any()),
        "SizeInBytes" => float(),
        "SizeInMegabytes" => integer(),
        "SnaplockConfiguration" => snaplock_configuration(),
        "SnapshotPolicy" => String.t() | atom(),
        "StorageEfficiencyEnabled" => boolean(),
        "StorageVirtualMachineId" => String.t() | atom(),
        "StorageVirtualMachineRoot" => boolean(),
        "TieringPolicy" => tiering_policy(),
        "UUID" => String.t() | atom(),
        "VolumeStyle" => list(any())
      }
      
  """
  @type ontap_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_associations_response() :: %{
        "Associations" => list(data_repository_association()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_data_repository_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bad_request() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type bad_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "AdministrativeActions" => list(administrative_action()),
        "CreationTime" => non_neg_integer(),
        "Lifecycle" => list(any()),
        "LifecycleTransitionReason" => lifecycle_transition_reason(),
        "Name" => String.t() | atom(),
        "ResourceARN" => String.t() | atom(),
        "SnapshotId" => String.t() | atom(),
        "Tags" => list(tag()),
        "VolumeId" => String.t() | atom()
      }
      
  """
  @type snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alias() :: %{
        "Lifecycle" => list(any()),
        "Name" => String.t() | atom()
      }
      
  """
  @type alias() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_windows_configuration() :: %{
        "FinalBackupTags" => list(tag()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_file_system_windows_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_system_open_z_f_s_configuration() :: %{
        "AddRouteTableIds" => list(String.t() | atom()),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "CopyTagsToVolumes" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpv6AddressRange" => String.t() | atom(),
        "ReadCacheConfiguration" => open_z_f_s_read_cache_configuration(),
        "RemoveRouteTableIds" => list(String.t() | atom()),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type update_file_system_open_z_f_s_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ontap_file_system_configuration() :: %{
        "AutomaticBackupRetentionDays" => integer(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "EndpointIpAddressRange" => String.t() | atom(),
        "Endpoints" => file_system_endpoints(),
        "FsxAdminPassword" => String.t() | atom(),
        "HAPairs" => integer(),
        "PreferredSubnetId" => String.t() | atom(),
        "RouteTableIds" => list(String.t() | atom()),
        "ThroughputCapacity" => integer(),
        "ThroughputCapacityPerHAPair" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type ontap_file_system_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      volume() :: %{
        "AdministrativeActions" => list(administrative_action()),
        "CreationTime" => non_neg_integer(),
        "FileSystemId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "LifecycleTransitionReason" => lifecycle_transition_reason(),
        "Name" => String.t() | atom(),
        "OntapConfiguration" => ontap_volume_configuration(),
        "OpenZFSConfiguration" => open_z_f_s_volume_configuration(),
        "ResourceARN" => String.t() | atom(),
        "Tags" => list(tag()),
        "VolumeId" => String.t() | atom(),
        "VolumeType" => list(any())
      }
      
  """
  @type volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_cache_response() :: %{
        "FileCache" => file_cache_creating()
      }
      
  """
  @type create_file_cache_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_from_backup_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type create_file_system_from_backup_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_cache_response() :: %{
        "FileCache" => file_cache()
      }
      
  """
  @type update_file_cache_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_file_caches_request() :: %{
        optional("FileCacheIds") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_file_caches_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      volume_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type volume_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      open_z_f_s_create_root_volume_configuration() :: %{
        "CopyTagsToSnapshots" => boolean(),
        "DataCompressionType" => list(any()),
        "NfsExports" => list(open_z_f_s_nfs_export()),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota())
      }
      
  """
  @type open_z_f_s_create_root_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_volume_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("OntapConfiguration") => create_ontap_volume_configuration(),
        optional("OpenZFSConfiguration") => create_open_z_f_s_volume_configuration(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("VolumeType") => list(any())
      }
      
  """
  @type create_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_cache_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("FileCacheId") => String.t() | atom()
      }
      
  """
  @type delete_file_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_tasks_request() :: %{
        optional("Filters") => list(data_repository_task_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TaskIds") => list(String.t() | atom())
      }
      
  """
  @type describe_data_repository_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_limit_exceeded() :: %{
        "Limit" => list(any()),
        "Message" => String.t() | atom()
      }
      
  """
  @type service_limit_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      self_managed_active_directory_configuration() :: %{
        "DnsIps" => list(String.t() | atom()),
        "DomainName" => String.t() | atom(),
        "FileSystemAdministratorsGroup" => String.t() | atom(),
        "OrganizationalUnitDistinguishedName" => String.t() | atom(),
        "Password" => String.t() | atom(),
        "UserName" => String.t() | atom()
      }
      
  """
  @type self_managed_active_directory_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      incompatible_region_for_multi_a_z() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type incompatible_region_for_multi_a_z() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_data_repository_associations_request() :: %{
        optional("AssociationIds") => list(String.t() | atom()),
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_data_repository_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_posix_file_system_user() :: %{
        "Gid" => float(),
        "SecondaryGids" => list(float()),
        "Uid" => float()
      }
      
  """
  @type open_z_f_s_posix_file_system_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_task() :: %{
        "CapacityToRelease" => float(),
        "CreationTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "FailureDetails" => data_repository_task_failure_details(),
        "FileCacheId" => String.t() | atom(),
        "FileSystemId" => String.t() | atom(),
        "Lifecycle" => list(any()),
        "Paths" => list(String.t() | atom()),
        "ReleaseConfiguration" => release_configuration(),
        "Report" => completion_report(),
        "ResourceARN" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "Status" => data_repository_task_status(),
        "Tags" => list(tag()),
        "TaskId" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type data_repository_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      windows_audit_log_create_configuration() :: %{
        "AuditLogDestination" => String.t() | atom(),
        "FileAccessAuditLogLevel" => list(any()),
        "FileShareAccessAuditLogLevel" => list(any())
      }
      
  """
  @type windows_audit_log_create_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      windows_file_system_configuration() :: %{
        "ActiveDirectoryId" => String.t() | atom(),
        "Aliases" => list(alias()),
        "AuditLogConfiguration" => windows_audit_log_configuration(),
        "AutomaticBackupRetentionDays" => integer(),
        "CopyTagsToBackups" => boolean(),
        "DailyAutomaticBackupStartTime" => String.t() | atom(),
        "DeploymentType" => list(any()),
        "DiskIopsConfiguration" => disk_iops_configuration(),
        "MaintenanceOperationsInProgress" => list(list(any())()),
        "PreferredFileServerIp" => String.t() | atom(),
        "PreferredSubnetId" => String.t() | atom(),
        "RemoteAdministrationEndpoint" => String.t() | atom(),
        "SelfManagedActiveDirectoryConfiguration" => self_managed_active_directory_attributes(),
        "ThroughputCapacity" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type windows_file_system_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_ended() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_repository_task_ended() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_file_systems_response() :: %{
        "FileSystems" => list(file_system()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_file_systems_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_shared_vpc_configuration_response() :: %{
        "EnableFsxRouteTableUpdatesFromParticipantAccounts" => String.t() | atom()
      }
      
  """
  @type describe_shared_vpc_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_access_point() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_access_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_access_point_attachment() :: %{
        "CreationTime" => non_neg_integer(),
        "Lifecycle" => list(any()),
        "LifecycleTransitionReason" => lifecycle_transition_reason(),
        "Name" => String.t() | atom(),
        "OpenZFSConfiguration" => s3_access_point_open_z_f_s_configuration(),
        "S3AccessPoint" => s3_access_point(),
        "Type" => list(any())
      }
      
  """
  @type s3_access_point_attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_and_attach_s3_access_point_s3_configuration() :: %{
        "Policy" => String.t() | atom(),
        "VpcConfiguration" => s3_access_point_vpc_configuration()
      }
      
  """
  @type create_and_attach_s3_access_point_s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_task_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type data_repository_task_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_request() :: %{
        optional("Filters") => list(snapshot_filter()),
        optional("IncludeShared") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SnapshotIds") => list(String.t() | atom())
      }
      
  """
  @type describe_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache_lustre_metadata_configuration() :: %{
        "StorageCapacity" => integer()
      }
      
  """
  @type file_cache_lustre_metadata_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_response() :: %{
        "Snapshot" => snapshot()
      }
      
  """
  @type update_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache_data_repository_association() :: %{
        "DataRepositoryPath" => String.t() | atom(),
        "DataRepositorySubdirectories" => list(String.t() | atom()),
        "FileCachePath" => String.t() | atom(),
        "NFS" => file_cache_nfs_configuration()
      }
      
  """
  @type file_cache_data_repository_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_volume_from_snapshot_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("Options") => list(list(any())()),
        required("SnapshotId") => String.t() | atom(),
        required("VolumeId") => String.t() | atom()
      }
      
  """
  @type restore_volume_from_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_misconfigured_state_recovery_response() :: %{
        "FileSystem" => file_system()
      }
      
  """
  @type start_misconfigured_state_recovery_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      volume_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type volume_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_snaplock_configuration() :: %{
        "AuditLogVolume" => boolean(),
        "AutocommitPeriod" => autocommit_period(),
        "PrivilegedDelete" => list(any()),
        "RetentionPeriod" => snaplock_retention_period(),
        "SnaplockType" => list(any()),
        "VolumeAppendModeEnabled" => boolean()
      }
      
  """
  @type create_snaplock_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_backups_response() :: %{
        "Backups" => list(backup()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_backups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_backup_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("BackupId") => String.t() | atom()
      }
      
  """
  @type delete_backup_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_origin_snapshot_configuration() :: %{
        "CopyStrategy" => list(any()),
        "SnapshotARN" => String.t() | atom()
      }
      
  """
  @type open_z_f_s_origin_snapshot_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      administrative_action_failure_details() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type administrative_action_failure_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_backup_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("FileSystemId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VolumeId") => String.t() | atom()
      }
      
  """
  @type create_backup_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_system_lustre_metadata_configuration() :: %{
        "Iops" => integer(),
        "Mode" => list(any())
      }
      
  """
  @type file_system_lustre_metadata_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_windows_response() :: %{
        "FinalBackupId" => String.t() | atom(),
        "FinalBackupTags" => list(tag())
      }
      
  """
  @type delete_file_system_windows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_shared_vpc_configuration_response() :: %{
        "EnableFsxRouteTableUpdatesFromParticipantAccounts" => String.t() | atom()
      }
      
  """
  @type update_shared_vpc_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      incompatible_parameter_error() :: %{
        "Message" => String.t() | atom(),
        "Parameter" => String.t() | atom()
      }
      
  """
  @type incompatible_parameter_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_access_point_attachment_not_found() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type s3_access_point_attachment_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      backup_being_copied() :: %{
        "BackupId" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type backup_being_copied() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_volume_from_backup_response() :: %{
        "Volume" => volume()
      }
      
  """
  @type create_volume_from_backup_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_data_repository_association_response() :: %{
        "Association" => data_repository_association()
      }
      
  """
  @type update_data_repository_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_aliases_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("Aliases") => list(String.t() | atom()),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type disassociate_file_system_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_request() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_storage_virtual_machine_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("StorageVirtualMachineId") => String.t() | atom()
      }
      
  """
  @type delete_storage_virtual_machine_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_aliases_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type describe_file_system_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_import_path() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_import_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      open_z_f_s_volume_configuration() :: %{
        "CopyStrategy" => list(any()),
        "CopyTagsToSnapshots" => boolean(),
        "DataCompressionType" => list(any()),
        "DeleteClonedVolumes" => boolean(),
        "DeleteIntermediateData" => boolean(),
        "DeleteIntermediateSnaphots" => boolean(),
        "DestinationSnapshot" => String.t() | atom(),
        "NfsExports" => list(open_z_f_s_nfs_export()),
        "OriginSnapshot" => open_z_f_s_origin_snapshot_configuration(),
        "ParentVolumeId" => String.t() | atom(),
        "ReadOnly" => boolean(),
        "RecordSizeKiB" => integer(),
        "RestoreToSnapshot" => String.t() | atom(),
        "SourceSnapshotARN" => String.t() | atom(),
        "StorageCapacityQuotaGiB" => integer(),
        "StorageCapacityReservationGiB" => integer(),
        "UserAndGroupQuotas" => list(open_z_f_s_user_or_group_quota()),
        "VolumePath" => String.t() | atom()
      }
      
  """
  @type open_z_f_s_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_configuration() :: %{
        "AutoImportPolicy" => list(any()),
        "ExportPath" => String.t() | atom(),
        "FailureDetails" => data_repository_failure_details(),
        "ImportPath" => String.t() | atom(),
        "ImportedFileChunkSize" => integer(),
        "Lifecycle" => list(any())
      }
      
  """
  @type data_repository_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_repository_association() :: %{
        "AssociationId" => String.t() | atom(),
        "BatchImportMetaDataOnCreate" => boolean(),
        "CreationTime" => non_neg_integer(),
        "DataRepositoryPath" => String.t() | atom(),
        "DataRepositorySubdirectories" => list(String.t() | atom()),
        "FailureDetails" => data_repository_failure_details(),
        "FileCacheId" => String.t() | atom(),
        "FileCachePath" => String.t() | atom(),
        "FileSystemId" => String.t() | atom(),
        "FileSystemPath" => String.t() | atom(),
        "ImportedFileChunkSize" => integer(),
        "Lifecycle" => list(any()),
        "NFS" => nfs_data_repository_configuration(),
        "ResourceARN" => String.t() | atom(),
        "S3" => s3_data_repository_configuration(),
        "Tags" => list(tag())
      }
      
  """
  @type data_repository_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_backup_unavailable() :: %{
        "BackupId" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type source_backup_unavailable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_backup_response() :: %{
        "Backup" => backup()
      }
      
  """
  @type create_backup_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_cache_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("LustreConfiguration") => update_file_cache_lustre_configuration(),
        required("FileCacheId") => String.t() | atom()
      }
      
  """
  @type update_file_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_volume_response() :: %{
        "Volume" => volume()
      }
      
  """
  @type update_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_s3_access_point_attachments_response() :: %{
        "NextToken" => String.t() | atom(),
        "S3AccessPointAttachments" => list(s3_access_point_attachment())
      }
      
  """
  @type describe_s3_access_point_attachments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_storage_virtual_machines_request() :: %{
        optional("Filters") => list(storage_virtual_machine_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StorageVirtualMachineIds") => list(String.t() | atom())
      }
      
  """
  @type describe_storage_virtual_machines_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_file_system_lustre_metadata_configuration() :: %{
        "Iops" => integer(),
        "Mode" => list(any())
      }
      
  """
  @type update_file_system_lustre_metadata_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("LustreConfiguration") => delete_file_system_lustre_configuration(),
        optional("OpenZFSConfiguration") => delete_file_system_open_z_f_s_configuration(),
        optional("WindowsConfiguration") => delete_file_system_windows_configuration(),
        required("FileSystemId") => String.t() | atom()
      }
      
  """
  @type delete_file_system_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_response() :: %{
        "Lifecycle" => list(any()),
        "SnapshotId" => String.t() | atom()
      }
      
  """
  @type delete_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_cache_lustre_configuration() :: %{
        "DeploymentType" => list(any()),
        "LogConfiguration" => lustre_log_configuration(),
        "MetadataConfiguration" => file_cache_lustre_metadata_configuration(),
        "MountName" => String.t() | atom(),
        "PerUnitStorageThroughput" => integer(),
        "WeeklyMaintenanceStartTime" => String.t() | atom()
      }
      
  """
  @type file_cache_lustre_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_system_lustre_configuration() :: %{
        "FinalBackupTags" => list(tag()),
        "SkipFinalBackup" => boolean()
      }
      
  """
  @type delete_file_system_lustre_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_data_repository_task_response() :: %{
        "Lifecycle" => list(any()),
        "TaskId" => String.t() | atom()
      }
      
  """
  @type cancel_data_repository_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_file_system_from_backup_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("FileSystemTypeVersion") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("LustreConfiguration") => create_file_system_lustre_configuration(),
        optional("NetworkType") => list(any()),
        optional("OpenZFSConfiguration") => create_file_system_open_z_f_s_configuration(),
        optional("SecurityGroupIds") => list(String.t() | atom()),
        optional("StorageCapacity") => integer(),
        optional("StorageType") => list(any()),
        optional("Tags") => list(tag()),
        optional("WindowsConfiguration") => create_file_system_windows_configuration(),
        required("BackupId") => String.t() | atom(),
        required("SubnetIds") => list(String.t() | atom())
      }
      
  """
  @type create_file_system_from_backup_request() :: %{(String.t() | atom()) => any()}

  @type associate_file_system_aliases_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type cancel_data_repository_task_errors() ::
          data_repository_task_ended()
          | internal_server_error()
          | bad_request()
          | unsupported_operation()
          | data_repository_task_not_found()

  @type copy_backup_errors() ::
          source_backup_unavailable()
          | incompatible_parameter_error()
          | incompatible_region_for_multi_a_z()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | invalid_destination_kms_key()
          | invalid_source_kms_key()
          | unsupported_operation()
          | invalid_region()

  @type copy_snapshot_and_update_volume_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()

  @type create_and_attach_s3_access_point_errors() ::
          invalid_request()
          | incompatible_parameter_error()
          | volume_not_found()
          | invalid_access_point()
          | internal_server_error()
          | bad_request()
          | access_point_already_owned_by_you()
          | unsupported_operation()
          | too_many_access_points()

  @type create_backup_errors() ::
          incompatible_parameter_error()
          | volume_not_found()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()
          | backup_in_progress()

  @type create_data_repository_association_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()

  @type create_data_repository_task_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()
          | data_repository_task_executing()

  @type create_file_cache_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | missing_file_cache_configuration()
          | invalid_per_unit_storage_throughput()
          | invalid_network_settings()

  @type create_file_system_errors() ::
          invalid_import_path()
          | incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | missing_file_system_configuration()
          | invalid_per_unit_storage_throughput()
          | active_directory_error()
          | invalid_network_settings()
          | invalid_export_path()

  @type create_file_system_from_backup_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | missing_file_system_configuration()
          | invalid_per_unit_storage_throughput()
          | active_directory_error()
          | invalid_network_settings()

  @type create_snapshot_errors() ::
          volume_not_found() | service_limit_exceeded() | internal_server_error() | bad_request()

  @type create_storage_virtual_machine_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | active_directory_error()
          | unsupported_operation()

  @type create_volume_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | unsupported_operation()
          | missing_volume_configuration()
          | storage_virtual_machine_not_found()

  @type create_volume_from_backup_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | file_system_not_found()
          | missing_volume_configuration()
          | storage_virtual_machine_not_found()

  @type delete_backup_errors() ::
          backup_being_copied()
          | incompatible_parameter_error()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | backup_restoring()
          | backup_in_progress()

  @type delete_data_repository_association_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | data_repository_association_not_found()

  @type delete_file_cache_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_cache_not_found()

  @type delete_file_system_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type delete_snapshot_errors() :: internal_server_error() | bad_request() | snapshot_not_found()

  @type delete_storage_virtual_machine_errors() ::
          incompatible_parameter_error()
          | internal_server_error()
          | bad_request()
          | storage_virtual_machine_not_found()

  @type delete_volume_errors() ::
          incompatible_parameter_error()
          | volume_not_found()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()

  @type describe_backups_errors() ::
          volume_not_found()
          | internal_server_error()
          | bad_request()
          | backup_not_found()
          | file_system_not_found()

  @type describe_data_repository_associations_errors() ::
          internal_server_error()
          | bad_request()
          | data_repository_association_not_found()
          | file_system_not_found()
          | invalid_data_repository_type()

  @type describe_data_repository_tasks_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | data_repository_task_not_found()

  @type describe_file_caches_errors() ::
          internal_server_error() | bad_request() | file_cache_not_found()

  @type describe_file_system_aliases_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_file_systems_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_s3_access_point_attachments_errors() ::
          s3_access_point_attachment_not_found()
          | internal_server_error()
          | bad_request()
          | unsupported_operation()

  @type describe_shared_vpc_configuration_errors() :: internal_server_error() | bad_request()

  @type describe_snapshots_errors() ::
          internal_server_error() | bad_request() | snapshot_not_found()

  @type describe_storage_virtual_machines_errors() ::
          internal_server_error() | bad_request() | storage_virtual_machine_not_found()

  @type describe_volumes_errors() :: volume_not_found() | internal_server_error() | bad_request()

  @type detach_and_delete_s3_access_point_errors() ::
          s3_access_point_attachment_not_found()
          | incompatible_parameter_error()
          | internal_server_error()
          | bad_request()
          | unsupported_operation()

  @type disassociate_file_system_aliases_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type list_tags_for_resource_errors() ::
          internal_server_error()
          | bad_request()
          | not_service_resource_error()
          | resource_not_found()
          | resource_does_not_support_tagging()

  @type release_file_system_nfs_v3_locks_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type restore_volume_from_snapshot_errors() ::
          volume_not_found() | internal_server_error() | bad_request()

  @type start_misconfigured_state_recovery_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type tag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | not_service_resource_error()
          | resource_not_found()
          | resource_does_not_support_tagging()

  @type untag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | not_service_resource_error()
          | resource_not_found()
          | resource_does_not_support_tagging()

  @type update_data_repository_association_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | data_repository_association_not_found()

  @type update_file_cache_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | file_cache_not_found()
          | missing_file_cache_configuration()
          | unsupported_operation()

  @type update_file_system_errors() ::
          incompatible_parameter_error()
          | service_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | missing_file_system_configuration()
          | file_system_not_found()
          | unsupported_operation()
          | invalid_network_settings()

  @type update_shared_vpc_configuration_errors() ::
          incompatible_parameter_error() | internal_server_error() | bad_request()

  @type update_snapshot_errors() :: internal_server_error() | bad_request() | snapshot_not_found()

  @type update_storage_virtual_machine_errors() ::
          incompatible_parameter_error()
          | internal_server_error()
          | bad_request()
          | unsupported_operation()
          | storage_virtual_machine_not_found()

  @type update_volume_errors() ::
          incompatible_parameter_error()
          | volume_not_found()
          | internal_server_error()
          | bad_request()
          | missing_volume_configuration()

  def metadata do
    %{
      api_version: "2018-03-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fsx",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "FSx",
      signature_version: "v4",
      signing_name: "fsx",
      target_prefix: "AWSSimbaAPIService_v20180301"
    }
  end

  @doc """
  Use this action to associate one or more Domain Name Server (DNS) aliases with
  an existing Amazon FSx for Windows File Server file system.

  A file system can have a maximum of 50 DNS aliases associated with it at any one
  time. If you try to
  associate a DNS alias that is already associated with the file system, FSx takes
  no action on that alias in the request.
  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  and
  [Walkthrough 5: Using DNS aliases to access your file system](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html),
  including
  additional steps you must take to be able to access your file system using a DNS
  alias.

  The system response shows the DNS aliases that
  Amazon FSx is attempting to associate with the file system.
  Use the API
  operation to monitor the status of the aliases Amazon FSx is
  associating with the file system.
  """
  @spec associate_file_system_aliases(map(), associate_file_system_aliases_request(), list()) ::
          {:ok, associate_file_system_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_file_system_aliases_errors()}
  def associate_file_system_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateFileSystemAliases", input, options)
  end

  @doc """
  Cancels an existing Amazon FSx for Lustre data repository task if that task is
  in either the
  `PENDING` or `EXECUTING` state.

  When you cancel an export task, Amazon FSx
  does the following.

    *
  Any files that FSx has already exported are not reverted.

    *
  FSx continues to export any files that are in-flight when the cancel operation
  is received.

    *
  FSx does not export any files that have not yet been exported.

  For a release task, Amazon FSx will stop releasing files upon cancellation. Any
  files that
  have already been released will remain in the released state.
  """
  @spec cancel_data_repository_task(map(), cancel_data_repository_task_request(), list()) ::
          {:ok, cancel_data_repository_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_data_repository_task_errors()}
  def cancel_data_repository_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelDataRepositoryTask", input, options)
  end

  @doc """
  Copies an existing backup within the same Amazon Web Services account to another
  Amazon Web Services Region
  (cross-Region copy) or within the same Amazon Web Services Region (in-Region
  copy).

  You can have up to five
  backup copy requests in progress to a single destination Region per account.

  You can use cross-Region backup copies for cross-Region disaster recovery. You
  can
  periodically take backups and copy them to another Region so that in the event
  of a
  disaster in the primary Region, you can restore from backup and recover
  availability
  quickly in the other Region. You can make cross-Region copies only within your
  Amazon Web Services partition. A partition is a grouping of Regions. Amazon Web
  Services currently
  has three partitions: `aws` (Standard Regions), `aws-cn` (China
  Regions), and `aws-us-gov` (Amazon Web Services GovCloud [US] Regions).   You can also use backup copies to clone your file dataset to another Region or
  within
  the same Region.

  You can use the `SourceRegion` parameter to specify the Amazon Web Services
  Region
  from which the backup will be copied. For example, if you make the call from the
  `us-west-1` Region and want to copy a backup from the `us-east-2`
  Region, you specify `us-east-2` in the `SourceRegion` parameter
  to make a cross-Region copy. If you don't specify a Region, the backup copy is
  created in the same Region where the request is sent from (in-Region copy).

  For more information about creating backup copies, see [ Copying
  backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups)
  in the *Amazon FSx for Windows User Guide*, [Copying backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups)
  in the *Amazon FSx for Lustre User
  Guide*, and [Copying backups](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups)
  in the *Amazon FSx for OpenZFS User
  Guide*.
  """
  @spec copy_backup(map(), copy_backup_request(), list()) ::
          {:ok, copy_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_backup_errors()}
  def copy_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyBackup", input, options)
  end

  @doc """
  Updates an existing volume by using a snapshot from another Amazon FSx for
  OpenZFS file system.

  For more information, see [on-demand data replication](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/on-demand-replication.html)
  in the Amazon FSx for OpenZFS User
  Guide.
  """
  @spec copy_snapshot_and_update_volume(map(), copy_snapshot_and_update_volume_request(), list()) ::
          {:ok, copy_snapshot_and_update_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_snapshot_and_update_volume_errors()}
  def copy_snapshot_and_update_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopySnapshotAndUpdateVolume", input, options)
  end

  @doc """
  Creates an S3 access point and attaches it to an Amazon FSx volume.

  For FSx for OpenZFS file systems, the
  volume must be hosted on a high-availability file system, either Single-AZ or
  Multi-AZ. For more information,
  see [Accessing your data using Amazon S3 access points](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/s3accesspoints-for-FSx.html).
  in the Amazon FSx for OpenZFS User Guide.

  The requester requires the following permissions to perform these actions:

    *

  `fsx:CreateAndAttachS3AccessPoint`

    *

  `s3:CreateAccessPoint`

    *

  `s3:GetAccessPoint`

    *

  `s3:PutAccessPointPolicy`

    *

  `s3:DeleteAccessPoint`

  The following actions are related to `CreateAndAttachS3AccessPoint`:

    *

  `DescribeS3AccessPointAttachments`

    *

  `DetachAndDeleteS3AccessPoint`
  """
  @spec create_and_attach_s3_access_point(
          map(),
          create_and_attach_s3_access_point_request(),
          list()
        ) ::
          {:ok, create_and_attach_s3_access_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_and_attach_s3_access_point_errors()}
  def create_and_attach_s3_access_point(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAndAttachS3AccessPoint", input, options)
  end

  @doc """
  Creates a backup of an existing Amazon FSx for Windows File Server file
  system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP
  volume, or Amazon FSx for OpenZFS file system.

  We recommend creating regular
  backups so that you can restore a file system or volume from a backup if an
  issue arises
  with the original file system or volume.

  For Amazon FSx for Lustre file systems, you can create a backup only for file
  systems that have the following configuration:

    *
  A Persistent deployment type

    *
  Are *not* linked to a data repository

  For more information about backups, see the following:

    *
  For Amazon FSx for Lustre, see [Working with FSx for Lustre
  backups](https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html).

    *
  For Amazon FSx for Windows, see [Working with FSx for Windows
  backups](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html).

    *
  For Amazon FSx for NetApp ONTAP, see [Working with FSx for NetApp ONTAP
  backups](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html).

    *
  For Amazon FSx for OpenZFS, see [Working with FSx for OpenZFS backups](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html).

  If a backup with the specified client request token exists and the parameters
  match,
  this operation returns the description of the existing backup. If a backup with
  the
  specified client request token exists and the parameters don't match, this
  operation
  returns `IncompatibleParameterError`. If a backup with the specified client
  request token doesn't exist, `CreateBackup` does the following:

    *
  Creates a new Amazon FSx backup with an assigned ID, and an initial
  lifecycle state of `CREATING`.

    *
  Returns the description of the backup.

  By using the idempotent operation, you can retry a `CreateBackup`
  operation without the risk of creating an extra backup. This approach can be
  useful when
  an initial call fails in a way that makes it unclear whether a backup was
  created. If
  you use the same client request token and the initial call created a backup, the
  operation returns a successful result because all the parameters are the same.

  The `CreateBackup` operation returns while the backup's lifecycle state is
  still `CREATING`. You can check the backup creation status by calling the
  [DescribeBackups](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeBackups.html)
  operation, which returns the backup state along with other
  information.
  """
  @spec create_backup(map(), create_backup_request(), list()) ::
          {:ok, create_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_backup_errors()}
  def create_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBackup", input, options)
  end

  @doc """
  Creates an Amazon FSx for Lustre data repository association (DRA).

  A data
  repository association is a link between a directory on the file system and
  an Amazon S3 bucket or prefix. You can have a maximum of 8 data repository
  associations on a file system. Data repository associations are supported
  on all FSx for Lustre 2.12 and 2.15 file systems, excluding
  `scratch_1` deployment type.

  Each data repository association must have a unique Amazon FSx file
  system directory and a unique S3 bucket or prefix associated with it. You
  can configure a data repository association for automatic import only,
  for automatic export only, or for both. To learn more about linking a
  data repository to your file system, see
  [Linking your file system to an S3 bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).

  `CreateDataRepositoryAssociation` isn't supported
  on Amazon File Cache resources. To create a DRA on Amazon File Cache,
  use the `CreateFileCache` operation.
  """
  @spec create_data_repository_association(
          map(),
          create_data_repository_association_request(),
          list()
        ) ::
          {:ok, create_data_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_repository_association_errors()}
  def create_data_repository_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataRepositoryAssociation", input, options)
  end

  @doc """
  Creates an Amazon FSx for Lustre data repository task.

  A `CreateDataRepositoryTask` operation will fail if a data
  repository is not linked to the FSx file system.

  You use import and export data repository tasks to perform bulk operations
  between your
  FSx for Lustre file system and its linked data repositories. An example of a
  data repository
  task is exporting any data and metadata changes, including POSIX metadata, to
  files, directories,
  and symbolic links (symlinks) from your FSx file system to a linked data
  repository.

  You use release data repository tasks to release data from your file system for
  files that
  are exported to S3. The metadata of released files remains on the file system so
  users or applications
  can still access released files by reading the files again, which will restore
  data from
  Amazon S3 to the FSx for Lustre file system.

  To learn more about data repository tasks, see
  [Data Repository Tasks](https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html).
  To learn more about linking a data repository to your file system, see
  [Linking your file system to an S3 bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).
  """
  @spec create_data_repository_task(map(), create_data_repository_task_request(), list()) ::
          {:ok, create_data_repository_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_repository_task_errors()}
  def create_data_repository_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataRepositoryTask", input, options)
  end

  @doc """
  Creates a new Amazon File Cache resource.

  You can use this operation with a client request token in the request that
  Amazon File Cache uses to ensure idempotent creation.
  If a cache with the specified client request token exists and the parameters
  match, `CreateFileCache` returns the description of the existing
  cache. If a cache with the specified client request token exists and the
  parameters don't match, this call returns `IncompatibleParameterError`.
  If a file cache with the specified client request token doesn't exist,
  `CreateFileCache` does the following:

    *
  Creates a new, empty Amazon File Cache resource with an assigned ID, and
  an initial lifecycle state of `CREATING`.

    *
  Returns the description of the cache in JSON format.

  The `CreateFileCache` call returns while the cache's lifecycle
  state is still `CREATING`. You can check the cache creation status
  by calling the
  [DescribeFileCaches](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html)
  operation, which returns the cache state
  along with other information.
  """
  @spec create_file_cache(map(), create_file_cache_request(), list()) ::
          {:ok, create_file_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_file_cache_errors()}
  def create_file_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFileCache", input, options)
  end

  @doc """
  Creates a new, empty Amazon FSx file system.

  You can create the following supported
  Amazon FSx file systems using the `CreateFileSystem` API operation:

    *
  Amazon FSx for Lustre

    *
  Amazon FSx for NetApp ONTAP

    *
  Amazon FSx for OpenZFS

    *
  Amazon FSx for Windows File Server

  This operation requires a client request token in the request that Amazon FSx
  uses
  to ensure idempotent creation. This means that calling the operation multiple
  times with
  the same client request token has no effect. By using the idempotent operation,
  you can
  retry a `CreateFileSystem` operation without the risk of creating an extra
  file system. This approach can be useful when an initial call fails in a way
  that makes
  it unclear whether a file system was created. Examples are if a transport level
  timeout
  occurred, or your connection was reset. If you use the same client request token
  and the
  initial call created a file system, the client receives success as long as the
  parameters are the same.

  If a file system with the specified client request token exists and the
  parameters
  match, `CreateFileSystem` returns the description of the existing file
  system. If a file system with the specified client request token exists and the
  parameters don't match, this call returns `IncompatibleParameterError`. If a
  file system with the specified client request token doesn't exist,
  `CreateFileSystem` does the following:

    *
  Creates a new, empty Amazon FSx file system with an assigned ID, and
  an initial lifecycle state of `CREATING`.

    *
  Returns the description of the file system in JSON format.

  The `CreateFileSystem` call returns while the file system's lifecycle
  state is still `CREATING`. You can check the file-system creation status
  by calling the
  [DescribeFileSystems](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html)
  operation, which returns the file system state
  along with other information.
  """
  @spec create_file_system(map(), create_file_system_request(), list()) ::
          {:ok, create_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_file_system_errors()}
  def create_file_system(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFileSystem", input, options)
  end

  @doc """
  Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File
  Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx
  backup.

  If a file system with the specified client request token exists and the
  parameters
  match, this operation returns the description of the file system. If a file
  system
  with the specified client request token exists but the parameters don't match,
  this
  call returns `IncompatibleParameterError`. If a file system with the
  specified client request token doesn't exist, this operation does the following:

    *
  Creates a new Amazon FSx file system from backup with an assigned ID,
  and an initial lifecycle state of `CREATING`.

    *
  Returns the description of the file system.

  Parameters like the Active Directory, default share name, automatic backup, and
  backup
  settings default to the parameters of the file system that was backed up, unless
  overridden. You can explicitly supply other settings.

  By using the idempotent operation, you can retry a
  `CreateFileSystemFromBackup` call without the risk of creating an extra
  file system. This approach can be useful when an initial call fails in a way
  that makes
  it unclear whether a file system was created. Examples are if a transport level
  timeout
  occurred, or your connection was reset. If you use the same client request token
  and the
  initial call created a file system, the client receives a success message as
  long as the
  parameters are the same.

  The `CreateFileSystemFromBackup` call returns while the file system's
  lifecycle state is still `CREATING`. You can check the file-system
  creation status by calling the [
  DescribeFileSystems](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html)
  operation, which returns the file system state along
  with other information.
  """
  @spec create_file_system_from_backup(map(), create_file_system_from_backup_request(), list()) ::
          {:ok, create_file_system_from_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_file_system_from_backup_errors()}
  def create_file_system_from_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFileSystemFromBackup", input, options)
  end

  @doc """
  Creates a snapshot of an existing Amazon FSx for OpenZFS volume.

  With
  snapshots, you can easily undo file changes and compare file versions by
  restoring the
  volume to a previous version.

  If a snapshot with the specified client request token exists, and the parameters
  match, this operation returns the description of the existing snapshot. If a
  snapshot
  with the specified client request token exists, and the parameters don't match,
  this
  operation returns `IncompatibleParameterError`. If a snapshot with the
  specified client request token doesn't exist, `CreateSnapshot` does the
  following:

    *
  Creates a new OpenZFS snapshot with an assigned ID, and an initial lifecycle
  state of `CREATING`.

    *
  Returns the description of the snapshot.

  By using the idempotent operation, you can retry a `CreateSnapshot`
  operation without the risk of creating an extra snapshot. This approach can be
  useful
  when an initial call fails in a way that makes it unclear whether a snapshot was
  created. If you use the same client request token and the initial call created a
  snapshot, the operation returns a successful result because all the parameters
  are the
  same.

  The `CreateSnapshot` operation returns while the snapshot's lifecycle state
  is still `CREATING`. You can check the snapshot creation status by calling
  the
  [DescribeSnapshots](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeSnapshots.html)
  operation, which returns the snapshot state along with
  other information.
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
  Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file system.
  """
  @spec create_storage_virtual_machine(map(), create_storage_virtual_machine_request(), list()) ::
          {:ok, create_storage_virtual_machine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_storage_virtual_machine_errors()}
  def create_storage_virtual_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStorageVirtualMachine", input, options)
  end

  @doc """
  Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.
  """
  @spec create_volume(map(), create_volume_request(), list()) ::
          {:ok, create_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_volume_errors()}
  def create_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVolume", input, options)
  end

  @doc """
  Creates a new Amazon FSx for NetApp ONTAP volume from an
  existing Amazon FSx volume backup.
  """
  @spec create_volume_from_backup(map(), create_volume_from_backup_request(), list()) ::
          {:ok, create_volume_from_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_volume_from_backup_errors()}
  def create_volume_from_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVolumeFromBackup", input, options)
  end

  @doc """
  Deletes an Amazon FSx backup.

  After deletion, the backup no longer exists, and
  its data is gone.

  The `DeleteBackup` call returns instantly. The backup won't show up in
  later `DescribeBackups` calls.

  The data in a deleted backup is also deleted and can't be recovered by any
  means.
  """
  @spec delete_backup(map(), delete_backup_request(), list()) ::
          {:ok, delete_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_backup_errors()}
  def delete_backup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBackup", input, options)
  end

  @doc """
  Deletes a data repository association on an Amazon FSx for Lustre
  file system.

  Deleting the data repository association unlinks the
  file system from the Amazon S3 bucket. When deleting a data repository
  association, you have the option of deleting the data in the file system
  that corresponds to the data repository association. Data repository
  associations are supported on all FSx for Lustre 2.12 and 2.15 file
  systems, excluding `scratch_1` deployment type.
  """
  @spec delete_data_repository_association(
          map(),
          delete_data_repository_association_request(),
          list()
        ) ::
          {:ok, delete_data_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_repository_association_errors()}
  def delete_data_repository_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataRepositoryAssociation", input, options)
  end

  @doc """
  Deletes an Amazon File Cache resource.

  After deletion, the cache no longer exists, and its data
  is gone.

  The `DeleteFileCache` operation returns while the cache has the
  `DELETING` status. You can check the cache deletion status by
  calling the
  [DescribeFileCaches](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileCaches.html)
  operation, which returns a list of caches in your
  account. If you pass the cache ID for a deleted cache, the
  `DescribeFileCaches` operation returns a `FileCacheNotFound`
  error.

  The data in a deleted cache is also deleted and can't be recovered by
  any means.
  """
  @spec delete_file_cache(map(), delete_file_cache_request(), list()) ::
          {:ok, delete_file_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_file_cache_errors()}
  def delete_file_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFileCache", input, options)
  end

  @doc """
  Deletes a file system.

  After deletion, the file system no longer exists, and its data
  is gone. Any existing automatic backups and snapshots are also deleted.

  To delete an Amazon FSx for NetApp ONTAP file system, first delete all the
  volumes and storage virtual machines (SVMs) on the file system. Then provide a
  `FileSystemId` value to the `DeleteFileSystem` operation.

  Before deleting an Amazon FSx for OpenZFS file system, make sure that there
  aren't
  any Amazon S3 access points attached to any volume. For more information on how
  to list S3
  access points that are attached to volumes, see
  [Listing S3 access point attachments](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/access-points-list.html).
  For more information on how to delete S3 access points, see
  [Deleting an S3 access point attachment](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/delete-access-point.html).

  By default, when you delete an Amazon FSx for Windows File Server file system,
  a final backup is created upon deletion. This final backup isn't subject to the
  file
  system's retention policy, and must be manually deleted.

  To delete an Amazon FSx for Lustre file system, first
  [unmount](https://docs.aws.amazon.com/fsx/latest/LustreGuide/unmounting-fs.html)  it from every connected Amazon EC2 instance, then provide a `FileSystemId`
  value to the `DeleteFileSystem` operation. By default, Amazon FSx will not
  take a final backup when the `DeleteFileSystem` operation is invoked. On file
  systems
  not linked to an Amazon S3 bucket, set `SkipFinalBackup` to `false`
  to take a final backup of the file system you are deleting. Backups cannot be
  enabled on S3-linked
  file systems. To ensure all of your data is written back to S3 before deleting
  your file system,
  you can either monitor for the
  [AgeOfOldestQueuedMessage](https://docs.aws.amazon.com/fsx/latest/LustreGuide/monitoring-cloudwatch.html#auto-import-export-metrics)

  metric to be zero (if using automatic export) or you can run an
  [export data repository task](https://docs.aws.amazon.com/fsx/latest/LustreGuide/export-data-repo-task-dra.html).
  If you have automatic export enabled and want to use an export data repository
  task, you have
  to disable automatic export before executing the export data repository task.

  The `DeleteFileSystem` operation returns while the file system has the
  `DELETING` status. You can check the file system deletion status by
  calling the
  [DescribeFileSystems](https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html)
  operation, which returns a list of file systems in your
  account. If you pass the file system ID for a deleted file system, the
  `DescribeFileSystems` operation returns a `FileSystemNotFound`
  error.

  If a data repository task is in a `PENDING` or `EXECUTING` state,
  deleting an Amazon FSx for Lustre file system will fail with an HTTP status
  code 400 (Bad Request).

  The data in a deleted file system is also deleted and can't be recovered by
  any means.
  """
  @spec delete_file_system(map(), delete_file_system_request(), list()) ::
          {:ok, delete_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_file_system_errors()}
  def delete_file_system(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFileSystem", input, options)
  end

  @doc """
  Deletes an Amazon FSx for OpenZFS snapshot.

  After deletion, the snapshot no longer
  exists, and its data is gone. Deleting a snapshot doesn't affect snapshots
  stored in a
  file system backup.

  The `DeleteSnapshot` operation returns instantly. The snapshot appears with
  the lifecycle status of `DELETING` until the deletion is complete.
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
  Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM).

  Prior
  to deleting an SVM, you must delete all non-root volumes in the SVM, otherwise
  the operation will fail.
  """
  @spec delete_storage_virtual_machine(map(), delete_storage_virtual_machine_request(), list()) ::
          {:ok, delete_storage_virtual_machine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_storage_virtual_machine_errors()}
  def delete_storage_virtual_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStorageVirtualMachine", input, options)
  end

  @doc """
  Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
  volume.
  """
  @spec delete_volume(map(), delete_volume_request(), list()) ::
          {:ok, delete_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_volume_errors()}
  def delete_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVolume", input, options)
  end

  @doc """
  Returns the description of a specific Amazon FSx backup, if a
  `BackupIds` value is provided for that backup.

  Otherwise, it returns all
  backups owned by your Amazon Web Services account in the Amazon Web Services
  Region of the
  endpoint that you're calling.

  When retrieving all backups, you can optionally specify the `MaxResults`
  parameter to limit the number of backups in a response. If more backups remain,
  Amazon FSx returns a `NextToken` value in the response. In this case,
  send a later request with the `NextToken` request parameter set to the value
  of the `NextToken` value from the last response.

  This operation is used in an iterative process to retrieve a list of your
  backups.
  `DescribeBackups` is called first without a `NextToken` value.
  Then the operation continues to be called with the `NextToken` parameter set
  to the value of the last `NextToken` value until a response has no
  `NextToken` value.

  When using this operation, keep the following in mind:

    *
  The operation might return fewer than the `MaxResults` value of
  backup descriptions while still including a `NextToken`
  value.

    *
  The order of the backups returned in the response of one
  `DescribeBackups` call and the order of the backups returned
  across the responses of a multi-call iteration is unspecified.
  """
  @spec describe_backups(map(), describe_backups_request(), list()) ::
          {:ok, describe_backups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_backups_errors()}
  def describe_backups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBackups", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx for Lustre or Amazon File Cache
  data repository associations, if one or more `AssociationIds` values
  are provided in the request, or if filters are used in the request.

  Data repository
  associations are supported on Amazon File Cache resources and all FSx for Lustre
  2.12 and 2,15 file systems, excluding `scratch_1` deployment type.

  You can use filters to narrow the response to include just data repository
  associations for specific file systems (use the `file-system-id` filter with
  the ID of the file system) or caches (use the `file-cache-id` filter with
  the ID of the cache), or data repository associations for a specific repository
  type
  (use the `data-repository-type` filter with a value of `S3`
  or `NFS`). If you don't use filters, the response returns all data
  repository associations owned by your Amazon Web Services account in the Amazon
  Web Services Region
  of the endpoint that you're calling.

  When retrieving all data repository associations, you can paginate the response
  by using
  the optional `MaxResults` parameter to limit the number of data repository
  associations
  returned in a response. If more data repository associations remain, a
  `NextToken` value is returned in the response. In this case, send a later
  request with the `NextToken` request parameter set to the value of
  `NextToken` from the last response.
  """
  @spec describe_data_repository_associations(
          map(),
          describe_data_repository_associations_request(),
          list()
        ) ::
          {:ok, describe_data_repository_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_repository_associations_errors()}
  def describe_data_repository_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataRepositoryAssociations", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx for Lustre or Amazon File Cache
  data repository tasks, if
  one or more `TaskIds` values are provided in the request, or if filters are used
  in the request.

  You can use filters to narrow the response to include just tasks for specific
  file systems or caches,
  or tasks in a specific lifecycle state. Otherwise, it returns all data
  repository tasks owned
  by your Amazon Web Services account in the Amazon Web Services Region of the
  endpoint that you're calling.

  When retrieving all tasks, you can paginate the response by using the optional
  `MaxResults`
  parameter to limit the number of tasks returned in a response. If more tasks
  remain,
  a `NextToken` value is returned in the response. In this case, send a later
  request with the `NextToken` request parameter set to the value of
  `NextToken` from the last response.
  """
  @spec describe_data_repository_tasks(map(), describe_data_repository_tasks_request(), list()) ::
          {:ok, describe_data_repository_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_repository_tasks_errors()}
  def describe_data_repository_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataRepositoryTasks", input, options)
  end

  @doc """
  Returns the description of a specific Amazon File Cache resource, if a
  `FileCacheIds` value is provided for that cache.

  Otherwise, it
  returns descriptions of all caches owned by your Amazon Web Services account in
  the
  Amazon Web Services Region of the endpoint that you're calling.

  When retrieving all cache descriptions, you can optionally specify the
  `MaxResults` parameter to limit the number of descriptions in a response.
  If more cache descriptions remain, the operation returns a
  `NextToken` value in the response. In this case, send a later request
  with the `NextToken` request parameter set to the value of
  `NextToken` from the last response.

  This operation is used in an iterative process to retrieve a list of your cache
  descriptions. `DescribeFileCaches` is called first without a
  `NextToken`value. Then the operation continues to be called with the
  `NextToken` parameter set to the value of the last `NextToken`
  value until a response has no `NextToken`.

  When using this operation, keep the following in mind:

    *
  The implementation might return fewer than `MaxResults`
  cache descriptions while still including a `NextToken`
  value.

    *
  The order of caches returned in the response of one
  `DescribeFileCaches` call and the order of caches returned
  across the responses of a multicall iteration is unspecified.
  """
  @spec describe_file_caches(map(), describe_file_caches_request(), list()) ::
          {:ok, describe_file_caches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_file_caches_errors()}
  def describe_file_caches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFileCaches", input, options)
  end

  @doc """
  Returns the DNS aliases that are associated with the specified Amazon FSx for
  Windows File Server file system.

  A history of
  all DNS aliases that have been associated with and disassociated from the file
  system is available in the list of `AdministrativeAction`
  provided in the `DescribeFileSystems` operation response.
  """
  @spec describe_file_system_aliases(map(), describe_file_system_aliases_request(), list()) ::
          {:ok, describe_file_system_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_file_system_aliases_errors()}
  def describe_file_system_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFileSystemAliases", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx file systems, if a
  `FileSystemIds` value is provided for that file system.

  Otherwise, it
  returns descriptions of all file systems owned by your Amazon Web Services
  account in the
  Amazon Web Services Region of the endpoint that you're calling.

  When retrieving all file system descriptions, you can optionally specify the
  `MaxResults` parameter to limit the number of descriptions in a response.
  If more file system descriptions remain, Amazon FSx returns a
  `NextToken` value in the response. In this case, send a later request
  with the `NextToken` request parameter set to the value of
  `NextToken` from the last response.

  This operation is used in an iterative process to retrieve a list of your file
  system
  descriptions. `DescribeFileSystems` is called first without a
  `NextToken`value. Then the operation continues to be called with the
  `NextToken` parameter set to the value of the last `NextToken`
  value until a response has no `NextToken`.

  When using this operation, keep the following in mind:

    *
  The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken`
  value.

    *
  The order of file systems returned in the response of one
  `DescribeFileSystems` call and the order of file systems returned
  across the responses of a multicall iteration is unspecified.
  """
  @spec describe_file_systems(map(), describe_file_systems_request(), list()) ::
          {:ok, describe_file_systems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_file_systems_errors()}
  def describe_file_systems(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFileSystems", input, options)
  end

  @doc """
  Describes one or more S3 access points attached to Amazon FSx volumes.

  The requester requires the following permission to perform this action:

    *

  `fsx:DescribeS3AccessPointAttachments`
  """
  @spec describe_s3_access_point_attachments(
          map(),
          describe_s3_access_point_attachments_request(),
          list()
        ) ::
          {:ok, describe_s3_access_point_attachments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_s3_access_point_attachments_errors()}
  def describe_s3_access_point_attachments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeS3AccessPointAttachments", input, options)
  end

  @doc """
  Indicates whether participant accounts in your organization can create Amazon
  FSx for NetApp ONTAP Multi-AZ file systems in subnets that are shared by a
  virtual
  private cloud (VPC) owner.

  For more information, see [Creating FSx for ONTAP file systems in shared subnets](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/creating-file-systems.html#fsxn-vpc-shared-subnets).
  """
  @spec describe_shared_vpc_configuration(
          map(),
          describe_shared_vpc_configuration_request(),
          list()
        ) ::
          {:ok, describe_shared_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_shared_vpc_configuration_errors()}
  def describe_shared_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSharedVpcConfiguration", input, options)
  end

  @doc """
  Returns the description of specific Amazon FSx for OpenZFS snapshots, if a
  `SnapshotIds` value is provided.

  Otherwise, this operation returns all
  snapshots owned by your Amazon Web Services account in the Amazon Web Services
  Region of
  the endpoint that you're calling.

  When retrieving all snapshots, you can optionally specify the `MaxResults`
  parameter to limit the number of snapshots in a response. If more backups
  remain,
  Amazon FSx returns a `NextToken` value in the response. In this
  case, send a later request with the `NextToken` request parameter set to the
  value of `NextToken` from the last response.

  Use this operation in an iterative process to retrieve a list of your snapshots.
  `DescribeSnapshots` is called first without a `NextToken`
  value. Then the operation continues to be called with the `NextToken`
  parameter set to the value of the last `NextToken` value until a response has
  no `NextToken` value.

  When using this operation, keep the following in mind:

    *
  The operation might return fewer than the `MaxResults` value of
  snapshot descriptions while still including a `NextToken`
  value.

    *
  The order of snapshots returned in the response of one
  `DescribeSnapshots` call and the order of backups returned across
  the responses of a multi-call iteration is unspecified.
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
  Describes one or more Amazon FSx for NetApp ONTAP storage virtual machines
  (SVMs).
  """
  @spec describe_storage_virtual_machines(
          map(),
          describe_storage_virtual_machines_request(),
          list()
        ) ::
          {:ok, describe_storage_virtual_machines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_storage_virtual_machines_errors()}
  def describe_storage_virtual_machines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStorageVirtualMachines", input, options)
  end

  @doc """
  Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
  OpenZFS volumes.
  """
  @spec describe_volumes(map(), describe_volumes_request(), list()) ::
          {:ok, describe_volumes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_volumes_errors()}
  def describe_volumes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVolumes", input, options)
  end

  @doc """
  Detaches an S3 access point from an Amazon FSx volume and deletes the S3 access
  point.

  The requester requires the following permission to perform this action:

    *

  `fsx:DetachAndDeleteS3AccessPoint`

    *

  `s3:DeleteAccessPoint`
  """
  @spec detach_and_delete_s3_access_point(
          map(),
          detach_and_delete_s3_access_point_request(),
          list()
        ) ::
          {:ok, detach_and_delete_s3_access_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_and_delete_s3_access_point_errors()}
  def detach_and_delete_s3_access_point(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachAndDeleteS3AccessPoint", input, options)
  end

  @doc """
  Use this action to disassociate, or remove, one or more Domain Name Service
  (DNS) aliases
  from an Amazon FSx for Windows File Server file system.

  If you attempt to disassociate a DNS alias that is not
  associated with the file system, Amazon FSx responds with an HTTP status code
  400 (Bad Request). For more information, see
  [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html).

  The system generated response showing the DNS aliases that
  Amazon FSx is attempting to disassociate from the file system.
  Use the API
  operation to monitor the status of the aliases Amazon FSx is
  disassociating with the file system.
  """
  @spec disassociate_file_system_aliases(
          map(),
          disassociate_file_system_aliases_request(),
          list()
        ) ::
          {:ok, disassociate_file_system_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_file_system_aliases_errors()}
  def disassociate_file_system_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateFileSystemAliases", input, options)
  end

  @doc """
  Lists tags for Amazon FSx resources.

  When retrieving all tags, you can optionally specify the `MaxResults`
  parameter to limit the number of tags in a response. If more tags remain, Amazon
  FSx
  returns a `NextToken` value in the response. In this case, send a later
  request with the `NextToken` request parameter set to the value of
  `NextToken` from the last response.

  This action is used in an iterative process to retrieve a list of your tags.
  `ListTagsForResource` is called first without a
  `NextToken`value. Then the action continues to be called with the
  `NextToken` parameter set to the value of the last `NextToken`
  value until a response has no `NextToken`.

  When using this action, keep the following in mind:

    *
  The implementation might return fewer than `MaxResults` file
  system descriptions while still including a `NextToken`
  value.

    *
  The order of tags returned in the response of one
  `ListTagsForResource` call and the order of tags returned across
  the responses of a multi-call iteration is unspecified.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Releases the file system lock from an Amazon FSx for OpenZFS file
  system.
  """
  @spec release_file_system_nfs_v3_locks(
          map(),
          release_file_system_nfs_v3_locks_request(),
          list()
        ) ::
          {:ok, release_file_system_nfs_v3_locks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, release_file_system_nfs_v3_locks_errors()}
  def release_file_system_nfs_v3_locks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReleaseFileSystemNfsV3Locks", input, options)
  end

  @doc """
  Returns an Amazon FSx for OpenZFS volume to the state saved by the specified
  snapshot.
  """
  @spec restore_volume_from_snapshot(map(), restore_volume_from_snapshot_request(), list()) ::
          {:ok, restore_volume_from_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_volume_from_snapshot_errors()}
  def restore_volume_from_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreVolumeFromSnapshot", input, options)
  end

  @doc """
  After performing steps to repair the Active Directory configuration of an FSx
  for Windows File Server file system, use this action to
  initiate the process of Amazon FSx attempting to reconnect to the file system.
  """
  @spec start_misconfigured_state_recovery(
          map(),
          start_misconfigured_state_recovery_request(),
          list()
        ) ::
          {:ok, start_misconfigured_state_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_misconfigured_state_recovery_errors()}
  def start_misconfigured_state_recovery(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMisconfiguredStateRecovery", input, options)
  end

  @doc """
  Tags an Amazon FSx resource.
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
  This action removes a tag from an Amazon FSx resource.
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
  Updates the configuration of an existing data repository association
  on an Amazon FSx for Lustre file system.

  Data repository associations
  are supported on all FSx for Lustre 2.12 and 2.15 file systems,
  excluding `scratch_1` deployment type.
  """
  @spec update_data_repository_association(
          map(),
          update_data_repository_association_request(),
          list()
        ) ::
          {:ok, update_data_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_repository_association_errors()}
  def update_data_repository_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDataRepositoryAssociation", input, options)
  end

  @doc """
  Updates the configuration of an existing Amazon File Cache resource.

  You can update multiple properties in a single request.
  """
  @spec update_file_cache(map(), update_file_cache_request(), list()) ::
          {:ok, update_file_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_file_cache_errors()}
  def update_file_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFileCache", input, options)
  end

  @doc """
  Use this operation to update the configuration of an existing Amazon FSx file
  system.

  You can update multiple properties in a single request.

  For FSx for Windows File Server file systems, you can update the following
  properties:

    *

  `AuditLogConfiguration`

    *

  `AutomaticBackupRetentionDays`

    *

  `DailyAutomaticBackupStartTime`

    *

  `DiskIopsConfiguration`

    *

  `SelfManagedActiveDirectoryConfiguration`

    *

  `StorageCapacity`

    *

  `StorageType`

    *

  `ThroughputCapacity`

    *

  `WeeklyMaintenanceStartTime`

  For FSx for Lustre file systems, you can update the following
  properties:

    *

  `AutoImportPolicy`

    *

  `AutomaticBackupRetentionDays`

    *

  `DailyAutomaticBackupStartTime`

    *

  `DataCompressionType`

    *

  `FileSystemTypeVersion`

    *

  `LogConfiguration`

    *

  `LustreReadCacheConfiguration`

    *

  `LustreRootSquashConfiguration`

    *

  `MetadataConfiguration`

    *

  `PerUnitStorageThroughput`

    *

  `StorageCapacity`

    *

  `ThroughputCapacity`

    *

  `WeeklyMaintenanceStartTime`

  For FSx for ONTAP file systems, you can update the following
  properties:

    *

  `AddRouteTableIds`

    *

  `AutomaticBackupRetentionDays`

    *

  `DailyAutomaticBackupStartTime`

    *

  `DiskIopsConfiguration`

    *

  `FsxAdminPassword`

    *

  `HAPairs`

    *

  `RemoveRouteTableIds`

    *

  `StorageCapacity`

    *

  `ThroughputCapacity`

    *

  `ThroughputCapacityPerHAPair`

    *

  `WeeklyMaintenanceStartTime`

  For FSx for OpenZFS file systems, you can update the following
  properties:

    *

  `AddRouteTableIds`

    *

  `AutomaticBackupRetentionDays`

    *

  `CopyTagsToBackups`

    *

  `CopyTagsToVolumes`

    *

  `DailyAutomaticBackupStartTime`

    *

  `DiskIopsConfiguration`

    *

  `EndpointIpv6AddressRange`

    *

  `ReadCacheConfiguration`

    *

  `RemoveRouteTableIds`

    *

  `StorageCapacity`

    *

  `ThroughputCapacity`

    *

  `WeeklyMaintenanceStartTime`
  """
  @spec update_file_system(map(), update_file_system_request(), list()) ::
          {:ok, update_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_file_system_errors()}
  def update_file_system(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFileSystem", input, options)
  end

  @doc """
  Configures whether participant accounts in your organization can create Amazon
  FSx for NetApp ONTAP Multi-AZ file systems in subnets that are shared by a
  virtual
  private cloud (VPC) owner.

  For more information, see the [Amazon FSx for NetApp ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html).

  We strongly recommend that participant-created Multi-AZ file systems in the
  shared
  VPC are deleted before you disable this feature. Once the feature is disabled,
  these
  file systems will enter a `MISCONFIGURED` state and behave like Single-AZ
  file systems. For more information, see [Important considerations before disabling shared VPC support for Multi-AZ file
  systems](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/maz-shared-vpc.html#disabling-maz-vpc-sharing).
  """
  @spec update_shared_vpc_configuration(map(), update_shared_vpc_configuration_request(), list()) ::
          {:ok, update_shared_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_shared_vpc_configuration_errors()}
  def update_shared_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSharedVpcConfiguration", input, options)
  end

  @doc """
  Updates the name of an Amazon FSx for OpenZFS snapshot.
  """
  @spec update_snapshot(map(), update_snapshot_request(), list()) ::
          {:ok, update_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_snapshot_errors()}
  def update_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSnapshot", input, options)
  end

  @doc """
  Updates an FSx for ONTAP storage virtual machine (SVM).
  """
  @spec update_storage_virtual_machine(map(), update_storage_virtual_machine_request(), list()) ::
          {:ok, update_storage_virtual_machine_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_storage_virtual_machine_errors()}
  def update_storage_virtual_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStorageVirtualMachine", input, options)
  end

  @doc """
  Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon FSx for
  OpenZFS volume.
  """
  @spec update_volume(map(), update_volume_request(), list()) ::
          {:ok, update_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_volume_errors()}
  def update_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVolume", input, options)
  end
end
