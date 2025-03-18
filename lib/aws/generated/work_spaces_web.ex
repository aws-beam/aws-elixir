# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpacesWeb do
  @moduledoc """
  Amazon WorkSpaces Secure Browser is a low cost, fully managed WorkSpace built
  specifically to facilitate secure, web-based workloads.

  WorkSpaces Secure Browser makes it
  easy for customers to safely provide their employees with access to internal
  websites and
  SaaS web applications without the administrative burden of appliances or
  specialized client
  software. WorkSpaces Secure Browser provides simple policy tools tailored for
  user
  interactions, while offloading common tasks like capacity management, scaling,
  and
  maintaining browser images.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_ip_access_settings_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("clientToken") => String.t(),
        optional("customerManagedKey") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("tags") => list(tag()()),
        required("ipRules") => list(ip_rule()())
      }

  """
  @type create_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ip_rule() :: %{
        "description" => String.t(),
        "ipRange" => String.t()
      }

  """
  @type ip_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_browser_settings_response() :: %{
        "browserSettingsArn" => String.t()
      }

  """
  @type create_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      expire_session_response() :: %{}

  """
  @type expire_session_response() :: %{}

  @typedoc """

  ## Example:

      get_trust_store_certificate_request() :: %{
        required("thumbprint") => String.t()
      }

  """
  @type get_trust_store_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ip_access_settings_response() :: %{
        "ipAccessSettingsArn" => String.t()
      }

  """
  @type create_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ip_access_settings_summary() :: %{
        "creationDate" => non_neg_integer(),
        "description" => String.t(),
        "displayName" => String.t(),
        "ipAccessSettingsArn" => String.t()
      }

  """
  @type ip_access_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_settings_response() :: %{
        "portalArn" => String.t(),
        "userSettingsArn" => String.t()
      }

  """
  @type associate_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cookie_synchronization_configuration() :: %{
        "allowlist" => list(cookie_specification()()),
        "blocklist" => list(cookie_specification()())
      }

  """
  @type cookie_synchronization_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        optional("clientToken") => String.t(),
        required("tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trust_store_summary() :: %{
        "trustStoreArn" => String.t()
      }

  """
  @type trust_store_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ip_access_settings_response() :: %{
        "ipAccessSettings" => list(ip_access_settings_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portal_request() :: %{}

  """
  @type get_portal_request() :: %{}

  @typedoc """

  ## Example:

      get_network_settings_request() :: %{}

  """
  @type get_network_settings_request() :: %{}

  @typedoc """

  ## Example:

      create_user_access_logging_settings_response() :: %{
        "userAccessLoggingSettingsArn" => String.t()
      }

  """
  @type create_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_summary() :: %{
        "endTime" => non_neg_integer(),
        "portalArn" => String.t(),
        "sessionId" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "username" => String.t()
      }

  """
  @type session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_providers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_identity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        "session" => session()
      }

  """
  @type get_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portal_service_provider_metadata_request() :: %{}

  """
  @type get_portal_service_provider_metadata_request() :: %{}

  @typedoc """

  ## Example:

      list_trust_store_certificates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_trust_store_certificates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_provider_response() :: %{
        "identityProvider" => identity_provider()
      }

  """
  @type update_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_identity_provider_response() :: %{
        "identityProvider" => identity_provider()
      }

  """
  @type get_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_browser_settings_request() :: %{
        optional("browserPolicy") => String.t(),
        optional("clientToken") => String.t()
      }

  """
  @type update_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_access_logging_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_user_access_logging_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_network_settings_response() :: %{
        "networkSettings" => network_settings()
      }

  """
  @type update_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_network_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("securityGroupIds") => list(String.t()()),
        required("subnetIds") => list(String.t()()),
        required("vpcId") => String.t()
      }

  """
  @type create_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trust_store_request() :: %{}

  """
  @type get_trust_store_request() :: %{}

  @typedoc """

  ## Example:

      inline_redaction_configuration() :: %{
        "globalConfidenceLevel" => integer(),
        "globalEnforcedUrls" => list(String.t()()),
        "globalExemptUrls" => list(String.t()()),
        "inlineRedactionPatterns" => list(inline_redaction_pattern()())
      }

  """
  @type inline_redaction_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_trust_store_request() :: %{
        required("trustStoreArn") => String.t()
      }

  """
  @type associate_trust_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cookie_specification() :: %{
        "domain" => String.t(),
        "name" => String.t(),
        "path" => String.t()
      }

  """
  @type cookie_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_trust_store_response() :: %{}

  """
  @type disassociate_trust_store_response() :: %{}

  @typedoc """

  ## Example:

      associate_user_access_logging_settings_request() :: %{
        required("userAccessLoggingSettingsArn") => String.t()
      }

  """
  @type associate_user_access_logging_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_settings_request() :: %{
        required("userSettingsArn") => String.t()
      }

  """
  @type associate_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_identity_provider_response() :: %{
        "identityProviderArn" => String.t()
      }

  """
  @type create_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_browser_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_access_logging_settings_request() :: %{}

  """
  @type delete_user_access_logging_settings_request() :: %{}

  @typedoc """

  ## Example:

      create_portal_response() :: %{
        "portalArn" => String.t(),
        "portalEndpoint" => String.t()
      }

  """
  @type create_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_ip_access_settings_response() :: %{
        "ipAccessSettingsArn" => String.t(),
        "portalArn" => String.t()
      }

  """
  @type associate_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_settings_response() :: %{
        "nextToken" => String.t(),
        "userSettings" => list(user_settings_summary()())
      }

  """
  @type list_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trust_store_response() :: %{
        "trustStore" => trust_store()
      }

  """
  @type get_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_protection_settings_response() :: %{
        "dataProtectionSettingsArn" => String.t()
      }

  """
  @type create_data_protection_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_access_logging_settings() :: %{
        "associatedPortalArns" => list(String.t()()),
        "kinesisStreamArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t()
      }

  """
  @type user_access_logging_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_access_logging_settings_request() :: %{}

  """
  @type get_user_access_logging_settings_request() :: %{}

  @typedoc """

  ## Example:

      delete_identity_provider_request() :: %{}

  """
  @type delete_identity_provider_request() :: %{}

  @typedoc """

  ## Example:

      expire_session_request() :: %{}

  """
  @type expire_session_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_browser_settings_response() :: %{}

  """
  @type disassociate_browser_settings_response() :: %{}

  @typedoc """

  ## Example:

      list_ip_access_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_settings_response() :: %{
        "userSettings" => user_settings()
      }

  """
  @type get_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ip_access_settings_response() :: %{
        "ipAccessSettings" => ip_access_settings()
      }

  """
  @type update_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_trust_store_response() :: %{
        "portalArn" => String.t(),
        "trustStoreArn" => String.t()
      }

  """
  @type associate_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_trust_store_request() :: %{
        optional("certificatesToAdd") => list(binary()()),
        optional("certificatesToDelete") => list(String.t()()),
        optional("clientToken") => String.t()
      }

  """
  @type update_trust_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_settings_summary() :: %{
        "cookieSynchronizationConfiguration" => cookie_synchronization_configuration(),
        "copyAllowed" => String.t(),
        "deepLinkAllowed" => String.t(),
        "disconnectTimeoutInMinutes" => integer(),
        "downloadAllowed" => String.t(),
        "idleDisconnectTimeoutInMinutes" => integer(),
        "pasteAllowed" => String.t(),
        "printAllowed" => String.t(),
        "toolbarConfiguration" => toolbar_configuration(),
        "uploadAllowed" => String.t(),
        "userSettingsArn" => String.t()
      }

  """
  @type user_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_access_logging_settings_summary() :: %{
        "kinesisStreamArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t()
      }

  """
  @type user_access_logging_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_settings_response() :: %{}

  """
  @type delete_user_settings_response() :: %{}

  @typedoc """

  ## Example:

      associate_network_settings_request() :: %{
        required("networkSettingsArn") => String.t()
      }

  """
  @type associate_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_session_request() :: %{}

  """
  @type get_session_request() :: %{}

  @typedoc """

  ## Example:

      associate_browser_settings_request() :: %{
        required("browserSettingsArn") => String.t()
      }

  """
  @type associate_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_protection_settings_response() :: %{}

  """
  @type delete_data_protection_settings_response() :: %{}

  @typedoc """

  ## Example:

      list_trust_stores_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_trust_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_trust_store_request() :: %{}

  """
  @type delete_trust_store_request() :: %{}

  @typedoc """

  ## Example:

      delete_browser_settings_request() :: %{}

  """
  @type delete_browser_settings_request() :: %{}

  @typedoc """

  ## Example:

      certificate_summary() :: %{
        "issuer" => String.t(),
        "notValidAfter" => non_neg_integer(),
        "notValidBefore" => non_neg_integer(),
        "subject" => String.t(),
        "thumbprint" => String.t()
      }

  """
  @type certificate_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_browser_settings_request() :: %{}

  """
  @type get_browser_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_ip_access_settings_response() :: %{
        "ipAccessSettings" => ip_access_settings()
      }

  """
  @type get_ip_access_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_settings() :: %{
        "associatedPortalArns" => list(String.t()()),
        "networkSettingsArn" => String.t(),
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }

  """
  @type network_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_portals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_portals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inline_redaction_pattern() :: %{
        "builtInPatternId" => String.t(),
        "confidenceLevel" => integer(),
        "customPattern" => custom_pattern(),
        "enforcedUrls" => list(String.t()()),
        "exemptUrls" => list(String.t()()),
        "redactionPlaceHolder" => redaction_place_holder()
      }

  """
  @type inline_redaction_pattern() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_response() :: %{
        "nextToken" => String.t(),
        "sessions" => list(session_summary()())
      }

  """
  @type list_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ip_access_settings_request() :: %{}

  """
  @type delete_ip_access_settings_request() :: %{}

  @typedoc """

  ## Example:

      delete_portal_request() :: %{}

  """
  @type delete_portal_request() :: %{}

  @typedoc """

  ## Example:

      update_user_settings_response() :: %{
        "userSettings" => user_settings()
      }

  """
  @type update_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_trust_store_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("certificateList") => list(binary()())
      }

  """
  @type create_trust_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_network_settings_response() :: %{
        "networkSettingsArn" => String.t(),
        "portalArn" => String.t()
      }

  """
  @type associate_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_access_logging_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("kinesisStreamArn") => String.t()
      }

  """
  @type update_user_access_logging_settings_request() :: %{String.t() => any()}

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

      get_user_settings_request() :: %{}

  """
  @type get_user_settings_request() :: %{}

  @typedoc """

  ## Example:

      create_network_settings_response() :: %{
        "networkSettingsArn" => String.t()
      }

  """
  @type create_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_browser_settings_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("clientToken") => String.t(),
        optional("customerManagedKey") => String.t(),
        optional("tags") => list(tag()()),
        required("browserPolicy") => String.t()
      }

  """
  @type create_browser_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_network_settings_request() :: %{}

  """
  @type disassociate_network_settings_request() :: %{}

  @typedoc """

  ## Example:

      delete_portal_response() :: %{}

  """
  @type delete_portal_response() :: %{}

  @typedoc """

  ## Example:

      associate_data_protection_settings_response() :: %{
        "dataProtectionSettingsArn" => String.t(),
        "portalArn" => String.t()
      }

  """
  @type associate_data_protection_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_network_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_portal_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("authenticationType") => String.t(),
        optional("clientToken") => String.t(),
        optional("customerManagedKey") => String.t(),
        optional("displayName") => String.t(),
        optional("instanceType") => String.t(),
        optional("maxConcurrentSessions") => integer(),
        optional("tags") => list(tag()())
      }

  """
  @type create_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_network_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("securityGroupIds") => list(String.t()()),
        optional("subnetIds") => list(String.t()()),
        optional("vpcId") => String.t()
      }

  """
  @type update_network_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_portal_response() :: %{
        "portal" => portal()
      }

  """
  @type update_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_network_settings_response() :: %{
        "networkSettings" => network_settings()
      }

  """
  @type get_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_protection_settings() :: %{
        "additionalEncryptionContext" => map(),
        "associatedPortalArns" => list(String.t()()),
        "creationDate" => non_neg_integer(),
        "customerManagedKey" => String.t(),
        "dataProtectionSettingsArn" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "inlineRedactionConfiguration" => inline_redaction_configuration()
      }

  """
  @type data_protection_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_settings_response() :: %{}

  """
  @type disassociate_user_settings_response() :: %{}

  @typedoc """

  ## Example:

      update_data_protection_settings_response() :: %{
        "dataProtectionSettings" => data_protection_settings()
      }

  """
  @type update_data_protection_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      browser_settings_summary() :: %{
        "browserSettingsArn" => String.t()
      }

  """
  @type browser_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_protection_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("inlineRedactionConfiguration") => inline_redaction_configuration()
      }

  """
  @type update_data_protection_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_settings_response() :: %{
        "userSettingsArn" => String.t()
      }

  """
  @type create_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_trust_stores_response() :: %{
        "nextToken" => String.t(),
        "trustStores" => list(trust_store_summary()())
      }

  """
  @type list_trust_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_browser_settings_request() :: %{}

  """
  @type disassociate_browser_settings_request() :: %{}

  @typedoc """

  ## Example:

      delete_network_settings_request() :: %{}

  """
  @type delete_network_settings_request() :: %{}

  @typedoc """

  ## Example:

      identity_provider_summary() :: %{
        "identityProviderArn" => String.t(),
        "identityProviderName" => String.t(),
        "identityProviderType" => String.t()
      }

  """
  @type identity_provider_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_ip_access_settings_request() :: %{
        required("ipAccessSettingsArn") => String.t()
      }

  """
  @type associate_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sessionId") => String.t(),
        optional("sortBy") => list(any()),
        optional("status") => list(any()),
        optional("username") => String.t()
      }

  """
  @type list_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_protection_settings_response() :: %{
        "dataProtectionSettings" => list(data_protection_settings_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_protection_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_settings_summary() :: %{
        "networkSettingsArn" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type network_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_access_logging_settings_response() :: %{}

  """
  @type disassociate_user_access_logging_settings_response() :: %{}

  @typedoc """

  ## Example:

      session() :: %{
        "clientIpAddresses" => list(String.t()()),
        "endTime" => non_neg_integer(),
        "portalArn" => String.t(),
        "sessionId" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "username" => String.t()
      }

  """
  @type session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portal_service_provider_metadata_response() :: %{
        "portalArn" => String.t(),
        "serviceProviderSamlMetadata" => String.t()
      }

  """
  @type get_portal_service_provider_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("cookieSynchronizationConfiguration") => cookie_synchronization_configuration(),
        optional("copyAllowed") => String.t(),
        optional("deepLinkAllowed") => String.t(),
        optional("disconnectTimeoutInMinutes") => integer(),
        optional("downloadAllowed") => String.t(),
        optional("idleDisconnectTimeoutInMinutes") => integer(),
        optional("pasteAllowed") => String.t(),
        optional("printAllowed") => String.t(),
        optional("toolbarConfiguration") => toolbar_configuration(),
        optional("uploadAllowed") => String.t()
      }

  """
  @type update_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_ip_access_settings_response() :: %{}

  """
  @type disassociate_ip_access_settings_response() :: %{}

  @typedoc """

  ## Example:

      list_network_settings_response() :: %{
        "networkSettings" => list(network_settings_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_network_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_provider() :: %{
        "identityProviderArn" => String.t(),
        "identityProviderDetails" => map(),
        "identityProviderName" => String.t(),
        "identityProviderType" => String.t()
      }

  """
  @type identity_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ip_access_settings_response() :: %{}

  """
  @type delete_ip_access_settings_response() :: %{}

  @typedoc """

  ## Example:

      get_browser_settings_response() :: %{
        "browserSettings" => browser_settings()
      }

  """
  @type get_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_trust_store_certificates_response() :: %{
        "certificateList" => list(certificate_summary()()),
        "nextToken" => String.t(),
        "trustStoreArn" => String.t()
      }

  """
  @type list_trust_store_certificates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_portals_response() :: %{
        "nextToken" => String.t(),
        "portals" => list(portal_summary()())
      }

  """
  @type list_portals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_protection_settings_request() :: %{}

  """
  @type delete_data_protection_settings_request() :: %{}

  @typedoc """

  ## Example:

      certificate() :: %{
        "body" => binary(),
        "issuer" => String.t(),
        "notValidAfter" => non_neg_integer(),
        "notValidBefore" => non_neg_integer(),
        "subject" => String.t(),
        "thumbprint" => String.t()
      }

  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_ip_access_settings_request() :: %{}

  """
  @type disassociate_ip_access_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_trust_store_certificate_response() :: %{
        "certificate" => certificate(),
        "trustStoreArn" => String.t()
      }

  """
  @type get_trust_store_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_identity_provider_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("identityProviderDetails") => map(),
        required("identityProviderName") => String.t(),
        required("identityProviderType") => String.t(),
        required("portalArn") => String.t()
      }

  """
  @type create_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_browser_settings_response() :: %{
        "browserSettings" => browser_settings()
      }

  """
  @type update_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_network_settings_response() :: %{}

  """
  @type delete_network_settings_response() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_trust_store_response() :: %{
        "trustStoreArn" => String.t()
      }

  """
  @type create_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_identity_provider_response() :: %{}

  """
  @type delete_identity_provider_response() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      redaction_place_holder() :: %{
        "redactionPlaceHolderText" => String.t(),
        "redactionPlaceHolderType" => String.t()
      }

  """
  @type redaction_place_holder() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_settings_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("clientToken") => String.t(),
        optional("cookieSynchronizationConfiguration") => cookie_synchronization_configuration(),
        optional("customerManagedKey") => String.t(),
        optional("deepLinkAllowed") => String.t(),
        optional("disconnectTimeoutInMinutes") => integer(),
        optional("idleDisconnectTimeoutInMinutes") => integer(),
        optional("tags") => list(tag()()),
        optional("toolbarConfiguration") => toolbar_configuration(),
        required("copyAllowed") => String.t(),
        required("downloadAllowed") => String.t(),
        required("pasteAllowed") => String.t(),
        required("printAllowed") => String.t(),
        required("uploadAllowed") => String.t()
      }

  """
  @type create_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_settings_request() :: %{}

  """
  @type delete_user_settings_request() :: %{}

  @typedoc """

  ## Example:

      data_protection_settings_summary() :: %{
        "creationDate" => non_neg_integer(),
        "dataProtectionSettingsArn" => String.t(),
        "description" => String.t(),
        "displayName" => String.t()
      }

  """
  @type data_protection_settings_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_portal_request() :: %{
        optional("authenticationType") => String.t(),
        optional("displayName") => String.t(),
        optional("instanceType") => String.t(),
        optional("maxConcurrentSessions") => integer()
      }

  """
  @type update_portal_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_protection_settings_request() :: %{}

  """
  @type get_data_protection_settings_request() :: %{}

  @typedoc """

  ## Example:

      create_data_protection_settings_request() :: %{
        optional("additionalEncryptionContext") => map(),
        optional("clientToken") => String.t(),
        optional("customerManagedKey") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("inlineRedactionConfiguration") => inline_redaction_configuration(),
        optional("tags") => list(tag()())
      }

  """
  @type create_data_protection_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ip_access_settings() :: %{
        "additionalEncryptionContext" => map(),
        "associatedPortalArns" => list(String.t()()),
        "creationDate" => non_neg_integer(),
        "customerManagedKey" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "ipAccessSettingsArn" => String.t(),
        "ipRules" => list(ip_rule()())
      }

  """
  @type ip_access_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_data_protection_settings_response() :: %{}

  """
  @type disassociate_data_protection_settings_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => String.t()
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

      get_ip_access_settings_request() :: %{}

  """
  @type get_ip_access_settings_request() :: %{}

  @typedoc """

  ## Example:

      list_identity_providers_response() :: %{
        "identityProviders" => list(identity_provider_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_identity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_access_logging_settings_request() :: %{}

  """
  @type disassociate_user_access_logging_settings_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => integer(),
        "serviceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_data_protection_settings_request() :: %{
        required("dataProtectionSettingsArn") => String.t()
      }

  """
  @type associate_data_protection_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_browser_settings_response() :: %{
        "browserSettings" => list(browser_settings_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      toolbar_configuration() :: %{
        "hiddenToolbarItems" => list(String.t()()),
        "maxDisplayResolution" => String.t(),
        "toolbarType" => String.t(),
        "visualMode" => String.t()
      }

  """
  @type toolbar_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_protection_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_protection_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_access_logging_settings_response() :: %{
        "portalArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t()
      }

  """
  @type associate_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      portal_summary() :: %{
        "authenticationType" => String.t(),
        "browserSettingsArn" => String.t(),
        "browserType" => String.t(),
        "creationDate" => non_neg_integer(),
        "dataProtectionSettingsArn" => String.t(),
        "displayName" => String.t(),
        "instanceType" => String.t(),
        "ipAccessSettingsArn" => String.t(),
        "maxConcurrentSessions" => integer(),
        "networkSettingsArn" => String.t(),
        "portalArn" => String.t(),
        "portalEndpoint" => String.t(),
        "portalStatus" => String.t(),
        "rendererType" => String.t(),
        "trustStoreArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t(),
        "userSettingsArn" => String.t()
      }

  """
  @type portal_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_identity_provider_request() :: %{}

  """
  @type get_identity_provider_request() :: %{}

  @typedoc """

  ## Example:

      associate_browser_settings_response() :: %{
        "browserSettingsArn" => String.t(),
        "portalArn" => String.t()
      }

  """
  @type associate_browser_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_settings() :: %{
        "additionalEncryptionContext" => map(),
        "associatedPortalArns" => list(String.t()()),
        "cookieSynchronizationConfiguration" => cookie_synchronization_configuration(),
        "copyAllowed" => String.t(),
        "customerManagedKey" => String.t(),
        "deepLinkAllowed" => String.t(),
        "disconnectTimeoutInMinutes" => integer(),
        "downloadAllowed" => String.t(),
        "idleDisconnectTimeoutInMinutes" => integer(),
        "pasteAllowed" => String.t(),
        "printAllowed" => String.t(),
        "toolbarConfiguration" => toolbar_configuration(),
        "uploadAllowed" => String.t(),
        "userSettingsArn" => String.t()
      }

  """
  @type user_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_portal_response() :: %{
        "portal" => portal()
      }

  """
  @type get_portal_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_pattern() :: %{
        "keywordRegex" => String.t(),
        "patternDescription" => String.t(),
        "patternName" => String.t(),
        "patternRegex" => String.t()
      }

  """
  @type custom_pattern() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_access_logging_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        required("kinesisStreamArn") => String.t()
      }

  """
  @type create_user_access_logging_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_provider_request() :: %{
        optional("clientToken") => String.t(),
        optional("identityProviderDetails") => map(),
        optional("identityProviderName") => String.t(),
        optional("identityProviderType") => String.t()
      }

  """
  @type update_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_access_logging_settings_response() :: %{
        "nextToken" => String.t(),
        "userAccessLoggingSettings" => list(user_access_logging_settings_summary()())
      }

  """
  @type list_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_protection_settings_response() :: %{
        "dataProtectionSettings" => data_protection_settings()
      }

  """
  @type get_data_protection_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_settings_request() :: %{}

  """
  @type disassociate_user_settings_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_data_protection_settings_request() :: %{}

  """
  @type disassociate_data_protection_settings_request() :: %{}

  @typedoc """

  ## Example:

      update_ip_access_settings_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("ipRules") => list(ip_rule()())
      }

  """
  @type update_ip_access_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      browser_settings() :: %{
        "additionalEncryptionContext" => map(),
        "associatedPortalArns" => list(String.t()()),
        "browserPolicy" => String.t(),
        "browserSettingsArn" => String.t(),
        "customerManagedKey" => String.t()
      }

  """
  @type browser_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_access_logging_settings_response() :: %{
        "userAccessLoggingSettings" => user_access_logging_settings()
      }

  """
  @type update_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_settings_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_browser_settings_response() :: %{}

  """
  @type delete_browser_settings_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_network_settings_response() :: %{}

  """
  @type disassociate_network_settings_response() :: %{}

  @typedoc """

  ## Example:

      delete_user_access_logging_settings_response() :: %{}

  """
  @type delete_user_access_logging_settings_response() :: %{}

  @typedoc """

  ## Example:

      delete_trust_store_response() :: %{}

  """
  @type delete_trust_store_response() :: %{}

  @typedoc """

  ## Example:

      get_user_access_logging_settings_response() :: %{
        "userAccessLoggingSettings" => user_access_logging_settings()
      }

  """
  @type get_user_access_logging_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      portal() :: %{
        "additionalEncryptionContext" => map(),
        "authenticationType" => String.t(),
        "browserSettingsArn" => String.t(),
        "browserType" => String.t(),
        "creationDate" => non_neg_integer(),
        "customerManagedKey" => String.t(),
        "dataProtectionSettingsArn" => String.t(),
        "displayName" => String.t(),
        "instanceType" => String.t(),
        "ipAccessSettingsArn" => String.t(),
        "maxConcurrentSessions" => integer(),
        "networkSettingsArn" => String.t(),
        "portalArn" => String.t(),
        "portalEndpoint" => String.t(),
        "portalStatus" => String.t(),
        "rendererType" => String.t(),
        "statusReason" => String.t(),
        "trustStoreArn" => String.t(),
        "userAccessLoggingSettingsArn" => String.t(),
        "userSettingsArn" => String.t()
      }

  """
  @type portal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trust_store() :: %{
        "associatedPortalArns" => list(String.t()()),
        "trustStoreArn" => String.t()
      }

  """
  @type trust_store() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_trust_store_response() :: %{
        "trustStoreArn" => String.t()
      }

  """
  @type update_trust_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_trust_store_request() :: %{}

  """
  @type disassociate_trust_store_request() :: %{}

  @type associate_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_data_protection_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_protection_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_data_protection_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type disassociate_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_data_protection_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type expire_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_protection_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_portal_service_provider_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_trust_store_certificate_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_data_protection_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_identity_providers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_portals_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sessions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_trust_store_certificates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_trust_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_browser_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_data_protection_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_ip_access_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_network_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_portal_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_trust_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_user_access_logging_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_user_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-07-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workspaces-web",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WorkSpaces Web",
      signature_version: "v4",
      signing_name: "workspaces-web",
      target_prefix: nil
    }
  end

  @doc """
  Associates a browser settings resource with a web portal.
  """
  @spec associate_browser_settings(
          map(),
          String.t(),
          associate_browser_settings_request(),
          list()
        ) ::
          {:ok, associate_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_browser_settings_errors()}
  def associate_browser_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/browserSettings"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"browserSettingsArn", "browserSettingsArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a data protection settings resource with a web portal.
  """
  @spec associate_data_protection_settings(
          map(),
          String.t(),
          associate_data_protection_settings_request(),
          list()
        ) ::
          {:ok, associate_data_protection_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_data_protection_settings_errors()}
  def associate_data_protection_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/dataProtectionSettings"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"dataProtectionSettingsArn", "dataProtectionSettingsArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates an IP access settings resource with a web portal.
  """
  @spec associate_ip_access_settings(
          map(),
          String.t(),
          associate_ip_access_settings_request(),
          list()
        ) ::
          {:ok, associate_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_ip_access_settings_errors()}
  def associate_ip_access_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/ipAccessSettings"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ipAccessSettingsArn", "ipAccessSettingsArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a network settings resource with a web portal.
  """
  @spec associate_network_settings(
          map(),
          String.t(),
          associate_network_settings_request(),
          list()
        ) ::
          {:ok, associate_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_network_settings_errors()}
  def associate_network_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/networkSettings"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"networkSettingsArn", "networkSettingsArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a trust store with a web portal.
  """
  @spec associate_trust_store(map(), String.t(), associate_trust_store_request(), list()) ::
          {:ok, associate_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_trust_store_errors()}
  def associate_trust_store(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/trustStores"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"trustStoreArn", "trustStoreArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a user access logging settings resource with a web portal.
  """
  @spec associate_user_access_logging_settings(
          map(),
          String.t(),
          associate_user_access_logging_settings_request(),
          list()
        ) ::
          {:ok, associate_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_user_access_logging_settings_errors()}
  def associate_user_access_logging_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path =
      "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userAccessLoggingSettings"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"userAccessLoggingSettingsArn", "userAccessLoggingSettingsArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a user settings resource with a web portal.
  """
  @spec associate_user_settings(map(), String.t(), associate_user_settings_request(), list()) ::
          {:ok, associate_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_user_settings_errors()}
  def associate_user_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userSettings"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"userSettingsArn", "userSettingsArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a browser settings resource that can be associated with a web portal.

  Once
  associated with a web portal, browser settings control how the browser will
  behave once a
  user starts a streaming session for the web portal.
  """
  @spec create_browser_settings(map(), create_browser_settings_request(), list()) ::
          {:ok, create_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_browser_settings_errors()}
  def create_browser_settings(%Client{} = client, input, options \\ []) do
    url_path = "/browserSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a data protection settings resource that can be associated with a web
  portal.
  """
  @spec create_data_protection_settings(map(), create_data_protection_settings_request(), list()) ::
          {:ok, create_data_protection_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_protection_settings_errors()}
  def create_data_protection_settings(%Client{} = client, input, options \\ []) do
    url_path = "/dataProtectionSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an identity provider resource that is then associated with a web portal.
  """
  @spec create_identity_provider(map(), create_identity_provider_request(), list()) ::
          {:ok, create_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_identity_provider_errors()}
  def create_identity_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identityProviders"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an IP access settings resource that can be associated with a web portal.
  """
  @spec create_ip_access_settings(map(), create_ip_access_settings_request(), list()) ::
          {:ok, create_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ip_access_settings_errors()}
  def create_ip_access_settings(%Client{} = client, input, options \\ []) do
    url_path = "/ipAccessSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a network settings resource that can be associated with a web portal.

  Once
  associated with a web portal, network settings define how streaming instances
  will connect
  with your specified VPC.
  """
  @spec create_network_settings(map(), create_network_settings_request(), list()) ::
          {:ok, create_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_network_settings_errors()}
  def create_network_settings(%Client{} = client, input, options \\ []) do
    url_path = "/networkSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a web portal.
  """
  @spec create_portal(map(), create_portal_request(), list()) ::
          {:ok, create_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_portal_errors()}
  def create_portal(%Client{} = client, input, options \\ []) do
    url_path = "/portals"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a trust store that can be associated with a web portal.

  A trust store contains
  certificate authority (CA) certificates. Once associated with a web portal, the
  browser in
  a streaming session will recognize certificates that have been issued using any
  of the CAs
  in the trust store. If your organization has internal websites that use
  certificates issued
  by private CAs, you should add the private CA certificate to the trust store.
  """
  @spec create_trust_store(map(), create_trust_store_request(), list()) ::
          {:ok, create_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trust_store_errors()}
  def create_trust_store(%Client{} = client, input, options \\ []) do
    url_path = "/trustStores"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a user access logging settings resource that can be associated with a
  web
  portal.
  """
  @spec create_user_access_logging_settings(
          map(),
          create_user_access_logging_settings_request(),
          list()
        ) ::
          {:ok, create_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_access_logging_settings_errors()}
  def create_user_access_logging_settings(%Client{} = client, input, options \\ []) do
    url_path = "/userAccessLoggingSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a user settings resource that can be associated with a web portal.

  Once
  associated with a web portal, user settings control how users can transfer data
  between a
  streaming session and the their local devices.
  """
  @spec create_user_settings(map(), create_user_settings_request(), list()) ::
          {:ok, create_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_settings_errors()}
  def create_user_settings(%Client{} = client, input, options \\ []) do
    url_path = "/userSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes browser settings.
  """
  @spec delete_browser_settings(map(), String.t(), delete_browser_settings_request(), list()) ::
          {:ok, delete_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_browser_settings_errors()}
  def delete_browser_settings(%Client{} = client, browser_settings_arn, input, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes data protection settings.
  """
  @spec delete_data_protection_settings(
          map(),
          String.t(),
          delete_data_protection_settings_request(),
          list()
        ) ::
          {:ok, delete_data_protection_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_protection_settings_errors()}
  def delete_data_protection_settings(
        %Client{} = client,
        data_protection_settings_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/dataProtectionSettings/#{AWS.Util.encode_multi_segment_uri(data_protection_settings_arn)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the identity provider.
  """
  @spec delete_identity_provider(map(), String.t(), delete_identity_provider_request(), list()) ::
          {:ok, delete_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_identity_provider_errors()}
  def delete_identity_provider(%Client{} = client, identity_provider_arn, input, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes IP access settings.
  """
  @spec delete_ip_access_settings(map(), String.t(), delete_ip_access_settings_request(), list()) ::
          {:ok, delete_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ip_access_settings_errors()}
  def delete_ip_access_settings(%Client{} = client, ip_access_settings_arn, input, options \\ []) do
    url_path = "/ipAccessSettings/#{AWS.Util.encode_multi_segment_uri(ip_access_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes network settings.
  """
  @spec delete_network_settings(map(), String.t(), delete_network_settings_request(), list()) ::
          {:ok, delete_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_network_settings_errors()}
  def delete_network_settings(%Client{} = client, network_settings_arn, input, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a web portal.
  """
  @spec delete_portal(map(), String.t(), delete_portal_request(), list()) ::
          {:ok, delete_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_portal_errors()}
  def delete_portal(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the trust store.
  """
  @spec delete_trust_store(map(), String.t(), delete_trust_store_request(), list()) ::
          {:ok, delete_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trust_store_errors()}
  def delete_trust_store(%Client{} = client, trust_store_arn, input, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes user access logging settings.
  """
  @spec delete_user_access_logging_settings(
          map(),
          String.t(),
          delete_user_access_logging_settings_request(),
          list()
        ) ::
          {:ok, delete_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_access_logging_settings_errors()}
  def delete_user_access_logging_settings(
        %Client{} = client,
        user_access_logging_settings_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/userAccessLoggingSettings/#{AWS.Util.encode_multi_segment_uri(user_access_logging_settings_arn)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes user settings.
  """
  @spec delete_user_settings(map(), String.t(), delete_user_settings_request(), list()) ::
          {:ok, delete_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_settings_errors()}
  def delete_user_settings(%Client{} = client, user_settings_arn, input, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates browser settings from a web portal.
  """
  @spec disassociate_browser_settings(
          map(),
          String.t(),
          disassociate_browser_settings_request(),
          list()
        ) ::
          {:ok, disassociate_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_browser_settings_errors()}
  def disassociate_browser_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/browserSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates data protection settings from a web portal.
  """
  @spec disassociate_data_protection_settings(
          map(),
          String.t(),
          disassociate_data_protection_settings_request(),
          list()
        ) ::
          {:ok, disassociate_data_protection_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_data_protection_settings_errors()}
  def disassociate_data_protection_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/dataProtectionSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates IP access settings from a web portal.
  """
  @spec disassociate_ip_access_settings(
          map(),
          String.t(),
          disassociate_ip_access_settings_request(),
          list()
        ) ::
          {:ok, disassociate_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_ip_access_settings_errors()}
  def disassociate_ip_access_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/ipAccessSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates network settings from a web portal.
  """
  @spec disassociate_network_settings(
          map(),
          String.t(),
          disassociate_network_settings_request(),
          list()
        ) ::
          {:ok, disassociate_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_network_settings_errors()}
  def disassociate_network_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/networkSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a trust store from a web portal.
  """
  @spec disassociate_trust_store(map(), String.t(), disassociate_trust_store_request(), list()) ::
          {:ok, disassociate_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_trust_store_errors()}
  def disassociate_trust_store(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/trustStores"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates user access logging settings from a web portal.
  """
  @spec disassociate_user_access_logging_settings(
          map(),
          String.t(),
          disassociate_user_access_logging_settings_request(),
          list()
        ) ::
          {:ok, disassociate_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_user_access_logging_settings_errors()}
  def disassociate_user_access_logging_settings(
        %Client{} = client,
        portal_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userAccessLoggingSettings"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates user settings from a web portal.
  """
  @spec disassociate_user_settings(
          map(),
          String.t(),
          disassociate_user_settings_request(),
          list()
        ) ::
          {:ok, disassociate_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_user_settings_errors()}
  def disassociate_user_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Expires an active secure browser session.
  """
  @spec expire_session(map(), String.t(), String.t(), expire_session_request(), list()) ::
          {:ok, expire_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, expire_session_errors()}
  def expire_session(%Client{} = client, portal_id, session_id, input, options \\ []) do
    url_path =
      "/portals/#{AWS.Util.encode_uri(portal_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets browser settings.
  """
  @spec get_browser_settings(map(), String.t(), list()) ::
          {:ok, get_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_browser_settings_errors()}
  def get_browser_settings(%Client{} = client, browser_settings_arn, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the data protection settings.
  """
  @spec get_data_protection_settings(map(), String.t(), list()) ::
          {:ok, get_data_protection_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_protection_settings_errors()}
  def get_data_protection_settings(
        %Client{} = client,
        data_protection_settings_arn,
        options \\ []
      ) do
    url_path =
      "/dataProtectionSettings/#{AWS.Util.encode_multi_segment_uri(data_protection_settings_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the identity provider.
  """
  @spec get_identity_provider(map(), String.t(), list()) ::
          {:ok, get_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_identity_provider_errors()}
  def get_identity_provider(%Client{} = client, identity_provider_arn, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the IP access settings.
  """
  @spec get_ip_access_settings(map(), String.t(), list()) ::
          {:ok, get_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ip_access_settings_errors()}
  def get_ip_access_settings(%Client{} = client, ip_access_settings_arn, options \\ []) do
    url_path = "/ipAccessSettings/#{AWS.Util.encode_multi_segment_uri(ip_access_settings_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the network settings.
  """
  @spec get_network_settings(map(), String.t(), list()) ::
          {:ok, get_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_network_settings_errors()}
  def get_network_settings(%Client{} = client, network_settings_arn, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the web portal.
  """
  @spec get_portal(map(), String.t(), list()) ::
          {:ok, get_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_portal_errors()}
  def get_portal(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the service provider metadata.
  """
  @spec get_portal_service_provider_metadata(map(), String.t(), list()) ::
          {:ok, get_portal_service_provider_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_portal_service_provider_metadata_errors()}
  def get_portal_service_provider_metadata(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portalIdp/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information for a secure browser session.
  """
  @spec get_session(map(), String.t(), String.t(), list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, portal_id, session_id, options \\ []) do
    url_path =
      "/portals/#{AWS.Util.encode_uri(portal_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the trust store.
  """
  @spec get_trust_store(map(), String.t(), list()) ::
          {:ok, get_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trust_store_errors()}
  def get_trust_store(%Client{} = client, trust_store_arn, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the trust store certificate.
  """
  @spec get_trust_store_certificate(map(), String.t(), String.t(), list()) ::
          {:ok, get_trust_store_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trust_store_certificate_errors()}
  def get_trust_store_certificate(%Client{} = client, trust_store_arn, thumbprint, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}/certificate"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thumbprint) do
        [{"thumbprint", thumbprint} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets user access logging settings.
  """
  @spec get_user_access_logging_settings(map(), String.t(), list()) ::
          {:ok, get_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_access_logging_settings_errors()}
  def get_user_access_logging_settings(
        %Client{} = client,
        user_access_logging_settings_arn,
        options \\ []
      ) do
    url_path =
      "/userAccessLoggingSettings/#{AWS.Util.encode_multi_segment_uri(user_access_logging_settings_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets user settings.
  """
  @spec get_user_settings(map(), String.t(), list()) ::
          {:ok, get_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_settings_errors()}
  def get_user_settings(%Client{} = client, user_settings_arn, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of browser settings.
  """
  @spec list_browser_settings(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_browser_settings_errors()}
  def list_browser_settings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/browserSettings"
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
  Retrieves a list of data protection settings.
  """
  @spec list_data_protection_settings(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_data_protection_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_protection_settings_errors()}
  def list_data_protection_settings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/dataProtectionSettings"
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
  Retrieves a list of identity providers for a specific web portal.
  """
  @spec list_identity_providers(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_identity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_identity_providers_errors()}
  def list_identity_providers(
        %Client{} = client,
        portal_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/identityProviders"
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
  Retrieves a list of IP access settings.
  """
  @spec list_ip_access_settings(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ip_access_settings_errors()}
  def list_ip_access_settings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/ipAccessSettings"
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
  Retrieves a list of network settings.
  """
  @spec list_network_settings(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_network_settings_errors()}
  def list_network_settings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/networkSettings"
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
  Retrieves a list or web portals.
  """
  @spec list_portals(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_portals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_portals_errors()}
  def list_portals(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/portals"
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
  Lists information for multiple secure browser sessions from a specific portal.
  """
  @spec list_sessions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_errors()}
  def list_sessions(
        %Client{} = client,
        portal_id,
        max_results \\ nil,
        next_token \\ nil,
        session_id \\ nil,
        sort_by \\ nil,
        status \\ nil,
        username \\ nil,
        options \\ []
      ) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}/sessions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(username) do
        [{"username", username} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_id) do
        [{"sessionId", session_id} | query_params]
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
  Retrieves a list of tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of trust store certificates.
  """
  @spec list_trust_store_certificates(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_trust_store_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trust_store_certificates_errors()}
  def list_trust_store_certificates(
        %Client{} = client,
        trust_store_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}/certificates"
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
  Retrieves a list of trust stores.
  """
  @spec list_trust_stores(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_trust_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trust_stores_errors()}
  def list_trust_stores(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/trustStores"
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
  Retrieves a list of user access logging settings.
  """
  @spec list_user_access_logging_settings(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_access_logging_settings_errors()}
  def list_user_access_logging_settings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/userAccessLoggingSettings"
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
  Retrieves a list of user settings.
  """
  @spec list_user_settings(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_settings_errors()}
  def list_user_settings(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/userSettings"
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
  Adds or overwrites one or more tags for the specified resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates browser settings.
  """
  @spec update_browser_settings(map(), String.t(), update_browser_settings_request(), list()) ::
          {:ok, update_browser_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_browser_settings_errors()}
  def update_browser_settings(%Client{} = client, browser_settings_arn, input, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates data protection settings.
  """
  @spec update_data_protection_settings(
          map(),
          String.t(),
          update_data_protection_settings_request(),
          list()
        ) ::
          {:ok, update_data_protection_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_protection_settings_errors()}
  def update_data_protection_settings(
        %Client{} = client,
        data_protection_settings_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/dataProtectionSettings/#{AWS.Util.encode_multi_segment_uri(data_protection_settings_arn)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the identity provider.
  """
  @spec update_identity_provider(map(), String.t(), update_identity_provider_request(), list()) ::
          {:ok, update_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_identity_provider_errors()}
  def update_identity_provider(%Client{} = client, identity_provider_arn, input, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates IP access settings.
  """
  @spec update_ip_access_settings(map(), String.t(), update_ip_access_settings_request(), list()) ::
          {:ok, update_ip_access_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ip_access_settings_errors()}
  def update_ip_access_settings(%Client{} = client, ip_access_settings_arn, input, options \\ []) do
    url_path = "/ipAccessSettings/#{AWS.Util.encode_multi_segment_uri(ip_access_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates network settings.
  """
  @spec update_network_settings(map(), String.t(), update_network_settings_request(), list()) ::
          {:ok, update_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_network_settings_errors()}
  def update_network_settings(%Client{} = client, network_settings_arn, input, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a web portal.
  """
  @spec update_portal(map(), String.t(), update_portal_request(), list()) ::
          {:ok, update_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_portal_errors()}
  def update_portal(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the trust store.
  """
  @spec update_trust_store(map(), String.t(), update_trust_store_request(), list()) ::
          {:ok, update_trust_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trust_store_errors()}
  def update_trust_store(%Client{} = client, trust_store_arn, input, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the user access logging settings.
  """
  @spec update_user_access_logging_settings(
          map(),
          String.t(),
          update_user_access_logging_settings_request(),
          list()
        ) ::
          {:ok, update_user_access_logging_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_access_logging_settings_errors()}
  def update_user_access_logging_settings(
        %Client{} = client,
        user_access_logging_settings_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/userAccessLoggingSettings/#{AWS.Util.encode_multi_segment_uri(user_access_logging_settings_arn)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the user settings.
  """
  @spec update_user_settings(map(), String.t(), update_user_settings_request(), list()) ::
          {:ok, update_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_settings_errors()}
  def update_user_settings(%Client{} = client, user_settings_arn, input, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
