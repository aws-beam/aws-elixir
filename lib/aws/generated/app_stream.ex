# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppStream do
  @moduledoc """
  Amazon AppStream 2.0

  This is the *Amazon AppStream 2.0 API Reference*.

  This documentation provides descriptions and syntax for each of the actions and
  data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure
  application streaming service that lets you stream desktop applications to users
  without rewriting applications. AppStream 2.0 manages the AWS resources that are
  required to host and run your applications, scales automatically, and provides
  access to your users on demand.

  You can call the AppStream 2.0 API operations by using an interface VPC endpoint
  (interface endpoint). For more information, see [Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC
  Endpoint](https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html)
  in the *Amazon AppStream 2.0 Administration Guide*.

  To learn more about AppStream 2.0, see the following resources:

    *

  [Amazon AppStream 2.0 product page](http://aws.amazon.com/appstream2) 

    *

  [Amazon AppStream 2.0
  documentation](http://aws.amazon.com/documentation/appstream2)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      theme() :: %{
        "CreatedTime" => non_neg_integer(),
        "StackName" => String.t(),
        "State" => list(any()),
        "ThemeFaviconURL" => String.t(),
        "ThemeFooterLinks" => list(theme_footer_link()),
        "ThemeOrganizationLogoURL" => String.t(),
        "ThemeStyling" => list(any()),
        "ThemeTitleText" => String.t()
      }
      
  """
  @type theme() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_block_builders_result() :: %{
        "AppBlockBuilders" => list(app_block_builder()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_app_block_builders_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_usage_report_subscriptions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_usage_report_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_builder() :: %{
        "AccessEndpoints" => list(access_endpoint()),
        "AppstreamAgentVersion" => String.t(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "DomainJoinInfo" => domain_join_info(),
        "EnableDefaultInternetAccess" => boolean(),
        "IamRoleArn" => String.t(),
        "ImageArn" => String.t(),
        "ImageBuilderErrors" => list(resource_error()),
        "InstanceType" => String.t(),
        "LatestAppstreamAgentVersion" => list(any()),
        "Name" => String.t(),
        "NetworkAccessConfiguration" => network_access_configuration(),
        "Platform" => list(any()),
        "State" => list(any()),
        "StateChangeReason" => image_builder_state_change_reason(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type image_builder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_image_builder_result() :: %{
        "ImageBuilder" => image_builder()
      }
      
  """
  @type start_image_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_result() :: %{
        "Image" => image()
      }
      
  """
  @type delete_image_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_user_stack_request() :: %{
        required("UserStackAssociations") => list(user_stack_association())
      }
      
  """
  @type batch_disassociate_user_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_stack_association() :: %{
        "AuthenticationType" => list(any()),
        "SendEmailNotification" => boolean(),
        "StackName" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type user_stack_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_user_result() :: %{}
      
  """
  @type disable_user_result() :: %{}

  @typedoc """

  ## Example:
      
      create_application_result() :: %{
        "Application" => application()
      }
      
  """
  @type create_application_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_app_block_builder_app_block_result() :: %{}
      
  """
  @type disassociate_app_block_builder_app_block_result() :: %{}

  @typedoc """

  ## Example:
      
      create_entitlement_result() :: %{
        "Entitlement" => entitlement()
      }
      
  """
  @type create_entitlement_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_app_block_builder_result() :: %{
        "AppBlockBuilder" => app_block_builder()
      }
      
  """
  @type stop_app_block_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_url_result() :: %{
        "Expires" => non_neg_integer(),
        "StreamingURL" => String.t()
      }
      
  """
  @type create_streaming_url_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_blocks_result() :: %{
        "AppBlocks" => list(app_block()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_app_blocks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_block_builder_request() :: %{
        optional("AccessEndpoints") => list(access_endpoint()),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("EnableDefaultInternetAccess") => boolean(),
        optional("IamRoleArn") => String.t(),
        optional("Tags") => map(),
        required("InstanceType") => String.t(),
        required("Name") => String.t(),
        required("Platform") => list(any()),
        required("VpcConfig") => vpc_config()
      }
      
  """
  @type create_app_block_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_result() :: %{}
      
  """
  @type stop_fleet_result() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_directory_config_request() :: %{
        optional("CertificateBasedAuthProperties") => certificate_based_auth_properties(),
        optional("OrganizationalUnitDistinguishedNames") => list(String.t()),
        optional("ServiceAccountCredentials") => service_account_credentials(),
        required("DirectoryName") => String.t()
      }
      
  """
  @type update_directory_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_request() :: %{
        optional("AccessEndpoints") => list(access_endpoint()),
        optional("ApplicationSettings") => application_settings(),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("EmbedHostDomains") => list(String.t()),
        optional("FeedbackURL") => String.t(),
        optional("RedirectURL") => String.t(),
        optional("StorageConnectors") => list(storage_connector()),
        optional("StreamingExperienceSettings") => streaming_experience_settings(),
        optional("Tags") => map(),
        optional("UserSettings") => list(user_setting()),
        required("Name") => String.t()
      }
      
  """
  @type create_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_request() :: %{
        optional("AccessEndpoints") => list(access_endpoint()),
        optional("ApplicationSettings") => application_settings(),
        optional("AttributesToDelete") => list(list(any())()),
        optional("DeleteStorageConnectors") => boolean(),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("EmbedHostDomains") => list(String.t()),
        optional("FeedbackURL") => String.t(),
        optional("RedirectURL") => String.t(),
        optional("StorageConnectors") => list(storage_connector()),
        optional("StreamingExperienceSettings") => streaming_experience_settings(),
        optional("UserSettings") => list(user_setting()),
        required("Name") => String.t()
      }
      
  """
  @type update_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_block_builder() :: %{
        "AccessEndpoints" => list(access_endpoint()),
        "AppBlockBuilderErrors" => list(resource_error()),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "EnableDefaultInternetAccess" => boolean(),
        "IamRoleArn" => String.t(),
        "InstanceType" => String.t(),
        "Name" => String.t(),
        "Platform" => list(any()),
        "State" => list(any()),
        "StateChangeReason" => app_block_builder_state_change_reason(),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type app_block_builder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_theme_for_stack_request() :: %{
        required("StackName") => String.t()
      }
      
  """
  @type describe_theme_for_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_images_result() :: %{
        "Images" => list(image()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_images_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_request() :: %{
        optional("ComputeCapacity") => compute_capacity(),
        optional("Description") => String.t(),
        optional("DisconnectTimeoutInSeconds") => integer(),
        optional("DisplayName") => String.t(),
        optional("DomainJoinInfo") => domain_join_info(),
        optional("EnableDefaultInternetAccess") => boolean(),
        optional("FleetType") => list(any()),
        optional("IamRoleArn") => String.t(),
        optional("IdleDisconnectTimeoutInSeconds") => integer(),
        optional("ImageArn") => String.t(),
        optional("ImageName") => String.t(),
        optional("MaxConcurrentSessions") => integer(),
        optional("MaxSessionsPerInstance") => integer(),
        optional("MaxUserDurationInSeconds") => integer(),
        optional("Platform") => list(any()),
        optional("SessionScriptS3Location") => s3_location(),
        optional("StreamView") => list(any()),
        optional("Tags") => map(),
        optional("UsbDeviceFilterStrings") => list(String.t()),
        optional("VpcConfig") => vpc_config(),
        required("InstanceType") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associated_stacks_request() :: %{
        optional("NextToken") => String.t(),
        required("FleetName") => String.t()
      }
      
  """
  @type list_associated_stacks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_builders_result() :: %{
        "ImageBuilders" => list(image_builder()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_image_builders_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_theme_for_stack_result() :: %{}
      
  """
  @type delete_theme_for_stack_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_usage_report_subscription_request() :: %{}
      
  """
  @type delete_usage_report_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_images_request() :: %{
        optional("Arns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t()),
        optional("NextToken") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type describe_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_image_request() :: %{
        optional("DestinationImageDescription") => String.t(),
        required("DestinationImageName") => String.t(),
        required("DestinationRegion") => String.t(),
        required("SourceImageName") => String.t()
      }
      
  """
  @type copy_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_block_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("PackagingType") => list(any()),
        optional("PostSetupScriptDetails") => script_details(),
        optional("SetupScriptDetails") => script_details(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("SourceS3Location") => s3_location()
      }
      
  """
  @type create_app_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_access_configuration() :: %{
        "EniId" => String.t(),
        "EniPrivateIpAddress" => String.t()
      }
      
  """
  @type network_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_application_from_entitlement_result() :: %{}
      
  """
  @type disassociate_application_from_entitlement_result() :: %{}

  @typedoc """

  ## Example:
      
      image_permissions() :: %{
        "allowFleet" => boolean(),
        "allowImageBuilder" => boolean()
      }
      
  """
  @type image_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_fleet_association() :: %{
        "ApplicationArn" => String.t(),
        "FleetName" => String.t()
      }
      
  """
  @type application_fleet_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type image_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_app_block_builder_app_block_result() :: %{
        "AppBlockBuilderAppBlockAssociation" => app_block_builder_app_block_association()
      }
      
  """
  @type associate_app_block_builder_app_block_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_app_block_builder_request() :: %{
        optional("AccessEndpoints") => list(access_endpoint()),
        optional("AttributesToDelete") => list(list(any())()),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("EnableDefaultInternetAccess") => boolean(),
        optional("IamRoleArn") => String.t(),
        optional("InstanceType") => String.t(),
        optional("Platform") => list(any()),
        optional("VpcConfig") => vpc_config(),
        required("Name") => String.t()
      }
      
  """
  @type update_app_block_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_theme_for_stack_result() :: %{
        "Theme" => theme()
      }
      
  """
  @type describe_theme_for_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_permissions_request() :: %{
        required("Name") => String.t(),
        required("SharedAccountId") => String.t()
      }
      
  """
  @type delete_image_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_builder_result() :: %{
        "ImageBuilder" => image_builder()
      }
      
  """
  @type create_image_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_application_fleet_result() :: %{
        "ApplicationFleetAssociation" => application_fleet_association()
      }
      
  """
  @type associate_application_fleet_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_result() :: %{
        "Stack" => stack()
      }
      
  """
  @type create_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_block_builder_streaming_url_request() :: %{
        optional("Validity") => float(),
        required("AppBlockBuilderName") => String.t()
      }
      
  """
  @type create_app_block_builder_streaming_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_builders_request() :: %{
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_image_builders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expire_session_request() :: %{
        required("SessionId") => String.t()
      }
      
  """
  @type expire_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_fleet_associations_request() :: %{
        optional("ApplicationArn") => String.t(),
        optional("FleetName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_application_fleet_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AuthenticationType") => list(any())
      }
      
  """
  @type describe_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedAwsAccountIds") => list(String.t()),
        required("Name") => String.t()
      }
      
  """
  @type describe_image_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_updated_image_result() :: %{
        "canUpdateImage" => boolean(),
        "image" => image()
      }
      
  """
  @type create_updated_image_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type request_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_available_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_available_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_block_builder_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type app_block_builder_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_directory_config_result() :: %{
        "DirectoryConfig" => directory_config()
      }
      
  """
  @type update_directory_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_block_result() :: %{
        "AppBlock" => app_block()
      }
      
  """
  @type create_app_block_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_blocks_request() :: %{
        optional("Arns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_app_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_application_fleet_result() :: %{}
      
  """
  @type disassociate_application_fleet_result() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_app_block_builder_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_app_block_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_fleet_result() :: %{}
      
  """
  @type disassociate_fleet_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_usage_report_subscription_result() :: %{}
      
  """
  @type delete_usage_report_subscription_result() :: %{}

  @typedoc """

  ## Example:
      
      access_endpoint() :: %{
        "EndpointType" => list(any()),
        "VpceId" => String.t()
      }
      
  """
  @type access_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_result() :: %{}
      
  """
  @type create_user_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_app_block_builder_result() :: %{}
      
  """
  @type delete_app_block_builder_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_entitlement_result() :: %{}
      
  """
  @type delete_entitlement_result() :: %{}

  @typedoc """

  ## Example:
      
      associate_application_to_entitlement_request() :: %{
        required("ApplicationIdentifier") => String.t(),
        required("EntitlementName") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type associate_application_to_entitlement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_block_builder_streaming_url_result() :: %{
        "Expires" => non_neg_integer(),
        "StreamingURL" => String.t()
      }
      
  """
  @type create_app_block_builder_streaming_url_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type stop_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_result() :: %{
        "Fleet" => fleet()
      }
      
  """
  @type update_fleet_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack() :: %{
        "AccessEndpoints" => list(access_endpoint()),
        "ApplicationSettings" => application_settings_response(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "EmbedHostDomains" => list(String.t()),
        "FeedbackURL" => String.t(),
        "Name" => String.t(),
        "RedirectURL" => String.t(),
        "StackErrors" => list(stack_error()),
        "StorageConnectors" => list(storage_connector()),
        "StreamingExperienceSettings" => streaming_experience_settings(),
        "UserSettings" => list(user_setting())
      }
      
  """
  @type stack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_user_result() :: %{}
      
  """
  @type enable_user_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_app_block_result() :: %{}
      
  """
  @type delete_app_block_result() :: %{}

  @typedoc """

  ## Example:
      
      create_usage_report_subscription_request() :: %{}
      
  """
  @type create_usage_report_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      stop_image_builder_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type stop_image_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_capacity_status() :: %{
        "ActiveUserSessions" => integer(),
        "ActualUserSessions" => integer(),
        "Available" => integer(),
        "AvailableUserSessions" => integer(),
        "Desired" => integer(),
        "DesiredUserSessions" => integer(),
        "InUse" => integer(),
        "Running" => integer()
      }
      
  """
  @type compute_capacity_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_directory_configs_result() :: %{
        "DirectoryConfigs" => list(directory_config()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_directory_configs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_application_from_entitlement_request() :: %{
        required("ApplicationIdentifier") => String.t(),
        required("EntitlementName") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type disassociate_application_from_entitlement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_application_fleet_request() :: %{
        required("ApplicationArn") => String.t(),
        required("FleetName") => String.t()
      }
      
  """
  @type associate_application_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_based_auth_properties() :: %{
        "CertificateAuthorityArn" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type certificate_based_auth_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_capacity() :: %{
        "DesiredInstances" => integer(),
        "DesiredSessions" => integer()
      }
      
  """
  @type compute_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_theme_for_stack_request() :: %{
        optional("AttributesToDelete") => list(list(any())()),
        optional("FaviconS3Location") => s3_location(),
        optional("FooterLinks") => list(theme_footer_link()),
        optional("OrganizationLogoS3Location") => s3_location(),
        optional("State") => list(any()),
        optional("ThemeStyling") => list(any()),
        optional("TitleText") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type update_theme_for_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type fleet_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_updated_image_request() :: %{
        optional("dryRun") => boolean(),
        optional("newImageDescription") => String.t(),
        optional("newImageDisplayName") => String.t(),
        optional("newImageTags") => map(),
        required("existingImageName") => String.t(),
        required("newImageName") => String.t()
      }
      
  """
  @type create_updated_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_application_to_entitlement_result() :: %{}
      
  """
  @type associate_application_to_entitlement_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_stacks_request() :: %{
        optional("Names") => list(String.t()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_stacks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_block() :: %{
        "AppBlockErrors" => list(error_details()),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "Name" => String.t(),
        "PackagingType" => list(any()),
        "PostSetupScriptDetails" => script_details(),
        "SetupScriptDetails" => script_details(),
        "SourceS3Location" => s3_location(),
        "State" => list(any())
      }
      
  """
  @type app_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_request() :: %{
        optional("AttributesToDelete") => list(list(any())()),
        optional("ComputeCapacity") => compute_capacity(),
        optional("DeleteVpcConfig") => boolean(),
        optional("Description") => String.t(),
        optional("DisconnectTimeoutInSeconds") => integer(),
        optional("DisplayName") => String.t(),
        optional("DomainJoinInfo") => domain_join_info(),
        optional("EnableDefaultInternetAccess") => boolean(),
        optional("IamRoleArn") => String.t(),
        optional("IdleDisconnectTimeoutInSeconds") => integer(),
        optional("ImageArn") => String.t(),
        optional("ImageName") => String.t(),
        optional("InstanceType") => String.t(),
        optional("MaxConcurrentSessions") => integer(),
        optional("MaxSessionsPerInstance") => integer(),
        optional("MaxUserDurationInSeconds") => integer(),
        optional("Name") => String.t(),
        optional("Platform") => list(any()),
        optional("SessionScriptS3Location") => s3_location(),
        optional("StreamView") => list(any()),
        optional("UsbDeviceFilterStrings") => list(String.t()),
        optional("VpcConfig") => vpc_config()
      }
      
  """
  @type update_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_report_subscription() :: %{
        "LastGeneratedReportDate" => non_neg_integer(),
        "S3BucketName" => String.t(),
        "Schedule" => list(any()),
        "SubscriptionErrors" => list(last_report_generation_execution_error())
      }
      
  """
  @type usage_report_subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_entitlement_result() :: %{
        "Entitlement" => entitlement()
      }
      
  """
  @type update_entitlement_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_block_builder_app_block_associations_request() :: %{
        optional("AppBlockArn") => String.t(),
        optional("AppBlockBuilderName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_app_block_builder_app_block_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_builder_request() :: %{
        optional("AccessEndpoints") => list(access_endpoint()),
        optional("AppstreamAgentVersion") => String.t(),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("DomainJoinInfo") => domain_join_info(),
        optional("EnableDefaultInternetAccess") => boolean(),
        optional("IamRoleArn") => String.t(),
        optional("ImageArn") => String.t(),
        optional("ImageName") => String.t(),
        optional("Tags") => map(),
        optional("VpcConfig") => vpc_config(),
        required("InstanceType") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_image_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application() :: %{
        "AppBlockArn" => String.t(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "Enabled" => boolean(),
        "IconS3Location" => s3_location(),
        "IconURL" => String.t(),
        "InstanceFamilies" => list(String.t()),
        "LaunchParameters" => String.t(),
        "LaunchPath" => String.t(),
        "Metadata" => map(),
        "Name" => String.t(),
        "Platforms" => list(list(any())()),
        "WorkingDirectory" => String.t()
      }
      
  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_setting() :: %{
        "Action" => list(any()),
        "MaximumLength" => integer(),
        "Permission" => list(any())
      }
      
  """
  @type user_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_application_fleet_request() :: %{
        required("ApplicationArn") => String.t(),
        required("FleetName") => String.t()
      }
      
  """
  @type disassociate_application_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entitled_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EntitlementName") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type list_entitled_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expire_session_result() :: %{}
      
  """
  @type expire_session_result() :: %{}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "SecurityGroupIds" => list(String.t()),
        "SubnetIds" => list(String.t())
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement_attribute() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type entitlement_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_stack_associations_result() :: %{
        "NextToken" => String.t(),
        "UserStackAssociations" => list(user_stack_association())
      }
      
  """
  @type describe_user_stack_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_directory_configs_request() :: %{
        optional("DirectoryNames") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_directory_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_connector() :: %{
        "ConnectorType" => list(any()),
        "Domains" => list(String.t()),
        "DomainsRequireAdminConsent" => list(String.t()),
        "ResourceIdentifier" => String.t()
      }
      
  """
  @type storage_connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_image_response() :: %{
        "DestinationImageName" => String.t()
      }
      
  """
  @type copy_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_details() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }
      
  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_applications_request() :: %{
        optional("Arns") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("LaunchParameters") => String.t(),
        optional("Tags") => map(),
        optional("WorkingDirectory") => String.t(),
        required("AppBlockArn") => String.t(),
        required("IconS3Location") => s3_location(),
        required("InstanceFamilies") => list(String.t()),
        required("LaunchPath") => String.t(),
        required("Name") => String.t(),
        required("Platforms") => list(list(any())())
      }
      
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_result() :: %{}
      
  """
  @type delete_fleet_result() :: %{}

  @typedoc """

  ## Example:
      
      start_fleet_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type start_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_builder_result() :: %{
        "ImageBuilder" => image_builder()
      }
      
  """
  @type delete_image_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "ErrorTimestamp" => non_neg_integer()
      }
      
  """
  @type resource_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_permitted_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_not_permitted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "S3Bucket" => String.t(),
        "S3Key" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_app_block_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_app_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_theme_for_stack_result() :: %{
        "Theme" => theme()
      }
      
  """
  @type update_theme_for_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_app_block_builder_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type stop_app_block_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_permissions_request() :: %{
        required("ImagePermissions") => image_permissions(),
        required("Name") => String.t(),
        required("SharedAccountId") => String.t()
      }
      
  """
  @type update_image_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_app_block_builder_app_block_request() :: %{
        required("AppBlockArn") => String.t(),
        required("AppBlockBuilderName") => String.t()
      }
      
  """
  @type disassociate_app_block_builder_app_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app_block_builder_app_block_association() :: %{
        "AppBlockArn" => String.t(),
        "AppBlockBuilderName" => String.t()
      }
      
  """
  @type app_block_builder_app_block_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_fleet_result() :: %{}
      
  """
  @type associate_fleet_result() :: %{}

  @typedoc """

  ## Example:
      
      session() :: %{
        "AuthenticationType" => list(any()),
        "ConnectionState" => list(any()),
        "FleetName" => String.t(),
        "Id" => String.t(),
        "InstanceId" => String.t(),
        "MaxExpirationTime" => non_neg_integer(),
        "NetworkAccessConfiguration" => network_access_configuration(),
        "StackName" => String.t(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "UserId" => String.t()
      }
      
  """
  @type session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_result() :: %{
        "Stack" => stack()
      }
      
  """
  @type update_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entitled_applications_result() :: %{
        "EntitledApplications" => list(entitled_application()),
        "NextToken" => String.t()
      }
      
  """
  @type list_entitled_applications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      streaming_experience_settings() :: %{
        "PreferredProtocol" => list(any())
      }
      
  """
  @type streaming_experience_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("AuthenticationType") => list(any()),
        required("UserName") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entitlement_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_directory_config_result() :: %{}
      
  """
  @type delete_directory_config_result() :: %{}

  @typedoc """

  ## Example:
      
      invalid_role_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_role_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_streaming_url_request() :: %{
        optional("ApplicationId") => String.t(),
        optional("SessionContext") => String.t(),
        optional("Validity") => float(),
        required("FleetName") => String.t(),
        required("StackName") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type create_streaming_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_builder_streaming_url_request() :: %{
        optional("Validity") => float(),
        required("Name") => String.t()
      }
      
  """
  @type create_image_builder_streaming_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("AppBlockArn") => String.t(),
        optional("AttributesToDelete") => list(list(any())()),
        optional("Description") => String.t(),
        optional("DisplayName") => String.t(),
        optional("IconS3Location") => s3_location(),
        optional("LaunchParameters") => String.t(),
        optional("LaunchPath") => String.t(),
        optional("WorkingDirectory") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_builder_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_image_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_account_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_account_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associated_fleets_request() :: %{
        optional("NextToken") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type list_associated_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type stack_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associated_fleets_result() :: %{
        "Names" => list(String.t()),
        "NextToken" => String.t()
      }
      
  """
  @type list_associated_fleets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_user_stack_result() :: %{
        "errors" => list(user_stack_association_error())
      }
      
  """
  @type batch_disassociate_user_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_result() :: %{}
      
  """
  @type delete_application_result() :: %{}

  @typedoc """

  ## Example:
      
      batch_associate_user_stack_request() :: %{
        required("UserStackAssociations") => list(user_stack_association())
      }
      
  """
  @type batch_associate_user_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_users_result() :: %{
        "NextToken" => String.t(),
        "Users" => list(user())
      }
      
  """
  @type describe_users_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stacks_result() :: %{
        "NextToken" => String.t(),
        "Stacks" => list(stack())
      }
      
  """
  @type describe_stacks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_builder_state_change_reason() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }
      
  """
  @type image_builder_state_change_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_result() :: %{
        "Application" => application()
      }
      
  """
  @type update_application_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      theme_footer_link() :: %{
        "DisplayName" => String.t(),
        "FooterLinkURL" => String.t()
      }
      
  """
  @type theme_footer_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement() :: %{
        "AppVisibility" => list(any()),
        "Attributes" => list(entitlement_attribute()),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "StackName" => String.t()
      }
      
  """
  @type entitlement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image() :: %{
        "Applications" => list(application()),
        "AppstreamAgentVersion" => String.t(),
        "Arn" => String.t(),
        "BaseImageArn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisplayName" => String.t(),
        "DynamicAppProvidersEnabled" => list(any()),
        "ImageBuilderName" => String.t(),
        "ImageBuilderSupported" => boolean(),
        "ImageErrors" => list(resource_error()),
        "ImagePermissions" => image_permissions(),
        "ImageSharedWithOthers" => list(any()),
        "LatestAppstreamAgentVersion" => list(any()),
        "Name" => String.t(),
        "Platform" => list(any()),
        "PublicBaseImageReleasedDate" => non_neg_integer(),
        "State" => list(any()),
        "StateChangeReason" => image_state_change_reason(),
        "SupportedInstanceFamilies" => list(String.t()),
        "Visibility" => list(any())
      }
      
  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entitlements_result() :: %{
        "Entitlements" => list(entitlement()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_entitlements_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shared_image_permissions() :: %{
        "imagePermissions" => image_permissions(),
        "sharedAccountId" => String.t()
      }
      
  """
  @type shared_image_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_settings() :: %{
        "Enabled" => boolean(),
        "SettingsGroup" => String.t()
      }
      
  """
  @type application_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      incompatible_image_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type incompatible_image_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_image_builder_streaming_url_result() :: %{
        "Expires" => non_neg_integer(),
        "StreamingURL" => String.t()
      }
      
  """
  @type create_image_builder_streaming_url_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_result() :: %{
        "Fleet" => fleet()
      }
      
  """
  @type create_fleet_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_block_builder_app_block_associations_result() :: %{
        "AppBlockBuilderAppBlockAssociations" => list(app_block_builder_app_block_association()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_app_block_builder_app_block_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      directory_config() :: %{
        "CertificateBasedAuthProperties" => certificate_based_auth_properties(),
        "CreatedTime" => non_neg_integer(),
        "DirectoryName" => String.t(),
        "OrganizationalUnitDistinguishedNames" => list(String.t()),
        "ServiceAccountCredentials" => service_account_credentials()
      }
      
  """
  @type directory_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_associate_user_stack_result() :: %{
        "errors" => list(user_stack_association_error())
      }
      
  """
  @type batch_associate_user_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_permissions_result() :: %{
        "Name" => String.t(),
        "NextToken" => String.t(),
        "SharedImagePermissionsList" => list(shared_image_permissions())
      }
      
  """
  @type describe_image_permissions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_result() :: %{}
      
  """
  @type delete_user_result() :: %{}

  @typedoc """

  ## Example:
      
      associate_app_block_builder_app_block_request() :: %{
        required("AppBlockArn") => String.t(),
        required("AppBlockBuilderName") => String.t()
      }
      
  """
  @type associate_app_block_builder_app_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_block_builder_result() :: %{
        "AppBlockBuilder" => app_block_builder()
      }
      
  """
  @type create_app_block_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_account_credentials() :: %{
        "AccountName" => String.t(),
        "AccountPassword" => String.t()
      }
      
  """
  @type service_account_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fleet_result() :: %{}
      
  """
  @type start_fleet_result() :: %{}

  @typedoc """

  ## Example:
      
      enable_user_request() :: %{
        required("AuthenticationType") => list(any()),
        required("UserName") => String.t()
      }
      
  """
  @type enable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script_details() :: %{
        "ExecutableParameters" => String.t(),
        "ExecutablePath" => String.t(),
        "ScriptS3Location" => s3_location(),
        "TimeoutInSeconds" => integer()
      }
      
  """
  @type script_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_fleet_request() :: %{
        required("FleetName") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type disassociate_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_entitlement_request() :: %{
        required("Name") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type delete_entitlement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_result() :: %{}
      
  """
  @type delete_stack_result() :: %{}

  @typedoc """

  ## Example:
      
      user() :: %{
        "Arn" => String.t(),
        "AuthenticationType" => list(any()),
        "CreatedTime" => non_neg_integer(),
        "Enabled" => boolean(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "Status" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_sessions_request() :: %{
        optional("AuthenticationType") => list(any()),
        optional("InstanceId") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("UserId") => String.t(),
        required("FleetName") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type describe_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_usage_report_subscription_result() :: %{
        "S3BucketName" => String.t(),
        "Schedule" => list(any())
      }
      
  """
  @type create_usage_report_subscription_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_directory_config_result() :: %{
        "DirectoryConfig" => directory_config()
      }
      
  """
  @type create_directory_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      last_report_generation_execution_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type last_report_generation_execution_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleets_result() :: %{
        "Fleets" => list(fleet()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_theme_for_stack_request() :: %{
        required("StackName") => String.t()
      }
      
  """
  @type delete_theme_for_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_usage_report_subscriptions_result() :: %{
        "NextToken" => String.t(),
        "UsageReportSubscriptions" => list(usage_report_subscription())
      }
      
  """
  @type describe_usage_report_subscriptions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_associated_stacks_result() :: %{
        "Names" => list(String.t()),
        "NextToken" => String.t()
      }
      
  """
  @type list_associated_stacks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_fleet_request() :: %{
        required("FleetName") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type associate_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_app_block_builders_request() :: %{
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_app_block_builders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_stack_associations_request() :: %{
        optional("AuthenticationType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StackName") => String.t(),
        optional("UserName") => String.t()
      }
      
  """
  @type describe_user_stack_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_image_builder_result() :: %{
        "ImageBuilder" => image_builder()
      }
      
  """
  @type stop_image_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_app_block_builder_result() :: %{
        "AppBlockBuilder" => app_block_builder()
      }
      
  """
  @type start_app_block_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_image_builder_request() :: %{
        optional("AppstreamAgentVersion") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type start_image_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_app_block_builder_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type start_app_block_builder_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_app_block_builder_result() :: %{
        "AppBlockBuilder" => app_block_builder()
      }
      
  """
  @type update_app_block_builder_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_image_permissions_result() :: %{}
      
  """
  @type delete_image_permissions_result() :: %{}

  @typedoc """

  ## Example:
      
      entitlement_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type entitlement_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_entitlement_request() :: %{
        optional("AppVisibility") => list(any()),
        optional("Attributes") => list(entitlement_attribute()),
        optional("Description") => String.t(),
        required("Name") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type update_entitlement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_fleet_associations_result() :: %{
        "ApplicationFleetAssociations" => list(application_fleet_association()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_application_fleet_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_image_permissions_result() :: %{}
      
  """
  @type update_image_permissions_result() :: %{}

  @typedoc """

  ## Example:
      
      disable_user_request() :: %{
        required("AuthenticationType") => list(any()),
        required("UserName") => String.t()
      }
      
  """
  @type disable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_theme_for_stack_result() :: %{
        "Theme" => theme()
      }
      
  """
  @type create_theme_for_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_settings_response() :: %{
        "Enabled" => boolean(),
        "S3BucketName" => String.t(),
        "SettingsGroup" => String.t()
      }
      
  """
  @type application_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_theme_for_stack_request() :: %{
        optional("FooterLinks") => list(theme_footer_link()),
        required("FaviconS3Location") => s3_location(),
        required("OrganizationLogoS3Location") => s3_location(),
        required("StackName") => String.t(),
        required("ThemeStyling") => list(any()),
        required("TitleText") => String.t()
      }
      
  """
  @type create_theme_for_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_join_info() :: %{
        "DirectoryName" => String.t(),
        "OrganizationalUnitDistinguishedName" => String.t()
      }
      
  """
  @type domain_join_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleets_request() :: %{
        optional("Names") => list(String.t()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet() :: %{
        "Arn" => String.t(),
        "ComputeCapacityStatus" => compute_capacity_status(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "DisconnectTimeoutInSeconds" => integer(),
        "DisplayName" => String.t(),
        "DomainJoinInfo" => domain_join_info(),
        "EnableDefaultInternetAccess" => boolean(),
        "FleetErrors" => list(fleet_error()),
        "FleetType" => list(any()),
        "IamRoleArn" => String.t(),
        "IdleDisconnectTimeoutInSeconds" => integer(),
        "ImageArn" => String.t(),
        "ImageName" => String.t(),
        "InstanceType" => String.t(),
        "MaxConcurrentSessions" => integer(),
        "MaxSessionsPerInstance" => integer(),
        "MaxUserDurationInSeconds" => integer(),
        "Name" => String.t(),
        "Platform" => list(any()),
        "SessionScriptS3Location" => s3_location(),
        "State" => list(any()),
        "StreamView" => list(any()),
        "UsbDeviceFilterStrings" => list(String.t()),
        "VpcConfig" => vpc_config()
      }
      
  """
  @type fleet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entitlements_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type describe_entitlements_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_applications_result() :: %{
        "Applications" => list(application()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_applications_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entitled_application() :: %{
        "ApplicationIdentifier" => String.t()
      }
      
  """
  @type entitled_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_sessions_result() :: %{
        "NextToken" => String.t(),
        "Sessions" => list(session())
      }
      
  """
  @type describe_sessions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_stack_association_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "UserStackAssociation" => user_stack_association()
      }
      
  """
  @type user_stack_association_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("FirstName") => String.t(),
        optional("LastName") => String.t(),
        optional("MessageAction") => list(any()),
        required("AuthenticationType") => list(any()),
        required("UserName") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_entitlement_request() :: %{
        optional("Description") => String.t(),
        required("AppVisibility") => list(any()),
        required("Attributes") => list(entitlement_attribute()),
        required("Name") => String.t(),
        required("StackName") => String.t()
      }
      
  """
  @type create_entitlement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_directory_config_request() :: %{
        optional("CertificateBasedAuthProperties") => certificate_based_auth_properties(),
        optional("ServiceAccountCredentials") => service_account_credentials(),
        required("DirectoryName") => String.t(),
        required("OrganizationalUnitDistinguishedNames") => list(String.t())
      }
      
  """
  @type create_directory_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_directory_config_request() :: %{
        required("DirectoryName") => String.t()
      }
      
  """
  @type delete_directory_config_request() :: %{String.t() => any()}

  @type associate_app_block_builder_app_block_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()

  @type associate_application_fleet_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()

  @type associate_application_to_entitlement_errors() ::
          limit_exceeded_exception()
          | entitlement_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type associate_fleet_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type batch_associate_user_stack_errors() ::
          operation_not_permitted_exception() | invalid_parameter_combination_exception()

  @type batch_disassociate_user_stack_errors() ::
          operation_not_permitted_exception() | invalid_parameter_combination_exception()

  @type copy_image_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | resource_not_found_exception()
          | resource_not_available_exception()

  @type create_app_block_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | operation_not_permitted_exception()

  @type create_app_block_builder_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | resource_not_available_exception()
          | request_limit_exceeded_exception()

  @type create_app_block_builder_streaming_url_errors() ::
          operation_not_permitted_exception() | resource_not_found_exception()

  @type create_application_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type create_directory_config_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type create_entitlement_errors() ::
          entitlement_already_exists_exception()
          | limit_exceeded_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type create_fleet_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | resource_not_available_exception()
          | request_limit_exceeded_exception()

  @type create_image_builder_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | resource_not_available_exception()
          | request_limit_exceeded_exception()

  @type create_image_builder_streaming_url_errors() ::
          operation_not_permitted_exception() | resource_not_found_exception()

  @type create_stack_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()

  @type create_streaming_url_errors() ::
          operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | resource_not_available_exception()

  @type create_theme_for_stack_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_account_status_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type create_updated_image_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type create_usage_report_subscription_errors() ::
          limit_exceeded_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()

  @type create_user_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_account_status_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_combination_exception()

  @type delete_app_block_errors() ::
          concurrent_modification_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_app_block_builder_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_directory_config_errors() ::
          resource_not_found_exception() | resource_in_use_exception()

  @type delete_entitlement_errors() ::
          concurrent_modification_exception()
          | entitlement_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type delete_fleet_errors() ::
          concurrent_modification_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_image_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_image_builder_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type delete_image_permissions_errors() ::
          resource_not_found_exception() | resource_not_available_exception()

  @type delete_stack_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_theme_for_stack_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type delete_usage_report_subscription_errors() ::
          invalid_account_status_exception() | resource_not_found_exception()

  @type delete_user_errors() :: resource_not_found_exception()

  @type describe_app_block_builder_app_block_associations_errors() ::
          operation_not_permitted_exception() | invalid_parameter_combination_exception()

  @type describe_app_block_builders_errors() ::
          operation_not_permitted_exception() | resource_not_found_exception()

  @type describe_app_blocks_errors() ::
          operation_not_permitted_exception() | resource_not_found_exception()

  @type describe_application_fleet_associations_errors() ::
          operation_not_permitted_exception() | invalid_parameter_combination_exception()

  @type describe_applications_errors() ::
          operation_not_permitted_exception() | resource_not_found_exception()

  @type describe_directory_configs_errors() :: resource_not_found_exception()

  @type describe_entitlements_errors() ::
          entitlement_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type describe_fleets_errors() :: resource_not_found_exception()

  @type describe_image_builders_errors() :: resource_not_found_exception()

  @type describe_image_permissions_errors() :: resource_not_found_exception()

  @type describe_images_errors() ::
          resource_not_found_exception() | invalid_parameter_combination_exception()

  @type describe_sessions_errors() :: invalid_parameter_combination_exception()

  @type describe_stacks_errors() :: resource_not_found_exception()

  @type describe_theme_for_stack_errors() ::
          operation_not_permitted_exception() | resource_not_found_exception()

  @type describe_usage_report_subscriptions_errors() ::
          invalid_account_status_exception() | resource_not_found_exception()

  @type describe_user_stack_associations_errors() ::
          operation_not_permitted_exception() | invalid_parameter_combination_exception()

  @type describe_users_errors() ::
          operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()

  @type disable_user_errors() :: resource_not_found_exception()

  @type disassociate_app_block_builder_app_block_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()

  @type disassociate_application_fleet_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_combination_exception()

  @type disassociate_application_from_entitlement_errors() ::
          entitlement_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type disassociate_fleet_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type enable_user_errors() ::
          invalid_account_status_exception() | resource_not_found_exception()

  @type list_entitled_applications_errors() ::
          entitlement_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type start_app_block_builder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_account_status_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_not_available_exception()
          | request_limit_exceeded_exception()

  @type start_fleet_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_not_available_exception()
          | request_limit_exceeded_exception()

  @type start_image_builder_errors() ::
          concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | resource_not_found_exception()
          | resource_not_available_exception()

  @type stop_app_block_builder_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type stop_fleet_errors() ::
          concurrent_modification_exception() | resource_not_found_exception()

  @type stop_image_builder_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | invalid_account_status_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_app_block_builder_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | resource_not_available_exception()
          | request_limit_exceeded_exception()
          | resource_in_use_exception()

  @type update_application_errors() ::
          concurrent_modification_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type update_directory_config_errors() ::
          concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_entitlement_errors() ::
          concurrent_modification_exception()
          | entitlement_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()

  @type update_fleet_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | resource_not_available_exception()
          | request_limit_exceeded_exception()
          | resource_in_use_exception()

  @type update_image_permissions_errors() ::
          limit_exceeded_exception()
          | resource_not_found_exception()
          | resource_not_available_exception()

  @type update_stack_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | incompatible_image_exception()
          | invalid_account_status_exception()
          | invalid_role_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()
          | resource_in_use_exception()

  @type update_theme_for_stack_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_account_status_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | invalid_parameter_combination_exception()

  def metadata do
    %{
      api_version: "2016-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appstream2",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "AppStream",
      signature_version: "v4",
      signing_name: "appstream",
      target_prefix: "PhotonAdminProxyService"
    }
  end

  @doc """
  Associates the specified app block builder with the specified app block.
  """
  @spec associate_app_block_builder_app_block(
          map(),
          associate_app_block_builder_app_block_request(),
          list()
        ) ::
          {:ok, associate_app_block_builder_app_block_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_app_block_builder_app_block_errors()}
  def associate_app_block_builder_app_block(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateAppBlockBuilderAppBlock", input, options)
  end

  @doc """
  Associates the specified application with the specified fleet.

  This is only supported for Elastic fleets.
  """
  @spec associate_application_fleet(map(), associate_application_fleet_request(), list()) ::
          {:ok, associate_application_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_application_fleet_errors()}
  def associate_application_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateApplicationFleet", input, options)
  end

  @doc """
  Associates an application to entitle.
  """
  @spec associate_application_to_entitlement(
          map(),
          associate_application_to_entitlement_request(),
          list()
        ) ::
          {:ok, associate_application_to_entitlement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_application_to_entitlement_errors()}
  def associate_application_to_entitlement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateApplicationToEntitlement", input, options)
  end

  @doc """
  Associates the specified fleet with the specified stack.
  """
  @spec associate_fleet(map(), associate_fleet_request(), list()) ::
          {:ok, associate_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_fleet_errors()}
  def associate_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateFleet", input, options)
  end

  @doc """
  Associates the specified users with the specified stacks.

  Users in a user pool cannot be assigned to stacks with fleets that are joined to
  an Active Directory domain.
  """
  @spec batch_associate_user_stack(map(), batch_associate_user_stack_request(), list()) ::
          {:ok, batch_associate_user_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_user_stack_errors()}
  def batch_associate_user_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchAssociateUserStack", input, options)
  end

  @doc """
  Disassociates the specified users from the specified stacks.
  """
  @spec batch_disassociate_user_stack(map(), batch_disassociate_user_stack_request(), list()) ::
          {:ok, batch_disassociate_user_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_user_stack_errors()}
  def batch_disassociate_user_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDisassociateUserStack", input, options)
  end

  @doc """
  Copies the image within the same region or to a new region within the same AWS
  account.

  Note that any tags you added to the image will not be copied.
  """
  @spec copy_image(map(), copy_image_request(), list()) ::
          {:ok, copy_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_image_errors()}
  def copy_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CopyImage", input, options)
  end

  @doc """
  Creates an app block.

  App blocks are an Amazon AppStream 2.0 resource that stores the details about
  the
  virtual hard disk in an S3 bucket. It also stores the setup script with details
  about
  how to mount the virtual hard disk. The virtual hard disk includes the
  application
  binaries and other files necessary to launch your applications. Multiple
  applications
  can be assigned to a single app block.

  This is only supported for Elastic fleets.
  """
  @spec create_app_block(map(), create_app_block_request(), list()) ::
          {:ok, create_app_block_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_block_errors()}
  def create_app_block(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAppBlock", input, options)
  end

  @doc """
  Creates an app block builder.
  """
  @spec create_app_block_builder(map(), create_app_block_builder_request(), list()) ::
          {:ok, create_app_block_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_block_builder_errors()}
  def create_app_block_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAppBlockBuilder", input, options)
  end

  @doc """
  Creates a URL to start a create app block builder streaming session.
  """
  @spec create_app_block_builder_streaming_url(
          map(),
          create_app_block_builder_streaming_url_request(),
          list()
        ) ::
          {:ok, create_app_block_builder_streaming_url_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_block_builder_streaming_url_errors()}
  def create_app_block_builder_streaming_url(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAppBlockBuilderStreamingURL", input, options)
  end

  @doc """
  Creates an application.

  Applications are an Amazon AppStream 2.0 resource that stores the details about
  how to
  launch applications on Elastic fleet streaming instances. An application
  consists of the
  launch details, icon, and display name. Applications are associated with an app
  block
  that contains the application binaries and other files. The applications
  assigned to an
  Elastic fleet are the applications users can launch.

  This is only supported for Elastic fleets.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates a Directory Config object in AppStream 2.0.

  This object includes the configuration information required to join fleets and
  image builders to Microsoft Active Directory domains.
  """
  @spec create_directory_config(map(), create_directory_config_request(), list()) ::
          {:ok, create_directory_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_directory_config_errors()}
  def create_directory_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDirectoryConfig", input, options)
  end

  @doc """
  Creates a new entitlement.

  Entitlements control access to specific applications within
  a stack, based on user attributes. Entitlements apply to SAML 2.0 federated user
  identities. Amazon AppStream 2.0 user pool and streaming URL users are entitled
  to all
  applications in a stack. Entitlements don't apply to the desktop stream view
  application, or to applications managed by a dynamic app provider using the
  Dynamic
  Application Framework.
  """
  @spec create_entitlement(map(), create_entitlement_request(), list()) ::
          {:ok, create_entitlement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_entitlement_errors()}
  def create_entitlement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEntitlement", input, options)
  end

  @doc """
  Creates a fleet.

  A fleet consists of streaming instances that your users access for their
  applications and desktops.
  """
  @spec create_fleet(map(), create_fleet_request(), list()) ::
          {:ok, create_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFleet", input, options)
  end

  @doc """
  Creates an image builder.

  An image builder is a virtual machine that is used to create an image.

  The initial state of the builder is `PENDING`. When it is ready, the state is
  `RUNNING`.
  """
  @spec create_image_builder(map(), create_image_builder_request(), list()) ::
          {:ok, create_image_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_image_builder_errors()}
  def create_image_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateImageBuilder", input, options)
  end

  @doc """
  Creates a URL to start an image builder streaming session.
  """
  @spec create_image_builder_streaming_url(
          map(),
          create_image_builder_streaming_url_request(),
          list()
        ) ::
          {:ok, create_image_builder_streaming_url_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_image_builder_streaming_url_errors()}
  def create_image_builder_streaming_url(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateImageBuilderStreamingURL", input, options)
  end

  @doc """
  Creates a stack to start streaming applications to users.

  A stack consists of an associated fleet, user access policies, and storage
  configurations.
  """
  @spec create_stack(map(), create_stack_request(), list()) ::
          {:ok, create_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stack_errors()}
  def create_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStack", input, options)
  end

  @doc """
  Creates a temporary URL to start an AppStream 2.0 streaming session for the
  specified user.

  A streaming URL enables application streaming to be tested without user setup.
  """
  @spec create_streaming_url(map(), create_streaming_url_request(), list()) ::
          {:ok, create_streaming_url_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_streaming_url_errors()}
  def create_streaming_url(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStreamingURL", input, options)
  end

  @doc """
  Creates custom branding that customizes the appearance of the streaming
  application catalog page.
  """
  @spec create_theme_for_stack(map(), create_theme_for_stack_request(), list()) ::
          {:ok, create_theme_for_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_theme_for_stack_errors()}
  def create_theme_for_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateThemeForStack", input, options)
  end

  @doc """
  Creates a new image with the latest Windows operating system updates, driver
  updates, and AppStream 2.0 agent software.

  For more information, see the "Update an Image by Using
  Managed AppStream 2.0 Image Updates" section in [Administer Your AppStream 2.0 Images](https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html),
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  @spec create_updated_image(map(), create_updated_image_request(), list()) ::
          {:ok, create_updated_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_updated_image_errors()}
  def create_updated_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUpdatedImage", input, options)
  end

  @doc """
  Creates a usage report subscription.

  Usage reports are generated daily.
  """
  @spec create_usage_report_subscription(
          map(),
          create_usage_report_subscription_request(),
          list()
        ) ::
          {:ok, create_usage_report_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_usage_report_subscription_errors()}
  def create_usage_report_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUsageReportSubscription", input, options)
  end

  @doc """
  Creates a new user in the user pool.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Deletes an app block.
  """
  @spec delete_app_block(map(), delete_app_block_request(), list()) ::
          {:ok, delete_app_block_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_block_errors()}
  def delete_app_block(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAppBlock", input, options)
  end

  @doc """
  Deletes an app block builder.

  An app block builder can only be deleted when it has no association with an app
  block.
  """
  @spec delete_app_block_builder(map(), delete_app_block_builder_request(), list()) ::
          {:ok, delete_app_block_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_block_builder_errors()}
  def delete_app_block_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAppBlockBuilder", input, options)
  end

  @doc """
  Deletes an application.
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, delete_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes the specified Directory Config object from AppStream 2.0.

  This object includes the information required to join streaming instances to an
  Active Directory domain.
  """
  @spec delete_directory_config(map(), delete_directory_config_request(), list()) ::
          {:ok, delete_directory_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_directory_config_errors()}
  def delete_directory_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDirectoryConfig", input, options)
  end

  @doc """
  Deletes the specified entitlement.
  """
  @spec delete_entitlement(map(), delete_entitlement_request(), list()) ::
          {:ok, delete_entitlement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_entitlement_errors()}
  def delete_entitlement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEntitlement", input, options)
  end

  @doc """
  Deletes the specified fleet.
  """
  @spec delete_fleet(map(), delete_fleet_request(), list()) ::
          {:ok, delete_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFleet", input, options)
  end

  @doc """
  Deletes the specified image.

  You cannot delete an image when it is in use.
  After you delete an image, you cannot provision new capacity using the image.
  """
  @spec delete_image(map(), delete_image_request(), list()) ::
          {:ok, delete_image_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_image_errors()}
  def delete_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteImage", input, options)
  end

  @doc """
  Deletes the specified image builder and releases the capacity.
  """
  @spec delete_image_builder(map(), delete_image_builder_request(), list()) ::
          {:ok, delete_image_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_image_builder_errors()}
  def delete_image_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteImageBuilder", input, options)
  end

  @doc """
  Deletes permissions for the specified private image.

  After you delete permissions for an image, AWS accounts to which you previously
  granted these permissions can no longer use the image.
  """
  @spec delete_image_permissions(map(), delete_image_permissions_request(), list()) ::
          {:ok, delete_image_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_image_permissions_errors()}
  def delete_image_permissions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteImagePermissions", input, options)
  end

  @doc """
  Deletes the specified stack.

  After the stack is deleted, the application streaming environment provided by
  the stack is no longer available to users. Also, any reservations made for
  application streaming sessions for the stack are released.
  """
  @spec delete_stack(map(), delete_stack_request(), list()) ::
          {:ok, delete_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_stack_errors()}
  def delete_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteStack", input, options)
  end

  @doc """
  Deletes custom branding that customizes the appearance of the streaming
  application catalog page.
  """
  @spec delete_theme_for_stack(map(), delete_theme_for_stack_request(), list()) ::
          {:ok, delete_theme_for_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_theme_for_stack_errors()}
  def delete_theme_for_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteThemeForStack", input, options)
  end

  @doc """
  Disables usage report generation.
  """
  @spec delete_usage_report_subscription(
          map(),
          delete_usage_report_subscription_request(),
          list()
        ) ::
          {:ok, delete_usage_report_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_usage_report_subscription_errors()}
  def delete_usage_report_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUsageReportSubscription", input, options)
  end

  @doc """
  Deletes a user from the user pool.
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, delete_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Retrieves a list that describes one or more app block builder associations.
  """
  @spec describe_app_block_builder_app_block_associations(
          map(),
          describe_app_block_builder_app_block_associations_request(),
          list()
        ) ::
          {:ok, describe_app_block_builder_app_block_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_block_builder_app_block_associations_errors()}
  def describe_app_block_builder_app_block_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeAppBlockBuilderAppBlockAssociations",
      input,
      options
    )
  end

  @doc """
  Retrieves a list that describes one or more app block builders.
  """
  @spec describe_app_block_builders(map(), describe_app_block_builders_request(), list()) ::
          {:ok, describe_app_block_builders_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_block_builders_errors()}
  def describe_app_block_builders(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAppBlockBuilders", input, options)
  end

  @doc """
  Retrieves a list that describes one or more app blocks.
  """
  @spec describe_app_blocks(map(), describe_app_blocks_request(), list()) ::
          {:ok, describe_app_blocks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_blocks_errors()}
  def describe_app_blocks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAppBlocks", input, options)
  end

  @doc """
  Retrieves a list that describes one or more application fleet associations.

  Either ApplicationArn or FleetName must be specified.
  """
  @spec describe_application_fleet_associations(
          map(),
          describe_application_fleet_associations_request(),
          list()
        ) ::
          {:ok, describe_application_fleet_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_fleet_associations_errors()}
  def describe_application_fleet_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplicationFleetAssociations", input, options)
  end

  @doc """
  Retrieves a list that describes one or more applications.
  """
  @spec describe_applications(map(), describe_applications_request(), list()) ::
          {:ok, describe_applications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_applications_errors()}
  def describe_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplications", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified Directory Config objects
  for AppStream 2.0, if the names for these objects are provided.

  Otherwise, all Directory Config objects in the account are described. These
  objects include the configuration information required to join fleets and image
  builders to Microsoft Active Directory domains.

  Although the response syntax in this topic includes the account password, this
  password is not returned in the actual response.
  """
  @spec describe_directory_configs(map(), describe_directory_configs_request(), list()) ::
          {:ok, describe_directory_configs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_directory_configs_errors()}
  def describe_directory_configs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDirectoryConfigs", input, options)
  end

  @doc """
  Retrieves a list that describes one of more entitlements.
  """
  @spec describe_entitlements(map(), describe_entitlements_request(), list()) ::
          {:ok, describe_entitlements_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_entitlements_errors()}
  def describe_entitlements(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEntitlements", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified fleets, if the fleet names
  are provided.

  Otherwise, all fleets in the account are described.
  """
  @spec describe_fleets(map(), describe_fleets_request(), list()) ::
          {:ok, describe_fleets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleets_errors()}
  def describe_fleets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFleets", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified image builders, if the
  image builder names are provided.

  Otherwise, all image builders in the account are described.
  """
  @spec describe_image_builders(map(), describe_image_builders_request(), list()) ::
          {:ok, describe_image_builders_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_image_builders_errors()}
  def describe_image_builders(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImageBuilders", input, options)
  end

  @doc """
  Retrieves a list that describes the permissions for shared AWS account IDs on a
  private image that you own.
  """
  @spec describe_image_permissions(map(), describe_image_permissions_request(), list()) ::
          {:ok, describe_image_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_image_permissions_errors()}
  def describe_image_permissions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImagePermissions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified images, if the image names
  or image ARNs are provided.

  Otherwise, all images in the account are described.
  """
  @spec describe_images(map(), describe_images_request(), list()) ::
          {:ok, describe_images_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_images_errors()}
  def describe_images(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImages", input, options)
  end

  @doc """
  Retrieves a list that describes the streaming sessions for a specified stack and
  fleet.

  If a UserId is provided for the stack and fleet,
  only streaming sessions for that user are described. If an authentication type
  is not provided,
  the default is to authenticate users using a streaming URL.
  """
  @spec describe_sessions(map(), describe_sessions_request(), list()) ::
          {:ok, describe_sessions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_sessions_errors()}
  def describe_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSessions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified stacks, if the stack names
  are provided.

  Otherwise, all stacks in the account are described.
  """
  @spec describe_stacks(map(), describe_stacks_request(), list()) ::
          {:ok, describe_stacks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stacks_errors()}
  def describe_stacks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeStacks", input, options)
  end

  @doc """
  Retrieves a list that describes the theme for a specified stack.

  A theme is custom branding that customizes the appearance of the streaming
  application catalog page.
  """
  @spec describe_theme_for_stack(map(), describe_theme_for_stack_request(), list()) ::
          {:ok, describe_theme_for_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_theme_for_stack_errors()}
  def describe_theme_for_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeThemeForStack", input, options)
  end

  @doc """
  Retrieves a list that describes one or more usage report subscriptions.
  """
  @spec describe_usage_report_subscriptions(
          map(),
          describe_usage_report_subscriptions_request(),
          list()
        ) ::
          {:ok, describe_usage_report_subscriptions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_usage_report_subscriptions_errors()}
  def describe_usage_report_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUsageReportSubscriptions", input, options)
  end

  @doc """
  Retrieves a list that describes the UserStackAssociation objects.

  You must specify either or both of the following:

    *
  The stack name

    *
  The user name (email address of the user associated with the stack) and the
  authentication type for the user
  """
  @spec describe_user_stack_associations(
          map(),
          describe_user_stack_associations_request(),
          list()
        ) ::
          {:ok, describe_user_stack_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_stack_associations_errors()}
  def describe_user_stack_associations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserStackAssociations", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified users in the user pool.
  """
  @spec describe_users(map(), describe_users_request(), list()) ::
          {:ok, describe_users_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_users_errors()}
  def describe_users(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUsers", input, options)
  end

  @doc """
  Disables the specified user in the user pool.

  Users can't sign in to AppStream 2.0 until they are re-enabled. This action does
  not delete the user.
  """
  @spec disable_user(map(), disable_user_request(), list()) ::
          {:ok, disable_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_user_errors()}
  def disable_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableUser", input, options)
  end

  @doc """
  Disassociates a specified app block builder from a specified app block.
  """
  @spec disassociate_app_block_builder_app_block(
          map(),
          disassociate_app_block_builder_app_block_request(),
          list()
        ) ::
          {:ok, disassociate_app_block_builder_app_block_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_app_block_builder_app_block_errors()}
  def disassociate_app_block_builder_app_block(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateAppBlockBuilderAppBlock", input, options)
  end

  @doc """
  Disassociates the specified application from the fleet.
  """
  @spec disassociate_application_fleet(map(), disassociate_application_fleet_request(), list()) ::
          {:ok, disassociate_application_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_application_fleet_errors()}
  def disassociate_application_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateApplicationFleet", input, options)
  end

  @doc """
  Deletes the specified application from the specified entitlement.
  """
  @spec disassociate_application_from_entitlement(
          map(),
          disassociate_application_from_entitlement_request(),
          list()
        ) ::
          {:ok, disassociate_application_from_entitlement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_application_from_entitlement_errors()}
  def disassociate_application_from_entitlement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateApplicationFromEntitlement", input, options)
  end

  @doc """
  Disassociates the specified fleet from the specified stack.
  """
  @spec disassociate_fleet(map(), disassociate_fleet_request(), list()) ::
          {:ok, disassociate_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_fleet_errors()}
  def disassociate_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateFleet", input, options)
  end

  @doc """
  Enables a user in the user pool.

  After being enabled, users can sign in to AppStream 2.0 and open applications
  from the stacks to which they are assigned.
  """
  @spec enable_user(map(), enable_user_request(), list()) ::
          {:ok, enable_user_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_user_errors()}
  def enable_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableUser", input, options)
  end

  @doc """
  Immediately stops the specified streaming session.
  """
  @spec expire_session(map(), expire_session_request(), list()) ::
          {:ok, expire_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def expire_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExpireSession", input, options)
  end

  @doc """
  Retrieves the name of the fleet that is associated with the specified stack.
  """
  @spec list_associated_fleets(map(), list_associated_fleets_request(), list()) ::
          {:ok, list_associated_fleets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_associated_fleets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAssociatedFleets", input, options)
  end

  @doc """
  Retrieves the name of the stack with which the specified fleet is associated.
  """
  @spec list_associated_stacks(map(), list_associated_stacks_request(), list()) ::
          {:ok, list_associated_stacks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_associated_stacks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAssociatedStacks", input, options)
  end

  @doc """
  Retrieves a list of entitled applications.
  """
  @spec list_entitled_applications(map(), list_entitled_applications_request(), list()) ::
          {:ok, list_entitled_applications_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entitled_applications_errors()}
  def list_entitled_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEntitledApplications", input, options)
  end

  @doc """
  Retrieves a list of all tags for the specified AppStream 2.0 resource.

  You can tag AppStream 2.0 image builders, images, fleets, and stacks.

  For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
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
  Starts an app block builder.

  An app block builder can only be started when it's associated with an app
  block.

  Starting an app block builder starts a new instance, which is equivalent to an
  elastic
  fleet instance with application builder assistance functionality.
  """
  @spec start_app_block_builder(map(), start_app_block_builder_request(), list()) ::
          {:ok, start_app_block_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_app_block_builder_errors()}
  def start_app_block_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartAppBlockBuilder", input, options)
  end

  @doc """
  Starts the specified fleet.
  """
  @spec start_fleet(map(), start_fleet_request(), list()) ::
          {:ok, start_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_fleet_errors()}
  def start_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFleet", input, options)
  end

  @doc """
  Starts the specified image builder.
  """
  @spec start_image_builder(map(), start_image_builder_request(), list()) ::
          {:ok, start_image_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_image_builder_errors()}
  def start_image_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartImageBuilder", input, options)
  end

  @doc """
  Stops an app block builder.

  Stopping an app block builder terminates the instance, and the instance state is
  not
  persisted.
  """
  @spec stop_app_block_builder(map(), stop_app_block_builder_request(), list()) ::
          {:ok, stop_app_block_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_app_block_builder_errors()}
  def stop_app_block_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopAppBlockBuilder", input, options)
  end

  @doc """
  Stops the specified fleet.
  """
  @spec stop_fleet(map(), stop_fleet_request(), list()) ::
          {:ok, stop_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_fleet_errors()}
  def stop_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopFleet", input, options)
  end

  @doc """
  Stops the specified image builder.
  """
  @spec stop_image_builder(map(), stop_image_builder_request(), list()) ::
          {:ok, stop_image_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_image_builder_errors()}
  def stop_image_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopImageBuilder", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified AppStream 2.0 resource.

  You can tag AppStream 2.0 image builders, images, fleets, and stacks.

  Each tag consists of a key and an optional value. If a resource already has a
  tag with the same key,
  this operation updates its value.

  To list the current tags for your resources, use `ListTagsForResource`.
  To disassociate tags from your resources, use `UntagResource`.

  For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
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
  Disassociates one or more specified tags from the specified AppStream 2.0
  resource.

  To list the current tags for your resources, use `ListTagsForResource`.

  For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
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
  Updates an app block builder.

  If the app block builder is in the `STARTING` or `STOPPING`
  state, you can't update it. If the app block builder is in the `RUNNING`
  state, you can only update the DisplayName and Description. If the app block
  builder is
  in the `STOPPED` state, you can update any attribute except the Name.
  """
  @spec update_app_block_builder(map(), update_app_block_builder_request(), list()) ::
          {:ok, update_app_block_builder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_block_builder_errors()}
  def update_app_block_builder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAppBlockBuilder", input, options)
  end

  @doc """
  Updates the specified application.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, update_application_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Updates the specified Directory Config object in AppStream 2.0.

  This object includes the configuration information required to join fleets and
  image builders to Microsoft Active Directory domains.
  """
  @spec update_directory_config(map(), update_directory_config_request(), list()) ::
          {:ok, update_directory_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_directory_config_errors()}
  def update_directory_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDirectoryConfig", input, options)
  end

  @doc """
  Updates the specified entitlement.
  """
  @spec update_entitlement(map(), update_entitlement_request(), list()) ::
          {:ok, update_entitlement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_entitlement_errors()}
  def update_entitlement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEntitlement", input, options)
  end

  @doc """
  Updates the specified fleet.

  If the fleet is in the `STOPPED` state, you can update any attribute except
  the fleet name.

  If the fleet is in the `RUNNING` state, you can update the following based
  on the fleet type:

    *
  Always-On and On-Demand fleet types

  You can update the `DisplayName`, `ComputeCapacity`,
  `ImageARN`, `ImageName`,
  `IdleDisconnectTimeoutInSeconds`, and
  `DisconnectTimeoutInSeconds` attributes.

    *
  Elastic fleet type

  You can update the `DisplayName`,
  `IdleDisconnectTimeoutInSeconds`,
  `DisconnectTimeoutInSeconds`, `MaxConcurrentSessions`, `SessionScriptS3Location`
  and `UsbDeviceFilterStrings` attributes.

  If the fleet is in the `STARTING` or `STOPPED` state, you can't update it.
  """
  @spec update_fleet(map(), update_fleet_request(), list()) ::
          {:ok, update_fleet_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fleet_errors()}
  def update_fleet(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFleet", input, options)
  end

  @doc """
  Adds or updates permissions for the specified private image.
  """
  @spec update_image_permissions(map(), update_image_permissions_request(), list()) ::
          {:ok, update_image_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_image_permissions_errors()}
  def update_image_permissions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateImagePermissions", input, options)
  end

  @doc """
  Updates the specified fields for the specified stack.
  """
  @spec update_stack(map(), update_stack_request(), list()) ::
          {:ok, update_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_stack_errors()}
  def update_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateStack", input, options)
  end

  @doc """
  Updates custom branding that customizes the appearance of the streaming
  application catalog page.
  """
  @spec update_theme_for_stack(map(), update_theme_for_stack_request(), list()) ::
          {:ok, update_theme_for_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_theme_for_stack_errors()}
  def update_theme_for_stack(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateThemeForStack", input, options)
  end
end
