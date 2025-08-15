# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpaces do
  @moduledoc """
  Amazon WorkSpaces Service

  Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
  Windows
  or Amazon Linux desktops for your users, known as *WorkSpaces*.

  WorkSpaces eliminates the need to procure and deploy hardware or install complex
  software. You can quickly add or remove users as your needs change. Users can
  access their
  virtual desktops from multiple devices or web browsers.

  This API Reference provides detailed information about the actions, data types,
  parameters, and errors of the WorkSpaces service. For more information about the
  supported Amazon Web Services Regions, endpoints, and service quotas of the
  Amazon WorkSpaces service, see [WorkSpaces endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/wsp.html) in the *Amazon
  Web Services
  General Reference*.

  You can also manage your WorkSpaces resources using the WorkSpaces
  console, Command Line Interface (CLI), and SDKs. For more information about
  administering WorkSpaces, see the [Amazon WorkSpaces Administration Guide](https://docs.aws.amazon.com/workspaces/latest/adminguide/).
  For more information about using the Amazon WorkSpaces client application or web
  browser to access provisioned WorkSpaces, see the [Amazon WorkSpaces User Guide](https://docs.aws.amazon.com/workspaces/latest/userguide/). For more
  information about using the CLI to manage your WorkSpaces resources,
  see the [WorkSpaces section of the CLI Reference](https://docs.aws.amazon.com/cli/latest/reference/workspaces/index.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_connect_client_add_in_result() :: %{
        "AddInId" => String.t() | atom()
      }
      
  """
  @type create_connect_client_add_in_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      association_state_reason() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type association_state_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_modifications_result() :: %{
        "AccountModifications" => list(account_modification()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_account_modifications_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_selfservice_permissions_result() :: %{}
      
  """
  @type modify_selfservice_permissions_result() :: %{}

  @typedoc """

  ## Example:
      
      update_workspace_bundle_result() :: %{}
      
  """
  @type update_workspace_bundle_result() :: %{}

  @typedoc """

  ## Example:
      
      start_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request())
      }
      
  """
  @type start_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_workspaces_request() :: %{
        required("StartWorkspaceRequests") => list(start_request())
      }
      
  """
  @type start_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type delete_account_link_invitation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_workspace_result() :: %{}
      
  """
  @type restore_workspace_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_image_associations_request() :: %{
        required("AssociatedResourceTypes") => list(list(any())()),
        required("ImageId") => String.t() | atom()
      }
      
  """
  @type describe_image_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_account_request() :: %{
        optional("DedicatedTenancyManagementCidrRange") => String.t() | atom(),
        optional("DedicatedTenancySupport") => list(any())
      }
      
  """
  @type modify_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_state_request() :: %{
        required("WorkspaceId") => String.t() | atom(),
        required("WorkspaceState") => list(any())
      }
      
  """
  @type modify_workspace_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_workspace_directory_result() :: %{
        "DirectoryId" => String.t() | atom(),
        "State" => list(any())
      }
      
  """
  @type register_workspace_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_tags_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type delete_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_request() :: %{
        optional("BundleId") => String.t() | atom(),
        optional("DirectoryId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("UserName") => String.t() | atom(),
        optional("WorkspaceIds") => list(String.t() | atom()),
        optional("WorkspaceName") => String.t() | atom()
      }
      
  """
  @type describe_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_request() :: %{}
      
  """
  @type describe_account_request() :: %{}

  @typedoc """

  ## Example:
      
      workspace_bundle() :: %{
        "BundleId" => String.t() | atom(),
        "BundleType" => list(any()),
        "ComputeType" => compute_type(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "RootStorage" => root_storage(),
        "State" => list(any()),
        "UserStorage" => user_storage()
      }
      
  """
  @type workspace_bundle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      standby_workspaces_properties() :: %{
        "DataReplication" => list(any()),
        "RecoverySnapshotTime" => non_neg_integer(),
        "StandbyWorkspaceId" => String.t() | atom()
      }
      
  """
  @type standby_workspaces_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modification_state() :: %{
        "Resource" => list(any()),
        "State" => list(any())
      }
      
  """
  @type modification_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_alias_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AliasId") => String.t() | atom()
      }
      
  """
  @type describe_connection_alias_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_directories_filter() :: %{
        "Name" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type describe_workspace_directories_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_image() :: %{
        "Created" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ErrorCode" => String.t() | atom(),
        "ErrorDetails" => list(error_details()),
        "ErrorMessage" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatingSystem" => operating_system(),
        "OwnerAccountId" => String.t() | atom(),
        "RequiredTenancy" => list(any()),
        "State" => list(any()),
        "Updates" => update_result()
      }
      
  """
  @type workspace_image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_associations_request() :: %{
        required("AssociatedResourceTypes") => list(list(any())()),
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type describe_workspace_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "ResourceId" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_access_properties_result() :: %{}
      
  """
  @type modify_workspace_access_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_ip_groups_result() :: %{}
      
  """
  @type disassociate_ip_groups_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_workspace_bundle_request() :: %{
        optional("BundleId") => String.t() | atom()
      }
      
  """
  @type delete_workspace_bundle_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connect_client_add_in_result() :: %{}
      
  """
  @type update_connect_client_add_in_result() :: %{}

  @typedoc """

  ## Example:
      
      modify_client_properties_request() :: %{
        required("ClientProperties") => client_properties(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type modify_client_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_result() :: %{
        "Description" => String.t() | atom(),
        "UpdateAvailable" => boolean()
      }
      
  """
  @type update_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_workspace_application_request() :: %{
        required("ApplicationId") => String.t() | atom(),
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type associate_workspace_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      saml_properties() :: %{
        "RelayStateParameterName" => String.t() | atom(),
        "Status" => list(any()),
        "UserAccessUrl" => String.t() | atom()
      }
      
  """
  @type saml_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rebuild_workspaces_request() :: %{
        required("RebuildWorkspaceRequests") => list(rebuild_request())
      }
      
  """
  @type rebuild_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_access_configuration() :: %{
        "EniId" => String.t() | atom(),
        "EniPrivateIpAddress" => String.t() | atom()
      }
      
  """
  @type network_access_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type accept_account_link_invitation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "ResourceId" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type resource_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_images_request() :: %{
        optional("ImageIds") => list(String.t() | atom()),
        optional("ImageType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_workspace_images_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_workspace_image_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("SourceImageId") => String.t() | atom(),
        required("SourceRegion") => String.t() | atom()
      }
      
  """
  @type copy_workspace_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_ip_rules_request() :: %{
        required("GroupId") => String.t() | atom(),
        required("UserRules") => list(String.t() | atom())
      }
      
  """
  @type revoke_ip_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_request() :: %{
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type reboot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_workspaces_request() :: %{
        required("RebootWorkspaceRequests") => list(reboot_request())
      }
      
  """
  @type reboot_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failed_create_standby_workspaces_request() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "StandbyWorkspaceRequest" => standby_workspace()
      }
      
  """
  @type failed_create_standby_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_aliases_result() :: %{
        "ConnectionAliases" => list(connection_alias()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_connection_aliases_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_endpoint_config() :: %{
        "AccessEndpoints" => list(access_endpoint()),
        "InternetFallbackProtocols" => list(list(any())())
      }
      
  """
  @type access_endpoint_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_image_permissions_result() :: %{
        "ImageId" => String.t() | atom(),
        "ImagePermissions" => list(image_permission()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_workspace_image_permissions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_client_branding_result() :: %{}
      
  """
  @type delete_client_branding_result() :: %{}

  @typedoc """

  ## Example:
      
      ios_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t() | atom(),
        "LoginMessage" => map(),
        "Logo2xUrl" => String.t() | atom(),
        "Logo3xUrl" => String.t() | atom(),
        "LogoUrl" => String.t() | atom(),
        "SupportEmail" => String.t() | atom(),
        "SupportLink" => String.t() | atom()
      }
      
  """
  @type ios_client_branding_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      image_resource_association() :: %{
        "AssociatedResourceId" => String.t() | atom(),
        "AssociatedResourceType" => list(any()),
        "Created" => non_neg_integer(),
        "ImageId" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason()
      }
      
  """
  @type image_resource_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operating_system() :: %{
        "Type" => list(any())
      }
      
  """
  @type operating_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_workspaces_pool_request() :: %{
        required("PoolId") => String.t() | atom()
      }
      
  """
  @type start_workspaces_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ApplicationId") => String.t() | atom(),
        required("AssociatedResourceTypes") => list(list(any())())
      }
      
  """
  @type describe_application_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workspace_bundle_request() :: %{
        optional("RootStorage") => root_storage(),
        optional("Tags") => list(tag()),
        required("BundleDescription") => String.t() | atom(),
        required("BundleName") => String.t() | atom(),
        required("ComputeType") => compute_type(),
        required("ImageId") => String.t() | atom(),
        required("UserStorage") => user_storage()
      }
      
  """
  @type create_workspace_bundle_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      related_workspace_properties() :: %{
        "Region" => String.t() | atom(),
        "State" => list(any()),
        "Type" => list(any()),
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type related_workspace_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_resource_association() :: %{
        "AssociatedResourceId" => String.t() | atom(),
        "AssociatedResourceType" => list(any()),
        "Created" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason(),
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type workspace_resource_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_connection_alias_request() :: %{
        required("AliasId") => String.t() | atom()
      }
      
  """
  @type disassociate_connection_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_creation_properties_result() :: %{}
      
  """
  @type modify_workspace_creation_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      access_endpoint() :: %{
        "AccessEndpointType" => list(any()),
        "VpcEndpointId" => String.t() | atom()
      }
      
  """
  @type access_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity() :: %{
        "DesiredUserSessions" => integer()
      }
      
  """
  @type capacity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_client_branding_result() :: %{
        "DeviceTypeAndroid" => default_client_branding_attributes(),
        "DeviceTypeIos" => ios_client_branding_attributes(),
        "DeviceTypeLinux" => default_client_branding_attributes(),
        "DeviceTypeOsx" => default_client_branding_attributes(),
        "DeviceTypeWeb" => default_client_branding_attributes(),
        "DeviceTypeWindows" => default_client_branding_attributes()
      }
      
  """
  @type describe_client_branding_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_image_request() :: %{
        required("ImageId") => String.t() | atom()
      }
      
  """
  @type delete_workspace_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_available_management_cidr_ranges_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ManagementCidrRangeConstraint") => String.t() | atom()
      }
      
  """
  @type list_available_management_cidr_ranges_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type create_account_link_invitation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_properties() :: %{
        "LogUploadEnabled" => list(any()),
        "ReconnectEnabled" => list(any())
      }
      
  """
  @type client_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_properties() :: %{
        "ComputeTypeName" => list(any()),
        "GlobalAccelerator" => global_accelerator_for_work_space(),
        "OperatingSystemName" => list(any()),
        "Protocols" => list(list(any())()),
        "RootVolumeSizeGib" => integer(),
        "RunningMode" => list(any()),
        "RunningModeAutoStopTimeoutInMinutes" => integer(),
        "UserVolumeSizeGib" => integer()
      }
      
  """
  @type workspace_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("TargetAccountId") => String.t() | atom()
      }
      
  """
  @type create_account_link_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_ip_groups_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("GroupIds") => list(String.t() | atom())
      }
      
  """
  @type associate_ip_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_modifications_request() :: %{
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_account_modifications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_result() :: %{}
      
  """
  @type terminate_workspaces_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      unsupported_network_configuration_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_network_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("LinkId") => String.t() | atom()
      }
      
  """
  @type delete_account_link_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rebuild_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request())
      }
      
  """
  @type rebuild_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workspace_bundle_result() :: %{
        "WorkspaceBundle" => workspace_bundle()
      }
      
  """
  @type create_workspace_bundle_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_links_request() :: %{
        optional("LinkStatusFilter") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_account_links_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workspaces_pool_result() :: %{
        "WorkspacesPool" => workspaces_pool()
      }
      
  """
  @type update_workspaces_pool_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failed_workspace_change_request() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type failed_workspace_change_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_available_management_cidr_ranges_result() :: %{
        "ManagementCidrRanges" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_available_management_cidr_ranges_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_certificate_based_auth_properties_result() :: %{}
      
  """
  @type modify_certificate_based_auth_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspaces_pool_sessions_result() :: %{
        "NextToken" => String.t() | atom(),
        "Sessions" => list(workspaces_pool_session())
      }
      
  """
  @type describe_workspaces_pool_sessions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_ip_groups_result() :: %{}
      
  """
  @type associate_ip_groups_result() :: %{}

  @typedoc """

  ## Example:
      
      create_tags_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type create_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request())
      }
      
  """
  @type terminate_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_request() :: %{
        required("Workspaces") => list(workspace_request())
      }
      
  """
  @type create_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_alias_permission() :: %{
        "AllowAssociation" => boolean(),
        "SharedAccountId" => String.t() | atom()
      }
      
  """
  @type connection_alias_permission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_streaming_properties_request() :: %{
        optional("StreamingProperties") => streaming_properties(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type modify_streaming_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_account_link_request() :: %{
        optional("LinkId") => String.t() | atom(),
        optional("LinkedAccountId") => String.t() | atom()
      }
      
  """
  @type get_account_link_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_standby_workspaces_request() :: %{
        required("PrimaryRegion") => String.t() | atom(),
        required("StandbyWorkspaces") => list(standby_workspace())
      }
      
  """
  @type create_standby_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pending_create_standby_workspaces_request() :: %{
        "DirectoryId" => String.t() | atom(),
        "State" => list(any()),
        "UserName" => String.t() | atom(),
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type pending_create_standby_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_modification() :: %{
        "DedicatedTenancyManagementCidrRange" => String.t() | atom(),
        "DedicatedTenancySupport" => list(any()),
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "ModificationState" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type account_modification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_based_auth_properties() :: %{
        "CertificateAuthorityArn" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type certificate_based_auth_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspaces_ip_group() :: %{
        "groupDesc" => String.t() | atom(),
        "groupId" => String.t() | atom(),
        "groupName" => String.t() | atom(),
        "userRules" => list(ip_rule_item())
      }
      
  """
  @type workspaces_ip_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "ResourceId" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("LinkId") => String.t() | atom()
      }
      
  """
  @type accept_account_link_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_workspace_application_result() :: %{
        "Association" => workspace_resource_association()
      }
      
  """
  @type disassociate_workspace_application_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      root_storage() :: %{
        "Capacity" => String.t() | atom()
      }
      
  """
  @type root_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      timeout_settings() :: %{
        "DisconnectTimeoutInSeconds" => integer(),
        "IdleDisconnectTimeoutInSeconds" => integer(),
        "MaxUserDurationInSeconds" => integer()
      }
      
  """
  @type timeout_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_ip_group_request() :: %{
        required("GroupId") => String.t() | atom()
      }
      
  """
  @type delete_ip_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspaces_pool_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type workspaces_pool_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      default_workspace_creation_properties() :: %{
        "CustomSecurityGroupId" => String.t() | atom(),
        "DefaultOu" => String.t() | atom(),
        "EnableInternetAccess" => boolean(),
        "EnableMaintenanceMode" => boolean(),
        "InstanceIamRoleArn" => String.t() | atom(),
        "UserEnabledAsLocalAdministrator" => boolean()
      }
      
  """
  @type default_workspace_creation_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bundle_resource_association() :: %{
        "AssociatedResourceId" => String.t() | atom(),
        "AssociatedResourceType" => list(any()),
        "BundleId" => String.t() | atom(),
        "Created" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason()
      }
      
  """
  @type bundle_resource_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connect_client_add_in() :: %{
        "AddInId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "URL" => String.t() | atom()
      }
      
  """
  @type connect_client_add_in() :: %{(String.t() | atom()) => any()}

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
      
      describe_bundle_associations_request() :: %{
        required("AssociatedResourceTypes") => list(list(any())()),
        required("BundleId") => String.t() | atom()
      }
      
  """
  @type describe_bundle_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_in_progress_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type operation_in_progress_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_workspace_image_result() :: %{
        "ImageId" => String.t() | atom()
      }
      
  """
  @type import_workspace_image_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_custom_workspace_image_result() :: %{
        "ImageId" => String.t() | atom(),
        "State" => list(any())
      }
      
  """
  @type import_custom_workspace_image_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_pool_result() :: %{
        "WorkspacesPool" => workspaces_pool()
      }
      
  """
  @type create_workspaces_pool_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_request() :: %{
        required("TerminateWorkspaceRequests") => list(terminate_request())
      }
      
  """
  @type terminate_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_workspace_image_import_error_details() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type custom_workspace_image_import_error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_rules_of_ip_group_request() :: %{
        required("GroupId") => String.t() | atom(),
        required("UserRules") => list(ip_rule_item())
      }
      
  """
  @type update_rules_of_ip_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deploy_workspace_applications_request() :: %{
        optional("Force") => boolean(),
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type deploy_workspace_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_account_result() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type modify_account_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_bundles_request() :: %{
        optional("BundleIds") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom(),
        optional("Owner") => String.t() | atom()
      }
      
  """
  @type describe_workspace_bundles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_request() :: %{
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type stop_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_accelerator_for_work_space() :: %{
        "Mode" => list(any()),
        "PreferredProtocol" => list(any())
      }
      
  """
  @type global_accelerator_for_work_space() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_aliases_request() :: %{
        optional("AliasIds") => list(String.t() | atom()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceId") => String.t() | atom()
      }
      
  """
  @type describe_connection_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workspace_bundle_request() :: %{
        optional("BundleId") => String.t() | atom(),
        optional("ImageId") => String.t() | atom()
      }
      
  """
  @type update_workspace_bundle_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_custom_workspace_image_import_request() :: %{
        required("ImageId") => String.t() | atom()
      }
      
  """
  @type describe_custom_workspace_image_import_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_link() :: %{
        "AccountLinkId" => String.t() | atom(),
        "AccountLinkStatus" => list(any()),
        "SourceAccountId" => String.t() | atom(),
        "TargetAccountId" => String.t() | atom()
      }
      
  """
  @type account_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workspace_image_permission_result() :: %{}
      
  """
  @type update_workspace_image_permission_result() :: %{}

  @typedoc """

  ## Example:
      
      authorize_ip_rules_request() :: %{
        required("GroupId") => String.t() | atom(),
        required("UserRules") => list(ip_rule_item())
      }
      
  """
  @type authorize_ip_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connection_alias_permissions_result() :: %{
        "AliasId" => String.t() | atom(),
        "ConnectionAliasPermissions" => list(connection_alias_permission()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_connection_alias_permissions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_setting() :: %{
        "Action" => list(any()),
        "MaximumLength" => integer(),
        "Permission" => list(any())
      }
      
  """
  @type user_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_account_link_invitation_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("LinkId") => String.t() | atom()
      }
      
  """
  @type reject_account_link_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deploy_workspace_applications_result() :: %{
        "Deployment" => work_space_application_deployment()
      }
      
  """
  @type deploy_workspace_applications_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_bundle_result() :: %{}
      
  """
  @type delete_workspace_bundle_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspace_associations_result() :: %{
        "Associations" => list(workspace_resource_association())
      }
      
  """
  @type describe_workspace_associations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      microsoft_entra_config() :: %{
        "ApplicationConfigSecretArn" => String.t() | atom(),
        "TenantId" => String.t() | atom()
      }
      
  """
  @type microsoft_entra_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_creation_properties_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("WorkspaceCreationProperties") => workspace_creation_properties()
      }
      
  """
  @type modify_workspace_creation_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      storage_connector() :: %{
        "ConnectorType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type storage_connector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      image_permission() :: %{
        "SharedAccountId" => String.t() | atom()
      }
      
  """
  @type image_permission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_creation_properties() :: %{
        "CustomSecurityGroupId" => String.t() | atom(),
        "DefaultOu" => String.t() | atom(),
        "EnableInternetAccess" => boolean(),
        "EnableMaintenanceMode" => boolean(),
        "InstanceIamRoleArn" => String.t() | atom(),
        "UserEnabledAsLocalAdministrator" => boolean()
      }
      
  """
  @type workspace_creation_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_details() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_applications_request() :: %{
        optional("ApplicationIds") => list(String.t() | atom()),
        optional("ComputeTypeNames") => list(list(any())()),
        optional("LicenseType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("OperatingSystemNames") => list(list(any())()),
        optional("Owner") => String.t() | atom()
      }
      
  """
  @type describe_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_account_link_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type get_account_link_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_workspaces_pool_result() :: %{}
      
  """
  @type start_workspaces_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_application_associations_result() :: %{
        "Associations" => list(application_resource_association()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_application_associations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_updated_workspace_image_request() :: %{
        optional("Tags") => list(tag()),
        required("Description") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("SourceImageId") => String.t() | atom()
      }
      
  """
  @type create_updated_workspace_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ios_import_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t() | atom(),
        "LoginMessage" => map(),
        "Logo" => binary(),
        "Logo2x" => binary(),
        "Logo3x" => binary(),
        "SupportEmail" => String.t() | atom(),
        "SupportLink" => String.t() | atom()
      }
      
  """
  @type ios_import_client_branding_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workspace_image_result() :: %{
        "Created" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatingSystem" => operating_system(),
        "OwnerAccountId" => String.t() | atom(),
        "RequiredTenancy" => list(any()),
        "State" => list(any())
      }
      
  """
  @type create_workspace_image_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_access_properties() :: %{
        "AccessEndpointConfig" => access_endpoint_config(),
        "DeviceTypeAndroid" => list(any()),
        "DeviceTypeChromeOs" => list(any()),
        "DeviceTypeIos" => list(any()),
        "DeviceTypeLinux" => list(any()),
        "DeviceTypeOsx" => list(any()),
        "DeviceTypeWeb" => list(any()),
        "DeviceTypeWindows" => list(any()),
        "DeviceTypeWorkSpacesThinClient" => list(any()),
        "DeviceTypeZeroClient" => list(any())
      }
      
  """
  @type workspace_access_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_links_result() :: %{
        "AccountLinks" => list(account_link()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_account_links_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_directories_request() :: %{
        optional("DirectoryIds") => list(String.t() | atom()),
        optional("Filters") => list(describe_workspace_directories_filter()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("WorkspaceDirectoryNames") => list(String.t() | atom())
      }
      
  """
  @type describe_workspace_directories_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_saml_properties_result() :: %{}
      
  """
  @type modify_saml_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_image_associations_result() :: %{
        "Associations" => list(image_resource_association())
      }
      
  """
  @type describe_image_associations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_connection_status_result() :: %{
        "NextToken" => String.t() | atom(),
        "WorkspacesConnectionStatus" => list(workspace_connection_status())
      }
      
  """
  @type describe_workspaces_connection_status_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      work_space_application() :: %{
        "ApplicationId" => String.t() | atom(),
        "Created" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LicenseType" => list(any()),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "State" => list(any()),
        "SupportedComputeTypeNames" => list(list(any())()),
        "SupportedOperatingSystemNames" => list(list(any())())
      }
      
  """
  @type work_space_application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_connect_client_add_in_result() :: %{}
      
  """
  @type delete_connect_client_add_in_result() :: %{}

  @typedoc """

  ## Example:
      
      default_import_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t() | atom(),
        "LoginMessage" => map(),
        "Logo" => binary(),
        "SupportEmail" => String.t() | atom(),
        "SupportLink" => String.t() | atom()
      }
      
  """
  @type default_import_client_branding_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_endpoint_encryption_mode_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("EndpointEncryptionMode") => list(any())
      }
      
  """
  @type modify_endpoint_encryption_mode_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connection_alias_result() :: %{
        "AliasId" => String.t() | atom()
      }
      
  """
  @type create_connection_alias_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_saml_properties_request() :: %{
        optional("PropertiesToDelete") => list(list(any())()),
        optional("SamlProperties") => saml_properties(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type modify_saml_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_rule_item() :: %{
        "ipRule" => String.t() | atom(),
        "ruleDesc" => String.t() | atom()
      }
      
  """
  @type ip_rule_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_images_result() :: %{
        "Images" => list(workspace_image()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_workspace_images_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_workspace_request() :: %{
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type restore_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_state_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_resource_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_creation_failed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_creation_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_updated_workspace_image_result() :: %{
        "ImageId" => String.t() | atom()
      }
      
  """
  @type create_updated_workspace_image_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connect_client_add_in_request() :: %{
        required("Name") => String.t() | atom(),
        required("ResourceId") => String.t() | atom(),
        required("URL") => String.t() | atom()
      }
      
  """
  @type create_connect_client_add_in_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_properties_result() :: %{}
      
  """
  @type modify_workspace_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      application_resource_association() :: %{
        "ApplicationId" => String.t() | atom(),
        "AssociatedResourceId" => String.t() | atom(),
        "AssociatedResourceType" => list(any()),
        "Created" => non_neg_integer(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => association_state_reason()
      }
      
  """
  @type application_resource_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_custom_workspace_image_request() :: %{
        optional("Tags") => list(tag()),
        required("ComputeType") => list(any()),
        required("ImageDescription") => String.t() | atom(),
        required("ImageName") => String.t() | atom(),
        required("ImageSource") => list(),
        required("InfrastructureConfigurationArn") => String.t() | atom(),
        required("OsVersion") => list(any()),
        required("Platform") => list(any()),
        required("Protocol") => list(any())
      }
      
  """
  @type import_custom_workspace_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_pool_sessions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("UserId") => String.t() | atom(),
        required("PoolId") => String.t() | atom()
      }
      
  """
  @type describe_workspaces_pool_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_client_branding_request() :: %{
        required("Platforms") => list(list(any())()),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type delete_client_branding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_streaming_properties_result() :: %{}
      
  """
  @type modify_streaming_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      data_replication_settings() :: %{
        "DataReplication" => list(any()),
        "RecoverySnapshotTime" => non_neg_integer()
      }
      
  """
  @type data_replication_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_result() :: %{
        "NextToken" => String.t() | atom(),
        "Workspaces" => list(workspace())
      }
      
  """
  @type describe_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_result() :: %{
        "FailedRequests" => list(failed_create_workspace_request()),
        "PendingRequests" => list(workspace())
      }
      
  """
  @type create_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_values_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_values_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      default_client_branding_attributes() :: %{
        "ForgotPasswordLink" => String.t() | atom(),
        "LoginMessage" => map(),
        "LogoUrl" => String.t() | atom(),
        "SupportEmail" => String.t() | atom(),
        "SupportLink" => String.t() | atom()
      }
      
  """
  @type default_client_branding_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      active_directory_config() :: %{
        "DomainName" => String.t() | atom(),
        "ServiceAccountSecretArn" => String.t() | atom()
      }
      
  """
  @type active_directory_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_workspace_application_request() :: %{
        required("ApplicationId") => String.t() | atom(),
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type disassociate_workspace_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_properties_request() :: %{
        optional("DataReplication") => list(any()),
        optional("WorkspaceProperties") => workspace_properties(),
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type modify_workspace_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_tags_result() :: %{}
      
  """
  @type create_tags_result() :: %{}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace() :: %{
        "BundleId" => String.t() | atom(),
        "ComputerName" => String.t() | atom(),
        "DataReplicationSettings" => data_replication_settings(),
        "DirectoryId" => String.t() | atom(),
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "ModificationStates" => list(modification_state()),
        "RelatedWorkspaces" => list(related_workspace_properties()),
        "RootVolumeEncryptionEnabled" => boolean(),
        "StandbyWorkspacesProperties" => list(standby_workspaces_properties()),
        "State" => list(any()),
        "SubnetId" => String.t() | atom(),
        "UserName" => String.t() | atom(),
        "UserVolumeEncryptionEnabled" => boolean(),
        "VolumeEncryptionKey" => String.t() | atom(),
        "WorkspaceId" => String.t() | atom(),
        "WorkspaceName" => String.t() | atom(),
        "WorkspaceProperties" => workspace_properties()
      }
      
  """
  @type workspace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      selfservice_permissions() :: %{
        "ChangeComputeType" => list(any()),
        "IncreaseVolumeSize" => list(any()),
        "RebuildWorkspace" => list(any()),
        "RestartWorkspace" => list(any()),
        "SwitchRunningMode" => list(any())
      }
      
  """
  @type selfservice_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspaces_default_role_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type workspaces_default_role_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_client_properties_result() :: %{
        "ClientPropertiesList" => list(client_properties_result())
      }
      
  """
  @type describe_client_properties_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_request() :: %{
        required("PoolId") => String.t() | atom()
      }
      
  """
  @type terminate_workspaces_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_alias_permission_request() :: %{
        required("AliasId") => String.t() | atom(),
        required("ConnectionAliasPermission") => connection_alias_permission()
      }
      
  """
  @type update_connection_alias_permission_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_snapshots_result() :: %{
        "RebuildSnapshots" => list(snapshot()),
        "RestoreSnapshots" => list(snapshot())
      }
      
  """
  @type describe_workspace_snapshots_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ip_groups_result() :: %{
        "NextToken" => String.t() | atom(),
        "Result" => list(workspaces_ip_group())
      }
      
  """
  @type describe_ip_groups_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_workspace_image_request() :: %{
        optional("Applications") => list(list(any())()),
        optional("Tags") => list(tag()),
        required("Ec2ImageId") => String.t() | atom(),
        required("ImageDescription") => String.t() | atom(),
        required("ImageName") => String.t() | atom(),
        required("IngestionProcess") => list(any())
      }
      
  """
  @type import_workspace_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connection_alias_request() :: %{
        optional("Tags") => list(tag()),
        required("ConnectionString") => String.t() | atom()
      }
      
  """
  @type create_connection_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_ip_rules_result() :: %{}
      
  """
  @type revoke_ip_rules_result() :: %{}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "SnapshotTime" => non_neg_integer()
      }
      
  """
  @type snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_pools_filter() :: %{
        "Name" => list(any()),
        "Operator" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type describe_workspaces_pools_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_client_branding_result() :: %{
        "DeviceTypeAndroid" => default_client_branding_attributes(),
        "DeviceTypeIos" => ios_client_branding_attributes(),
        "DeviceTypeLinux" => default_client_branding_attributes(),
        "DeviceTypeOsx" => default_client_branding_attributes(),
        "DeviceTypeWeb" => default_client_branding_attributes(),
        "DeviceTypeWindows" => default_client_branding_attributes()
      }
      
  """
  @type import_client_branding_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_ip_group_request() :: %{
        optional("GroupDesc") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("UserRules") => list(ip_rule_item()),
        required("GroupName") => String.t() | atom()
      }
      
  """
  @type create_ip_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_connection_status() :: %{
        "ConnectionState" => list(any()),
        "ConnectionStateCheckTimestamp" => non_neg_integer(),
        "LastKnownUserConnectionTimestamp" => non_neg_integer(),
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type workspace_connection_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_tags_result() :: %{}
      
  """
  @type delete_tags_result() :: %{}

  @typedoc """

  ## Example:
      
      register_workspace_directory_request() :: %{
        optional("ActiveDirectoryConfig") => active_directory_config(),
        optional("DirectoryId") => String.t() | atom(),
        optional("EnableSelfService") => boolean(),
        optional("IdcInstanceArn") => String.t() | atom(),
        optional("MicrosoftEntraConfig") => microsoft_entra_config(),
        optional("SubnetIds") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        optional("Tenancy") => list(any()),
        optional("UserIdentityType") => list(any()),
        optional("WorkspaceDirectoryDescription") => String.t() | atom(),
        optional("WorkspaceDirectoryName") => String.t() | atom(),
        optional("WorkspaceType") => list(any())
      }
      
  """
  @type register_workspace_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_type() :: %{
        "Name" => list(any())
      }
      
  """
  @type compute_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workspace_image_permission_request() :: %{
        required("AllowCopyImage") => boolean(),
        required("ImageId") => String.t() | atom(),
        required("SharedAccountId") => String.t() | atom()
      }
      
  """
  @type update_workspace_image_permission_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_connection_alias_result() :: %{}
      
  """
  @type delete_connection_alias_result() :: %{}

  @typedoc """

  ## Example:
      
      create_workspace_image_request() :: %{
        optional("Tags") => list(tag()),
        required("Description") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type create_workspace_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_endpoint_encryption_mode_response() :: %{}
      
  """
  @type modify_endpoint_encryption_mode_response() :: %{}

  @typedoc """

  ## Example:
      
      application_settings_request() :: %{
        "SettingsGroup" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type application_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      copy_workspace_image_result() :: %{
        "ImageId" => String.t() | atom()
      }
      
  """
  @type copy_workspace_image_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_access_properties_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("WorkspaceAccessProperties") => workspace_access_properties()
      }
      
  """
  @type modify_workspace_access_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_storage() :: %{
        "Capacity" => String.t() | atom()
      }
      
  """
  @type user_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      migrate_workspace_request() :: %{
        required("BundleId") => String.t() | atom(),
        required("SourceWorkspaceId") => String.t() | atom()
      }
      
  """
  @type migrate_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capacity_status() :: %{
        "ActiveUserSessions" => integer(),
        "ActualUserSessions" => integer(),
        "AvailableUserSessions" => integer(),
        "DesiredUserSessions" => integer()
      }
      
  """
  @type capacity_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_workspace_application_result() :: %{
        "Association" => workspace_resource_association()
      }
      
  """
  @type associate_workspace_application_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_workspace_directory_result() :: %{}
      
  """
  @type deregister_workspace_directory_result() :: %{}

  @typedoc """

  ## Example:
      
      resource_associated_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_associated_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workspaces_pool_request() :: %{
        optional("ApplicationSettings") => application_settings_request(),
        optional("BundleId") => String.t() | atom(),
        optional("Capacity") => capacity(),
        optional("Description") => String.t() | atom(),
        optional("DirectoryId") => String.t() | atom(),
        optional("RunningMode") => list(any()),
        optional("TimeoutSettings") => timeout_settings(),
        required("PoolId") => String.t() | atom()
      }
      
  """
  @type update_workspaces_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_session_result() :: %{}
      
  """
  @type terminate_workspaces_pool_session_result() :: %{}

  @typedoc """

  ## Example:
      
      workspace_directory() :: %{
        "ActiveDirectoryConfig" => active_directory_config(),
        "Alias" => String.t() | atom(),
        "CertificateBasedAuthProperties" => certificate_based_auth_properties(),
        "CustomerUserName" => String.t() | atom(),
        "DirectoryId" => String.t() | atom(),
        "DirectoryName" => String.t() | atom(),
        "DirectoryType" => list(any()),
        "DnsIpAddresses" => list(String.t() | atom()),
        "EndpointEncryptionMode" => list(any()),
        "ErrorMessage" => String.t() | atom(),
        "IDCConfig" => id_c_config(),
        "IamRoleId" => String.t() | atom(),
        "MicrosoftEntraConfig" => microsoft_entra_config(),
        "RegistrationCode" => String.t() | atom(),
        "SamlProperties" => saml_properties(),
        "SelfservicePermissions" => selfservice_permissions(),
        "State" => list(any()),
        "StreamingProperties" => streaming_properties(),
        "SubnetIds" => list(String.t() | atom()),
        "Tenancy" => list(any()),
        "UserIdentityType" => list(any()),
        "WorkspaceAccessProperties" => workspace_access_properties(),
        "WorkspaceCreationProperties" => default_workspace_creation_properties(),
        "WorkspaceDirectoryDescription" => String.t() | atom(),
        "WorkspaceDirectoryName" => String.t() | atom(),
        "WorkspaceSecurityGroupId" => String.t() | atom(),
        "WorkspaceType" => list(any()),
        "ipGroupIds" => list(String.t() | atom())
      }
      
  """
  @type workspace_directory() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      id_c_config() :: %{
        "ApplicationArn" => String.t() | atom(),
        "InstanceArn" => String.t() | atom()
      }
      
  """
  @type id_c_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request())
      }
      
  """
  @type stop_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_client_properties_result() :: %{}
      
  """
  @type modify_client_properties_result() :: %{}

  @typedoc """

  ## Example:
      
      standby_workspace() :: %{
        "DataReplication" => list(any()),
        "DirectoryId" => String.t() | atom(),
        "PrimaryWorkspaceId" => String.t() | atom(),
        "Tags" => list(tag()),
        "VolumeEncryptionKey" => String.t() | atom()
      }
      
  """
  @type standby_workspace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_standby_workspaces_result() :: %{
        "FailedStandbyRequests" => list(failed_create_standby_workspaces_request()),
        "PendingStandbyRequests" => list(pending_create_standby_workspaces_request())
      }
      
  """
  @type create_standby_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_result() :: %{
        "DedicatedTenancyAccountType" => list(any()),
        "DedicatedTenancyManagementCidrRange" => String.t() | atom(),
        "DedicatedTenancySupport" => list(any()),
        "Message" => String.t() | atom()
      }
      
  """
  @type describe_account_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_connection_alias_result() :: %{
        "ConnectionIdentifier" => String.t() | atom()
      }
      
  """
  @type associate_connection_alias_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_workspace_image_result() :: %{}
      
  """
  @type delete_workspace_image_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_ip_group_result() :: %{}
      
  """
  @type delete_ip_group_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_connect_client_add_in_request() :: %{
        required("AddInId") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type delete_connect_client_add_in_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_certificate_based_auth_properties_request() :: %{
        optional("CertificateBasedAuthProperties") => certificate_based_auth_properties(),
        optional("PropertiesToDelete") => list(list(any())()),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type modify_certificate_based_auth_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_bundle_associations_result() :: %{
        "Associations" => list(bundle_resource_association())
      }
      
  """
  @type describe_bundle_associations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connect_client_add_in_request() :: %{
        optional("Name") => String.t() | atom(),
        optional("URL") => String.t() | atom(),
        required("AddInId") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type update_connect_client_add_in_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspaces_pool() :: %{
        "ApplicationSettings" => application_settings_response(),
        "BundleId" => String.t() | atom(),
        "CapacityStatus" => capacity_status(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DirectoryId" => String.t() | atom(),
        "Errors" => list(workspaces_pool_error()),
        "PoolArn" => String.t() | atom(),
        "PoolId" => String.t() | atom(),
        "PoolName" => String.t() | atom(),
        "RunningMode" => list(any()),
        "State" => list(any()),
        "TimeoutSettings" => timeout_settings()
      }
      
  """
  @type workspaces_pool() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      streaming_properties() :: %{
        "GlobalAccelerator" => global_accelerator_for_directory(),
        "StorageConnectors" => list(storage_connector()),
        "StreamingExperiencePreferredProtocol" => list(any()),
        "UserSettings" => list(user_setting())
      }
      
  """
  @type streaming_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      incompatible_applications_exception() :: %{}
      
  """
  @type incompatible_applications_exception() :: %{}

  @typedoc """

  ## Example:
      
      describe_custom_workspace_image_import_result() :: %{
        "Created" => non_neg_integer(),
        "ErrorDetails" => list(custom_workspace_image_import_error_details()),
        "ImageBuilderInstanceId" => String.t() | atom(),
        "ImageId" => String.t() | atom(),
        "ImageSource" => list(),
        "InfrastructureConfigurationArn" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "State" => list(any())
      }
      
  """
  @type describe_custom_workspace_image_import_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_request() :: %{
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type terminate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workspaces_pool_request() :: %{
        optional("ApplicationSettings") => application_settings_request(),
        optional("RunningMode") => list(any()),
        optional("Tags") => list(tag()),
        optional("TimeoutSettings") => timeout_settings(),
        required("BundleId") => String.t() | atom(),
        required("Capacity") => capacity(),
        required("Description") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom(),
        required("PoolName") => String.t() | atom()
      }
      
  """
  @type create_workspaces_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute_not_compatible_exception() :: %{}
      
  """
  @type compute_not_compatible_exception() :: %{}

  @typedoc """

  ## Example:
      
      rebuild_request() :: %{
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type rebuild_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_client_properties_request() :: %{
        required("ResourceIds") => list(String.t() | atom())
      }
      
  """
  @type describe_client_properties_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_workspace_directory_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type deregister_workspace_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operating_system_not_compatible_exception() :: %{}
      
  """
  @type operating_system_not_compatible_exception() :: %{}

  @typedoc """

  ## Example:
      
      update_rules_of_ip_group_result() :: %{}
      
  """
  @type update_rules_of_ip_group_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_tags_result() :: %{
        "TagList" => list(tag())
      }
      
  """
  @type describe_tags_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_selfservice_permissions_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("SelfservicePermissions") => selfservice_permissions()
      }
      
  """
  @type modify_selfservice_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_workspace_state_result() :: %{}
      
  """
  @type modify_workspace_state_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspace_bundles_result() :: %{
        "Bundles" => list(workspace_bundle()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_workspace_bundles_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_request() :: %{
        "WorkspaceId" => String.t() | atom()
      }
      
  """
  @type start_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ip_groups_request() :: %{
        optional("GroupIds") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_ip_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_alias_permission_result() :: %{}
      
  """
  @type update_connection_alias_permission_result() :: %{}

  @typedoc """

  ## Example:
      
      work_space_application_deployment() :: %{
        "Associations" => list(workspace_resource_association())
      }
      
  """
  @type work_space_application_deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_workspace_configuration_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_workspace_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_not_supported_exception() :: %{}
      
  """
  @type application_not_supported_exception() :: %{}

  @typedoc """

  ## Example:
      
      stop_workspaces_pool_result() :: %{}
      
  """
  @type stop_workspaces_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_tags_request() :: %{
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type describe_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspaces_pool_session() :: %{
        "AuthenticationType" => list(any()),
        "ConnectionState" => list(any()),
        "ExpirationTime" => non_neg_integer(),
        "InstanceId" => String.t() | atom(),
        "NetworkAccessConfiguration" => network_access_configuration(),
        "PoolId" => String.t() | atom(),
        "SessionId" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "UserId" => String.t() | atom()
      }
      
  """
  @type workspaces_pool_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reboot_workspaces_result() :: %{
        "FailedRequests" => list(failed_workspace_change_request())
      }
      
  """
  @type reboot_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_not_supported_exception() :: %{
        "message" => String.t() | atom(),
        "reason" => String.t() | atom()
      }
      
  """
  @type operation_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_ip_groups_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("GroupIds") => list(String.t() | atom())
      }
      
  """
  @type disassociate_ip_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_alias_association() :: %{
        "AssociatedAccountId" => String.t() | atom(),
        "AssociationStatus" => list(any()),
        "ConnectionIdentifier" => String.t() | atom(),
        "ResourceId" => String.t() | atom()
      }
      
  """
  @type connection_alias_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_image_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ImageId") => String.t() | atom()
      }
      
  """
  @type describe_workspace_image_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_accelerator_for_directory() :: %{
        "Mode" => list(any()),
        "PreferredProtocol" => list(any())
      }
      
  """
  @type global_accelerator_for_directory() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failed_create_workspace_request() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "WorkspaceRequest" => workspace_request()
      }
      
  """
  @type failed_create_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authorize_ip_rules_result() :: %{}
      
  """
  @type authorize_ip_rules_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_workspaces_pools_result() :: %{
        "NextToken" => String.t() | atom(),
        "WorkspacesPools" => list(workspaces_pool())
      }
      
  """
  @type describe_workspaces_pools_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_alias() :: %{
        "AliasId" => String.t() | atom(),
        "Associations" => list(connection_alias_association()),
        "ConnectionString" => String.t() | atom(),
        "OwnerAccountId" => String.t() | atom(),
        "State" => list(any())
      }
      
  """
  @type connection_alias() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_workspaces_pool_request() :: %{
        required("PoolId") => String.t() | atom()
      }
      
  """
  @type stop_workspaces_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workspace_request() :: %{
        "BundleId" => String.t() | atom(),
        "DirectoryId" => String.t() | atom(),
        "RootVolumeEncryptionEnabled" => boolean(),
        "Tags" => list(tag()),
        "UserName" => String.t() | atom(),
        "UserVolumeEncryptionEnabled" => boolean(),
        "VolumeEncryptionKey" => String.t() | atom(),
        "WorkspaceName" => String.t() | atom(),
        "WorkspaceProperties" => workspace_properties()
      }
      
  """
  @type workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_connection_status_request() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("WorkspaceIds") => list(String.t() | atom())
      }
      
  """
  @type describe_workspaces_connection_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_connection_alias_request() :: %{
        required("AliasId") => String.t() | atom()
      }
      
  """
  @type delete_connection_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_workspaces_pool_session_request() :: %{
        required("SessionId") => String.t() | atom()
      }
      
  """
  @type terminate_workspaces_pool_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connect_client_add_ins_result() :: %{
        "AddIns" => list(connect_client_add_in()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_connect_client_add_ins_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_settings_response() :: %{
        "S3BucketName" => String.t() | atom(),
        "SettingsGroup" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type application_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_directories_result() :: %{
        "Directories" => list(workspace_directory()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_workspace_directories_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_client_branding_request() :: %{
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type describe_client_branding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_properties_result() :: %{
        "ClientProperties" => client_properties(),
        "ResourceId" => String.t() | atom()
      }
      
  """
  @type client_properties_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_account_link_invitation_result() :: %{
        "AccountLink" => account_link()
      }
      
  """
  @type reject_account_link_invitation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_applications_result() :: %{
        "Applications" => list(work_space_application()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_applications_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspace_snapshots_request() :: %{
        required("WorkspaceId") => String.t() | atom()
      }
      
  """
  @type describe_workspace_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_connection_alias_result() :: %{}
      
  """
  @type disassociate_connection_alias_result() :: %{}

  @typedoc """

  ## Example:
      
      stop_workspaces_request() :: %{
        required("StopWorkspaceRequests") => list(stop_request())
      }
      
  """
  @type stop_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_connect_client_add_ins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type describe_connect_client_add_ins_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_workspaces_pools_request() :: %{
        optional("Filters") => list(describe_workspaces_pools_filter()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PoolIds") => list(String.t() | atom())
      }
      
  """
  @type describe_workspaces_pools_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_client_branding_request() :: %{
        optional("DeviceTypeAndroid") => default_import_client_branding_attributes(),
        optional("DeviceTypeIos") => ios_import_client_branding_attributes(),
        optional("DeviceTypeLinux") => default_import_client_branding_attributes(),
        optional("DeviceTypeOsx") => default_import_client_branding_attributes(),
        optional("DeviceTypeWeb") => default_import_client_branding_attributes(),
        optional("DeviceTypeWindows") => default_import_client_branding_attributes(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type import_client_branding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_connection_alias_request() :: %{
        required("AliasId") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type associate_connection_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_ip_group_result() :: %{
        "GroupId" => String.t() | atom()
      }
      
  """
  @type create_ip_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      migrate_workspace_result() :: %{
        "SourceWorkspaceId" => String.t() | atom(),
        "TargetWorkspaceId" => String.t() | atom()
      }
      
  """
  @type migrate_workspace_result() :: %{(String.t() | atom()) => any()}

  @type accept_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_connection_alias_errors() ::
          operation_not_supported_exception()
          | resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type associate_ip_groups_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type associate_workspace_application_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | application_not_supported_exception()
          | operating_system_not_compatible_exception()
          | compute_not_compatible_exception()
          | incompatible_applications_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type authorize_ip_rules_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type copy_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type create_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_connect_client_add_in_errors() ::
          resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_creation_failed_exception()
          | resource_not_found_exception()

  @type create_connection_alias_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()

  @type create_ip_group_errors() ::
          resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_creation_failed_exception()
          | resource_limit_exceeded_exception()

  @type create_standby_workspaces_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_tags_errors() ::
          invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_updated_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_workspace_bundle_errors() ::
          resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type create_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type create_workspaces_errors() ::
          invalid_parameter_values_exception() | resource_limit_exceeded_exception()

  @type create_workspaces_pool_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type delete_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_client_branding_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_connect_client_add_in_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_connection_alias_errors() ::
          operation_not_supported_exception()
          | resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type delete_ip_group_errors() ::
          resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_tags_errors() ::
          invalid_parameter_values_exception() | resource_not_found_exception()

  @type delete_workspace_bundle_errors() ::
          resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type delete_workspace_image_errors() ::
          resource_associated_exception()
          | access_denied_exception()
          | invalid_resource_state_exception()

  @type deploy_workspace_applications_errors() ::
          operation_not_supported_exception()
          | incompatible_applications_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type deregister_workspace_directory_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type describe_account_errors() :: access_denied_exception()

  @type describe_account_modifications_errors() :: access_denied_exception()

  @type describe_application_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_applications_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_bundle_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_client_branding_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_client_properties_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_connect_client_add_ins_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_connection_alias_permissions_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_connection_aliases_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()

  @type describe_custom_workspace_image_import_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type describe_image_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_ip_groups_errors() ::
          access_denied_exception() | invalid_parameter_values_exception()

  @type describe_tags_errors() :: resource_not_found_exception()

  @type describe_workspace_associations_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspace_bundles_errors() :: invalid_parameter_values_exception()

  @type describe_workspace_directories_errors() :: invalid_parameter_values_exception()

  @type describe_workspace_image_permissions_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspace_images_errors() :: access_denied_exception()

  @type describe_workspace_snapshots_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspaces_errors() ::
          invalid_parameter_values_exception() | resource_unavailable_exception()

  @type describe_workspaces_connection_status_errors() :: invalid_parameter_values_exception()

  @type describe_workspaces_pool_sessions_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type describe_workspaces_pools_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type disassociate_connection_alias_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type disassociate_ip_groups_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type disassociate_workspace_application_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type get_account_link_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_client_branding_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type import_custom_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type import_workspace_image_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type list_account_links_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_available_management_cidr_ranges_errors() ::
          access_denied_exception() | invalid_parameter_values_exception()

  @type migrate_workspace_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type modify_account_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type modify_certificate_based_auth_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_client_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_endpoint_encryption_mode_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type modify_saml_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_selfservice_permissions_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_streaming_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_workspace_access_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()

  @type modify_workspace_creation_properties_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type modify_workspace_properties_errors() ::
          unsupported_workspace_configuration_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type modify_workspace_state_errors() ::
          operation_not_supported_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type reboot_workspaces_errors() :: operation_not_supported_exception()

  @type rebuild_workspaces_errors() :: operation_not_supported_exception()

  @type register_workspace_directory_errors() ::
          operation_not_supported_exception()
          | resource_already_exists_exception()
          | access_denied_exception()
          | workspaces_default_role_not_found_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()
          | unsupported_network_configuration_exception()

  @type reject_account_link_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type restore_workspace_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type revoke_ip_rules_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_not_found_exception()

  @type start_workspaces_pool_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type stop_workspaces_pool_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type terminate_workspaces_pool_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type terminate_workspaces_pool_session_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  @type update_connect_client_add_in_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()

  @type update_connection_alias_permission_errors() ::
          operation_not_supported_exception()
          | resource_associated_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type update_rules_of_ip_group_errors() ::
          access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | resource_not_found_exception()

  @type update_workspace_bundle_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type update_workspace_image_permission_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | resource_not_found_exception()
          | resource_unavailable_exception()

  @type update_workspaces_pool_errors() ::
          operation_not_supported_exception()
          | access_denied_exception()
          | invalid_parameter_values_exception()
          | invalid_resource_state_exception()
          | resource_limit_exceeded_exception()
          | operation_in_progress_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2015-04-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workspaces",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "WorkSpaces",
      signature_version: "v4",
      signing_name: "workspaces",
      target_prefix: "WorkspacesService"
    }
  end

  @doc """
  Accepts the account link invitation.

  There's currently no unlinking capability after you accept the account linking
  invitation.
  """
  @spec accept_account_link_invitation(map(), accept_account_link_invitation_request(), list()) ::
          {:ok, accept_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_account_link_invitation_errors()}
  def accept_account_link_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptAccountLinkInvitation", input, options)
  end

  @doc """
  Associates the specified connection alias with the specified directory to enable
  cross-Region redirection.

  For more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the
  connection alias is `CREATED`.
  """
  @spec associate_connection_alias(map(), associate_connection_alias_request(), list()) ::
          {:ok, associate_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_connection_alias_errors()}
  def associate_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateConnectionAlias", input, options)
  end

  @doc """
  Associates the specified IP access control group with the specified directory.
  """
  @spec associate_ip_groups(map(), associate_ip_groups_request(), list()) ::
          {:ok, associate_ip_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_ip_groups_errors()}
  def associate_ip_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateIpGroups", input, options)
  end

  @doc """
  Associates the specified application to the specified WorkSpace.
  """
  @spec associate_workspace_application(map(), associate_workspace_application_request(), list()) ::
          {:ok, associate_workspace_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_workspace_application_errors()}
  def associate_workspace_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateWorkspaceApplication", input, options)
  end

  @doc """
  Adds one or more rules to the specified IP access control group.

  This action gives users permission to access their WorkSpaces from the CIDR
  address
  ranges specified in the rules.
  """
  @spec authorize_ip_rules(map(), authorize_ip_rules_request(), list()) ::
          {:ok, authorize_ip_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, authorize_ip_rules_errors()}
  def authorize_ip_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AuthorizeIpRules", input, options)
  end

  @doc """
  Copies the specified image from the specified Region to the current Region.

  For more
  information about copying images, see [ Copy a Custom WorkSpaces Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html).

  In the China (Ningxia) Region, you can copy images only within the same Region.

  In Amazon Web Services GovCloud (US), to copy images to and from other Regions,
  contact Amazon Web ServicesSupport.

  Before copying a shared image, be sure to verify that it has been shared from
  the
  correct Amazon Web Services account. To determine if an image has been shared
  and to see
  the ID of the Amazon Web Services account that owns an image, use the
  [DescribeWorkSpaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html) and
  [DescribeWorkspaceImagePermissions](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html)
  API operations.
  """
  @spec copy_workspace_image(map(), copy_workspace_image_request(), list()) ::
          {:ok, copy_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_workspace_image_errors()}
  def copy_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyWorkspaceImage", input, options)
  end

  @doc """
  Creates the account link invitation.
  """
  @spec create_account_link_invitation(map(), create_account_link_invitation_request(), list()) ::
          {:ok, create_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_account_link_invitation_errors()}
  def create_account_link_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccountLinkInvitation", input, options)
  end

  @doc """
  Creates a client-add-in for Amazon Connect within a directory.

  You can create only
  one Amazon Connect client add-in within a directory.

  This client add-in allows WorkSpaces users to seamlessly connect to Amazon
  Connect.
  """
  @spec create_connect_client_add_in(map(), create_connect_client_add_in_request(), list()) ::
          {:ok, create_connect_client_add_in_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connect_client_add_in_errors()}
  def create_connect_client_add_in(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnectClientAddIn", input, options)
  end

  @doc """
  Creates the specified connection alias for use with cross-Region redirection.

  For more
  information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  @spec create_connection_alias(map(), create_connection_alias_request(), list()) ::
          {:ok, create_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_alias_errors()}
  def create_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnectionAlias", input, options)
  end

  @doc """
  Creates an IP access control group.

  An IP access control group provides you with the ability to control the IP
  addresses
  from which users are allowed to access their WorkSpaces. To specify the CIDR
  address
  ranges, add rules to your IP access control group and then associate the group
  with your
  directory. You can add rules when you create the group or at any time using
  `AuthorizeIpRules`.

  There is a default IP access control group associated with your directory. If
  you don't
  associate an IP access control group with your directory, the default group is
  used. The
  default group includes a default rule that allows users to access their
  WorkSpaces from
  anywhere. You cannot modify the default IP access control group for your
  directory.
  """
  @spec create_ip_group(map(), create_ip_group_request(), list()) ::
          {:ok, create_ip_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ip_group_errors()}
  def create_ip_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIpGroup", input, options)
  end

  @doc """
  Creates a standby WorkSpace in a secondary Region.
  """
  @spec create_standby_workspaces(map(), create_standby_workspaces_request(), list()) ::
          {:ok, create_standby_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_standby_workspaces_errors()}
  def create_standby_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStandbyWorkspaces", input, options)
  end

  @doc """
  Creates the specified tags for the specified WorkSpaces resource.
  """
  @spec create_tags(map(), create_tags_request(), list()) ::
          {:ok, create_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTags", input, options)
  end

  @doc """
  Creates a new updated WorkSpace image based on the specified source image.

  The new
  updated WorkSpace image has the latest drivers and other updates required by the
  Amazon WorkSpaces components.

  To determine which WorkSpace images need to be updated with the latest Amazon
  WorkSpaces
  requirements, use [
  DescribeWorkspaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html).

    
  Only Windows 10, Windows Server 2016, and Windows Server 2019 WorkSpace images
  can be programmatically updated at this time.

    
  Microsoft Windows updates and other application updates are not included in the
  update process.

    
  The source WorkSpace image is not deleted. You can delete the source image
  after you've verified your new updated image and created a new bundle.
  """
  @spec create_updated_workspace_image(map(), create_updated_workspace_image_request(), list()) ::
          {:ok, create_updated_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_updated_workspace_image_errors()}
  def create_updated_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUpdatedWorkspaceImage", input, options)
  end

  @doc """
  Creates the specified WorkSpace bundle.

  For more information about creating WorkSpace bundles, see
  [
  Create a Custom WorkSpaces Image and
  Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html).
  """
  @spec create_workspace_bundle(map(), create_workspace_bundle_request(), list()) ::
          {:ok, create_workspace_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspace_bundle_errors()}
  def create_workspace_bundle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspaceBundle", input, options)
  end

  @doc """
  Creates a new WorkSpace image from an existing WorkSpace.
  """
  @spec create_workspace_image(map(), create_workspace_image_request(), list()) ::
          {:ok, create_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspace_image_errors()}
  def create_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspaceImage", input, options)
  end

  @doc """
  Creates one or more WorkSpaces.

  This operation is asynchronous and returns before the WorkSpaces are created.

    
  The `MANUAL` running mode value is only supported by Amazon WorkSpaces
  Core. Contact your account team to be allow-listed to use this value. For more
  information, see [Amazon WorkSpaces Core](http://aws.amazon.com/workspaces/core/).

    
  You don't need to specify the `PCOIP` protocol for Linux bundles
  because `DCV` (formerly WSP) is the default protocol for those bundles.

    
  User-decoupled WorkSpaces are only supported by Amazon WorkSpaces
  Core.

    
  Review your running mode to ensure you are using one that is optimal for your
  needs and budget.
  For more information on switching running modes, see
  [
  Can I switch between hourly and monthly
  billing?](http://aws.amazon.com/workspaces-family/workspaces/faqs/#:~:text=Can%20I%20switch%20between%20hourly%20and%20monthly%20billing%20on%20WorkSpaces%20Personal%3F)
  """
  @spec create_workspaces(map(), create_workspaces_request(), list()) ::
          {:ok, create_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspaces_errors()}
  def create_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspaces", input, options)
  end

  @doc """
  Creates a pool of WorkSpaces.
  """
  @spec create_workspaces_pool(map(), create_workspaces_pool_request(), list()) ::
          {:ok, create_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspaces_pool_errors()}
  def create_workspaces_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspacesPool", input, options)
  end

  @doc """
  Deletes the account link invitation.
  """
  @spec delete_account_link_invitation(map(), delete_account_link_invitation_request(), list()) ::
          {:ok, delete_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_account_link_invitation_errors()}
  def delete_account_link_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccountLinkInvitation", input, options)
  end

  @doc """
  Deletes customized client branding.

  Client branding allows you to customize your
  WorkSpace's client login portal. You can tailor your login portal company logo,
  the support
  email address, support link, link to reset password, and a custom message for
  users trying
  to sign in.

  After you delete your customized client branding, your login portal reverts to
  the
  default client branding.
  """
  @spec delete_client_branding(map(), delete_client_branding_request(), list()) ::
          {:ok, delete_client_branding_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_client_branding_errors()}
  def delete_client_branding(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteClientBranding", input, options)
  end

  @doc """
  Deletes a client-add-in for Amazon Connect that is configured within a
  directory.
  """
  @spec delete_connect_client_add_in(map(), delete_connect_client_add_in_request(), list()) ::
          {:ok, delete_connect_client_add_in_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connect_client_add_in_errors()}
  def delete_connect_client_add_in(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnectClientAddIn", input, options)
  end

  @doc """
  Deletes the specified connection alias.

  For more information, see [
  Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  **If you will no longer be using a fully qualified domain name
  (FQDN) as the registration code for your WorkSpaces users, you must take certain
  precautions to prevent potential security issues.** For more information,
  see [ Security Considerations if You Stop Using Cross-Region Redirection](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations).

  To delete a connection alias that has been shared, the shared account must first
  disassociate the connection alias from any directories it has been associated
  with. Then
  you must unshare the connection alias from the account it has been shared with.
  You can
  delete a connection alias only after it is no longer shared with any accounts or
  associated with any directories.
  """
  @spec delete_connection_alias(map(), delete_connection_alias_request(), list()) ::
          {:ok, delete_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_alias_errors()}
  def delete_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnectionAlias", input, options)
  end

  @doc """
  Deletes the specified IP access control group.

  You cannot delete an IP access control group that is associated with a
  directory.
  """
  @spec delete_ip_group(map(), delete_ip_group_request(), list()) ::
          {:ok, delete_ip_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ip_group_errors()}
  def delete_ip_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIpGroup", input, options)
  end

  @doc """
  Deletes the specified tags from the specified WorkSpaces resource.
  """
  @spec delete_tags(map(), delete_tags_request(), list()) ::
          {:ok, delete_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tags_errors()}
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Deletes the specified WorkSpace bundle.

  For more information about deleting WorkSpace bundles, see
  [
  Delete a Custom WorkSpaces Bundle or
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html).
  """
  @spec delete_workspace_bundle(map(), delete_workspace_bundle_request(), list()) ::
          {:ok, delete_workspace_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workspace_bundle_errors()}
  def delete_workspace_bundle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkspaceBundle", input, options)
  end

  @doc """
  Deletes the specified image from your account.

  To delete an image, you must first delete
  any bundles that are associated with the image and unshare the image if it is
  shared with
  other accounts.
  """
  @spec delete_workspace_image(map(), delete_workspace_image_request(), list()) ::
          {:ok, delete_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workspace_image_errors()}
  def delete_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkspaceImage", input, options)
  end

  @doc """
  Deploys associated applications to the specified WorkSpace
  """
  @spec deploy_workspace_applications(map(), deploy_workspace_applications_request(), list()) ::
          {:ok, deploy_workspace_applications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deploy_workspace_applications_errors()}
  def deploy_workspace_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeployWorkspaceApplications", input, options)
  end

  @doc """
  Deregisters the specified directory.

  This operation is asynchronous and returns before
  the WorkSpace directory is deregistered. If any WorkSpaces are registered to
  this
  directory, you must remove them before you can deregister the directory.

  Simple AD and AD Connector are made available to you free of charge to use with
  WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD
  Connector
  directory for 30 consecutive days, this directory will be automatically
  deregistered for
  use with Amazon WorkSpaces, and you will be charged for this directory as per
  the [Directory Service pricing terms](http://aws.amazon.com/directoryservice/pricing/).

  To delete empty directories, see [ Delete the Directory for Your
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html).
  If you delete your Simple AD or AD Connector
  directory, you can always create a new one when you want to start using
  WorkSpaces
  again.
  """
  @spec deregister_workspace_directory(map(), deregister_workspace_directory_request(), list()) ::
          {:ok, deregister_workspace_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_workspace_directory_errors()}
  def deregister_workspace_directory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterWorkspaceDirectory", input, options)
  end

  @doc """
  Retrieves a list that describes the configuration of Bring Your Own License
  (BYOL) for
  the specified account.
  """
  @spec describe_account(map(), describe_account_request(), list()) ::
          {:ok, describe_account_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_account_errors()}
  def describe_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccount", input, options)
  end

  @doc """
  Retrieves a list that describes modifications to the configuration of Bring Your
  Own
  License (BYOL) for the specified account.
  """
  @spec describe_account_modifications(map(), describe_account_modifications_request(), list()) ::
          {:ok, describe_account_modifications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_account_modifications_errors()}
  def describe_account_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountModifications", input, options)
  end

  @doc """
  Describes the associations between the application and the specified associated
  resources.
  """
  @spec describe_application_associations(
          map(),
          describe_application_associations_request(),
          list()
        ) ::
          {:ok, describe_application_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_associations_errors()}
  def describe_application_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationAssociations", input, options)
  end

  @doc """
  Describes the specified applications by filtering based on their compute types,
  license availability, operating systems, and owners.
  """
  @spec describe_applications(map(), describe_applications_request(), list()) ::
          {:ok, describe_applications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_applications_errors()}
  def describe_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplications", input, options)
  end

  @doc """
  Describes the associations between the applications and the specified bundle.
  """
  @spec describe_bundle_associations(map(), describe_bundle_associations_request(), list()) ::
          {:ok, describe_bundle_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bundle_associations_errors()}
  def describe_bundle_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBundleAssociations", input, options)
  end

  @doc """
  Describes the specified client branding.

  Client branding allows you to customize the log
  in page of various device types for your users. You can add your company logo,
  the support
  email address, support link, link to reset password, and a custom message for
  users trying
  to sign in.

  Only device types that have branding information configured will be shown in the
  response.
  """
  @spec describe_client_branding(map(), describe_client_branding_request(), list()) ::
          {:ok, describe_client_branding_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_client_branding_errors()}
  def describe_client_branding(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientBranding", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified Amazon WorkSpaces clients.
  """
  @spec describe_client_properties(map(), describe_client_properties_request(), list()) ::
          {:ok, describe_client_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_client_properties_errors()}
  def describe_client_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientProperties", input, options)
  end

  @doc """
  Retrieves a list of Amazon Connect client add-ins that have been created.
  """
  @spec describe_connect_client_add_ins(map(), describe_connect_client_add_ins_request(), list()) ::
          {:ok, describe_connect_client_add_ins_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connect_client_add_ins_errors()}
  def describe_connect_client_add_ins(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectClientAddIns", input, options)
  end

  @doc """
  Describes the permissions that the owner of a connection alias has granted to
  another
  Amazon Web Services account for the specified connection alias.

  For more information, see
  [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  @spec describe_connection_alias_permissions(
          map(),
          describe_connection_alias_permissions_request(),
          list()
        ) ::
          {:ok, describe_connection_alias_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connection_alias_permissions_errors()}
  def describe_connection_alias_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionAliasPermissions", input, options)
  end

  @doc """
  Retrieves a list that describes the connection aliases used for cross-Region
  redirection.

  For more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  @spec describe_connection_aliases(map(), describe_connection_aliases_request(), list()) ::
          {:ok, describe_connection_aliases_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connection_aliases_errors()}
  def describe_connection_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionAliases", input, options)
  end

  @doc """
  Retrieves information about a WorkSpace BYOL image being imported via
  ImportCustomWorkspaceImage.
  """
  @spec describe_custom_workspace_image_import(
          map(),
          describe_custom_workspace_image_import_request(),
          list()
        ) ::
          {:ok, describe_custom_workspace_image_import_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_custom_workspace_image_import_errors()}
  def describe_custom_workspace_image_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomWorkspaceImageImport", input, options)
  end

  @doc """
  Describes the associations between the applications and the specified image.
  """
  @spec describe_image_associations(map(), describe_image_associations_request(), list()) ::
          {:ok, describe_image_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_image_associations_errors()}
  def describe_image_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImageAssociations", input, options)
  end

  @doc """
  Describes one or more of your IP access control groups.
  """
  @spec describe_ip_groups(map(), describe_ip_groups_request(), list()) ::
          {:ok, describe_ip_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ip_groups_errors()}
  def describe_ip_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpGroups", input, options)
  end

  @doc """
  Describes the specified tags for the specified WorkSpaces resource.
  """
  @spec describe_tags(map(), describe_tags_request(), list()) ::
          {:ok, describe_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_tags_errors()}
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Describes the associations betweens applications and the specified WorkSpace.
  """
  @spec describe_workspace_associations(map(), describe_workspace_associations_request(), list()) ::
          {:ok, describe_workspace_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_associations_errors()}
  def describe_workspace_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceAssociations", input, options)
  end

  @doc """
  Retrieves a list that describes the available WorkSpace bundles.

  You can filter the results using either bundle ID or owner, but not both.
  """
  @spec describe_workspace_bundles(map(), describe_workspace_bundles_request(), list()) ::
          {:ok, describe_workspace_bundles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_bundles_errors()}
  def describe_workspace_bundles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceBundles", input, options)
  end

  @doc """
  Describes the available directories that are registered with Amazon WorkSpaces.
  """
  @spec describe_workspace_directories(map(), describe_workspace_directories_request(), list()) ::
          {:ok, describe_workspace_directories_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_directories_errors()}
  def describe_workspace_directories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceDirectories", input, options)
  end

  @doc """
  Describes the permissions that the owner of an image has granted to other Amazon
  Web Services accounts for an image.
  """
  @spec describe_workspace_image_permissions(
          map(),
          describe_workspace_image_permissions_request(),
          list()
        ) ::
          {:ok, describe_workspace_image_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_image_permissions_errors()}
  def describe_workspace_image_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceImagePermissions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified images, if the image
  identifiers
  are provided.

  Otherwise, all images in the account are described.
  """
  @spec describe_workspace_images(map(), describe_workspace_images_request(), list()) ::
          {:ok, describe_workspace_images_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_images_errors()}
  def describe_workspace_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceImages", input, options)
  end

  @doc """
  Describes the snapshots for the specified WorkSpace.
  """
  @spec describe_workspace_snapshots(map(), describe_workspace_snapshots_request(), list()) ::
          {:ok, describe_workspace_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_snapshots_errors()}
  def describe_workspace_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceSnapshots", input, options)
  end

  @doc """
  Describes the specified WorkSpaces.

  You can filter the results by using the bundle identifier, directory identifier,
  or
  owner, but you can specify only one filter at a time.
  """
  @spec describe_workspaces(map(), describe_workspaces_request(), list()) ::
          {:ok, describe_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspaces_errors()}
  def describe_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaces", input, options)
  end

  @doc """
  Describes the connection status of the specified WorkSpaces.
  """
  @spec describe_workspaces_connection_status(
          map(),
          describe_workspaces_connection_status_request(),
          list()
        ) ::
          {:ok, describe_workspaces_connection_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspaces_connection_status_errors()}
  def describe_workspaces_connection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspacesConnectionStatus", input, options)
  end

  @doc """
  Retrieves a list that describes the streaming sessions for a specified pool.
  """
  @spec describe_workspaces_pool_sessions(
          map(),
          describe_workspaces_pool_sessions_request(),
          list()
        ) ::
          {:ok, describe_workspaces_pool_sessions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspaces_pool_sessions_errors()}
  def describe_workspaces_pool_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspacesPoolSessions", input, options)
  end

  @doc """
  Describes the specified WorkSpaces Pools.
  """
  @spec describe_workspaces_pools(map(), describe_workspaces_pools_request(), list()) ::
          {:ok, describe_workspaces_pools_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspaces_pools_errors()}
  def describe_workspaces_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspacesPools", input, options)
  end

  @doc """
  Disassociates a connection alias from a directory.

  Disassociating a connection alias
  disables cross-Region redirection between two directories in different Regions.
  For more
  information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the
  connection alias is `CREATED`.
  """
  @spec disassociate_connection_alias(map(), disassociate_connection_alias_request(), list()) ::
          {:ok, disassociate_connection_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_connection_alias_errors()}
  def disassociate_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateConnectionAlias", input, options)
  end

  @doc """
  Disassociates the specified IP access control group from the specified
  directory.
  """
  @spec disassociate_ip_groups(map(), disassociate_ip_groups_request(), list()) ::
          {:ok, disassociate_ip_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_ip_groups_errors()}
  def disassociate_ip_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateIpGroups", input, options)
  end

  @doc """
  Disassociates the specified application from a WorkSpace.
  """
  @spec disassociate_workspace_application(
          map(),
          disassociate_workspace_application_request(),
          list()
        ) ::
          {:ok, disassociate_workspace_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_workspace_application_errors()}
  def disassociate_workspace_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateWorkspaceApplication", input, options)
  end

  @doc """
  Retrieves account link information.
  """
  @spec get_account_link(map(), get_account_link_request(), list()) ::
          {:ok, get_account_link_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_link_errors()}
  def get_account_link(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountLink", input, options)
  end

  @doc """
  Imports client branding.

  Client branding allows you to customize your WorkSpace's client
  login portal. You can tailor your login portal company logo, the support email
  address,
  support link, link to reset password, and a custom message for users trying to
  sign
  in.

  After you import client branding, the default branding experience for the
  specified
  platform type is replaced with the imported experience

    
  You must specify at least one platform type when importing client
  branding.

    
  You can import up to 6 MB of data with each request. If your request exceeds
  this limit, you can import client branding for different platform types using
  separate requests.

    
  In each platform type, the `SupportEmail` and
  `SupportLink` parameters are mutually exclusive. You can specify
  only one parameter for each platform type, but not both.

    
  Imported data can take up to a minute to appear in the WorkSpaces
  client.
  """
  @spec import_client_branding(map(), import_client_branding_request(), list()) ::
          {:ok, import_client_branding_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_client_branding_errors()}
  def import_client_branding(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportClientBranding", input, options)
  end

  @doc """
  Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
  image into Amazon WorkSpaces using EC2 Image Builder.

  The image must be an already licensed image that is
  in your Amazon Web Services account, and you must own the image. For more
  information about
  creating BYOL images, see [ Bring Your Own Windows Desktop
  Licenses](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).
  """
  @spec import_custom_workspace_image(map(), import_custom_workspace_image_request(), list()) ::
          {:ok, import_custom_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_custom_workspace_image_errors()}
  def import_custom_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportCustomWorkspaceImage", input, options)
  end

  @doc """
  Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
  image into Amazon WorkSpaces.

  The image must be an already licensed Amazon EC2 image that is
  in your Amazon Web Services account, and you must own the image. For more
  information about
  creating BYOL images, see [ Bring Your Own Windows Desktop
  Licenses](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).
  """
  @spec import_workspace_image(map(), import_workspace_image_request(), list()) ::
          {:ok, import_workspace_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_workspace_image_errors()}
  def import_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportWorkspaceImage", input, options)
  end

  @doc """
  Lists all account links.
  """
  @spec list_account_links(map(), list_account_links_request(), list()) ::
          {:ok, list_account_links_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_links_errors()}
  def list_account_links(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountLinks", input, options)
  end

  @doc """
  Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you
  can use
  for the network management interface when you enable Bring Your Own License
  (BYOL).

  This operation can be run only by Amazon Web Services accounts that are enabled
  for BYOL.
  If your account isn't enabled for BYOL, you'll receive an
  `AccessDeniedException` error.

  The management network interface is connected to a secure Amazon WorkSpaces
  management
  network. It is used for interactive streaming of the WorkSpace desktop to Amazon
  WorkSpaces
  clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
  """
  @spec list_available_management_cidr_ranges(
          map(),
          list_available_management_cidr_ranges_request(),
          list()
        ) ::
          {:ok, list_available_management_cidr_ranges_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_management_cidr_ranges_errors()}
  def list_available_management_cidr_ranges(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableManagementCidrRanges", input, options)
  end

  @doc """
  Migrates a WorkSpace from one operating system or bundle type to another, while
  retaining the data on the user volume.

  The migration process recreates the WorkSpace by using a new root volume from
  the target
  bundle image and the user volume from the last available snapshot of the
  original
  WorkSpace. During migration, the original `D:\Users\%USERNAME%` user profile
  folder is renamed to `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated`. A new
  `D:\Users\%USERNAME%\` folder is generated by the new OS. Certain files in
  the old user profile are moved to the new user profile.

  For available migration scenarios, details about what happens during migration,
  and best
  practices, see [Migrate a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html).
  """
  @spec migrate_workspace(map(), migrate_workspace_request(), list()) ::
          {:ok, migrate_workspace_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, migrate_workspace_errors()}
  def migrate_workspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MigrateWorkspace", input, options)
  end

  @doc """
  Modifies the configuration of Bring Your Own License (BYOL) for the specified
  account.
  """
  @spec modify_account(map(), modify_account_request(), list()) ::
          {:ok, modify_account_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_account_errors()}
  def modify_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyAccount", input, options)
  end

  @doc """
  Modifies the properties of the certificate-based authentication you want
  to use with your WorkSpaces.
  """
  @spec modify_certificate_based_auth_properties(
          map(),
          modify_certificate_based_auth_properties_request(),
          list()
        ) ::
          {:ok, modify_certificate_based_auth_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_certificate_based_auth_properties_errors()}
  def modify_certificate_based_auth_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCertificateBasedAuthProperties", input, options)
  end

  @doc """
  Modifies the properties of the specified Amazon WorkSpaces clients.
  """
  @spec modify_client_properties(map(), modify_client_properties_request(), list()) ::
          {:ok, modify_client_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_client_properties_errors()}
  def modify_client_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyClientProperties", input, options)
  end

  @doc """
  Modifies the endpoint encryption mode that allows you to configure the specified
  directory between Standard TLS and FIPS 140-2 validated mode.
  """
  @spec modify_endpoint_encryption_mode(map(), modify_endpoint_encryption_mode_request(), list()) ::
          {:ok, modify_endpoint_encryption_mode_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_endpoint_encryption_mode_errors()}
  def modify_endpoint_encryption_mode(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyEndpointEncryptionMode", input, options)
  end

  @doc """
  Modifies multiple properties related to SAML 2.0 authentication, including the
  enablement status,
  user access URL, and relay state parameter name that are used for configuring
  federation with an
  SAML 2.0 identity provider.
  """
  @spec modify_saml_properties(map(), modify_saml_properties_request(), list()) ::
          {:ok, modify_saml_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_saml_properties_errors()}
  def modify_saml_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySamlProperties", input, options)
  end

  @doc """
  Modifies the self-service WorkSpace management capabilities for your users.

  For more
  information, see [Enable Self-Service WorkSpace Management Capabilities for Your Users](https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html).
  """
  @spec modify_selfservice_permissions(map(), modify_selfservice_permissions_request(), list()) ::
          {:ok, modify_selfservice_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_selfservice_permissions_errors()}
  def modify_selfservice_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySelfservicePermissions", input, options)
  end

  @doc """
  Modifies the specified streaming properties.
  """
  @spec modify_streaming_properties(map(), modify_streaming_properties_request(), list()) ::
          {:ok, modify_streaming_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_streaming_properties_errors()}
  def modify_streaming_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyStreamingProperties", input, options)
  end

  @doc """
  Specifies which devices and operating systems users can use to access their
  WorkSpaces.

  For more information, see [
  Control Device
  Access](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access).
  """
  @spec modify_workspace_access_properties(
          map(),
          modify_workspace_access_properties_request(),
          list()
        ) ::
          {:ok, modify_workspace_access_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_workspace_access_properties_errors()}
  def modify_workspace_access_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceAccessProperties", input, options)
  end

  @doc """
  Modify the default properties used to create WorkSpaces.
  """
  @spec modify_workspace_creation_properties(
          map(),
          modify_workspace_creation_properties_request(),
          list()
        ) ::
          {:ok, modify_workspace_creation_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_workspace_creation_properties_errors()}
  def modify_workspace_creation_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceCreationProperties", input, options)
  end

  @doc """
  Modifies the specified WorkSpace properties.

  For important information about how to
  modify the size of the root and user volumes, see [ Modify a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html).

  The `MANUAL` running mode value is only supported by Amazon WorkSpaces
  Core. Contact your account team to be allow-listed to use this value. For more
  information, see [Amazon WorkSpaces Core](http://aws.amazon.com/workspaces/core/).
  """
  @spec modify_workspace_properties(map(), modify_workspace_properties_request(), list()) ::
          {:ok, modify_workspace_properties_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_workspace_properties_errors()}
  def modify_workspace_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceProperties", input, options)
  end

  @doc """
  Sets the state of the specified WorkSpace.

  To maintain a WorkSpace without being interrupted, set the WorkSpace state to
  `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond to requests to
  reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is
  not
  stopped. Users cannot log into a WorkSpace in the `ADMIN_MAINTENANCE`
  state.
  """
  @spec modify_workspace_state(map(), modify_workspace_state_request(), list()) ::
          {:ok, modify_workspace_state_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, modify_workspace_state_errors()}
  def modify_workspace_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceState", input, options)
  end

  @doc """
  Reboots the specified WorkSpaces.

  You cannot reboot a WorkSpace unless its state is `AVAILABLE`,
  `UNHEALTHY`, or `REBOOTING`. Reboot a WorkSpace in the `REBOOTING`
  state only if your WorkSpace has been stuck in the `REBOOTING` state for over 20
  minutes.

  This operation is asynchronous and returns before the WorkSpaces have rebooted.
  """
  @spec reboot_workspaces(map(), reboot_workspaces_request(), list()) ::
          {:ok, reboot_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_workspaces_errors()}
  def reboot_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootWorkspaces", input, options)
  end

  @doc """
  Rebuilds the specified WorkSpace.

  You cannot rebuild a WorkSpace unless its state is `AVAILABLE`,
  `ERROR`, `UNHEALTHY`, `STOPPED`, or
  `REBOOTING`.

  Rebuilding a WorkSpace is a potentially destructive action that can result in
  the loss
  of data. For more information, see [Rebuild a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).

  This operation is asynchronous and returns before the WorkSpaces have been
  completely
  rebuilt.
  """
  @spec rebuild_workspaces(map(), rebuild_workspaces_request(), list()) ::
          {:ok, rebuild_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rebuild_workspaces_errors()}
  def rebuild_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebuildWorkspaces", input, options)
  end

  @doc """
  Registers the specified directory.

  This operation is asynchronous and returns before the
  WorkSpace directory is registered. If this is the first time you are registering
  a
  directory, you will need to create the workspaces_DefaultRole role before you
  can register
  a directory. For more information, see [
  Creating the workspaces_DefaultRole
  Role](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role).
  """
  @spec register_workspace_directory(map(), register_workspace_directory_request(), list()) ::
          {:ok, register_workspace_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_workspace_directory_errors()}
  def register_workspace_directory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterWorkspaceDirectory", input, options)
  end

  @doc """
  Rejects the account link invitation.
  """
  @spec reject_account_link_invitation(map(), reject_account_link_invitation_request(), list()) ::
          {:ok, reject_account_link_invitation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_account_link_invitation_errors()}
  def reject_account_link_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectAccountLinkInvitation", input, options)
  end

  @doc """
  Restores the specified WorkSpace to its last known healthy state.

  You cannot restore a WorkSpace unless its state is ` AVAILABLE`,
  `ERROR`, `UNHEALTHY`, or `STOPPED`.

  Restoring a WorkSpace is a potentially destructive action that can result in the
  loss of
  data. For more information, see [Restore a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html).

  This operation is asynchronous and returns before the WorkSpace is completely
  restored.
  """
  @spec restore_workspace(map(), restore_workspace_request(), list()) ::
          {:ok, restore_workspace_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_workspace_errors()}
  def restore_workspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreWorkspace", input, options)
  end

  @doc """
  Removes one or more rules from the specified IP access control group.
  """
  @spec revoke_ip_rules(map(), revoke_ip_rules_request(), list()) ::
          {:ok, revoke_ip_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_ip_rules_errors()}
  def revoke_ip_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeIpRules", input, options)
  end

  @doc """
  Starts the specified WorkSpaces.

  You cannot start a WorkSpace unless it has a running mode of `AutoStop` or
  `Manual` and a state of `STOPPED`.
  """
  @spec start_workspaces(map(), start_workspaces_request(), list()) ::
          {:ok, start_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def start_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartWorkspaces", input, options)
  end

  @doc """
  Starts the specified pool.

  You cannot start a pool unless it has a running mode of
  `AutoStop` and a state of `STOPPED`.
  """
  @spec start_workspaces_pool(map(), start_workspaces_pool_request(), list()) ::
          {:ok, start_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_workspaces_pool_errors()}
  def start_workspaces_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartWorkspacesPool", input, options)
  end

  @doc """
  Stops the specified WorkSpaces.

  You cannot stop a WorkSpace unless it has a running mode of `AutoStop` or
  `Manual` and a state of `AVAILABLE`, `IMPAIRED`,
  `UNHEALTHY`, or `ERROR`.
  """
  @spec stop_workspaces(map(), stop_workspaces_request(), list()) ::
          {:ok, stop_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def stop_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopWorkspaces", input, options)
  end

  @doc """
  Stops the specified pool.

  You cannot stop a WorkSpace pool unless it has a running mode of `AutoStop`
  and a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.
  """
  @spec stop_workspaces_pool(map(), stop_workspaces_pool_request(), list()) ::
          {:ok, stop_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_workspaces_pool_errors()}
  def stop_workspaces_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopWorkspacesPool", input, options)
  end

  @doc """
  Terminates the specified WorkSpaces.

  Terminating a WorkSpace is a permanent action and cannot be undone. The user's
  data
  is destroyed. If you need to archive any user data, contact Amazon Web
  ServicesSupport before
  terminating the WorkSpace.

  You can terminate a WorkSpace that is in any state except `SUSPENDED`.

  This operation is asynchronous and returns before the WorkSpaces have been
  completely
  terminated. After a WorkSpace is terminated, the `TERMINATED` state is returned
  only briefly before the WorkSpace directory metadata is cleaned up, so this
  state is rarely
  returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID
  by using
  [
  DescribeWorkSpaces](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html).
  If the WorkSpace ID isn't returned, then the WorkSpace has
  been successfully terminated.

  Simple AD and AD Connector are made available to you free of charge to use with
  WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD
  Connector
  directory for 30 consecutive days, this directory will be automatically
  deregistered for
  use with Amazon WorkSpaces, and you will be charged for this directory as per
  the [Directory Service pricing terms](http://aws.amazon.com/directoryservice/pricing/).

  To delete empty directories, see [ Delete the Directory for Your
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html).
  If you delete your Simple AD or AD Connector
  directory, you can always create a new one when you want to start using
  WorkSpaces
  again.
  """
  @spec terminate_workspaces(map(), terminate_workspaces_request(), list()) ::
          {:ok, terminate_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def terminate_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateWorkspaces", input, options)
  end

  @doc """
  Terminates the specified pool.
  """
  @spec terminate_workspaces_pool(map(), terminate_workspaces_pool_request(), list()) ::
          {:ok, terminate_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_workspaces_pool_errors()}
  def terminate_workspaces_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateWorkspacesPool", input, options)
  end

  @doc """
  Terminates the pool session.
  """
  @spec terminate_workspaces_pool_session(
          map(),
          terminate_workspaces_pool_session_request(),
          list()
        ) ::
          {:ok, terminate_workspaces_pool_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_workspaces_pool_session_errors()}
  def terminate_workspaces_pool_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateWorkspacesPoolSession", input, options)
  end

  @doc """
  Updates a Amazon Connect client add-in.

  Use this action to update the name and
  endpoint URL of a Amazon Connect client add-in.
  """
  @spec update_connect_client_add_in(map(), update_connect_client_add_in_request(), list()) ::
          {:ok, update_connect_client_add_in_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connect_client_add_in_errors()}
  def update_connect_client_add_in(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnectClientAddIn", input, options)
  end

  @doc """
  Shares or unshares a connection alias with one account by specifying whether
  that
  account has permission to associate the connection alias with a directory.

  If the
  association permission is granted, the connection alias is shared with that
  account. If the
  association permission is revoked, the connection alias is unshared with the
  account. For
  more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

    
  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the
  connection alias is `CREATED`.

    
  To delete a connection alias that has been shared, the shared account must
  first disassociate the connection alias from any directories it has been
  associated with. Then you must unshare the connection alias from the account it
  has been shared with. You can delete a connection alias only after it is no
  longer
  shared with any accounts or associated with any directories.
  """
  @spec update_connection_alias_permission(
          map(),
          update_connection_alias_permission_request(),
          list()
        ) ::
          {:ok, update_connection_alias_permission_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connection_alias_permission_errors()}
  def update_connection_alias_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnectionAliasPermission", input, options)
  end

  @doc """
  Replaces the current rules of the specified IP access control group with the
  specified
  rules.
  """
  @spec update_rules_of_ip_group(map(), update_rules_of_ip_group_request(), list()) ::
          {:ok, update_rules_of_ip_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rules_of_ip_group_errors()}
  def update_rules_of_ip_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRulesOfIpGroup", input, options)
  end

  @doc """
  Updates a WorkSpace bundle with a new image.

  For more information about updating WorkSpace bundles, see
  [
  Update a Custom WorkSpaces
  Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html).

  Existing WorkSpaces aren't automatically updated when you update the bundle that
  they're
  based on. To update existing WorkSpaces that are based on a bundle that you've
  updated, you
  must either rebuild the WorkSpaces or delete and recreate them.
  """
  @spec update_workspace_bundle(map(), update_workspace_bundle_request(), list()) ::
          {:ok, update_workspace_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workspace_bundle_errors()}
  def update_workspace_bundle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkspaceBundle", input, options)
  end

  @doc """
  Shares or unshares an image with one account in the same Amazon Web Services
  Region by
  specifying whether that account has permission to copy the image.

  If the copy image
  permission is granted, the image is shared with that account. If the copy image
  permission
  is revoked, the image is unshared with the account.

  After an image has been shared, the recipient account can copy the image to
  other
  Regions as needed.

  In the China (Ningxia) Region, you can copy images only within the same Region.

  In Amazon Web Services GovCloud (US), to copy images to and from other Regions,
  contact Amazon Web ServicesSupport.

  For more information about sharing images, see [ Share or Unshare a Custom WorkSpaces
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html).

    
  To delete an image that has been shared, you must unshare the image before you
  delete it.

    
  Sharing Bring Your Own License (BYOL) images across Amazon Web Services accounts
  isn't supported at this time in Amazon Web Services GovCloud (US). To share BYOL
  images
  across accounts in Amazon Web Services GovCloud (US), contact Amazon Web
  ServicesSupport.
  """
  @spec update_workspace_image_permission(
          map(),
          update_workspace_image_permission_request(),
          list()
        ) ::
          {:ok, update_workspace_image_permission_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workspace_image_permission_errors()}
  def update_workspace_image_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkspaceImagePermission", input, options)
  end

  @doc """
  Updates the specified pool.
  """
  @spec update_workspaces_pool(map(), update_workspaces_pool_request(), list()) ::
          {:ok, update_workspaces_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workspaces_pool_errors()}
  def update_workspaces_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkspacesPool", input, options)
  end
end
