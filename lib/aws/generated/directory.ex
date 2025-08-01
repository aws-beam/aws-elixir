# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Directory do
  @moduledoc """
  Directory Service

  Directory Service is a web service that makes it easy for you to setup and run
  directories in the
  Amazon Web Services cloud, or connect your Amazon Web Services resources with an
  existing self-managed Microsoft Active
  Directory.

  This guide provides detailed information about Directory Service operations,
  data types,
  parameters, and errors. For information about Directory Services features, see
  [Directory Service](https://aws.amazon.com/directoryservice/) and the [Directory Service
  Administration
  Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).

  Amazon Web Services provides SDKs that consist of libraries and sample code for
  various
  programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The
  SDKs
  provide a convenient way to create programmatic access to Directory Service and
  other Amazon Web Services
  services. For more information about the Amazon Web Services SDKs, including how
  to download and
  install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      enable_radius_result() :: %{}
      
  """
  @type enable_radius_result() :: %{}

  @typedoc """

  ## Example:
      
      list_certificates_result() :: %{
        "CertificatesInfo" => list(certificate_info()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_certificates_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      domain_controller() :: %{
        "AvailabilityZone" => String.t() | atom(),
        "DirectoryId" => String.t() | atom(),
        "DnsIpAddr" => String.t() | atom(),
        "DomainControllerId" => String.t() | atom(),
        "LaunchTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusLastUpdatedDateTime" => non_neg_integer(),
        "StatusReason" => String.t() | atom(),
        "SubnetId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type domain_controller() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_log_subscription_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type delete_log_subscription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_already_exists_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type entity_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_authentication_setting_info() :: %{
        "LastUpdatedDateTime" => non_neg_integer(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type client_authentication_setting_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_value() :: %{
        "OSUpdateSettings" => o_s_update_settings()
      }
      
  """
  @type update_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_number_of_domain_controllers_result() :: %{}
      
  """
  @type update_number_of_domain_controllers_result() :: %{}

  @typedoc """

  ## Example:
      
      unshare_target() :: %{
        "Id" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type unshare_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_directory_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ShortName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("VpcSettings") => directory_vpc_settings(),
        required("Name") => String.t() | atom(),
        required("Password") => String.t() | atom(),
        required("Size") => list(any())
      }
      
  """
  @type create_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_request() :: %{
        required("SnapshotId") => String.t() | atom()
      }
      
  """
  @type delete_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ldaps_settings_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Type") => list(any()),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_ldaps_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      verify_trust_request() :: %{
        required("TrustId") => String.t() | atom()
      }
      
  """
  @type verify_trust_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_event_topics_request() :: %{
        optional("DirectoryId") => String.t() | atom(),
        optional("TopicNames") => list(String.t() | atom())
      }
      
  """
  @type describe_event_topics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ldaps_settings_result() :: %{
        "LDAPSSettingsInfo" => list(ldaps_setting_info()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_ldaps_settings_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_conditional_forwarder_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("DnsIpAddrs") => list(String.t() | atom()),
        required("RemoteDomainName") => String.t() | atom()
      }
      
  """
  @type update_conditional_forwarder_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type snapshot_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_route() :: %{
        "CidrIp" => String.t() | atom(),
        "Description" => String.t() | atom()
      }
      
  """
  @type ip_route() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_target_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type invalid_target_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_snapshot_limits_result() :: %{
        "SnapshotLimits" => snapshot_limits()
      }
      
  """
  @type get_snapshot_limits_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unshare_directory_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("UnshareTarget") => unshare_target()
      }
      
  """
  @type unshare_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      domain_controller_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type domain_controller_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_directory_result() :: %{
        "DirectoryId" => String.t() | atom()
      }
      
  """
  @type create_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type unsupported_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_ldaps_status_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type invalid_ldaps_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_trust_request() :: %{
        optional("ConditionalForwarderIpAddrs") => list(String.t() | atom()),
        optional("SelectiveAuth") => list(any()),
        optional("TrustType") => list(any()),
        required("DirectoryId") => String.t() | atom(),
        required("RemoteDomainName") => String.t() | atom(),
        required("TrustDirection") => list(any()),
        required("TrustPassword") => String.t() | atom()
      }
      
  """
  @type create_trust_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_ip_routes_result() :: %{}
      
  """
  @type remove_ip_routes_result() :: %{}

  @typedoc """

  ## Example:
      
      reject_shared_directory_request() :: %{
        required("SharedDirectoryId") => String.t() | atom()
      }
      
  """
  @type reject_shared_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      o_s_update_settings() :: %{
        "OSVersion" => list(any())
      }
      
  """
  @type o_s_update_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      insufficient_permissions_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type insufficient_permissions_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_info() :: %{
        "CertificateId" => String.t() | atom(),
        "CommonName" => String.t() | atom(),
        "ExpiryDateTime" => non_neg_integer(),
        "State" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type certificate_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setting() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_conditional_forwarder_result() :: %{}
      
  """
  @type create_conditional_forwarder_result() :: %{}

  @typedoc """

  ## Example:
      
      share_directory_request() :: %{
        optional("ShareNotes") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom(),
        required("ShareMethod") => list(any()),
        required("ShareTarget") => share_target()
      }
      
  """
  @type share_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      setting_entry() :: %{
        "AllowedValues" => String.t() | atom(),
        "AppliedValue" => String.t() | atom(),
        "DataType" => String.t() | atom(),
        "LastRequestedDateTime" => non_neg_integer(),
        "LastUpdatedDateTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "RequestDetailedStatus" => map(),
        "RequestStatus" => list(any()),
        "RequestStatusMessage" => String.t() | atom(),
        "RequestedValue" => String.t() | atom(),
        "Type" => String.t() | atom()
      }
      
  """
  @type setting_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_conditional_forwarder_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("DnsIpAddrs") => list(String.t() | atom()),
        required("RemoteDomainName") => String.t() | atom()
      }
      
  """
  @type create_conditional_forwarder_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_alias_request() :: %{
        required("Alias") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type create_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      no_available_certificate_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type no_available_certificate_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_in_desired_state_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type directory_in_desired_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      region_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type region_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_request() :: %{
        optional("Name") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type create_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_certificate_result() :: %{
        "CertificateId" => String.t() | atom()
      }
      
  """
  @type register_certificate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_log_subscriptions_request() :: %{
        optional("DirectoryId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_log_subscriptions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_already_shared_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type directory_already_shared_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_client_authentication_result() :: %{}
      
  """
  @type disable_client_authentication_result() :: %{}

  @typedoc """

  ## Example:
      
      unshare_directory_result() :: %{
        "SharedDirectoryId" => String.t() | atom()
      }
      
  """
  @type unshare_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_region_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type remove_region_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_trust_result() :: %{
        "RequestId" => String.t() | atom(),
        "TrustId" => String.t() | atom()
      }
      
  """
  @type update_trust_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_directory_data_access_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_directory_data_access_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_radius_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("RadiusSettings") => radius_settings()
      }
      
  """
  @type enable_radius_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_settings_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type unsupported_settings_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_from_snapshot_request() :: %{
        required("SnapshotId") => String.t() | atom()
      }
      
  """
  @type restore_from_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      computer() :: %{
        "ComputerAttributes" => list(attribute()),
        "ComputerId" => String.t() | atom(),
        "ComputerName" => String.t() | atom()
      }
      
  """
  @type computer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_directory_limits_result() :: %{
        "DirectoryLimits" => directory_limits()
      }
      
  """
  @type get_directory_limits_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      verify_trust_result() :: %{
        "TrustId" => String.t() | atom()
      }
      
  """
  @type verify_trust_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_certificate_request() :: %{
        required("CertificateId") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type deregister_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_schema_extensions_result() :: %{
        "NextToken" => String.t() | atom(),
        "SchemaExtensionsInfo" => list(schema_extension_info())
      }
      
  """
  @type list_schema_extensions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_directory_data_access_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type enable_directory_data_access_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type add_tags_to_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_region_result() :: %{}
      
  """
  @type remove_region_result() :: %{}

  @typedoc """

  ## Example:
      
      disable_sso_request() :: %{
        optional("Password") => String.t() | atom(),
        optional("UserName") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type disable_sso_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_info_entry() :: %{
        "InitiatedBy" => String.t() | atom(),
        "LastUpdatedDateTime" => non_neg_integer(),
        "NewValue" => update_value(),
        "PreviousValue" => update_value(),
        "Region" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }
      
  """
  @type update_info_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_region_result() :: %{}
      
  """
  @type add_region_result() :: %{}

  @typedoc """

  ## Example:
      
      cancel_schema_extension_result() :: %{}
      
  """
  @type cancel_schema_extension_result() :: %{}

  @typedoc """

  ## Example:
      
      directory_not_shared_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type directory_not_shared_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_update_directory_result() :: %{
        "NextToken" => String.t() | atom(),
        "UpdateActivities" => list(update_info_entry())
      }
      
  """
  @type describe_update_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_cert_auth_settings() :: %{
        "OCSPUrl" => String.t() | atom()
      }
      
  """
  @type client_cert_auth_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_log_subscription_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("LogGroupName") => String.t() | atom()
      }
      
  """
  @type create_log_subscription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_computer_result() :: %{
        "Computer" => computer()
      }
      
  """
  @type create_computer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusts_result() :: %{
        "NextToken" => String.t() | atom(),
        "Trusts" => list(trust())
      }
      
  """
  @type describe_trusts_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_certificates_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type list_certificates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      share_directory_result() :: %{
        "SharedDirectoryId" => String.t() | atom()
      }
      
  """
  @type share_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_microsoft_ad_result() :: %{
        "DirectoryId" => String.t() | atom()
      }
      
  """
  @type create_microsoft_ad_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_limits() :: %{
        "CloudOnlyDirectoriesCurrentCount" => integer(),
        "CloudOnlyDirectoriesLimit" => integer(),
        "CloudOnlyDirectoriesLimitReached" => boolean(),
        "CloudOnlyMicrosoftADCurrentCount" => integer(),
        "CloudOnlyMicrosoftADLimit" => integer(),
        "CloudOnlyMicrosoftADLimitReached" => boolean(),
        "ConnectedDirectoriesCurrentCount" => integer(),
        "ConnectedDirectoriesLimit" => integer(),
        "ConnectedDirectoriesLimitReached" => boolean()
      }
      
  """
  @type directory_limits() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      owner_directory_description() :: %{
        "AccountId" => String.t() | atom(),
        "DirectoryId" => String.t() | atom(),
        "DnsIpAddrs" => list(String.t() | atom()),
        "RadiusSettings" => radius_settings(),
        "RadiusStatus" => list(any()),
        "VpcSettings" => directory_vpc_settings_description()
      }
      
  """
  @type owner_directory_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_directory_setup_result() :: %{}
      
  """
  @type update_directory_setup_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_directories_request() :: %{
        optional("DirectoryIds") => list(String.t() | atom()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_directories_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_ip_routes_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type list_ip_routes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_already_exists_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type certificate_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_snapshot_limits_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type get_snapshot_limits_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_ldaps_result() :: %{}
      
  """
  @type disable_ldaps_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_regions_request() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("RegionName") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_regions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_ldaps_result() :: %{}
      
  """
  @type enable_ldaps_result() :: %{}

  @typedoc """

  ## Example:
      
      deregister_event_topic_result() :: %{}
      
  """
  @type deregister_event_topic_result() :: %{}

  @typedoc """

  ## Example:
      
      enable_sso_result() :: %{}
      
  """
  @type enable_sso_result() :: %{}

  @typedoc """

  ## Example:
      
      shared_directory() :: %{
        "CreatedDateTime" => non_neg_integer(),
        "LastUpdatedDateTime" => non_neg_integer(),
        "OwnerAccountId" => String.t() | atom(),
        "OwnerDirectoryId" => String.t() | atom(),
        "ShareMethod" => list(any()),
        "ShareNotes" => String.t() | atom(),
        "ShareStatus" => list(any()),
        "SharedAccountId" => String.t() | atom(),
        "SharedDirectoryId" => String.t() | atom()
      }
      
  """
  @type shared_directory() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      radius_settings() :: %{
        "AuthenticationProtocol" => list(any()),
        "DisplayLabel" => String.t() | atom(),
        "RadiusPort" => integer(),
        "RadiusRetries" => integer(),
        "RadiusServers" => list(String.t() | atom()),
        "RadiusTimeout" => integer(),
        "SharedSecret" => String.t() | atom(),
        "UseSameUsername" => boolean()
      }
      
  """
  @type radius_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_ip_routes_result() :: %{}
      
  """
  @type add_ip_routes_result() :: %{}

  @typedoc """

  ## Example:
      
      disable_ldaps_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type disable_ldaps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_event_topics_result() :: %{
        "EventTopics" => list(event_topic())
      }
      
  """
  @type describe_event_topics_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_does_not_exist_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type directory_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      log_subscription() :: %{
        "DirectoryId" => String.t() | atom(),
        "LogGroupName" => String.t() | atom(),
        "SubscriptionCreatedDateTime" => non_neg_integer()
      }
      
  """
  @type log_subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      incompatible_settings_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type incompatible_settings_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_directory_data_access_result() :: %{}
      
  """
  @type enable_directory_data_access_result() :: %{}

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
      
      describe_client_authentication_settings_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Type") => list(any()),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_client_authentication_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_event_topic_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("TopicName") => String.t() | atom()
      }
      
  """
  @type deregister_event_topic_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      organizations_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type organizations_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_conditional_forwarder_result() :: %{}
      
  """
  @type delete_conditional_forwarder_result() :: %{}

  @typedoc """

  ## Example:
      
      directory_vpc_settings() :: %{
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type directory_vpc_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_schema_extension_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("SchemaExtensionId") => String.t() | atom()
      }
      
  """
  @type cancel_schema_extension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_user_password_result() :: %{}
      
  """
  @type reset_user_password_result() :: %{}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_request() :: %{
        required("CertificateId") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_client_authentication_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type enable_client_authentication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connect_directory_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ShortName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ConnectSettings") => directory_connect_settings(),
        required("Name") => String.t() | atom(),
        required("Password") => String.t() | atom(),
        required("Size") => list(any())
      }
      
  """
  @type connect_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_vpc_settings_description() :: %{
        "AvailabilityZones" => list(String.t() | atom()),
        "SecurityGroupId" => String.t() | atom(),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type directory_vpc_settings_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_conditional_forwarders_result() :: %{
        "ConditionalForwarders" => list(conditional_forwarder())
      }
      
  """
  @type describe_conditional_forwarders_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_shared_directories_result() :: %{
        "NextToken" => String.t() | atom(),
        "SharedDirectories" => list(shared_directory())
      }
      
  """
  @type describe_shared_directories_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_client_authentication_settings_result() :: %{
        "ClientAuthenticationSettingsInfo" => list(client_authentication_setting_info()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_client_authentication_settings_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type tag_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_trust_result() :: %{
        "TrustId" => String.t() | atom()
      }
      
  """
  @type create_trust_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_description() :: %{
        "AccessUrl" => String.t() | atom(),
        "Alias" => String.t() | atom(),
        "ConnectSettings" => directory_connect_settings_description(),
        "Description" => String.t() | atom(),
        "DesiredNumberOfDomainControllers" => integer(),
        "DirectoryId" => String.t() | atom(),
        "DnsIpAddrs" => list(String.t() | atom()),
        "Edition" => list(any()),
        "LaunchTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "OsVersion" => list(any()),
        "OwnerDirectoryDescription" => owner_directory_description(),
        "RadiusSettings" => radius_settings(),
        "RadiusStatus" => list(any()),
        "RegionsInfo" => regions_info(),
        "ShareMethod" => list(any()),
        "ShareNotes" => String.t() | atom(),
        "ShareStatus" => list(any()),
        "ShortName" => String.t() | atom(),
        "Size" => list(any()),
        "SsoEnabled" => boolean(),
        "Stage" => list(any()),
        "StageLastUpdatedDateTime" => non_neg_integer(),
        "StageReason" => String.t() | atom(),
        "Type" => list(any()),
        "VpcSettings" => directory_vpc_settings_description()
      }
      
  """
  @type directory_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_certificate_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type invalid_certificate_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_extension_info() :: %{
        "Description" => String.t() | atom(),
        "DirectoryId" => String.t() | atom(),
        "EndDateTime" => non_neg_integer(),
        "SchemaExtensionId" => String.t() | atom(),
        "SchemaExtensionStatus" => list(any()),
        "SchemaExtensionStatusReason" => String.t() | atom(),
        "StartDateTime" => non_neg_integer()
      }
      
  """
  @type schema_extension_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_ip_routes_request() :: %{
        optional("UpdateSecurityGroupForDirectoryControllers") => boolean(),
        required("DirectoryId") => String.t() | atom(),
        required("IpRoutes") => list(ip_route())
      }
      
  """
  @type add_ip_routes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conditional_forwarder() :: %{
        "DnsIpAddrs" => list(String.t() | atom()),
        "RemoteDomainName" => String.t() | atom(),
        "ReplicationScope" => list(any())
      }
      
  """
  @type conditional_forwarder() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_certificate_result() :: %{}
      
  """
  @type deregister_certificate_result() :: %{}

  @typedoc """

  ## Example:
      
      update_settings_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("Settings") => list(setting())
      }
      
  """
  @type update_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_certificate_request() :: %{
        optional("ClientCertAuthSettings") => client_cert_auth_settings(),
        optional("Type") => list(any()),
        required("CertificateData") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type register_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_directory_result() :: %{
        "DirectoryId" => String.t() | atom()
      }
      
  """
  @type delete_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_result() :: %{
        "NextToken" => String.t() | atom(),
        "Snapshots" => list(snapshot())
      }
      
  """
  @type describe_snapshots_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_directories_result() :: %{
        "DirectoryDescriptions" => list(directory_description()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_directories_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_trust_request() :: %{
        optional("SelectiveAuth") => list(any()),
        required("TrustId") => String.t() | atom()
      }
      
  """
  @type update_trust_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_domain_controllers_result() :: %{
        "DomainControllers" => list(domain_controller()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_domain_controllers_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_request() :: %{
        required("ResourceId") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type remove_tags_from_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connect_directory_result() :: %{
        "DirectoryId" => String.t() | atom()
      }
      
  """
  @type connect_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_update_directory_request() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("RegionName") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom(),
        required("UpdateType") => list(any())
      }
      
  """
  @type describe_update_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_directory_limits_request() :: %{}
      
  """
  @type get_directory_limits_request() :: %{}

  @typedoc """

  ## Example:
      
      register_event_topic_result() :: %{}
      
  """
  @type register_event_topic_result() :: %{}

  @typedoc """

  ## Example:
      
      region_description() :: %{
        "DesiredNumberOfDomainControllers" => integer(),
        "DirectoryId" => String.t() | atom(),
        "LastUpdatedDateTime" => non_neg_integer(),
        "LaunchTime" => non_neg_integer(),
        "RegionName" => String.t() | atom(),
        "RegionType" => list(any()),
        "Status" => list(any()),
        "StatusLastUpdatedDateTime" => non_neg_integer(),
        "VpcSettings" => directory_vpc_settings()
      }
      
  """
  @type region_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_from_snapshot_result() :: %{}
      
  """
  @type restore_from_snapshot_result() :: %{}

  @typedoc """

  ## Example:
      
      disable_radius_result() :: %{}
      
  """
  @type disable_radius_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_conditional_forwarders_request() :: %{
        optional("RemoteDomainNames") => list(String.t() | atom()),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_conditional_forwarders_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_trusts_request() :: %{
        optional("DirectoryId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TrustIds") => list(String.t() | atom())
      }
      
  """
  @type describe_trusts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_in_use_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type certificate_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reset_user_password_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("NewPassword") => String.t() | atom(),
        required("UserName") => String.t() | atom()
      }
      
  """
  @type reset_user_password_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_directory_data_access_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type disable_directory_data_access_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trust() :: %{
        "CreatedDateTime" => non_neg_integer(),
        "DirectoryId" => String.t() | atom(),
        "LastUpdatedDateTime" => non_neg_integer(),
        "RemoteDomainName" => String.t() | atom(),
        "SelectiveAuth" => list(any()),
        "StateLastUpdatedDateTime" => non_neg_integer(),
        "TrustDirection" => list(any()),
        "TrustId" => String.t() | atom(),
        "TrustState" => list(any()),
        "TrustStateReason" => String.t() | atom(),
        "TrustType" => list(any())
      }
      
  """
  @type trust() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_result() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate() :: %{
        "CertificateId" => String.t() | atom(),
        "ClientCertAuthSettings" => client_cert_auth_settings(),
        "CommonName" => String.t() | atom(),
        "ExpiryDateTime" => non_neg_integer(),
        "RegisteredDateTime" => non_neg_integer(),
        "State" => list(any()),
        "StateReason" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_shared_directory_request() :: %{
        required("SharedDirectoryId") => String.t() | atom()
      }
      
  """
  @type accept_shared_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ldaps_setting_info() :: %{
        "LDAPSStatus" => list(any()),
        "LDAPSStatusReason" => String.t() | atom(),
        "LastUpdatedDateTime" => non_neg_integer()
      }
      
  """
  @type ldaps_setting_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_snapshot_result() :: %{
        "SnapshotId" => String.t() | atom()
      }
      
  """
  @type delete_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_ip_routes_result() :: %{
        "IpRoutesInfo" => list(ip_route_info()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_ip_routes_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_radius_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type disable_radius_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_does_not_exist_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type user_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot() :: %{
        "DirectoryId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "SnapshotId" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type snapshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_route_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type ip_route_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_shared_directory_result() :: %{
        "SharedDirectoryId" => String.t() | atom()
      }
      
  """
  @type reject_shared_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_log_subscription_result() :: %{}
      
  """
  @type delete_log_subscription_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_shared_directories_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SharedDirectoryIds") => list(String.t() | atom()),
        required("OwnerDirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_shared_directories_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      entity_does_not_exist_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type entity_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_sso_result() :: %{}
      
  """
  @type disable_sso_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_directory_request() :: %{
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type delete_directory_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_conditional_forwarder_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("RemoteDomainName") => String.t() | atom()
      }
      
  """
  @type delete_conditional_forwarder_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_client_auth_status_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type invalid_client_auth_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_already_in_region_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type directory_already_in_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_log_subscriptions_result() :: %{
        "LogSubscriptions" => list(log_subscription()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_log_subscriptions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_unavailable_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type directory_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_snapshot_result() :: %{
        "SnapshotId" => String.t() | atom()
      }
      
  """
  @type create_snapshot_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_settings_result() :: %{
        "DirectoryId" => String.t() | atom()
      }
      
  """
  @type update_settings_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_number_of_domain_controllers_request() :: %{
        required("DesiredNumber") => integer(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type update_number_of_domain_controllers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_settings_result() :: %{
        "DirectoryId" => String.t() | atom(),
        "NextToken" => String.t() | atom(),
        "SettingEntries" => list(setting_entry())
      }
      
  """
  @type describe_settings_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_event_topic_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("TopicName") => String.t() | atom()
      }
      
  """
  @type register_event_topic_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_ip_routes_request() :: %{
        required("CidrIps") => list(String.t() | atom()),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type remove_ip_routes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_sso_request() :: %{
        optional("Password") => String.t() | atom(),
        optional("UserName") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type enable_sso_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_trust_result() :: %{
        "TrustId" => String.t() | atom()
      }
      
  """
  @type delete_trust_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_snapshots_request() :: %{
        optional("DirectoryId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SnapshotIds") => list(String.t() | atom())
      }
      
  """
  @type describe_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_alias_result() :: %{
        "Alias" => String.t() | atom(),
        "DirectoryId" => String.t() | atom()
      }
      
  """
  @type create_alias_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_log_subscription_result() :: %{}
      
  """
  @type create_log_subscription_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_directory_data_access_result() :: %{
        "DataAccessStatus" => list(any())
      }
      
  """
  @type describe_directory_data_access_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type directory_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_schema_extension_result() :: %{
        "SchemaExtensionId" => String.t() | atom()
      }
      
  """
  @type start_schema_extension_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_schema_extension_request() :: %{
        required("CreateSnapshotBeforeSchemaExtension") => boolean(),
        required("Description") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom(),
        required("LdifContent") => String.t() | atom()
      }
      
  """
  @type start_schema_extension_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_resource_result() :: %{}
      
  """
  @type remove_tags_from_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      enable_ldaps_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type enable_ldaps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_settings_request() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any()),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_connect_settings_description() :: %{
        "AvailabilityZones" => list(String.t() | atom()),
        "ConnectIps" => list(String.t() | atom()),
        "CustomerUserName" => String.t() | atom(),
        "SecurityGroupId" => String.t() | atom(),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type directory_connect_settings_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_does_not_exist_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type certificate_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_schema_extensions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type list_schema_extensions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authentication_failed_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type authentication_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      share_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type share_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_microsoft_ad_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Edition") => list(any()),
        optional("ShortName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("Password") => String.t() | atom(),
        required("VpcSettings") => directory_vpc_settings()
      }
      
  """
  @type create_microsoft_ad_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_regions_result() :: %{
        "NextToken" => String.t() | atom(),
        "RegionsDescription" => list(region_description())
      }
      
  """
  @type describe_regions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_client_authentication_result() :: %{}
      
  """
  @type enable_client_authentication_result() :: %{}

  @typedoc """

  ## Example:
      
      add_tags_to_resource_result() :: %{}
      
  """
  @type add_tags_to_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      disable_directory_data_access_result() :: %{}
      
  """
  @type disable_directory_data_access_result() :: %{}

  @typedoc """

  ## Example:
      
      ip_route_info() :: %{
        "AddedDateTime" => non_neg_integer(),
        "CidrIp" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DirectoryId" => String.t() | atom(),
        "IpRouteStatusMsg" => list(any()),
        "IpRouteStatusReason" => String.t() | atom()
      }
      
  """
  @type ip_route_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      regions_info() :: %{
        "AdditionalRegions" => list(String.t() | atom()),
        "PrimaryRegion" => String.t() | atom()
      }
      
  """
  @type regions_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_limits() :: %{
        "ManualSnapshotsCurrentCount" => integer(),
        "ManualSnapshotsLimit" => integer(),
        "ManualSnapshotsLimitReached" => boolean()
      }
      
  """
  @type snapshot_limits() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_trust_request() :: %{
        optional("DeleteAssociatedConditionalForwarder") => boolean(),
        required("TrustId") => String.t() | atom()
      }
      
  """
  @type delete_trust_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_shared_directory_result() :: %{
        "SharedDirectory" => shared_directory()
      }
      
  """
  @type accept_shared_directory_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_computer_request() :: %{
        optional("ComputerAttributes") => list(attribute()),
        optional("OrganizationalUnitDistinguishedName") => String.t() | atom(),
        required("ComputerName") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom(),
        required("Password") => String.t() | atom()
      }
      
  """
  @type create_computer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_conditional_forwarder_result() :: %{}
      
  """
  @type update_conditional_forwarder_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_certificate_result() :: %{
        "Certificate" => certificate()
      }
      
  """
  @type describe_certificate_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_topic() :: %{
        "CreatedDateTime" => non_neg_integer(),
        "DirectoryId" => String.t() | atom(),
        "Status" => list(any()),
        "TopicArn" => String.t() | atom(),
        "TopicName" => String.t() | atom()
      }
      
  """
  @type event_topic() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      directory_connect_settings() :: %{
        "CustomerDnsIps" => list(String.t() | atom()),
        "CustomerUserName" => String.t() | atom(),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type directory_connect_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_password_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type invalid_password_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disable_client_authentication_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type disable_client_authentication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_domain_controllers_request() :: %{
        optional("DomainControllerIds") => list(String.t() | atom()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("DirectoryId") => String.t() | atom()
      }
      
  """
  @type describe_domain_controllers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_directory_setup_request() :: %{
        optional("CreateSnapshotBeforeUpdate") => boolean(),
        optional("OSUpdateSettings") => o_s_update_settings(),
        required("DirectoryId") => String.t() | atom(),
        required("UpdateType") => list(any())
      }
      
  """
  @type update_directory_setup_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      share_target() :: %{
        "Id" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type share_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_radius_result() :: %{}
      
  """
  @type update_radius_result() :: %{}

  @typedoc """

  ## Example:
      
      add_region_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("RegionName") => String.t() | atom(),
        required("VPCSettings") => directory_vpc_settings()
      }
      
  """
  @type add_region_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "RequestId" => String.t() | atom()
      }
      
  """
  @type certificate_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_radius_request() :: %{
        required("DirectoryId") => String.t() | atom(),
        required("RadiusSettings") => radius_settings()
      }
      
  """
  @type update_radius_request() :: %{(String.t() | atom()) => any()}

  @type accept_shared_directory_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | directory_already_shared_exception()

  @type add_ip_routes_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | ip_route_limit_exceeded_exception()
          | service_exception()
          | client_exception()
          | entity_already_exists_exception()

  @type add_region_errors() ::
          directory_unavailable_exception()
          | directory_already_in_region_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | region_limit_exceeded_exception()
          | unsupported_operation_exception()

  @type add_tags_to_resource_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | tag_limit_exceeded_exception()
          | client_exception()

  @type cancel_schema_extension_errors() ::
          entity_does_not_exist_exception() | service_exception() | client_exception()

  @type connect_directory_errors() ::
          directory_limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type create_alias_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | entity_already_exists_exception()

  @type create_computer_errors() ::
          authentication_failed_exception()
          | directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()
          | entity_already_exists_exception()

  @type create_conditional_forwarder_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()
          | entity_already_exists_exception()

  @type create_directory_errors() ::
          directory_limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type create_log_subscription_errors() ::
          entity_does_not_exist_exception()
          | service_exception()
          | client_exception()
          | insufficient_permissions_exception()
          | unsupported_operation_exception()
          | entity_already_exists_exception()

  @type create_microsoft_ad_errors() ::
          directory_limit_exceeded_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type create_snapshot_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | snapshot_limit_exceeded_exception()

  @type create_trust_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()
          | entity_already_exists_exception()

  @type delete_conditional_forwarder_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type delete_directory_errors() ::
          entity_does_not_exist_exception() | service_exception() | client_exception()

  @type delete_log_subscription_errors() ::
          entity_does_not_exist_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type delete_snapshot_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type delete_trust_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type deregister_certificate_errors() ::
          certificate_does_not_exist_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | certificate_in_use_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type deregister_event_topic_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type describe_certificate_errors() ::
          certificate_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_client_authentication_settings_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_conditional_forwarders_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_directories_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()

  @type describe_directory_data_access_errors() ::
          access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_domain_controllers_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_event_topics_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type describe_ldaps_settings_errors() ::
          invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_regions_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | service_exception()
          | invalid_next_token_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_settings_errors() ::
          invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_shared_directories_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_snapshots_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()

  @type describe_trusts_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type describe_update_directory_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | service_exception()
          | invalid_next_token_exception()
          | directory_does_not_exist_exception()
          | client_exception()

  @type disable_client_authentication_errors() ::
          invalid_client_auth_status_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type disable_directory_data_access_errors() ::
          directory_unavailable_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | directory_in_desired_state_exception()
          | unsupported_operation_exception()

  @type disable_ldaps_errors() ::
          directory_unavailable_exception()
          | invalid_parameter_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | invalid_ldaps_status_exception()
          | unsupported_operation_exception()

  @type disable_radius_errors() ::
          entity_does_not_exist_exception() | service_exception() | client_exception()

  @type disable_sso_errors() ::
          authentication_failed_exception()
          | entity_does_not_exist_exception()
          | service_exception()
          | client_exception()
          | insufficient_permissions_exception()

  @type enable_client_authentication_errors() ::
          invalid_client_auth_status_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | no_available_certificate_exception()
          | unsupported_operation_exception()

  @type enable_directory_data_access_errors() ::
          directory_unavailable_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | directory_in_desired_state_exception()
          | unsupported_operation_exception()

  @type enable_ldaps_errors() ::
          directory_unavailable_exception()
          | invalid_parameter_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | no_available_certificate_exception()
          | invalid_ldaps_status_exception()
          | unsupported_operation_exception()

  @type enable_radius_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | entity_already_exists_exception()

  @type enable_sso_errors() ::
          authentication_failed_exception()
          | entity_does_not_exist_exception()
          | service_exception()
          | client_exception()
          | insufficient_permissions_exception()

  @type get_directory_limits_errors() ::
          entity_does_not_exist_exception() | service_exception() | client_exception()

  @type get_snapshot_limits_errors() ::
          entity_does_not_exist_exception() | service_exception() | client_exception()

  @type list_certificates_errors() ::
          invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type list_ip_routes_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()

  @type list_log_subscriptions_errors() ::
          entity_does_not_exist_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()

  @type list_schema_extensions_errors() ::
          entity_does_not_exist_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()

  @type list_tags_for_resource_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | invalid_next_token_exception()
          | client_exception()

  @type register_certificate_errors() ::
          certificate_limit_exceeded_exception()
          | directory_unavailable_exception()
          | invalid_parameter_exception()
          | invalid_certificate_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | certificate_already_exists_exception()
          | unsupported_operation_exception()

  @type register_event_topic_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type reject_shared_directory_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | directory_already_shared_exception()

  @type remove_ip_routes_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type remove_region_errors() ::
          directory_unavailable_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type remove_tags_from_resource_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type reset_user_password_errors() ::
          invalid_password_exception()
          | directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | user_does_not_exist_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type restore_from_snapshot_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type share_directory_errors() ::
          share_limit_exceeded_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_exception()
          | organizations_exception()
          | client_exception()
          | directory_already_shared_exception()
          | unsupported_operation_exception()
          | invalid_target_exception()

  @type start_schema_extension_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | snapshot_limit_exceeded_exception()

  @type unshare_directory_errors() ::
          entity_does_not_exist_exception()
          | service_exception()
          | client_exception()
          | directory_not_shared_exception()
          | invalid_target_exception()

  @type update_conditional_forwarder_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  @type update_directory_setup_errors() ::
          directory_unavailable_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | directory_in_desired_state_exception()
          | unsupported_operation_exception()
          | snapshot_limit_exceeded_exception()

  @type update_number_of_domain_controllers_errors() ::
          directory_unavailable_exception()
          | entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()
          | domain_controller_limit_exceeded_exception()

  @type update_radius_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type update_settings_errors() ::
          directory_unavailable_exception()
          | invalid_parameter_exception()
          | service_exception()
          | incompatible_settings_exception()
          | directory_does_not_exist_exception()
          | client_exception()
          | unsupported_settings_exception()
          | unsupported_operation_exception()

  @type update_trust_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()

  @type verify_trust_errors() ::
          entity_does_not_exist_exception()
          | invalid_parameter_exception()
          | service_exception()
          | client_exception()
          | unsupported_operation_exception()

  def metadata do
    %{
      api_version: "2015-04-16",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ds",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Directory Service",
      signature_version: "v4",
      signing_name: "ds",
      target_prefix: "DirectoryService_20150416"
    }
  end

  @doc """
  Accepts a directory sharing request that was sent from the directory owner
  account.
  """
  @spec accept_shared_directory(map(), accept_shared_directory_request(), list()) ::
          {:ok, accept_shared_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_shared_directory_errors()}
  def accept_shared_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptSharedDirectory", input, options)
  end

  @doc """
  If the DNS server for your self-managed domain uses a publicly addressable IP
  address,
  you must add a CIDR address block to correctly route traffic to and from your
  Microsoft AD
  on Amazon Web Services.

  *AddIpRoutes* adds this address block. You can
  also use *AddIpRoutes* to facilitate routing traffic that uses public IP
  ranges from your Microsoft AD on Amazon Web Services to a peer VPC.

  Before you call *AddIpRoutes*, ensure that all of the required
  permissions have been explicitly granted through a policy. For details about
  what
  permissions are required to run the *AddIpRoutes* operation, see [Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  @spec add_ip_routes(map(), add_ip_routes_request(), list()) ::
          {:ok, add_ip_routes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_ip_routes_errors()}
  def add_ip_routes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddIpRoutes", input, options)
  end

  @doc """
  Adds two domain controllers in the specified Region for the specified directory.
  """
  @spec add_region(map(), add_region_request(), list()) ::
          {:ok, add_region_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_region_errors()}
  def add_region(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddRegion", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified directory.

  Each directory can
  have a maximum of 50 tags. Each tag consists of a key and optional value. Tag
  keys must be
  unique to each resource.
  """
  @spec add_tags_to_resource(map(), add_tags_to_resource_request(), list()) ::
          {:ok, add_tags_to_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_resource_errors()}
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTagsToResource", input, options)
  end

  @doc """
  Cancels an in-progress schema extension to a Microsoft AD directory.

  Once a schema
  extension has started replicating to all domain controllers, the task can no
  longer be
  canceled. A schema extension can be canceled during any of the following states;
  `Initializing`, `CreatingSnapshot`, and
  `UpdatingSchema`.
  """
  @spec cancel_schema_extension(map(), cancel_schema_extension_request(), list()) ::
          {:ok, cancel_schema_extension_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_schema_extension_errors()}
  def cancel_schema_extension(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelSchemaExtension", input, options)
  end

  @doc """
  Creates an AD Connector to connect to a self-managed directory.

  Before you call `ConnectDirectory`, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required
  to run the `ConnectDirectory` operation, see [Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  @spec connect_directory(map(), connect_directory_request(), list()) ::
          {:ok, connect_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, connect_directory_errors()}
  def connect_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConnectDirectory", input, options)
  end

  @doc """
  Creates an alias for a directory and assigns the alias to the directory.

  The alias is used
  to construct the access URL for the directory, such as
  `http://.awsapps.com`.

  After an alias has been created, it cannot be deleted or reused, so this
  operation should only be used when absolutely necessary.
  """
  @spec create_alias(map(), create_alias_request(), list()) ::
          {:ok, create_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAlias", input, options)
  end

  @doc """
  Creates an Active Directory computer object in the specified directory.
  """
  @spec create_computer(map(), create_computer_request(), list()) ::
          {:ok, create_computer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_computer_errors()}
  def create_computer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateComputer", input, options)
  end

  @doc """
  Creates a conditional forwarder associated with your Amazon Web Services
  directory.

  Conditional
  forwarders are required in order to set up a trust relationship with another
  domain. The
  conditional forwarder points to the trusted domain.
  """
  @spec create_conditional_forwarder(map(), create_conditional_forwarder_request(), list()) ::
          {:ok, create_conditional_forwarder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_conditional_forwarder_errors()}
  def create_conditional_forwarder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConditionalForwarder", input, options)
  end

  @doc """
  Creates a Simple AD directory.

  For more information, see [Simple Active Directory](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html)
  in the *Directory Service Admin Guide*.

  Before you call `CreateDirectory`, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required
  to run the `CreateDirectory` operation, see [Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  @spec create_directory(map(), create_directory_request(), list()) ::
          {:ok, create_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_directory_errors()}
  def create_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDirectory", input, options)
  end

  @doc """
  Creates a subscription to forward real-time Directory Service domain controller
  security
  logs to the specified Amazon CloudWatch log group in your Amazon Web Services
  account.
  """
  @spec create_log_subscription(map(), create_log_subscription_request(), list()) ::
          {:ok, create_log_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_log_subscription_errors()}
  def create_log_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLogSubscription", input, options)
  end

  @doc """
  Creates a Microsoft AD directory in the Amazon Web Services Cloud.

  For more information, see [Managed Microsoft AD](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html)
  in the *Directory Service Admin Guide*.

  Before you call *CreateMicrosoftAD*, ensure that all of the required
  permissions have been explicitly granted through a policy. For details about
  what permissions
  are required to run the *CreateMicrosoftAD* operation, see [Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  @spec create_microsoft_ad(map(), create_microsoft_ad_request(), list()) ::
          {:ok, create_microsoft_ad_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_microsoft_ad_errors()}
  def create_microsoft_ad(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMicrosoftAD", input, options)
  end

  @doc """
  Creates a snapshot of a Simple AD or Microsoft AD directory in the Amazon Web
  Services cloud.

  You cannot take snapshots of AD Connector directories.
  """
  @spec create_snapshot(map(), create_snapshot_request(), list()) ::
          {:ok, create_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_errors()}
  def create_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  Directory Service for Microsoft Active Directory allows you to configure trust
  relationships.

  For
  example, you can establish a trust between your Managed Microsoft AD directory,
  and your existing
  self-managed Microsoft Active Directory. This would allow you to provide users
  and groups
  access to resources in either domain, with a single set of credentials.

  This action initiates the creation of the Amazon Web Services side of a trust
  relationship between an
  Managed Microsoft AD directory and an external domain. You can create either a
  forest trust or an
  external trust.
  """
  @spec create_trust(map(), create_trust_request(), list()) ::
          {:ok, create_trust_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trust_errors()}
  def create_trust(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTrust", input, options)
  end

  @doc """
  Deletes a conditional forwarder that has been set up for your Amazon Web
  Services
  directory.
  """
  @spec delete_conditional_forwarder(map(), delete_conditional_forwarder_request(), list()) ::
          {:ok, delete_conditional_forwarder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_conditional_forwarder_errors()}
  def delete_conditional_forwarder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConditionalForwarder", input, options)
  end

  @doc """
  Deletes an Directory Service directory.

  Before you call `DeleteDirectory`, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required
  to run the `DeleteDirectory` operation, see [Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  @spec delete_directory(map(), delete_directory_request(), list()) ::
          {:ok, delete_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_directory_errors()}
  def delete_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDirectory", input, options)
  end

  @doc """
  Deletes the specified log subscription.
  """
  @spec delete_log_subscription(map(), delete_log_subscription_request(), list()) ::
          {:ok, delete_log_subscription_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_log_subscription_errors()}
  def delete_log_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLogSubscription", input, options)
  end

  @doc """
  Deletes a directory snapshot.
  """
  @spec delete_snapshot(map(), delete_snapshot_request(), list()) ::
          {:ok, delete_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_snapshot_errors()}
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes an existing trust relationship between your Managed Microsoft AD
  directory and an external
  domain.
  """
  @spec delete_trust(map(), delete_trust_request(), list()) ::
          {:ok, delete_trust_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trust_errors()}
  def delete_trust(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTrust", input, options)
  end

  @doc """
  Deletes from the system the certificate that was registered for secure LDAP or
  client
  certificate authentication.
  """
  @spec deregister_certificate(map(), deregister_certificate_request(), list()) ::
          {:ok, deregister_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_certificate_errors()}
  def deregister_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterCertificate", input, options)
  end

  @doc """
  Removes the specified directory as a publisher to the specified Amazon SNS
  topic.
  """
  @spec deregister_event_topic(map(), deregister_event_topic_request(), list()) ::
          {:ok, deregister_event_topic_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_event_topic_errors()}
  def deregister_event_topic(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterEventTopic", input, options)
  end

  @doc """
  Displays information about the certificate registered for secure LDAP or client
  certificate authentication.
  """
  @spec describe_certificate(map(), describe_certificate_request(), list()) ::
          {:ok, describe_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_certificate_errors()}
  def describe_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCertificate", input, options)
  end

  @doc """
  Retrieves information about the type of client authentication for the specified
  directory,
  if the type is specified.

  If no type is specified, information about all client authentication
  types that are supported for the specified directory is retrieved. Currently,
  only
  `SmartCard` is supported.
  """
  @spec describe_client_authentication_settings(
          map(),
          describe_client_authentication_settings_request(),
          list()
        ) ::
          {:ok, describe_client_authentication_settings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_client_authentication_settings_errors()}
  def describe_client_authentication_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeClientAuthenticationSettings", input, options)
  end

  @doc """
  Obtains information about the conditional forwarders for this account.

  If no input parameters are provided for RemoteDomainNames, this request
  describes all
  conditional forwarders for the specified directory ID.
  """
  @spec describe_conditional_forwarders(map(), describe_conditional_forwarders_request(), list()) ::
          {:ok, describe_conditional_forwarders_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_conditional_forwarders_errors()}
  def describe_conditional_forwarders(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConditionalForwarders", input, options)
  end

  @doc """
  Obtains information about the directories that belong to this account.

  You can retrieve information about specific directories by passing the directory
  identifiers in the `DirectoryIds` parameter. Otherwise, all directories that
  belong
  to the current account are returned.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the
  `DescribeDirectoriesResult.NextToken` member contains a token that you pass in
  the next call to `DescribeDirectories` to retrieve the next set of
  items.

  You can also specify a maximum number of return results with the `Limit`
  parameter.
  """
  @spec describe_directories(map(), describe_directories_request(), list()) ::
          {:ok, describe_directories_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_directories_errors()}
  def describe_directories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDirectories", input, options)
  end

  @doc """
  Obtains status of directory data access enablement through the Directory Service
  Data API for the
  specified directory.
  """
  @spec describe_directory_data_access(map(), describe_directory_data_access_request(), list()) ::
          {:ok, describe_directory_data_access_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_directory_data_access_errors()}
  def describe_directory_data_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDirectoryDataAccess", input, options)
  end

  @doc """
  Provides information about any domain controllers in your directory.
  """
  @spec describe_domain_controllers(map(), describe_domain_controllers_request(), list()) ::
          {:ok, describe_domain_controllers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_domain_controllers_errors()}
  def describe_domain_controllers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDomainControllers", input, options)
  end

  @doc """
  Obtains information about which Amazon SNS topics receive status messages from
  the specified
  directory.

  If no input parameters are provided, such as DirectoryId or TopicName, this
  request
  describes all of the associations in the account.
  """
  @spec describe_event_topics(map(), describe_event_topics_request(), list()) ::
          {:ok, describe_event_topics_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_event_topics_errors()}
  def describe_event_topics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEventTopics", input, options)
  end

  @doc """
  Describes the status of LDAP security for the specified directory.
  """
  @spec describe_ldaps_settings(map(), describe_ldaps_settings_request(), list()) ::
          {:ok, describe_ldaps_settings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ldaps_settings_errors()}
  def describe_ldaps_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLDAPSSettings", input, options)
  end

  @doc """
  Provides information about the Regions that are configured for multi-Region
  replication.
  """
  @spec describe_regions(map(), describe_regions_request(), list()) ::
          {:ok, describe_regions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_regions_errors()}
  def describe_regions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegions", input, options)
  end

  @doc """
  Retrieves information about the configurable settings for the specified
  directory.
  """
  @spec describe_settings(map(), describe_settings_request(), list()) ::
          {:ok, describe_settings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_settings_errors()}
  def describe_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSettings", input, options)
  end

  @doc """
  Returns the shared directories in your account.
  """
  @spec describe_shared_directories(map(), describe_shared_directories_request(), list()) ::
          {:ok, describe_shared_directories_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_shared_directories_errors()}
  def describe_shared_directories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSharedDirectories", input, options)
  end

  @doc """
  Obtains information about the directory snapshots that belong to this account.

  This operation supports pagination with the use of the *NextToken* request and
  response parameters. If more results are available, the
  *DescribeSnapshots.NextToken*
  member contains a token that you pass in the next call to `DescribeSnapshots` to
  retrieve the next set of items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  @spec describe_snapshots(map(), describe_snapshots_request(), list()) ::
          {:ok, describe_snapshots_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_snapshots_errors()}
  def describe_snapshots(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSnapshots", input, options)
  end

  @doc """
  Obtains information about the trust relationships for this account.

  If no input parameters are provided, such as DirectoryId or TrustIds, this
  request
  describes all the trust relationships belonging to the account.
  """
  @spec describe_trusts(map(), describe_trusts_request(), list()) ::
          {:ok, describe_trusts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trusts_errors()}
  def describe_trusts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTrusts", input, options)
  end

  @doc """
  Describes the updates of a directory for a particular update type.
  """
  @spec describe_update_directory(map(), describe_update_directory_request(), list()) ::
          {:ok, describe_update_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_update_directory_errors()}
  def describe_update_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUpdateDirectory", input, options)
  end

  @doc """
  Disables alternative client authentication methods for the specified directory.
  """
  @spec disable_client_authentication(map(), disable_client_authentication_request(), list()) ::
          {:ok, disable_client_authentication_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_client_authentication_errors()}
  def disable_client_authentication(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableClientAuthentication", input, options)
  end

  @doc """
  Deactivates access to directory data via the Directory Service Data API for the
  specified
  directory.

  For
  more information, see [Directory Service Data API Reference](https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html).
  """
  @spec disable_directory_data_access(map(), disable_directory_data_access_request(), list()) ::
          {:ok, disable_directory_data_access_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_directory_data_access_errors()}
  def disable_directory_data_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableDirectoryDataAccess", input, options)
  end

  @doc """
  Deactivates LDAP secure calls for the specified directory.
  """
  @spec disable_ldaps(map(), disable_ldaps_request(), list()) ::
          {:ok, disable_ldaps_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_ldaps_errors()}
  def disable_ldaps(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableLDAPS", input, options)
  end

  @doc """
  Disables multi-factor authentication (MFA) with the Remote Authentication Dial
  In
  User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
  """
  @spec disable_radius(map(), disable_radius_request(), list()) ::
          {:ok, disable_radius_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_radius_errors()}
  def disable_radius(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableRadius", input, options)
  end

  @doc """
  Disables single-sign on for a directory.
  """
  @spec disable_sso(map(), disable_sso_request(), list()) ::
          {:ok, disable_sso_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_sso_errors()}
  def disable_sso(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisableSso", input, options)
  end

  @doc """
  Enables alternative client authentication methods for the specified directory.
  """
  @spec enable_client_authentication(map(), enable_client_authentication_request(), list()) ::
          {:ok, enable_client_authentication_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_client_authentication_errors()}
  def enable_client_authentication(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableClientAuthentication", input, options)
  end

  @doc """
  Enables access to directory data via the Directory Service Data API for the
  specified directory.

  For
  more information, see [Directory Service Data API Reference](https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html).
  """
  @spec enable_directory_data_access(map(), enable_directory_data_access_request(), list()) ::
          {:ok, enable_directory_data_access_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_directory_data_access_errors()}
  def enable_directory_data_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableDirectoryDataAccess", input, options)
  end

  @doc """
  Activates the switch for the specific directory to always use LDAP secure calls.
  """
  @spec enable_ldaps(map(), enable_ldaps_request(), list()) ::
          {:ok, enable_ldaps_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_ldaps_errors()}
  def enable_ldaps(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableLDAPS", input, options)
  end

  @doc """
  Enables multi-factor authentication (MFA) with the Remote Authentication Dial In
  User
  Service (RADIUS) server for an AD Connector or Microsoft AD directory.
  """
  @spec enable_radius(map(), enable_radius_request(), list()) ::
          {:ok, enable_radius_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_radius_errors()}
  def enable_radius(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableRadius", input, options)
  end

  @doc """
  Enables single sign-on for a directory.

  Single sign-on allows users in your directory to
  access certain Amazon Web Services services from a computer joined to the
  directory without having to enter
  their credentials separately.
  """
  @spec enable_sso(map(), enable_sso_request(), list()) ::
          {:ok, enable_sso_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_sso_errors()}
  def enable_sso(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EnableSso", input, options)
  end

  @doc """
  Obtains directory limit information for the current Region.
  """
  @spec get_directory_limits(map(), get_directory_limits_request(), list()) ::
          {:ok, get_directory_limits_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_directory_limits_errors()}
  def get_directory_limits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDirectoryLimits", input, options)
  end

  @doc """
  Obtains the manual snapshot limits for a directory.
  """
  @spec get_snapshot_limits(map(), get_snapshot_limits_request(), list()) ::
          {:ok, get_snapshot_limits_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_snapshot_limits_errors()}
  def get_snapshot_limits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSnapshotLimits", input, options)
  end

  @doc """
  For the specified directory, lists all the certificates registered for a secure
  LDAP or
  client certificate authentication.
  """
  @spec list_certificates(map(), list_certificates_request(), list()) ::
          {:ok, list_certificates_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_certificates_errors()}
  def list_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCertificates", input, options)
  end

  @doc """
  Lists the address blocks that you have added to a directory.
  """
  @spec list_ip_routes(map(), list_ip_routes_request(), list()) ::
          {:ok, list_ip_routes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ip_routes_errors()}
  def list_ip_routes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIpRoutes", input, options)
  end

  @doc """
  Lists the active log subscriptions for the Amazon Web Services account.
  """
  @spec list_log_subscriptions(map(), list_log_subscriptions_request(), list()) ::
          {:ok, list_log_subscriptions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_log_subscriptions_errors()}
  def list_log_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLogSubscriptions", input, options)
  end

  @doc """
  Lists all schema extensions applied to a Microsoft AD Directory.
  """
  @spec list_schema_extensions(map(), list_schema_extensions_request(), list()) ::
          {:ok, list_schema_extensions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schema_extensions_errors()}
  def list_schema_extensions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSchemaExtensions", input, options)
  end

  @doc """
  Lists all tags on a directory.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Registers a certificate for a secure LDAP or client certificate authentication.
  """
  @spec register_certificate(map(), register_certificate_request(), list()) ::
          {:ok, register_certificate_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_certificate_errors()}
  def register_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterCertificate", input, options)
  end

  @doc """
  Associates a directory with an Amazon SNS topic.

  This establishes the directory as a
  publisher to the specified Amazon SNS topic. You can then receive email or text
  (SMS) messages when
  the status of your directory changes. You get notified if your directory goes
  from an Active
  status to an Impaired or Inoperable status. You also receive a notification when
  the directory
  returns to an Active status.
  """
  @spec register_event_topic(map(), register_event_topic_request(), list()) ::
          {:ok, register_event_topic_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_event_topic_errors()}
  def register_event_topic(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterEventTopic", input, options)
  end

  @doc """
  Rejects a directory sharing request that was sent from the directory owner
  account.
  """
  @spec reject_shared_directory(map(), reject_shared_directory_request(), list()) ::
          {:ok, reject_shared_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_shared_directory_errors()}
  def reject_shared_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectSharedDirectory", input, options)
  end

  @doc """
  Removes IP address blocks from a directory.
  """
  @spec remove_ip_routes(map(), remove_ip_routes_request(), list()) ::
          {:ok, remove_ip_routes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_ip_routes_errors()}
  def remove_ip_routes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveIpRoutes", input, options)
  end

  @doc """
  Stops all replication and removes the domain controllers from the specified
  Region.

  You
  cannot remove the primary Region with this operation. Instead, use the
  `DeleteDirectory` API.
  """
  @spec remove_region(map(), remove_region_request(), list()) ::
          {:ok, remove_region_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_region_errors()}
  def remove_region(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveRegion", input, options)
  end

  @doc """
  Removes tags from a directory.
  """
  @spec remove_tags_from_resource(map(), remove_tags_from_resource_request(), list()) ::
          {:ok, remove_tags_from_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_resource_errors()}
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Resets the password for any user in your Managed Microsoft AD or Simple AD
  directory.

  Disabled
  users will become enabled and can be authenticated following the API call.

  You can reset the password for any user in your directory with the following
  exceptions:

    *
  For Simple AD, you cannot reset the password for any user that is a member of
  either
  the **Domain Admins** or **Enterprise
  Admins** group except for the administrator user.

    *
  For Managed Microsoft AD, you can only reset the password for a user that is in
  an OU based
  off of the NetBIOS name that you typed when you created your directory. For
  example, you
  cannot reset the password for a user in the **Amazon Web Services
  Reserved** OU. For more information about the OU structure for an Managed
  Microsoft AD
  directory, see [What Gets Created](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html)
  in the *Directory Service Administration
  Guide*.
  """
  @spec reset_user_password(map(), reset_user_password_request(), list()) ::
          {:ok, reset_user_password_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_user_password_errors()}
  def reset_user_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResetUserPassword", input, options)
  end

  @doc """
  Restores a directory using an existing directory snapshot.

  When you restore a directory from a snapshot, any changes made to the directory
  after the snapshot date are overwritten.

  This action returns as soon as the restore operation is initiated. You can
  monitor the
  progress of the restore operation by calling the `DescribeDirectories` operation
  with
  the directory identifier. When the **DirectoryDescription.Stage** value changes
  to
  `Active`, the restore operation is complete.
  """
  @spec restore_from_snapshot(map(), restore_from_snapshot_request(), list()) ::
          {:ok, restore_from_snapshot_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_from_snapshot_errors()}
  def restore_from_snapshot(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RestoreFromSnapshot", input, options)
  end

  @doc """
  Shares a specified directory (`DirectoryId`) in your Amazon Web Services account
  (directory
  owner) with another Amazon Web Services account (directory consumer).

  With this operation you can use your
  directory from any Amazon Web Services account and from any Amazon VPC within an
  Amazon Web Services Region.

  When you share your Managed Microsoft AD directory, Directory Service creates a
  shared directory in the
  directory consumer account. This shared directory contains the metadata to
  provide access to
  the directory within the directory owner account. The shared directory is
  visible in all VPCs
  in the directory consumer account.

  The `ShareMethod` parameter determines whether the specified directory can be
  shared between Amazon Web Services accounts inside the same Amazon Web Services
  organization (`ORGANIZATIONS`).
  It also determines whether you can share the directory with any other Amazon Web
  Services account either
  inside or outside of the organization (`HANDSHAKE`).

  The `ShareNotes` parameter is only used when `HANDSHAKE` is called,
  which sends a directory sharing request to the directory consumer.
  """
  @spec share_directory(map(), share_directory_request(), list()) ::
          {:ok, share_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, share_directory_errors()}
  def share_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ShareDirectory", input, options)
  end

  @doc """
  Applies a schema extension to a Microsoft AD directory.
  """
  @spec start_schema_extension(map(), start_schema_extension_request(), list()) ::
          {:ok, start_schema_extension_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_schema_extension_errors()}
  def start_schema_extension(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartSchemaExtension", input, options)
  end

  @doc """
  Stops the directory sharing between the directory owner and consumer accounts.
  """
  @spec unshare_directory(map(), unshare_directory_request(), list()) ::
          {:ok, unshare_directory_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unshare_directory_errors()}
  def unshare_directory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UnshareDirectory", input, options)
  end

  @doc """
  Updates a conditional forwarder that has been set up for your Amazon Web
  Services
  directory.
  """
  @spec update_conditional_forwarder(map(), update_conditional_forwarder_request(), list()) ::
          {:ok, update_conditional_forwarder_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_conditional_forwarder_errors()}
  def update_conditional_forwarder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConditionalForwarder", input, options)
  end

  @doc """
  Updates the directory for a particular update type.
  """
  @spec update_directory_setup(map(), update_directory_setup_request(), list()) ::
          {:ok, update_directory_setup_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_directory_setup_errors()}
  def update_directory_setup(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDirectorySetup", input, options)
  end

  @doc """
  Adds or removes domain controllers to or from the directory.

  Based on the difference
  between current value and new value (provided through this API call), domain
  controllers will
  be added or removed. It may take up to 45 minutes for any new domain controllers
  to become
  fully active once the requested number of domain controllers is updated. During
  this time, you
  cannot make another update request.
  """
  @spec update_number_of_domain_controllers(
          map(),
          update_number_of_domain_controllers_request(),
          list()
        ) ::
          {:ok, update_number_of_domain_controllers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_number_of_domain_controllers_errors()}
  def update_number_of_domain_controllers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNumberOfDomainControllers", input, options)
  end

  @doc """
  Updates the Remote Authentication Dial In User Service (RADIUS) server
  information
  for an AD Connector or Microsoft AD directory.
  """
  @spec update_radius(map(), update_radius_request(), list()) ::
          {:ok, update_radius_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_radius_errors()}
  def update_radius(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRadius", input, options)
  end

  @doc """
  Updates the configurable settings for the specified directory.
  """
  @spec update_settings(map(), update_settings_request(), list()) ::
          {:ok, update_settings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_settings_errors()}
  def update_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSettings", input, options)
  end

  @doc """
  Updates the trust that has been set up between your Managed Microsoft AD
  directory and an
  self-managed Active Directory.
  """
  @spec update_trust(map(), update_trust_request(), list()) ::
          {:ok, update_trust_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trust_errors()}
  def update_trust(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTrust", input, options)
  end

  @doc """
  Directory Service for Microsoft Active Directory allows you to configure and
  verify trust
  relationships.

  This action verifies a trust relationship between your Managed Microsoft AD
  directory and an
  external domain.
  """
  @spec verify_trust(map(), verify_trust_request(), list()) ::
          {:ok, verify_trust_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_trust_errors()}
  def verify_trust(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyTrust", input, options)
  end
end
