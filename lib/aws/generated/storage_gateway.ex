# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.StorageGateway do
  @moduledoc """
  Storage Gateway Service

  Amazon FSx File Gateway is no longer available to new customers.

  Existing
  customers of FSx File Gateway can continue to use the service normally. For
  capabilities similar to FSx File Gateway, visit [this blog post](https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/).

  Storage Gateway is the service that connects an on-premises software appliance
  with cloud-based storage to provide seamless and secure integration between an
  organization's on-premises IT environment and the Amazon Web Services storage
  infrastructure. The service enables you to securely upload data to the Amazon
  Web Services Cloud for cost effective backup and rapid disaster recovery.

  Use the following links to get started using the *Storage Gateway
  Service API Reference*:

    *

  [Storage Gateway required request headers](https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders):
  Describes the required
  headers that you must send with every POST request to Storage Gateway.

    *

  [Signing requests](https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests):
  Storage Gateway requires that you authenticate
  every request you send; this topic describes how sign such a request.

    *

  [Error responses](https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses):
  Provides reference information about Storage Gateway errors.

    *

  [Operations in Storage Gateway](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html):
  Contains detailed descriptions of all Storage Gateway operations, their request
  parameters, response elements, possible errors, and
  examples of requests and responses.

    *

  [Storage Gateway endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/sg.html):
  Provides a list of each Amazon Web Services Region
  and the endpoints available for use with Storage Gateway.

  Storage Gateway resource IDs are in uppercase. When you use these resource IDs
  with the Amazon EC2 API, EC2 expects resource IDs in lowercase. You must change
  your resource ID to lowercase to use it with the EC2 API. For example, in
  Storage
  Gateway the ID for a volume might be `vol-AA22BB012345DAF670`. When you use
  this ID with the EC2 API, you must change it to `vol-aa22bb012345daf670`.
  Otherwise, the EC2 API might not behave as expected.

  IDs for Storage Gateway volumes and Amazon EBS snapshots created from gateway
  volumes are changing to a longer format. Starting in December 2016, all new
  volumes and
  snapshots will be created with a 17-character string. Starting in April 2016,
  you will
  be able to use these longer IDs so you can test your systems with the new
  format. For
  more information, see [Longer EC2 and EBS resource IDs](http://aws.amazon.com/ec2/faqs/#longer-ids).

  For example, a volume Amazon Resource Name (ARN) with the longer volume ID
  format
  looks like the following:

  `arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG`.

  A snapshot ID with the longer ID format looks like the following:
  `snap-78e226633445566ee`.

  For more information, see [Announcement: Heads-up – Longer Storage Gateway volume and snapshot IDs coming in
  2016](http://forums.aws.amazon.com/ann.jspa?annID=3557).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_cache_report_output() :: %{
        "CacheReportInfo" => cache_report_info()
      }
      
  """
  @type describe_cache_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      join_domain_output() :: %{
        "ActiveDirectoryStatus" => list(any()),
        "GatewayARN" => String.t()
      }
      
  """
  @type join_domain_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stored_iscsi_volume_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("SnapshotId") => String.t(),
        optional("Tags") => list(tag()),
        required("DiskId") => String.t(),
        required("GatewayARN") => String.t(),
        required("NetworkInterfaceId") => String.t(),
        required("PreserveExistingData") => boolean(),
        required("TargetName") => String.t()
      }
      
  """
  @type create_stored_iscsi_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evict_files_failing_upload_output() :: %{
        "NotificationId" => String.t()
      }
      
  """
  @type evict_files_failing_upload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_output() :: %{
        "FileSystemAssociationARN" => String.t()
      }
      
  """
  @type associate_file_system_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_schedule_input() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()),
        required("RecurrenceInHours") => integer(),
        required("StartAt") => integer(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type update_snapshot_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_archival_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type cancel_archival_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_gateway_information_output() :: %{
        "CloudWatchLogGroupARN" => String.t(),
        "DeprecationDate" => String.t(),
        "Ec2InstanceId" => String.t(),
        "Ec2InstanceRegion" => String.t(),
        "EndpointType" => String.t(),
        "GatewayARN" => String.t(),
        "GatewayCapacity" => list(any()),
        "GatewayId" => String.t(),
        "GatewayName" => String.t(),
        "GatewayNetworkInterfaces" => list(network_interface()),
        "GatewayState" => String.t(),
        "GatewayTimezone" => String.t(),
        "GatewayType" => String.t(),
        "HostEnvironment" => list(any()),
        "HostEnvironmentId" => String.t(),
        "LastSoftwareUpdate" => String.t(),
        "NextUpdateAvailabilityDate" => String.t(),
        "SoftwareUpdatesEndDate" => String.t(),
        "SoftwareVersion" => String.t(),
        "SupportedGatewayCapacities" => list(list(any())()),
        "Tags" => list(tag()),
        "VPCEndpoint" => String.t()
      }
      
  """
  @type describe_gateway_information_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_initiators_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type list_volume_initiators_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_when_uploaded_input() :: %{
        required("FileShareARN") => String.t()
      }
      
  """
  @type notify_when_uploaded_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_recovery_points_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type list_volume_recovery_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_upload_buffer_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_upload_buffer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cache_output() :: %{
        "CacheAllocatedInBytes" => float(),
        "CacheDirtyPercentage" => float(),
        "CacheHitPercentage" => float(),
        "CacheMissPercentage" => float(),
        "CacheUsedPercentage" => float(),
        "DiskIds" => list(String.t()),
        "GatewayARN" => String.t()
      }
      
  """
  @type describe_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_cache_report_input() :: %{
        optional("ExclusionFilters") => list(cache_report_filter()),
        optional("InclusionFilters") => list(cache_report_filter()),
        optional("Tags") => list(tag()),
        optional("VPCEndpointDNSName") => String.t(),
        required("BucketRegion") => String.t(),
        required("ClientToken") => String.t(),
        required("FileShareARN") => String.t(),
        required("LocationARN") => String.t(),
        required("Role") => String.t()
      }
      
  """
  @type start_cache_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_tape_pool_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type assign_tape_pool_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_associations_output() :: %{
        "FileSystemAssociationInfoList" => list(file_system_association_info())
      }
      
  """
  @type describe_file_system_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_with_barcode_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("PoolId") => String.t(),
        optional("Tags") => list(tag()),
        optional("Worm") => boolean(),
        required("GatewayARN") => String.t(),
        required("TapeBarcode") => String.t(),
        required("TapeSizeInBytes") => float()
      }
      
  """
  @type create_tape_with_barcode_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape_info() :: %{
        "GatewayARN" => String.t(),
        "PoolEntryDate" => non_neg_integer(),
        "PoolId" => String.t(),
        "RetentionStartDate" => non_neg_integer(),
        "TapeARN" => String.t(),
        "TapeBarcode" => String.t(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t()
      }
      
  """
  @type tape_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_share_input() :: %{
        optional("ForceDelete") => boolean(),
        required("FileShareARN") => String.t()
      }
      
  """
  @type delete_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      join_domain_input() :: %{
        optional("DomainControllers") => list(String.t()),
        optional("OrganizationalUnit") => String.t(),
        optional("TimeoutInSeconds") => integer(),
        required("DomainName") => String.t(),
        required("GatewayARN") => String.t(),
        required("Password") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type join_domain_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_association_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("Password") => String.t(),
        optional("UserName") => String.t(),
        required("FileSystemAssociationARN") => String.t()
      }
      
  """
  @type update_file_system_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bandwidth_rate_limit_input() :: %{
        required("BandwidthType") => String.t(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type delete_bandwidth_rate_limit_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_start_time_input() :: %{
        optional("DayOfMonth") => integer(),
        optional("DayOfWeek") => integer(),
        optional("HourOfDay") => integer(),
        optional("MinuteOfHour") => integer(),
        optional("SoftwareUpdatePreferences") => software_update_preferences(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_maintenance_start_time_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_iscsi_attributes() :: %{
        "ChapEnabled" => boolean(),
        "LunNumber" => integer(),
        "NetworkInterfaceId" => String.t(),
        "NetworkInterfacePort" => integer(),
        "TargetARN" => String.t()
      }
      
  """
  @type volume_iscsi_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_start_time_output() :: %{
        "DayOfMonth" => integer(),
        "DayOfWeek" => integer(),
        "GatewayARN" => String.t(),
        "HourOfDay" => integer(),
        "MinuteOfHour" => integer(),
        "SoftwareUpdatePreferences" => software_update_preferences(),
        "Timezone" => String.t()
      }
      
  """
  @type describe_maintenance_start_time_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_file_system_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("EndpointNetworkConfiguration") => endpoint_network_configuration(),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("LocationARN") => String.t(),
        required("Password") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type associate_file_system_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_recovery_points_output() :: %{
        "GatewayARN" => String.t(),
        "VolumeRecoveryPointInfos" => list(volume_recovery_point_info())
      }
      
  """
  @type list_volume_recovery_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_settings_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_smb_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_share_info() :: %{
        "FileShareARN" => String.t(),
        "FileShareId" => String.t(),
        "FileShareStatus" => String.t(),
        "FileShareType" => list(any()),
        "GatewayARN" => String.t()
      }
      
  """
  @type file_share_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_archive_input() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        required("TapeARN") => String.t()
      }
      
  """
  @type delete_tape_archive_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_cache_report_output() :: %{
        "CacheReportARN" => String.t()
      }
      
  """
  @type start_cache_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_recovery_point_info() :: %{
        "VolumeARN" => String.t(),
        "VolumeRecoveryPointTime" => String.t(),
        "VolumeSizeInBytes" => float(),
        "VolumeUsageInBytes" => float()
      }
      
  """
  @type volume_recovery_point_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pool_info() :: %{
        "PoolARN" => String.t(),
        "PoolName" => String.t(),
        "PoolStatus" => list(any()),
        "RetentionLockTimeInDays" => integer(),
        "RetentionLockType" => list(any()),
        "StorageClass" => list(any())
      }
      
  """
  @type pool_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cache_report_input() :: %{
        required("CacheReportARN") => String.t()
      }
      
  """
  @type describe_cache_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tapes_output() :: %{
        "TapeARNs" => list(String.t())
      }
      
  """
  @type create_tapes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_interface() :: %{
        "Ipv4Address" => String.t(),
        "Ipv6Address" => String.t(),
        "MacAddress" => String.t()
      }
      
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape_recovery_point_info() :: %{
        "TapeARN" => String.t(),
        "TapeRecoveryPointTime" => non_neg_integer(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t()
      }
      
  """
  @type tape_recovery_point_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type delete_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cached_iscsi_volumes_input() :: %{
        required("VolumeARNs") => list(String.t())
      }
      
  """
  @type describe_cached_iscsi_volumes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_local_console_password_input() :: %{
        required("GatewayARN") => String.t(),
        required("LocalConsolePassword") => String.t()
      }
      
  """
  @type set_local_console_password_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_system_associations_output() :: %{
        "FileSystemAssociationSummaryList" => list(file_system_association_summary()),
        "Marker" => String.t(),
        "NextMarker" => String.t()
      }
      
  """
  @type list_file_system_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_schedule_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type delete_snapshot_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tape_pools_output() :: %{
        "Marker" => String.t(),
        "PoolInfos" => list(pool_info())
      }
      
  """
  @type list_tape_pools_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_recovery_points_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_tape_recovery_points_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vtl_devices_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("VTLDeviceARNs") => list(String.t()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_vtl_devices_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_system_associations_input() :: %{
        optional("GatewayARN") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_file_system_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volumes_input() :: %{
        optional("GatewayARN") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_volumes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway_info() :: %{
        "DeprecationDate" => String.t(),
        "Ec2InstanceId" => String.t(),
        "Ec2InstanceRegion" => String.t(),
        "GatewayARN" => String.t(),
        "GatewayId" => String.t(),
        "GatewayName" => String.t(),
        "GatewayOperationalState" => String.t(),
        "GatewayType" => String.t(),
        "HostEnvironment" => list(any()),
        "HostEnvironmentId" => String.t(),
        "SoftwareVersion" => String.t()
      }
      
  """
  @type gateway_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_input() :: %{
        optional("AccessBasedEnumeration") => boolean(),
        optional("AdminUserList") => list(String.t()),
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("CaseSensitivity") => list(any()),
        optional("DefaultStorageClass") => String.t(),
        optional("EncryptionType") => list(any()),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("InvalidUserList") => list(String.t()),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("OplocksEnabled") => boolean(),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("SMBACLEnabled") => boolean(),
        optional("ValidUserList") => list(String.t()),
        required("FileShareARN") => String.t()
      }
      
  """
  @type update_smb_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_local_disks_output() :: %{
        "Disks" => list(disk()),
        "GatewayARN" => String.t()
      }
      
  """
  @type list_local_disks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type activate_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_volume_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type detach_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_local_console_password_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type set_local_console_password_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_from_volume_recovery_point_output() :: %{
        "SnapshotId" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeRecoveryPointTime" => String.t()
      }
      
  """
  @type create_snapshot_from_volume_recovery_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Marker" => String.t(),
        "ResourceARN" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cached_iscsi_volume() :: %{
        "CreatedDate" => non_neg_integer(),
        "KMSKey" => String.t(),
        "SourceSnapshotId" => String.t(),
        "TargetName" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeAttachmentStatus" => String.t(),
        "VolumeId" => String.t(),
        "VolumeProgress" => float(),
        "VolumeSizeInBytes" => float(),
        "VolumeStatus" => String.t(),
        "VolumeType" => String.t(),
        "VolumeUsedInBytes" => float(),
        "VolumeiSCSIAttributes" => volume_iscsi_attributes()
      }
      
  """
  @type cached_iscsi_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_output() :: %{
        "AverageDownloadRateLimitInBitsPerSec" => float(),
        "AverageUploadRateLimitInBitsPerSec" => float(),
        "GatewayARN" => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type start_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_smb_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type create_smb_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_volume_input() :: %{
        optional("DiskId") => String.t(),
        optional("TargetName") => String.t(),
        required("GatewayARN") => String.t(),
        required("NetworkInterfaceId") => String.t(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type attach_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_schedule_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type delete_snapshot_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_output() :: %{
        "SnapshotId" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type create_snapshot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_output() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type remove_tags_from_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nfs_file_share_defaults() :: %{
        "DirectoryMode" => String.t(),
        "FileMode" => String.t(),
        "GroupId" => float(),
        "OwnerId" => float()
      }
      
  """
  @type nfs_file_share_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_with_barcode_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type create_tape_with_barcode_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type disable_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_pool_output() :: %{
        "PoolARN" => String.t()
      }
      
  """
  @type delete_tape_pool_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_local_disks_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type list_local_disks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_working_storage_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type add_working_storage_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_visibility_input() :: %{
        required("FileSharesVisible") => boolean(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_smb_file_share_visibility_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_retrieval_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type cancel_retrieval_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_when_uploaded_output() :: %{
        "FileShareARN" => String.t(),
        "NotificationId" => String.t()
      }
      
  """
  @type notify_when_uploaded_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_error() :: %{
        "error" => storage_gateway_error(),
        "message" => String.t()
      }
      
  """
  @type service_unavailable_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_recovery_point_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type retrieve_tape_recovery_point_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cache_report_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t())
      }
      
  """
  @type cache_report_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vtl_device_type_input() :: %{
        required("DeviceType") => String.t(),
        required("VTLDeviceARN") => String.t()
      }
      
  """
  @type update_vtl_device_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type add_tags_to_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_settings_output() :: %{
        "ActiveDirectoryStatus" => list(any()),
        "DomainName" => String.t(),
        "FileSharesVisible" => boolean(),
        "GatewayARN" => String.t(),
        "SMBGuestPasswordSet" => boolean(),
        "SMBLocalGroups" => smb_local_groups(),
        "SMBSecurityStrategy" => list(any())
      }
      
  """
  @type describe_smb_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_information_output() :: %{
        "GatewayARN" => String.t(),
        "GatewayName" => String.t()
      }
      
  """
  @type update_gateway_information_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_output() :: %{
        "ResourceARN" => String.t()
      }
      
  """
  @type add_tags_to_resource_output() :: %{String.t() => any()}

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
      
      cancel_cache_report_input() :: %{
        required("CacheReportARN") => String.t()
      }
      
  """
  @type cancel_cache_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bandwidth_rate_limit_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_iscsi_attributes() :: %{
        "ChapEnabled" => boolean(),
        "NetworkInterfaceId" => String.t(),
        "NetworkInterfacePort" => integer(),
        "TargetARN" => String.t()
      }
      
  """
  @type device_iscsi_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vtl_devices_output() :: %{
        "GatewayARN" => String.t(),
        "Marker" => String.t(),
        "VTLDevices" => list(vtl_device())
      }
      
  """
  @type describe_vtl_devices_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cache_report_info() :: %{
        "CacheReportARN" => String.t(),
        "CacheReportStatus" => list(any()),
        "EndTime" => non_neg_integer(),
        "ExclusionFilters" => list(cache_report_filter()),
        "FileShareARN" => String.t(),
        "InclusionFilters" => list(cache_report_filter()),
        "LocationARN" => String.t(),
        "ReportCompletionPercent" => integer(),
        "ReportName" => String.t(),
        "Role" => String.t(),
        "StartTime" => non_neg_integer(),
        "Tags" => list(tag())
      }
      
  """
  @type cache_report_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_archival_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type cancel_archival_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_availability_monitor_test_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type start_availability_monitor_test_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_recovery_point_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type retrieve_tape_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_schedule_output() :: %{
        "BandwidthRateLimitIntervals" => list(bandwidth_rate_limit_interval()),
        "GatewayARN" => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_gateway_information_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_gateway_information_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_cache_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type add_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type start_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cache_reports_input() :: %{
        optional("Marker") => String.t()
      }
      
  """
  @type list_cache_reports_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_cache_reports_output() :: %{
        "CacheReportList" => list(cache_report_info()),
        "Marker" => String.t()
      }
      
  """
  @type list_cache_reports_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_tape_pool_input() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        required("PoolId") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type assign_tape_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_nfs_file_shares_output() :: %{
        "NFSFileShareInfoList" => list(nfs_file_share_info())
      }
      
  """
  @type describe_nfs_file_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_input() :: %{
        optional("Tags") => list(tag()),
        required("SnapshotDescription") => String.t(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type create_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_gateway_error() :: %{
        "errorCode" => list(any()),
        "errorDetails" => map()
      }
      
  """
  @type storage_gateway_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_shares_input() :: %{
        optional("GatewayARN") => String.t(),
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_file_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape() :: %{
        "KMSKey" => String.t(),
        "PoolEntryDate" => non_neg_integer(),
        "PoolId" => String.t(),
        "Progress" => float(),
        "RetentionStartDate" => non_neg_integer(),
        "TapeARN" => String.t(),
        "TapeBarcode" => String.t(),
        "TapeCreatedDate" => non_neg_integer(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t(),
        "TapeUsedInBytes" => float(),
        "VTLDevice" => String.t(),
        "Worm" => boolean()
      }
      
  """
  @type tape() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bandwidth_rate_limit_interval() :: %{
        "AverageDownloadRateLimitInBitsPerSec" => float(),
        "AverageUploadRateLimitInBitsPerSec" => float(),
        "DaysOfWeek" => list(integer()),
        "EndHourOfDay" => integer(),
        "EndMinuteOfHour" => integer(),
        "StartHourOfDay" => integer(),
        "StartMinuteOfHour" => integer()
      }
      
  """
  @type bandwidth_rate_limit_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateways_output() :: %{
        "Gateways" => list(gateway_info()),
        "Marker" => String.t()
      }
      
  """
  @type list_gateways_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_pool_input() :: %{
        required("PoolARN") => String.t()
      }
      
  """
  @type delete_tape_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bandwidth_rate_limit_input() :: %{
        optional("AverageDownloadRateLimitInBitsPerSec") => float(),
        optional("AverageUploadRateLimitInBitsPerSec") => float(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type delete_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_cache_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type reset_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tapes_output() :: %{
        "Marker" => String.t(),
        "TapeInfos" => list(tape_info())
      }
      
  """
  @type list_tapes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_input() :: %{
        optional("BypassGovernanceRetention") => boolean(),
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type delete_tape_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_network_configuration() :: %{
        "IpAddresses" => list(String.t())
      }
      
  """
  @type endpoint_network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stored_iscsi_volumes_output() :: %{
        "StorediSCSIVolumes" => list(stored_iscsi_volume())
      }
      
  """
  @type describe_stored_iscsi_volumes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volume_initiators_output() :: %{
        "Initiators" => list(String.t())
      }
      
  """
  @type list_volume_initiators_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type remove_tags_from_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      evict_files_failing_upload_input() :: %{
        optional("ForceRemove") => boolean(),
        required("FileShareARN") => String.t()
      }
      
  """
  @type evict_files_failing_upload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_visibility_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_smb_file_share_visibility_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_archive_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type retrieve_tape_archive_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshot_schedule_output() :: %{
        "Description" => String.t(),
        "RecurrenceInHours" => integer(),
        "StartAt" => integer(),
        "Tags" => list(tag()),
        "Timezone" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type describe_snapshot_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_pool_input() :: %{
        optional("RetentionLockTimeInDays") => integer(),
        optional("RetentionLockType") => list(any()),
        optional("Tags") => list(tag()),
        required("PoolName") => String.t(),
        required("StorageClass") => list(any())
      }
      
  """
  @type create_tape_pool_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cache_report_input() :: %{
        required("CacheReportARN") => String.t()
      }
      
  """
  @type delete_cache_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_volume_input() :: %{
        optional("ForceDetach") => boolean(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type detach_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      smb_file_share_info() :: %{
        "AccessBasedEnumeration" => boolean(),
        "AdminUserList" => list(String.t()),
        "AuditDestinationARN" => String.t(),
        "Authentication" => String.t(),
        "BucketRegion" => String.t(),
        "CacheAttributes" => cache_attributes(),
        "CaseSensitivity" => list(any()),
        "DefaultStorageClass" => String.t(),
        "EncryptionType" => list(any()),
        "FileShareARN" => String.t(),
        "FileShareId" => String.t(),
        "FileShareName" => String.t(),
        "FileShareStatus" => String.t(),
        "GatewayARN" => String.t(),
        "GuessMIMETypeEnabled" => boolean(),
        "InvalidUserList" => list(String.t()),
        "KMSEncrypted" => boolean(),
        "KMSKey" => String.t(),
        "LocationARN" => String.t(),
        "NotificationPolicy" => String.t(),
        "ObjectACL" => list(any()),
        "OplocksEnabled" => boolean(),
        "Path" => String.t(),
        "ReadOnly" => boolean(),
        "RequesterPays" => boolean(),
        "Role" => String.t(),
        "SMBACLEnabled" => boolean(),
        "Tags" => list(tag()),
        "VPCEndpointDNSName" => String.t(),
        "ValidUserList" => list(String.t())
      }
      
  """
  @type smb_file_share_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cache_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_file_system_association_output() :: %{
        "FileSystemAssociationARN" => String.t()
      }
      
  """
  @type update_file_system_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vtl_device() :: %{
        "DeviceiSCSIAttributes" => device_iscsi_attributes(),
        "VTLDeviceARN" => String.t(),
        "VTLDeviceProductIdentifier" => String.t(),
        "VTLDeviceType" => String.t(),
        "VTLDeviceVendor" => String.t()
      }
      
  """
  @type vtl_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type delete_tape_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_shares_output() :: %{
        "FileShareInfoList" => list(file_share_info()),
        "Marker" => String.t(),
        "NextMarker" => String.t()
      }
      
  """
  @type list_file_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_availability_monitor_test_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type start_availability_monitor_test_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_maintenance_start_time_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_maintenance_start_time_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_chap_credentials_input() :: %{
        required("InitiatorName") => String.t(),
        required("TargetARN") => String.t()
      }
      
  """
  @type delete_chap_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_availability_monitor_test_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_availability_monitor_test_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_information_input() :: %{
        optional("CloudWatchLogGroupARN") => String.t(),
        optional("GatewayCapacity") => list(any()),
        optional("GatewayName") => String.t(),
        optional("GatewayTimezone") => String.t(),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_gateway_information_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_from_volume_recovery_point_input() :: %{
        optional("Tags") => list(tag()),
        required("SnapshotDescription") => String.t(),
        required("VolumeARN") => String.t()
      }
      
  """
  @type create_snapshot_from_volume_recovery_point_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_smb_file_share_input() :: %{
        optional("AccessBasedEnumeration") => boolean(),
        optional("AdminUserList") => list(String.t()),
        optional("AuditDestinationARN") => String.t(),
        optional("Authentication") => String.t(),
        optional("BucketRegion") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("CaseSensitivity") => list(any()),
        optional("DefaultStorageClass") => String.t(),
        optional("EncryptionType") => list(any()),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("InvalidUserList") => list(String.t()),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("OplocksEnabled") => boolean(),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("SMBACLEnabled") => boolean(),
        optional("Tags") => list(tag()),
        optional("VPCEndpointDNSName") => String.t(),
        optional("ValidUserList") => list(String.t()),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("LocationARN") => String.t(),
        required("Role") => String.t()
      }
      
  """
  @type create_smb_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_retrieval_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type cancel_retrieval_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_local_groups_input() :: %{
        required("GatewayARN") => String.t(),
        required("SMBLocalGroups") => smb_local_groups()
      }
      
  """
  @type update_smb_local_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reset_cache_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type reset_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vtl_device_type_output() :: %{
        "VTLDeviceARN" => String.t()
      }
      
  """
  @type update_vtl_device_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_archives_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("TapeARNs") => list(String.t())
      }
      
  """
  @type describe_tape_archives_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automatic_tape_creation_rule() :: %{
        "MinimumNumTapes" => integer(),
        "PoolId" => String.t(),
        "TapeBarcodePrefix" => String.t(),
        "TapeSizeInBytes" => float(),
        "Worm" => boolean()
      }
      
  """
  @type automatic_tape_creation_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateways_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t()
      }
      
  """
  @type list_gateways_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_chap_credentials_output() :: %{
        "ChapCredentials" => list(chap_info())
      }
      
  """
  @type describe_chap_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_file_shares_output() :: %{
        "SMBFileShareInfoList" => list(smb_file_share_info())
      }
      
  """
  @type describe_smb_file_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_chap_credentials_output() :: %{
        "InitiatorName" => String.t(),
        "TargetARN" => String.t()
      }
      
  """
  @type delete_chap_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tape_archive_output() :: %{
        "TapeARN" => String.t()
      }
      
  """
  @type delete_tape_archive_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shutdown_gateway_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type shutdown_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_snapshot_schedule_input() :: %{
        required("VolumeARN") => String.t()
      }
      
  """
  @type describe_snapshot_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_nfs_file_share_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("BucketRegion") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("ClientList") => list(String.t()),
        optional("DefaultStorageClass") => String.t(),
        optional("EncryptionType") => list(any()),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NFSFileShareDefaults") => nfs_file_share_defaults(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("Squash") => String.t(),
        optional("Tags") => list(tag()),
        optional("VPCEndpointDNSName") => String.t(),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("LocationARN") => String.t(),
        required("Role") => String.t()
      }
      
  """
  @type create_nfs_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "error" => storage_gateway_error(),
        "message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_security_strategy_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_smb_security_strategy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type delete_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_nfs_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type create_nfs_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tapes_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("TapeARNs") => list(String.t()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_tapes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_automatic_tape_creation_policies_input() :: %{
        optional("GatewayARN") => String.t()
      }
      
  """
  @type list_automatic_tape_creation_policies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_snapshot_schedule_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type update_snapshot_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stored_iscsi_volume() :: %{
        "CreatedDate" => non_neg_integer(),
        "KMSKey" => String.t(),
        "PreservedExistingData" => boolean(),
        "SourceSnapshotId" => String.t(),
        "TargetName" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeAttachmentStatus" => String.t(),
        "VolumeDiskId" => String.t(),
        "VolumeId" => String.t(),
        "VolumeProgress" => float(),
        "VolumeSizeInBytes" => float(),
        "VolumeStatus" => String.t(),
        "VolumeType" => String.t(),
        "VolumeUsedInBytes" => float(),
        "VolumeiSCSIAttributes" => volume_iscsi_attributes()
      }
      
  """
  @type stored_iscsi_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_info() :: %{
        "GatewayARN" => String.t(),
        "GatewayId" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeAttachmentStatus" => String.t(),
        "VolumeId" => String.t(),
        "VolumeSizeInBytes" => float(),
        "VolumeType" => String.t()
      }
      
  """
  @type volume_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_nfs_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type update_nfs_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type disable_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      software_update_preferences() :: %{
        "AutomaticUpdatePolicy" => list(any())
      }
      
  """
  @type software_update_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stored_iscsi_volumes_input() :: %{
        required("VolumeARNs") => list(String.t())
      }
      
  """
  @type describe_stored_iscsi_volumes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_file_system_associations_input() :: %{
        required("FileSystemAssociationARNList") => list(String.t())
      }
      
  """
  @type describe_file_system_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disk() :: %{
        "DiskAllocationResource" => String.t(),
        "DiskAllocationType" => String.t(),
        "DiskAttributeList" => list(String.t()),
        "DiskId" => String.t(),
        "DiskNode" => String.t(),
        "DiskPath" => String.t(),
        "DiskSizeInBytes" => float(),
        "DiskStatus" => String.t()
      }
      
  """
  @type disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tapes_output() :: %{
        "Marker" => String.t(),
        "Tapes" => list(tape())
      }
      
  """
  @type describe_tapes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_automatic_tape_creation_policies_output() :: %{
        "AutomaticTapeCreationPolicyInfos" => list(automatic_tape_creation_policy_info())
      }
      
  """
  @type list_automatic_tape_creation_policies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_cache_input() :: %{
        required("DiskIds") => list(String.t()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type add_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shutdown_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type shutdown_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_volumes_output() :: %{
        "GatewayARN" => String.t(),
        "Marker" => String.t(),
        "VolumeInfos" => list(volume_info())
      }
      
  """
  @type list_volumes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      chap_info() :: %{
        "InitiatorName" => String.t(),
        "SecretToAuthenticateInitiator" => String.t(),
        "SecretToAuthenticateTarget" => String.t(),
        "TargetARN" => String.t()
      }
      
  """
  @type chap_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_upload_buffer_input() :: %{
        required("DiskIds") => list(String.t()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type add_upload_buffer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cached_iscsi_volume_output() :: %{
        "TargetARN" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type create_cached_iscsi_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_automatic_tape_creation_policy_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_automatic_tape_creation_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      automatic_tape_creation_policy_info() :: %{
        "AutomaticTapeCreationRules" => list(automatic_tape_creation_rule()),
        "GatewayARN" => String.t()
      }
      
  """
  @type automatic_tape_creation_policy_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_chap_credentials_output() :: %{
        "InitiatorName" => String.t(),
        "TargetARN" => String.t()
      }
      
  """
  @type update_chap_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retrieve_tape_archive_input() :: %{
        required("GatewayARN") => String.t(),
        required("TapeARN") => String.t()
      }
      
  """
  @type retrieve_tape_archive_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_automatic_tape_creation_policy_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type delete_automatic_tape_creation_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_automatic_tape_creation_policy_input() :: %{
        required("AutomaticTapeCreationRules") => list(automatic_tape_creation_rule()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_automatic_tape_creation_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tapes_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("PoolId") => String.t(),
        optional("Tags") => list(tag()),
        optional("Worm") => boolean(),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("NumTapesToCreate") => integer(),
        required("TapeBarcodePrefix") => String.t(),
        required("TapeSizeInBytes") => float()
      }
      
  """
  @type create_tapes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type delete_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      nfs_file_share_info() :: %{
        "AuditDestinationARN" => String.t(),
        "BucketRegion" => String.t(),
        "CacheAttributes" => cache_attributes(),
        "ClientList" => list(String.t()),
        "DefaultStorageClass" => String.t(),
        "EncryptionType" => list(any()),
        "FileShareARN" => String.t(),
        "FileShareId" => String.t(),
        "FileShareName" => String.t(),
        "FileShareStatus" => String.t(),
        "GatewayARN" => String.t(),
        "GuessMIMETypeEnabled" => boolean(),
        "KMSEncrypted" => boolean(),
        "KMSKey" => String.t(),
        "LocationARN" => String.t(),
        "NFSFileShareDefaults" => nfs_file_share_defaults(),
        "NotificationPolicy" => String.t(),
        "ObjectACL" => list(any()),
        "Path" => String.t(),
        "ReadOnly" => boolean(),
        "RequesterPays" => boolean(),
        "Role" => String.t(),
        "Squash" => String.t(),
        "Tags" => list(tag()),
        "VPCEndpointDNSName" => String.t()
      }
      
  """
  @type nfs_file_share_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_association_info() :: %{
        "AuditDestinationARN" => String.t(),
        "CacheAttributes" => cache_attributes(),
        "EndpointNetworkConfiguration" => endpoint_network_configuration(),
        "FileSystemAssociationARN" => String.t(),
        "FileSystemAssociationStatus" => String.t(),
        "FileSystemAssociationStatusDetails" => list(file_system_association_status_detail()),
        "GatewayARN" => String.t(),
        "LocationARN" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type file_system_association_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_working_storage_output() :: %{
        "DiskIds" => list(String.t()),
        "GatewayARN" => String.t(),
        "WorkingStorageAllocatedInBytes" => float(),
        "WorkingStorageUsedInBytes" => float()
      }
      
  """
  @type describe_working_storage_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_cache_report_output() :: %{
        "CacheReportARN" => String.t()
      }
      
  """
  @type delete_cache_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stored_iscsi_volume_output() :: %{
        "TargetARN" => String.t(),
        "VolumeARN" => String.t(),
        "VolumeSizeInBytes" => float()
      }
      
  """
  @type create_stored_iscsi_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tape_archive() :: %{
        "CompletionTime" => non_neg_integer(),
        "KMSKey" => String.t(),
        "PoolEntryDate" => non_neg_integer(),
        "PoolId" => String.t(),
        "RetentionStartDate" => non_neg_integer(),
        "RetrievedTo" => String.t(),
        "TapeARN" => String.t(),
        "TapeBarcode" => String.t(),
        "TapeCreatedDate" => non_neg_integer(),
        "TapeSizeInBytes" => float(),
        "TapeStatus" => String.t(),
        "TapeUsedInBytes" => float(),
        "Worm" => boolean()
      }
      
  """
  @type tape_archive() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_association_summary() :: %{
        "FileSystemAssociationARN" => String.t(),
        "FileSystemAssociationId" => String.t(),
        "FileSystemAssociationStatus" => String.t(),
        "GatewayARN" => String.t()
      }
      
  """
  @type file_system_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_volume_output() :: %{
        "TargetARN" => String.t(),
        "VolumeARN" => String.t()
      }
      
  """
  @type attach_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_maintenance_start_time_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_maintenance_start_time_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_availability_monitor_test_output() :: %{
        "GatewayARN" => String.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type describe_availability_monitor_test_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tape_pools_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("PoolARNs") => list(String.t())
      }
      
  """
  @type list_tape_pools_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_archives_output() :: %{
        "Marker" => String.t(),
        "TapeArchives" => list(tape_archive())
      }
      
  """
  @type describe_tape_archives_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_nfs_file_share_input() :: %{
        optional("AuditDestinationARN") => String.t(),
        optional("CacheAttributes") => cache_attributes(),
        optional("ClientList") => list(String.t()),
        optional("DefaultStorageClass") => String.t(),
        optional("EncryptionType") => list(any()),
        optional("FileShareName") => String.t(),
        optional("GuessMIMETypeEnabled") => boolean(),
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("NFSFileShareDefaults") => nfs_file_share_defaults(),
        optional("NotificationPolicy") => String.t(),
        optional("ObjectACL") => list(any()),
        optional("ReadOnly") => boolean(),
        optional("RequesterPays") => boolean(),
        optional("Squash") => String.t(),
        required("FileShareARN") => String.t()
      }
      
  """
  @type update_nfs_file_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_smb_guest_password_input() :: %{
        required("GatewayARN") => String.t(),
        required("Password") => String.t()
      }
      
  """
  @type set_smb_guest_password_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_software_now_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_gateway_software_now_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bandwidth_rate_limit_schedule_input() :: %{
        required("BandwidthRateLimitIntervals") => list(bandwidth_rate_limit_interval()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_output() :: %{
        "FileSystemAssociationARN" => String.t()
      }
      
  """
  @type disassociate_file_system_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_cache_output() :: %{
        "FileShareARN" => String.t(),
        "NotificationId" => String.t()
      }
      
  """
  @type refresh_cache_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      smb_local_groups() :: %{
        "GatewayAdmins" => list(String.t())
      }
      
  """
  @type smb_local_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bandwidth_rate_limit_schedule_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_bandwidth_rate_limit_schedule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_smb_file_shares_input() :: %{
        required("FileShareARNList") => list(String.t())
      }
      
  """
  @type describe_smb_file_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_chap_credentials_input() :: %{
        required("TargetARN") => String.t()
      }
      
  """
  @type describe_chap_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_software_now_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type update_gateway_software_now_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_local_groups_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type update_smb_local_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tape_recovery_points_output() :: %{
        "GatewayARN" => String.t(),
        "Marker" => String.t(),
        "TapeRecoveryPointInfos" => list(tape_recovery_point_info())
      }
      
  """
  @type describe_tape_recovery_points_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cache_attributes() :: %{
        "CacheStaleTimeoutInSeconds" => integer()
      }
      
  """
  @type cache_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tape_pool_output() :: %{
        "PoolARN" => String.t()
      }
      
  """
  @type create_tape_pool_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_system_association_status_detail() :: %{
        "ErrorCode" => String.t()
      }
      
  """
  @type file_system_association_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_security_strategy_input() :: %{
        required("GatewayARN") => String.t(),
        required("SMBSecurityStrategy") => list(any())
      }
      
  """
  @type update_smb_security_strategy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_working_storage_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_working_storage_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_upload_buffer_output() :: %{
        "DiskIds" => list(String.t()),
        "GatewayARN" => String.t(),
        "UploadBufferAllocatedInBytes" => float(),
        "UploadBufferUsedInBytes" => float()
      }
      
  """
  @type describe_upload_buffer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tapes_input() :: %{
        optional("Limit") => integer(),
        optional("Marker") => String.t(),
        optional("TapeARNs") => list(String.t())
      }
      
  """
  @type list_tapes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_gateway_input() :: %{
        optional("GatewayType") => String.t(),
        optional("MediumChangerType") => String.t(),
        optional("Tags") => list(tag()),
        optional("TapeDriveType") => String.t(),
        required("ActivationKey") => String.t(),
        required("GatewayName") => String.t(),
        required("GatewayRegion") => String.t(),
        required("GatewayTimezone") => String.t()
      }
      
  """
  @type activate_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_cached_iscsi_volumes_output() :: %{
        "CachediSCSIVolumes" => list(cached_iscsi_volume())
      }
      
  """
  @type describe_cached_iscsi_volumes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_nfs_file_shares_input() :: %{
        required("FileShareARNList") => list(String.t())
      }
      
  """
  @type describe_nfs_file_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_file_system_input() :: %{
        optional("ForceDelete") => boolean(),
        required("FileSystemAssociationARN") => String.t()
      }
      
  """
  @type disassociate_file_system_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_automatic_tape_creation_policy_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type delete_automatic_tape_creation_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_upload_buffer_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type add_upload_buffer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_chap_credentials_input() :: %{
        optional("SecretToAuthenticateTarget") => String.t(),
        required("InitiatorName") => String.t(),
        required("SecretToAuthenticateInitiator") => String.t(),
        required("TargetARN") => String.t()
      }
      
  """
  @type update_chap_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bandwidth_rate_limit_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type delete_bandwidth_rate_limit_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_cached_iscsi_volume_input() :: %{
        optional("KMSEncrypted") => boolean(),
        optional("KMSKey") => String.t(),
        optional("SnapshotId") => String.t(),
        optional("SourceVolumeARN") => String.t(),
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t(),
        required("GatewayARN") => String.t(),
        required("NetworkInterfaceId") => String.t(),
        required("TargetName") => String.t(),
        required("VolumeSizeInBytes") => float()
      }
      
  """
  @type create_cached_iscsi_volume_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_bandwidth_rate_limit_schedule_input() :: %{
        required("GatewayARN") => String.t()
      }
      
  """
  @type describe_bandwidth_rate_limit_schedule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_volume_output() :: %{
        "VolumeARN" => String.t()
      }
      
  """
  @type delete_volume_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_smb_guest_password_output() :: %{
        "GatewayARN" => String.t()
      }
      
  """
  @type set_smb_guest_password_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_cache_report_output() :: %{
        "CacheReportARN" => String.t()
      }
      
  """
  @type cancel_cache_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_working_storage_input() :: %{
        required("DiskIds") => list(String.t()),
        required("GatewayARN") => String.t()
      }
      
  """
  @type add_working_storage_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_smb_file_share_output() :: %{
        "FileShareARN" => String.t()
      }
      
  """
  @type update_smb_file_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_cache_input() :: %{
        optional("FolderList") => list(String.t()),
        optional("Recursive") => boolean(),
        required("FileShareARN") => String.t()
      }
      
  """
  @type refresh_cache_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_gateway_request_exception() :: %{
        "error" => storage_gateway_error(),
        "message" => String.t()
      }
      
  """
  @type invalid_gateway_request_exception() :: %{String.t() => any()}

  @type activate_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type add_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type add_tags_to_resource_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type add_upload_buffer_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type add_working_storage_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type assign_tape_pool_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type associate_file_system_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type attach_volume_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type cancel_archival_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type cancel_cache_report_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type cancel_retrieval_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type create_cached_iscsi_volume_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_nfs_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_smb_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_snapshot_errors() ::
          invalid_gateway_request_exception()
          | internal_server_error()
          | service_unavailable_error()

  @type create_snapshot_from_volume_recovery_point_errors() ::
          invalid_gateway_request_exception()
          | internal_server_error()
          | service_unavailable_error()

  @type create_stored_iscsi_volume_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_tape_pool_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type create_tape_with_barcode_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type create_tapes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_automatic_tape_creation_policy_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_bandwidth_rate_limit_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_cache_report_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_chap_credentials_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_snapshot_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_tape_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_tape_archive_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type delete_tape_pool_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type delete_volume_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type describe_availability_monitor_test_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_bandwidth_rate_limit_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_bandwidth_rate_limit_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type describe_cache_report_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_cached_iscsi_volumes_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_chap_credentials_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_file_system_associations_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_gateway_information_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_maintenance_start_time_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_nfs_file_shares_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_smb_file_shares_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_smb_settings_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_snapshot_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_stored_iscsi_volumes_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_tape_archives_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_tape_recovery_points_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_tapes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type describe_upload_buffer_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_vtl_devices_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type describe_working_storage_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type detach_volume_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type disable_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type disassociate_file_system_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type evict_files_failing_upload_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type join_domain_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_automatic_tape_creation_policies_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_cache_reports_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_file_shares_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_file_system_associations_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_gateways_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_local_disks_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_tags_for_resource_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_tape_pools_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_tapes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type list_volume_initiators_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_volume_recovery_points_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type list_volumes_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type notify_when_uploaded_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type refresh_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type remove_tags_from_resource_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type reset_cache_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type retrieve_tape_archive_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type retrieve_tape_recovery_point_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type set_local_console_password_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type set_smb_guest_password_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type shutdown_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type start_availability_monitor_test_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type start_cache_report_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type start_gateway_errors() :: invalid_gateway_request_exception() | internal_server_error()

  @type update_automatic_tape_creation_policy_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_bandwidth_rate_limit_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_bandwidth_rate_limit_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_chap_credentials_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_file_system_association_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_gateway_information_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_gateway_software_now_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_maintenance_start_time_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_nfs_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_file_share_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_file_share_visibility_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_local_groups_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_smb_security_strategy_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_snapshot_schedule_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  @type update_vtl_device_type_errors() ::
          invalid_gateway_request_exception() | internal_server_error()

  def metadata do
    %{
      api_version: "2013-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "storagegateway",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Storage Gateway",
      signature_version: "v4",
      signing_name: "storagegateway",
      target_prefix: "StorageGateway_20130630"
    }
  end

  @doc """
  Activates the gateway you previously deployed on your host.

  In the activation process,
  you specify information such as the Amazon Web Services Region that you want to
  use for
  storing snapshots or tapes, the time zone for scheduled snapshots the gateway
  snapshot
  schedule window, an activation key, and a name for your gateway. The activation
  process
  also associates your gateway with your account. For more information, see
  `UpdateGatewayInformation`.

  You must turn on the gateway VM before you can activate your gateway.
  """
  @spec activate_gateway(map(), activate_gateway_input(), list()) ::
          {:ok, activate_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_gateway_errors()}
  def activate_gateway(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ActivateGateway", input, options)
  end

  @doc """
  Configures one or more gateway local disks as cache for a gateway.

  This operation is
  only supported in the cached volume, tape, and file gateway type (see [How Storage Gateway works
  (architecture)](https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html).

  In the request, you specify the gateway Amazon Resource Name (ARN) to which you
  want to
  add cache, and one or more disk IDs that you want to configure as cache.
  """
  @spec add_cache(map(), add_cache_input(), list()) ::
          {:ok, add_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_cache_errors()}
  def add_cache(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddCache", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource.

  You use tags to add metadata to
  resources, which you can use to categorize these resources. For example, you can
  categorize
  resources by purpose, owner, environment, or team. Each tag consists of a key
  and a value,
  which you define. You can add tags to the following Storage Gateway resources:

    *
  Storage gateways of all types

    *
  Storage volumes

    *
  Virtual tapes

    *
  NFS and SMB file shares

    *
  File System associations

  You can create a maximum of 50 tags for each resource. Virtual tapes and storage
  volumes
  that are recovered to a new gateway maintain their tags.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_input(), list()) ::
          {:ok, add_tags_to_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Configures one or more gateway local disks as upload buffer for a specified
  gateway.

  This operation is supported for the stored volume, cached volume, and tape
  gateway
  types.

  In the request, you specify the gateway Amazon Resource Name (ARN) to which you
  want to
  add upload buffer, and one or more disk IDs that you want to configure as upload
  buffer.
  """
  @spec add_upload_buffer(map(), add_upload_buffer_input(), list()) ::
          {:ok, add_upload_buffer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_upload_buffer_errors()}
  def add_upload_buffer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddUploadBuffer", input, options)
  end

  @doc """
  Configures one or more gateway local disks as working storage for a gateway.

  This
  operation is only supported in the stored volume gateway type. This operation is
  deprecated
  in cached volume API version 20120630. Use `AddUploadBuffer`
  instead.

  Working storage is also referred to as upload buffer. You can also use the
  `AddUploadBuffer` operation to add upload buffer to a stored volume
  gateway.

  In the request, you specify the gateway Amazon Resource Name (ARN) to which you
  want to
  add working storage, and one or more disk IDs that you want to configure as
  working
  storage.
  """
  @spec add_working_storage(map(), add_working_storage_input(), list()) ::
          {:ok, add_working_storage_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_working_storage_errors()}
  def add_working_storage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddWorkingStorage", input, options)
  end

  @doc """
  Assigns a tape to a tape pool for archiving.

  The tape assigned to a pool is archived in
  the S3 storage class that is associated with the pool. When you use your backup
  application
  to eject the tape, the tape is archived directly into the S3 storage class (S3
  Glacier or
  S3 Glacier Deep Archive) that corresponds to the pool.
  """
  @spec assign_tape_pool(map(), assign_tape_pool_input(), list()) ::
          {:ok, assign_tape_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assign_tape_pool_errors()}
  def assign_tape_pool(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssignTapePool", input, options)
  end

  @doc """
  Associate an Amazon FSx file system with the FSx File Gateway.

  After the
  association process is complete, the file shares on the Amazon FSx file system
  are
  available for access through the gateway. This operation only supports the FSx
  File Gateway
  type.
  """
  @spec associate_file_system(map(), associate_file_system_input(), list()) ::
          {:ok, associate_file_system_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_file_system_errors()}
  def associate_file_system(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateFileSystem", input, options)
  end

  @doc """
  Connects a volume to an iSCSI connection and then attaches the volume to the
  specified
  gateway.

  Detaching and attaching a volume enables you to recover your data from one
  gateway
  to a different gateway without creating a snapshot. It also makes it easier to
  move your
  volumes from an on-premises gateway to a gateway hosted on an Amazon EC2
  instance.
  """
  @spec attach_volume(map(), attach_volume_input(), list()) ::
          {:ok, attach_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_volume_errors()}
  def attach_volume(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AttachVolume", input, options)
  end

  @doc """
  Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the
  archiving
  process is initiated.

  This operation is only supported in the tape gateway type.
  """
  @spec cancel_archival(map(), cancel_archival_input(), list()) ::
          {:ok, cancel_archival_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_archival_errors()}
  def cancel_archival(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelArchival", input, options)
  end

  @doc """
  Cancels generation of a specified cache report.

  You can use this operation to manually
  cancel an IN-PROGRESS report for any reason. This action changes the report
  status from
  IN-PROGRESS to CANCELLED. You can only cancel in-progress reports. If the the
  report you
  attempt to cancel is in FAILED, ERROR, or COMPLETED state, the cancel operation
  returns an
  error.
  """
  @spec cancel_cache_report(map(), cancel_cache_report_input(), list()) ::
          {:ok, cancel_cache_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_cache_report_errors()}
  def cancel_cache_report(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelCacheReport", input, options)
  end

  @doc """
  Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a
  gateway after
  the retrieval process is initiated.

  The virtual tape is returned to the VTS. This operation
  is only supported in the tape gateway type.
  """
  @spec cancel_retrieval(map(), cancel_retrieval_input(), list()) ::
          {:ok, cancel_retrieval_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_retrieval_errors()}
  def cancel_retrieval(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelRetrieval", input, options)
  end

  @doc """
  Creates a cached volume on a specified cached volume gateway.

  This operation is only
  supported in the cached volume gateway type.

  Cache storage must be allocated to the gateway before you can create a cached
  volume.
  Use the `AddCache` operation to add cache storage to a gateway.

  In the request, you must specify the gateway, size of the volume in bytes, the
  iSCSI
  target name, an IP address on which to expose the target, and a unique client
  token. In
  response, the gateway creates the volume and returns information about it. This
  information
  includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target
  ARN that
  initiators can use to connect to the volume target.

  Optionally, you can provide the ARN for an existing volume as the
  `SourceVolumeARN` for this cached volume, which creates an exact copy of the
  existing volume’s latest recovery point. The `VolumeSizeInBytes` value must be
  equal to or larger than the size of the copied volume, in bytes.
  """
  @spec create_cached_iscsi_volume(map(), create_cached_iscsi_volume_input(), list()) ::
          {:ok, create_cached_iscsi_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cached_iscsi_volume_errors()}
  def create_cached_iscsi_volume(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCachediSCSIVolume", input, options)
  end

  @doc """
  Creates a Network File System (NFS) file share on an existing S3 File Gateway.

  In
  Storage Gateway, a file share is a file system mount point backed by Amazon S3
  cloud storage. Storage Gateway exposes file shares using an NFS interface. This
  operation
  is only supported for S3 File Gateways.

  S3 File gateway requires Security Token Service (Amazon Web Services STS) to be
  activated to enable you to create a file share. Make sure Amazon Web Services
  STS is
  activated in the Amazon Web Services Region you are creating your S3 File
  Gateway in. If
  Amazon Web Services STS is not activated in the Amazon Web Services Region,
  activate
  it. For information about how to activate Amazon Web Services STS, see
  [Activating and deactivating Amazon Web Services STS in an Amazon Web Services
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the
  *Identity and Access Management User Guide*.

  S3 File Gateways do not support creating hard or symbolic links on a file
  share.
  """
  @spec create_nfs_file_share(map(), create_nfs_file_share_input(), list()) ::
          {:ok, create_nfs_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_nfs_file_share_errors()}
  def create_nfs_file_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateNFSFileShare", input, options)
  end

  @doc """
  Creates a Server Message Block (SMB) file share on an existing S3 File Gateway.

  In
  Storage Gateway, a file share is a file system mount point backed by Amazon S3
  cloud storage. Storage Gateway exposes file shares using an SMB interface. This
  operation
  is only supported for S3 File Gateways.

  S3 File Gateways require Security Token Service (Amazon Web Services STS) to be
  activated to enable you to create a file share. Make sure that Amazon Web
  Services STS
  is activated in the Amazon Web Services Region you are creating your S3 File
  Gateway in.
  If Amazon Web Services STS is not activated in this Amazon Web Services Region,
  activate
  it. For information about how to activate Amazon Web Services STS, see
  [Activating and deactivating Amazon Web Services STS in an Amazon Web Services
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the
  *Identity and Access Management User Guide*.

  File gateways don't support creating hard or symbolic links on a file
  share.
  """
  @spec create_smb_file_share(map(), create_smb_file_share_input(), list()) ::
          {:ok, create_smb_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_smb_file_share_errors()}
  def create_smb_file_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSMBFileShare", input, options)
  end

  @doc """
  Initiates a snapshot of a volume.

  Storage Gateway provides the ability to back up point-in-time snapshots of your
  data to Amazon Simple Storage (Amazon S3) for durable off-site recovery, and
  also
  import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic
  Compute
  Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad
  hoc basis.
  This API enables you to take an ad hoc snapshot. For more information, see
  [Editing a snapshot
  schedule](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot).

  In the `CreateSnapshot` request, you identify the volume by providing its
  Amazon Resource Name (ARN). You must also provide description for the snapshot.
  When
  Storage Gateway takes the snapshot of specified volume, the snapshot and
  description appears in the Storage Gateway console. In response, Storage Gateway
  returns you a snapshot ID. You can use this snapshot ID to check the snapshot
  progress or
  later use it when you want to create a volume from a snapshot. This operation is
  only
  supported in stored and cached volume gateway type.

  To list or delete a snapshot, you must use the Amazon EC2 API. For more
  information,
  see
  [DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html) or
  [DeleteSnapshot](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html)
  in the *Amazon Elastic Compute Cloud API
  Reference*.

  Volume and snapshot IDs are changing to a longer length ID format. For more
  information, see the important note on the
  [Welcome](https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html)
  page.
  """
  @spec create_snapshot(map(), create_snapshot_input(), list()) ::
          {:ok, create_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_errors()}
  def create_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  Initiates a snapshot of a gateway from a volume recovery point.

  This operation is only
  supported in the cached volume gateway type.

  A volume recovery point is a point in time at which all data of the volume is
  consistent
  and from which you can create a snapshot. To get a list of volume recovery point
  for cached
  volume gateway, use `ListVolumeRecoveryPoints`.

  In the `CreateSnapshotFromVolumeRecoveryPoint` request, you identify the
  volume by providing its Amazon Resource Name (ARN). You must also provide a
  description for
  the snapshot. When the gateway takes a snapshot of the specified volume, the
  snapshot and
  its description appear in the Storage Gateway console.
  In response, the gateway returns
  you a snapshot ID. You can use this snapshot ID to check the snapshot progress
  or later use
  it when you want to create a volume from a snapshot.

  To list or delete a snapshot, you must use the Amazon EC2 API. For more
  information,
  see
  [DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html) or
  [DeleteSnapshot](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html)
  in the *Amazon Elastic Compute Cloud API
  Reference*.
  """
  @spec create_snapshot_from_volume_recovery_point(
          map(),
          create_snapshot_from_volume_recovery_point_input(),
          list()
        ) ::
          {:ok, create_snapshot_from_volume_recovery_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_from_volume_recovery_point_errors()}
  def create_snapshot_from_volume_recovery_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshotFromVolumeRecoveryPoint", input, options)
  end

  @doc """
  Creates a volume on a specified gateway.

  This operation is only supported in the stored
  volume gateway type.

  The size of the volume to create is inferred from the disk size. You can choose
  to
  preserve existing data on the disk, create volume from an existing snapshot, or
  create an
  empty volume. If you choose to create an empty gateway volume, then any existing
  data on
  the disk is erased.

  In the request, you must specify the gateway and the disk information on which
  you are
  creating the volume. In response, the gateway creates the volume and returns
  volume
  information such as the volume Amazon Resource Name (ARN), its size, and the
  iSCSI target
  ARN that initiators can use to connect to the volume target.
  """
  @spec create_stored_iscsi_volume(map(), create_stored_iscsi_volume_input(), list()) ::
          {:ok, create_stored_iscsi_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stored_iscsi_volume_errors()}
  def create_stored_iscsi_volume(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStorediSCSIVolume", input, options)
  end

  @doc """
  Creates a new custom tape pool.

  You can use custom tape pool to enable tape retention
  lock on tapes that are archived in the custom pool.
  """
  @spec create_tape_pool(map(), create_tape_pool_input(), list()) ::
          {:ok, create_tape_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_tape_pool_errors()}
  def create_tape_pool(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTapePool", input, options)
  end

  @doc """
  Creates a virtual tape by using your own barcode.

  You write data to the virtual tape and
  then archive the tape. A barcode is unique and cannot be reused if it has
  already been used
  on a tape. This applies to barcodes used on deleted tapes. This operation is
  only supported
  in the tape gateway type.

  Cache storage must be allocated to the gateway before you can create a virtual
  tape.
  Use the `AddCache` operation to add cache storage to a gateway.
  """
  @spec create_tape_with_barcode(map(), create_tape_with_barcode_input(), list()) ::
          {:ok, create_tape_with_barcode_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_tape_with_barcode_errors()}
  def create_tape_with_barcode(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTapeWithBarcode", input, options)
  end

  @doc """
  Creates one or more virtual tapes.

  You write data to the virtual tapes and then archive
  the tapes. This operation is only supported in the tape gateway type.

  Cache storage must be allocated to the gateway before you can create virtual
  tapes.
  Use the `AddCache` operation to add cache storage to a gateway.
  """
  @spec create_tapes(map(), create_tapes_input(), list()) ::
          {:ok, create_tapes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_tapes_errors()}
  def create_tapes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTapes", input, options)
  end

  @doc """
  Deletes the automatic tape creation policy of a gateway.

  If you delete this policy, new
  virtual tapes must be created manually. Use the Amazon Resource Name (ARN) of
  the gateway
  in your request to remove the policy.
  """
  @spec delete_automatic_tape_creation_policy(
          map(),
          delete_automatic_tape_creation_policy_input(),
          list()
        ) ::
          {:ok, delete_automatic_tape_creation_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_automatic_tape_creation_policy_errors()}
  def delete_automatic_tape_creation_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAutomaticTapeCreationPolicy", input, options)
  end

  @doc """
  Deletes the bandwidth rate limits of a gateway.

  You can delete either the upload and
  download bandwidth rate limit, or you can delete both. If you delete only one of
  the
  limits, the other limit remains unchanged. To specify which gateway to work
  with, use the
  Amazon Resource Name (ARN) of the gateway in your request. This operation is
  supported only
  for the stored volume, cached volume, and tape gateway types.
  """
  @spec delete_bandwidth_rate_limit(map(), delete_bandwidth_rate_limit_input(), list()) ::
          {:ok, delete_bandwidth_rate_limit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bandwidth_rate_limit_errors()}
  def delete_bandwidth_rate_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBandwidthRateLimit", input, options)
  end

  @doc """
  Deletes the specified cache report and any associated tags from the Storage
  Gateway database.

  You can only delete completed reports. If the status of the
  report you attempt to delete still IN-PROGRESS, the delete operation returns an
  error. You
  can use `CancelCacheReport` to cancel an IN-PROGRESS report.

  `DeleteCacheReport` does not delete the report object from your Amazon S3
  bucket.
  """
  @spec delete_cache_report(map(), delete_cache_report_input(), list()) ::
          {:ok, delete_cache_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cache_report_errors()}
  def delete_cache_report(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCacheReport", input, options)
  end

  @doc """
  Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a
  specified
  iSCSI target and initiator pair.

  This operation is supported in volume and tape gateway
  types.
  """
  @spec delete_chap_credentials(map(), delete_chap_credentials_input(), list()) ::
          {:ok, delete_chap_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_chap_credentials_errors()}
  def delete_chap_credentials(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteChapCredentials", input, options)
  end

  @doc """
  Deletes a file share from an S3 File Gateway.

  This operation is only supported for S3
  File Gateways.
  """
  @spec delete_file_share(map(), delete_file_share_input(), list()) ::
          {:ok, delete_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_file_share_errors()}
  def delete_file_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFileShare", input, options)
  end

  @doc """
  Deletes a gateway.

  To specify which gateway to delete, use the Amazon Resource Name
  (ARN) of the gateway in your request. The operation deletes the gateway;
  however, it does
  not delete the gateway virtual machine (VM) from your host computer.

  After you delete a gateway, you cannot reactivate it. Completed snapshots of the
  gateway
  volumes are not deleted upon deleting the gateway, however, pending snapshots
  will not
  complete. After you delete a gateway, your next step is to remove it from your
  environment.

  You no longer pay software charges after the gateway is deleted; however, your
  existing Amazon EBS snapshots persist and you will continue to be billed for
  these
  snapshots. You can choose to remove all remaining Amazon EBS snapshots by
  canceling your
  Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2
  subscription, you
  can delete your snapshots using the Amazon EC2 console. For more information,
  see the
  [Storage Gateway detail page](http://aws.amazon.com/storagegateway).
  """
  @spec delete_gateway(map(), delete_gateway_input(), list()) ::
          {:ok, delete_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_gateway_errors()}
  def delete_gateway(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGateway", input, options)
  end

  @doc """
  Deletes a snapshot of a volume.

  You can take snapshots of your gateway volumes on a scheduled or ad hoc basis.
  This API
  action enables you to delete a snapshot schedule for a volume. For more
  information, see
  [Backing up your volumes](https://docs.aws.amazon.com/storagegateway/latest/userguide/backing-up-volumes.html).
  In the `DeleteSnapshotSchedule` request, you identify the
  volume by providing its Amazon Resource Name (ARN). This operation is only
  supported for
  cached volume gateway types.

  To list or delete a snapshot, you must use the Amazon EC2 API. For more
  information,
  go to
  [DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html)
  in the *Amazon Elastic Compute Cloud API Reference*.
  """
  @spec delete_snapshot_schedule(map(), delete_snapshot_schedule_input(), list()) ::
          {:ok, delete_snapshot_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_snapshot_schedule_errors()}
  def delete_snapshot_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSnapshotSchedule", input, options)
  end

  @doc """
  Deletes the specified virtual tape.

  This operation is only supported in the tape gateway
  type.
  """
  @spec delete_tape(map(), delete_tape_input(), list()) ::
          {:ok, delete_tape_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tape_errors()}
  def delete_tape(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTape", input, options)
  end

  @doc """
  Deletes the specified virtual tape from the virtual tape shelf (VTS).

  This operation is
  only supported in the tape gateway type.
  """
  @spec delete_tape_archive(map(), delete_tape_archive_input(), list()) ::
          {:ok, delete_tape_archive_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tape_archive_errors()}
  def delete_tape_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTapeArchive", input, options)
  end

  @doc """
  Delete a custom tape pool.

  A custom tape pool can only be deleted if there are no tapes
  in the pool and if there are no automatic tape creation policies that reference
  the custom
  tape pool.
  """
  @spec delete_tape_pool(map(), delete_tape_pool_input(), list()) ::
          {:ok, delete_tape_pool_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tape_pool_errors()}
  def delete_tape_pool(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTapePool", input, options)
  end

  @doc """
  Deletes the specified storage volume that you previously created using the
  `CreateCachediSCSIVolume` or `CreateStorediSCSIVolume` API.

  This operation is only supported in the cached volume and stored volume types.
  For stored
  volume gateways, the local disk that was configured as the storage volume is not
  deleted.
  You can reuse the local disk to create another storage volume.

  Before you delete a volume, make sure there are no iSCSI connections to the
  volume you
  are deleting. You should also make sure there is no snapshot in progress. You
  can use the
  Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume
  you are
  deleting and check the snapshot status. For more information, go to
  [DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html)
  in the *Amazon Elastic Compute Cloud API
  Reference*.

  In the request, you must provide the Amazon Resource Name (ARN) of the storage
  volume
  you want to delete.
  """
  @spec delete_volume(map(), delete_volume_input(), list()) ::
          {:ok, delete_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_volume_errors()}
  def delete_volume(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteVolume", input, options)
  end

  @doc """
  Returns information about the most recent high availability monitoring test that
  was
  performed on the host in a cluster.

  If a test isn't performed, the status and start
  time in the response would be null.
  """
  @spec describe_availability_monitor_test(
          map(),
          describe_availability_monitor_test_input(),
          list()
        ) ::
          {:ok, describe_availability_monitor_test_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_availability_monitor_test_errors()}
  def describe_availability_monitor_test(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAvailabilityMonitorTest", input, options)
  end

  @doc """
  Returns the bandwidth rate limits of a gateway.

  By default, these limits are not set,
  which means no bandwidth rate limiting is in effect. This operation is supported
  only for
  the stored volume, cached volume, and tape gateway types. To describe bandwidth
  rate limits
  for S3 file gateways, use `DescribeBandwidthRateLimitSchedule`.

  This operation returns a value for a bandwidth rate limit only if the limit is
  set. If
  no limits are set for the gateway, then this operation returns only the gateway
  ARN in the
  response body. To specify which gateway to describe, use the Amazon Resource
  Name (ARN) of
  the gateway in your request.
  """
  @spec describe_bandwidth_rate_limit(map(), describe_bandwidth_rate_limit_input(), list()) ::
          {:ok, describe_bandwidth_rate_limit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bandwidth_rate_limit_errors()}
  def describe_bandwidth_rate_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBandwidthRateLimit", input, options)
  end

  @doc """
  Returns information about the bandwidth rate limit schedule of a gateway.

  By default,
  gateways do not have bandwidth rate limit schedules, which means no bandwidth
  rate limiting
  is in effect. This operation is supported only for volume, tape and S3 file
  gateways. FSx
  file gateways do not support bandwidth rate limits.

  This operation returns information about a gateway's bandwidth rate limit
  schedule. A
  bandwidth rate limit schedule consists of one or more bandwidth rate limit
  intervals. A
  bandwidth rate limit interval defines a period of time on one or more days of
  the week,
  during which bandwidth rate limits are specified for uploading, downloading, or
  both.

  A bandwidth rate limit interval consists of one or more days of the week, a
  start hour
  and minute, an ending hour and minute, and bandwidth rate limits for uploading
  and
  downloading

  If no bandwidth rate limit schedule intervals are set for the gateway, this
  operation
  returns an empty response. To specify which gateway to describe, use the Amazon
  Resource
  Name (ARN) of the gateway in your request.
  """
  @spec describe_bandwidth_rate_limit_schedule(
          map(),
          describe_bandwidth_rate_limit_schedule_input(),
          list()
        ) ::
          {:ok, describe_bandwidth_rate_limit_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bandwidth_rate_limit_schedule_errors()}
  def describe_bandwidth_rate_limit_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBandwidthRateLimitSchedule", input, options)
  end

  @doc """
  Returns information about the cache of a gateway.

  This operation is only supported in
  the cached volume, tape, and file gateway types.

  The response includes disk IDs that are configured as cache, and it includes the
  amount
  of cache allocated and used.
  """
  @spec describe_cache(map(), describe_cache_input(), list()) ::
          {:ok, describe_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cache_errors()}
  def describe_cache(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCache", input, options)
  end

  @doc """
  Returns information about the specified cache report, including completion
  status and
  generation progress.
  """
  @spec describe_cache_report(map(), describe_cache_report_input(), list()) ::
          {:ok, describe_cache_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cache_report_errors()}
  def describe_cache_report(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCacheReport", input, options)
  end

  @doc """
  Returns a description of the gateway volumes specified in the request.

  This operation is
  only supported in the cached volume gateway types.

  The list of gateway volumes in the request must be from one gateway. In the
  response,
  Storage Gateway returns volume information sorted by volume Amazon Resource Name
  (ARN).
  """
  @spec describe_cached_iscsi_volumes(map(), describe_cached_iscsi_volumes_input(), list()) ::
          {:ok, describe_cached_iscsi_volumes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cached_iscsi_volumes_errors()}
  def describe_cached_iscsi_volumes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCachediSCSIVolumes", input, options)
  end

  @doc """
  Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
  credentials
  information for a specified iSCSI target, one for each target-initiator pair.

  This
  operation is supported in the volume and tape gateway types.
  """
  @spec describe_chap_credentials(map(), describe_chap_credentials_input(), list()) ::
          {:ok, describe_chap_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_chap_credentials_errors()}
  def describe_chap_credentials(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeChapCredentials", input, options)
  end

  @doc """
  Gets the file system association information.

  This operation is only supported for FSx
  File Gateways.
  """
  @spec describe_file_system_associations(
          map(),
          describe_file_system_associations_input(),
          list()
        ) ::
          {:ok, describe_file_system_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_file_system_associations_errors()}
  def describe_file_system_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFileSystemAssociations", input, options)
  end

  @doc """
  Returns metadata about a gateway such as its name, network interfaces, time
  zone,
  status, and software version.

  To specify which gateway to describe, use the Amazon Resource
  Name (ARN) of the gateway in your request.
  """
  @spec describe_gateway_information(map(), describe_gateway_information_input(), list()) ::
          {:ok, describe_gateway_information_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_gateway_information_errors()}
  def describe_gateway_information(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeGatewayInformation", input, options)
  end

  @doc """
  Returns your gateway's maintenance window schedule information, with values for
  monthly or weekly cadence, specific day and time to begin maintenance, and which
  types of
  updates to apply.

  Time values returned are for the gateway's time zone.
  """
  @spec describe_maintenance_start_time(map(), describe_maintenance_start_time_input(), list()) ::
          {:ok, describe_maintenance_start_time_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_maintenance_start_time_errors()}
  def describe_maintenance_start_time(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMaintenanceStartTime", input, options)
  end

  @doc """
  Gets a description for one or more Network File System (NFS) file shares from an
  S3 File
  Gateway.

  This operation is only supported for S3 File Gateways.
  """
  @spec describe_nfs_file_shares(map(), describe_nfs_file_shares_input(), list()) ::
          {:ok, describe_nfs_file_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_nfs_file_shares_errors()}
  def describe_nfs_file_shares(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeNFSFileShares", input, options)
  end

  @doc """
  Gets a description for one or more Server Message Block (SMB) file shares from a
  S3 File
  Gateway.

  This operation is only supported for S3 File Gateways.
  """
  @spec describe_smb_file_shares(map(), describe_smb_file_shares_input(), list()) ::
          {:ok, describe_smb_file_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_smb_file_shares_errors()}
  def describe_smb_file_shares(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSMBFileShares", input, options)
  end

  @doc """
  Gets a description of a Server Message Block (SMB) file share settings from a
  file
  gateway.

  This operation is only supported for file gateways.
  """
  @spec describe_smb_settings(map(), describe_smb_settings_input(), list()) ::
          {:ok, describe_smb_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_smb_settings_errors()}
  def describe_smb_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSMBSettings", input, options)
  end

  @doc """
  Describes the snapshot schedule for the specified gateway volume.

  The snapshot schedule
  information includes intervals at which snapshots are automatically initiated on
  the
  volume. This operation is only supported in the cached volume and stored volume
  types.
  """
  @spec describe_snapshot_schedule(map(), describe_snapshot_schedule_input(), list()) ::
          {:ok, describe_snapshot_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_snapshot_schedule_errors()}
  def describe_snapshot_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSnapshotSchedule", input, options)
  end

  @doc """
  Returns the description of the gateway volumes specified in the request.

  The list of
  gateway volumes in the request must be from one gateway. In the response,
  Storage Gateway returns volume information sorted by volume ARNs. This operation
  is only
  supported in stored volume gateway type.
  """
  @spec describe_stored_iscsi_volumes(map(), describe_stored_iscsi_volumes_input(), list()) ::
          {:ok, describe_stored_iscsi_volumes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stored_iscsi_volumes_errors()}
  def describe_stored_iscsi_volumes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStorediSCSIVolumes", input, options)
  end

  @doc """
  Returns a description of specified virtual tapes in the virtual tape shelf
  (VTS).

  This
  operation is only supported in the tape gateway type.

  If a specific `TapeARN` is not specified, Storage Gateway returns a
  description of all virtual tapes found in the VTS associated with your account.
  """
  @spec describe_tape_archives(map(), describe_tape_archives_input(), list()) ::
          {:ok, describe_tape_archives_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_tape_archives_errors()}
  def describe_tape_archives(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTapeArchives", input, options)
  end

  @doc """
  Returns a list of virtual tape recovery points that are available for the
  specified tape
  gateway.

  A recovery point is a point-in-time view of a virtual tape at which all the data
  on the
  virtual tape is consistent. If your gateway crashes, virtual tapes that have
  recovery
  points can be recovered to a new gateway. This operation is only supported in
  the tape
  gateway type.
  """
  @spec describe_tape_recovery_points(map(), describe_tape_recovery_points_input(), list()) ::
          {:ok, describe_tape_recovery_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_tape_recovery_points_errors()}
  def describe_tape_recovery_points(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTapeRecoveryPoints", input, options)
  end

  @doc """
  Returns a description of virtual tapes that correspond to the specified Amazon
  Resource
  Names (ARNs).

  If `TapeARN` is not specified, returns a description of the
  virtual tapes associated with the specified gateway. This operation is only
  supported for
  the tape gateway type.

  The operation supports pagination. By default, the operation returns a maximum
  of up to
  100 tapes. You can optionally specify the `Limit` field in the body to limit the
  number of tapes in the response. If the number of tapes returned in the response
  is
  truncated, the response includes a `Marker` field. You can use this
  `Marker` value in your subsequent request to retrieve the next set of
  tapes.
  """
  @spec describe_tapes(map(), describe_tapes_input(), list()) ::
          {:ok, describe_tapes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_tapes_errors()}
  def describe_tapes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTapes", input, options)
  end

  @doc """
  Returns information about the upload buffer of a gateway.

  This operation is supported
  for the stored volume, cached volume, and tape gateway types.

  The response includes disk IDs that are configured as upload buffer space, and
  it
  includes the amount of upload buffer space allocated and used.
  """
  @spec describe_upload_buffer(map(), describe_upload_buffer_input(), list()) ::
          {:ok, describe_upload_buffer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_upload_buffer_errors()}
  def describe_upload_buffer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUploadBuffer", input, options)
  end

  @doc """
  Returns a description of virtual tape library (VTL) devices for the specified
  tape
  gateway.

  In the response, Storage Gateway returns VTL device information.

  This operation is only supported in the tape gateway type.
  """
  @spec describe_vtl_devices(map(), describe_vtl_devices_input(), list()) ::
          {:ok, describe_vtl_devices_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vtl_devices_errors()}
  def describe_vtl_devices(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeVTLDevices", input, options)
  end

  @doc """
  Returns information about the working storage of a gateway.

  This operation is only
  supported in the stored volumes gateway type. This operation is deprecated in
  cached
  volumes API version (20120630). Use DescribeUploadBuffer instead.

  Working storage is also referred to as upload buffer. You can also use the
  DescribeUploadBuffer operation to add upload buffer to a stored volume gateway.

  The response includes disk IDs that are configured as working storage, and it
  includes
  the amount of working storage allocated and used.
  """
  @spec describe_working_storage(map(), describe_working_storage_input(), list()) ::
          {:ok, describe_working_storage_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_working_storage_errors()}
  def describe_working_storage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkingStorage", input, options)
  end

  @doc """
  Disconnects a volume from an iSCSI connection and then detaches the volume from
  the
  specified gateway.

  Detaching and attaching a volume enables you to recover your data from
  one gateway to a different gateway without creating a snapshot. It also makes it
  easier to
  move your volumes from an on-premises gateway to a gateway hosted on an Amazon
  EC2
  instance. This operation is only supported in the volume gateway type.
  """
  @spec detach_volume(map(), detach_volume_input(), list()) ::
          {:ok, detach_volume_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_volume_errors()}
  def detach_volume(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetachVolume", input, options)
  end

  @doc """
  Disables a tape gateway when the gateway is no longer functioning.

  For example, if your
  gateway VM is damaged, you can disable the gateway so you can recover virtual
  tapes.

  Use this operation for a tape gateway that is not reachable or not functioning.
  This
  operation is only supported in the tape gateway type.

  After a gateway is disabled, it cannot be enabled.
  """
  @spec disable_gateway(map(), disable_gateway_input(), list()) ::
          {:ok, disable_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_gateway_errors()}
  def disable_gateway(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableGateway", input, options)
  end

  @doc """
  Disassociates an Amazon FSx file system from the specified gateway.

  After the
  disassociation process finishes, the gateway can no longer access the Amazon FSx
  file system. This operation is only supported in the FSx File Gateway type.
  """
  @spec disassociate_file_system(map(), disassociate_file_system_input(), list()) ::
          {:ok, disassociate_file_system_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_file_system_errors()}
  def disassociate_file_system(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateFileSystem", input, options)
  end

  @doc """
  Starts a process that cleans the specified file share's cache of file entries
  that are
  failing upload to Amazon S3.

  This API operation reports success if the request is
  received with valid arguments, and there are no other cache clean operations
  currently
  in-progress for the specified file share. After a successful request, the cache
  clean
  operation occurs asynchronously and reports progress using CloudWatch logs and
  notifications.

  If `ForceRemove` is set to `True`, the cache clean operation
  will delete file data from the gateway which might otherwise be recoverable. We
  recommend using this operation only after all other methods to clear files
  failing
  upload have been exhausted, and if your business need outweighs the potential
  data
  loss.
  """
  @spec evict_files_failing_upload(map(), evict_files_failing_upload_input(), list()) ::
          {:ok, evict_files_failing_upload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, evict_files_failing_upload_errors()}
  def evict_files_failing_upload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EvictFilesFailingUpload", input, options)
  end

  @doc """
  Adds a file gateway to an Active Directory domain.

  This operation is only supported for
  file gateways that support the SMB file protocol.

  Joining a domain creates an Active Directory computer account in the default
  organizational unit, using the gateway's **Gateway ID** as
  the account name (for example, SGW-1234ADE). If your Active Directory
  environment
  requires that you pre-stage accounts to facilitate the join domain process, you
  will
  need to create this account ahead of time.

  To create the gateway's computer account in an organizational unit other than
  the
  default, you must specify the organizational unit when joining the domain.
  """
  @spec join_domain(map(), join_domain_input(), list()) ::
          {:ok, join_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, join_domain_errors()}
  def join_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "JoinDomain", input, options)
  end

  @doc """
  Lists the automatic tape creation policies for a gateway.

  If there are no automatic tape
  creation policies for the gateway, it returns an empty list.

  This operation is only supported for tape gateways.
  """
  @spec list_automatic_tape_creation_policies(
          map(),
          list_automatic_tape_creation_policies_input(),
          list()
        ) ::
          {:ok, list_automatic_tape_creation_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automatic_tape_creation_policies_errors()}
  def list_automatic_tape_creation_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAutomaticTapeCreationPolicies", input, options)
  end

  @doc """
  Returns a list of existing cache reports for all file shares associated with
  your
  Amazon Web Services account.

  This list includes all information provided by the
  `DescribeCacheReport` action, such as report name, status, completion
  progress, start time, end time, filters, and tags.
  """
  @spec list_cache_reports(map(), list_cache_reports_input(), list()) ::
          {:ok, list_cache_reports_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cache_reports_errors()}
  def list_cache_reports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCacheReports", input, options)
  end

  @doc """
  Gets a list of the file shares for a specific S3 File Gateway, or the list of
  file
  shares that belong to the calling Amazon Web Services account.

  This operation is only
  supported for S3 File Gateways.
  """
  @spec list_file_shares(map(), list_file_shares_input(), list()) ::
          {:ok, list_file_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_file_shares_errors()}
  def list_file_shares(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFileShares", input, options)
  end

  @doc """
  Gets a list of `FileSystemAssociationSummary` objects.

  Each object contains a
  summary of a file system association. This operation is only supported for FSx
  File
  Gateways.
  """
  @spec list_file_system_associations(map(), list_file_system_associations_input(), list()) ::
          {:ok, list_file_system_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_file_system_associations_errors()}
  def list_file_system_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFileSystemAssociations", input, options)
  end

  @doc """
  Lists gateways owned by an Amazon Web Services account in an Amazon Web Services
  Region
  specified in the request.

  The returned list is ordered by gateway Amazon Resource Name
  (ARN).

  By default, the operation returns a maximum of 100 gateways. This operation
  supports
  pagination that allows you to optionally reduce the number of gateways returned
  in a
  response.

  If you have more gateways than are returned in a response (that is, the response
  returns
  only a truncated list of your gateways), the response contains a marker that you
  can
  specify in your next request to fetch the next page of gateways.
  """
  @spec list_gateways(map(), list_gateways_input(), list()) ::
          {:ok, list_gateways_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gateways_errors()}
  def list_gateways(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGateways", input, options)
  end

  @doc """
  Returns a list of the gateway's local disks.

  To specify which gateway to describe,
  you use the Amazon Resource Name (ARN) of the gateway in the body of the
  request.

  The request returns a list of all disks, specifying which are configured as
  working
  storage, cache storage, or stored volume or not configured at all. The response
  includes a
  `DiskStatus` field. This field can have a value of present (the disk is
  available to use), missing (the disk is no longer connected to the gateway), or
  mismatch
  (the disk node is occupied by a disk that has incorrect metadata or the disk
  content is
  corrupted).
  """
  @spec list_local_disks(map(), list_local_disks_input(), list()) ::
          {:ok, list_local_disks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_local_disks_errors()}
  def list_local_disks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLocalDisks", input, options)
  end

  @doc """
  Lists the tags that have been added to the specified resource.

  This operation is
  supported in storage gateways of all types.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists custom tape pools.

  You specify custom tape pools to list by specifying one or more
  custom tape pool Amazon Resource Names (ARNs). If you don't specify a custom
  tape pool ARN,
  the operation lists all custom tape pools.

  This operation supports pagination. You can optionally specify the `Limit`
  parameter in the body to limit the number of tape pools in the response. If the
  number of
  tape pools returned in the response is truncated, the response includes a
  `Marker` element that you can use in your subsequent request to retrieve the
  next set of tape pools.
  """
  @spec list_tape_pools(map(), list_tape_pools_input(), list()) ::
          {:ok, list_tape_pools_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tape_pools_errors()}
  def list_tape_pools(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTapePools", input, options)
  end

  @doc """
  Lists virtual tapes in your virtual tape library (VTL) and your virtual tape
  shelf
  (VTS).

  You specify the tapes to list by specifying one or more tape Amazon Resource
  Names
  (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes
  in both
  your VTL and VTS.

  This operation supports pagination. By default, the operation returns a maximum
  of up to
  100 tapes. You can optionally specify the `Limit` parameter in the body to limit
  the number of tapes in the response. If the number of tapes returned in the
  response is
  truncated, the response includes a `Marker` element that you can use in your
  subsequent request to retrieve the next set of tapes. This operation is only
  supported in
  the tape gateway type.
  """
  @spec list_tapes(map(), list_tapes_input(), list()) ::
          {:ok, list_tapes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tapes_errors()}
  def list_tapes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTapes", input, options)
  end

  @doc """
  Lists iSCSI initiators that are connected to a volume.

  You can use this operation to
  determine whether a volume is being used or not. This operation is only
  supported in the
  cached volume and stored volume gateway types.
  """
  @spec list_volume_initiators(map(), list_volume_initiators_input(), list()) ::
          {:ok, list_volume_initiators_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_volume_initiators_errors()}
  def list_volume_initiators(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVolumeInitiators", input, options)
  end

  @doc """
  Lists the recovery points for a specified gateway.

  This operation is only supported in
  the cached volume gateway type.

  Each cache volume has one recovery point. A volume recovery point is a point in
  time at
  which all data of the volume is consistent and from which you can create a
  snapshot or
  clone a new cached volume from a source volume. To create a snapshot from a
  volume recovery
  point use the `CreateSnapshotFromVolumeRecoveryPoint` operation.
  """
  @spec list_volume_recovery_points(map(), list_volume_recovery_points_input(), list()) ::
          {:ok, list_volume_recovery_points_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_volume_recovery_points_errors()}
  def list_volume_recovery_points(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVolumeRecoveryPoints", input, options)
  end

  @doc """
  Lists the iSCSI stored volumes of a gateway.

  Results are sorted by volume ARN. The
  response includes only the volume ARNs. If you want additional volume
  information, use the
  `DescribeStorediSCSIVolumes` or the `DescribeCachediSCSIVolumes` API.

  The operation supports pagination. By default, the operation returns a maximum
  of up to
  100 volumes. You can optionally specify the `Limit` field in the body to limit
  the number of volumes in the response. If the number of volumes returned in the
  response is
  truncated, the response includes a Marker field. You can use this Marker value
  in your
  subsequent request to retrieve the next set of volumes. This operation is only
  supported in
  the cached volume and stored volume gateway types.
  """
  @spec list_volumes(map(), list_volumes_input(), list()) ::
          {:ok, list_volumes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_volumes_errors()}
  def list_volumes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListVolumes", input, options)
  end

  @doc """
  Sends you notification through Amazon EventBridge when all files written to your
  file
  share have been uploaded to Amazon S3.

  Storage Gateway can send a notification through Amazon EventBridge when all
  files written to your file share up to that point in time have been uploaded to
  Amazon S3. These files include files written to the file share up to the time
  that you
  make a request for notification. When the upload is done, Storage Gateway sends
  you
  notification through EventBridge. You can configure EventBridge to send the
  notification through event targets such as Amazon SNS or Lambda
  function. This operation is only supported for S3 File Gateways.

  For more information, see [Getting file upload
  notification](https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification)
  in the *Amazon S3 File Gateway User
  Guide*.
  """
  @spec notify_when_uploaded(map(), notify_when_uploaded_input(), list()) ::
          {:ok, notify_when_uploaded_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, notify_when_uploaded_errors()}
  def notify_when_uploaded(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "NotifyWhenUploaded", input, options)
  end

  @doc """
  Refreshes the cached inventory of objects for the specified file share.

  This operation
  finds objects in the Amazon S3 bucket that were added, removed, or replaced
  since
  the gateway last listed the bucket's contents and cached the results. This
  operation
  does not import files into the S3 File Gateway cache storage. It only updates
  the cached
  inventory to reflect changes in the inventory of the objects in the S3 bucket.
  This
  operation is only supported in the S3 File Gateway types.

  You can subscribe to be notified through an Amazon CloudWatch event when your
  `RefreshCache` operation completes. For more information, see [Getting notified about file
  operations](https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification)
  in the *Amazon S3 File Gateway User
  Guide*. This operation is Only supported for S3 File Gateways.

  When this API is called, it only initiates the refresh operation. When the API
  call
  completes and returns a success code, it doesn't necessarily mean that the file
  refresh has completed. You should use the refresh-complete notification to
  determine that
  the operation has completed before you check for new files on the gateway file
  share. You
  can subscribe to be notified through a CloudWatch event when your `RefreshCache`
  operation completes.

  Throttle limit: This API is asynchronous, so the gateway will accept no more
  than two
  refreshes at any time. We recommend using the refresh-complete CloudWatch event
  notification before issuing additional requests. For more information, see
  [Getting notified about file
  operations](https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification)
  in the *Amazon S3 File Gateway User
  Guide*.

    
  Wait at least 60 seconds between consecutive RefreshCache API requests.

    
  If you invoke the RefreshCache API when two requests are already being
  processed, any new request will cause an
  `InvalidGatewayRequestException` error because too many requests
  were sent to the server.

  The S3 bucket name does not need to be included when entering the list of
  folders in
  the FolderList parameter.

  For more information, see [Getting notified about file
  operations](https://docs.aws.amazon.com/filegateway/latest/files3/monitoring-file-gateway.html#get-notification)
  in the *Amazon S3 File Gateway User
  Guide*.
  """
  @spec refresh_cache(map(), refresh_cache_input(), list()) ::
          {:ok, refresh_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, refresh_cache_errors()}
  def refresh_cache(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RefreshCache", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource.

  This operation is supported in
  storage gateways of all types.
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_input(), list()) ::
          {:ok, remove_tags_from_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Resets all cache disks that have encountered an error and makes the disks
  available for
  reconfiguration as cache storage.

  If your cache disk encounters an error, the gateway
  prevents read and write operations on virtual tapes in the gateway. For example,
  an error
  can occur when a disk is corrupted or removed from the gateway. When a cache is
  reset, the
  gateway loses its cache storage. At this point, you can reconfigure the disks as
  cache
  disks. This operation is only supported in the cached volume and tape types.

  If the cache disk you are resetting contains data that has not been uploaded to
  Amazon S3 yet, that data can be lost. After you reset cache disks, there will
  be no configured cache disks left in the gateway, so you must configure at least
  one new
  cache disk for your gateway to function properly.
  """
  @spec reset_cache(map(), reset_cache_input(), list()) ::
          {:ok, reset_cache_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_cache_errors()}
  def reset_cache(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResetCache", input, options)
  end

  @doc """
  Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape
  gateway.

  Virtual tapes archived in the VTS are not associated with any gateway. However
  after a tape
  is retrieved, it is associated with a gateway, even though it is also listed in
  the VTS,
  that is, archive. This operation is only supported in the tape gateway type.

  Once a tape is successfully retrieved to a gateway, it cannot be retrieved again
  to
  another gateway. You must archive the tape again before you can retrieve it to
  another
  gateway. This operation is only supported in the tape gateway type.
  """
  @spec retrieve_tape_archive(map(), retrieve_tape_archive_input(), list()) ::
          {:ok, retrieve_tape_archive_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, retrieve_tape_archive_errors()}
  def retrieve_tape_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RetrieveTapeArchive", input, options)
  end

  @doc """
  Retrieves the recovery point for the specified virtual tape.

  This operation is only
  supported in the tape gateway type.

  A recovery point is a point in time view of a virtual tape at which all the data
  on the
  tape is consistent. If your gateway crashes, virtual tapes that have recovery
  points can be
  recovered to a new gateway.

  The virtual tape can be retrieved to only one gateway. The retrieved tape is
  read-only. The virtual tape can be retrieved to only a tape gateway. There is no
  charge
  for retrieving recovery points.
  """
  @spec retrieve_tape_recovery_point(map(), retrieve_tape_recovery_point_input(), list()) ::
          {:ok, retrieve_tape_recovery_point_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, retrieve_tape_recovery_point_errors()}
  def retrieve_tape_recovery_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RetrieveTapeRecoveryPoint", input, options)
  end

  @doc """
  Sets the password for your VM local console.

  When you log in to the local console for
  the first time, you log in to the VM with the default credentials. We recommend
  that you
  set a new password. You don't need to know the default password to set a new
  password.
  """
  @spec set_local_console_password(map(), set_local_console_password_input(), list()) ::
          {:ok, set_local_console_password_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_local_console_password_errors()}
  def set_local_console_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetLocalConsolePassword", input, options)
  end

  @doc """
  Sets the password for the guest user `smbguest`.

  The `smbguest`
  user is the user when the authentication method for the file share is set to
  `GuestAccess`. This operation only supported for S3 File Gateways
  """
  @spec set_smb_guest_password(map(), set_smb_guest_password_input(), list()) ::
          {:ok, set_smb_guest_password_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_smb_guest_password_errors()}
  def set_smb_guest_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetSMBGuestPassword", input, options)
  end

  @doc """
  Shuts down a Tape Gateway or Volume Gateway.

  To specify which gateway to shut down, use
  the Amazon Resource Name (ARN) of the gateway in the body of your request.

  This API action cannot be used to shut down S3 File Gateway or FSx File
  Gateway.

  The operation shuts down the gateway service component running in the gateway's
  virtual machine (VM) and not the host VM.

  If you want to shut down the VM, it is recommended that you first shut down the
  gateway component in the VM to avoid unpredictable conditions.

  After the gateway is shutdown, you cannot call any other API except
  `StartGateway`, `DescribeGatewayInformation`, and `ListGateways`. For more
  information, see `ActivateGateway`.
  Your applications cannot read from or write to the gateway's storage volumes,
  and
  there are no snapshots taken.

  When you make a shutdown request, you will get a `200 OK` success response
  immediately. However, it might take some time for the gateway to shut down. You
  can call
  the `DescribeGatewayInformation` API to check the status. For more
  information, see `ActivateGateway`.

  If do not intend to use the gateway again, you must delete the gateway (using
  `DeleteGateway`) to no longer pay software charges associated with the
  gateway.
  """
  @spec shutdown_gateway(map(), shutdown_gateway_input(), list()) ::
          {:ok, shutdown_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, shutdown_gateway_errors()}
  def shutdown_gateway(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ShutdownGateway", input, options)
  end

  @doc """
  Start a test that verifies that the specified gateway is configured for High
  Availability monitoring in your host environment.

  This request only initiates the test and
  that a successful response only indicates that the test was started. It doesn't
  indicate that the test passed. For the status of the test, invoke the
  `DescribeAvailabilityMonitorTest` API.

  Starting this test will cause your gateway to go offline for a brief period.
  """
  @spec start_availability_monitor_test(map(), start_availability_monitor_test_input(), list()) ::
          {:ok, start_availability_monitor_test_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_availability_monitor_test_errors()}
  def start_availability_monitor_test(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartAvailabilityMonitorTest", input, options)
  end

  @doc """
  Starts generating a report of the file metadata currently cached by an S3 File
  Gateway for a specific file share.

  You can use this report to identify and resolve
  issues if you have files failing upload from your gateway to Amazon S3. The
  report
  is a CSV file containing a list of files which match the set of filter
  parameters you
  specify in the request.

  The **Files Failing Upload** flag is reset every 24
  hours and during gateway reboot. If this report captures the files after the
  reset, but
  before they become flagged again, they will not be reported as **Files Failing
  Upload**.

  The following requirements must be met to successfully generate a cache report:

    *
  You must have `s3:PutObject` and `s3:AbortMultipartUpload`
  permissions for the Amazon S3 bucket where you want to store the cache
  report.

    *
  No other cache reports can currently be in-progress for the specified file
  share.

    *
  There must be fewer than 10 existing cache reports for the specified file
  share.

    *
  The gateway must be online and connected to Amazon Web Services.

    *
  The root disk must have at least 20GB of free space when report generation
  starts.

    *
  You must specify at least one value for `InclusionFilters` or
  `ExclusionFilters` in the request.
  """
  @spec start_cache_report(map(), start_cache_report_input(), list()) ::
          {:ok, start_cache_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_cache_report_errors()}
  def start_cache_report(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartCacheReport", input, options)
  end

  @doc """
  Starts a gateway that you previously shut down (see `ShutdownGateway`).

  After the gateway starts, you can then make other API calls, your applications
  can read
  from or write to the gateway's storage volumes and you will be able to take
  snapshot
  backups.

  When you make a request, you will get a 200 OK success response immediately.
  However,
  it might take some time for the gateway to be ready. You should call
  `DescribeGatewayInformation` and check the status before making any
  additional API calls. For more information, see `ActivateGateway`.

  To specify which gateway to start, use the Amazon Resource Name (ARN) of the
  gateway in
  your request.
  """
  @spec start_gateway(map(), start_gateway_input(), list()) ::
          {:ok, start_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_gateway_errors()}
  def start_gateway(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartGateway", input, options)
  end

  @doc """
  Updates the automatic tape creation policy of a gateway.

  Use this to update the policy
  with a new set of automatic tape creation rules. This is only supported for tape
  gateways.

  By default, there is no automatic tape creation policy.

  A gateway can have only one automatic tape creation policy.
  """
  @spec update_automatic_tape_creation_policy(
          map(),
          update_automatic_tape_creation_policy_input(),
          list()
        ) ::
          {:ok, update_automatic_tape_creation_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_automatic_tape_creation_policy_errors()}
  def update_automatic_tape_creation_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAutomaticTapeCreationPolicy", input, options)
  end

  @doc """
  Updates the bandwidth rate limits of a gateway.

  You can update both the upload and
  download bandwidth rate limit or specify only one of the two. If you don't set a
  bandwidth rate limit, the existing rate limit remains. This operation is
  supported only for
  the stored volume, cached volume, and tape gateway types. To update bandwidth
  rate limits
  for S3 file gateways, use `UpdateBandwidthRateLimitSchedule`.

  By default, a gateway's bandwidth rate limits are not set. If you don't set
  any limit, the gateway does not have any limitations on its bandwidth usage and
  could
  potentially use the maximum available bandwidth.

  To specify which gateway to update, use the Amazon Resource Name (ARN) of the
  gateway in
  your request.
  """
  @spec update_bandwidth_rate_limit(map(), update_bandwidth_rate_limit_input(), list()) ::
          {:ok, update_bandwidth_rate_limit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bandwidth_rate_limit_errors()}
  def update_bandwidth_rate_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBandwidthRateLimit", input, options)
  end

  @doc """
  Updates the bandwidth rate limit schedule for a specified gateway.

  By default, gateways
  do not have bandwidth rate limit schedules, which means no bandwidth rate
  limiting is in
  effect. Use this to initiate or update a gateway's bandwidth rate limit
  schedule. This
  operation is supported for volume, tape, and S3 file gateways. S3 file gateways
  support
  bandwidth rate limits for upload only. FSx file gateways do not support
  bandwidth rate
  limits.
  """
  @spec update_bandwidth_rate_limit_schedule(
          map(),
          update_bandwidth_rate_limit_schedule_input(),
          list()
        ) ::
          {:ok, update_bandwidth_rate_limit_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bandwidth_rate_limit_schedule_errors()}
  def update_bandwidth_rate_limit_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBandwidthRateLimitSchedule", input, options)
  end

  @doc """
  Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a
  specified iSCSI target.

  By default, a gateway does not have CHAP enabled; however, for
  added security, you might use it. This operation is supported in the volume and
  tape
  gateway types.

  When you update CHAP credentials, all existing connections on the target are
  closed
  and initiators must reconnect with the new credentials.
  """
  @spec update_chap_credentials(map(), update_chap_credentials_input(), list()) ::
          {:ok, update_chap_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_chap_credentials_errors()}
  def update_chap_credentials(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateChapCredentials", input, options)
  end

  @doc """
  Updates a file system association.

  This operation is only supported in the FSx File
  Gateways.
  """
  @spec update_file_system_association(map(), update_file_system_association_input(), list()) ::
          {:ok, update_file_system_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_file_system_association_errors()}
  def update_file_system_association(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFileSystemAssociation", input, options)
  end

  @doc """
  Updates a gateway's metadata, which includes the gateway's name, time zone,
  and metadata cache size.

  To specify which gateway to update, use the Amazon Resource Name
  (ARN) of the gateway in your request.

  For gateways activated after September 2, 2015, the gateway's ARN contains the
  gateway ID rather than the gateway name. However, changing the name of the
  gateway has
  no effect on the gateway's ARN.
  """
  @spec update_gateway_information(map(), update_gateway_information_input(), list()) ::
          {:ok, update_gateway_information_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_information_errors()}
  def update_gateway_information(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGatewayInformation", input, options)
  end

  @doc """
  Updates the gateway virtual machine (VM) software.

  The request immediately triggers the
  software update.

  When you make this request, you get a `200 OK` success response
  immediately. However, it might take some time for the update to complete. You
  can call
  `DescribeGatewayInformation` to verify the gateway is in the
  `STATE_RUNNING` state.

  A software update forces a system restart of your gateway. You can minimize the
  chance of any disruption to your applications by increasing your iSCSI
  Initiators'
  timeouts. For more information about increasing iSCSI Initiator timeouts for
  Windows and
  Linux, see [Customizing your Windows iSCSI settings](https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings)
  and [Customizing your Linux iSCSI settings](https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings),
  respectively.
  """
  @spec update_gateway_software_now(map(), update_gateway_software_now_input(), list()) ::
          {:ok, update_gateway_software_now_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_gateway_software_now_errors()}
  def update_gateway_software_now(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGatewaySoftwareNow", input, options)
  end

  @doc """
  Updates a gateway's maintenance window schedule, with settings for monthly or
  weekly cadence, specific day and time to begin maintenance, and which types of
  updates to
  apply.

  Time configuration uses the gateway's time zone. You can pass values for a
  complete
  maintenance schedule, or update policy, or both. Previous values will persist
  for whichever
  setting you choose not to modify. If an incomplete or invalid maintenance
  schedule is
  passed, the entire request will be rejected with an error and no changes will
  occur.

  A complete maintenance schedule must include values for *both*
  `MinuteOfHour` and `HourOfDay`, and *either*
  `DayOfMonth`
  *or*
  `DayOfWeek`.

  We recommend keeping maintenance updates turned on, except in specific use cases
  where the brief disruptions caused by updating the gateway could critically
  impact your
  deployment.
  """
  @spec update_maintenance_start_time(map(), update_maintenance_start_time_input(), list()) ::
          {:ok, update_maintenance_start_time_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_maintenance_start_time_errors()}
  def update_maintenance_start_time(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMaintenanceStartTime", input, options)
  end

  @doc """
  Updates a Network File System (NFS) file share.

  This operation is only supported in S3
  File Gateways.

  To leave a file share field unchanged, set the corresponding input field to
  null.

  Updates the following file share settings:

    *
  Default storage class for your S3 bucket

    *
  Metadata defaults for your S3 bucket

    *
  Allowed NFS clients for your file share

    *
  Squash settings

    *
  Write status of your file share
  """
  @spec update_nfs_file_share(map(), update_nfs_file_share_input(), list()) ::
          {:ok, update_nfs_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_nfs_file_share_errors()}
  def update_nfs_file_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNFSFileShare", input, options)
  end

  @doc """
  Updates a Server Message Block (SMB) file share.

  This operation is only supported for S3
  File Gateways.

  To leave a file share field unchanged, set the corresponding input field to
  null.

  File gateways require Security Token Service (Amazon Web Services STS) to be
  activated to enable you to create a file share. Make sure that Amazon Web
  Services STS
  is activated in the Amazon Web Services Region you are creating your file
  gateway in. If
  Amazon Web Services STS is not activated in this Amazon Web Services Region,
  activate
  it. For information about how to activate Amazon Web Services STS, see
  [Activating and deactivating Amazon Web Services STS in an Amazon Web Services
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the
  *Identity and Access Management User Guide*.

  File gateways don't support creating hard or symbolic links on a file
  share.
  """
  @spec update_smb_file_share(map(), update_smb_file_share_input(), list()) ::
          {:ok, update_smb_file_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_smb_file_share_errors()}
  def update_smb_file_share(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBFileShare", input, options)
  end

  @doc """
  Controls whether the shares on an S3 File Gateway are visible in a net view or
  browse
  list.

  The operation is only supported for S3 File Gateways.
  """
  @spec update_smb_file_share_visibility(map(), update_smb_file_share_visibility_input(), list()) ::
          {:ok, update_smb_file_share_visibility_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_smb_file_share_visibility_errors()}
  def update_smb_file_share_visibility(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBFileShareVisibility", input, options)
  end

  @doc """
  Updates the list of Active Directory users and groups that have special
  permissions for
  SMB file shares on the gateway.
  """
  @spec update_smb_local_groups(map(), update_smb_local_groups_input(), list()) ::
          {:ok, update_smb_local_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_smb_local_groups_errors()}
  def update_smb_local_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBLocalGroups", input, options)
  end

  @doc """
  Updates the SMB security strategy level for an Amazon S3 file gateway.

  This
  action is only supported for Amazon S3 file gateways.

  For information about configuring this setting using the Amazon Web Services
  console,
  see [Setting a security level for your gateway](https://docs.aws.amazon.com/filegateway/latest/files3/security-strategy.html)
  in the *Amazon S3
  File Gateway User Guide*.

  A higher security strategy level can affect performance of the gateway.
  """
  @spec update_smb_security_strategy(map(), update_smb_security_strategy_input(), list()) ::
          {:ok, update_smb_security_strategy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_smb_security_strategy_errors()}
  def update_smb_security_strategy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSMBSecurityStrategy", input, options)
  end

  @doc """
  Updates a snapshot schedule configured for a gateway volume.

  This operation is only
  supported in the cached volume and stored volume gateway types.

  The default snapshot schedule for volume is once every 24 hours, starting at the
  creation time of the volume. You can use this API to change the snapshot
  schedule
  configured for the volume.

  In the request you must identify the gateway volume whose snapshot schedule you
  want to
  update, and the schedule information, including when you want the snapshot to
  begin on a
  day and the frequency (in hours) of snapshots.
  """
  @spec update_snapshot_schedule(map(), update_snapshot_schedule_input(), list()) ::
          {:ok, update_snapshot_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_snapshot_schedule_errors()}
  def update_snapshot_schedule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSnapshotSchedule", input, options)
  end

  @doc """
  Updates the type of medium changer in a tape gateway.

  When you activate a tape gateway,
  you select a medium changer type for the tape gateway. This operation enables
  you to select
  a different type of medium changer after a tape gateway is activated. This
  operation is
  only supported in the tape gateway type.
  """
  @spec update_vtl_device_type(map(), update_vtl_device_type_input(), list()) ::
          {:ok, update_vtl_device_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_vtl_device_type_errors()}
  def update_vtl_device_type(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateVTLDeviceType", input, options)
  end
end
