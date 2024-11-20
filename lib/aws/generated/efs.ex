# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EFS do
  @moduledoc """
  Amazon Elastic File System

  Amazon Elastic File System (Amazon EFS) provides simple, scalable file storage
  for
  use with Amazon EC2 Linux and Mac instances in the Amazon Web Services Cloud.

  With Amazon EFS, storage capacity is elastic, growing and shrinking
  automatically as you add and
  remove files, so that your applications have the storage they need, when they
  need it. For
  more information, see the [Amazon Elastic File System API Reference](https://docs.aws.amazon.com/efs/latest/ug/api-reference.html) and the
  [Amazon Elastic File System User Guide](https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_file_system_protection_request() :: %{
        optional("ReplicationOverwriteProtection") => list(any())
      }

  """
  @type update_file_system_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_size() :: %{
        "Timestamp" => non_neg_integer(),
        "Value" => float(),
        "ValueInArchive" => float(),
        "ValueInIA" => float(),
        "ValueInStandard" => float()
      }

  """
  @type file_system_size() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_preferences_response() :: %{
        "NextToken" => String.t(),
        "ResourceIdPreference" => resource_id_preference()
      }

  """
  @type describe_account_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_tags_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type delete_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mount_target_description() :: %{
        "AvailabilityZoneId" => String.t(),
        "AvailabilityZoneName" => String.t(),
        "FileSystemId" => String.t(),
        "IpAddress" => String.t(),
        "LifeCycleState" => list(any()),
        "MountTargetId" => String.t(),
        "NetworkInterfaceId" => String.t(),
        "OwnerId" => String.t(),
        "SubnetId" => String.t(),
        "VpcId" => String.t()
      }

  """
  @type mount_target_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backup_policy_description() :: %{
        optional("BackupPolicy") => backup_policy()
      }

  """
  @type backup_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_account_preferences_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_account_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type file_system_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      root_directory() :: %{
        "CreationInfo" => creation_info(),
        "Path" => String.t()
      }

  """
  @type root_directory() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_availability_zone() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type unsupported_availability_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_backup_policy_request() :: %{
        required("BackupPolicy") => backup_policy()
      }

  """
  @type put_backup_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_replication_configurations_response() :: %{
        "NextToken" => String.t(),
        "Replications" => list(replication_configuration_description()())
      }

  """
  @type describe_replication_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_already_exists() :: %{
        "ErrorCode" => String.t(),
        "FileSystemId" => String.t(),
        "Message" => String.t()
      }

  """
  @type file_system_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      incorrect_file_system_life_cycle_state() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type incorrect_file_system_life_cycle_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_mount_target_request() :: %{
        optional("IpAddress") => String.t(),
        optional("SecurityGroups") => list(String.t()()),
        required("FileSystemId") => String.t(),
        required("SubnetId") => String.t()
      }

  """
  @type create_mount_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_lifecycle_configuration_request() :: %{
        required("LifecyclePolicies") => list(lifecycle_policy()())
      }

  """
  @type put_lifecycle_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_preferences_response() :: %{
        "ResourceIdPreference" => resource_id_preference()
      }

  """
  @type put_account_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_in_use() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type file_system_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_tags_response() :: %{
        "Marker" => String.t(),
        "NextMarker" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type describe_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mount_target_conflict() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type mount_target_conflict() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_to_create() :: %{
        "AvailabilityZoneName" => String.t(),
        "FileSystemId" => String.t(),
        "KmsKeyId" => String.t(),
        "Region" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type destination_to_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_group_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type security_group_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_mount_targets_response() :: %{
        "Marker" => String.t(),
        "MountTargets" => list(mount_target_description()()),
        "NextMarker" => String.t()
      }

  """
  @type describe_mount_targets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_point_request() :: %{
        optional("PosixUser") => posix_user(),
        optional("RootDirectory") => root_directory(),
        optional("Tags") => list(tag()()),
        required("ClientToken") => String.t(),
        required("FileSystemId") => String.t()
      }

  """
  @type create_access_point_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_replication_configuration_request() :: %{
        optional("DeletionMode") => list(any())
      }

  """
  @type delete_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_policy_description() :: %{
        optional("FileSystemId") => String.t(),
        optional("Policy") => String.t()
      }

  """
  @type file_system_policy_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_tags_request() :: %{
        required("Tags") => list(tag()())
      }

  """
  @type create_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_policy_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type invalid_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_preferences_request() :: %{
        required("ResourceIdType") => list(any())
      }

  """
  @type put_account_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_mount_target_request() :: %{}

  """
  @type delete_mount_target_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      posix_user() :: %{
        "Gid" => float(),
        "SecondaryGids" => list(float()()),
        "Uid" => float()
      }

  """
  @type posix_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      availability_zones_mismatch() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type availability_zones_mismatch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_file_system_request() :: %{
        optional("ProvisionedThroughputInMibps") => float(),
        optional("ThroughputMode") => list(any())
      }

  """
  @type update_file_system_request() :: %{String.t() => any()}

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

      replication_already_exists() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type replication_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      incorrect_mount_target_state() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type incorrect_mount_target_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backup_policy() :: %{
        "Status" => list(any())
      }

  """
  @type backup_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_file_system_request() :: %{
        optional("AvailabilityZoneName") => String.t(),
        optional("Backup") => boolean(),
        optional("Encrypted") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("PerformanceMode") => list(any()),
        optional("ProvisionedThroughputInMibps") => float(),
        optional("Tags") => list(tag()()),
        optional("ThroughputMode") => list(any()),
        required("CreationToken") => String.t()
      }

  """
  @type create_file_system_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_mount_target_security_groups_response() :: %{
        "SecurityGroups" => list(String.t()())
      }

  """
  @type describe_mount_target_security_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mount_target_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type mount_target_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_description() :: %{
        "AvailabilityZoneId" => String.t(),
        "AvailabilityZoneName" => String.t(),
        "CreationTime" => non_neg_integer(),
        "CreationToken" => String.t(),
        "Encrypted" => boolean(),
        "FileSystemArn" => String.t(),
        "FileSystemId" => String.t(),
        "FileSystemProtection" => file_system_protection_description(),
        "KmsKeyId" => String.t(),
        "LifeCycleState" => list(any()),
        "Name" => String.t(),
        "NumberOfMountTargets" => integer(),
        "OwnerId" => String.t(),
        "PerformanceMode" => list(any()),
        "ProvisionedThroughputInMibps" => float(),
        "SizeInBytes" => file_system_size(),
        "Tags" => list(tag()()),
        "ThroughputMode" => list(any())
      }

  """
  @type file_system_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_id_preference() :: %{
        "ResourceIdType" => list(any()),
        "Resources" => list(list(any())())
      }

  """
  @type resource_id_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_protection_description() :: %{
        "ReplicationOverwriteProtection" => list(any())
      }

  """
  @type file_system_protection_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_timeout() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type dependency_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_point_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type access_point_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_interface_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type network_interface_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      modify_mount_target_security_groups_request() :: %{
        optional("SecurityGroups") => list(String.t()())
      }

  """
  @type modify_mount_target_security_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_system_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type file_system_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_file_system_policy_request() :: %{
        optional("BypassPolicyLockoutSafetyCheck") => boolean(),
        required("Policy") => String.t()
      }

  """
  @type put_file_system_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insufficient_throughput_capacity() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type insufficient_throughput_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_point_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type access_point_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_file_system_policy_request() :: %{}

  """
  @type delete_file_system_policy_request() :: %{}

  @typedoc """

  ## Example:

      access_point_already_exists() :: %{
        "AccessPointId" => String.t(),
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type access_point_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      replication_configuration_description() :: %{
        "CreationTime" => non_neg_integer(),
        "Destinations" => list(destination()()),
        "OriginalSourceFileSystemArn" => String.t(),
        "SourceFileSystemArn" => String.t(),
        "SourceFileSystemId" => String.t(),
        "SourceFileSystemOwnerId" => String.t(),
        "SourceFileSystemRegion" => String.t()
      }

  """
  @type replication_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_point_request() :: %{}

  """
  @type delete_access_point_request() :: %{}

  @typedoc """

  ## Example:

      lifecycle_policy() :: %{
        "TransitionToArchive" => list(any()),
        "TransitionToIA" => list(any()),
        "TransitionToPrimaryStorageClass" => list(any())
      }

  """
  @type lifecycle_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_group_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type security_group_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_replication_configuration_request() :: %{
        required("Destinations") => list(destination_to_create()())
      }

  """
  @type create_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_file_systems_request() :: %{
        optional("CreationToken") => String.t(),
        optional("FileSystemId") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type describe_file_systems_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type bad_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_mount_targets_request() :: %{
        optional("AccessPointId") => String.t(),
        optional("FileSystemId") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer(),
        optional("MountTargetId") => String.t()
      }

  """
  @type describe_mount_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_backup_policy_request() :: %{}

  """
  @type describe_backup_policy_request() :: %{}

  @typedoc """

  ## Example:

      describe_access_points_request() :: %{
        optional("AccessPointId") => String.t(),
        optional("FileSystemId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_access_points_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_mount_target_security_groups_request() :: %{}

  """
  @type describe_mount_target_security_groups_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ip_address_in_use() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type ip_address_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      policy_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type policy_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "FileSystemId" => String.t(),
        "LastReplicatedTimestamp" => non_neg_integer(),
        "OwnerId" => String.t(),
        "Region" => String.t(),
        "RoleArn" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_file_systems_response() :: %{
        "FileSystems" => list(file_system_description()()),
        "Marker" => String.t(),
        "NextMarker" => String.t()
      }

  """
  @type describe_file_systems_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type too_many_requests() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      replication_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type replication_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      creation_info() :: %{
        "OwnerGid" => float(),
        "OwnerUid" => float(),
        "Permissions" => String.t()
      }

  """
  @type creation_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throughput_limit_exceeded() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type throughput_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_tags_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type describe_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_free_addresses_in_subnet() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type no_free_addresses_in_subnet() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_access_points_response() :: %{
        "AccessPoints" => list(access_point_description()()),
        "NextToken" => String.t()
      }

  """
  @type describe_access_points_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_lifecycle_configuration_request() :: %{}

  """
  @type describe_lifecycle_configuration_request() :: %{}

  @typedoc """

  ## Example:

      describe_replication_configurations_request() :: %{
        optional("FileSystemId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type describe_replication_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_file_system_policy_request() :: %{}

  """
  @type describe_file_system_policy_request() :: %{}

  @typedoc """

  ## Example:

      lifecycle_configuration_description() :: %{
        optional("LifecyclePolicies") => list(lifecycle_policy()())
      }

  """
  @type lifecycle_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_point_description() :: %{
        "AccessPointArn" => String.t(),
        "AccessPointId" => String.t(),
        "ClientToken" => String.t(),
        "FileSystemId" => String.t(),
        "LifeCycleState" => list(any()),
        "Name" => String.t(),
        "OwnerId" => String.t(),
        "PosixUser" => posix_user(),
        "RootDirectory" => root_directory(),
        "Tags" => list(tag()())
      }

  """
  @type access_point_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subnet_not_found() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type subnet_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_file_system_request() :: %{}

  """
  @type delete_file_system_request() :: %{}

  @type create_access_point_errors() ::
          throttling_exception()
          | internal_server_error()
          | bad_request()
          | access_point_already_exists()
          | file_system_not_found()
          | access_point_limit_exceeded()
          | incorrect_file_system_life_cycle_state()

  @type create_file_system_errors() ::
          throughput_limit_exceeded()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_already_exists()
          | unsupported_availability_zone()
          | file_system_limit_exceeded()

  @type create_mount_target_errors() ::
          subnet_not_found()
          | no_free_addresses_in_subnet()
          | ip_address_in_use()
          | internal_server_error()
          | bad_request()
          | security_group_not_found()
          | file_system_not_found()
          | network_interface_limit_exceeded()
          | availability_zones_mismatch()
          | security_group_limit_exceeded()
          | mount_target_conflict()
          | incorrect_file_system_life_cycle_state()
          | unsupported_availability_zone()

  @type create_replication_configuration_errors() ::
          throughput_limit_exceeded()
          | replication_not_found()
          | validation_exception()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_not_found()
          | conflict_exception()
          | incorrect_file_system_life_cycle_state()
          | unsupported_availability_zone()
          | file_system_limit_exceeded()

  @type create_tags_errors() :: internal_server_error() | bad_request() | file_system_not_found()

  @type delete_access_point_errors() ::
          internal_server_error() | bad_request() | access_point_not_found()

  @type delete_file_system_errors() ::
          internal_server_error() | bad_request() | file_system_not_found() | file_system_in_use()

  @type delete_file_system_policy_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type delete_mount_target_errors() ::
          internal_server_error()
          | bad_request()
          | dependency_timeout()
          | mount_target_not_found()

  @type delete_replication_configuration_errors() ::
          replication_not_found()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type delete_tags_errors() :: internal_server_error() | bad_request() | file_system_not_found()

  @type describe_access_points_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type describe_account_preferences_errors() :: internal_server_error()

  @type describe_backup_policy_errors() ::
          policy_not_found()
          | validation_exception()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type describe_file_system_policy_errors() ::
          policy_not_found() | internal_server_error() | bad_request() | file_system_not_found()

  @type describe_file_systems_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_lifecycle_configuration_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type describe_mount_target_security_groups_errors() ::
          internal_server_error()
          | bad_request()
          | mount_target_not_found()
          | incorrect_mount_target_state()

  @type describe_mount_targets_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()
          | mount_target_not_found()

  @type describe_replication_configurations_errors() ::
          replication_not_found()
          | validation_exception()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()

  @type describe_tags_errors() ::
          internal_server_error() | bad_request() | file_system_not_found()

  @type list_tags_for_resource_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type modify_mount_target_security_groups_errors() ::
          internal_server_error()
          | bad_request()
          | security_group_not_found()
          | mount_target_not_found()
          | incorrect_mount_target_state()
          | security_group_limit_exceeded()

  @type put_account_preferences_errors() :: internal_server_error() | bad_request()

  @type put_backup_policy_errors() ::
          validation_exception()
          | internal_server_error()
          | bad_request()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type put_file_system_policy_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | invalid_policy_exception()
          | incorrect_file_system_life_cycle_state()

  @type put_lifecycle_configuration_errors() ::
          internal_server_error()
          | bad_request()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type tag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type untag_resource_errors() ::
          internal_server_error()
          | bad_request()
          | access_point_not_found()
          | file_system_not_found()

  @type update_file_system_errors() ::
          throughput_limit_exceeded()
          | too_many_requests()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_not_found()
          | incorrect_file_system_life_cycle_state()

  @type update_file_system_protection_errors() ::
          throughput_limit_exceeded()
          | too_many_requests()
          | internal_server_error()
          | bad_request()
          | insufficient_throughput_capacity()
          | file_system_not_found()
          | replication_already_exists()
          | incorrect_file_system_life_cycle_state()

  def metadata do
    %{
      api_version: "2015-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "elasticfilesystem",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EFS",
      signature_version: "v4",
      signing_name: "elasticfilesystem",
      target_prefix: nil
    }
  end

  @doc """
  Creates an EFS access point.

  An access point is an application-specific view
  into an EFS file system that applies an operating system user and group, and a
  file
  system path, to any file system request made through the access point. The
  operating system
  user and group override any identity information provided by the NFS client. The
  file system
  path is exposed as the access point's root directory. Applications using the
  access point can
  only access data in the application's own directory and any subdirectories. To
  learn more, see
  [Mounting a file system using EFS access
  points](https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html).

  If multiple requests to create access points on the same file system are sent in
  quick
  succession, and the file system is near the limit of 1,000 access points, you
  may experience
  a throttling response for these requests. This is to ensure that the file system
  does not
  exceed the stated access point limit.

  This operation requires permissions for the
  `elasticfilesystem:CreateAccessPoint` action.

  Access points can be tagged on creation. If tags are specified in the creation
  action, IAM
  performs additional authorization on the `elasticfilesystem:TagResource` action
  to
  verify if users have permissions to create tags. Therefore, you must grant
  explicit
  permissions to use the `elasticfilesystem:TagResource` action. For more
  information, see [Granting permissions to tag resources during
  creation](https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html).
  """
  @spec create_access_point(map(), create_access_point_request(), list()) ::
          {:ok, access_point_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_access_point_errors()}
  def create_access_point(%Client{} = client, input, options \\ []) do
    url_path = "/2015-02-01/access-points"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new, empty file system.

  The operation requires a creation token in the
  request that Amazon EFS uses to ensure idempotent creation (calling the
  operation with same
  creation token has no effect). If a file system does not currently exist that is
  owned by the
  caller's Amazon Web Services account with the specified creation token, this
  operation does the
  following:

    *
  Creates a new, empty file system. The file system will have an Amazon EFS
  assigned
  ID, and an initial lifecycle state `creating`.

    *
  Returns with the description of the created file system.

  Otherwise, this operation returns a `FileSystemAlreadyExists` error with the
  ID of the existing file system.

  For basic use cases, you can use a randomly generated UUID for the creation
  token.

  The idempotent operation allows you to retry a `CreateFileSystem` call without
  risk of creating an extra file system. This can happen when an initial call
  fails in a way
  that leaves it uncertain whether or not a file system was actually created. An
  example might
  be that a transport level timeout occurred or your connection was reset. As long
  as you use
  the same creation token, if the initial call had succeeded in creating a file
  system, the
  client can learn of its existence from the `FileSystemAlreadyExists` error.

  For more information, see
  [Creating a file system](https://docs.aws.amazon.com/efs/latest/ug/creating-using-create-fs.html#creating-using-create-fs-part1)
  in the *Amazon EFS User Guide*.

  The `CreateFileSystem` call returns while the file system's lifecycle
  state is still `creating`. You can check the file system creation status by
  calling the `DescribeFileSystems` operation, which among other things returns
  the file
  system state.

  This operation accepts an optional `PerformanceMode` parameter that you choose
  for your file system. We recommend `generalPurpose`
  `PerformanceMode` for all file
  systems. The `maxIO` mode is a previous generation performance type that is
  designed for highly parallelized workloads that can tolerate higher latencies
  than the `generalPurpose` mode. `MaxIO` mode is not supported for One Zone file
  systems or
  file systems that use Elastic throughput.

  The `PerformanceMode` can't be changed after the file system has been
  created. For more information, see [Amazon EFS performance modes](https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html).

  You can set the throughput mode for the file system using the `ThroughputMode`
  parameter.

  After the file system is fully created, Amazon EFS sets its lifecycle state to
  `available`, at which point you can create one or more mount targets for the
  file
  system in your VPC. For more information, see `CreateMountTarget`. You mount
  your Amazon EFS file system on an EC2 instances in
  your VPC by using the mount target. For more information, see [Amazon EFS: How it Works](https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

  This operation requires permissions for the
  `elasticfilesystem:CreateFileSystem` action.

  File systems can be tagged on creation. If tags are specified in the creation
  action, IAM
  performs additional authorization on the `elasticfilesystem:TagResource` action
  to
  verify if users have permissions to create tags. Therefore, you must grant
  explicit
  permissions to use the `elasticfilesystem:TagResource` action. For more
  information, see [Granting permissions to tag resources during creation](https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html).
  """
  @spec create_file_system(map(), create_file_system_request(), list()) ::
          {:ok, file_system_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_file_system_errors()}
  def create_file_system(%Client{} = client, input, options \\ []) do
    url_path = "/2015-02-01/file-systems"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a mount target for a file system.

  You can then mount the file system on EC2
  instances by using the mount target.

  You can create one mount target in each Availability Zone in your VPC. All EC2
  instances in a VPC within a given Availability Zone share a single mount target
  for a given
  file system. If you have multiple subnets in an Availability Zone, you create a
  mount target
  in one of the subnets. EC2 instances do not need to be in the same subnet as the
  mount target
  in order to access their file system.

  You can create only one mount target for a One Zone file system.
  You must create that mount target in the same Availability Zone in which the
  file system is
  located. Use the `AvailabilityZoneName` and `AvailabiltyZoneId`
  properties in the `DescribeFileSystems` response object to get this
  information. Use the `subnetId` associated with the file system's Availability
  Zone
  when creating the mount target.

  For more information, see [Amazon EFS: How it Works](https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

  To create a mount target for a file system, the file system's lifecycle state
  must be
  `available`. For more information, see `DescribeFileSystems`.

  In the request, provide the following:

    *
  The file system ID for which you are creating the mount
  target.

    *
  A subnet ID, which determines the following:

      *
  The VPC in which Amazon EFS creates the mount target

      *
  The Availability Zone in which Amazon EFS creates the mount target

      *
  The IP address range from which Amazon EFS selects the IP address of the mount
  target
  (if you don't specify an IP address in the request)

  After creating the mount target, Amazon EFS returns a response that includes, a
  `MountTargetId` and an `IpAddress`. You use this IP address when
  mounting the file system in an EC2 instance. You can also use the mount target's
  DNS name
  when mounting the file system. The EC2 instance on which you mount the file
  system by using
  the mount target can resolve the mount target's DNS name to its IP address. For
  more
  information, see [How it Works: Implementation
  Overview](https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation).

  Note that you can create mount targets for a file system in only one VPC, and
  there can
  be only one mount target per Availability Zone. That is, if the file system
  already has one or
  more mount targets created for it, the subnet specified in the request to add
  another mount
  target must meet the following requirements:

    *
  Must belong to the same VPC as the subnets of the existing mount targets

    *
  Must not be in the same Availability Zone as any of the subnets of the existing
  mount targets

  If the request satisfies the requirements, Amazon EFS does the following:

    *
  Creates a new mount target in the specified subnet.

    *
  Also creates a new network interface in the subnet as follows:

      *
  If the request provides an `IpAddress`, Amazon EFS assigns that IP
  address to the network interface. Otherwise, Amazon EFS assigns a free address
  in the
  subnet (in the same way that the Amazon EC2 `CreateNetworkInterface` call
  does when a request does not specify a primary private IP address).

      *
  If the request provides `SecurityGroups`, this network interface is
  associated with those security groups. Otherwise, it belongs to the default
  security
  group for the subnet's VPC.

      *
  Assigns the description

  ```
  Mount target *fsmt-id* for
  file system *fs-id*

  ```

  where

  ```

  *fsmt-id*

  ```

  is the mount target ID, and

  ```

  *fs-id*

  ```

  is the `FileSystemId`.

      *
  Sets the `requesterManaged` property of the network interface to
  `true`, and the `requesterId` value to
  `EFS`.

  Each Amazon EFS mount target has one corresponding requester-managed EC2 network
  interface. After the network interface is created, Amazon EFS sets the
  `NetworkInterfaceId` field in the mount target's description to the
  network interface ID, and the `IpAddress` field to its address. If network
  interface creation fails, the entire `CreateMountTarget` operation
  fails.

  The `CreateMountTarget` call returns only after creating the network
  interface, but while the mount target state is still `creating`, you can check
  the mount target creation status by calling the `DescribeMountTargets`
  operation, which among other things returns the mount
  target state.

  We recommend that you create a mount target in each of the Availability Zones.
  There
  are cost considerations for using a file system in an Availability Zone through
  a mount target
  created in another Availability Zone. For more information, see [Amazon EFS](http://aws.amazon.com/efs/). In addition, by always using a mount target
  local to the
  instance's Availability Zone, you eliminate a partial failure scenario. If the
  Availability Zone in which your mount target is created goes down, then you
  can't access
  your file system through that mount target.

  This operation requires permissions for the following action on the file
  system:

    *

  `elasticfilesystem:CreateMountTarget`

  This operation also requires permissions for the following Amazon EC2
  actions:

    *

  `ec2:DescribeSubnets`

    *

  `ec2:DescribeNetworkInterfaces`

    *

  `ec2:CreateNetworkInterface`
  """
  @spec create_mount_target(map(), create_mount_target_request(), list()) ::
          {:ok, mount_target_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_mount_target_errors()}
  def create_mount_target(%Client{} = client, input, options \\ []) do
    url_path = "/2015-02-01/mount-targets"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a replication conﬁguration to either a new or existing EFS file system.

  For more information, see [Amazon EFS replication](https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html) in
  the *Amazon EFS User
  Guide*. The replication configuration specifies the following:

    *

  **Source file system** – The EFS file
  system that you want to replicate.

    *

  **Destination file system** – The destination file
  system to which the source file system is replicated. There can only be one
  destination
  file system in a replication configuration.

  A file system can be part of only one replication configuration.

  The destination parameters for the replication configuration depend on
  whether you are replicating to a new file system or to an existing file system,
  and if you
  are replicating across Amazon Web Services accounts. See `DestinationToCreate`
  for more information.

  This operation requires permissions for the
  `elasticfilesystem:CreateReplicationConfiguration`
  action. Additionally, other permissions are required depending on how you are
  replicating file systems.
  For more information, see [Required permissions for replication](https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html#efs-replication-permissions)
  in the *Amazon EFS User
  Guide*.
  """
  @spec create_replication_configuration(
          map(),
          String.t(),
          create_replication_configuration_request(),
          list()
        ) ::
          {:ok, replication_configuration_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_replication_configuration_errors()}
  def create_replication_configuration(
        %Client{} = client,
        source_file_system_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(source_file_system_id)}/replication-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """

  DEPRECATED - `CreateTags` is deprecated and not maintained.

  To create tags for EFS
  resources, use the API action.

  Creates or overwrites tags associated with a file system. Each tag is a
  key-value pair. If
  a tag key specified in the request already exists on the file system, this
  operation
  overwrites its value with the value provided in the request. If you add the
  `Name`
  tag to your file system, Amazon EFS returns it in the response to the
  `DescribeFileSystems` operation.

  This operation requires permission for the `elasticfilesystem:CreateTags`
  action.
  """
  @spec create_tags(map(), String.t(), create_tags_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/create-tags/#{AWS.Util.encode_uri(file_system_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the specified access point.

  After deletion is complete, new clients can no
  longer connect to the access points. Clients connected to the access point at
  the time of
  deletion will continue to function until they terminate their connection.

  This operation requires permissions for the
  `elasticfilesystem:DeleteAccessPoint` action.
  """
  @spec delete_access_point(map(), String.t(), delete_access_point_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_access_point_errors()}
  def delete_access_point(%Client{} = client, access_point_id, input, options \\ []) do
    url_path = "/2015-02-01/access-points/#{AWS.Util.encode_uri(access_point_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a file system, permanently severing access to its contents.

  Upon return, the
  file system no longer exists and you can't access any contents of the deleted
  file
  system.

  You need to manually delete mount targets attached to a file system before you
  can delete
  an EFS file system. This step is performed for you when you use the Amazon Web
  Services console
  to delete a file system.

  You cannot delete a file system that is part of an EFS replication
  configuration.
  You need to delete the replication configuration first.

  You can't delete a file system that is in use. That is, if the file system has
  any mount targets, you must first delete them. For more information, see
  `DescribeMountTargets` and `DeleteMountTarget`.

  The `DeleteFileSystem` call returns while the file system state is still
  `deleting`. You can check the file system deletion status by calling the
  `DescribeFileSystems` operation, which returns a list of file systems in your
  account. If you pass file system ID or creation token for the deleted file
  system, the `DescribeFileSystems` returns a `404 FileSystemNotFound`
  error.

  This operation requires permissions for the
  `elasticfilesystem:DeleteFileSystem` action.
  """
  @spec delete_file_system(map(), String.t(), delete_file_system_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_file_system_errors()}
  def delete_file_system(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the `FileSystemPolicy` for the specified file system.

  The default `FileSystemPolicy` goes into effect once the existing policy is
  deleted.
  For more information about the default file system policy, see [Using Resource-based Policies with
  EFS](https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html).

  This operation requires permissions for the
  `elasticfilesystem:DeleteFileSystemPolicy` action.
  """
  @spec delete_file_system_policy(map(), String.t(), delete_file_system_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_file_system_policy_errors()}
  def delete_file_system_policy(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified mount target.

  This operation forcibly breaks any mounts of the file system by using the mount
  target
  that is being deleted, which might disrupt instances or applications using those
  mounts. To
  avoid applications getting cut off abruptly, you might consider unmounting any
  mounts of the
  mount target, if feasible. The operation also deletes the associated network
  interface.
  Uncommitted writes might be lost, but breaking a mount target using this
  operation does not
  corrupt the file system itself. The file system you created remains. You can
  mount an EC2
  instance in your VPC by using another mount target.

  This operation requires permissions for the following action on the file
  system:

    *

  `elasticfilesystem:DeleteMountTarget`

  The `DeleteMountTarget` call returns while the mount target state is still
  `deleting`. You can check the mount target deletion by calling the
  `DescribeMountTargets` operation, which returns a list of mount target
  descriptions for the given file system.

  The operation also requires permissions for the following Amazon EC2 action on
  the
  mount target's network interface:

    *

  `ec2:DeleteNetworkInterface`
  """
  @spec delete_mount_target(map(), String.t(), delete_mount_target_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mount_target_errors()}
  def delete_mount_target(%Client{} = client, mount_target_id, input, options \\ []) do
    url_path = "/2015-02-01/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a replication configuration.

  Deleting a replication configuration ends the
  replication process. After a replication configuration is deleted, the
  destination file system
  becomes `Writeable` and its replication overwrite protection is re-enabled. For
  more information, see [Delete a replication configuration](https://docs.aws.amazon.com/efs/latest/ug/delete-replications.html).

  This operation requires permissions for the
  `elasticfilesystem:DeleteReplicationConfiguration` action.
  """
  @spec delete_replication_configuration(
          map(),
          String.t(),
          delete_replication_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_replication_configuration_errors()}
  def delete_replication_configuration(
        %Client{} = client,
        source_file_system_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(source_file_system_id)}/replication-configuration"

    headers = []

    {query_params, input} =
      [
        {"DeletionMode", "deletionMode"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """

  DEPRECATED - `DeleteTags` is deprecated and not maintained.

  To remove tags from EFS
  resources, use the API action.

  Deletes the specified tags from a file system. If the `DeleteTags` request
  includes a tag key that doesn't exist, Amazon EFS ignores it and doesn't cause
  an
  error. For more information about tags and related restrictions, see [Tag restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the
  *Billing and Cost Management User Guide*.

  This operation requires permissions for the `elasticfilesystem:DeleteTags`
  action.
  """
  @spec delete_tags(map(), String.t(), delete_tags_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/delete-tags/#{AWS.Util.encode_uri(file_system_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Returns the description of a specific Amazon EFS access point if the
  `AccessPointId` is provided.

  If you provide an EFS
  `FileSystemId`, it returns descriptions of all access points for that file
  system. You can provide either an `AccessPointId` or a `FileSystemId` in
  the request, but not both.

  This operation requires permissions for the
  `elasticfilesystem:DescribeAccessPoints` action.
  """
  @spec describe_access_points(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_access_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_access_points_errors()}
  def describe_access_points(
        %Client{} = client,
        access_point_id \\ nil,
        file_system_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-02-01/access-points"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file_system_id) do
        [{"FileSystemId", file_system_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(access_point_id) do
        [{"AccessPointId", access_point_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the account preferences settings for the Amazon Web Services account
  associated with the user making the request, in the current Amazon Web Services
  Region.
  """
  @spec describe_account_preferences(map(), list()) ::
          {:ok, describe_account_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_account_preferences_errors()}
  def describe_account_preferences(%Client{} = client, options \\ []) do
    url_path = "/2015-02-01/account-preferences"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the backup policy for the specified EFS file system.
  """
  @spec describe_backup_policy(map(), String.t(), list()) ::
          {:ok, backup_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_backup_policy_errors()}
  def describe_backup_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/backup-policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the `FileSystemPolicy` for the specified EFS file
  system.

  This operation requires permissions for the
  `elasticfilesystem:DescribeFileSystemPolicy` action.
  """
  @spec describe_file_system_policy(map(), String.t(), list()) ::
          {:ok, file_system_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_system_policy_errors()}
  def describe_file_system_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the description of a specific Amazon EFS file system if either the file
  system
  `CreationToken` or the `FileSystemId` is provided.

  Otherwise, it
  returns descriptions of all file systems owned by the caller's Amazon Web
  Services account in the
  Amazon Web Services Region of the endpoint that you're calling.

  When retrieving all file system descriptions, you can optionally specify the
  `MaxItems` parameter to limit the number of descriptions in a response.
  This number is automatically set to 100. If more file system descriptions
  remain,
  Amazon EFS returns a `NextMarker`, an opaque token, in the response. In this
  case,
  you should send a subsequent request with the `Marker` request parameter set to
  the
  value of `NextMarker`.

  To retrieve a list of your file system descriptions, this operation is used in
  an
  iterative process, where `DescribeFileSystems` is called first without the
  `Marker` and then the operation continues to call it with the `Marker`
  parameter set to the value of the `NextMarker` from the previous response until
  the
  response has no `NextMarker`.

  The order of file systems returned in the response of one
  `DescribeFileSystems` call and the order of file systems returned across the
  responses of a multi-call iteration is unspecified.

  This operation requires permissions for the
  `elasticfilesystem:DescribeFileSystems` action.
  """
  @spec describe_file_systems(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_file_systems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_file_systems_errors()}
  def describe_file_systems(
        %Client{} = client,
        creation_token \\ nil,
        file_system_id \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-02-01/file-systems"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file_system_id) do
        [{"FileSystemId", file_system_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_token) do
        [{"CreationToken", creation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current `LifecycleConfiguration` object for the specified Amazon
  EFS file system.

  Lifecycle management uses the `LifecycleConfiguration` object to
  identify when to move files between storage classes. For a file system without a
  `LifecycleConfiguration` object, the call returns an empty array in the
  response.

  This operation requires permissions for the
  `elasticfilesystem:DescribeLifecycleConfiguration` operation.
  """
  @spec describe_lifecycle_configuration(map(), String.t(), list()) ::
          {:ok, lifecycle_configuration_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_lifecycle_configuration_errors()}
  def describe_lifecycle_configuration(%Client{} = client, file_system_id, options \\ []) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/lifecycle-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the security groups currently in effect for a mount target.

  This operation
  requires that the network interface of the mount target has been created and the
  lifecycle
  state of the mount target is not `deleted`.

  This operation requires permissions for the following actions:

    *

  `elasticfilesystem:DescribeMountTargetSecurityGroups` action on the mount
  target's file system.

    *

  `ec2:DescribeNetworkInterfaceAttribute` action on the mount target's
  network interface.
  """
  @spec describe_mount_target_security_groups(map(), String.t(), list()) ::
          {:ok, describe_mount_target_security_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_mount_target_security_groups_errors()}
  def describe_mount_target_security_groups(%Client{} = client, mount_target_id, options \\ []) do
    url_path = "/2015-02-01/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}/security-groups"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the descriptions of all the current mount targets, or a specific mount
  target,
  for a file system.

  When requesting all of the current mount targets, the order of mount
  targets returned in the response is unspecified.

  This operation requires permissions for the
  `elasticfilesystem:DescribeMountTargets` action, on either the file system ID
  that you specify in `FileSystemId`, or on the file system of the mount target
  that
  you specify in `MountTargetId`.
  """
  @spec describe_mount_targets(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_mount_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_mount_targets_errors()}
  def describe_mount_targets(
        %Client{} = client,
        access_point_id \\ nil,
        file_system_id \\ nil,
        marker \\ nil,
        max_items \\ nil,
        mount_target_id \\ nil,
        options \\ []
      ) do
    url_path = "/2015-02-01/mount-targets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(mount_target_id) do
        [{"MountTargetId", mount_target_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file_system_id) do
        [{"FileSystemId", file_system_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(access_point_id) do
        [{"AccessPointId", access_point_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the replication configuration for a specific file system.

  If a file system is
  not specified, all of the replication configurations for the Amazon Web Services
  account in an
  Amazon Web Services Region are retrieved.
  """
  @spec describe_replication_configurations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_replication_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_replication_configurations_errors()}
  def describe_replication_configurations(
        %Client{} = client,
        file_system_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-02-01/file-systems/replication-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file_system_id) do
        [{"FileSystemId", file_system_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  DEPRECATED - The `DescribeTags` action is deprecated and not maintained.

  To view
  tags associated with EFS resources, use the `ListTagsForResource` API
  action.

  Returns the tags associated with a file system. The order of tags returned in
  the
  response of one `DescribeTags` call and the order of tags returned across the
  responses of a multiple-call iteration (when using pagination) is unspecified.

  This operation requires permissions for the
  `elasticfilesystem:DescribeTags` action.
  """
  @spec describe_tags(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, describe_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tags_errors()}
  def describe_tags(
        %Client{} = client,
        file_system_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-02-01/tags/#{AWS.Util.encode_uri(file_system_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all tags for a top-level EFS resource.

  You must provide the ID of the
  resource that you want to retrieve the tags for.

  This operation requires permissions for the
  `elasticfilesystem:DescribeAccessPoints` action.
  """
  @spec list_tags_for_resource(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(
        %Client{} = client,
        resource_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-02-01/resource-tags/#{AWS.Util.encode_uri(resource_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Modifies the set of security groups in effect for a mount target.

  When you create a mount target, Amazon EFS also creates a new network interface.
  For
  more information, see `CreateMountTarget`. This operation replaces the security
  groups in effect for the
  network interface associated with a mount target, with the `SecurityGroups`
  provided in the request. This operation requires that the network interface of
  the mount
  target has been created and the lifecycle state of the mount target is not
  `deleted`.

  The operation requires permissions for the following actions:

    *

  `elasticfilesystem:ModifyMountTargetSecurityGroups` action on the mount
  target's file system.

    *

  `ec2:ModifyNetworkInterfaceAttribute` action on the mount target's network
  interface.
  """
  @spec modify_mount_target_security_groups(
          map(),
          String.t(),
          modify_mount_target_security_groups_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, modify_mount_target_security_groups_errors()}
  def modify_mount_target_security_groups(
        %Client{} = client,
        mount_target_id,
        input,
        options \\ []
      ) do
    url_path = "/2015-02-01/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}/security-groups"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Use this operation to set the account preference in the current Amazon Web
  Services Region
  to use long 17 character (63 bit) or short 8 character (32 bit) resource IDs for
  new
  EFS file system and mount target resources.

  All existing resource IDs are not
  affected by any changes you make. You can set the ID preference during the
  opt-in period as
  EFS transitions to long resource IDs. For more information, see [Managing Amazon EFS resource
  IDs](https://docs.aws.amazon.com/efs/latest/ug/manage-efs-resource-ids.html).

  Starting in October, 2021, you will receive an error if you try to set the
  account preference
  to use the short 8 character format resource ID. Contact Amazon Web Services
  support if you
  receive an error and must use short IDs for file system and mount target
  resources.
  """
  @spec put_account_preferences(map(), put_account_preferences_request(), list()) ::
          {:ok, put_account_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_preferences_errors()}
  def put_account_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/2015-02-01/account-preferences"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the file system's backup policy.

  Use this action to start or stop automatic backups of the file system.
  """
  @spec put_backup_policy(map(), String.t(), put_backup_policy_request(), list()) ::
          {:ok, backup_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_backup_policy_errors()}
  def put_backup_policy(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/backup-policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Applies an Amazon EFS
  `FileSystemPolicy` to an Amazon EFS file system.

  A file system policy is an
  IAM resource-based policy and can contain multiple policy statements. A file
  system always has
  exactly one file system policy, which can be the default policy or an explicit
  policy set or
  updated using this API operation. EFS file system policies have a 20,000
  character
  limit. When an explicit policy is set, it overrides the default policy. For more
  information
  about the default file system policy, see [
  Default EFS file system
  policy](https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy).

  EFS file system policies have a 20,000 character limit.

  This operation requires permissions for the
  `elasticfilesystem:PutFileSystemPolicy` action.
  """
  @spec put_file_system_policy(map(), String.t(), put_file_system_policy_request(), list()) ::
          {:ok, file_system_policy_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_file_system_policy_errors()}
  def put_file_system_policy(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Use this action to manage storage for your file system.

  A
  `LifecycleConfiguration` consists of one or more `LifecyclePolicy`
  objects that define the following:

    *

  **
  `TransitionToIA`
  ** –
  When to move files in the file system from primary storage (Standard storage
  class) into the Infrequent Access
  (IA) storage.

    *

  **
  `TransitionToArchive`
  ** –
  When to move files in the file system from their current storage class (either
  IA or Standard storage) into the
  Archive storage.

  File systems cannot transition into Archive storage before transitioning into IA
  storage. Therefore,
  TransitionToArchive must either not be set or must be later than TransitionToIA.

  The Archive storage class is available only for file systems that use the
  Elastic throughput mode
  and the General Purpose performance mode.

    *

  **
  `TransitionToPrimaryStorageClass`
  ** –
  Whether to move files in the file system back to primary storage (Standard
  storage class) after they are accessed in IA
  or Archive storage.

  For more information, see [ Managing file system storage](https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html).

  Each Amazon EFS file system supports one lifecycle configuration, which applies
  to
  all files in the file system. If a `LifecycleConfiguration` object already
  exists
  for the specified file system, a `PutLifecycleConfiguration` call modifies the
  existing configuration. A `PutLifecycleConfiguration` call with an empty
  `LifecyclePolicies` array in the request body deletes any existing
  `LifecycleConfiguration`. In the request, specify the following:

    *
  The ID for the file system for which you are enabling, disabling, or modifying
  lifecycle management.

    *
  A `LifecyclePolicies` array of `LifecyclePolicy` objects that
  define when to move files to IA storage, to Archive storage,
  and back to primary storage.

  Amazon EFS requires that each `LifecyclePolicy`
  object have only have a single transition, so the `LifecyclePolicies` array
  needs to be structured with separate
  `LifecyclePolicy` objects. See the example requests in the following section for
  more information.

  This operation requires permissions for the
  `elasticfilesystem:PutLifecycleConfiguration` operation.

  To apply a `LifecycleConfiguration` object to an encrypted file system, you
  need the same Key Management Service permissions as when you created the
  encrypted file system.
  """
  @spec put_lifecycle_configuration(
          map(),
          String.t(),
          put_lifecycle_configuration_request(),
          list()
        ) ::
          {:ok, lifecycle_configuration_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_lifecycle_configuration_errors()}
  def put_lifecycle_configuration(%Client{} = client, file_system_id, input, options \\ []) do
    url_path =
      "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/lifecycle-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a tag for an EFS resource.

  You can create tags for EFS file
  systems and access points using this API operation.

  This operation requires permissions for the `elasticfilesystem:TagResource`
  action.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/2015-02-01/resource-tags/#{AWS.Util.encode_uri(resource_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from an EFS resource.

  You can remove tags from EFS file
  systems and access points using this API operation.

  This operation requires permissions for the `elasticfilesystem:UntagResource`
  action.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/2015-02-01/resource-tags/#{AWS.Util.encode_uri(resource_id)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the throughput mode or the amount of provisioned throughput of an
  existing file
  system.
  """
  @spec update_file_system(map(), String.t(), update_file_system_request(), list()) ::
          {:ok, file_system_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_file_system_errors()}
  def update_file_system(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates protection on the file system.

  This operation requires permissions for the
  `elasticfilesystem:UpdateFileSystemProtection` action.
  """
  @spec update_file_system_protection(
          map(),
          String.t(),
          update_file_system_protection_request(),
          list()
        ) ::
          {:ok, file_system_protection_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_file_system_protection_errors()}
  def update_file_system_protection(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/2015-02-01/file-systems/#{AWS.Util.encode_uri(file_system_id)}/protection"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
