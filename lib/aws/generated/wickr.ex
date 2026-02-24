# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Wickr do
  @moduledoc """
  Welcome to the *Amazon Web Services Wickr API Reference*.

  The Amazon Web Services Wickr application programming interface (API) is
  designed for administrators to perform key tasks, such as creating and managing
  Amazon Web Services Wickr, networks, users, security groups, bots and more. This
  guide provides detailed information about the Amazon Web Services Wickr API,
  including operations, types, inputs and outputs, and error codes. You can use an
  Amazon Web Services SDK, the Amazon Web Services Command Line Interface (Amazon
  Web Services CLI, or the REST API to make API calls for Amazon Web Services
  Wickr.

  *Using Amazon Web Services SDK*

  The SDK clients authenticate your requests by using access keys that you
  provide. For more information, see [Authentication and access using Amazon Web Services SDKs and
  tools](https://docs.aws.amazon.com/sdkref/latest/guide/access.html) in the
  *Amazon Web Services SDKs and Tools Reference Guide*.

  *Using Amazon Web Services CLI*

  Use your access keys with the Amazon Web Services CLI to make API calls. For
  more information about setting up the Amazon Web Services CLI, see [Getting started with the Amazon Web Services
  CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)
  in the *Amazon Web Services Command Line Interface User Guide for Version 2*.

  *Using REST APIs*

  If you use REST to make API calls, you must authenticate your request by
  providing a signature. Amazon Web Services Wickr supports Signature Version 4.
  For more information, see [Amazon Web Services Signature Version 4 for API requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html)
  in the *Amazon Web Services Identity and Access Management User Guide*.

  Access and permissions to the APIs can be controlled by Amazon Web Services
  Identity and Access Management. The managed policy [Amazon Web ServicesWickrFullAccess](https://docs.aws.amazon.com/wickr/latest/adminguide/security-iam-awsmanpol.html#security-iam-awsmanpol-AWSWickrFullAccess)
  grants full administrative permission to the Amazon Web Services Wickr service
  APIs. For more information on restricting access to specific operations, see
  [Identity and access management for Amazon Web Services Wickr
  ](https://docs.aws.amazon.com/wickr/latest/adminguide/security-iam.html) in the
  *Amazon Web Services Wickr Administration Guide*.

  *Types of Errors*:

  The Amazon Web Services Wickr APIs provide an HTTP interface. HTTP defines
  ranges of HTTP Status Codes for different types of error responses.

    1. Client errors are indicated by HTTP Status Code class of 4xx

    2. Service errors are indicated by HTTP Status Code class of 5xx

  In this reference guide, the documentation for each API has an Errors section
  that includes a brief discussion about HTTP status codes. We recommend looking
  there as part of your investigation when you get an error.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_network_response() :: %{
        "encryptionKeyArn" => String.t() | atom(),
        "networkId" => String.t() | atom(),
        "networkName" => String.t() | atom()
      }

  """
  @type create_network_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_groups_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom()
      }

  """
  @type list_security_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_networks_response() :: %{
        "networks" => list(network()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_networks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_lookup_user_uname_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("unames") => list(String.t() | atom())
      }

  """
  @type batch_lookup_user_uname_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_security_group_response() :: %{
        "groupId" => String.t() | atom(),
        "message" => String.t() | atom(),
        "networkId" => String.t() | atom()
      }

  """
  @type delete_security_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_opentdf_config_response() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom(),
        "domain" => String.t() | atom(),
        "provider" => String.t() | atom()
      }

  """
  @type register_opentdf_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_network_settings_request() :: %{}

  """
  @type get_network_settings_request() :: %{}

  @typedoc """

  ## Example:

      list_devices_for_user_response() :: %{
        "devices" => list(basic_device_object()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_devices_for_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      shredder_settings() :: %{
        "canProcessManually" => [boolean()],
        "intensity" => [integer()]
      }

  """
  @type shredder_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wickr_aws_networks() :: %{
        "networkId" => String.t() | atom(),
        "region" => String.t() | atom()
      }

  """
  @type wickr_aws_networks() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forbidden_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type forbidden_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_user_response() :: %{
        "failed" => list(batch_user_error_response_item()),
        "message" => String.t() | atom(),
        "successful" => list(batch_user_success_response_item())
      }

  """
  @type batch_delete_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bots_count_response() :: %{
        "active" => [integer()],
        "pending" => [integer()],
        "total" => [integer()]
      }

  """
  @type get_bots_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_network_request() :: %{}

  """
  @type get_network_request() :: %{}

  @typedoc """

  ## Example:

      delete_data_retention_bot_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delete_data_retention_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      setting() :: %{
        "optionName" => String.t() | atom(),
        "type" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "codeValidation" => [boolean()],
        "firstName" => String.t() | atom(),
        "inviteCode" => String.t() | atom(),
        "inviteExpiration" => [integer()],
        "lastName" => String.t() | atom(),
        "middleName" => String.t() | atom(),
        "modified" => [integer()],
        "networkId" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "status" => [integer()],
        "suspended" => [boolean()],
        "userId" => String.t() | atom()
      }

  """
  @type update_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_oidc_info_response() :: %{
        "openidConnectInfo" => oidc_config_info(),
        "tokenInfo" => oidc_token_info()
      }

  """
  @type get_oidc_info_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_settings_response() :: %{
        "settings" => list(setting())
      }

  """
  @type update_network_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_security_group_response() :: %{
        "securityGroup" => security_group()
      }

  """
  @type get_security_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_toggle_user_suspend_status_response() :: %{
        "failed" => list(batch_user_error_response_item()),
        "message" => String.t() | atom(),
        "successful" => list(batch_user_success_response_item())
      }

  """
  @type batch_toggle_user_suspend_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_lookup_user_uname_response() :: %{
        "failed" => list(batch_uname_error_response_item()),
        "message" => String.t() | atom(),
        "successful" => list(batch_uname_success_response_item())
      }

  """
  @type batch_lookup_user_uname_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_request() :: %{}

  """
  @type get_bot_request() :: %{}

  @typedoc """

  ## Example:

      create_security_group_response() :: %{
        "securityGroup" => security_group()
      }

  """
  @type create_security_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_bot_request() :: %{}

  """
  @type delete_bot_request() :: %{}

  @typedoc """

  ## Example:

      get_bot_response() :: %{
        "botId" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "groupId" => String.t() | atom(),
        "hasChallenge" => [boolean()],
        "lastLogin" => String.t() | atom(),
        "pubkey" => String.t() | atom(),
        "status" => list(integer()),
        "suspended" => [boolean()],
        "uname" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type get_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_group_settings_request() :: %{
        "enableGuestFederation" => [boolean()],
        "enableRestrictedGlobalFederation" => [boolean()],
        "federationMode" => [integer()],
        "globalFederation" => [boolean()],
        "lockoutThreshold" => [integer()],
        "permittedNetworks" => list(String.t() | atom()),
        "permittedWickrAwsNetworks" => list(wickr_aws_networks()),
        "permittedWickrEnterpriseNetworks" => list(permitted_wickr_enterprise_network())
      }

  """
  @type security_group_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_reset_devices_for_user_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("appIds") => list(String.t() | atom())
      }

  """
  @type batch_reset_devices_for_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_user_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("userIds") => list(String.t() | atom())
      }

  """
  @type batch_delete_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_security_group_request() :: %{}

  """
  @type get_security_group_request() :: %{}

  @typedoc """

  ## Example:

      get_user_response() :: %{
        "firstName" => String.t() | atom(),
        "isAdmin" => [boolean()],
        "lastActivity" => [integer()],
        "lastLogin" => [integer()],
        "lastName" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "status" => [integer()],
        "suspended" => [boolean()],
        "userId" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type get_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_security_group_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("securityGroupSettings") => security_group_settings_request()
      }

  """
  @type create_security_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_toggle_user_suspend_status_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("suspend") => [boolean()],
        required("userIds") => list(String.t() | atom())
      }

  """
  @type batch_toggle_user_suspend_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_user_success_response_item() :: %{
        "userId" => String.t() | atom()
      }

  """
  @type batch_user_success_response_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_guest_users_response() :: %{
        "guestlist" => list(guest_user()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_guest_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_guest_user_history_count_request() :: %{}

  """
  @type get_guest_user_history_count_request() :: %{}

  @typedoc """

  ## Example:

      delete_network_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delete_network_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_group_users_response() :: %{
        "nextToken" => String.t() | atom(),
        "users" => list(user())
      }

  """
  @type list_security_group_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_uname_error_response_item() :: %{
        "field" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "uname" => String.t() | atom()
      }

  """
  @type batch_uname_error_response_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_retention_bot_challenge_request() :: %{}

  """
  @type create_data_retention_bot_challenge_request() :: %{}

  @typedoc """

  ## Example:

      list_security_groups_response() :: %{
        "nextToken" => String.t() | atom(),
        "securityGroups" => list(security_group())
      }

  """
  @type list_security_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_settings() :: %{
        "dataRetention" => [boolean()],
        "enableClientMetrics" => [boolean()],
        "enableTrustedDataFormat" => [boolean()],
        "readReceiptConfig" => read_receipt_config()
      }

  """
  @type network_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type bad_request_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_retention_bot_challenge_response() :: %{
        "challenge" => String.t() | atom()
      }

  """
  @type create_data_retention_bot_challenge_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_users_count_response() :: %{
        "active" => [integer()],
        "pending" => [integer()],
        "rejected" => [integer()],
        "remaining" => [integer()],
        "total" => [integer()]
      }

  """
  @type get_users_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_security_group_request() :: %{}

  """
  @type delete_security_group_request() :: %{}

  @typedoc """

  ## Example:

      list_bots_request() :: %{
        optional("displayName") => String.t() | atom(),
        optional("groupId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom(),
        optional("status") => list(integer()),
        optional("username") => String.t() | atom()
      }

  """
  @type list_bots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_retention_bot_request() :: %{}

  """
  @type delete_data_retention_bot_request() :: %{}

  @typedoc """

  ## Example:

      get_user_request() :: %{
        optional("endTime") => [non_neg_integer()],
        optional("startTime") => [non_neg_integer()]
      }

  """
  @type get_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_retention_bot_request() :: %{}

  """
  @type create_data_retention_bot_request() :: %{}

  @typedoc """

  ## Example:

      delete_bot_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delete_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_network_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_network_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      basic_device_object() :: %{
        "appId" => String.t() | atom(),
        "created" => String.t() | atom(),
        "lastLogin" => String.t() | atom(),
        "statusText" => String.t() | atom(),
        "suspend" => [boolean()],
        "type" => String.t() | atom()
      }

  """
  @type basic_device_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_opentdf_config_response() :: %{
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom(),
        "domain" => String.t() | atom(),
        "provider" => String.t() | atom()
      }

  """
  @type get_opentdf_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_oidc_config_test_response() :: %{
        "authorizationEndpoint" => String.t() | atom(),
        "endSessionEndpoint" => String.t() | atom(),
        "grantTypesSupported" => list(String.t() | atom()),
        "issuer" => String.t() | atom(),
        "logoutEndpoint" => String.t() | atom(),
        "microsoftMultiRefreshToken" => [boolean()],
        "responseTypesSupported" => list(String.t() | atom()),
        "revocationEndpoint" => String.t() | atom(),
        "scopesSupported" => list(String.t() | atom()),
        "tokenEndpoint" => String.t() | atom(),
        "tokenEndpointAuthMethodsSupported" => list(String.t() | atom()),
        "userinfoEndpoint" => String.t() | atom()
      }

  """
  @type register_oidc_config_test_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_device_error_response_item() :: %{
        "appId" => String.t() | atom(),
        "field" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type batch_device_error_response_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_oidc_info_request() :: %{
        optional("certificate") => String.t() | atom(),
        optional("clientId") => String.t() | atom(),
        optional("clientSecret") => String.t() | atom(),
        optional("code") => String.t() | atom(),
        optional("codeVerifier") => String.t() | atom(),
        optional("grantType") => String.t() | atom(),
        optional("redirectUri") => String.t() | atom(),
        optional("url") => String.t() | atom()
      }

  """
  @type get_oidc_info_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_settings_request() :: %{
        required("settings") => network_settings()
      }

  """
  @type update_network_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_network_settings_response() :: %{
        "settings" => list(setting())
      }

  """
  @type get_network_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_guest_user_request() :: %{
        required("block") => [boolean()]
      }

  """
  @type update_guest_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "nextToken" => String.t() | atom(),
        "users" => list(user())
      }

  """
  @type list_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      blocked_guest_user() :: %{
        "admin" => String.t() | atom(),
        "modified" => String.t() | atom(),
        "username" => String.t() | atom(),
        "usernameHash" => String.t() | atom()
      }

  """
  @type blocked_guest_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_networks_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom()
      }

  """
  @type list_networks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_retention_request() :: %{
        required("actionType") => list(any())
      }

  """
  @type update_data_retention_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_guest_users_request() :: %{
        optional("billingPeriod") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom(),
        optional("username") => String.t() | atom()
      }

  """
  @type list_guest_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_error() :: %{
        "message" => String.t() | atom(),
        "reasons" => list(error_detail())
      }

  """
  @type validation_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_user_response() :: %{
        "failed" => list(batch_user_error_response_item()),
        "message" => String.t() | atom(),
        "successful" => list(user())
      }

  """
  @type batch_create_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_reset_devices_for_user_response() :: %{
        "failed" => list(batch_device_error_response_item()),
        "message" => String.t() | atom(),
        "successful" => list(batch_device_success_response_item())
      }

  """
  @type batch_reset_devices_for_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_group() :: %{
        "activeDirectoryGuid" => String.t() | atom(),
        "activeMembers" => [integer()],
        "botMembers" => [integer()],
        "id" => String.t() | atom(),
        "isDefault" => [boolean()],
        "modified" => [integer()],
        "name" => String.t() | atom(),
        "securityGroupSettings" => security_group_settings()
      }

  """
  @type security_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_blocked_guest_users_request() :: %{
        optional("admin") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom(),
        optional("username") => String.t() | atom()
      }

  """
  @type list_blocked_guest_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_oidc_config_response() :: %{
        "applicationId" => [integer()],
        "applicationName" => String.t() | atom(),
        "caCertificate" => String.t() | atom(),
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom(),
        "companyId" => String.t() | atom(),
        "customUsername" => String.t() | atom(),
        "extraAuthParams" => String.t() | atom(),
        "issuer" => String.t() | atom(),
        "redirectUrl" => String.t() | atom(),
        "scopes" => String.t() | atom(),
        "secret" => String.t() | atom(),
        "ssoTokenBufferMinutes" => [integer()],
        "userId" => String.t() | atom()
      }

  """
  @type register_oidc_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      password_requirements() :: %{
        "lowercase" => [integer()],
        "minLength" => [integer()],
        "numbers" => [integer()],
        "symbols" => [integer()],
        "uppercase" => [integer()]
      }

  """
  @type password_requirements() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_retention_bot_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type create_data_retention_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_guest_user_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type update_guest_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_retention_bot_request() :: %{}

  """
  @type get_data_retention_bot_request() :: %{}

  @typedoc """

  ## Example:

      list_security_group_users_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom()
      }

  """
  @type list_security_group_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_oidc_config_test_request() :: %{
        optional("certificate") => String.t() | atom(),
        optional("extraAuthParams") => String.t() | atom(),
        required("issuer") => String.t() | atom(),
        required("scopes") => String.t() | atom()
      }

  """
  @type register_oidc_config_test_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permitted_wickr_enterprise_network() :: %{
        "domain" => String.t() | atom(),
        "networkId" => String.t() | atom()
      }

  """
  @type permitted_wickr_enterprise_network() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_bots_response() :: %{
        "bots" => list(bot()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_bots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guest_user() :: %{
        "billingPeriod" => String.t() | atom(),
        "username" => String.t() | atom(),
        "usernameHash" => String.t() | atom()
      }

  """
  @type guest_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_network_request() :: %{
        optional("enablePremiumFreeTrial") => [boolean()],
        optional("encryptionKeyArn") => String.t() | atom(),
        required("accessLevel") => list(any()),
        required("networkName") => String.t() | atom()
      }

  """
  @type create_network_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_reinvite_user_response() :: %{
        "failed" => list(batch_user_error_response_item()),
        "message" => String.t() | atom(),
        "successful" => list(batch_user_success_response_item())
      }

  """
  @type batch_reinvite_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "field" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type error_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bots_count_request() :: %{}

  """
  @type get_bots_count_request() :: %{}

  @typedoc """

  ## Example:

      get_opentdf_config_request() :: %{}

  """
  @type get_opentdf_config_request() :: %{}

  @typedoc """

  ## Example:

      get_network_response() :: %{
        "accessLevel" => list(any()),
        "awsAccountId" => String.t() | atom(),
        "encryptionKeyArn" => String.t() | atom(),
        "freeTrialExpiration" => String.t() | atom(),
        "migrationState" => [integer()],
        "networkArn" => String.t() | atom(),
        "networkId" => String.t() | atom(),
        "networkName" => String.t() | atom(),
        "standing" => [integer()]
      }

  """
  @type get_network_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type update_network_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_opentdf_config_request() :: %{
        optional("dryRun") => [boolean()],
        required("clientId") => String.t() | atom(),
        required("clientSecret") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("provider") => String.t() | atom()
      }

  """
  @type register_opentdf_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      guest_user_history_count() :: %{
        "count" => String.t() | atom(),
        "month" => String.t() | atom()
      }

  """
  @type guest_user_history_count() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_bot_request() :: %{
        optional("challenge") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("groupId") => String.t() | atom(),
        optional("suspend") => [boolean()]
      }

  """
  @type update_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_oidc_config_request() :: %{
        optional("customUsername") => String.t() | atom(),
        optional("extraAuthParams") => String.t() | atom(),
        optional("secret") => String.t() | atom(),
        optional("ssoTokenBufferMinutes") => [integer()],
        optional("userId") => String.t() | atom(),
        required("companyId") => String.t() | atom(),
        required("issuer") => String.t() | atom(),
        required("scopes") => String.t() | atom()
      }

  """
  @type register_oidc_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("userDetails") => update_user_details(),
        required("userId") => String.t() | atom()
      }

  """
  @type update_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network() :: %{
        "accessLevel" => list(any()),
        "awsAccountId" => String.t() | atom(),
        "encryptionKeyArn" => String.t() | atom(),
        "freeTrialExpiration" => String.t() | atom(),
        "migrationState" => [integer()],
        "networkArn" => String.t() | atom(),
        "networkId" => String.t() | atom(),
        "networkName" => String.t() | atom(),
        "standing" => [integer()]
      }

  """
  @type network() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_user_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("users") => list(batch_create_user_request_item())
      }

  """
  @type batch_create_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_details() :: %{
        "codeValidation" => [boolean()],
        "firstName" => String.t() | atom(),
        "inviteCode" => String.t() | atom(),
        "inviteCodeTtl" => [integer()],
        "lastName" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "username" => String.t() | atom()
      }

  """
  @type update_user_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "cell" => String.t() | atom(),
        "challengeFailures" => [integer()],
        "codeValidation" => [boolean()],
        "countryCode" => String.t() | atom(),
        "firstName" => String.t() | atom(),
        "inviteCode" => String.t() | atom(),
        "isAdmin" => [boolean()],
        "isInviteExpired" => [boolean()],
        "isUser" => [boolean()],
        "lastName" => String.t() | atom(),
        "otpEnabled" => [boolean()],
        "scimId" => String.t() | atom(),
        "securityGroups" => list(String.t() | atom()),
        "status" => [integer()],
        "suspended" => [boolean()],
        "type" => String.t() | atom(),
        "uname" => String.t() | atom(),
        "userId" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_device_success_response_item() :: %{
        "appId" => String.t() | atom()
      }

  """
  @type batch_device_success_response_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_bot_request() :: %{
        optional("displayName") => String.t() | atom(),
        required("challenge") => String.t() | atom(),
        required("groupId") => String.t() | atom(),
        required("username") => String.t() | atom()
      }

  """
  @type create_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_receipt_config() :: %{
        "status" => list(any())
      }

  """
  @type read_receipt_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("firstName") => String.t() | atom(),
        optional("groupId") => String.t() | atom(),
        optional("lastName") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom(),
        optional("status") => list(integer()),
        optional("username") => String.t() | atom()
      }

  """
  @type list_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      oidc_config_info() :: %{
        "applicationId" => [integer()],
        "applicationName" => String.t() | atom(),
        "caCertificate" => String.t() | atom(),
        "clientId" => String.t() | atom(),
        "clientSecret" => String.t() | atom(),
        "companyId" => String.t() | atom(),
        "customUsername" => String.t() | atom(),
        "extraAuthParams" => String.t() | atom(),
        "issuer" => String.t() | atom(),
        "redirectUrl" => String.t() | atom(),
        "scopes" => String.t() | atom(),
        "secret" => String.t() | atom(),
        "ssoTokenBufferMinutes" => [integer()],
        "userId" => String.t() | atom()
      }

  """
  @type oidc_config_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calling_settings() :: %{
        "canStart11Call" => [boolean()],
        "canVideoCall" => [boolean()],
        "forceTcpCall" => [boolean()]
      }

  """
  @type calling_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_bot_response() :: %{
        "botId" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "groupId" => String.t() | atom(),
        "message" => String.t() | atom(),
        "networkId" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type create_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_devices_for_user_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("sortDirection") => list(any()),
        optional("sortFields") => String.t() | atom()
      }

  """
  @type list_devices_for_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_user_error_response_item() :: %{
        "field" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "userId" => String.t() | atom()
      }

  """
  @type batch_user_error_response_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_reinvite_user_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("userIds") => list(String.t() | atom())
      }

  """
  @type batch_reinvite_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_uname_success_response_item() :: %{
        "uname" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type batch_uname_success_response_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_create_user_request_item() :: %{
        "codeValidation" => [boolean()],
        "firstName" => String.t() | atom(),
        "inviteCode" => String.t() | atom(),
        "inviteCodeTtl" => [integer()],
        "lastName" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "username" => String.t() | atom()
      }

  """
  @type batch_create_user_request_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("encryptionKeyArn") => String.t() | atom(),
        required("networkName") => String.t() | atom()
      }

  """
  @type update_network_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bot() :: %{
        "botId" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "groupId" => String.t() | atom(),
        "hasChallenge" => [boolean()],
        "lastLogin" => String.t() | atom(),
        "pubkey" => String.t() | atom(),
        "status" => list(integer()),
        "suspended" => [boolean()],
        "uname" => String.t() | atom(),
        "username" => String.t() | atom()
      }

  """
  @type bot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_retention_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type update_data_retention_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_security_group_response() :: %{
        "securityGroup" => security_group()
      }

  """
  @type update_security_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_bot_response() :: %{
        "message" => String.t() | atom()
      }

  """
  @type update_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_retention_bot_response() :: %{
        "botExists" => [boolean()],
        "botName" => String.t() | atom(),
        "isBotActive" => [boolean()],
        "isDataRetentionBotRegistered" => [boolean()],
        "isDataRetentionServiceEnabled" => [boolean()],
        "isPubkeyMsgAcked" => [boolean()]
      }

  """
  @type get_data_retention_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_group_settings() :: %{
        "shredder" => shredder_settings(),
        "enableRestrictedGlobalFederation" => [boolean()],
        "showMasterRecoveryKey" => [boolean()],
        "quickResponses" => list(String.t() | atom()),
        "enableAtak" => [boolean()],
        "globalFederation" => [boolean()],
        "permittedWickrEnterpriseNetworks" => list(permitted_wickr_enterprise_network()),
        "forceOpenAccess" => [boolean()],
        "permittedNetworks" => list(String.t() | atom()),
        "locationAllowMaps" => [boolean()],
        "enableGuestFederation" => [boolean()],
        "atakPackageValues" => list(String.t() | atom()),
        "enableFileDownload" => [boolean()],
        "calling" => calling_settings(),
        "enableCrashReports" => [boolean()],
        "maxTtl" => [float()],
        "alwaysReauthenticate" => [boolean()],
        "messageForwardingEnabled" => [boolean()],
        "maxAutoDownloadSize" => [float()],
        "locationEnabled" => [boolean()],
        "enableOpenAccessOption" => [boolean()],
        "maxBor" => [integer()],
        "enableNotificationPreview" => [boolean()],
        "federationMode" => [integer()],
        "presenceEnabled" => [boolean()],
        "ssoMaxIdleMinutes" => [integer()],
        "filesEnabled" => [boolean()],
        "permittedWickrAwsNetworks" => list(wickr_aws_networks()),
        "isLinkPreviewEnabled" => [boolean()],
        "passwordRequirements" => password_requirements(),
        "forceReadReceipts" => [boolean()],
        "isAtoEnabled" => [boolean()],
        "lockoutThreshold" => [integer()],
        "forceDeviceLockout" => [integer()],
        "checkForUpdates" => [boolean()]
      }

  """
  @type security_group_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_users_count_request() :: %{}

  """
  @type get_users_count_request() :: %{}

  @typedoc """

  ## Example:

      update_security_group_request() :: %{
        optional("name") => String.t() | atom(),
        optional("securityGroupSettings") => security_group_settings()
      }

  """
  @type update_security_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_blocked_guest_users_response() :: %{
        "blocklist" => list(blocked_guest_user()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_blocked_guest_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      oidc_token_info() :: %{
        "accessToken" => String.t() | atom(),
        "codeChallenge" => String.t() | atom(),
        "codeVerifier" => String.t() | atom(),
        "expiresIn" => [float()],
        "idToken" => String.t() | atom(),
        "refreshToken" => String.t() | atom(),
        "tokenType" => String.t() | atom()
      }

  """
  @type oidc_token_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rate_limit_error() :: %{
        "message" => String.t() | atom()
      }

  """
  @type rate_limit_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_guest_user_history_count_response() :: %{
        "history" => list(guest_user_history_count())
      }

  """
  @type get_guest_user_history_count_response() :: %{(String.t() | atom()) => any()}

  @type batch_create_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type batch_delete_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type batch_lookup_user_uname_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type batch_reinvite_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type batch_reset_devices_for_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type batch_toggle_user_suspend_status_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type create_bot_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type create_data_retention_bot_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type create_data_retention_bot_challenge_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type create_network_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type create_security_group_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type delete_bot_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type delete_data_retention_bot_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type delete_network_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type delete_security_group_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_bot_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_bots_count_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_data_retention_bot_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_guest_user_history_count_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_network_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_network_settings_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_oidc_info_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_opentdf_config_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_security_group_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type get_users_count_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_blocked_guest_users_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_bots_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_devices_for_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_guest_users_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_networks_errors() ::
          rate_limit_error()
          | internal_server_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_security_group_users_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_security_groups_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type list_users_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type register_oidc_config_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type register_oidc_config_test_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type register_opentdf_config_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type update_bot_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type update_data_retention_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type update_guest_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type update_network_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type update_network_settings_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type update_security_group_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  @type update_user_errors() ::
          rate_limit_error()
          | internal_server_error()
          | resource_not_found_error()
          | validation_error()
          | bad_request_error()
          | unauthorized_error()
          | forbidden_error()

  def metadata do
    %{
      api_version: "2024-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "admin.wickr",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Wickr",
      signature_version: "v4",
      signing_name: "wickr",
      target_prefix: nil
    }
  end

  @doc """
  Creates multiple users in a specified Wickr network.

  This operation allows you to provision multiple user accounts simultaneously,
  optionally specifying security groups, and validation requirements for each
  user.

  `codeValidation`, `inviteCode`, and `inviteCodeTtl` are restricted to networks
  under preview only.
  """
  @spec batch_create_user(map(), String.t() | atom(), batch_create_user_request(), list()) ::
          {:ok, batch_create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_user_errors()}
  def batch_create_user(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deletes multiple users from a specified Wickr network.

  This operation permanently removes user accounts and their associated data from
  the network.
  """
  @spec batch_delete_user(map(), String.t() | atom(), batch_delete_user_request(), list()) ::
          {:ok, batch_delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_user_errors()}
  def batch_delete_user(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users/batch-delete"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Looks up multiple user usernames from their unique username hashes (unames).

  This operation allows you to retrieve the email addresses associated with a list
  of username hashes.
  """
  @spec batch_lookup_user_uname(
          map(),
          String.t() | atom(),
          batch_lookup_user_uname_request(),
          list()
        ) ::
          {:ok, batch_lookup_user_uname_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_lookup_user_uname_errors()}
  def batch_lookup_user_uname(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users/uname-lookup"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Resends invitation codes to multiple users who have pending invitations in a
  Wickr network.

  This operation is useful when users haven't accepted their initial invitations
  or when invitations have expired.
  """
  @spec batch_reinvite_user(map(), String.t() | atom(), batch_reinvite_user_request(), list()) ::
          {:ok, batch_reinvite_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_reinvite_user_errors()}
  def batch_reinvite_user(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users/re-invite"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Resets multiple devices for a specific user in a Wickr network.

  This operation forces the selected devices to log out and requires users to
  re-authenticate, which is useful for security purposes or when devices need to
  be revoked.
  """
  @spec batch_reset_devices_for_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          batch_reset_devices_for_user_request(),
          list()
        ) ::
          {:ok, batch_reset_devices_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_reset_devices_for_user_errors()}
  def batch_reset_devices_for_user(%Client{} = client, network_id, user_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/users/#{AWS.Util.encode_uri(user_id)}/devices"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Suspends or unsuspends multiple users in a Wickr network.

  Suspended users cannot access the network until they are unsuspended. This
  operation is useful for temporarily restricting access without deleting user
  accounts.
  """
  @spec batch_toggle_user_suspend_status(
          map(),
          String.t() | atom(),
          batch_toggle_user_suspend_status_request(),
          list()
        ) ::
          {:ok, batch_toggle_user_suspend_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_toggle_user_suspend_status_errors()}
  def batch_toggle_user_suspend_status(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users/toggleSuspend"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"suspend", "suspend"}
      ]
      |> Request.build_params(input)

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
  Creates a new bot in a specified Wickr network.

  Bots are automated accounts that can send and receive messages, enabling
  integration with external systems and automation of tasks.
  """
  @spec create_bot(map(), String.t() | atom(), create_bot_request(), list()) ::
          {:ok, create_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bot_errors()}
  def create_bot(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/bots"
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
  Creates a data retention bot in a Wickr network.

  Data retention bots are specialized bots that handle message archiving and
  compliance by capturing and storing messages for regulatory or organizational
  requirements.
  """
  @spec create_data_retention_bot(
          map(),
          String.t() | atom(),
          create_data_retention_bot_request(),
          list()
        ) ::
          {:ok, create_data_retention_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_retention_bot_errors()}
  def create_data_retention_bot(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/data-retention-bots"
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
  Creates a new challenge password for the data retention bot.

  This password is used for authentication when the bot connects to the network.
  """
  @spec create_data_retention_bot_challenge(
          map(),
          String.t() | atom(),
          create_data_retention_bot_challenge_request(),
          list()
        ) ::
          {:ok, create_data_retention_bot_challenge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_retention_bot_challenge_errors()}
  def create_data_retention_bot_challenge(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/data-retention-bots/challenge"
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
  Creates a new Wickr network with specified access level and configuration.

  This operation provisions a new communication network for your organization.
  """
  @spec create_network(map(), create_network_request(), list()) ::
          {:ok, create_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_network_errors()}
  def create_network(%Client{} = client, input, options \\ []) do
    url_path = "/networks"
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
  Creates a new security group in a Wickr network.

  Security groups allow you to organize users and control their permissions,
  features, and security settings.
  """
  @spec create_security_group(map(), String.t() | atom(), create_security_group_request(), list()) ::
          {:ok, create_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_security_group_errors()}
  def create_security_group(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/security-groups"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deletes a bot from a specified Wickr network.

  This operation permanently removes the bot account and its associated data from
  the network.
  """
  @spec delete_bot(map(), String.t() | atom(), String.t() | atom(), delete_bot_request(), list()) ::
          {:ok, delete_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_errors()}
  def delete_bot(%Client{} = client, bot_id, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/bots/#{AWS.Util.encode_uri(bot_id)}"
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
  Deletes the data retention bot from a Wickr network.

  This operation permanently removes the bot and all its associated data from the
  database.
  """
  @spec delete_data_retention_bot(
          map(),
          String.t() | atom(),
          delete_data_retention_bot_request(),
          list()
        ) ::
          {:ok, delete_data_retention_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_retention_bot_errors()}
  def delete_data_retention_bot(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/data-retention-bots"
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
  Deletes a Wickr network and all its associated resources, including users, bots,
  security groups, and settings.

  This operation is permanent and cannot be undone.
  """
  @spec delete_network(map(), String.t() | atom(), delete_network_request(), list()) ::
          {:ok, delete_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_network_errors()}
  def delete_network(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Deletes a security group from a Wickr network.

  This operation cannot be performed on the default security group.
  """
  @spec delete_security_group(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_security_group_request(),
          list()
        ) ::
          {:ok, delete_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_security_group_errors()}
  def delete_security_group(%Client{} = client, group_id, network_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/security-groups/#{AWS.Util.encode_uri(group_id)}"

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
  Retrieves detailed information about a specific bot in a Wickr network,
  including its status, group membership, and authentication details.
  """
  @spec get_bot(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_errors()}
  def get_bot(%Client{} = client, bot_id, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/bots/#{AWS.Util.encode_uri(bot_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the count of bots in a Wickr network, categorized by their status
  (pending, active, and total).
  """
  @spec get_bots_count(map(), String.t() | atom(), list()) ::
          {:ok, get_bots_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bots_count_errors()}
  def get_bots_count(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/bots/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the data retention bot in a Wickr network, including
  its status and whether the data retention service is enabled.
  """
  @spec get_data_retention_bot(map(), String.t() | atom(), list()) ::
          {:ok, get_data_retention_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_retention_bot_errors()}
  def get_data_retention_bot(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/data-retention-bots"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves historical guest user count data for a Wickr network, showing the
  number of guest users per billing period over the past 90 days.
  """
  @spec get_guest_user_history_count(map(), String.t() | atom(), list()) ::
          {:ok, get_guest_user_history_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_guest_user_history_count_errors()}
  def get_guest_user_history_count(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/guest-users/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific Wickr network, including its
  configuration, access level, and status.
  """
  @spec get_network(map(), String.t() | atom(), list()) ::
          {:ok, get_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_network_errors()}
  def get_network(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all network-level settings for a Wickr network, including client
  metrics, data retention, and other configuration options.
  """
  @spec get_network_settings(map(), String.t() | atom(), list()) ::
          {:ok, get_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_network_settings_errors()}
  def get_network_settings(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the OpenID Connect (OIDC) configuration for a Wickr network, including
  SSO settings and optional token information if access token parameters are
  provided.
  """
  @spec get_oidc_info(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_oidc_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_oidc_info_errors()}
  def get_oidc_info(
        %Client{} = client,
        network_id,
        certificate \\ nil,
        client_id \\ nil,
        client_secret \\ nil,
        code \\ nil,
        code_verifier \\ nil,
        grant_type \\ nil,
        redirect_uri \\ nil,
        url \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/oidc"
    headers = []
    query_params = []

    query_params =
      if !is_nil(url) do
        [{"url", url} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(redirect_uri) do
        [{"redirectUri", redirect_uri} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(grant_type) do
        [{"grantType", grant_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(code_verifier) do
        [{"codeVerifier", code_verifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(code) do
        [{"code", code} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(client_secret) do
        [{"clientSecret", client_secret} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(client_id) do
        [{"clientId", client_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(certificate) do
        [{"certificate", certificate} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the OpenTDF integration configuration for a Wickr network.
  """
  @spec get_opentdf_config(map(), String.t() | atom(), list()) ::
          {:ok, get_opentdf_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_opentdf_config_errors()}
  def get_opentdf_config(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/tdf"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific security group in a Wickr
  network, including its settings, member counts, and configuration.
  """
  @spec get_security_group(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_security_group_errors()}
  def get_security_group(%Client{} = client, group_id, network_id, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/security-groups/#{AWS.Util.encode_uri(group_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific user in a Wickr network,
  including their profile, status, and activity history.
  """
  @spec get_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_errors()}
  def get_user(
        %Client{} = client,
        network_id,
        user_id,
        end_time \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the count of users in a Wickr network, categorized by their status
  (pending, active, rejected) and showing how many users can still be added.
  """
  @spec get_users_count(map(), String.t() | atom(), list()) ::
          {:ok, get_users_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_users_count_errors()}
  def get_users_count(%Client{} = client, network_id, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of guest users who have been blocked from a Wickr
  network.

  You can filter and sort the results.
  """
  @spec list_blocked_guest_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_blocked_guest_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_blocked_guest_users_errors()}
  def list_blocked_guest_users(
        %Client{} = client,
        network_id,
        admin \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        username \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/guest-users/blocklist"
    headers = []
    query_params = []

    query_params =
      if !is_nil(username) do
        [{"username", username} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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

    query_params =
      if !is_nil(admin) do
        [{"admin", admin} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of bots in a specified Wickr network.

  You can filter and sort the results based on various criteria.
  """
  @spec list_bots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bots_errors()}
  def list_bots(
        %Client{} = client,
        network_id,
        display_name \\ nil,
        group_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        status \\ nil,
        username \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/bots"
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
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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

    query_params =
      if !is_nil(group_id) do
        [{"groupId", group_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(display_name) do
        [{"displayName", display_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of devices associated with a specific user in a Wickr
  network.

  This operation returns information about all devices where the user has logged
  into Wickr.
  """
  @spec list_devices_for_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_devices_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_devices_for_user_errors()}
  def list_devices_for_user(
        %Client{} = client,
        network_id,
        user_id,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        options \\ []
      ) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/users/#{AWS.Util.encode_uri(user_id)}/devices"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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
  Retrieves a paginated list of guest users who have communicated with your Wickr
  network.

  Guest users are external users from federated networks who can communicate with
  network members.
  """
  @spec list_guest_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_guest_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_guest_users_errors()}
  def list_guest_users(
        %Client{} = client,
        network_id,
        billing_period \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        username \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/guest-users"
    headers = []
    query_params = []

    query_params =
      if !is_nil(username) do
        [{"username", username} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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

    query_params =
      if !is_nil(billing_period) do
        [{"billingPeriod", billing_period} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of all Wickr networks associated with your Amazon Web
  Services account.

  You can sort the results by network ID or name.
  """
  @spec list_networks(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_networks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_networks_errors()}
  def list_networks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        options \\ []
      ) do
    url_path = "/networks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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
  Retrieves a paginated list of users who belong to a specific security group in a
  Wickr network.
  """
  @spec list_security_group_users(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_group_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_group_users_errors()}
  def list_security_group_users(
        %Client{} = client,
        group_id,
        network_id,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        options \\ []
      ) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/security-groups/#{AWS.Util.encode_uri(group_id)}/users"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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
  Retrieves a paginated list of security groups in a specified Wickr network.

  You can sort the results by various criteria.
  """
  @spec list_security_groups(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_groups_errors()}
  def list_security_groups(
        %Client{} = client,
        network_id,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/security-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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
  Retrieves a paginated list of users in a specified Wickr network.

  You can filter and sort the results based on various criteria such as name,
  status, or security group membership.
  """
  @spec list_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_errors()}
  def list_users(
        %Client{} = client,
        network_id,
        first_name \\ nil,
        group_id \\ nil,
        last_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sort_direction \\ nil,
        sort_fields \\ nil,
        status \\ nil,
        username \\ nil,
        options \\ []
      ) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users"
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
      if !is_nil(sort_fields) do
        [{"sortFields", sort_fields} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_direction) do
        [{"sortDirection", sort_direction} | query_params]
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

    query_params =
      if !is_nil(last_name) do
        [{"lastName", last_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(group_id) do
        [{"groupId", group_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(first_name) do
        [{"firstName", first_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Registers and saves an OpenID Connect (OIDC) configuration for a Wickr network,
  enabling Single Sign-On (SSO) authentication through an identity provider.
  """
  @spec register_oidc_config(map(), String.t() | atom(), register_oidc_config_request(), list()) ::
          {:ok, register_oidc_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_oidc_config_errors()}
  def register_oidc_config(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/oidc/save"
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
  Tests an OpenID Connect (OIDC) configuration for a Wickr network by validating
  the connection to the identity provider and retrieving its supported
  capabilities.
  """
  @spec register_oidc_config_test(
          map(),
          String.t() | atom(),
          register_oidc_config_test_request(),
          list()
        ) ::
          {:ok, register_oidc_config_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_oidc_config_test_errors()}
  def register_oidc_config_test(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/oidc/test"
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
  Registers and saves OpenTDF configuration for a Wickr network, enabling
  attribute-based access control for Wickr through an OpenTDF provider.
  """
  @spec register_opentdf_config(
          map(),
          String.t() | atom(),
          register_opentdf_config_request(),
          list()
        ) ::
          {:ok, register_opentdf_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_opentdf_config_errors()}
  def register_opentdf_config(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/tdf"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"dryRun", "dryRun"}
      ]
      |> Request.build_params(input)

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
  Updates the properties of an existing bot in a Wickr network.

  This operation allows you to modify the bot's display name, security group,
  password, or suspension status.
  """
  @spec update_bot(map(), String.t() | atom(), String.t() | atom(), update_bot_request(), list()) ::
          {:ok, update_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bot_errors()}
  def update_bot(%Client{} = client, bot_id, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/bots/#{AWS.Util.encode_uri(bot_id)}"
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
  Updates the data retention bot settings, allowing you to enable or disable the
  data retention service, or acknowledge the public key message.
  """
  @spec update_data_retention(map(), String.t() | atom(), update_data_retention_request(), list()) ::
          {:ok, update_data_retention_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_retention_errors()}
  def update_data_retention(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/data-retention-bots"
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
  Updates the block status of a guest user in a Wickr network.

  This operation allows you to block or unblock a guest user from accessing the
  network.
  """
  @spec update_guest_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_guest_user_request(),
          list()
        ) ::
          {:ok, update_guest_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_guest_user_errors()}
  def update_guest_user(%Client{} = client, network_id, username_hash, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/guest-users/#{AWS.Util.encode_uri(username_hash)}"

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
  Updates the properties of an existing Wickr network, such as its name or
  encryption key configuration.
  """
  @spec update_network(map(), String.t() | atom(), update_network_request(), list()) ::
          {:ok, update_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_network_errors()}
  def update_network(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Updates network-level settings for a Wickr network.

  You can modify settings such as client metrics, data retention, and other
  network-wide options.
  """
  @spec update_network_settings(
          map(),
          String.t() | atom(),
          update_network_settings_request(),
          list()
        ) ::
          {:ok, update_network_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_network_settings_errors()}
  def update_network_settings(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/settings"
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
  Updates the properties of an existing security group in a Wickr network, such as
  its name or settings.
  """
  @spec update_security_group(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_security_group_request(),
          list()
        ) ::
          {:ok, update_security_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_security_group_errors()}
  def update_security_group(%Client{} = client, group_id, network_id, input, options \\ []) do
    url_path =
      "/networks/#{AWS.Util.encode_uri(network_id)}/security-groups/#{AWS.Util.encode_uri(group_id)}"

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
  Updates the properties of an existing user in a Wickr network.

  This operation allows you to modify the user's name, password, security group
  membership, and invite code settings.

  `codeValidation`, `inviteCode`, and `inviteCodeTtl` are restricted to networks
  under preview only.
  """
  @spec update_user(map(), String.t() | atom(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, network_id, input, options \\ []) do
    url_path = "/networks/#{AWS.Util.encode_uri(network_id)}/users"
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
