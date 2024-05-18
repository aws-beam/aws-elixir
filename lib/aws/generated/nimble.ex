# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Nimble do
  @moduledoc """
  Welcome to the Amazon Nimble Studio API reference.

  This API reference provides
  methods, schema, resources, parameters, and more to help you get the most out of
  Nimble
  Studio.

  Nimble Studio is a virtual studio that empowers visual effects, animation, and
  interactive content teams to create content securely within a scalable, private
  cloud
  service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_launch_profile_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_launch_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_image_request() :: %{}

  """
  @type get_streaming_image_request() :: %{}

  @typedoc """

  ## Example:

      put_studio_members_request() :: %{
        optional("clientToken") => String.t(),
        required("identityStoreId") => String.t(),
        required("members") => list(new_studio_member()())
      }

  """
  @type put_studio_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      studio_component_initialization_script() :: %{
        "launchProfileProtocolVersion" => String.t(),
        "platform" => list(any()),
        "runContext" => list(any()),
        "script" => String.t()
      }

  """
  @type studio_component_initialization_script() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      launch_profile_initialization() :: %{
        "activeDirectory" => launch_profile_initialization_active_directory(),
        "ec2SecurityGroupIds" => list(String.t()()),
        "launchProfileId" => String.t(),
        "launchProfileProtocolVersion" => String.t(),
        "launchPurpose" => String.t(),
        "name" => String.t(),
        "platform" => list(any()),
        "systemInitializationScripts" => list(launch_profile_initialization_script()()),
        "userInitializationScripts" => list(launch_profile_initialization_script()())
      }

  """
  @type launch_profile_initialization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streaming_sessions_response() :: %{
        "nextToken" => String.t(),
        "sessions" => list(streaming_session()())
      }

  """
  @type list_streaming_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      launch_profile_membership() :: %{
        "identityStoreId" => String.t(),
        "persona" => list(any()),
        "principalId" => String.t(),
        "sid" => String.t()
      }

  """
  @type launch_profile_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_studio_component_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("ec2SecurityGroupIds") => list(String.t()()),
        optional("initializationScripts") => list(studio_component_initialization_script()()),
        optional("runtimeRoleArn") => String.t(),
        optional("scriptParameters") => list(script_parameter_key_value()()),
        optional("secureInitializationRoleArn") => String.t(),
        optional("subtype") => list(any()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("type") => list(any())
      }

  """
  @type create_studio_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_launch_profile_member_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_launch_profile_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_streaming_image_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_streaming_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_eulas_response() :: %{
        "eulas" => list(eula()()),
        "nextToken" => String.t()
      }

  """
  @type list_eulas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eula_acceptance() :: %{
        "acceptedAt" => non_neg_integer(),
        "acceptedBy" => String.t(),
        "accepteeId" => String.t(),
        "eulaAcceptanceId" => String.t(),
        "eulaId" => String.t()
      }

  """
  @type eula_acceptance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_session_backup_request() :: %{}

  """
  @type get_streaming_session_backup_request() :: %{}

  @typedoc """

  ## Example:

      create_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }

  """
  @type create_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      launch_profile_initialization_script() :: %{
        "runtimeRoleArn" => String.t(),
        "script" => String.t(),
        "secureInitializationRoleArn" => String.t(),
        "studioComponentId" => String.t(),
        "studioComponentName" => String.t()
      }

  """
  @type launch_profile_initialization_script() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      studio_component() :: %{
        "arn" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "ec2SecurityGroupIds" => list(String.t()()),
        "initializationScripts" => list(studio_component_initialization_script()()),
        "name" => String.t(),
        "runtimeRoleArn" => String.t(),
        "scriptParameters" => list(script_parameter_key_value()()),
        "secureInitializationRoleArn" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "studioComponentId" => String.t(),
        "subtype" => list(any()),
        "tags" => map(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type studio_component() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_studio_response() :: %{
        "studio" => studio()
      }

  """
  @type delete_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_session() :: %{
        "arn" => String.t(),
        "automaticTerminationMode" => list(any()),
        "backupMode" => list(any()),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "ec2InstanceType" => String.t(),
        "launchProfileId" => String.t(),
        "maxBackupsToRetain" => integer(),
        "ownedBy" => String.t(),
        "sessionId" => String.t(),
        "sessionPersistenceMode" => list(any()),
        "startedAt" => non_neg_integer(),
        "startedBy" => String.t(),
        "startedFromBackupId" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "stopAt" => non_neg_integer(),
        "stoppedAt" => non_neg_integer(),
        "stoppedBy" => String.t(),
        "streamingImageId" => String.t(),
        "tags" => map(),
        "terminateAt" => non_neg_integer(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "volumeConfiguration" => volume_configuration(),
        "volumeRetentionMode" => list(any())
      }

  """
  @type streaming_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_launch_profiles_response() :: %{
        "launchProfiles" => list(launch_profile()()),
        "nextToken" => String.t()
      }

  """
  @type list_launch_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_launch_profile_member_response() :: %{}

  """
  @type delete_launch_profile_member_response() :: %{}

  @typedoc """

  ## Example:

      list_studio_members_response() :: %{
        "members" => list(studio_membership()()),
        "nextToken" => String.t()
      }

  """
  @type list_studio_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streaming_images_response() :: %{
        "nextToken" => String.t(),
        "streamingImages" => list(streaming_image()())
      }

  """
  @type list_streaming_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_studio_response() :: %{
        "studio" => studio()
      }

  """
  @type get_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_streaming_session_request() :: %{
        optional("clientToken") => String.t(),
        optional("volumeRetentionMode") => list(any())
      }

  """
  @type stop_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_studio_component_request() :: %{}

  """
  @type get_studio_component_request() :: %{}

  @typedoc """

  ## Example:

      list_launch_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("principalId") => String.t(),
        optional("states") => list(list(any())())
      }

  """
  @type list_launch_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_configuration_session_storage() :: %{
        "mode" => list(list(any())()),
        "root" => streaming_session_storage_root()
      }

  """
  @type stream_configuration_session_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_eula_response() :: %{
        "eula" => eula()
      }

  """
  @type get_eula_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_launch_profile_members_response() :: %{
        "members" => list(launch_profile_membership()()),
        "nextToken" => String.t()
      }

  """
  @type list_launch_profile_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_session_response() :: %{
        "session" => streaming_session()
      }

  """
  @type get_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_initialization_request() :: %{
        required("launchProfileProtocolVersions") => list(String.t()()),
        required("launchPurpose") => String.t(),
        required("platform") => String.t()
      }

  """
  @type get_launch_profile_initialization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_streaming_session_request() :: %{
        optional("backupId") => String.t(),
        optional("clientToken") => String.t()
      }

  """
  @type start_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_session_request() :: %{
        optional("clientToken") => String.t(),
        optional("ec2InstanceType") => list(any()),
        optional("ownedBy") => String.t(),
        optional("streamingImageId") => String.t(),
        optional("tags") => map(),
        required("launchProfileId") => String.t()
      }

  """
  @type create_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streaming_session_backups_response() :: %{
        "nextToken" => String.t(),
        "streamingSessionBackups" => list(streaming_session_backup()())
      }

  """
  @type list_streaming_session_backups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }

  """
  @type update_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_launch_profile_member_request() :: %{
        optional("clientToken") => String.t(),
        required("persona") => list(any())
      }

  """
  @type update_launch_profile_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_eula_request() :: %{}

  """
  @type get_eula_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_studios_response() :: %{
        "nextToken" => String.t(),
        "studios" => list(studio()())
      }

  """
  @type list_studios_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_launch_profile_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_launch_profile_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      shared_file_system_configuration() :: %{
        "endpoint" => String.t(),
        "fileSystemId" => String.t(),
        "linuxMountPoint" => String.t(),
        "shareName" => String.t(),
        "windowsMountDrive" => String.t()
      }

  """
  @type shared_file_system_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_streaming_session_response() :: %{
        "session" => streaming_session()
      }

  """
  @type delete_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_studio_member() :: %{
        "persona" => list(any()),
        "principalId" => String.t()
      }

  """
  @type new_studio_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_result() :: %{
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "type" => list(any())
      }

  """
  @type validation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_session_stream() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "expiresAt" => non_neg_integer(),
        "ownedBy" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "streamId" => String.t(),
        "url" => String.t()
      }

  """
  @type streaming_session_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_configuration_session_backup() :: %{
        "maxBackupsToRetain" => integer(),
        "mode" => list(any())
      }

  """
  @type stream_configuration_session_backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }

  """
  @type update_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_session_response() :: %{
        "session" => streaming_session()
      }

  """
  @type create_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_details_response() :: %{
        "launchProfile" => launch_profile(),
        "streamingImages" => list(streaming_image()()),
        "studioComponentSummaries" => list(studio_component_summary()())
      }

  """
  @type get_launch_profile_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_session_stream_response() :: %{
        "stream" => streaming_session_stream()
      }

  """
  @type create_streaming_session_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_session_stream_request() :: %{}

  """
  @type get_streaming_session_stream_request() :: %{}

  @typedoc """

  ## Example:

      delete_studio_component_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_studio_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }

  """
  @type get_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_studio_member_request() :: %{}

  """
  @type get_studio_member_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      launch_profile_initialization_active_directory() :: %{
        "computerAttributes" => list(active_directory_computer_attribute()()),
        "directoryId" => String.t(),
        "directoryName" => String.t(),
        "dnsIpAddresses" => list(String.t()()),
        "organizationalUnitDistinguishedName" => String.t(),
        "studioComponentId" => String.t(),
        "studioComponentName" => String.t()
      }

  """
  @type launch_profile_initialization_active_directory() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_studio_s_s_o_configuration_repair_response() :: %{
        "studio" => studio()
      }

  """
  @type start_studio_s_s_o_configuration_repair_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_studio_member_response() :: %{
        "member" => studio_membership()
      }

  """
  @type get_studio_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_eula_acceptances_response() :: %{
        "eulaAcceptances" => list(eula_acceptance()()),
        "nextToken" => String.t()
      }

  """
  @type list_eula_acceptances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_launch_profile_response() :: %{
        "launchProfile" => launch_profile()
      }

  """
  @type delete_launch_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_studio_response() :: %{
        "studio" => studio()
      }

  """
  @type create_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }

  """
  @type delete_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_launch_profile_members_request() :: %{
        optional("clientToken") => String.t(),
        required("identityStoreId") => String.t(),
        required("members") => list(new_launch_profile_member()())
      }

  """
  @type put_launch_profile_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_session_backup() :: %{
        "arn" => String.t(),
        "backupId" => String.t(),
        "createdAt" => non_neg_integer(),
        "launchProfileId" => String.t(),
        "ownedBy" => String.t(),
        "sessionId" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "tags" => map()
      }

  """
  @type streaming_session_backup() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_streaming_session_response() :: %{
        "session" => streaming_session()
      }

  """
  @type start_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_studio_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_studio_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }

  """
  @type create_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eula() :: %{
        "content" => String.t(),
        "createdAt" => non_neg_integer(),
        "eulaId" => String.t(),
        "name" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type eula() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_studio_request() :: %{
        optional("clientToken") => String.t(),
        optional("studioEncryptionConfiguration") => studio_encryption_configuration(),
        optional("tags") => map(),
        required("adminRoleArn") => String.t(),
        required("displayName") => String.t(),
        required("studioName") => String.t(),
        required("userRoleArn") => String.t()
      }

  """
  @type create_studio_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_image_encryption_configuration() :: %{
        "keyArn" => String.t(),
        "keyType" => list(any())
      }

  """
  @type streaming_image_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_studio_components_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("states") => list(list(any())()),
        optional("types") => list(list(any())())
      }

  """
  @type list_studio_components_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streaming_session_backups_request() :: %{
        optional("nextToken") => String.t(),
        optional("ownedBy") => String.t()
      }

  """
  @type list_streaming_session_backups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_session_stream_request() :: %{
        optional("clientToken") => String.t(),
        optional("expirationInSeconds") => integer()
      }

  """
  @type create_streaming_session_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_launch_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("ec2SubnetIds") => list(String.t()()),
        required("launchProfileProtocolVersions") => list(String.t()()),
        required("name") => String.t(),
        required("streamConfiguration") => stream_configuration_create(),
        required("studioComponentIds") => list(String.t()())
      }

  """
  @type create_launch_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_session_request() :: %{}

  """
  @type get_streaming_session_request() :: %{}

  @typedoc """

  ## Example:

      update_launch_profile_member_response() :: %{
        "member" => launch_profile_membership()
      }

  """
  @type update_launch_profile_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_directory_computer_attribute() :: %{
        "name" => String.t(),
        "value" => String.t()
      }

  """
  @type active_directory_computer_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_studio_s_s_o_configuration_repair_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type start_studio_s_s_o_configuration_repair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      studio_encryption_configuration() :: %{
        "keyArn" => String.t(),
        "keyType" => list(any())
      }

  """
  @type studio_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_launch_profile_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("launchProfileProtocolVersions") => list(String.t()()),
        optional("name") => String.t(),
        optional("streamConfiguration") => stream_configuration_create(),
        optional("studioComponentIds") => list(String.t()())
      }

  """
  @type update_launch_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_studios_request() :: %{
        optional("nextToken") => String.t()
      }

  """
  @type list_studios_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_request() :: %{}

  """
  @type get_launch_profile_request() :: %{}

  @typedoc """

  ## Example:

      delete_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }

  """
  @type delete_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_launch_profile_members_response() :: %{}

  """
  @type put_launch_profile_members_response() :: %{}

  @typedoc """

  ## Example:

      stop_streaming_session_response() :: %{
        "session" => streaming_session()
      }

  """
  @type stop_streaming_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_streaming_sessions_request() :: %{
        optional("createdBy") => String.t(),
        optional("nextToken") => String.t(),
        optional("ownedBy") => String.t(),
        optional("sessionIds") => String.t()
      }

  """
  @type list_streaming_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      studio_membership() :: %{
        "identityStoreId" => String.t(),
        "persona" => list(any()),
        "principalId" => String.t(),
        "sid" => String.t()
      }

  """
  @type studio_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_session_backup_response() :: %{
        "streamingSessionBackup" => streaming_session_backup()
      }

  """
  @type get_streaming_session_backup_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_details_request() :: %{}

  """
  @type get_launch_profile_details_request() :: %{}

  @typedoc """

  ## Example:

      update_studio_request() :: %{
        optional("adminRoleArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("displayName") => String.t(),
        optional("userRoleArn") => String.t()
      }

  """
  @type update_studio_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_studio_components_response() :: %{
        "nextToken" => String.t(),
        "studioComponents" => list(studio_component()())
      }

  """
  @type list_studio_components_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_image() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "ec2ImageId" => String.t(),
        "encryptionConfiguration" => streaming_image_encryption_configuration(),
        "eulaIds" => list(String.t()()),
        "name" => String.t(),
        "owner" => String.t(),
        "platform" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "streamingImageId" => String.t(),
        "tags" => map()
      }

  """
  @type streaming_image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_streaming_session_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_streaming_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      launch_profile() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "ec2SubnetIds" => list(String.t()()),
        "launchProfileId" => String.t(),
        "launchProfileProtocolVersions" => list(String.t()()),
        "name" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "streamConfiguration" => stream_configuration(),
        "studioComponentIds" => list(String.t()()),
        "tags" => map(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t(),
        "validationResults" => list(validation_result()())
      }

  """
  @type launch_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_studio_member_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_studio_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_eulas_response() :: %{
        "eulaAcceptances" => list(eula_acceptance()())
      }

  """
  @type accept_eulas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "code" => String.t(),
        "context" => map(),
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_launch_profile_member() :: %{
        "persona" => list(any()),
        "principalId" => String.t()
      }

  """
  @type new_launch_profile_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }

  """
  @type get_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compute_farm_configuration() :: %{
        "activeDirectoryUser" => String.t(),
        "endpoint" => String.t()
      }

  """
  @type compute_farm_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streaming_images_request() :: %{
        optional("nextToken") => String.t(),
        optional("owner") => String.t()
      }

  """
  @type list_streaming_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_configuration_create() :: %{
        "automaticTerminationMode" => list(any()),
        "clipboardMode" => list(any()),
        "ec2InstanceTypes" => list(list(any())()),
        "maxSessionLengthInMinutes" => integer(),
        "maxStoppedSessionLengthInMinutes" => integer(),
        "sessionBackup" => stream_configuration_session_backup(),
        "sessionPersistenceMode" => list(any()),
        "sessionStorage" => stream_configuration_session_storage(),
        "streamingImageIds" => list(String.t()()),
        "volumeConfiguration" => volume_configuration()
      }

  """
  @type stream_configuration_create() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accept_eulas_request() :: %{
        optional("clientToken") => String.t(),
        optional("eulaIds") => list(String.t()())
      }

  """
  @type accept_eulas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_studio_component_response() :: %{
        "studioComponent" => studio_component()
      }

  """
  @type get_studio_component_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_studio_component_request() :: %{
        optional("clientToken") => String.t(),
        optional("configuration") => list(),
        optional("description") => String.t(),
        optional("ec2SecurityGroupIds") => list(String.t()()),
        optional("initializationScripts") => list(studio_component_initialization_script()()),
        optional("name") => String.t(),
        optional("runtimeRoleArn") => String.t(),
        optional("scriptParameters") => list(script_parameter_key_value()()),
        optional("secureInitializationRoleArn") => String.t(),
        optional("subtype") => list(any()),
        optional("type") => list(any())
      }

  """
  @type update_studio_component_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_streaming_image_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_streaming_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_directory_configuration() :: %{
        "computerAttributes" => list(active_directory_computer_attribute()()),
        "directoryId" => String.t(),
        "organizationalUnitDistinguishedName" => String.t()
      }

  """
  @type active_directory_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      volume_configuration() :: %{
        "iops" => integer(),
        "size" => integer(),
        "throughput" => integer()
      }

  """
  @type volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }

  """
  @type create_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_streaming_image_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("ec2ImageId") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_streaming_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_streaming_session_stream_response() :: %{
        "stream" => streaming_session_stream()
      }

  """
  @type get_streaming_session_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_studio_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_studio_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_studio_request() :: %{}

  """
  @type get_studio_request() :: %{}

  @typedoc """

  ## Example:

      update_studio_response() :: %{
        "studio" => studio()
      }

  """
  @type update_studio_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      script_parameter_key_value() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type script_parameter_key_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_studio_member_response() :: %{}

  """
  @type delete_studio_member_response() :: %{}

  @typedoc """

  ## Example:

      put_studio_members_response() :: %{}

  """
  @type put_studio_members_response() :: %{}

  @typedoc """

  ## Example:

      studio() :: %{
        "adminRoleArn" => String.t(),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t(),
        "homeRegion" => String.t(),
        "ssoClientId" => String.t(),
        "state" => list(any()),
        "statusCode" => list(any()),
        "statusMessage" => String.t(),
        "studioEncryptionConfiguration" => studio_encryption_configuration(),
        "studioId" => String.t(),
        "studioName" => String.t(),
        "studioUrl" => String.t(),
        "tags" => map(),
        "updatedAt" => non_neg_integer(),
        "userRoleArn" => String.t()
      }

  """
  @type studio() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_member_request() :: %{}

  """
  @type get_launch_profile_member_request() :: %{}

  @typedoc """

  ## Example:

      license_service_configuration() :: %{
        "endpoint" => String.t()
      }

  """
  @type license_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_eula_acceptances_request() :: %{
        optional("eulaIds") => list(String.t()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_eula_acceptances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_session_storage_root() :: %{
        "linux" => String.t(),
        "windows" => String.t()
      }

  """
  @type streaming_session_storage_root() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_streaming_image_response() :: %{
        "streamingImage" => streaming_image()
      }

  """
  @type update_streaming_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_member_response() :: %{
        "member" => launch_profile_membership()
      }

  """
  @type get_launch_profile_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      studio_component_summary() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "studioComponentId" => String.t(),
        "subtype" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => String.t()
      }

  """
  @type studio_component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_configuration() :: %{
        "automaticTerminationMode" => list(any()),
        "clipboardMode" => list(any()),
        "ec2InstanceTypes" => list(list(any())()),
        "maxSessionLengthInMinutes" => integer(),
        "maxStoppedSessionLengthInMinutes" => integer(),
        "sessionBackup" => stream_configuration_session_backup(),
        "sessionPersistenceMode" => list(any()),
        "sessionStorage" => stream_configuration_session_storage(),
        "streamingImageIds" => list(String.t()()),
        "volumeConfiguration" => volume_configuration()
      }

  """
  @type stream_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_launch_profile_initialization_response() :: %{
        "launchProfileInitialization" => launch_profile_initialization()
      }

  """
  @type get_launch_profile_initialization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_eulas_request() :: %{
        optional("eulaIds") => list(String.t()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_eulas_request() :: %{String.t() => any()}

  @type accept_eulas_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_streaming_session_stream_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_launch_profile_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_studio_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_eula_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_details_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_initialization_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_profile_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_session_backup_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_streaming_session_stream_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_studio_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_eula_acceptances_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_eulas_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_launch_profile_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_launch_profiles_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_streaming_images_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_streaming_session_backups_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_streaming_sessions_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_studio_components_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_studio_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_studios_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_launch_profile_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_studio_members_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_studio_s_s_o_configuration_repair_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_streaming_session_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_launch_profile_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_launch_profile_member_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_streaming_image_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_studio_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_studio_component_errors() ::
          throttling_exception()
          | internal_server_error_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "nimble",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "nimble",
      signature_version: "v4",
      signing_name: "nimble",
      target_prefix: nil
    }
  end

  @doc """
  Accept EULAs.
  """
  @spec accept_eulas(map(), String.t(), accept_eulas_request(), list()) ::
          {:ok, accept_eulas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_eulas_errors()}
  def accept_eulas(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/eula-acceptances"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Create a launch profile.
  """
  @spec create_launch_profile(map(), String.t(), create_launch_profile_request(), list()) ::
          {:ok, create_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_launch_profile_errors()}
  def create_launch_profile(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a streaming image resource in a studio.
  """
  @spec create_streaming_image(map(), String.t(), create_streaming_image_request(), list()) ::
          {:ok, create_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_streaming_image_errors()}
  def create_streaming_image(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a streaming session in a studio.

  After invoking this operation, you must poll GetStreamingSession until the
  streaming
  session is in the `READY` state.
  """
  @spec create_streaming_session(map(), String.t(), create_streaming_session_request(), list()) ::
          {:ok, create_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_streaming_session_errors()}
  def create_streaming_session(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a streaming session stream for a streaming session.

  After invoking this API, invoke GetStreamingSessionStream with the returned
  streamId
  to poll the resource until it is in the `READY` state.
  """
  @spec create_streaming_session_stream(
          map(),
          String.t(),
          String.t(),
          create_streaming_session_stream_request(),
          list()
        ) ::
          {:ok, create_streaming_session_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_streaming_session_stream_errors()}
  def create_streaming_session_stream(
        %Client{} = client,
        session_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/streams"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Create a new studio.

  When creating a studio, two IAM roles must be provided: the admin role
  and the user role. These roles are assumed by your users when they log in to the
  Nimble Studio portal.

  The user role must have the `AmazonNimbleStudio-StudioUser` managed policy
  attached for the portal to function properly.

  The admin role must have the `AmazonNimbleStudio-StudioAdmin` managed
  policy attached for the portal to function properly.

  You may optionally specify a KMS key in the
  `StudioEncryptionConfiguration`.

  In Nimble Studio, resource names, descriptions, initialization scripts, and
  other
  data you provide are always encrypted at rest using an KMS key. By default, this
  key is
  owned by Amazon Web Services and managed on your behalf. You may provide your
  own KMS key
  when calling `CreateStudio` to encrypt this data using a key you own and
  manage.

  When providing an KMS key during studio creation, Nimble Studio creates KMS
  grants in your account to provide your studio user and admin roles access to
  these KMS
  keys.

  If you delete this grant, the studio will no longer be accessible to your portal
  users.

  If you delete the studio KMS key, your studio will no longer be accessible.
  """
  @spec create_studio(map(), create_studio_request(), list()) ::
          {:ok, create_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_studio_errors()}
  def create_studio(%Client{} = client, input, options \\ []) do
    url_path = "/2020-08-01/studios"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a studio component resource.
  """
  @spec create_studio_component(map(), String.t(), create_studio_component_request(), list()) ::
          {:ok, create_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_studio_component_errors()}
  def create_studio_component(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Permanently delete a launch profile.
  """
  @spec delete_launch_profile(
          map(),
          String.t(),
          String.t(),
          delete_launch_profile_request(),
          list()
        ) ::
          {:ok, delete_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_launch_profile_errors()}
  def delete_launch_profile(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Delete a user from launch profile membership.
  """
  @spec delete_launch_profile_member(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_launch_profile_member_request(),
          list()
        ) ::
          {:ok, delete_launch_profile_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_launch_profile_member_errors()}
  def delete_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Delete streaming image.
  """
  @spec delete_streaming_image(
          map(),
          String.t(),
          String.t(),
          delete_streaming_image_request(),
          list()
        ) ::
          {:ok, delete_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_streaming_image_errors()}
  def delete_streaming_image(
        %Client{} = client,
        streaming_image_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deletes streaming session resource.

  After invoking this operation, use GetStreamingSession to poll the resource
  until it
  transitions to a `DELETED` state.

  A streaming session will count against your streaming session quota until it is
  marked
  `DELETED`.
  """
  @spec delete_streaming_session(
          map(),
          String.t(),
          String.t(),
          delete_streaming_session_request(),
          list()
        ) ::
          {:ok, delete_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_streaming_session_errors()}
  def delete_streaming_session(%Client{} = client, session_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Delete a studio resource.
  """
  @spec delete_studio(map(), String.t(), delete_studio_request(), list()) ::
          {:ok, delete_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_studio_errors()}
  def delete_studio(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deletes a studio component resource.
  """
  @spec delete_studio_component(
          map(),
          String.t(),
          String.t(),
          delete_studio_component_request(),
          list()
        ) ::
          {:ok, delete_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_studio_component_errors()}
  def delete_studio_component(
        %Client{} = client,
        studio_component_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Delete a user from studio membership.
  """
  @spec delete_studio_member(
          map(),
          String.t(),
          String.t(),
          delete_studio_member_request(),
          list()
        ) ::
          {:ok, delete_studio_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_studio_member_errors()}
  def delete_studio_member(%Client{} = client, principal_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Get EULA.
  """
  @spec get_eula(map(), String.t(), list()) ::
          {:ok, get_eula_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_eula_errors()}
  def get_eula(%Client{} = client, eula_id, options \\ []) do
    url_path = "/2020-08-01/eulas/#{AWS.Util.encode_uri(eula_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a launch profile.
  """
  @spec get_launch_profile(map(), String.t(), String.t(), list()) ::
          {:ok, get_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_errors()}
  def get_launch_profile(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Launch profile details include the launch profile resource and summary
  information of
  resources that are used by, or available to, the launch profile.

  This includes the name
  and description of all studio components used by the launch profiles, and the
  name and
  description of streaming images that can be used with this launch profile.
  """
  @spec get_launch_profile_details(map(), String.t(), String.t(), list()) ::
          {:ok, get_launch_profile_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_details_errors()}
  def get_launch_profile_details(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/details"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a launch profile initialization.
  """
  @spec get_launch_profile_initialization(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, get_launch_profile_initialization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_initialization_errors()}
  def get_launch_profile_initialization(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        launch_profile_protocol_versions,
        launch_purpose,
        platform,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/init"

    headers = []
    query_params = []

    query_params =
      if !is_nil(platform) do
        [{"platform", platform} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(launch_purpose) do
        [{"launchPurpose", launch_purpose} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(launch_profile_protocol_versions) do
        [{"launchProfileProtocolVersions", launch_profile_protocol_versions} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a user persona in launch profile membership.
  """
  @spec get_launch_profile_member(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_launch_profile_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_launch_profile_member_errors()}
  def get_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get streaming image.
  """
  @spec get_streaming_image(map(), String.t(), String.t(), list()) ::
          {:ok, get_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_image_errors()}
  def get_streaming_image(%Client{} = client, streaming_image_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets StreamingSession resource.

  Invoke this operation to poll for a streaming session state while creating or
  deleting
  a session.
  """
  @spec get_streaming_session(map(), String.t(), String.t(), list()) ::
          {:ok, get_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_session_errors()}
  def get_streaming_session(%Client{} = client, session_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets `StreamingSessionBackup` resource.

  Invoke this operation to poll for a streaming session backup while stopping a
  streaming session.
  """
  @spec get_streaming_session_backup(map(), String.t(), String.t(), list()) ::
          {:ok, get_streaming_session_backup_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_session_backup_errors()}
  def get_streaming_session_backup(%Client{} = client, backup_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-session-backups/#{AWS.Util.encode_uri(backup_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a StreamingSessionStream for a streaming session.

  Invoke this operation to poll the resource after invoking
  `CreateStreamingSessionStream`.

  After the `StreamingSessionStream` changes to the `READY` state,
  the url property will contain a stream to be used with the DCV streaming client.
  """
  @spec get_streaming_session_stream(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_streaming_session_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_streaming_session_stream_errors()}
  def get_streaming_session_stream(
        %Client{} = client,
        session_id,
        stream_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/streams/#{AWS.Util.encode_uri(stream_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a studio resource.
  """
  @spec get_studio(map(), String.t(), list()) ::
          {:ok, get_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_studio_errors()}
  def get_studio(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a studio component resource.
  """
  @spec get_studio_component(map(), String.t(), String.t(), list()) ::
          {:ok, get_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_studio_component_errors()}
  def get_studio_component(%Client{} = client, studio_component_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a user's membership in a studio.
  """
  @spec get_studio_member(map(), String.t(), String.t(), list()) ::
          {:ok, get_studio_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_studio_member_errors()}
  def get_studio_member(%Client{} = client, principal_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List EULA acceptances.
  """
  @spec list_eula_acceptances(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_eula_acceptances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_eula_acceptances_errors()}
  def list_eula_acceptances(
        %Client{} = client,
        studio_id,
        eula_ids \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/eula-acceptances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(eula_ids) do
        [{"eulaIds", eula_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List EULAs.
  """
  @spec list_eulas(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_eulas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_eulas_errors()}
  def list_eulas(%Client{} = client, eula_ids \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2020-08-01/eulas"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(eula_ids) do
        [{"eulaIds", eula_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get all users in a given launch profile membership.
  """
  @spec list_launch_profile_members(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_launch_profile_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_launch_profile_members_errors()}
  def list_launch_profile_members(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all the launch profiles a studio.
  """
  @spec list_launch_profiles(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_launch_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_launch_profiles_errors()}
  def list_launch_profiles(
        %Client{} = client,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        principal_id \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the streaming image resources available to this studio.

  This list will contain both images provided by Amazon Web Services, as well as
  streaming images that you have created in your studio.
  """
  @spec list_streaming_images(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_streaming_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streaming_images_errors()}
  def list_streaming_images(
        %Client{} = client,
        studio_id,
        next_token \\ nil,
        owner \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images"
    headers = []
    query_params = []

    query_params =
      if !is_nil(owner) do
        [{"owner", owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the backups of a streaming session in a studio.
  """
  @spec list_streaming_session_backups(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_streaming_session_backups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streaming_session_backups_errors()}
  def list_streaming_session_backups(
        %Client{} = client,
        studio_id,
        next_token \\ nil,
        owned_by \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-session-backups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(owned_by) do
        [{"ownedBy", owned_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the streaming sessions in a studio.
  """
  @spec list_streaming_sessions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_streaming_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streaming_sessions_errors()}
  def list_streaming_sessions(
        %Client{} = client,
        studio_id,
        created_by \\ nil,
        next_token \\ nil,
        owned_by \\ nil,
        session_ids \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(session_ids) do
        [{"sessionIds", session_ids} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owned_by) do
        [{"ownedBy", owned_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_by) do
        [{"createdBy", created_by} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the `StudioComponents` in a studio.
  """
  @spec list_studio_components(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_studio_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_studio_components_errors()}
  def list_studio_components(
        %Client{} = client,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        states \\ nil,
        types \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components"
    headers = []
    query_params = []

    query_params =
      if !is_nil(types) do
        [{"types", types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get all users in a given studio membership.

  `ListStudioMembers` only returns admin members.
  """
  @spec list_studio_members(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_studio_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_studio_members_errors()}
  def list_studio_members(
        %Client{} = client,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List studios in your Amazon Web Services accounts in the requested Amazon Web
  Services Region.
  """
  @spec list_studios(map(), String.t() | nil, list()) ::
          {:ok, list_studios_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_studios_errors()}
  def list_studios(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/2020-08-01/studios"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the tags for a resource, given its Amazon Resource Names (ARN).

  This operation supports ARNs for all resource types in Nimble Studio that
  support
  tags, including studio, studio component, launch profile, streaming image, and
  streaming
  session. All resources that can be tagged will contain an ARN property, so you
  do not
  have to create this ARN yourself.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Add/update users with given persona to launch profile membership.
  """
  @spec put_launch_profile_members(
          map(),
          String.t(),
          String.t(),
          put_launch_profile_members_request(),
          list()
        ) ::
          {:ok, put_launch_profile_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_launch_profile_members_errors()}
  def put_launch_profile_members(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Add/update users with given persona to studio membership.
  """
  @spec put_studio_members(map(), String.t(), put_studio_members_request(), list()) ::
          {:ok, put_studio_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_studio_members_errors()}
  def put_studio_members(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Transitions sessions from the `STOPPED` state into the `READY`
  state.

  The `START_IN_PROGRESS` state is the intermediate state between the
  `STOPPED` and `READY` states.
  """
  @spec start_streaming_session(
          map(),
          String.t(),
          String.t(),
          start_streaming_session_request(),
          list()
        ) ::
          {:ok, start_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_streaming_session_errors()}
  def start_streaming_session(%Client{} = client, session_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/start"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Repairs the IAM Identity Center configuration for a given studio.

  If the studio has a valid IAM Identity Center configuration currently associated
  with
  it, this operation will fail with a validation error.

  If the studio does not have a valid IAM Identity Center configuration currently
  associated with it, then a new IAM Identity Center application is created for
  the studio
  and the studio is changed to the `READY` state.

  After the IAM Identity Center application is repaired, you must use the Amazon
  Nimble Studio console to add administrators and users to your studio.
  """
  @spec start_studio_s_s_o_configuration_repair(
          map(),
          String.t(),
          start_studio_s_s_o_configuration_repair_request(),
          list()
        ) ::
          {:ok, start_studio_s_s_o_configuration_repair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_studio_s_s_o_configuration_repair_errors()}
  def start_studio_s_s_o_configuration_repair(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/sso-configuration"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Transitions sessions from the `READY` state into the `STOPPED`
  state.

  The `STOP_IN_PROGRESS` state is the intermediate state between the
  `READY` and `STOPPED` states.
  """
  @spec stop_streaming_session(
          map(),
          String.t(),
          String.t(),
          stop_streaming_session_request(),
          list()
        ) ::
          {:ok, stop_streaming_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_streaming_session_errors()}
  def stop_streaming_session(%Client{} = client, session_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/stop"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates tags for a resource, given its ARN.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deletes the tags for a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
  Update a launch profile.
  """
  @spec update_launch_profile(
          map(),
          String.t(),
          String.t(),
          update_launch_profile_request(),
          list()
        ) ::
          {:ok, update_launch_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_launch_profile_errors()}
  def update_launch_profile(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a user persona in launch profile membership.
  """
  @spec update_launch_profile_member(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_launch_profile_member_request(),
          list()
        ) ::
          {:ok, update_launch_profile_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_launch_profile_member_errors()}
  def update_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update streaming image.
  """
  @spec update_streaming_image(
          map(),
          String.t(),
          String.t(),
          update_streaming_image_request(),
          list()
        ) ::
          {:ok, update_streaming_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_streaming_image_errors()}
  def update_streaming_image(
        %Client{} = client,
        streaming_image_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a Studio resource.

  Currently, this operation only supports updating the displayName of your
  studio.
  """
  @spec update_studio(map(), String.t(), update_studio_request(), list()) ::
          {:ok, update_studio_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_studio_errors()}
  def update_studio(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a studio component resource.
  """
  @spec update_studio_component(
          map(),
          String.t(),
          String.t(),
          update_studio_component_request(),
          list()
        ) ::
          {:ok, update_studio_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_studio_component_errors()}
  def update_studio_component(
        %Client{} = client,
        studio_component_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
