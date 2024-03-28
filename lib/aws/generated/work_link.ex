# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkLink do
  @moduledoc """
  Amazon WorkLink is a cloud-based service that provides secure access
  to internal websites and web apps from iOS and Android phones.

  In a single step, your users, such as
  employees, can access internal websites as efficiently as they access any other
  public website.
  They enter a URL in their web browser, or choose a link to an internal website
  in an email. Amazon WorkLink
  authenticates the user's access and securely renders authorized internal web
  content in a secure
  rendering service in the AWS cloud. Amazon WorkLink doesn't download or store
  any internal web content on
  mobile devices.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      associate_domain_request() :: %{
        optional("DisplayName") => String.t(),
        required("AcmCertificateArn") => String.t(),
        required("DomainName") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type associate_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restore_domain_access_request() :: %{
        required("DomainName") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type restore_domain_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      website_ca_summary() :: %{
        "CreatedTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "WebsiteCaId" => String.t()
      }

  """
  @type website_ca_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_provider_configuration_request() :: %{
        optional("IdentityProviderSamlMetadata") => String.t(),
        required("FleetArn") => String.t(),
        required("IdentityProviderType") => list(any())
      }

  """
  @type update_identity_provider_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_fleet_request() :: %{
        required("FleetArn") => String.t()
      }

  """
  @type delete_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_website_authorization_provider_response() :: %{}

  """
  @type disassociate_website_authorization_provider_response() :: %{}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_device_policy_configuration_request() :: %{
        optional("DeviceCaCertificate") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type update_device_policy_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_website_certificate_authority_response() :: %{}

  """
  @type disassociate_website_certificate_authority_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_audit_stream_configuration_response() :: %{}

  """
  @type update_audit_stream_configuration_response() :: %{}

  @typedoc """

  ## Example:

      restore_domain_access_response() :: %{}

  """
  @type restore_domain_access_response() :: %{}

  @typedoc """

  ## Example:

      update_company_network_configuration_request() :: %{
        required("FleetArn") => String.t(),
        required("SecurityGroupIds") => list(String.t()()),
        required("SubnetIds") => list(String.t()()),
        required("VpcId") => String.t()
      }

  """
  @type update_company_network_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fleet_request() :: %{
        optional("DisplayName") => String.t(),
        optional("OptimizeForEndUserLocation") => boolean(),
        optional("Tags") => map(),
        required("FleetName") => String.t()
      }

  """
  @type create_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_summary() :: %{
        "CreatedTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "DomainName" => String.t(),
        "DomainStatus" => list(any())
      }

  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_domain_access_response() :: %{}

  """
  @type revoke_domain_access_response() :: %{}

  @typedoc """

  ## Example:

      delete_fleet_response() :: %{}

  """
  @type delete_fleet_response() :: %{}

  @typedoc """

  ## Example:

      describe_fleet_metadata_response() :: %{
        "CompanyCode" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "FleetName" => String.t(),
        "FleetStatus" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "OptimizeForEndUserLocation" => boolean(),
        "Tags" => map()
      }

  """
  @type describe_fleet_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fleets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_identity_provider_configuration_response() :: %{
        "IdentityProviderSamlMetadata" => String.t(),
        "IdentityProviderType" => list(any()),
        "ServiceProviderSamlMetadata" => String.t()
      }

  """
  @type describe_identity_provider_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      website_authorization_provider_summary() :: %{
        "AuthorizationProviderId" => String.t(),
        "AuthorizationProviderType" => list(any()),
        "CreatedTime" => non_neg_integer(),
        "DomainName" => String.t()
      }

  """
  @type website_authorization_provider_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_website_authorization_providers_response() :: %{
        "NextToken" => String.t(),
        "WebsiteAuthorizationProviders" => list(website_authorization_provider_summary()())
      }

  """
  @type list_website_authorization_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fleets_response() :: %{
        "FleetSummaryList" => list(fleet_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_website_certificate_authority_request() :: %{
        required("FleetArn") => String.t(),
        required("WebsiteCaId") => String.t()
      }

  """
  @type describe_website_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_company_network_configuration_response() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }

  """
  @type describe_company_network_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sign_out_user_response() :: %{}

  """
  @type sign_out_user_response() :: %{}

  @typedoc """

  ## Example:

      update_fleet_metadata_request() :: %{
        optional("DisplayName") => String.t(),
        optional("OptimizeForEndUserLocation") => boolean(),
        required("FleetArn") => String.t()
      }

  """
  @type update_fleet_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_provider_configuration_response() :: %{}

  """
  @type update_identity_provider_configuration_response() :: %{}

  @typedoc """

  ## Example:

      update_domain_metadata_request() :: %{
        optional("DisplayName") => String.t(),
        required("DomainName") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type update_domain_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_audit_stream_configuration_request() :: %{
        required("FleetArn") => String.t()
      }

  """
  @type describe_audit_stream_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_fleet_metadata_request() :: %{
        required("FleetArn") => String.t()
      }

  """
  @type describe_fleet_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_website_authorization_provider_request() :: %{
        required("AuthorizationProviderId") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type disassociate_website_authorization_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_website_authorization_provider_request() :: %{
        optional("DomainName") => String.t(),
        required("AuthorizationProviderType") => list(any()),
        required("FleetArn") => String.t()
      }

  """
  @type associate_website_authorization_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_audit_stream_configuration_request() :: %{
        optional("AuditStreamArn") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type update_audit_stream_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_website_certificate_authority_request() :: %{
        required("FleetArn") => String.t(),
        required("WebsiteCaId") => String.t()
      }

  """
  @type disassociate_website_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_request() :: %{
        required("DeviceId") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type describe_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_domain_response() :: %{}

  """
  @type associate_domain_response() :: %{}

  @typedoc """

  ## Example:

      list_domains_response() :: %{
        "Domains" => list(domain_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_domain_request() :: %{
        required("DomainName") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type disassociate_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_website_certificate_authorities_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type list_website_certificate_authorities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_identity_provider_configuration_request() :: %{
        required("FleetArn") => String.t()
      }

  """
  @type describe_identity_provider_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet_summary() :: %{
        "CompanyCode" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "FleetArn" => String.t(),
        "FleetName" => String.t(),
        "FleetStatus" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type fleet_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_metadata_response() :: %{}

  """
  @type update_domain_metadata_response() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_domain_response() :: %{
        "AcmCertificateArn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DisplayName" => String.t(),
        "DomainName" => String.t(),
        "DomainStatus" => list(any())
      }

  """
  @type describe_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_response() :: %{
        "Devices" => list(device_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_policy_configuration_response() :: %{
        "DeviceCaCertificate" => String.t()
      }

  """
  @type describe_device_policy_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_website_certificate_authority_response() :: %{
        "Certificate" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "DisplayName" => String.t()
      }

  """
  @type describe_website_certificate_authority_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_website_certificate_authority_request() :: %{
        optional("DisplayName") => String.t(),
        required("Certificate") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type associate_website_certificate_authority_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sign_out_user_request() :: %{
        required("FleetArn") => String.t(),
        required("Username") => String.t()
      }

  """
  @type sign_out_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_summary() :: %{
        "DeviceId" => String.t(),
        "DeviceStatus" => list(any())
      }

  """
  @type device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_domain_response() :: %{}

  """
  @type disassociate_domain_response() :: %{}

  @typedoc """

  ## Example:

      describe_domain_request() :: %{
        required("DomainName") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type describe_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      revoke_domain_access_request() :: %{
        required("DomainName") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type revoke_domain_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_audit_stream_configuration_response() :: %{
        "AuditStreamArn" => String.t()
      }

  """
  @type describe_audit_stream_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      describe_device_policy_configuration_request() :: %{
        required("FleetArn") => String.t()
      }

  """
  @type describe_device_policy_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      associate_website_certificate_authority_response() :: %{
        "WebsiteCaId" => String.t()
      }

  """
  @type associate_website_certificate_authority_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_website_authorization_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("FleetArn") => String.t()
      }

  """
  @type list_website_authorization_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_website_authorization_provider_response() :: %{
        "AuthorizationProviderId" => String.t()
      }

  """
  @type associate_website_authorization_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_fleet_metadata_response() :: %{}

  """
  @type update_fleet_metadata_response() :: %{}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_company_network_configuration_response() :: %{}

  """
  @type update_company_network_configuration_response() :: %{}

  @typedoc """

  ## Example:

      describe_company_network_configuration_request() :: %{
        required("FleetArn") => String.t()
      }

  """
  @type describe_company_network_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_website_certificate_authorities_response() :: %{
        "NextToken" => String.t(),
        "WebsiteCertificateAuthorities" => list(website_ca_summary()())
      }

  """
  @type list_website_certificate_authorities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fleet_response() :: %{
        "FleetArn" => String.t()
      }

  """
  @type create_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_device_policy_configuration_response() :: %{}

  """
  @type update_device_policy_configuration_response() :: %{}

  @typedoc """

  ## Example:

      describe_device_response() :: %{
        "FirstAccessedTime" => non_neg_integer(),
        "LastAccessedTime" => non_neg_integer(),
        "Manufacturer" => String.t(),
        "Model" => String.t(),
        "OperatingSystem" => String.t(),
        "OperatingSystemVersion" => String.t(),
        "PatchLevel" => String.t(),
        "Status" => list(any()),
        "Username" => String.t()
      }

  """
  @type describe_device_response() :: %{String.t() => any()}

  @type associate_domain_errors() ::
          resource_already_exists_exception()
          | internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type associate_website_authorization_provider_errors() ::
          resource_already_exists_exception()
          | internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type associate_website_certificate_authority_errors() ::
          resource_already_exists_exception()
          | internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type create_fleet_errors() ::
          resource_already_exists_exception()
          | internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type delete_fleet_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_audit_stream_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_company_network_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_device_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_device_policy_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_domain_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_fleet_metadata_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_identity_provider_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type describe_website_certificate_authority_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type disassociate_domain_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type disassociate_website_authorization_provider_errors() ::
          resource_already_exists_exception()
          | internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type disassociate_website_certificate_authority_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type list_devices_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type list_domains_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type list_fleets_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() :: invalid_request_exception()

  @type list_website_authorization_providers_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type list_website_certificate_authorities_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type restore_domain_access_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type revoke_domain_access_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type sign_out_user_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type tag_resource_errors() :: invalid_request_exception()

  @type untag_resource_errors() :: invalid_request_exception()

  @type update_audit_stream_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_company_network_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_device_policy_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_domain_metadata_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_fleet_metadata_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  @type update_identity_provider_configuration_errors() ::
          internal_server_error_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2018-09-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "worklink",
      global?: false,
      protocol: "rest-json",
      service_id: "WorkLink",
      signature_version: "v4",
      signing_name: "worklink",
      target_prefix: nil
    }
  end

  @doc """
  Specifies a domain to be associated to Amazon WorkLink.
  """
  @spec associate_domain(map(), associate_domain_request(), list()) ::
          {:ok, associate_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_domain_errors()}
  def associate_domain(%Client{} = client, input, options \\ []) do
    url_path = "/associateDomain"
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
  Associates a website authorization provider with a specified fleet.

  This is used to authorize users against associated websites in the company
  network.
  """
  @spec associate_website_authorization_provider(
          map(),
          associate_website_authorization_provider_request(),
          list()
        ) ::
          {:ok, associate_website_authorization_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_website_authorization_provider_errors()}
  def associate_website_authorization_provider(%Client{} = client, input, options \\ []) do
    url_path = "/associateWebsiteAuthorizationProvider"
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
  Imports the root certificate of a certificate authority (CA) used to obtain TLS
  certificates used by associated websites within the company network.
  """
  @spec associate_website_certificate_authority(
          map(),
          associate_website_certificate_authority_request(),
          list()
        ) ::
          {:ok, associate_website_certificate_authority_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_website_certificate_authority_errors()}
  def associate_website_certificate_authority(%Client{} = client, input, options \\ []) do
    url_path = "/associateWebsiteCertificateAuthority"
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
  Creates a fleet.

  A fleet consists of resources and the configuration that delivers
  associated websites to authorized users who download and set up the Amazon
  WorkLink app.
  """
  @spec create_fleet(map(), create_fleet_request(), list()) ::
          {:ok, create_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/createFleet"
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
  Deletes a fleet.

  Prevents users from accessing previously associated websites.
  """
  @spec delete_fleet(map(), delete_fleet_request(), list()) ::
          {:ok, delete_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/deleteFleet"
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
  Describes the configuration for delivering audit streams to the customer
  account.
  """
  @spec describe_audit_stream_configuration(
          map(),
          describe_audit_stream_configuration_request(),
          list()
        ) ::
          {:ok, describe_audit_stream_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_audit_stream_configuration_errors()}
  def describe_audit_stream_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeAuditStreamConfiguration"
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
  Describes the networking configuration to access the internal websites
  associated with
  the specified fleet.
  """
  @spec describe_company_network_configuration(
          map(),
          describe_company_network_configuration_request(),
          list()
        ) ::
          {:ok, describe_company_network_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_company_network_configuration_errors()}
  def describe_company_network_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeCompanyNetworkConfiguration"
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
  Provides information about a user's device.
  """
  @spec describe_device(map(), describe_device_request(), list()) ::
          {:ok, describe_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_errors()}
  def describe_device(%Client{} = client, input, options \\ []) do
    url_path = "/describeDevice"
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
  Describes the device policy configuration for the specified fleet.
  """
  @spec describe_device_policy_configuration(
          map(),
          describe_device_policy_configuration_request(),
          list()
        ) ::
          {:ok, describe_device_policy_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_policy_configuration_errors()}
  def describe_device_policy_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeDevicePolicyConfiguration"
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
  Provides information about the domain.
  """
  @spec describe_domain(map(), describe_domain_request(), list()) ::
          {:ok, describe_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_domain_errors()}
  def describe_domain(%Client{} = client, input, options \\ []) do
    url_path = "/describeDomain"
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
  Provides basic information for the specified fleet, excluding identity provider,
  networking, and device configuration details.
  """
  @spec describe_fleet_metadata(map(), describe_fleet_metadata_request(), list()) ::
          {:ok, describe_fleet_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_metadata_errors()}
  def describe_fleet_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/describeFleetMetadata"
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
  Describes the identity provider configuration of the specified fleet.
  """
  @spec describe_identity_provider_configuration(
          map(),
          describe_identity_provider_configuration_request(),
          list()
        ) ::
          {:ok, describe_identity_provider_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_identity_provider_configuration_errors()}
  def describe_identity_provider_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeIdentityProviderConfiguration"
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
  Provides information about the certificate authority.
  """
  @spec describe_website_certificate_authority(
          map(),
          describe_website_certificate_authority_request(),
          list()
        ) ::
          {:ok, describe_website_certificate_authority_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_website_certificate_authority_errors()}
  def describe_website_certificate_authority(%Client{} = client, input, options \\ []) do
    url_path = "/describeWebsiteCertificateAuthority"
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
  Disassociates a domain from Amazon WorkLink.

  End users lose the ability to access the domain with Amazon WorkLink.
  """
  @spec disassociate_domain(map(), disassociate_domain_request(), list()) ::
          {:ok, disassociate_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_domain_errors()}
  def disassociate_domain(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateDomain"
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
  Disassociates a website authorization provider from a specified fleet.

  After the
  disassociation, users can't load any associated websites that require this
  authorization
  provider.
  """
  @spec disassociate_website_authorization_provider(
          map(),
          disassociate_website_authorization_provider_request(),
          list()
        ) ::
          {:ok, disassociate_website_authorization_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_website_authorization_provider_errors()}
  def disassociate_website_authorization_provider(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateWebsiteAuthorizationProvider"
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
  Removes a certificate authority (CA).
  """
  @spec disassociate_website_certificate_authority(
          map(),
          disassociate_website_certificate_authority_request(),
          list()
        ) ::
          {:ok, disassociate_website_certificate_authority_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_website_certificate_authority_errors()}
  def disassociate_website_certificate_authority(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateWebsiteCertificateAuthority"
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
  Retrieves a list of devices registered with the specified fleet.
  """
  @spec list_devices(map(), list_devices_request(), list()) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}
  def list_devices(%Client{} = client, input, options \\ []) do
    url_path = "/listDevices"
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
  Retrieves a list of domains associated to a specified fleet.
  """
  @spec list_domains(map(), list_domains_request(), list()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, input, options \\ []) do
    url_path = "/listDomains"
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
  Retrieves a list of fleets for the current account and Region.
  """
  @spec list_fleets(map(), list_fleets_request(), list()) ::
          {:ok, list_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, input, options \\ []) do
    url_path = "/listFleets"
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
  Retrieves a list of tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of website authorization providers associated with a specified
  fleet.
  """
  @spec list_website_authorization_providers(
          map(),
          list_website_authorization_providers_request(),
          list()
        ) ::
          {:ok, list_website_authorization_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_website_authorization_providers_errors()}
  def list_website_authorization_providers(%Client{} = client, input, options \\ []) do
    url_path = "/listWebsiteAuthorizationProviders"
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
  Retrieves a list of certificate authorities added for the current account and
  Region.
  """
  @spec list_website_certificate_authorities(
          map(),
          list_website_certificate_authorities_request(),
          list()
        ) ::
          {:ok, list_website_certificate_authorities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_website_certificate_authorities_errors()}
  def list_website_certificate_authorities(%Client{} = client, input, options \\ []) do
    url_path = "/listWebsiteCertificateAuthorities"
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
  Moves a domain to ACTIVE status if it was in the INACTIVE status.
  """
  @spec restore_domain_access(map(), restore_domain_access_request(), list()) ::
          {:ok, restore_domain_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_domain_access_errors()}
  def restore_domain_access(%Client{} = client, input, options \\ []) do
    url_path = "/restoreDomainAccess"
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
  Moves a domain to INACTIVE status if it was in the ACTIVE status.
  """
  @spec revoke_domain_access(map(), revoke_domain_access_request(), list()) ::
          {:ok, revoke_domain_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_domain_access_errors()}
  def revoke_domain_access(%Client{} = client, input, options \\ []) do
    url_path = "/revokeDomainAccess"
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
  Signs the user out from all of their devices.

  The user can sign in again if they have
  valid credentials.
  """
  @spec sign_out_user(map(), sign_out_user_request(), list()) ::
          {:ok, sign_out_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sign_out_user_errors()}
  def sign_out_user(%Client{} = client, input, options \\ []) do
    url_path = "/signOutUser"
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
  Adds or overwrites one or more tags for the specified resource, such as a fleet.

  Each tag consists of a key and an optional value. If a resource already has a
  tag with the same key, this operation updates its value.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates the audit stream configuration for the fleet.
  """
  @spec update_audit_stream_configuration(
          map(),
          update_audit_stream_configuration_request(),
          list()
        ) ::
          {:ok, update_audit_stream_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_audit_stream_configuration_errors()}
  def update_audit_stream_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateAuditStreamConfiguration"
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
  Updates the company network configuration for the fleet.
  """
  @spec update_company_network_configuration(
          map(),
          update_company_network_configuration_request(),
          list()
        ) ::
          {:ok, update_company_network_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_company_network_configuration_errors()}
  def update_company_network_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateCompanyNetworkConfiguration"
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
  Updates the device policy configuration for the fleet.
  """
  @spec update_device_policy_configuration(
          map(),
          update_device_policy_configuration_request(),
          list()
        ) ::
          {:ok, update_device_policy_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_policy_configuration_errors()}
  def update_device_policy_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateDevicePolicyConfiguration"
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
  Updates domain metadata, such as DisplayName.
  """
  @spec update_domain_metadata(map(), update_domain_metadata_request(), list()) ::
          {:ok, update_domain_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_metadata_errors()}
  def update_domain_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/updateDomainMetadata"
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
  Updates fleet metadata, such as DisplayName.
  """
  @spec update_fleet_metadata(map(), update_fleet_metadata_request(), list()) ::
          {:ok, update_fleet_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_metadata_errors()}
  def update_fleet_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateFleetMetadata"
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
  Updates the identity provider configuration for the fleet.
  """
  @spec update_identity_provider_configuration(
          map(),
          update_identity_provider_configuration_request(),
          list()
        ) ::
          {:ok, update_identity_provider_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_identity_provider_configuration_errors()}
  def update_identity_provider_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateIdentityProviderConfiguration"
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
end
