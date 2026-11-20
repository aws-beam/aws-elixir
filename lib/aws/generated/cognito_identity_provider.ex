# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoIdentityProvider do
  @moduledoc """
  With the Amazon Cognito user pools API, you can configure user pools and
  authenticate users.

  To
  authenticate users from third-party identity providers (IdPs) in this API, you
  can
  [link IdP users to native user profiles](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).
  Learn more
  about the authentication and authorization of federated users at [Adding user pool sign-in through a third
  party](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html)
  and in the [User pool federation endpoints and managed login reference](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html).

  This API reference provides detailed information about API operations and object
  types
  in Amazon Cognito.

  Along with resource management operations, the Amazon Cognito user pools API
  includes classes
  of operations and authorization models for client-side and server-side
  authentication of
  users. You can interact with operations in the Amazon Cognito user pools API as
  any of the
  following subjects.

    1.
  An administrator who wants to configure user pools, app clients, users,
  groups, or other user pool functions.

    2.
  A server-side app, like a web application, that wants to use its Amazon Web
  Services
  privileges to manage, authenticate, or authorize a user.

    3.
  A client-side app, like a mobile app, that wants to make unauthenticated
  requests to manage, authenticate, or authorize a user.

  For more information, see [Understanding API, OIDC, and managed login pages authentication](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html#user-pools-API-operations)
  in the *Amazon Cognito Developer Guide*.

  With your Amazon Web Services SDK, you can build the logic to support
  operational flows in every use
  case for this API. You can also make direct REST API requests to [Amazon Cognito user pools service
  endpoints](https://docs.aws.amazon.com/general/latest/gr/cognito_identity.html#cognito_identity_your_user_pools_region).
  The following links can get you started
  with the `CognitoIdentityProvider` client in supported Amazon Web Services SDKs.

  To get started with an Amazon Web Services SDK, see [Tools to Build on Amazon Web Services](http://aws.amazon.com/developer/tools/). For example actions and
  scenarios, see [Code examples for Amazon Cognito Identity Provider using Amazon Web Services
  SDKs](https://docs.aws.amazon.com/cognito/latest/developerguide/service_code_examples_cognito-identity-provider.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_recovery_setting_type() :: %{
        "RecoveryMechanisms" => list(recovery_option_type())
      }
      
  """
  @type account_recovery_setting_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_takeover_action_type() :: %{
        "EventAction" => list(any()),
        "Notify" => boolean()
      }
      
  """
  @type account_takeover_action_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_takeover_actions_type() :: %{
        "HighAction" => account_takeover_action_type(),
        "LowAction" => account_takeover_action_type(),
        "MediumAction" => account_takeover_action_type()
      }
      
  """
  @type account_takeover_actions_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_takeover_risk_configuration_type() :: %{
        "Actions" => account_takeover_actions_type(),
        "NotifyConfiguration" => notify_configuration_type()
      }
      
  """
  @type account_takeover_risk_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      acr_level_config_type() :: %{
        "AcrValue" => String.t() | atom()
      }
      
  """
  @type acr_level_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_custom_attributes_request() :: %{
        required("CustomAttributes") => list(schema_attribute_type()),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type add_custom_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_custom_attributes_response() :: %{}
      
  """
  @type add_custom_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      add_user_pool_client_secret_request() :: %{
        optional("ClientSecret") => String.t() | atom(),
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type add_user_pool_client_secret_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_user_pool_client_secret_response() :: %{
        "ClientSecretDescriptor" => client_secret_descriptor_type()
      }
      
  """
  @type add_user_pool_client_secret_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_add_user_to_group_request() :: %{
        required("GroupName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_add_user_to_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_confirm_sign_up_request() :: %{
        optional("ClientMetadata") => map(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_confirm_sign_up_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_confirm_sign_up_response() :: %{}
      
  """
  @type admin_confirm_sign_up_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_create_user_config_type() :: %{
        "AllowAdminCreateUserOnly" => boolean(),
        "InviteMessageTemplate" => message_template_type(),
        "UnusedAccountValidityDays" => integer()
      }
      
  """
  @type admin_create_user_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_create_user_request() :: %{
        optional("ClientMetadata") => map(),
        optional("DesiredDeliveryMediums") => list(list(any())()),
        optional("ForceAliasCreation") => boolean(),
        optional("MessageAction") => list(any()),
        optional("TemporaryPassword") => String.t() | atom(),
        optional("UserAttributes") => list(attribute_type()),
        optional("ValidationData") => list(attribute_type()),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_create_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_create_user_response() :: %{
        "User" => user_type()
      }
      
  """
  @type admin_create_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_delete_software_token_request() :: %{
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_delete_software_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_delete_software_token_response() :: %{}
      
  """
  @type admin_delete_software_token_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_delete_user_attributes_request() :: %{
        required("UserAttributeNames") => list(String.t() | atom()),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_delete_user_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_delete_user_attributes_response() :: %{}
      
  """
  @type admin_delete_user_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_delete_user_request() :: %{
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_delete_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_disable_provider_for_user_request() :: %{
        required("User") => provider_user_identifier_type(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type admin_disable_provider_for_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_disable_provider_for_user_response() :: %{}
      
  """
  @type admin_disable_provider_for_user_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_disable_user_request() :: %{
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_disable_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_disable_user_response() :: %{}
      
  """
  @type admin_disable_user_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_enable_user_request() :: %{
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_enable_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_enable_user_response() :: %{}
      
  """
  @type admin_enable_user_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_forget_device_request() :: %{
        required("DeviceKey") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_forget_device_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_get_device_request() :: %{
        required("DeviceKey") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_get_device_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_get_device_response() :: %{
        "Device" => device_type()
      }
      
  """
  @type admin_get_device_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_get_user_auth_factors_request() :: %{
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_get_user_auth_factors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_get_user_auth_factors_response() :: %{
        "ConfiguredUserAuthFactors" => list(list(any())()),
        "PreferredMfaSetting" => String.t() | atom(),
        "UserMFASettingList" => list(String.t() | atom()),
        "Username" => String.t() | atom()
      }
      
  """
  @type admin_get_user_auth_factors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_get_user_request() :: %{
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_get_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_get_user_response() :: %{
        "Enabled" => boolean(),
        "MFAOptions" => list(mfa_option_type()),
        "PreferredMfaSetting" => String.t() | atom(),
        "UserAttributes" => list(attribute_type()),
        "UserCreateDate" => non_neg_integer(),
        "UserLastModifiedDate" => non_neg_integer(),
        "UserMFASettingList" => list(String.t() | atom()),
        "UserStatus" => list(any()),
        "Username" => String.t() | atom()
      }
      
  """
  @type admin_get_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_initiate_auth_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("AuthParameters") => map(),
        optional("ClientMetadata") => map(),
        optional("ContextData") => context_data_type(),
        optional("Session") => String.t() | atom(),
        required("AuthFlow") => list(any()),
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type admin_initiate_auth_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_initiate_auth_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "AvailableChallenges" => list(list(any())()),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t() | atom()
      }
      
  """
  @type admin_initiate_auth_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_link_provider_for_user_request() :: %{
        required("DestinationUser") => provider_user_identifier_type(),
        required("SourceUser") => provider_user_identifier_type(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type admin_link_provider_for_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_link_provider_for_user_response() :: %{}
      
  """
  @type admin_link_provider_for_user_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_list_devices_request() :: %{
        optional("Limit") => integer(),
        optional("PaginationToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_list_devices_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_list_devices_response() :: %{
        "Devices" => list(device_type()),
        "PaginationToken" => String.t() | atom()
      }
      
  """
  @type admin_list_devices_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_list_groups_for_user_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_list_groups_for_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_list_groups_for_user_response() :: %{
        "Groups" => list(group_type()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type admin_list_groups_for_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_list_user_auth_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_list_user_auth_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_list_user_auth_events_response() :: %{
        "AuthEvents" => list(auth_event_type()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type admin_list_user_auth_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_list_user_sessions_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_list_user_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_list_user_sessions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Sessions" => list(session_description_type())
      }
      
  """
  @type admin_list_user_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_remove_user_from_group_request() :: %{
        required("GroupName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_remove_user_from_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_reset_user_password_request() :: %{
        optional("ClientMetadata") => map(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_reset_user_password_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_reset_user_password_response() :: %{}
      
  """
  @type admin_reset_user_password_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_respond_to_auth_challenge_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ChallengeResponses") => map(),
        optional("ClientMetadata") => map(),
        optional("ContextData") => context_data_type(),
        optional("Session") => String.t() | atom(),
        required("ChallengeName") => list(any()),
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type admin_respond_to_auth_challenge_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_respond_to_auth_challenge_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "AvailableChallenges" => list(list(any())()),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t() | atom()
      }
      
  """
  @type admin_respond_to_auth_challenge_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_revoke_user_session_request() :: %{
        optional("RevokeAssociatedSessions") => list(any()),
        required("SessionId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_revoke_user_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_revoke_user_session_response() :: %{}
      
  """
  @type admin_revoke_user_session_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_set_user_mfa_preference_request() :: %{
        optional("EmailMfaSettings") => email_mfa_settings_type(),
        optional("SMSMfaSettings") => sms_mfa_settings_type(),
        optional("SoftwareTokenMfaSettings") => software_token_mfa_settings_type(),
        optional("WebAuthnMfaSettings") => web_authn_mfa_settings_type(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_set_user_mfa_preference_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_mfa_preference_response() :: %{}
      
  """
  @type admin_set_user_mfa_preference_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_set_user_password_request() :: %{
        optional("Permanent") => boolean(),
        required("Password") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_set_user_password_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_password_response() :: %{}
      
  """
  @type admin_set_user_password_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_set_user_settings_request() :: %{
        required("MFAOptions") => list(mfa_option_type()),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_set_user_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_set_user_settings_response() :: %{}
      
  """
  @type admin_set_user_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_update_auth_event_feedback_request() :: %{
        required("EventId") => String.t() | atom(),
        required("FeedbackValue") => list(any()),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_update_auth_event_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_update_auth_event_feedback_response() :: %{}
      
  """
  @type admin_update_auth_event_feedback_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_update_device_status_request() :: %{
        optional("DeviceRememberedStatus") => list(any()),
        required("DeviceKey") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_update_device_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_update_device_status_response() :: %{}
      
  """
  @type admin_update_device_status_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_update_user_attributes_request() :: %{
        optional("ClientMetadata") => map(),
        required("UserAttributes") => list(attribute_type()),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_update_user_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_update_user_attributes_response() :: %{}
      
  """
  @type admin_update_user_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      admin_user_global_sign_out_request() :: %{
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type admin_user_global_sign_out_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      admin_user_global_sign_out_response() :: %{}
      
  """
  @type admin_user_global_sign_out_response() :: %{}

  @typedoc """

  ## Example:
      
      advanced_security_additional_flows_type() :: %{
        "CustomAuthMode" => list(any())
      }
      
  """
  @type advanced_security_additional_flows_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alias_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type alias_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analytics_configuration_type() :: %{
        "ApplicationArn" => String.t() | atom(),
        "ApplicationId" => String.t() | atom(),
        "ExternalId" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "UserDataShared" => boolean()
      }
      
  """
  @type analytics_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analytics_metadata_type() :: %{
        "AnalyticsEndpointId" => String.t() | atom()
      }
      
  """
  @type analytics_metadata_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      asset_type() :: %{
        "Bytes" => binary(),
        "Category" => list(any()),
        "ColorMode" => list(any()),
        "Extension" => list(any()),
        "ResourceId" => String.t() | atom()
      }
      
  """
  @type asset_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_software_token_request() :: %{
        optional("AccessToken") => String.t() | atom(),
        optional("Session") => String.t() | atom()
      }
      
  """
  @type associate_software_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_software_token_response() :: %{
        "SecretCode" => String.t() | atom(),
        "Session" => String.t() | atom()
      }
      
  """
  @type associate_software_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attribute_type() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type attribute_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auth_event_type() :: %{
        "ChallengeResponses" => list(challenge_response_type()),
        "CreationDate" => non_neg_integer(),
        "EventContextData" => event_context_data_type(),
        "EventFeedback" => event_feedback_type(),
        "EventId" => String.t() | atom(),
        "EventResponse" => list(any()),
        "EventRisk" => event_risk_type(),
        "EventType" => list(any())
      }
      
  """
  @type auth_event_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      authentication_result_type() :: %{
        "AccessToken" => String.t() | atom(),
        "ExpiresIn" => integer(),
        "IdToken" => String.t() | atom(),
        "NewDeviceMetadata" => new_device_metadata_type(),
        "RefreshToken" => String.t() | atom(),
        "TokenType" => String.t() | atom()
      }
      
  """
  @type authentication_result_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      c_i_m_d_policy_summary_type() :: %{
        "CIMDPolicyId" => String.t() | atom(),
        "CacheDuration" => integer(),
        "ClientId" => String.t() | atom(),
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "PolicyName" => String.t() | atom()
      }
      
  """
  @type c_i_m_d_policy_summary_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      c_i_m_d_policy_type() :: %{
        "CIMDPolicyId" => String.t() | atom(),
        "CacheDuration" => integer(),
        "ClientId" => String.t() | atom(),
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "PolicyName" => String.t() | atom(),
        "URLPatterns" => list(String.t() | atom()),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type c_i_m_d_policy_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cached_c_i_m_d_url_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cached_c_i_m_d_url_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_point_in_time_recovery_request() :: %{
        required("RestoreId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type cancel_point_in_time_recovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_point_in_time_recovery_response() :: %{
        "Restoration" => restoration_type()
      }
      
  """
  @type cancel_point_in_time_recovery_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      challenge_response_type() :: %{
        "ChallengeName" => list(any()),
        "ChallengeResponse" => list(any())
      }
      
  """
  @type challenge_response_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      change_password_request() :: %{
        optional("PreviousPassword") => String.t() | atom(),
        required("AccessToken") => String.t() | atom(),
        required("ProposedPassword") => String.t() | atom()
      }
      
  """
  @type change_password_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      change_password_response() :: %{}
      
  """
  @type change_password_response() :: %{}

  @typedoc """

  ## Example:
      
      client_authentication_result_type() :: %{
        "AccessToken" => String.t() | atom(),
        "ExpiresIn" => integer(),
        "TokenType" => String.t() | atom()
      }
      
  """
  @type client_authentication_result_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_metadata_url_type() :: %{
        "CachedDate" => non_neg_integer(),
        "ExpirationDate" => non_neg_integer(),
        "URL" => String.t() | atom()
      }
      
  """
  @type client_metadata_url_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_s_s_o_session_config_type() :: %{
        "MaxValidityMinutes" => integer()
      }
      
  """
  @type client_s_s_o_session_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_secret_descriptor_type() :: %{
        "ClientSecretCreateDate" => non_neg_integer(),
        "ClientSecretId" => String.t() | atom(),
        "ClientSecretValue" => String.t() | atom()
      }
      
  """
  @type client_secret_descriptor_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_configuration_type() :: %{
        "LogGroupArn" => String.t() | atom()
      }
      
  """
  @type cloud_watch_logs_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_delivery_details_type() :: %{
        "AttributeName" => String.t() | atom(),
        "DeliveryMedium" => list(any()),
        "Destination" => String.t() | atom()
      }
      
  """
  @type code_delivery_details_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_delivery_failure_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type code_delivery_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_mismatch_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type code_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      complete_web_authn_registration_request() :: %{
        required("AccessToken") => String.t() | atom(),
        required("Credential") => any()
      }
      
  """
  @type complete_web_authn_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      complete_web_authn_registration_response() :: %{}
      
  """
  @type complete_web_authn_registration_response() :: %{}

  @typedoc """

  ## Example:
      
      compromised_credentials_actions_type() :: %{
        "EventAction" => list(any())
      }
      
  """
  @type compromised_credentials_actions_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compromised_credentials_risk_configuration_type() :: %{
        "Actions" => compromised_credentials_actions_type(),
        "EventFilter" => list(list(any())())
      }
      
  """
  @type compromised_credentials_risk_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type concurrent_modification_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      confirm_device_request() :: %{
        optional("DeviceName") => String.t() | atom(),
        optional("DeviceSecretVerifierConfig") => device_secret_verifier_config_type(),
        required("AccessToken") => String.t() | atom(),
        required("DeviceKey") => String.t() | atom()
      }
      
  """
  @type confirm_device_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      confirm_device_response() :: %{
        "UserConfirmationNecessary" => boolean()
      }
      
  """
  @type confirm_device_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      confirm_forgot_password_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("SecretHash") => String.t() | atom(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t() | atom(),
        required("ConfirmationCode") => String.t() | atom(),
        required("Password") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type confirm_forgot_password_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      confirm_forgot_password_response() :: %{}
      
  """
  @type confirm_forgot_password_response() :: %{}

  @typedoc """

  ## Example:
      
      confirm_sign_up_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("ForceAliasCreation") => boolean(),
        optional("SecretHash") => String.t() | atom(),
        optional("Session") => String.t() | atom(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t() | atom(),
        required("ConfirmationCode") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type confirm_sign_up_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      confirm_sign_up_response() :: %{
        "Session" => String.t() | atom()
      }
      
  """
  @type confirm_sign_up_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      context_data_type() :: %{
        "EncodedData" => String.t() | atom(),
        "HttpHeaders" => list(http_header()),
        "IpAddress" => String.t() | atom(),
        "ServerName" => String.t() | atom(),
        "ServerPath" => String.t() | atom()
      }
      
  """
  @type context_data_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_c_i_m_d_policy_request() :: %{
        optional("CacheDuration") => integer(),
        required("ClientId") => String.t() | atom(),
        required("PolicyName") => String.t() | atom(),
        required("URLPatterns") => list(String.t() | atom()),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_c_i_m_d_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_c_i_m_d_policy_response() :: %{
        "CIMDPolicy" => c_i_m_d_policy_type()
      }
      
  """
  @type create_c_i_m_d_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_group_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Precedence") => integer(),
        optional("RoleArn") => String.t() | atom(),
        required("GroupName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_group_response() :: %{
        "Group" => group_type()
      }
      
  """
  @type create_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_identity_provider_request() :: %{
        optional("AcrMapping") => map(),
        optional("AttributeMapping") => map(),
        optional("IdpIdentifiers") => list(String.t() | atom()),
        required("ProviderDetails") => map(),
        required("ProviderName") => String.t() | atom(),
        required("ProviderType") => list(any()),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_identity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_identity_provider_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type create_identity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_managed_login_branding_request() :: %{
        optional("Assets") => list(asset_type()),
        optional("Settings") => any(),
        optional("UseCognitoProvidedValues") => boolean(),
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_managed_login_branding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_managed_login_branding_response() :: %{
        "ManagedLoginBranding" => managed_login_branding_type()
      }
      
  """
  @type create_managed_login_branding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resource_server_request() :: %{
        optional("Scopes") => list(resource_server_scope_type()),
        required("Identifier") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_resource_server_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resource_server_response() :: %{
        "ResourceServer" => resource_server_type()
      }
      
  """
  @type create_resource_server_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_terms_request() :: %{
        optional("Links") => map(),
        required("ClientId") => String.t() | atom(),
        required("Enforcement") => list(any()),
        required("TermsName") => String.t() | atom(),
        required("TermsSource") => list(any()),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_terms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_terms_response() :: %{
        "Terms" => terms_type()
      }
      
  """
  @type create_terms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_import_job_request() :: %{
        optional("PasswordHashingAlgorithm") => list(any()),
        required("CloudWatchLogsRoleArn") => String.t() | atom(),
        required("JobName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_user_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type create_user_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_client_request() :: %{
        optional("AccessTokenValidity") => integer(),
        optional("AllowedOAuthFlows") => list(list(any())()),
        optional("AllowedOAuthFlowsUserPoolClient") => boolean(),
        optional("AllowedOAuthScopes") => list(String.t() | atom()),
        optional("AnalyticsConfiguration") => analytics_configuration_type(),
        optional("AuthSessionValidity") => integer(),
        optional("CallbackURLs") => list(String.t() | atom()),
        optional("ClientSecret") => String.t() | atom(),
        optional("DefaultRedirectURI") => String.t() | atom(),
        optional("EnablePropagateAdditionalUserContextData") => boolean(),
        optional("EnableTokenRevocation") => boolean(),
        optional("ExplicitAuthFlows") => list(list(any())()),
        optional("GenerateSecret") => boolean(),
        optional("IdTokenValidity") => integer(),
        optional("LogoutURLs") => list(String.t() | atom()),
        optional("PreventUserExistenceErrors") => list(any()),
        optional("PublishSecretsInAWSSecretsManager") => boolean(),
        optional("ReadAttributes") => list(String.t() | atom()),
        optional("RefreshTokenRotation") => refresh_token_rotation_type(),
        optional("RefreshTokenValidity") => integer(),
        optional("SupportedIdentityProviders") => list(String.t() | atom()),
        optional("TokenValidityUnits") => token_validity_units_type(),
        optional("WriteAttributes") => list(String.t() | atom()),
        required("ClientName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_user_pool_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_client_response() :: %{
        "UserPoolClient" => user_pool_client_type()
      }
      
  """
  @type create_user_pool_client_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_domain_request() :: %{
        optional("CustomDomainConfig") => custom_domain_config_type(),
        optional("ManagedLoginVersion") => integer(),
        optional("Routing") => routing_type(),
        required("Domain") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_user_pool_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_domain_response() :: %{
        "CloudFrontDomain" => String.t() | atom(),
        "ManagedLoginVersion" => integer(),
        "Routing" => routing_type()
      }
      
  """
  @type create_user_pool_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_replica_request() :: %{
        optional("UserPoolTags") => map(),
        required("RegionName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type create_user_pool_replica_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_replica_response() :: %{
        "UserPoolReplica" => user_pool_replica_type()
      }
      
  """
  @type create_user_pool_replica_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_request() :: %{
        optional("AccountRecoverySetting") => account_recovery_setting_type(),
        optional("AcrConfiguration") => map(),
        optional("AdminCreateUserConfig") => admin_create_user_config_type(),
        optional("AliasAttributes") => list(list(any())()),
        optional("AutoVerifiedAttributes") => list(list(any())()),
        optional("DcrConfiguration") => dcr_configuration_type(),
        optional("DeletionProtection") => list(any()),
        optional("DeviceConfiguration") => device_configuration_type(),
        optional("EmailConfiguration") => email_configuration_type(),
        optional("EmailVerificationMessage") => String.t() | atom(),
        optional("EmailVerificationSubject") => String.t() | atom(),
        optional("IssuerConfiguration") => issuer_configuration_type(),
        optional("KeyConfiguration") => key_configuration_type(),
        optional("LambdaConfig") => lambda_config_type(),
        optional("MfaConfiguration") => list(any()),
        optional("Policies") => user_pool_policy_type(),
        optional("Schema") => list(schema_attribute_type()),
        optional("SmsAuthenticationMessage") => String.t() | atom(),
        optional("SmsConfiguration") => sms_configuration_type(),
        optional("SmsVerificationMessage") => String.t() | atom(),
        optional("UserAttributeUpdateSettings") => user_attribute_update_settings_type(),
        optional("UserPoolAddOns") => user_pool_add_ons_type(),
        optional("UserPoolTags") => map(),
        optional("UserPoolTier") => list(any()),
        optional("UsernameAttributes") => list(list(any())()),
        optional("UsernameConfiguration") => username_configuration_type(),
        optional("VerificationMessageTemplate") => verification_message_template_type(),
        required("PoolName") => String.t() | atom()
      }
      
  """
  @type create_user_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_user_pool_response() :: %{
        "UserPool" => user_pool_type()
      }
      
  """
  @type create_user_pool_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_domain_config_type() :: %{
        "CertificateArn" => String.t() | atom(),
        "SecurityPolicy" => list(any())
      }
      
  """
  @type custom_domain_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_email_lambda_version_config_type() :: %{
        "LambdaArn" => String.t() | atom(),
        "LambdaVersion" => list(any())
      }
      
  """
  @type custom_email_lambda_version_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_sms_lambda_version_config_type() :: %{
        "LambdaArn" => String.t() | atom(),
        "LambdaVersion" => list(any())
      }
      
  """
  @type custom_sms_lambda_version_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dcr_configuration_type() :: %{
        "AllowedScopes" => list(String.t() | atom()),
        "AuthenticatedGrantTypes" => list(list(any())()),
        "EnableStatus" => list(any()),
        "OpenDcrEnabled" => boolean(),
        "OpenDcrGrantTypes" => list(list(any())())
      }
      
  """
  @type dcr_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_c_i_m_d_policy_request() :: %{
        required("CIMDPolicyId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_c_i_m_d_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_c_i_m_d_policy_response() :: %{}
      
  """
  @type delete_c_i_m_d_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_group_request() :: %{
        required("GroupName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_identity_provider_request() :: %{
        required("ProviderName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_identity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_managed_login_branding_request() :: %{
        required("ManagedLoginBrandingId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_managed_login_branding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_server_request() :: %{
        required("Identifier") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_resource_server_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_terms_request() :: %{
        required("TermsId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_terms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_attributes_request() :: %{
        required("AccessToken") => String.t() | atom(),
        required("UserAttributeNames") => list(String.t() | atom())
      }
      
  """
  @type delete_user_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_attributes_response() :: %{}
      
  """
  @type delete_user_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_user_pool_client_request() :: %{
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_user_pool_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_client_secret_request() :: %{
        required("ClientId") => String.t() | atom(),
        required("ClientSecretId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_user_pool_client_secret_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_client_secret_response() :: %{}
      
  """
  @type delete_user_pool_client_secret_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_user_pool_domain_request() :: %{
        required("Domain") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_user_pool_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_domain_response() :: %{}
      
  """
  @type delete_user_pool_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_user_pool_replica_request() :: %{
        required("RegionName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_user_pool_replica_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_replica_response() :: %{
        "UserPoolReplica" => user_pool_replica_type()
      }
      
  """
  @type delete_user_pool_replica_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_pool_request() :: %{
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type delete_user_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type delete_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_web_authn_credential_request() :: %{
        required("AccessToken") => String.t() | atom(),
        required("CredentialId") => String.t() | atom()
      }
      
  """
  @type delete_web_authn_credential_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_web_authn_credential_response() :: %{}
      
  """
  @type delete_web_authn_credential_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_c_i_m_d_policy_request() :: %{
        required("CIMDPolicyId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_c_i_m_d_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_c_i_m_d_policy_response() :: %{
        "CIMDPolicy" => c_i_m_d_policy_type()
      }
      
  """
  @type describe_c_i_m_d_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_identity_provider_request() :: %{
        required("ProviderName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_identity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_identity_provider_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type describe_identity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_login_branding_by_client_request() :: %{
        optional("ReturnMergedResources") => boolean(),
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_managed_login_branding_by_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_login_branding_by_client_response() :: %{
        "ManagedLoginBranding" => managed_login_branding_type()
      }
      
  """
  @type describe_managed_login_branding_by_client_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_login_branding_request() :: %{
        optional("ReturnMergedResources") => boolean(),
        required("ManagedLoginBrandingId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_managed_login_branding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_login_branding_response() :: %{
        "ManagedLoginBranding" => managed_login_branding_type()
      }
      
  """
  @type describe_managed_login_branding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_point_in_time_recovery_request() :: %{
        required("RestoreId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_point_in_time_recovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_point_in_time_recovery_response() :: %{
        "Restoration" => restoration_type()
      }
      
  """
  @type describe_point_in_time_recovery_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_resource_server_request() :: %{
        required("Identifier") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_resource_server_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_resource_server_response() :: %{
        "ResourceServer" => resource_server_type()
      }
      
  """
  @type describe_resource_server_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_risk_configuration_request() :: %{
        optional("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_risk_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_risk_configuration_response() :: %{
        "RiskConfiguration" => risk_configuration_type()
      }
      
  """
  @type describe_risk_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_terms_by_client_request() :: %{
        required("ClientId") => String.t() | atom(),
        required("TermsName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_terms_by_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_terms_by_client_response() :: %{
        "Terms" => terms_type()
      }
      
  """
  @type describe_terms_by_client_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_terms_request() :: %{
        required("TermsId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_terms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_terms_response() :: %{
        "Terms" => terms_type()
      }
      
  """
  @type describe_terms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_import_job_request() :: %{
        required("JobId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_user_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type describe_user_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_client_request() :: %{
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_user_pool_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_client_response() :: %{
        "UserPoolClient" => user_pool_client_type()
      }
      
  """
  @type describe_user_pool_client_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_domain_request() :: %{
        required("Domain") => String.t() | atom()
      }
      
  """
  @type describe_user_pool_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_domain_response() :: %{
        "DomainDescription" => domain_description_type()
      }
      
  """
  @type describe_user_pool_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_request() :: %{
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type describe_user_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_user_pool_response() :: %{
        "UserPool" => user_pool_type()
      }
      
  """
  @type describe_user_pool_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      device_configuration_type() :: %{
        "ChallengeRequiredOnNewDevice" => boolean(),
        "DeviceOnlyRememberedOnUserPrompt" => boolean()
      }
      
  """
  @type device_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      device_key_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type device_key_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      device_secret_verifier_config_type() :: %{
        "PasswordVerifier" => String.t() | atom(),
        "Salt" => String.t() | atom()
      }
      
  """
  @type device_secret_verifier_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      device_type() :: %{
        "DeviceAttributes" => list(attribute_type()),
        "DeviceCreateDate" => non_neg_integer(),
        "DeviceKey" => String.t() | atom(),
        "DeviceLastAuthenticatedDate" => non_neg_integer(),
        "DeviceLastModifiedDate" => non_neg_integer()
      }
      
  """
  @type device_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      domain_description_type() :: %{
        "AWSAccountId" => String.t() | atom(),
        "CloudFrontDistribution" => String.t() | atom(),
        "CustomDomainConfig" => custom_domain_config_type(),
        "Domain" => String.t() | atom(),
        "ManagedLoginVersion" => integer(),
        "Routing" => routing_type(),
        "S3Bucket" => String.t() | atom(),
        "Status" => list(any()),
        "UserPoolId" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type domain_description_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_provider_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type duplicate_provider_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      email_configuration_type() :: %{
        "ConfigurationSet" => String.t() | atom(),
        "EmailSendingAccount" => list(any()),
        "From" => String.t() | atom(),
        "ReplyToEmailAddress" => String.t() | atom(),
        "SourceArn" => String.t() | atom()
      }
      
  """
  @type email_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      email_mfa_config_type() :: %{
        "Message" => String.t() | atom(),
        "Subject" => String.t() | atom()
      }
      
  """
  @type email_mfa_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      email_mfa_settings_type() :: %{
        "Enabled" => boolean(),
        "PreferredMfa" => boolean()
      }
      
  """
  @type email_mfa_settings_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      enable_software_token_mfa_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type enable_software_token_mfa_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      eums_sms_configuration_type() :: %{
        "CallerArn" => String.t() | atom(),
        "ConfigurationSetName" => String.t() | atom(),
        "ExternalId" => String.t() | atom(),
        "InEntityId" => String.t() | atom(),
        "InTemplateId" => String.t() | atom(),
        "OriginationIdentity" => String.t() | atom(),
        "Region" => String.t() | atom()
      }
      
  """
  @type eums_sms_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_context_data_type() :: %{
        "City" => String.t() | atom(),
        "Country" => String.t() | atom(),
        "DeviceName" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "Timezone" => String.t() | atom()
      }
      
  """
  @type event_context_data_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_feedback_type() :: %{
        "FeedbackDate" => non_neg_integer(),
        "FeedbackValue" => list(any()),
        "Provider" => String.t() | atom()
      }
      
  """
  @type event_feedback_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_risk_type() :: %{
        "CompromisedCredentialsDetected" => boolean(),
        "RiskDecision" => list(any()),
        "RiskLevel" => list(any())
      }
      
  """
  @type event_risk_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expired_code_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type expired_code_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failover_type() :: %{
        "PrimaryRoute53HealthCheckId" => String.t() | atom(),
        "SecondaryRegion" => String.t() | atom()
      }
      
  """
  @type failover_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      feature_unavailable_in_tier_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type feature_unavailable_in_tier_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firehose_configuration_type() :: %{
        "StreamArn" => String.t() | atom()
      }
      
  """
  @type firehose_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forget_device_request() :: %{
        optional("AccessToken") => String.t() | atom(),
        required("DeviceKey") => String.t() | atom()
      }
      
  """
  @type forget_device_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forgot_password_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("SecretHash") => String.t() | atom(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type forgot_password_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forgot_password_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type()
      }
      
  """
  @type forgot_password_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_client_token_request() :: %{
        optional("ClientMetadata") => map(),
        optional("Scopes") => list(String.t() | atom()),
        required("ClientId") => String.t() | atom(),
        required("Secret") => String.t() | atom()
      }
      
  """
  @type get_client_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_client_token_response() :: %{
        "ClientAuthenticationResult" => client_authentication_result_type()
      }
      
  """
  @type get_client_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_csv_header_request() :: %{
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_csv_header_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_csv_header_response() :: %{
        "CSVHeader" => list(String.t() | atom()),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type get_csv_header_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_derived_token_request() :: %{
        optional("ActorToken") => String.t() | atom(),
        optional("ActorTokenProviderName") => String.t() | atom(),
        optional("ActorTokenType") => list(any()),
        optional("Audiences") => list(String.t() | atom()),
        optional("ClientSecret") => String.t() | atom(),
        optional("RequestedTokenType") => list(any()),
        optional("Resources") => list(String.t() | atom()),
        optional("Scopes") => list(String.t() | atom()),
        optional("SubjectTokenProviderName") => String.t() | atom(),
        required("ClientId") => String.t() | atom(),
        required("SubjectToken") => String.t() | atom(),
        required("SubjectTokenType") => list(any())
      }
      
  """
  @type get_derived_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_derived_token_response() :: %{
        "ExpiresIn" => integer(),
        "IssuedToken" => String.t() | atom(),
        "IssuedTokenType" => list(any()),
        "Scopes" => list(String.t() | atom()),
        "TokenType" => list(any())
      }
      
  """
  @type get_derived_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_device_request() :: %{
        optional("AccessToken") => String.t() | atom(),
        required("DeviceKey") => String.t() | atom()
      }
      
  """
  @type get_device_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_device_response() :: %{
        "Device" => device_type()
      }
      
  """
  @type get_device_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_group_request() :: %{
        required("GroupName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_group_response() :: %{
        "Group" => group_type()
      }
      
  """
  @type get_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_identity_provider_by_identifier_request() :: %{
        required("IdpIdentifier") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_identity_provider_by_identifier_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_identity_provider_by_identifier_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type get_identity_provider_by_identifier_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_log_delivery_configuration_request() :: %{
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_log_delivery_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_log_delivery_configuration_response() :: %{
        "LogDeliveryConfiguration" => log_delivery_configuration_type()
      }
      
  """
  @type get_log_delivery_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_provisioned_limit_request() :: %{
        required("LimitDefinition") => limit_definition_type()
      }
      
  """
  @type get_provisioned_limit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_provisioned_limit_response() :: %{
        "Limit" => limit_type()
      }
      
  """
  @type get_provisioned_limit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_signing_certificate_request() :: %{
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_signing_certificate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_signing_certificate_response() :: %{
        "Certificate" => String.t() | atom()
      }
      
  """
  @type get_signing_certificate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tokens_from_refresh_token_request() :: %{
        optional("ClientMetadata") => map(),
        optional("ClientSecret") => String.t() | atom(),
        optional("DeviceKey") => String.t() | atom(),
        required("ClientId") => String.t() | atom(),
        required("RefreshToken") => String.t() | atom()
      }
      
  """
  @type get_tokens_from_refresh_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tokens_from_refresh_token_response() :: %{
        "AuthenticationResult" => authentication_result_type()
      }
      
  """
  @type get_tokens_from_refresh_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ui_customization_request() :: %{
        optional("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_ui_customization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ui_customization_response() :: %{
        "UICustomization" => ui_customization_type()
      }
      
  """
  @type get_ui_customization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_attribute_verification_code_request() :: %{
        optional("ClientMetadata") => map(),
        required("AccessToken") => String.t() | atom(),
        required("AttributeName") => String.t() | atom()
      }
      
  """
  @type get_user_attribute_verification_code_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_attribute_verification_code_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type()
      }
      
  """
  @type get_user_attribute_verification_code_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_auth_factors_request() :: %{
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type get_user_auth_factors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_auth_factors_response() :: %{
        "ConfiguredUserAuthFactors" => list(list(any())()),
        "PreferredMfaSetting" => String.t() | atom(),
        "UserMFASettingList" => list(String.t() | atom()),
        "Username" => String.t() | atom()
      }
      
  """
  @type get_user_auth_factors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_client_session_configuration_request() :: %{
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_user_pool_client_session_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_client_session_configuration_response() :: %{
        "ClientId" => String.t() | atom(),
        "SSOSession" => client_s_s_o_session_config_type(),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type get_user_pool_client_session_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_mfa_config_request() :: %{
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_user_pool_mfa_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_mfa_config_response() :: %{
        "EmailMfaConfiguration" => email_mfa_config_type(),
        "MfaConfiguration" => list(any()),
        "SmsMfaConfiguration" => sms_mfa_config_type(),
        "SoftwareTokenMfaConfiguration" => software_token_mfa_config_type(),
        "WebAuthnConfiguration" => web_authn_configuration_type()
      }
      
  """
  @type get_user_pool_mfa_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_session_configuration_request() :: %{
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type get_user_pool_session_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_pool_session_configuration_response() :: %{
        "TokenSession" => user_pool_token_session_config_type(),
        "UserPoolId" => String.t() | atom(),
        "UserSessionTracking" => list(any())
      }
      
  """
  @type get_user_pool_session_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_request() :: %{
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type get_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_user_response() :: %{
        "MFAOptions" => list(mfa_option_type()),
        "PreferredMfaSetting" => String.t() | atom(),
        "UserAttributes" => list(attribute_type()),
        "UserMFASettingList" => list(String.t() | atom()),
        "Username" => String.t() | atom()
      }
      
  """
  @type get_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_sign_out_request() :: %{
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type global_sign_out_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_sign_out_response() :: %{}
      
  """
  @type global_sign_out_response() :: %{}

  @typedoc """

  ## Example:
      
      group_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type group_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      group_type() :: %{
        "CreationDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "LastModifiedDate" => non_neg_integer(),
        "Precedence" => integer(),
        "RoleArn" => String.t() | atom(),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type group_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      http_header() :: %{
        "headerName" => String.t() | atom(),
        "headerValue" => String.t() | atom()
      }
      
  """
  @type http_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      identity_provider_type() :: %{
        "AcrMapping" => map(),
        "AttributeMapping" => map(),
        "CreationDate" => non_neg_integer(),
        "IdpIdentifiers" => list(String.t() | atom()),
        "LastModifiedDate" => non_neg_integer(),
        "ProviderDetails" => map(),
        "ProviderName" => String.t() | atom(),
        "ProviderType" => list(any()),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type identity_provider_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      inbound_federation_lambda_type() :: %{
        "LambdaArn" => String.t() | atom(),
        "LambdaVersion" => list(any())
      }
      
  """
  @type inbound_federation_lambda_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initiate_auth_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("AuthParameters") => map(),
        optional("ClientMetadata") => map(),
        optional("Session") => String.t() | atom(),
        optional("UserContextData") => user_context_data_type(),
        required("AuthFlow") => list(any()),
        required("ClientId") => String.t() | atom()
      }
      
  """
  @type initiate_auth_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initiate_auth_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "AvailableChallenges" => list(list(any())()),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t() | atom()
      }
      
  """
  @type initiate_auth_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initiate_point_in_time_recovery_request() :: %{
        required("RestoreTimestamp") => non_neg_integer(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type initiate_point_in_time_recovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      initiate_point_in_time_recovery_response() :: %{
        "Restoration" => restoration_type()
      }
      
  """
  @type initiate_point_in_time_recovery_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_email_role_access_policy_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_email_role_access_policy_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_lambda_response_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_lambda_response_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_o_auth_flow_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_o_auth_flow_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t() | atom(),
        "reasonCode" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_password_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_password_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_sms_role_access_policy_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_sms_role_access_policy_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_sms_role_trust_relationship_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_sms_role_trust_relationship_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_user_pool_configuration_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_user_pool_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      issuer_configuration_type() :: %{
        "Type" => list(any())
      }
      
  """
  @type issuer_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      key_configuration_type() :: %{
        "KeyType" => list(any()),
        "KmsKeyArn" => String.t() | atom()
      }
      
  """
  @type key_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambda_config_type() :: %{
        "CreateAuthChallenge" => String.t() | atom(),
        "CustomEmailSender" => custom_email_lambda_version_config_type(),
        "CustomMessage" => String.t() | atom(),
        "CustomSMSSender" => custom_sms_lambda_version_config_type(),
        "DefineAuthChallenge" => String.t() | atom(),
        "InboundFederation" => inbound_federation_lambda_type(),
        "KMSKeyID" => String.t() | atom(),
        "PostAuthentication" => String.t() | atom(),
        "PostConfirmation" => String.t() | atom(),
        "PreAuthentication" => String.t() | atom(),
        "PreSignUp" => String.t() | atom(),
        "PreTokenGeneration" => String.t() | atom(),
        "PreTokenGenerationConfig" => pre_token_generation_version_config_type(),
        "UserMigration" => String.t() | atom(),
        "VerifyAuthChallengeResponse" => String.t() | atom()
      }
      
  """
  @type lambda_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_definition_type() :: %{
        "Attributes" => map(),
        "LimitClass" => list(any())
      }
      
  """
  @type limit_definition_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_type() :: %{
        "FreeLimitValue" => integer(),
        "LimitDefinition" => limit_definition_type(),
        "ProvisionedLimitValue" => integer()
      }
      
  """
  @type limit_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_c_i_m_d_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_c_i_m_d_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_c_i_m_d_policies_response() :: %{
        "CIMDPolicies" => list(c_i_m_d_policy_summary_type()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_c_i_m_d_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_client_metadata_urls_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("CIMDPolicyId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_client_metadata_urls_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_client_metadata_urls_response() :: %{
        "ClientMetadataURLs" => list(client_metadata_url_type()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_client_metadata_urls_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_devices_request() :: %{
        optional("Limit") => integer(),
        optional("PaginationToken") => String.t() | atom(),
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type list_devices_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_devices_response() :: %{
        "Devices" => list(device_type()),
        "PaginationToken" => String.t() | atom()
      }
      
  """
  @type list_devices_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_groups_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_groups_response() :: %{
        "Groups" => list(group_type()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_identity_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_identity_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_identity_providers_response() :: %{
        "NextToken" => String.t() | atom(),
        "Providers" => list(provider_description())
      }
      
  """
  @type list_identity_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_point_in_time_recoveries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_point_in_time_recoveries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_point_in_time_recoveries_response() :: %{
        "NextToken" => String.t() | atom(),
        "Restorations" => list(restoration_description_type())
      }
      
  """
  @type list_point_in_time_recoveries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resource_servers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_resource_servers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resource_servers_response() :: %{
        "NextToken" => String.t() | atom(),
        "ResourceServers" => list(resource_server_type())
      }
      
  """
  @type list_resource_servers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_terms_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_terms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_terms_response() :: %{
        "NextToken" => String.t() | atom(),
        "Terms" => list(terms_description_type())
      }
      
  """
  @type list_terms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_import_jobs_request() :: %{
        optional("PaginationToken") => String.t() | atom(),
        required("MaxResults") => integer(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_user_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_import_jobs_response() :: %{
        "PaginationToken" => String.t() | atom(),
        "UserImportJobs" => list(user_import_job_type())
      }
      
  """
  @type list_user_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_client_secrets_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_user_pool_client_secrets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_client_secrets_response() :: %{
        "ClientSecrets" => list(client_secret_descriptor_type()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_user_pool_client_secrets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_clients_request() :: %{
        optional("ClientType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_user_pool_clients_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_clients_response() :: %{
        "NextToken" => String.t() | atom(),
        "UserPoolClients" => list(user_pool_client_description())
      }
      
  """
  @type list_user_pool_clients_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_replicas_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_user_pool_replicas_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pool_replicas_response() :: %{
        "NextToken" => String.t() | atom(),
        "UserPoolReplicas" => list(user_pool_replica_type())
      }
      
  """
  @type list_user_pool_replicas_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pools_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("MaxResults") => integer()
      }
      
  """
  @type list_user_pools_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_pools_response() :: %{
        "NextToken" => String.t() | atom(),
        "UserPools" => list(user_pool_description_type())
      }
      
  """
  @type list_user_pools_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_sessions_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type list_user_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_user_sessions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Sessions" => list(session_description_type())
      }
      
  """
  @type list_user_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_users_in_group_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("GroupName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_users_in_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_users_in_group_response() :: %{
        "NextToken" => String.t() | atom(),
        "Users" => list(user_type())
      }
      
  """
  @type list_users_in_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("AttributesToGet") => list(String.t() | atom()),
        optional("Filter") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("PaginationToken") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type list_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "PaginationToken" => String.t() | atom(),
        "Users" => list(user_type())
      }
      
  """
  @type list_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_web_authn_credentials_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type list_web_authn_credentials_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_web_authn_credentials_response() :: %{
        "Credentials" => list(web_authn_credential_description()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_web_authn_credentials_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      log_configuration_type() :: %{
        "CloudWatchLogsConfiguration" => cloud_watch_logs_configuration_type(),
        "EventSource" => list(any()),
        "FirehoseConfiguration" => firehose_configuration_type(),
        "LogLevel" => list(any()),
        "S3Configuration" => s3_configuration_type()
      }
      
  """
  @type log_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      log_delivery_configuration_type() :: %{
        "LogConfigurations" => list(log_configuration_type()),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type log_delivery_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_login_branding_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type managed_login_branding_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_login_branding_type() :: %{
        "Assets" => list(asset_type()),
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "ManagedLoginBrandingId" => String.t() | atom(),
        "Settings" => any(),
        "UseCognitoProvidedValues" => boolean(),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type managed_login_branding_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      message_template_type() :: %{
        "EmailMessage" => String.t() | atom(),
        "EmailSubject" => String.t() | atom(),
        "SMSMessage" => String.t() | atom()
      }
      
  """
  @type message_template_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mfa_method_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type mfa_method_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mfa_option_type() :: %{
        "AttributeName" => String.t() | atom(),
        "DeliveryMedium" => list(any())
      }
      
  """
  @type mfa_option_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      new_device_metadata_type() :: %{
        "DeviceGroupKey" => String.t() | atom(),
        "DeviceKey" => String.t() | atom()
      }
      
  """
  @type new_device_metadata_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      not_authorized_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type not_authorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notify_configuration_type() :: %{
        "BlockEmail" => notify_email_type(),
        "From" => String.t() | atom(),
        "MfaEmail" => notify_email_type(),
        "NoActionEmail" => notify_email_type(),
        "ReplyTo" => String.t() | atom(),
        "SourceArn" => String.t() | atom()
      }
      
  """
  @type notify_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notify_email_type() :: %{
        "HtmlBody" => String.t() | atom(),
        "Subject" => String.t() | atom(),
        "TextBody" => String.t() | atom()
      }
      
  """
  @type notify_email_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      number_attribute_constraints_type() :: %{
        "MaxValue" => String.t() | atom(),
        "MinValue" => String.t() | atom()
      }
      
  """
  @type number_attribute_constraints_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_not_enabled_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type operation_not_enabled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      password_history_policy_violation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type password_history_policy_violation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      password_policy_type() :: %{
        "MinimumLength" => integer(),
        "PasswordHistorySize" => integer(),
        "RequireLowercase" => boolean(),
        "RequireNumbers" => boolean(),
        "RequireSymbols" => boolean(),
        "RequireUppercase" => boolean(),
        "TemporaryPasswordValidityDays" => integer()
      }
      
  """
  @type password_policy_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      password_reset_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type password_reset_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pre_token_generation_version_config_type() :: %{
        "LambdaArn" => String.t() | atom(),
        "LambdaVersion" => list(any())
      }
      
  """
  @type pre_token_generation_version_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      precondition_not_met_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type precondition_not_met_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provider_description() :: %{
        "CreationDate" => non_neg_integer(),
        "LastModifiedDate" => non_neg_integer(),
        "ProviderName" => String.t() | atom(),
        "ProviderType" => list(any())
      }
      
  """
  @type provider_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provider_user_identifier_type() :: %{
        "ProviderAttributeName" => String.t() | atom(),
        "ProviderAttributeValue" => String.t() | atom(),
        "ProviderName" => String.t() | atom()
      }
      
  """
  @type provider_user_identifier_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recovery_option_type() :: %{
        "Name" => list(any()),
        "Priority" => integer()
      }
      
  """
  @type recovery_option_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      refresh_token_reuse_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type refresh_token_reuse_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      refresh_token_rotation_type() :: %{
        "Feature" => list(any()),
        "RetryGracePeriodSeconds" => integer()
      }
      
  """
  @type refresh_token_rotation_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resend_confirmation_code_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("SecretHash") => String.t() | atom(),
        optional("UserContextData") => user_context_data_type(),
        required("ClientId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type resend_confirmation_code_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resend_confirmation_code_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type()
      }
      
  """
  @type resend_confirmation_code_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_server_scope_type() :: %{
        "ScopeDescription" => String.t() | atom(),
        "ScopeName" => String.t() | atom()
      }
      
  """
  @type resource_server_scope_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_server_type() :: %{
        "Identifier" => String.t() | atom(),
        "ManagedBy" => list(any()),
        "Name" => String.t() | atom(),
        "Scopes" => list(resource_server_scope_type()),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type resource_server_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      respond_to_auth_challenge_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ChallengeResponses") => map(),
        optional("ClientMetadata") => map(),
        optional("Session") => String.t() | atom(),
        optional("UserContextData") => user_context_data_type(),
        required("ChallengeName") => list(any()),
        required("ClientId") => String.t() | atom()
      }
      
  """
  @type respond_to_auth_challenge_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      respond_to_auth_challenge_response() :: %{
        "AuthenticationResult" => authentication_result_type(),
        "AvailableChallenges" => list(list(any())()),
        "ChallengeName" => list(any()),
        "ChallengeParameters" => map(),
        "Session" => String.t() | atom()
      }
      
  """
  @type respond_to_auth_challenge_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restoration_description_type() :: %{
        "RestoreId" => String.t() | atom(),
        "RestoreStatus" => list(any()),
        "RestoreTimestamp" => non_neg_integer()
      }
      
  """
  @type restoration_description_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restoration_type() :: %{
        "RestoreId" => String.t() | atom(),
        "RestorePreview" => list(restore_preview_type()),
        "RestoreStatus" => list(any()),
        "RestoreTimestamp" => non_neg_integer(),
        "TriggerTimestamp" => non_neg_integer()
      }
      
  """
  @type restoration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restore_preview_type() :: %{
        "CreateCount" => float(),
        "DeleteCount" => float(),
        "Entity" => String.t() | atom(),
        "UpdateCount" => float()
      }
      
  """
  @type restore_preview_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_token_request() :: %{
        optional("ClientSecret") => String.t() | atom(),
        optional("RevokeAssociatedSessions") => list(any()),
        required("ClientId") => String.t() | atom(),
        required("Token") => String.t() | atom()
      }
      
  """
  @type revoke_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_token_response() :: %{}
      
  """
  @type revoke_token_response() :: %{}

  @typedoc """

  ## Example:
      
      revoke_user_session_request() :: %{
        optional("RevokeAssociatedSessions") => list(any()),
        required("AccessToken") => String.t() | atom(),
        required("SessionId") => String.t() | atom()
      }
      
  """
  @type revoke_user_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revoke_user_session_response() :: %{}
      
  """
  @type revoke_user_session_response() :: %{}

  @typedoc """

  ## Example:
      
      risk_configuration_type() :: %{
        "AccountTakeoverRiskConfiguration" => account_takeover_risk_configuration_type(),
        "ClientId" => String.t() | atom(),
        "CompromisedCredentialsRiskConfiguration" => compromised_credentials_risk_configuration_type(),
        "LastModifiedDate" => non_neg_integer(),
        "RiskExceptionConfiguration" => risk_exception_configuration_type(),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type risk_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      risk_exception_configuration_type() :: %{
        "BlockedIPRangeList" => list(String.t() | atom()),
        "SkippedIPRangeList" => list(String.t() | atom())
      }
      
  """
  @type risk_exception_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      routing_type() :: %{
        "Failover" => failover_type()
      }
      
  """
  @type routing_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_configuration_type() :: %{
        "BucketArn" => String.t() | atom()
      }
      
  """
  @type s3_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema_attribute_type() :: %{
        "AttributeDataType" => list(any()),
        "DeveloperOnlyAttribute" => boolean(),
        "Mutable" => boolean(),
        "Name" => String.t() | atom(),
        "NumberAttributeConstraints" => number_attribute_constraints_type(),
        "Required" => boolean(),
        "StringAttributeConstraints" => string_attribute_constraints_type()
      }
      
  """
  @type schema_attribute_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scope_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type scope_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      session_description_type() :: %{
        "ClientId" => String.t() | atom(),
        "CreateDate" => non_neg_integer(),
        "DeviceType" => String.t() | atom(),
        "IsCurrentSession" => boolean(),
        "LastActiveDate" => non_neg_integer(),
        "LastIPAddress" => String.t() | atom(),
        "LastLocation" => session_location_type(),
        "OriginSessionId" => String.t() | atom(),
        "SessionId" => String.t() | atom(),
        "SessionType" => list(any())
      }
      
  """
  @type session_description_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      session_location_type() :: %{
        "City" => String.t() | atom(),
        "Country" => String.t() | atom()
      }
      
  """
  @type session_location_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_log_delivery_configuration_request() :: %{
        required("LogConfigurations") => list(log_configuration_type()),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type set_log_delivery_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_log_delivery_configuration_response() :: %{
        "LogDeliveryConfiguration" => log_delivery_configuration_type()
      }
      
  """
  @type set_log_delivery_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_risk_configuration_request() :: %{
        optional("AccountTakeoverRiskConfiguration") => account_takeover_risk_configuration_type(),
        optional("ClientId") => String.t() | atom(),
        optional("CompromisedCredentialsRiskConfiguration") => compromised_credentials_risk_configuration_type(),
        optional("RiskExceptionConfiguration") => risk_exception_configuration_type(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type set_risk_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_risk_configuration_response() :: %{
        "RiskConfiguration" => risk_configuration_type()
      }
      
  """
  @type set_risk_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_ui_customization_request() :: %{
        optional("CSS") => String.t() | atom(),
        optional("ClientId") => String.t() | atom(),
        optional("ImageFile") => binary(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type set_ui_customization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_ui_customization_response() :: %{
        "UICustomization" => ui_customization_type()
      }
      
  """
  @type set_ui_customization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_mfa_preference_request() :: %{
        optional("EmailMfaSettings") => email_mfa_settings_type(),
        optional("SMSMfaSettings") => sms_mfa_settings_type(),
        optional("SoftwareTokenMfaSettings") => software_token_mfa_settings_type(),
        optional("WebAuthnMfaSettings") => web_authn_mfa_settings_type(),
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type set_user_mfa_preference_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_mfa_preference_response() :: %{}
      
  """
  @type set_user_mfa_preference_response() :: %{}

  @typedoc """

  ## Example:
      
      set_user_pool_client_session_configuration_request() :: %{
        required("ClientId") => String.t() | atom(),
        required("SSOSession") => client_s_s_o_session_config_type(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type set_user_pool_client_session_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_pool_client_session_configuration_response() :: %{
        "ClientId" => String.t() | atom(),
        "SSOSession" => client_s_s_o_session_config_type(),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type set_user_pool_client_session_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_pool_mfa_config_request() :: %{
        optional("EmailMfaConfiguration") => email_mfa_config_type(),
        optional("MfaConfiguration") => list(any()),
        optional("SmsMfaConfiguration") => sms_mfa_config_type(),
        optional("SoftwareTokenMfaConfiguration") => software_token_mfa_config_type(),
        optional("WebAuthnConfiguration") => web_authn_configuration_type(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type set_user_pool_mfa_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_pool_mfa_config_response() :: %{
        "EmailMfaConfiguration" => email_mfa_config_type(),
        "MfaConfiguration" => list(any()),
        "SmsMfaConfiguration" => sms_mfa_config_type(),
        "SoftwareTokenMfaConfiguration" => software_token_mfa_config_type(),
        "WebAuthnConfiguration" => web_authn_configuration_type()
      }
      
  """
  @type set_user_pool_mfa_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_pool_session_configuration_request() :: %{
        required("TokenSession") => user_pool_token_session_config_type(),
        required("UserPoolId") => String.t() | atom(),
        required("UserSessionTracking") => list(any())
      }
      
  """
  @type set_user_pool_session_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_pool_session_configuration_response() :: %{
        "TokenSession" => user_pool_token_session_config_type(),
        "UserPoolId" => String.t() | atom(),
        "UserSessionTracking" => list(any())
      }
      
  """
  @type set_user_pool_session_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_settings_request() :: %{
        required("AccessToken") => String.t() | atom(),
        required("MFAOptions") => list(mfa_option_type())
      }
      
  """
  @type set_user_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_user_settings_response() :: %{}
      
  """
  @type set_user_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      sign_in_policy_type() :: %{
        "AllowedFirstAuthFactors" => list(list(any())())
      }
      
  """
  @type sign_in_policy_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sign_up_request() :: %{
        optional("AnalyticsMetadata") => analytics_metadata_type(),
        optional("ClientMetadata") => map(),
        optional("Password") => String.t() | atom(),
        optional("SecretHash") => String.t() | atom(),
        optional("UserAttributes") => list(attribute_type()),
        optional("UserContextData") => user_context_data_type(),
        optional("ValidationData") => list(attribute_type()),
        required("ClientId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type sign_up_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sign_up_response() :: %{
        "CodeDeliveryDetails" => code_delivery_details_type(),
        "Session" => String.t() | atom(),
        "UserConfirmed" => boolean(),
        "UserSub" => String.t() | atom()
      }
      
  """
  @type sign_up_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sms_configuration_type() :: %{
        "EumsSms" => eums_sms_configuration_type(),
        "ExternalId" => String.t() | atom(),
        "SnsCallerArn" => String.t() | atom(),
        "SnsRegion" => String.t() | atom()
      }
      
  """
  @type sms_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sms_mfa_config_type() :: %{
        "SmsAuthenticationMessage" => String.t() | atom(),
        "SmsConfiguration" => sms_configuration_type()
      }
      
  """
  @type sms_mfa_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sms_mfa_settings_type() :: %{
        "Enabled" => boolean(),
        "PreferredMfa" => boolean()
      }
      
  """
  @type sms_mfa_settings_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      software_token_mfa_config_type() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type software_token_mfa_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      software_token_mfa_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type software_token_mfa_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      software_token_mfa_settings_type() :: %{
        "Enabled" => boolean(),
        "PreferredMfa" => boolean()
      }
      
  """
  @type software_token_mfa_settings_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_point_in_time_recovery_request() :: %{
        required("RestoreId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type start_point_in_time_recovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_point_in_time_recovery_response() :: %{
        "Restoration" => restoration_type()
      }
      
  """
  @type start_point_in_time_recovery_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_user_import_job_request() :: %{
        required("JobId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type start_user_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type start_user_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_web_authn_registration_request() :: %{
        required("AccessToken") => String.t() | atom()
      }
      
  """
  @type start_web_authn_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_web_authn_registration_response() :: %{
        "CredentialCreationOptions" => any()
      }
      
  """
  @type start_web_authn_registration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_user_import_job_request() :: %{
        required("JobId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type stop_user_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_user_import_job_response() :: %{
        "UserImportJob" => user_import_job_type()
      }
      
  """
  @type stop_user_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      string_attribute_constraints_type() :: %{
        "MaxLength" => String.t() | atom(),
        "MinLength" => String.t() | atom()
      }
      
  """
  @type string_attribute_constraints_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      terms_description_type() :: %{
        "CreationDate" => non_neg_integer(),
        "Enforcement" => list(any()),
        "LastModifiedDate" => non_neg_integer(),
        "TermsId" => String.t() | atom(),
        "TermsName" => String.t() | atom()
      }
      
  """
  @type terms_description_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terms_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type terms_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terms_type() :: %{
        "ClientId" => String.t() | atom(),
        "CreationDate" => non_neg_integer(),
        "Enforcement" => list(any()),
        "LastModifiedDate" => non_neg_integer(),
        "Links" => map(),
        "TermsId" => String.t() | atom(),
        "TermsName" => String.t() | atom(),
        "TermsSource" => list(any()),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type terms_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tier_change_not_allowed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tier_change_not_allowed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      token_validity_units_type() :: %{
        "AccessToken" => list(any()),
        "IdToken" => list(any()),
        "RefreshToken" => list(any())
      }
      
  """
  @type token_validity_units_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_failed_attempts_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_failed_attempts_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ui_customization_type() :: %{
        "CSS" => String.t() | atom(),
        "CSSVersion" => String.t() | atom(),
        "ClientId" => String.t() | atom(),
        "CreationDate" => non_neg_integer(),
        "ImageUrl" => String.t() | atom(),
        "LastModifiedDate" => non_neg_integer(),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type ui_customization_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unexpected_lambda_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unexpected_lambda_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_identity_provider_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_identity_provider_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_token_type_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_token_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_user_state_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_user_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_auth_event_feedback_request() :: %{
        required("EventId") => String.t() | atom(),
        required("FeedbackToken") => String.t() | atom(),
        required("FeedbackValue") => list(any()),
        required("UserPoolId") => String.t() | atom(),
        required("Username") => String.t() | atom()
      }
      
  """
  @type update_auth_event_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_auth_event_feedback_response() :: %{}
      
  """
  @type update_auth_event_feedback_response() :: %{}

  @typedoc """

  ## Example:
      
      update_c_i_m_d_policy_request() :: %{
        optional("CacheDuration") => integer(),
        optional("PolicyName") => String.t() | atom(),
        required("CIMDPolicyId") => String.t() | atom(),
        required("ClientId") => String.t() | atom(),
        required("URLPatterns") => list(String.t() | atom()),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_c_i_m_d_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_c_i_m_d_policy_response() :: %{
        "CIMDPolicy" => c_i_m_d_policy_type()
      }
      
  """
  @type update_c_i_m_d_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_client_metadata_url_state_request() :: %{
        required("Action") => list(any()),
        required("CIMDPolicyId") => String.t() | atom(),
        required("URL") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_client_metadata_url_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_client_metadata_url_state_response() :: %{}
      
  """
  @type update_client_metadata_url_state_response() :: %{}

  @typedoc """

  ## Example:
      
      update_device_status_request() :: %{
        optional("DeviceRememberedStatus") => list(any()),
        required("AccessToken") => String.t() | atom(),
        required("DeviceKey") => String.t() | atom()
      }
      
  """
  @type update_device_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_device_status_response() :: %{}
      
  """
  @type update_device_status_response() :: %{}

  @typedoc """

  ## Example:
      
      update_group_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Precedence") => integer(),
        optional("RoleArn") => String.t() | atom(),
        required("GroupName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_group_response() :: %{
        "Group" => group_type()
      }
      
  """
  @type update_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_request() :: %{
        optional("AcrMapping") => map(),
        optional("AttributeMapping") => map(),
        optional("IdpIdentifiers") => list(String.t() | atom()),
        optional("ProviderDetails") => map(),
        required("ProviderName") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_identity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_identity_provider_response() :: %{
        "IdentityProvider" => identity_provider_type()
      }
      
  """
  @type update_identity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_managed_login_branding_request() :: %{
        optional("Assets") => list(asset_type()),
        optional("ManagedLoginBrandingId") => String.t() | atom(),
        optional("Settings") => any(),
        optional("UseCognitoProvidedValues") => boolean(),
        optional("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_managed_login_branding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_managed_login_branding_response() :: %{
        "ManagedLoginBranding" => managed_login_branding_type()
      }
      
  """
  @type update_managed_login_branding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_provisioned_limit_request() :: %{
        required("LimitDefinition") => limit_definition_type(),
        required("RequestedLimitValue") => integer()
      }
      
  """
  @type update_provisioned_limit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_provisioned_limit_response() :: %{
        "Limit" => limit_type()
      }
      
  """
  @type update_provisioned_limit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resource_server_request() :: %{
        optional("Scopes") => list(resource_server_scope_type()),
        required("Identifier") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_resource_server_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_resource_server_response() :: %{
        "ResourceServer" => resource_server_type()
      }
      
  """
  @type update_resource_server_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_terms_request() :: %{
        optional("Enforcement") => list(any()),
        optional("Links") => map(),
        optional("TermsName") => String.t() | atom(),
        optional("TermsSource") => list(any()),
        required("TermsId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_terms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_terms_response() :: %{
        "Terms" => terms_type()
      }
      
  """
  @type update_terms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_attributes_request() :: %{
        optional("ClientMetadata") => map(),
        required("AccessToken") => String.t() | atom(),
        required("UserAttributes") => list(attribute_type())
      }
      
  """
  @type update_user_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_attributes_response() :: %{
        "CodeDeliveryDetailsList" => list(code_delivery_details_type())
      }
      
  """
  @type update_user_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_client_request() :: %{
        optional("AccessTokenValidity") => integer(),
        optional("AllowedOAuthFlows") => list(list(any())()),
        optional("AllowedOAuthFlowsUserPoolClient") => boolean(),
        optional("AllowedOAuthScopes") => list(String.t() | atom()),
        optional("AnalyticsConfiguration") => analytics_configuration_type(),
        optional("AuthSessionValidity") => integer(),
        optional("CallbackURLs") => list(String.t() | atom()),
        optional("ClientName") => String.t() | atom(),
        optional("DefaultRedirectURI") => String.t() | atom(),
        optional("EnablePropagateAdditionalUserContextData") => boolean(),
        optional("EnableTokenRevocation") => boolean(),
        optional("ExplicitAuthFlows") => list(list(any())()),
        optional("IdTokenValidity") => integer(),
        optional("LogoutURLs") => list(String.t() | atom()),
        optional("PreventUserExistenceErrors") => list(any()),
        optional("PublishSecretsInAWSSecretsManager") => boolean(),
        optional("ReadAttributes") => list(String.t() | atom()),
        optional("RefreshTokenRotation") => refresh_token_rotation_type(),
        optional("RefreshTokenValidity") => integer(),
        optional("SupportedIdentityProviders") => list(String.t() | atom()),
        optional("TokenValidityUnits") => token_validity_units_type(),
        optional("WriteAttributes") => list(String.t() | atom()),
        required("ClientId") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_user_pool_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_client_response() :: %{
        "UserPoolClient" => user_pool_client_type()
      }
      
  """
  @type update_user_pool_client_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_domain_request() :: %{
        optional("CustomDomainConfig") => custom_domain_config_type(),
        optional("ManagedLoginVersion") => integer(),
        optional("Routing") => routing_type(),
        required("Domain") => String.t() | atom(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_user_pool_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_domain_response() :: %{
        "CloudFrontDomain" => String.t() | atom(),
        "ManagedLoginVersion" => integer(),
        "Routing" => routing_type()
      }
      
  """
  @type update_user_pool_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_replica_request() :: %{
        required("RegionName") => String.t() | atom(),
        required("Status") => list(any()),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_user_pool_replica_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_replica_response() :: %{
        "UserPoolReplica" => user_pool_replica_type()
      }
      
  """
  @type update_user_pool_replica_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_request() :: %{
        optional("AccountRecoverySetting") => account_recovery_setting_type(),
        optional("AcrConfiguration") => map(),
        optional("AdminCreateUserConfig") => admin_create_user_config_type(),
        optional("AutoVerifiedAttributes") => list(list(any())()),
        optional("DcrConfiguration") => dcr_configuration_type(),
        optional("DeletionProtection") => list(any()),
        optional("DeviceConfiguration") => device_configuration_type(),
        optional("EmailConfiguration") => email_configuration_type(),
        optional("EmailVerificationMessage") => String.t() | atom(),
        optional("EmailVerificationSubject") => String.t() | atom(),
        optional("IssuerConfiguration") => issuer_configuration_type(),
        optional("KeyConfiguration") => key_configuration_type(),
        optional("LambdaConfig") => lambda_config_type(),
        optional("MfaConfiguration") => list(any()),
        optional("Policies") => user_pool_policy_type(),
        optional("PoolName") => String.t() | atom(),
        optional("SmsAuthenticationMessage") => String.t() | atom(),
        optional("SmsConfiguration") => sms_configuration_type(),
        optional("SmsVerificationMessage") => String.t() | atom(),
        optional("UserAttributeUpdateSettings") => user_attribute_update_settings_type(),
        optional("UserPoolAddOns") => user_pool_add_ons_type(),
        optional("UserPoolTags") => map(),
        optional("UserPoolTier") => list(any()),
        optional("VerificationMessageTemplate") => verification_message_template_type(),
        required("UserPoolId") => String.t() | atom()
      }
      
  """
  @type update_user_pool_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_user_pool_response() :: %{}
      
  """
  @type update_user_pool_response() :: %{}

  @typedoc """

  ## Example:
      
      user_attribute_update_settings_type() :: %{
        "AttributesRequireVerificationBeforeUpdate" => list(list(any())())
      }
      
  """
  @type user_attribute_update_settings_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_context_data_type() :: %{
        "EncodedData" => String.t() | atom(),
        "IpAddress" => String.t() | atom()
      }
      
  """
  @type user_context_data_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_import_in_progress_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_import_in_progress_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_import_job_type() :: %{
        "CloudWatchLogsRoleArn" => String.t() | atom(),
        "CompletionDate" => non_neg_integer(),
        "CompletionMessage" => String.t() | atom(),
        "CreationDate" => non_neg_integer(),
        "FailedUsers" => float(),
        "ImportedUsers" => float(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "PasswordHashingAlgorithm" => list(any()),
        "PreSignedUrl" => String.t() | atom(),
        "SkippedUsers" => float(),
        "StartDate" => non_neg_integer(),
        "Status" => list(any()),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type user_import_job_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_lambda_validation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_lambda_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_not_confirmed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_not_confirmed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_add_on_not_enabled_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_pool_add_on_not_enabled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_add_ons_type() :: %{
        "AdvancedSecurityAdditionalFlows" => advanced_security_additional_flows_type(),
        "AdvancedSecurityMode" => list(any())
      }
      
  """
  @type user_pool_add_ons_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_client_description() :: %{
        "ClientId" => String.t() | atom(),
        "ClientName" => String.t() | atom(),
        "UserPoolId" => String.t() | atom()
      }
      
  """
  @type user_pool_client_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_client_type() :: %{
        "AccessTokenValidity" => integer(),
        "AllowedOAuthFlows" => list(list(any())()),
        "AllowedOAuthFlowsUserPoolClient" => boolean(),
        "AllowedOAuthScopes" => list(String.t() | atom()),
        "AnalyticsConfiguration" => analytics_configuration_type(),
        "AuthSessionValidity" => integer(),
        "CallbackURLs" => list(String.t() | atom()),
        "ClientId" => String.t() | atom(),
        "ClientName" => String.t() | atom(),
        "ClientSecret" => String.t() | atom(),
        "ClientSecretArn" => String.t() | atom(),
        "ClientType" => list(any()),
        "CreationDate" => non_neg_integer(),
        "DefaultRedirectURI" => String.t() | atom(),
        "EnablePropagateAdditionalUserContextData" => boolean(),
        "EnableTokenRevocation" => boolean(),
        "ExplicitAuthFlows" => list(list(any())()),
        "IdTokenValidity" => integer(),
        "LastModifiedDate" => non_neg_integer(),
        "LogoutURLs" => list(String.t() | atom()),
        "PreventUserExistenceErrors" => list(any()),
        "ReadAttributes" => list(String.t() | atom()),
        "RefreshTokenRotation" => refresh_token_rotation_type(),
        "RefreshTokenValidity" => integer(),
        "SupportedIdentityProviders" => list(String.t() | atom()),
        "TokenValidityUnits" => token_validity_units_type(),
        "UserPoolId" => String.t() | atom(),
        "WriteAttributes" => list(String.t() | atom())
      }
      
  """
  @type user_pool_client_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_description_type() :: %{
        "CreationDate" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LambdaConfig" => lambda_config_type(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "ReplicaRegions" => list(String.t() | atom()),
        "Status" => list(any())
      }
      
  """
  @type user_pool_description_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_policy_type() :: %{
        "PasswordPolicy" => password_policy_type(),
        "SignInPolicy" => sign_in_policy_type()
      }
      
  """
  @type user_pool_policy_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_replica_type() :: %{
        "RegionName" => String.t() | atom(),
        "Role" => list(any()),
        "Status" => list(any()),
        "UserPoolArn" => String.t() | atom()
      }
      
  """
  @type user_pool_replica_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_tagging_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type user_pool_tagging_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_token_session_config_type() :: %{
        "MaxPerUser" => integer()
      }
      
  """
  @type user_pool_token_session_config_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_pool_type() :: %{
        "AccountRecoverySetting" => account_recovery_setting_type(),
        "AcrConfiguration" => map(),
        "AdminCreateUserConfig" => admin_create_user_config_type(),
        "AliasAttributes" => list(list(any())()),
        "Arn" => String.t() | atom(),
        "AutoVerifiedAttributes" => list(list(any())()),
        "CreationDate" => non_neg_integer(),
        "CustomDomain" => String.t() | atom(),
        "DcrConfiguration" => dcr_configuration_type(),
        "DeletionProtection" => list(any()),
        "DeviceConfiguration" => device_configuration_type(),
        "Domain" => String.t() | atom(),
        "EmailConfiguration" => email_configuration_type(),
        "EmailConfigurationFailure" => String.t() | atom(),
        "EmailVerificationMessage" => String.t() | atom(),
        "EmailVerificationSubject" => String.t() | atom(),
        "EstimatedNumberOfUsers" => integer(),
        "Id" => String.t() | atom(),
        "IssuerConfiguration" => issuer_configuration_type(),
        "KeyConfiguration" => key_configuration_type(),
        "LambdaConfig" => lambda_config_type(),
        "LastModifiedDate" => non_neg_integer(),
        "MfaConfiguration" => list(any()),
        "Name" => String.t() | atom(),
        "Policies" => user_pool_policy_type(),
        "SchemaAttributes" => list(schema_attribute_type()),
        "SmsAuthenticationMessage" => String.t() | atom(),
        "SmsConfiguration" => sms_configuration_type(),
        "SmsConfigurationFailure" => String.t() | atom(),
        "SmsVerificationMessage" => String.t() | atom(),
        "Status" => list(any()),
        "UserAttributeUpdateSettings" => user_attribute_update_settings_type(),
        "UserPoolAddOns" => user_pool_add_ons_type(),
        "UserPoolTags" => map(),
        "UserPoolTier" => list(any()),
        "UsernameAttributes" => list(list(any())()),
        "UsernameConfiguration" => username_configuration_type(),
        "VerificationMessageTemplate" => verification_message_template_type()
      }
      
  """
  @type user_pool_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_type() :: %{
        "Attributes" => list(attribute_type()),
        "Enabled" => boolean(),
        "MFAOptions" => list(mfa_option_type()),
        "UserCreateDate" => non_neg_integer(),
        "UserLastModifiedDate" => non_neg_integer(),
        "UserStatus" => list(any()),
        "Username" => String.t() | atom()
      }
      
  """
  @type user_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      username_configuration_type() :: %{
        "CaseSensitive" => boolean()
      }
      
  """
  @type username_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      username_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type username_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      verification_message_template_type() :: %{
        "DefaultEmailOption" => list(any()),
        "EmailMessage" => String.t() | atom(),
        "EmailMessageByLink" => String.t() | atom(),
        "EmailSubject" => String.t() | atom(),
        "EmailSubjectByLink" => String.t() | atom(),
        "SmsMessage" => String.t() | atom()
      }
      
  """
  @type verification_message_template_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      verify_software_token_request() :: %{
        optional("AccessToken") => String.t() | atom(),
        optional("FriendlyDeviceName") => String.t() | atom(),
        optional("Session") => String.t() | atom(),
        required("UserCode") => String.t() | atom()
      }
      
  """
  @type verify_software_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      verify_software_token_response() :: %{
        "Session" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type verify_software_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      verify_user_attribute_request() :: %{
        required("AccessToken") => String.t() | atom(),
        required("AttributeName") => String.t() | atom(),
        required("Code") => String.t() | atom()
      }
      
  """
  @type verify_user_attribute_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      verify_user_attribute_response() :: %{}
      
  """
  @type verify_user_attribute_response() :: %{}

  @typedoc """

  ## Example:
      
      web_authn_challenge_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type web_authn_challenge_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_client_mismatch_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type web_authn_client_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_configuration_missing_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type web_authn_configuration_missing_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_configuration_type() :: %{
        "FactorConfiguration" => list(any()),
        "RelyingPartyId" => String.t() | atom(),
        "UserVerification" => list(any())
      }
      
  """
  @type web_authn_configuration_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_credential_description() :: %{
        "AuthenticatorAttachment" => String.t() | atom(),
        "AuthenticatorTransports" => list(String.t() | atom()),
        "CreatedAt" => non_neg_integer(),
        "CredentialId" => String.t() | atom(),
        "FriendlyCredentialName" => String.t() | atom(),
        "RelyingPartyId" => String.t() | atom()
      }
      
  """
  @type web_authn_credential_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_credential_not_supported_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type web_authn_credential_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_mfa_settings_type() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type web_authn_mfa_settings_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_not_enabled_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type web_authn_not_enabled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_origin_not_allowed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type web_authn_origin_not_allowed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_authn_relying_party_mismatch_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type web_authn_relying_party_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @type add_custom_attributes_errors() ::
          user_import_in_progress_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type add_user_pool_client_secret_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type admin_add_user_to_group_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_confirm_sign_up_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | too_many_failed_attempts_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | internal_error_exception()

  @type admin_create_user_errors() ::
          username_exists_exception()
          | user_not_found_exception()
          | user_lambda_validation_exception()
          | unsupported_user_state_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | precondition_not_met_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | internal_error_exception()
          | code_delivery_failure_exception()

  @type admin_delete_software_token_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_delete_user_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_delete_user_attributes_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_disable_provider_for_user_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | alias_exists_exception()

  @type admin_disable_user_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_enable_user_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_forget_device_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_get_device_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_get_user_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_get_user_auth_factors_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_initiate_auth_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | user_lambda_validation_exception()
          | unsupported_operation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | mfa_method_not_found_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()

  @type admin_link_provider_for_user_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | alias_exists_exception()

  @type admin_list_devices_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_list_groups_for_user_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_list_user_auth_events_errors() ::
          user_pool_add_on_not_enabled_exception()
          | user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_list_user_sessions_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_remove_user_from_group_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_reset_user_password_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()

  @type admin_respond_to_auth_challenge_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | software_token_mfa_not_found_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | password_history_policy_violation_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | mfa_method_not_found_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | expired_code_exception()
          | code_mismatch_exception()
          | alias_exists_exception()

  @type admin_revoke_user_session_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_set_user_mfa_preference_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_set_user_password_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_history_policy_violation_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_set_user_settings_errors() ::
          user_not_found_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_update_auth_event_feedback_errors() ::
          user_pool_add_on_not_enabled_exception()
          | user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_update_device_status_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type admin_update_user_attributes_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | alias_exists_exception()

  @type admin_user_global_sign_out_errors() ::
          user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type associate_software_token_errors() ::
          software_token_mfa_not_found_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()
          | concurrent_modification_exception()

  @type cancel_point_in_time_recovery_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type change_password_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | password_history_policy_violation_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type complete_web_authn_registration_errors() ::
          web_authn_relying_party_mismatch_exception()
          | web_authn_origin_not_allowed_exception()
          | web_authn_not_enabled_exception()
          | web_authn_credential_not_supported_exception()
          | web_authn_client_mismatch_exception()
          | web_authn_challenge_not_found_exception()
          | too_many_requests_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type confirm_device_errors() ::
          username_exists_exception()
          | user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | internal_error_exception()
          | forbidden_exception()
          | device_key_exists_exception()

  @type confirm_forgot_password_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | too_many_failed_attempts_exception()
          | resource_not_found_exception()
          | password_history_policy_violation_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | internal_error_exception()
          | forbidden_exception()
          | expired_code_exception()
          | code_mismatch_exception()

  @type confirm_sign_up_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | too_many_failed_attempts_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | internal_error_exception()
          | forbidden_exception()
          | expired_code_exception()
          | code_mismatch_exception()
          | alias_exists_exception()

  @type create_c_i_m_d_policy_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type create_group_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | group_exists_exception()

  @type create_identity_provider_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | duplicate_provider_exception()

  @type create_managed_login_branding_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | managed_login_branding_exists_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type create_resource_server_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type create_terms_errors() ::
          too_many_requests_exception()
          | terms_exists_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type create_user_import_job_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | precondition_not_met_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type create_user_pool_errors() ::
          user_pool_tagging_exception()
          | too_many_requests_exception()
          | tier_change_not_allowed_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()

  @type create_user_pool_client_errors() ::
          too_many_requests_exception()
          | scope_does_not_exist_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_o_auth_flow_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()

  @type create_user_pool_domain_errors() ::
          resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type create_user_pool_replica_errors() ::
          user_pool_tagging_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()

  @type delete_c_i_m_d_policy_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type delete_group_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type delete_identity_provider_errors() ::
          unsupported_identity_provider_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type delete_managed_login_branding_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type delete_resource_server_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type delete_terms_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type delete_user_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type delete_user_attributes_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type delete_user_pool_errors() ::
          user_import_in_progress_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type delete_user_pool_client_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type delete_user_pool_client_secret_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type delete_user_pool_domain_errors() ::
          resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type delete_user_pool_replica_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type delete_web_authn_credential_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type describe_c_i_m_d_policy_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_identity_provider_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_managed_login_branding_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_managed_login_branding_by_client_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_point_in_time_recovery_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()

  @type describe_resource_server_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_risk_configuration_errors() ::
          user_pool_add_on_not_enabled_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_terms_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_terms_by_client_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_user_import_job_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_user_pool_errors() ::
          user_pool_tagging_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_user_pool_client_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type describe_user_pool_domain_errors() ::
          resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type forget_device_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type forgot_password_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | forbidden_exception()
          | code_delivery_failure_exception()

  @type get_client_token_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type get_csv_header_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_derived_token_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type get_device_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type get_group_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_identity_provider_by_identifier_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_log_delivery_configuration_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_provisioned_limit_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_signing_certificate_errors() ::
          resource_not_found_exception()
          | operation_not_enabled_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_tokens_from_refresh_token_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | refresh_token_reuse_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type get_ui_customization_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_user_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type get_user_attribute_verification_code_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | forbidden_exception()
          | code_delivery_failure_exception()

  @type get_user_auth_factors_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type get_user_pool_client_session_configuration_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_user_pool_mfa_config_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type get_user_pool_session_configuration_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type global_sign_out_errors() ::
          user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type initiate_auth_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | user_lambda_validation_exception()
          | unsupported_operation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | forbidden_exception()
          | feature_unavailable_in_tier_exception()

  @type initiate_point_in_time_recovery_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type list_c_i_m_d_policies_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_client_metadata_urls_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_devices_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type list_groups_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_identity_providers_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_point_in_time_recoveries_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()

  @type list_resource_servers_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_tags_for_resource_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_terms_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_user_import_jobs_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_user_pool_client_secrets_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type list_user_pool_clients_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_user_pool_replicas_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_user_pools_errors() ::
          too_many_requests_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_user_sessions_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type list_users_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_users_in_group_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type list_web_authn_credentials_errors() ::
          too_many_requests_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type resend_confirmation_code_errors() ::
          user_not_found_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | forbidden_exception()
          | code_delivery_failure_exception()

  @type respond_to_auth_challenge_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | software_token_mfa_not_found_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | password_history_policy_violation_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | mfa_method_not_found_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | forbidden_exception()
          | expired_code_exception()
          | code_mismatch_exception()
          | alias_exists_exception()

  @type revoke_token_errors() ::
          unsupported_token_type_exception()
          | unsupported_operation_exception()
          | unauthorized_exception()
          | too_many_requests_exception()
          | operation_not_enabled_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type revoke_user_session_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type set_log_delivery_configuration_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()

  @type set_risk_configuration_errors() ::
          user_pool_add_on_not_enabled_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | code_delivery_failure_exception()

  @type set_ui_customization_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type set_user_mfa_preference_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type set_user_pool_client_session_configuration_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type set_user_pool_mfa_config_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type set_user_pool_session_configuration_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type set_user_settings_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type sign_up_errors() ::
          username_exists_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_password_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | forbidden_exception()
          | code_delivery_failure_exception()

  @type start_point_in_time_recovery_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type start_user_import_job_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | precondition_not_met_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type start_web_authn_registration_errors() ::
          web_authn_not_enabled_exception()
          | web_authn_configuration_missing_exception()
          | too_many_requests_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type stop_user_import_job_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | precondition_not_met_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type tag_resource_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type untag_resource_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type update_auth_event_feedback_errors() ::
          user_pool_add_on_not_enabled_exception()
          | user_not_found_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type update_c_i_m_d_policy_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type update_client_metadata_url_state_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | cached_c_i_m_d_url_does_not_exist_exception()

  @type update_device_status_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()

  @type update_group_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type update_identity_provider_errors() ::
          unsupported_identity_provider_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type update_managed_login_branding_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type update_provisioned_limit_errors() ::
          too_many_requests_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type update_resource_server_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type update_terms_errors() ::
          too_many_requests_exception()
          | terms_exists_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | concurrent_modification_exception()

  @type update_user_attributes_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | user_lambda_validation_exception()
          | unexpected_lambda_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_lambda_response_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | forbidden_exception()
          | expired_code_exception()
          | code_mismatch_exception()
          | code_delivery_failure_exception()
          | alias_exists_exception()

  @type update_user_pool_errors() ::
          user_pool_tagging_exception()
          | user_import_in_progress_exception()
          | too_many_requests_exception()
          | tier_change_not_allowed_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_sms_role_trust_relationship_exception()
          | invalid_sms_role_access_policy_exception()
          | invalid_parameter_exception()
          | invalid_email_role_access_policy_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type update_user_pool_client_errors() ::
          too_many_requests_exception()
          | scope_does_not_exist_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | invalid_o_auth_flow_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type update_user_pool_domain_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | feature_unavailable_in_tier_exception()
          | concurrent_modification_exception()

  @type update_user_pool_replica_errors() ::
          too_many_requests_exception()
          | resource_not_found_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_parameter_exception()
          | internal_error_exception()

  @type verify_software_token_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | software_token_mfa_not_found_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | invalid_user_pool_configuration_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()
          | enable_software_token_mfa_exception()
          | code_mismatch_exception()

  @type verify_user_attribute_errors() ::
          user_not_found_exception()
          | user_not_confirmed_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | password_reset_required_exception()
          | operation_not_enabled_exception()
          | not_authorized_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_error_exception()
          | forbidden_exception()
          | expired_code_exception()
          | code_mismatch_exception()
          | alias_exists_exception()

  def metadata do
    %{
      api_version: "2016-04-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-idp",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Cognito Identity Provider",
      signature_version: "v4",
      signing_name: "cognito-idp",
      target_prefix: "AWSCognitoIdentityProviderService"
    }
  end

  @doc """
  Adds additional user attributes to the user pool schema.

  Custom attributes can be
  mutable or immutable and have a `custom:` or `dev:` prefix. For
  more information, see [Custom attributes](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-custom-attributes).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec add_custom_attributes(map(), add_custom_attributes_request(), list()) ::
          {:ok, add_custom_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_custom_attributes_errors()}
  def add_custom_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddCustomAttributes", input, options)
  end

  @doc """
  Creates a new client secret for an existing confidential user pool app client.

  Supports up to 2 active secrets per app client for zero-downtime credential
  rotation workflows.
  """
  @spec add_user_pool_client_secret(map(), add_user_pool_client_secret_request(), list()) ::
          {:ok, add_user_pool_client_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_user_pool_client_secret_errors()}
  def add_user_pool_client_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddUserPoolClientSecret", input, options)
  end

  @doc """
  Adds a user to a group.

  A user who is in a group can present a preferred-role claim to
  an identity pool, and populates a `cognito:groups` claim to their access and
  identity tokens.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_add_user_to_group(map(), admin_add_user_to_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_add_user_to_group_errors()}
  def admin_add_user_to_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminAddUserToGroup", input, options)
  end

  @doc """
  Confirms user sign-up as an administrator.

  This request sets a user account active in a user pool that [requires confirmation of new user
  accounts](https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#signing-up-users-in-your-app-and-confirming-them-as-admin)
  before they can sign in. You can
  configure your user pool to not send confirmation codes to new users and instead
  confirm
  them with this API operation on the back end.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

  To configure your user pool to require administrative confirmation of users, set
  `AllowAdminCreateUserOnly` to `true` in a
  `CreateUserPool` or `UpdateUserPool` request.
  """
  @spec admin_confirm_sign_up(map(), admin_confirm_sign_up_request(), list()) ::
          {:ok, admin_confirm_sign_up_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_confirm_sign_up_errors()}
  def admin_confirm_sign_up(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminConfirmSignUp", input, options)
  end

  @doc """
  Creates a new user in the specified user pool.

  If `MessageAction` isn't set, the default is to send a welcome message via
  email or phone (SMS).

  This message is based on a template that you configured in your call to create
  or
  update a user pool. This template includes your custom sign-up instructions and
  placeholders for user name and temporary password.

  Alternatively, you can call `AdminCreateUser` with `SUPPRESS`
  for the `MessageAction` parameter, and Amazon Cognito won't send any email.

  In either case, if the user has a password, they will be in the
  `FORCE_CHANGE_PASSWORD` state until they sign in and set their password.
  Your invitation message template must have the `{####}` password placeholder
  if your users have passwords. If your template doesn't have this placeholder,
  Amazon Cognito
  doesn't deliver the invitation message. In this case, you must update your
  message
  template and resend the password with a new `AdminCreateUser` request with a
  `MessageAction` value of `RESEND`.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_create_user(map(), admin_create_user_request(), list()) ::
          {:ok, admin_create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_create_user_errors()}
  def admin_create_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminCreateUser", input, options)
  end

  @doc """
  Deletes a user's registered time-based one-time password (TOTP) multi-factor
  authentication (MFA) factor, also known as a software token.

  After this operation, the
  user can no longer sign in with TOTP MFA, and can register a new TOTP factor
  with
  `AssociateSoftwareToken`. Use this operation when a user loses access to
  their TOTP-generating device, for example, a lost or reset phone, and needs to
  register
  a new one.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_delete_software_token(map(), admin_delete_software_token_request(), list()) ::
          {:ok, admin_delete_software_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_delete_software_token_errors()}
  def admin_delete_software_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDeleteSoftwareToken", input, options)
  end

  @doc """
  Deletes a user profile in your user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_delete_user(map(), admin_delete_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_delete_user_errors()}
  def admin_delete_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDeleteUser", input, options)
  end

  @doc """
  Deletes attribute values from a user.

  This operation doesn't affect tokens for
  existing user sessions. The next ID token that the user receives will no longer
  have the
  deleted attributes.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_delete_user_attributes(map(), admin_delete_user_attributes_request(), list()) ::
          {:ok, admin_delete_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_delete_user_attributes_errors()}
  def admin_delete_user_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDeleteUserAttributes", input, options)
  end

  @doc """
  Prevents the user from signing in with the specified external (SAML or social)
  identity provider (IdP).

  If the user that you want to deactivate is a Amazon Cognito user pools
  native username + password user, they can't use their password to sign in. If
  the user
  to deactivate is a linked external IdP user, any link between that user and an
  existing
  user is removed. When the external user signs in again, and the user is no
  longer
  attached to the previously linked `DestinationUser`, the user must create a
  new user account.

  The value of `ProviderName` must match the name of a user pool IdP.

  To deactivate a local user, set `ProviderName` to `Cognito` and
  the `ProviderAttributeName` to `Cognito_Subject`. The
  `ProviderAttributeValue` must be user's local username.

  The `ProviderAttributeName` must always be `Cognito_Subject` for
  social IdPs. The `ProviderAttributeValue` must always be the exact subject
  that was used when the user was originally linked as a source user.

  For de-linking a SAML identity, there are two scenarios. If the linked identity
  has
  not yet been used to sign in, the `ProviderAttributeName` and
  `ProviderAttributeValue` must be the same values that were used for the
  `SourceUser` when the identities were originally linked using

  ```

  AdminLinkProviderForUser
  ```

  call. This is also true if the linking was done with
  `ProviderAttributeName` set to `Cognito_Subject`. If the user
  has already signed in, the `ProviderAttributeName` must be
  `Cognito_Subject` and `ProviderAttributeValue` must be the
  `NameID` from their SAML assertion.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_disable_provider_for_user(map(), admin_disable_provider_for_user_request(), list()) ::
          {:ok, admin_disable_provider_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_disable_provider_for_user_errors()}
  def admin_disable_provider_for_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDisableProviderForUser", input, options)
  end

  @doc """
  Deactivates a user profile and revokes all access tokens for the user.

  A deactivated
  user can't sign in, but still appears in the responses to `ListUsers`
  API requests.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_disable_user(map(), admin_disable_user_request(), list()) ::
          {:ok, admin_disable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_disable_user_errors()}
  def admin_disable_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminDisableUser", input, options)
  end

  @doc """
  Activates sign-in for a user profile that previously had sign-in access
  disabled.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_enable_user(map(), admin_enable_user_request(), list()) ::
          {:ok, admin_enable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_enable_user_errors()}
  def admin_enable_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminEnableUser", input, options)
  end

  @doc """
  Forgets, or deletes, a remembered device from a user's profile.

  After you forget
  the device, the user can no longer complete device authentication with that
  device and
  when applicable, must submit MFA codes again. For more information, see [Working with
  devices](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_forget_device(map(), admin_forget_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_forget_device_errors()}
  def admin_forget_device(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminForgetDevice", input, options)
  end

  @doc """
  Given the device key, returns details for a user's device.

  For more information,
  see [Working with devices](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_get_device(map(), admin_get_device_request(), list()) ::
          {:ok, admin_get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_get_device_errors()}
  def admin_get_device(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminGetDevice", input, options)
  end

  @doc """
  Given a username, returns details about a user profile in a user pool.

  You can specify
  alias attributes in the `Username` request parameter.

  This operation contributes to your monthly active user (MAU) count for the
  purpose of
  billing.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_get_user(map(), admin_get_user_request(), list()) ::
          {:ok, admin_get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_get_user_errors()}
  def admin_get_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminGetUser", input, options)
  end

  @doc """
  Lists the authentication options for a user in a user pool.

  Returns the
  following:

    1.
  The user's multi-factor authentication (MFA) preferences.

    2.
  The user's options for choice-based authentication with the
  `USER_AUTH` flow.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_get_user_auth_factors(map(), admin_get_user_auth_factors_request(), list()) ::
          {:ok, admin_get_user_auth_factors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_get_user_auth_factors_errors()}
  def admin_get_user_auth_factors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminGetUserAuthFactors", input, options)
  end

  @doc """
  Starts sign-in for applications with a server-side component, for example a
  traditional web application.

  This operation specifies the authentication flow that
  you'd like to begin. The authentication flow that you specify must be supported
  in
  your app client configuration. For more information about authentication flows,
  see
  [Authentication flows](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_initiate_auth(map(), admin_initiate_auth_request(), list()) ::
          {:ok, admin_initiate_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_initiate_auth_errors()}
  def admin_initiate_auth(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminInitiateAuth", input, options)
  end

  @doc """
  Links an existing user account in a user pool, or `DestinationUser`, to an
  identity from an external IdP, or `SourceUser`, based on a specified
  attribute name and value from the external IdP.

  This operation connects a local user profile with a user identity who hasn't yet
  signed in from their third-party IdP. When the user signs in with their IdP,
  they get
  access-control configuration from the local user profile. Linked local users can
  also
  sign in with SDK-based API operations like `InitiateAuth` after they sign in
  at least once through their IdP. For more information, see [Linking federated users](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).

  The maximum number of federated identities linked to a user is five.

  Because this API allows a user with an external federated identity to sign in as
  a
  local user, it is critical that it only be used with external IdPs and linked
  attributes that you trust.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_link_provider_for_user(map(), admin_link_provider_for_user_request(), list()) ::
          {:ok, admin_link_provider_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_link_provider_for_user_errors()}
  def admin_link_provider_for_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminLinkProviderForUser", input, options)
  end

  @doc """
  Lists a user's registered devices.

  Remembered devices are used in authentication
  services where you offer a "Remember me" option for users who you want to permit
  to sign
  in without MFA from a trusted device. Users can bypass MFA while your
  application
  performs device SRP authentication on the back end. For more information, see
  [Working with devices](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_list_devices(map(), admin_list_devices_request(), list()) ::
          {:ok, admin_list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_list_devices_errors()}
  def admin_list_devices(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminListDevices", input, options)
  end

  @doc """
  Lists the groups that a user belongs to.

  User pool groups are identifiers that you can
  reference from the contents of ID and access tokens, and set preferred IAM roles
  for
  identity-pool authentication. For more information, see [Adding groups to a user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_list_groups_for_user(map(), admin_list_groups_for_user_request(), list()) ::
          {:ok, admin_list_groups_for_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_list_groups_for_user_errors()}
  def admin_list_groups_for_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminListGroupsForUser", input, options)
  end

  @doc """
  Requests a history of user activity and any risks detected as part of Amazon
  Cognito threat
  protection.

  For more information, see [Viewing user event history](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-event-user-history).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_list_user_auth_events(map(), admin_list_user_auth_events_request(), list()) ::
          {:ok, admin_list_user_auth_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_list_user_auth_events_errors()}
  def admin_list_user_auth_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminListUserAuthEvents", input, options)
  end

  @doc """
  Lists the active sessions for a specified user as an administrator.

  The response
  includes both token sessions and SSO sessions. Only active sessions are
  returned;
  revoked and expired sessions aren't included. Amazon Cognito returns all of a
  user's sessions in
  a single page of up to 125 sessions. The results are eventually consistent, and
  new
  sessions are typically included within a few seconds.
  """
  @spec admin_list_user_sessions(map(), admin_list_user_sessions_request(), list()) ::
          {:ok, admin_list_user_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_list_user_sessions_errors()}
  def admin_list_user_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminListUserSessions", input, options)
  end

  @doc """
  Given a username and a group name, removes them from the group.

  User pool groups are
  identifiers that you can reference from the contents of ID and access tokens,
  and set
  preferred IAM roles for identity-pool authentication. For more information, see
  [Adding groups to a user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_remove_user_from_group(map(), admin_remove_user_from_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_remove_user_from_group_errors()}
  def admin_remove_user_from_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminRemoveUserFromGroup", input, options)
  end

  @doc """
  Begins the password reset process.

  Sets the requested user’s account into a
  `RESET_REQUIRED` status, and sends them a password-reset code. Your user
  pool also sends the user a notification with a reset code and the information
  that their
  password has been reset. At sign-in, your application or the managed login
  session
  receives a challenge to complete the reset by confirming the code and setting a
  new
  password.

  To use this API operation, your user pool must have self-service account
  recovery
  configured.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_reset_user_password(map(), admin_reset_user_password_request(), list()) ::
          {:ok, admin_reset_user_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_reset_user_password_errors()}
  def admin_reset_user_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminResetUserPassword", input, options)
  end

  @doc """
  Some API operations in a user pool generate a challenge, like a prompt for an
  MFA
  code, for device authentication that bypasses MFA, or for a custom
  authentication
  challenge.

  An `AdminRespondToAuthChallenge` API request provides the answer
  to that challenge, like a code or a secure remote password (SRP). The parameters
  of a
  response to an authentication challenge vary with the type of challenge.

  For more information about custom authentication challenges, see [Custom authentication challenge Lambda
  triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_respond_to_auth_challenge(map(), admin_respond_to_auth_challenge_request(), list()) ::
          {:ok, admin_respond_to_auth_challenge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_respond_to_auth_challenge_errors()}
  def admin_respond_to_auth_challenge(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminRespondToAuthChallenge", input, options)
  end

  @doc """
  Revokes a specific user session as an administrator.

  Amazon Cognito revokes all refresh and
  access tokens that are associated with the session and deletes the session
  record. You
  can revoke either a token session or an SSO session, and you can optionally
  cascade the
  revocation to linked sessions.
  """
  @spec admin_revoke_user_session(map(), admin_revoke_user_session_request(), list()) ::
          {:ok, admin_revoke_user_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_revoke_user_session_errors()}
  def admin_revoke_user_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminRevokeUserSession", input, options)
  end

  @doc """
  Sets the user's multi-factor authentication (MFA) preference, including which
  MFA
  options are activated, and if any are preferred.

  Only one factor can be set as
  preferred. The preferred MFA factor will be used to authenticate a user if
  multiple
  factors are activated. If multiple options are activated and no preference is
  set, a
  challenge to choose an MFA option will be returned during sign-in.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_set_user_mfa_preference(map(), admin_set_user_mfa_preference_request(), list()) ::
          {:ok, admin_set_user_mfa_preference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_set_user_mfa_preference_errors()}
  def admin_set_user_mfa_preference(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminSetUserMFAPreference", input, options)
  end

  @doc """
  Sets the specified user's password in a user pool.

  This operation administratively
  sets a temporary or permanent password for a user. With this operation, you can
  bypass
  self-service password changes and permit immediate sign-in with the password
  that you
  set. To do this, set `Permanent` to `true`.

  You can also set a new temporary password in this request, send it to a user,
  and
  require them to choose a new password on their next sign-in. To do this, set
  `Permanent` to `false`.

  If the password is temporary, the user's `Status` becomes
  `FORCE_CHANGE_PASSWORD`. When the user next tries to sign in, the
  `InitiateAuth` or `AdminInitiateAuth` response includes the
  `NEW_PASSWORD_REQUIRED` challenge. If the user doesn't sign in
  before the temporary password expires, they can no longer sign in and you must
  repeat
  this operation to set a temporary or permanent password for them.

  After the user sets a new password, or if you set a permanent password, their
  status
  becomes `Confirmed`.

  `AdminSetUserPassword` can set a password for the user profile that Amazon
  Cognito
  creates for third-party federated users. When you set a password, the federated
  user's
  status changes from `EXTERNAL_PROVIDER` to `CONFIRMED`. A user in
  this state can sign in as a federated user, and initiate authentication flows in
  the API
  like a linked native user. They can also modify their password and attributes in
  token-authenticated API requests like `ChangePassword` and
  `UpdateUserAttributes`. As a best security practice and to keep users in
  sync with your external IdP, don't set passwords on federated user profiles. To
  set up a
  federated user for native sign-in with a linked native user, refer to [Linking federated users to an existing user
  profile](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_set_user_password(map(), admin_set_user_password_request(), list()) ::
          {:ok, admin_set_user_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_set_user_password_errors()}
  def admin_set_user_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminSetUserPassword", input, options)
  end

  @doc """

  *This action is no longer supported.* You can use it to configure
  only SMS MFA.

  You can't use it to configure time-based one-time password (TOTP) software
  token MFA.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_set_user_settings(map(), admin_set_user_settings_request(), list()) ::
          {:ok, admin_set_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_set_user_settings_errors()}
  def admin_set_user_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminSetUserSettings", input, options)
  end

  @doc """
  Provides the feedback for an authentication event generated by threat protection
  features.

  Your response indicates that you think that the event either was from a valid
  user or was an unwanted authentication attempt. This feedback improves the risk
  evaluation decision for the user pool as part of Amazon Cognito threat
  protection.
  To activate this setting, your user pool must be on the [
  Plus
  tier](https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html).

  To train the threat-protection model to recognize trusted and untrusted sign-in
  characteristics, configure threat protection in audit-only mode and provide a
  mechanism
  for users or administrators to submit feedback. Your feedback can tell Amazon
  Cognito that a risk
  rating was assigned at a level you don't agree with.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_update_auth_event_feedback(
          map(),
          admin_update_auth_event_feedback_request(),
          list()
        ) ::
          {:ok, admin_update_auth_event_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_update_auth_event_feedback_errors()}
  def admin_update_auth_event_feedback(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the status of a user's device so that it is marked as remembered or not
  remembered for the purpose of device authentication.

  Device authentication is a
  "remember me" mechanism that silently completes sign-in from trusted devices
  with a
  device key instead of a user-provided MFA code. This operation changes the
  status of a
  device without deleting it, so you can enable it again later. For more
  information about
  device authentication, see [Working with devices](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_update_device_status(map(), admin_update_device_status_request(), list()) ::
          {:ok, admin_update_device_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_update_device_status_errors()}
  def admin_update_device_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified user's attributes.

  To delete an attribute from your user,
  submit the attribute in your API request with a blank value.

  For custom attributes, you must add a `custom:` prefix to the attribute
  name, for example `custom:department`.

  This operation can set a user's email address or phone number as verified and
  permit immediate sign-in in user pools that require verification of these
  attributes. To
  do this, set the `email_verified` or `phone_number_verified`
  attribute to `true`.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec admin_update_user_attributes(map(), admin_update_user_attributes_request(), list()) ::
          {:ok, admin_update_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_update_user_attributes_errors()}
  def admin_update_user_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUpdateUserAttributes", input, options)
  end

  @doc """
  Invalidates the identity, access, and refresh tokens that Amazon Cognito issued
  to a user.

  Call
  this operation with your administrative credentials when your user signs out of
  your
  app. This results in the following behavior.

    *
  Amazon Cognito no longer accepts *token-authorized* user operations
  that you authorize with a signed-out user's access tokens. For more information,
  see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  Amazon Cognito returns an `Access Token has been revoked` error when your
  app attempts to authorize a user pools API request with a revoked access token
  that contains the scope `aws.cognito.signin.user.admin`.

    *
  Amazon Cognito no longer accepts a signed-out user's ID token in a [GetId
  ](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html)
  request to an identity pool with
  `ServerSideTokenCheck` enabled for its user pool IdP
  configuration in
  [CognitoIdentityProvider](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html). 

    *
  Amazon Cognito no longer accepts a signed-out user's refresh tokens in refresh
  requests.

  Other requests might be valid until your user's token expires. This operation
  doesn't clear the [managed
  login](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html)
  session cookie. To clear the session for
  a user who signed in with managed login or the classic hosted UI, direct their
  browser
  session to the [logout endpoint](https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec admin_user_global_sign_out(map(), admin_user_global_sign_out_request(), list()) ::
          {:ok, admin_user_global_sign_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, admin_user_global_sign_out_errors()}
  def admin_user_global_sign_out(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AdminUserGlobalSignOut", input, options)
  end

  @doc """
  Begins setup of time-based one-time password (TOTP) multi-factor authentication
  (MFA)
  for a user, with a unique private key that Amazon Cognito generates and returns
  in the API
  response.

  You can authorize an `AssociateSoftwareToken` request with either
  the user's access token, or a session string from a challenge response that you
  received
  from Amazon Cognito.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.
  """
  @spec associate_software_token(map(), associate_software_token_request(), list()) ::
          {:ok, associate_software_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_software_token_errors()}
  def associate_software_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateSoftwareToken", input, options)
  end

  @doc """
  Cancels a point-in-time recovery of a user pool before Amazon Cognito applies
  any changes.

  You can cancel a recovery when its status is `PREVIEW_GENERATING` or
  `PREVIEW_GENERATED`. When you cancel a recovery, Amazon Cognito discards the
  recovery preview, resumes write operations in the user pool, and sets the status
  of
  the recovery to `PREVIEW_CANCELLED`. Your user pool data doesn't
  change.

  You can't cancel a recovery after you start it with a request.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec cancel_point_in_time_recovery(map(), cancel_point_in_time_recovery_request(), list()) ::
          {:ok, cancel_point_in_time_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_point_in_time_recovery_errors()}
  def cancel_point_in_time_recovery(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelPointInTimeRecovery", input, options)
  end

  @doc """
  Changes the password for the currently signed-in user.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec change_password(map(), change_password_request(), list()) ::
          {:ok, change_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, change_password_errors()}
  def change_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ChangePassword", input, options)
  end

  @doc """
  Completes registration of a passkey authenticator for the currently signed-in
  user.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.
  """
  @spec complete_web_authn_registration(map(), complete_web_authn_registration_request(), list()) ::
          {:ok, complete_web_authn_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_web_authn_registration_errors()}
  def complete_web_authn_registration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CompleteWebAuthnRegistration", input, options)
  end

  @doc """
  Confirms a device that a user wants to remember.

  A remembered device is a "Remember me
  on this device" option for user pools that perform authentication with the
  device key of
  a trusted device in the back end, instead of a user-provided MFA code. For more
  information about device authentication, see [Working with user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec confirm_device(map(), confirm_device_request(), list()) ::
          {:ok, confirm_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, confirm_device_errors()}
  def confirm_device(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmDevice", input, options)
  end

  @doc """
  This public API operation accepts a confirmation code that Amazon Cognito sent
  to a user and
  accepts a new password for that user.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec confirm_forgot_password(map(), confirm_forgot_password_request(), list()) ::
          {:ok, confirm_forgot_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, confirm_forgot_password_errors()}
  def confirm_forgot_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmForgotPassword", input, options)
  end

  @doc """
  Confirms the account of a new user.

  This public API operation submits a code that
  Amazon Cognito sent to your user when they signed up in your user pool. After
  your user enters
  their code, they confirm ownership of the email address or phone number that
  they
  provided, and their user account becomes active. Depending on your user pool
  configuration, your users will receive their confirmation code in an email or
  SMS
  message.

  Local users who signed up in your user pool are the only type of user who can
  confirm
  sign-up with a code. Users who federate through an external identity provider
  (IdP) have
  already been confirmed by their IdP.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec confirm_sign_up(map(), confirm_sign_up_request(), list()) ::
          {:ok, confirm_sign_up_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, confirm_sign_up_errors()}
  def confirm_sign_up(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmSignUp", input, options)
  end

  @doc """
  Creates a Client ID Metadata Document (CIMD) policy for an app client.

  A CIMD policy
  lets OAuth clients identify themselves to your user pool with an HTTPS URL as
  their
  client ID. Amazon Cognito retrieves the client metadata document from that URL
  and
  accepts the client only when the URL matches one of the URL patterns in the
  policy.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_c_i_m_d_policy(map(), create_c_i_m_d_policy_request(), list()) ::
          {:ok, create_c_i_m_d_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_c_i_m_d_policy_errors()}
  def create_c_i_m_d_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCIMDPolicy", input, options)
  end

  @doc """
  Creates a new group in the specified user pool.

  For more information about user pool
  groups, see [Adding groups to a user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateGroup", input, options)
  end

  @doc """
  Adds a configuration and trust relationship between a third-party identity
  provider
  (IdP) and a user pool.

  Amazon Cognito accepts sign-in with third-party identity providers through
  managed login and OIDC relying-party libraries. For more information, see
  [Third-party IdP sign-in](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_identity_provider(map(), create_identity_provider_request(), list()) ::
          {:ok, create_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_identity_provider_errors()}
  def create_identity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIdentityProvider", input, options)
  end

  @doc """
  Creates a new set of branding settings for a user pool style and associates it
  with an
  app client.

  This operation is the programmatic option for the creation of a new style in
  the branding editor.

  Provides values for UI customization in a `Settings` JSON object and image
  files in an `Assets` array. To send the JSON object `Document`
  type parameter in `Settings`, you might need to update to the most recent
  version of your Amazon Web Services SDK. To create a new style with default
  settings, set
  `UseCognitoProvidedValues` to `true` and don't provide
  values for any other options.

  This operation has a 2-megabyte request-size limit and include the CSS settings
  and
  image assets for your app client. Your branding settings might exceed 2MB in
  size. Amazon Cognito
  doesn't require that you pass all parameters in one request and preserves
  existing
  style settings that you don't specify. If your request is larger than 2MB,
  separate it
  into multiple requests, each with a size smaller than the limit.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_managed_login_branding(map(), create_managed_login_branding_request(), list()) ::
          {:ok, create_managed_login_branding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_managed_login_branding_errors()}
  def create_managed_login_branding(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateManagedLoginBranding", input, options)
  end

  @doc """
  Creates a new OAuth2.0 resource server and defines custom scopes within it.

  Resource
  servers are associated with custom scopes and machine-to-machine (M2M)
  authorization.
  For more information, see [Access control with resource servers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_resource_server(map(), create_resource_server_request(), list()) ::
          {:ok, create_resource_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resource_server_errors()}
  def create_resource_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateResourceServer", input, options)
  end

  @doc """
  Creates terms documents for the requested app client.

  When Terms and conditions and
  Privacy policy documents are configured, the app client displays links to them
  in the
  sign-up page of managed login for the app client.

  You can provide URLs for terms documents in the languages that are supported by
  [managed login localization](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization).
  Amazon Cognito directs users to the terms documents for
  their current language, with fallback to `default` if no document exists for
  the language.

  Each request accepts one type of terms document and a map of language-to-link
  for that
  document type. You must provide both types of terms documents in at least one
  language
  before Amazon Cognito displays your terms documents. Supply each type in
  separate
  requests.

  For more information, see [Terms documents](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_terms(map(), create_terms_request(), list()) ::
          {:ok, create_terms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_terms_errors()}
  def create_terms(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTerms", input, options)
  end

  @doc """
  Creates a user import job.

  You can import users into user pools from a comma-separated
  values (CSV) file without adding Amazon Cognito MAU costs to your Amazon Web
  Services bill.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_user_import_job(map(), create_user_import_job_request(), list()) ::
          {:ok, create_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_import_job_errors()}
  def create_user_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserImportJob", input, options)
  end

  @doc """
  Creates a new Amazon Cognito user pool.

  This operation sets basic and advanced configuration
  options.

  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_user_pool(map(), create_user_pool_request(), list()) ::
          {:ok, create_user_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_pool_errors()}
  def create_user_pool(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserPool", input, options)
  end

  @doc """
  Creates an app client in a user pool.

  This operation sets basic and advanced
  configuration options.

  Unlike app clients created in the console, Amazon Cognito doesn't automatically
  assign a
  branding style to app clients that you configure with this API operation.
  Managed login and classic hosted UI pages aren't
  available for your client until after you apply a branding style.

  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_user_pool_client(map(), create_user_pool_client_request(), list()) ::
          {:ok, create_user_pool_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_pool_client_errors()}
  def create_user_pool_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserPoolClient", input, options)
  end

  @doc """
  A user pool domain hosts managed login, an authorization server and web server
  for
  authentication in your application.

  This operation creates a new user pool prefix domain
  or custom domain and sets the managed login branding version. Set the branding
  version
  to `1` for hosted UI (classic) or `2` for managed login. When you
  choose a custom domain, you must provide an SSL certificate in the US East (N.
  Virginia)
  Amazon Web Services Region in your request.

  Your prefix domain might take up to one minute to take effect. Your custom
  domain is
  online within five minutes, but it can take up to one hour to distribute your
  SSL
  certificate.

  For more information about adding a custom domain to your user pool, see
  [Configuring a user pool domain](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_user_pool_domain(map(), create_user_pool_domain_request(), list()) ::
          {:ok, create_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_pool_domain_errors()}
  def create_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserPoolDomain", input, options)
  end

  @doc """
  Creates a replica of an existing user pool in a specified Amazon Web Services
  Region.

  The replica
  enables multi-region replication for high availability and disaster recovery. To
  create
  a replica, you must have permissions to create user pools in the target Region.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec create_user_pool_replica(map(), create_user_pool_replica_request(), list()) ::
          {:ok, create_user_pool_replica_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_pool_replica_errors()}
  def create_user_pool_replica(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUserPoolReplica", input, options)
  end

  @doc """
  Deletes a Client ID Metadata Document (CIMD) policy.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec delete_c_i_m_d_policy(map(), delete_c_i_m_d_policy_request(), list()) ::
          {:ok, delete_c_i_m_d_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_c_i_m_d_policy_errors()}
  def delete_c_i_m_d_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCIMDPolicy", input, options)
  end

  @doc """
  Deletes a group from the specified user pool.

  When you delete a group, that group no
  longer contributes to users' `cognito:preferred_group` or
  `cognito:groups` claims, and no longer influence access-control decision
  that are based on group membership. For more information about user pool groups,
  see
  [Adding groups to a user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec delete_group(map(), delete_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGroup", input, options)
  end

  @doc """
  Deletes a user pool identity provider (IdP).

  After you delete an IdP, users can no
  longer sign in to your user pool through that IdP. For more information about
  user pool
  IdPs, see [Third-party IdP sign-in](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec delete_identity_provider(map(), delete_identity_provider_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_identity_provider_errors()}
  def delete_identity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIdentityProvider", input, options)
  end

  @doc """
  Deletes a managed login branding style.

  When you delete a style, you delete the
  branding association for an app client. When an app client doesn't have a style
  assigned, your managed login pages for that app client are nonfunctional until
  you
  create a new style or switch the domain branding version.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec delete_managed_login_branding(map(), delete_managed_login_branding_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_managed_login_branding_errors()}
  def delete_managed_login_branding(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteManagedLoginBranding", input, options)
  end

  @doc """
  Deletes a resource server.

  After you delete a resource server, users can no longer
  generate access tokens with scopes that are associate with that resource server.

  Resource servers are associated with custom scopes and machine-to-machine (M2M)
  authorization. For more information, see [Access control with resource servers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec delete_resource_server(map(), delete_resource_server_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_server_errors()}
  def delete_resource_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourceServer", input, options)
  end

  @doc """
  Deletes the terms documents with the requested ID from your app client.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec delete_terms(map(), delete_terms_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_terms_errors()}
  def delete_terms(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTerms", input, options)
  end

  @doc """
  Deletes the profile of the currently signed-in user.

  A deleted user profile can no
  longer be used to sign in and can't be restored.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Deletes attributes from the currently signed-in user.

  For example, your application
  can submit a request to this operation when a user wants to remove their
  `birthdate` attribute value.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec delete_user_attributes(map(), delete_user_attributes_request(), list()) ::
          {:ok, delete_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_attributes_errors()}
  def delete_user_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserAttributes", input, options)
  end

  @doc """
  Deletes a user pool.

  After you delete a user pool, users can no longer sign in to any
  associated applications.

  When you delete a user pool, it's no longer visible or operational in your
  Amazon Web Services account. Amazon Cognito retains deleted user pools in an
  inactive state for 14
  days, then begins a cleanup process that fully removes them from Amazon Web
  Services systems. In case
  of accidental deletion, contact Amazon Web Services Support within 14 days for
  restoration
  assistance.

  Amazon Cognito begins full deletion of all resources from deleted user pools
  after 14 days. In
  the case of large user pools, the cleanup process might take significant
  additional time
  before all user data is permanently deleted.
  """
  @spec delete_user_pool(map(), delete_user_pool_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_pool_errors()}
  def delete_user_pool(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPool", input, options)
  end

  @doc """
  Deletes a user pool app client.

  After you delete an app client, users can no longer
  sign in to the associated application.
  """
  @spec delete_user_pool_client(map(), delete_user_pool_client_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_pool_client_errors()}
  def delete_user_pool_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPoolClient", input, options)
  end

  @doc """
  Deletes a specific client secret from a user pool app client.

  You cannot delete the last remaining secret for an app client.
  """
  @spec delete_user_pool_client_secret(map(), delete_user_pool_client_secret_request(), list()) ::
          {:ok, delete_user_pool_client_secret_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_pool_client_secret_errors()}
  def delete_user_pool_client_secret(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPoolClientSecret", input, options)
  end

  @doc """
  Given a user pool ID and domain identifier, deletes a user pool domain.

  After you
  delete a user pool domain, your managed login pages and authorization server are
  no
  longer available.
  """
  @spec delete_user_pool_domain(map(), delete_user_pool_domain_request(), list()) ::
          {:ok, delete_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_pool_domain_errors()}
  def delete_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPoolDomain", input, options)
  end

  @doc """
  Deletes a secondary replica user pool.

  You can only delete replicas that are in the
  INACTIVE status. This operation must be called from the primary Region.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec delete_user_pool_replica(map(), delete_user_pool_replica_request(), list()) ::
          {:ok, delete_user_pool_replica_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_pool_replica_errors()}
  def delete_user_pool_replica(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUserPoolReplica", input, options)
  end

  @doc """
  Deletes a registered passkey, or WebAuthn, authenticator for the currently
  signed-in
  user.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec delete_web_authn_credential(map(), delete_web_authn_credential_request(), list()) ::
          {:ok, delete_web_authn_credential_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_web_authn_credential_errors()}
  def delete_web_authn_credential(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWebAuthnCredential", input, options)
  end

  @doc """
  Returns the configuration of a Client ID Metadata Document (CIMD) policy.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec describe_c_i_m_d_policy(map(), describe_c_i_m_d_policy_request(), list()) ::
          {:ok, describe_c_i_m_d_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_c_i_m_d_policy_errors()}
  def describe_c_i_m_d_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCIMDPolicy", input, options)
  end

  @doc """
  Given a user pool ID and identity provider (IdP) name, returns details about the
  IdP.
  """
  @spec describe_identity_provider(map(), describe_identity_provider_request(), list()) ::
          {:ok, describe_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_identity_provider_errors()}
  def describe_identity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeIdentityProvider", input, options)
  end

  @doc """
  Given the ID of a managed login branding style, returns detailed information
  about the
  style.
  """
  @spec describe_managed_login_branding(map(), describe_managed_login_branding_request(), list()) ::
          {:ok, describe_managed_login_branding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_managed_login_branding_errors()}
  def describe_managed_login_branding(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeManagedLoginBranding", input, options)
  end

  @doc """
  Given the ID of a user pool app client, returns detailed information about the
  style
  assigned to the app client.
  """
  @spec describe_managed_login_branding_by_client(
          map(),
          describe_managed_login_branding_by_client_request(),
          list()
        ) ::
          {:ok, describe_managed_login_branding_by_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_managed_login_branding_by_client_errors()}
  def describe_managed_login_branding_by_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeManagedLoginBrandingByClient", input, options)
  end

  @doc """
  Returns details about a point-in-time recovery of a user pool, including its
  status
  and the point in time that it restores the user pool to.

  After Amazon Cognito generates the
  recovery preview, the response also includes the number of entities that the
  recovery
  creates, updates, and deletes. Review the preview before you apply the recovery
  with a
  request or discard it with a request.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec describe_point_in_time_recovery(map(), describe_point_in_time_recovery_request(), list()) ::
          {:ok, describe_point_in_time_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_point_in_time_recovery_errors()}
  def describe_point_in_time_recovery(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePointInTimeRecovery", input, options)
  end

  @doc """
  Describes a resource server.

  For more information about resource servers, see [Access control with resource servers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).
  """
  @spec describe_resource_server(map(), describe_resource_server_request(), list()) ::
          {:ok, describe_resource_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_server_errors()}
  def describe_resource_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeResourceServer", input, options)
  end

  @doc """
  Given an app client or user pool ID where threat protection is configured,
  describes
  the risk configuration.

  This operation returns details about adaptive authentication,
  compromised credentials, and IP-address allow- and denylists. For more
  information about
  threat protection, see [Threat protection](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-threat-protection.html).
  """
  @spec describe_risk_configuration(map(), describe_risk_configuration_request(), list()) ::
          {:ok, describe_risk_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_risk_configuration_errors()}
  def describe_risk_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRiskConfiguration", input, options)
  end

  @doc """
  Returns details for the requested terms documents ID.

  For more information, see [Terms documents](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec describe_terms(map(), describe_terms_request(), list()) ::
          {:ok, describe_terms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_terms_errors()}
  def describe_terms(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTerms", input, options)
  end

  @doc """
  Returns details for the terms documents that are associated with an app client,
  identified by the app client ID, user pool ID, and terms name.

  For
  more information, see [Terms documents](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents).

  To call `DescribeTermsByClient`, you must have the
  `cognito-idp:DescribeTermsByClient` Identity and Access Management (IAM)
  permission. An IAM
  policy that denies `cognito-idp:DescribeTerms` also denies requests to
  `DescribeTermsByClient`.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec describe_terms_by_client(map(), describe_terms_by_client_request(), list()) ::
          {:ok, describe_terms_by_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_terms_by_client_errors()}
  def describe_terms_by_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTermsByClient", input, options)
  end

  @doc """
  Describes a user import job.

  For more information about user CSV import, see [Importing users from a CSV file](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).
  """
  @spec describe_user_import_job(map(), describe_user_import_job_request(), list()) ::
          {:ok, describe_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_import_job_errors()}
  def describe_user_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserImportJob", input, options)
  end

  @doc """
  Given a user pool ID, returns configuration information.

  This operation is useful when
  you want to inspect an existing user pool and programmatically replicate the
  configuration to another user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec describe_user_pool(map(), describe_user_pool_request(), list()) ::
          {:ok, describe_user_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_pool_errors()}
  def describe_user_pool(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserPool", input, options)
  end

  @doc """
  Given an app client ID, returns configuration information.

  This operation is useful
  when you want to inspect an existing app client and programmatically replicate
  the
  configuration to another app client. For more information about app clients, see
  [App clients](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec describe_user_pool_client(map(), describe_user_pool_client_request(), list()) ::
          {:ok, describe_user_pool_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_pool_client_errors()}
  def describe_user_pool_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserPoolClient", input, options)
  end

  @doc """
  Given a user pool domain name, returns information about the domain
  configuration.

  This operation doesn't return results when you query a prefix domain in a
  secondary Region. Prefix domains are Region-specific and can only be described
  in
  the Region where they were created. To describe a prefix domain for a replica
  user
  pool, make the request to the primary Region's endpoint.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec describe_user_pool_domain(map(), describe_user_pool_domain_request(), list()) ::
          {:ok, describe_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_pool_domain_errors()}
  def describe_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUserPoolDomain", input, options)
  end

  @doc """
  Given a device key, deletes a remembered device as the currently signed-in user.

  For
  more information about device authentication, see [Working with user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec forget_device(map(), forget_device_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, forget_device_errors()}
  def forget_device(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ForgetDevice", input, options)
  end

  @doc """
  Sends a password-reset confirmation code to the email address or phone number of
  the
  requested username.

  The message delivery method is determined by the user's
  available attributes and the `AccountRecoverySetting` configuration of the
  user pool.

  For the `Username` parameter, you can use the username or an email, phone,
  or preferred username alias.

  If neither a verified phone number nor a verified email exists, Amazon Cognito
  responds with an
  `InvalidParameterException` error . If your app client has a client
  secret and you don't provide a `SECRET_HASH` parameter, this API returns
  `NotAuthorizedException`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec forgot_password(map(), forgot_password_request(), list()) ::
          {:ok, forgot_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, forgot_password_errors()}
  def forgot_password(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ForgotPassword", input, options)
  end

  @doc """
  Issues an access token for machine-to-machine (M2M) authorization.

  Your app client
  provides its client ID and secret, and receives an access token that authorizes
  requests
  to your resource servers.

  To use this operation, you must configure the app client with a client secret
  and
  enable the `ALLOW_CLIENT_TOKEN_AUTH` authentication flow. The
  `ALLOW_CLIENT_TOKEN_AUTH` flow is mutually exclusive with user authentication
  flows. It must be the only authentication flow that you configure for the app
  client. For
  more information, see [Scopes, M2M, and resource servers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec get_client_token(map(), get_client_token_request(), list()) ::
          {:ok, get_client_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_client_token_errors()}
  def get_client_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetClientToken", input, options)
  end

  @doc """
  Given a user pool ID, generates a comma-separated value (CSV) list populated
  with
  available user attributes in the user pool.

  This list is the header for the CSV file
  that determines the users in a user import job. Save the content of
  `CSVHeader` in the response as a `.csv` file and populate it
  with the usernames and attributes of users that you want to import. For more
  information
  about CSV user import, see [Importing users from a CSV file](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec get_csv_header(map(), get_csv_header_request(), list()) ::
          {:ok, get_csv_header_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_csv_header_errors()}
  def get_csv_header(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCSVHeader", input, options)
  end

  @doc """
  Exchanges an existing token for a new token that is scoped and audience-bound
  for a
  specific downstream service, following the OAuth 2.0 Token Exchange grant type.

  For
  more information about the OAuth 2.0 Token Exchange grant type, see
  [RFC 8693 - OAuth 2.0 Token Exchange](https://tools.ietf.org/html/rfc8693) on the IETF website. Present a
  `SubjectToken`, the
  credential that you already hold, to receive a new token appropriate for calling
  a
  specific resource server or audience.

  If you also present an `ActorToken` that identifies an intermediary
  service, the issued token carries an `act` claim that identifies the
  intermediary, and downstream services can distinguish a user acting directly
  from an
  intermediary acting on the user's behalf. If you don't present an
  `ActorToken`, the issued token appears as if the user acted
  directly.

  To use this operation, you must have IAM credentials, or you must present the
  requesting app client's `ClientId` and, if the client has a secret,
  `ClientSecret`, in the request.

  The requesting app client must have `ALLOW_TOKEN_EXCHANGE_IMPERSONATION`
  or `ALLOW_TOKEN_EXCHANGE_DELEGATION` in its `ExplicitAuthFlows`
  (depending on whether you include an `ActorToken`), or the request
  fails.
  """
  @spec get_derived_token(map(), get_derived_token_request(), list()) ::
          {:ok, get_derived_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_derived_token_errors()}
  def get_derived_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDerivedToken", input, options)
  end

  @doc """
  Given a device key, returns information about a remembered device for the
  current
  user.

  For more information about device authentication, see [Working with user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec get_device(map(), get_device_request(), list()) ::
          {:ok, get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_device_errors()}
  def get_device(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDevice", input, options)
  end

  @doc """
  Given a user pool ID and a group name, returns information about the user
  group.

  For more information about user pool groups, see [Adding groups to a user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec get_group(map(), get_group_request(), list()) ::
          {:ok, get_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetGroup", input, options)
  end

  @doc """
  Given the identifier of an identity provider (IdP), for example
  `examplecorp`, returns information about the user pool configuration for
  that IdP.

  For more information about IdPs, see [Third-party IdP sign-in](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).
  """
  @spec get_identity_provider_by_identifier(
          map(),
          get_identity_provider_by_identifier_request(),
          list()
        ) ::
          {:ok, get_identity_provider_by_identifier_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_identity_provider_by_identifier_errors()}
  def get_identity_provider_by_identifier(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdentityProviderByIdentifier", input, options)
  end

  @doc """
  Given a user pool ID, returns the logging configuration.

  User pools can export
  message-delivery error and threat-protection activity logs to external Amazon
  Web Services services. For more information, see [Exporting user pool logs](https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec get_log_delivery_configuration(map(), get_log_delivery_configuration_request(), list()) ::
          {:ok, get_log_delivery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_log_delivery_configuration_errors()}
  def get_log_delivery_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLogDeliveryConfiguration", input, options)
  end

  @doc """
  Returns the current provisioned limit for a specific API category.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec get_provisioned_limit(map(), get_provisioned_limit_request(), list()) ::
          {:ok, get_provisioned_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_provisioned_limit_errors()}
  def get_provisioned_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProvisionedLimit", input, options)
  end

  @doc """
  Given a user pool ID, returns the signing certificate for SAML 2.0 federation.

  Issued certificates are valid for 10 years from the date of issue. Amazon
  Cognito issues and
  assigns a new signing certificate annually. This renewal process returns a new
  value in
  the response to `GetSigningCertificate`, but doesn't invalidate the original
  certificate.

  For more information, see [Signing SAML requests](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-SAML-signing-encryption.html#cognito-user-pools-SAML-signing).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec get_signing_certificate(map(), get_signing_certificate_request(), list()) ::
          {:ok, get_signing_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_signing_certificate_errors()}
  def get_signing_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSigningCertificate", input, options)
  end

  @doc """
  Given a refresh token, issues new ID, access, and optionally refresh tokens for
  the
  user who owns the submitted token.

  This operation issues a new refresh token and
  invalidates the original refresh token after an optional grace period when
  refresh token
  rotation is enabled. If refresh token rotation is disabled, issues new ID and
  access
  tokens only.
  """
  @spec get_tokens_from_refresh_token(map(), get_tokens_from_refresh_token_request(), list()) ::
          {:ok, get_tokens_from_refresh_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tokens_from_refresh_token_errors()}
  def get_tokens_from_refresh_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTokensFromRefreshToken", input, options)
  end

  @doc """
  Given a user pool ID or app client, returns information about classic hosted UI
  branding that you applied, if any.

  Returns user-pool level branding information if no
  app client branding is applied, or if you don't specify an app client ID.
  Returns
  an empty object if you haven't applied hosted UI branding to either the client
  or
  the user pool. For more information, see [Hosted UI (classic) branding](https://docs.aws.amazon.com/cognito/latest/developerguide/hosted-ui-classic-branding.html).
  """
  @spec get_ui_customization(map(), get_ui_customization_request(), list()) ::
          {:ok, get_ui_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ui_customization_errors()}
  def get_ui_customization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUICustomization", input, options)
  end

  @doc """
  Gets user attributes and and MFA settings for the currently signed-in user.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec get_user(map(), get_user_request(), list()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_errors()}
  def get_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUser", input, options)
  end

  @doc """
  Given an attribute name, sends a user attribute verification code for the
  specified
  attribute name to the currently signed-in user.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec get_user_attribute_verification_code(
          map(),
          get_user_attribute_verification_code_request(),
          list()
        ) ::
          {:ok, get_user_attribute_verification_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_attribute_verification_code_errors()}
  def get_user_attribute_verification_code(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserAttributeVerificationCode", input, options)
  end

  @doc """
  Lists the authentication options for the currently signed-in user.

  Returns the
  following:

    1.
  The user's multi-factor authentication (MFA) preferences.

    2.
  The user's options for choice-based authentication with the
  `USER_AUTH` flow.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec get_user_auth_factors(map(), get_user_auth_factors_request(), list()) ::
          {:ok, get_user_auth_factors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_auth_factors_errors()}
  def get_user_auth_factors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserAuthFactors", input, options)
  end

  @doc """
  Retrieves the session configuration for a user pool app client.

  If you have never
  called `SetUserPoolClientSessionConfiguration` for the app client, this
  operation returns the default SSO session maximum validity of `60`
  minutes.
  """
  @spec get_user_pool_client_session_configuration(
          map(),
          get_user_pool_client_session_configuration_request(),
          list()
        ) ::
          {:ok, get_user_pool_client_session_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_pool_client_session_configuration_errors()}
  def get_user_pool_client_session_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserPoolClientSessionConfiguration", input, options)
  end

  @doc """
  Given a user pool ID, returns configuration for sign-in with WebAuthn
  authenticators
  and for multi-factor authentication (MFA).

  This operation describes the
  following:

    *
  The WebAuthn relying party (RP) ID and user-verification settings.

    *
  The required, optional, or disabled state of MFA for all user pool
  users.

    *
  The message templates for email and SMS MFA.

    *
  The enabled or disabled state of time-based one-time password (TOTP)
  MFA.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec get_user_pool_mfa_config(map(), get_user_pool_mfa_config_request(), list()) ::
          {:ok, get_user_pool_mfa_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_pool_mfa_config_errors()}
  def get_user_pool_mfa_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserPoolMfaConfig", input, options)
  end

  @doc """
  Retrieves the session tracking configuration for a user pool, including whether
  session
  tracking is enabled and the pool-wide maximum number of active token sessions
  for
  each user.

  If you have never called `SetUserPoolSessionConfiguration` for the
  user pool, this operation returns the default values: `UserSessionTracking` as
  `DISABLED` and a `MaxPerUser` value of `20`.
  """
  @spec get_user_pool_session_configuration(
          map(),
          get_user_pool_session_configuration_request(),
          list()
        ) ::
          {:ok, get_user_pool_session_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_user_pool_session_configuration_errors()}
  def get_user_pool_session_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUserPoolSessionConfiguration", input, options)
  end

  @doc """
  Invalidates the identity, access, and refresh tokens that Amazon Cognito issued
  to a user.

  Call
  this operation when your user signs out of your app. This results in the
  following
  behavior.

    *
  Amazon Cognito no longer accepts *token-authorized* user operations
  that you authorize with a signed-out user's access tokens. For more information,
  see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  Amazon Cognito returns an `Access Token has been revoked` error when your
  app attempts to authorize a user pools API request with a revoked access token
  that contains the scope `aws.cognito.signin.user.admin`.

    *
  Amazon Cognito no longer accepts a signed-out user's ID token in a [GetId
  ](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html)
  request to an identity pool with
  `ServerSideTokenCheck` enabled for its user pool IdP
  configuration in
  [CognitoIdentityProvider](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html). 

    *
  Amazon Cognito no longer accepts a signed-out user's refresh tokens in refresh
  requests.

  Other requests might be valid until your user's token expires. This operation
  doesn't clear the [managed
  login](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html)
  session cookie. To clear the session for
  a user who signed in with managed login or the classic hosted UI, direct their
  browser
  session to the [logout endpoint](https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html).

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec global_sign_out(map(), global_sign_out_request(), list()) ::
          {:ok, global_sign_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, global_sign_out_errors()}
  def global_sign_out(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GlobalSignOut", input, options)
  end

  @doc """
  Declares an authentication flow and initiates sign-in for a user in the Amazon
  Cognito user
  directory.

  Amazon Cognito might respond with an additional challenge or an
  `AuthenticationResult` that contains the outcome of a successful
  authentication. You can't sign in a user with a federated IdP with
  `InitiateAuth`. For more information, see
  [Authentication](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication.html). 
  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool
  endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec initiate_auth(map(), initiate_auth_request(), list()) ::
          {:ok, initiate_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_auth_errors()}
  def initiate_auth(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "InitiateAuth", input, options)
  end

  @doc """
  Initiates a point-in-time recovery of a user pool to a time in the past that you
  specify.

  This operation is the first step of a recovery and doesn't change your
  user pool data. Amazon Cognito pauses write operations in the user pool and
  generates a recovery preview, which might not be available immediately. The
  preview shows the number of entities that the recovery creates, updates,
  and deletes. To check the status of the recovery and review the preview, make a
  request. When the status is
  `PREVIEW_GENERATED`, apply the recovery with a request or discard it with a
  request. The time that it takes to
  generate the recovery preview doesn't depend on the size of your user
  pool.

  Point-in-time recovery is a disaster recovery feature. Use it to recover from
  accidental or unauthorized changes that affect your user data, for example the
  deletion or corruption of many users. Don't use point-in-time recovery to
  remove users that were created recently or to revert changes to individual
  users.
  To delete or update individual users, use operations like and .

  While a recovery is in progress, Amazon Cognito blocks operations that write to
  the user pool,
  for example user sign-up, user creation, and attribute updates. Sign-in and read
  operations continue to work, with the following exceptions:

    *
  Users who must set a new password, set up MFA, or respond to a TOTP MFA
  challenge can't complete sign-in. Sign-in with the
  `NEW_PASSWORD_REQUIRED`, `MFA_SETUP`, and
  `SOFTWARE_TOKEN_MFA` challenges fails until the recovery
  ends.

    *
  Federated users can sign in only if they have previously signed in to the user
  pool and their attributes from the external identity provider haven't
  changed.

    *
  You can't create or start user import jobs. Start your import jobs
  after the recovery ends.

  If you don't start or cancel the recovery within 24 hours after you initiate it,
  the recovery preview expires. Amazon Cognito then resumes write operations and
  doesn't
  change your user pool data. The 24-hour period includes the time that
  Amazon Cognito takes to generate the recovery preview.

  A point-in-time recovery restores user data, including user profiles and
  attributes,
  group memberships, passwords, MFA settings, and passkeys. It doesn't restore
  user
  pool configuration, for example app clients, the attribute schema, encryption
  settings, or multi-Region replication settings. Users who changed their password
  after
  the recovery point keep their current password.

  The following requirements and limits apply to point-in-time recovery:

    *
  Your user pool must be on the Essentials or Plus [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html).
  With the Essentials feature
  plan, you can recover your user pool to a point in time up to 1 day in the
  past. With the Plus feature plan, you can recover up to 14 days in the past.
  Your user pool must have been on the required feature plan at the recovery
  point. For example, to recover to a point in time 14 days ago, your user pool
  must have been on the Plus feature plan for the past 14 days.

    *
  The recovery point must be at least 15 minutes in the past and can't be
  earlier than the creation time of the user pool.

    *
  A user pool can have only one active recovery at a time.

    *
  An Amazon Web Services account can have up to five active recoveries at a time
  across all of its user pools. An organization in Amazon Web Services
  Organizations can have up
  to ten active recoveries at a time across all of its accounts.

    *
  You can complete one recovery of a user pool in a 24-hour period.

    *
  You can create up to three recovery previews of a user pool, ten recovery
  previews in an Amazon Web Services account, and 15 recovery previews in an
  organization in Amazon Web Services Organizations in a 24-hour period. You can
  create up to
  ten recovery previews of a user pool in a 30-day period.

    *
  You can't initiate a recovery while a user import job is in progress in
  your user pool. Wait for the import job to complete, or stop it with a request,
  and then initiate the
  recovery.

    *
  In a user pool with multi-Region replication, you can initiate a recovery only
  in the primary Amazon Web Services Region, and only after replication is
  complete.

    *
  If your user pool uses a customer managed key in KMS for encryption, the key
  must remain enabled and accessible to Amazon Cognito for the duration of the
  recovery.

    *
  Some user pools don't support point-in-time recovery, for example some
  older user pools and user pools that contain user data with characters or
  formats that point-in-time recovery doesn't support. If your user pool
  doesn't support it, Amazon Cognito returns an error when you initiate a
  recovery. To get help with this limitation, contact Amazon Web Services Support.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec initiate_point_in_time_recovery(map(), initiate_point_in_time_recovery_request(), list()) ::
          {:ok, initiate_point_in_time_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_point_in_time_recovery_errors()}
  def initiate_point_in_time_recovery(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "InitiatePointInTimeRecovery", input, options)
  end

  @doc """
  Lists the Client ID Metadata Document (CIMD) policies in a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_c_i_m_d_policies(map(), list_c_i_m_d_policies_request(), list()) ::
          {:ok, list_c_i_m_d_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_c_i_m_d_policies_errors()}
  def list_c_i_m_d_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCIMDPolicies", input, options)
  end

  @doc """
  Lists the client ID metadata document URLs that Amazon Cognito has received for
  a
  Client ID Metadata Document (CIMD) policy, with the cache state of each URL.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_client_metadata_urls(map(), list_client_metadata_urls_request(), list()) ::
          {:ok, list_client_metadata_urls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_client_metadata_urls_errors()}
  def list_client_metadata_urls(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListClientMetadataURLs", input, options)
  end

  @doc """
  Lists the devices that Amazon Cognito has registered to the currently signed-in
  user.

  For more
  information about device authentication, see [Working with user devices in your user
  pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec list_devices(map(), list_devices_request(), list()) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_devices_errors()}
  def list_devices(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDevices", input, options)
  end

  @doc """
  Given a user pool ID, returns user pool groups and their details.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_groups(map(), list_groups_request(), list()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGroups", input, options)
  end

  @doc """
  Given a user pool ID, returns information about configured identity providers
  (IdPs).

  For more information about IdPs, see [Third-party IdP sign-in](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_identity_providers(map(), list_identity_providers_request(), list()) ::
          {:ok, list_identity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_identity_providers_errors()}
  def list_identity_providers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIdentityProviders", input, options)
  end

  @doc """
  Lists the point-in-time recoveries of a user pool, including the active recovery
  and past recoveries.

  The response lists the most recent recoveries first and doesn't
  include recovery previews. To get the recovery preview of a recovery, make a
  request.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_point_in_time_recoveries(map(), list_point_in_time_recoveries_request(), list()) ::
          {:ok, list_point_in_time_recoveries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_point_in_time_recoveries_errors()}
  def list_point_in_time_recoveries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPointInTimeRecoveries", input, options)
  end

  @doc """
  Given a user pool ID, returns all resource servers and their details.

  For more
  information about resource servers, see [Access control with resource servers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_resource_servers(map(), list_resource_servers_request(), list()) ::
          {:ok, list_resource_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_servers_errors()}
  def list_resource_servers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourceServers", input, options)
  end

  @doc """
  Lists the tags that are assigned to an Amazon Cognito user pool.

  For more information, see
  [Tagging resources](https://docs.aws.amazon.com/cognito/latest/developerguide/tagging.html).
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
  Returns details about all terms documents for the requested user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_terms(map(), list_terms_request(), list()) ::
          {:ok, list_terms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_terms_errors()}
  def list_terms(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTerms", input, options)
  end

  @doc """
  Given a user pool ID, returns user import jobs and their details.

  Import jobs are
  retained in user pool configuration so that you can stage, stop, start, review,
  and
  delete them. For more information about user import, see [Importing users from a CSV
  file](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_user_import_jobs(map(), list_user_import_jobs_request(), list()) ::
          {:ok, list_user_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_import_jobs_errors()}
  def list_user_import_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserImportJobs", input, options)
  end

  @doc """
  Lists all client secrets associated with a user pool app client.

  Returns metadata about the secrets. The response does not include pagination
  tokens as there are only 2 secrets at any given time and we return both with
  every ListUserPoolClientSecrets call. For security reasons, the response never
  reveals the actual secret value in ClientSecretValue.
  """
  @spec list_user_pool_client_secrets(map(), list_user_pool_client_secrets_request(), list()) ::
          {:ok, list_user_pool_client_secrets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_pool_client_secrets_errors()}
  def list_user_pool_client_secrets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserPoolClientSecrets", input, options)
  end

  @doc """
  Given a user pool ID, lists app clients.

  App clients are sets of rules for the access
  that you want a user pool to grant to one application. For more information, see
  [App clients](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_user_pool_clients(map(), list_user_pool_clients_request(), list()) ::
          {:ok, list_user_pool_clients_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_pool_clients_errors()}
  def list_user_pool_clients(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserPoolClients", input, options)
  end

  @doc """
  Lists all replicas for a user pool, including both primary and secondary
  replicas.

  We
  recommend using pagination to ensure that the operation returns quickly and
  successfully.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_user_pool_replicas(map(), list_user_pool_replicas_request(), list()) ::
          {:ok, list_user_pool_replicas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_pool_replicas_errors()}
  def list_user_pool_replicas(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserPoolReplicas", input, options)
  end

  @doc """
  Lists user pools and their details in the current Amazon Web Services account.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_user_pools(map(), list_user_pools_request(), list()) ::
          {:ok, list_user_pools_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_pools_errors()}
  def list_user_pools(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserPools", input, options)
  end

  @doc """
  Lists the active sessions for the currently signed-in user.

  Amazon Cognito authorizes this
  operation with the user's access token and returns all of the user's active
  sessions
  across every app client in the user pool, including both token sessions and SSO
  sessions. The `IsCurrentSession` field identifies the session that the
  calling access token belongs to. The results are eventually consistent, and new
  sessions are typically included within a few seconds.
  """
  @spec list_user_sessions(map(), list_user_sessions_request(), list()) ::
          {:ok, list_user_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_sessions_errors()}
  def list_user_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUserSessions", input, options)
  end

  @doc """
  Given a user pool ID, returns a list of users and their basic details in a user
  pool.

  This operation is eventually consistent. You might experience a delay before
  results
  are up-to-date. To validate the existence or configuration of an individual
  user, use
  `AdminGetUser`.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_users(map(), list_users_request(), list()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  Given a user pool ID and a group name, returns a list of users in the group.

  For more
  information about user pool groups, see [Adding groups to a user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec list_users_in_group(map(), list_users_in_group_request(), list()) ::
          {:ok, list_users_in_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_in_group_errors()}
  def list_users_in_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUsersInGroup", input, options)
  end

  @doc """
  Generates a list of the currently signed-in user's registered passkey, or
  WebAuthn, credentials.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec list_web_authn_credentials(map(), list_web_authn_credentials_request(), list()) ::
          {:ok, list_web_authn_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_web_authn_credentials_errors()}
  def list_web_authn_credentials(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWebAuthnCredentials", input, options)
  end

  @doc """
  Resends the code that confirms a new account for a user who has signed up in
  your user
  pool.

  Amazon Cognito sends confirmation codes to the user attribute in the
  `AutoVerifiedAttributes` property of your user pool. When you prompt new
  users for the confirmation code, include a "Resend code" option that generates a
  call to
  this API operation.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec resend_confirmation_code(map(), resend_confirmation_code_request(), list()) ::
          {:ok, resend_confirmation_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resend_confirmation_code_errors()}
  def resend_confirmation_code(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResendConfirmationCode", input, options)
  end

  @doc """
  Some API operations in a user pool generate a challenge, like a prompt for an
  MFA
  code, for device authentication that bypasses MFA, or for a custom
  authentication
  challenge.

  A `RespondToAuthChallenge` API request provides the answer to that
  challenge, like a code or a secure remote password (SRP). The parameters of a
  response
  to an authentication challenge vary with the type of challenge.

  For more information about custom authentication challenges, see [Custom authentication challenge Lambda
  triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec respond_to_auth_challenge(map(), respond_to_auth_challenge_request(), list()) ::
          {:ok, respond_to_auth_challenge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, respond_to_auth_challenge_errors()}
  def respond_to_auth_challenge(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RespondToAuthChallenge", input, options)
  end

  @doc """
  Revokes all of the access tokens generated by, and at the same time as, the
  specified
  refresh token.

  After a token is revoked, you can't use the revoked token to access Amazon
  Cognito
  user APIs, or to authorize access to your resource server.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec revoke_token(map(), revoke_token_request(), list()) ::
          {:ok, revoke_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_token_errors()}
  def revoke_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeToken", input, options)
  end

  @doc """
  Revokes a specific session for the currently signed-in user.

  Amazon Cognito authorizes this
  operation with the user's access token, revokes all refresh and access tokens
  that are
  associated with the session, and deletes the session record. You can't revoke
  the
  session that the calling access token belongs to.
  """
  @spec revoke_user_session(map(), revoke_user_session_request(), list()) ::
          {:ok, revoke_user_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_user_session_errors()}
  def revoke_user_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RevokeUserSession", input, options)
  end

  @doc """
  Sets up or modifies the logging configuration of a user pool.

  User pools can export
  user notification logs and, when threat protection is active, user-activity
  logs. For
  more information, see [Exporting user pool
  logs](https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html).
  """
  @spec set_log_delivery_configuration(map(), set_log_delivery_configuration_request(), list()) ::
          {:ok, set_log_delivery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_log_delivery_configuration_errors()}
  def set_log_delivery_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetLogDeliveryConfiguration", input, options)
  end

  @doc """
  Configures threat protection for a user pool or app client.

  Sets configuration for the
  following.

    *
  Responses to risks with adaptive authentication

    *
  Responses to vulnerable passwords with compromised-credentials
  detection

    *
  Notifications to users who have had risky activity detected

    *
  IP-address denylist and allowlist

  To set the risk configuration for the user pool to defaults, send this request
  with
  only the `UserPoolId` parameter. To reset the threat protection settings of
  an app client to be inherited from the user pool, send `UserPoolId` and
  `ClientId` parameters only. To change threat protection to audit-only or
  off, update the value of `UserPoolAddOns` in an `UpdateUserPool`
  request. To activate this setting, your user pool must be on the [
  Plus
  tier](https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html).

  In secondary regions for user pools with multi-region replication, only the
  `SourceARN` and `From` attributes of
  `NotifyConfiguration` can be modified to configure region-specific SES
  integration. All other risk configuration settings must match the existing
  values to
  maintain consistency across replicas.
  """
  @spec set_risk_configuration(map(), set_risk_configuration_request(), list()) ::
          {:ok, set_risk_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_risk_configuration_errors()}
  def set_risk_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetRiskConfiguration", input, options)
  end

  @doc """
  Configures UI branding settings for domains with the hosted UI (classic)
  branding
  version.

  Your user pool must have a domain. Configure a domain with .

  Set the default configuration for all clients with a `ClientId` of
  `ALL`. When the `ClientId` value is an app client ID, the
  settings you pass in this request apply to that app client and override the
  default
  `ALL` configuration.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec set_ui_customization(map(), set_ui_customization_request(), list()) ::
          {:ok, set_ui_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_ui_customization_errors()}
  def set_ui_customization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUICustomization", input, options)
  end

  @doc """
  Set the user's multi-factor authentication (MFA) method preference, including
  which
  MFA factors are activated and if any are preferred.

  Only one factor can be set as
  preferred. The preferred MFA factor will be used to authenticate a user if
  multiple
  factors are activated. If multiple options are activated and no preference is
  set, a
  challenge to choose an MFA option will be returned during sign-in. If an MFA
  type is
  activated for a user, the user will be prompted for MFA during all sign-in
  attempts
  unless device tracking is turned on and the device has been trusted. If you want
  MFA to
  be applied selectively based on the assessed risk level of sign-in attempts,
  deactivate
  MFA for users and turn on Adaptive Authentication for the user pool.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec set_user_mfa_preference(map(), set_user_mfa_preference_request(), list()) ::
          {:ok, set_user_mfa_preference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_user_mfa_preference_errors()}
  def set_user_mfa_preference(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserMFAPreference", input, options)
  end

  @doc """
  Sets the session configuration for a user pool app client.

  The configurable
  client-level setting is the maximum validity period for silent reuse of an SSO
  session.
  This operation performs a full replacement of the client-level session
  configuration;
  every request parameter is required, and session tracking must be enabled for
  the user
  pool. The user pool must be in the Essentials or Plus tier. Otherwise, this
  operation
  returns a `FeatureUnavailableInTierException`.
  """
  @spec set_user_pool_client_session_configuration(
          map(),
          set_user_pool_client_session_configuration_request(),
          list()
        ) ::
          {:ok, set_user_pool_client_session_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_user_pool_client_session_configuration_errors()}
  def set_user_pool_client_session_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserPoolClientSessionConfiguration", input, options)
  end

  @doc """
  Sets user pool multi-factor authentication (MFA) and passkey configuration.

  For more
  information about user pool MFA, see [Adding MFA](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html).
  For more information about WebAuthn passkeys see [Authentication flows](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html#amazon-cognito-user-pools-authentication-flow-methods-passkey).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec set_user_pool_mfa_config(map(), set_user_pool_mfa_config_request(), list()) ::
          {:ok, set_user_pool_mfa_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_user_pool_mfa_config_errors()}
  def set_user_pool_mfa_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserPoolMfaConfig", input, options)
  end

  @doc """
  Enables or disables session tracking for a user pool, and sets the pool-wide
  maximum
  number of active token sessions that each user can have.

  This operation performs a
  full replacement of the pool-level session configuration; every request
  parameter is
  required. The user pool must be in the Essentials or Plus tier. Otherwise, this
  operation returns a `FeatureUnavailableInTierException`.
  """
  @spec set_user_pool_session_configuration(
          map(),
          set_user_pool_session_configuration_request(),
          list()
        ) ::
          {:ok, set_user_pool_session_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_user_pool_session_configuration_errors()}
  def set_user_pool_session_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserPoolSessionConfiguration", input, options)
  end

  @doc """

  *This action is no longer supported.* You can use it to configure
  only SMS MFA.

  You can't use it to configure time-based one-time password (TOTP) software
  token or email MFA.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec set_user_settings(map(), set_user_settings_request(), list()) ::
          {:ok, set_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_user_settings_errors()}
  def set_user_settings(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetUserSettings", input, options)
  end

  @doc """
  Registers a user with an app client and requests a user name, password, and user
  attributes in the user pool.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.

  You might receive a `LimitExceeded` exception in response to this request
  if you have exceeded a rate quota for email or SMS messages, and if your user
  pool
  automatically verifies email addresses or phone numbers. When you get this
  exception in
  the response, the user is successfully created and is in an `UNCONFIRMED`
  state.
  """
  @spec sign_up(map(), sign_up_request(), list()) ::
          {:ok, sign_up_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, sign_up_errors()}
  def sign_up(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SignUp", input, options)
  end

  @doc """
  Applies a point-in-time recovery to a user pool.

  Before you start a recovery, review
  the recovery preview in the response to a request. You can start a recovery when
  its status is `PREVIEW_GENERATED`.

  When you start a recovery, Amazon Cognito sets its status to `RESTORING` and
  restores user data in the user pool to its state at the recovery point. Write
  operations in the user pool remain paused until the recovery is complete.
  Sign-in and
  read operations continue to work. When the status of the recovery changes to
  `RESTORE_COMPLETED`, Amazon Cognito resumes write operations.

  You can't cancel a recovery after you start it.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec start_point_in_time_recovery(map(), start_point_in_time_recovery_request(), list()) ::
          {:ok, start_point_in_time_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_point_in_time_recovery_errors()}
  def start_point_in_time_recovery(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartPointInTimeRecovery", input, options)
  end

  @doc """
  Instructs your user pool to start importing users from a CSV file that contains
  their
  usernames and attributes.

  For more information about importing users from a CSV file,
  see [Importing users from a CSV file](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).
  """
  @spec start_user_import_job(map(), start_user_import_job_request(), list()) ::
          {:ok, start_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_user_import_job_errors()}
  def start_user_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartUserImportJob", input, options)
  end

  @doc """
  Requests credential creation options from your user pool for the currently
  signed-in
  user.

  Returns information about the user pool, the user profile, and authentication
  requirements. Users must provide this information in their request to enroll
  your
  application with their passkey provider.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.
  """
  @spec start_web_authn_registration(map(), start_web_authn_registration_request(), list()) ::
          {:ok, start_web_authn_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_web_authn_registration_errors()}
  def start_web_authn_registration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartWebAuthnRegistration", input, options)
  end

  @doc """
  Instructs your user pool to stop a running job that's importing users from a CSV
  file that contains their usernames and attributes.

  For more information about importing
  users from a CSV file, see [Importing users from a CSV file](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html).
  """
  @spec stop_user_import_job(map(), stop_user_import_job_request(), list()) ::
          {:ok, stop_user_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_user_import_job_errors()}
  def stop_user_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopUserImportJob", input, options)
  end

  @doc """
  Assigns a set of tags to an Amazon Cognito user pool.

  A tag is a label that you can use to
  categorize and manage user pools in different ways, such as by purpose, owner,
  environment, or other criteria.

  Each tag consists of a key and value, both of which you define. A key is a
  general
  category for more specific values. For example, if you have two versions of a
  user pool,
  one for testing and another for production, you might assign an `Environment`
  tag key to both user pools. The value of this key might be `Test` for one
  user pool, and `Production` for the other.

  Tags are useful for cost tracking and access control. You can activate your tags
  so
  that they appear on the Billing and Cost Management console, where you can track
  the
  costs associated with your user pools. In an Identity and Access Management
  policy, you can constrain
  permissions for user pools based on specific tags or tag values.

  You can use this action up to 5 times per second, per account. A user pool can
  have as
  many as 50 tags.
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
  Given tag IDs that you previously assigned to a user pool, removes them.
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
  Provides the feedback for an authentication event generated by threat protection
  features.

  The user's response indicates that you think that the event either was from a
  valid user or was an unwanted authentication attempt. This feedback improves the
  risk
  evaluation decision for the user pool as part of Amazon Cognito threat
  protection.
  To activate this setting, your user pool must be on the [
  Plus
  tier](https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html).

  This operation requires a `FeedbackToken` that Amazon Cognito generates and adds
  to
  notification emails when users have potentially suspicious authentication
  events. Users
  invoke this operation when they select the link that corresponds to
  `{one-click-link-valid}` or `{one-click-link-invalid}` in your
  notification template. Because `FeedbackToken` is a required parameter, you
  can't make requests to `UpdateAuthEventFeedback` without the contents of
  the notification email message.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec update_auth_event_feedback(map(), update_auth_event_feedback_request(), list()) ::
          {:ok, update_auth_event_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_auth_event_feedback_errors()}
  def update_auth_event_feedback(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the configuration of a Client ID Metadata Document (CIMD) policy.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_c_i_m_d_policy(map(), update_c_i_m_d_policy_request(), list()) ::
          {:ok, update_c_i_m_d_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_c_i_m_d_policy_errors()}
  def update_c_i_m_d_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCIMDPolicy", input, options)
  end

  @doc """
  Changes the cache state of a client metadata document URL for a client ID
  metadata
  document (CIMD) policy.

  Refresh a URL to make Amazon Cognito retrieve the client
  metadata document again, or invalidate it to remove the cached document.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_client_metadata_url_state(
          map(),
          update_client_metadata_url_state_request(),
          list()
        ) ::
          {:ok, update_client_metadata_url_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_client_metadata_url_state_errors()}
  def update_client_metadata_url_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateClientMetadataURLState", input, options)
  end

  @doc """
  Updates the status of a the currently signed-in user's device so that it is
  marked as remembered or not remembered for the purpose of device authentication.

  Device
  authentication is a "remember me" mechanism that silently completes sign-in from
  trusted
  devices with a device key instead of a user-provided MFA code. This operation
  changes
  the status of a device without deleting it, so you can enable it again later.
  For more
  information about device authentication, see [Working with devices](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec update_device_status(map(), update_device_status_request(), list()) ::
          {:ok, update_device_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_device_status_errors()}
  def update_device_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDeviceStatus", input, options)
  end

  @doc """
  Given the name of a user pool group, updates any of the properties for
  precedence,
  IAM role, or description.

  For more information about user pool groups, see [Adding groups to a user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_group(map(), update_group_request(), list()) ::
          {:ok, update_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateGroup", input, options)
  end

  @doc """
  Modifies the configuration and trust relationship between a third-party identity
  provider (IdP) and a user pool.

  Amazon Cognito accepts sign-in with third-party identity
  providers through managed login and OIDC relying-party libraries. For more
  information,
  see [Third-party IdP sign-in](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_identity_provider(map(), update_identity_provider_request(), list()) ::
          {:ok, update_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_identity_provider_errors()}
  def update_identity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateIdentityProvider", input, options)
  end

  @doc """
  Configures the branding settings for a user pool style.

  This operation is the
  programmatic option for the configuration of a style in the branding editor.

  Provides values for UI customization in a `Settings` JSON object and image
  files in an `Assets` array.

  This operation has a 2-megabyte request-size limit and include the CSS settings
  and
  image assets for your app client. Your branding settings might exceed 2MB in
  size. Amazon Cognito
  doesn't require that you pass all parameters in one request and preserves
  existing
  style settings that you don't specify. If your request is larger than 2MB,
  separate it
  into multiple requests, each with a size smaller than the limit.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_managed_login_branding(map(), update_managed_login_branding_request(), list()) ::
          {:ok, update_managed_login_branding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_managed_login_branding_errors()}
  def update_managed_login_branding(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateManagedLoginBranding", input, options)
  end

  @doc """
  Sets the provisioned limit for a specific API category.

  The value must be between the
  default limit and your account-level maximum limit in Service Quotas.

  Managed login user pools don't support adjustments to the
  `UserAuthentication` or `UserFederation` categories. To
  increase these limits, submit a Service Quotas increase request.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_provisioned_limit(map(), update_provisioned_limit_request(), list()) ::
          {:ok, update_provisioned_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_provisioned_limit_errors()}
  def update_provisioned_limit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProvisionedLimit", input, options)
  end

  @doc """
  Updates the name and scopes of a resource server.

  All other fields are read-only. For
  more information about resource servers, see [Access control with resource servers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html).

  If you don't provide a value for an attribute, it is set to the default
  value.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_resource_server(map(), update_resource_server_request(), list()) ::
          {:ok, update_resource_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resource_server_errors()}
  def update_resource_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResourceServer", input, options)
  end

  @doc """
  Modifies existing terms documents for the requested app client.

  When Terms and
  conditions and Privacy policy documents are configured, the app client displays
  links to
  them in the sign-up page of managed login for the app client.

  You can provide URLs for terms documents in the languages that are supported by
  [managed login localization](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization).
  Amazon Cognito directs users to the terms documents for
  their current language, with fallback to `default` if no document exists for
  the language.

  Each request accepts one type of terms document and a map of language-to-link
  for that
  document type. You must provide both types of terms documents in at least one
  language
  before Amazon Cognito displays your terms documents. Supply each type in
  separate
  requests.

  For more information, see [Terms documents](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_terms(map(), update_terms_request(), list()) ::
          {:ok, update_terms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_terms_errors()}
  def update_terms(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTerms", input, options)
  end

  @doc """
  Updates the currently signed-in user's attributes.

  To delete an attribute from
  the user, submit the attribute in your API request with a blank value.

  For custom attributes, you must add a `custom:` prefix to the attribute
  name, for example `custom:department`.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.
  """
  @spec update_user_attributes(map(), update_user_attributes_request(), list()) ::
          {:ok, update_user_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_attributes_errors()}
  def update_user_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserAttributes", input, options)
  end

  @doc """
  Updates the configuration of a user pool.

  To avoid setting parameters to Amazon Cognito
  defaults, construct this API request to pass the existing configuration of your
  user
  pool, modified to include the changes that you want to make.

  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  In secondary regions for user pools with multi-region replication, regional
  configurations for email, SMS, Lambda functions, and tags can be updated. Both
  global
  and regional settings must be provided as inputs, with global settings required
  to match
  existing values to maintain consistency across replicas.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers
  require you to register an origination phone number before you can send SMS
  messages
  to US phone numbers. If you use SMS text messages in Amazon Cognito, you must
  register a
  phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/).
  Amazon Cognito uses the registered number automatically. Otherwise, Amazon
  Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign
  in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Services service,
  Amazon Simple Notification Service might place your account in the SMS sandbox.
  In *
  [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
  *, you can send messages only to verified phone
  numbers. After you test your app while in the sandbox environment, you can move
  out
  of the sandbox and into production. For more information, see [ SMS message settings for Amazon Cognito user
  pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito
  Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_user_pool(map(), update_user_pool_request(), list()) ::
          {:ok, update_user_pool_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_pool_errors()}
  def update_user_pool(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserPool", input, options)
  end

  @doc """
  Given a user pool app client ID, updates the configuration.

  To avoid setting
  parameters to Amazon Cognito defaults, construct this API request to pass the
  existing
  configuration of your app client, modified to include the changes that you want
  to
  make.

  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  Unlike app clients created in the console, Amazon Cognito doesn't automatically
  assign a
  branding style to app clients that you configure with this API operation.
  Managed login and classic hosted UI pages aren't
  available for your client until after you apply a branding style.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_user_pool_client(map(), update_user_pool_client_request(), list()) ::
          {:ok, update_user_pool_client_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_pool_client_errors()}
  def update_user_pool_client(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserPoolClient", input, options)
  end

  @doc """
  A user pool domain hosts managed login, an authorization server and web server
  for
  authentication in your application.

  This operation updates the branding version for user
  pool domains between `1` for hosted UI (classic) and `2` for
  managed login. It also updates the SSL certificate for user pool custom domains.

  Changes to the domain branding version take up to one minute to take effect for
  a
  prefix domain and up to five minutes for a custom domain.

  This operation doesn't change the name of your user pool domain. To change your
  domain, delete it with `DeleteUserPoolDomain` and create a new domain with
  `CreateUserPoolDomain`.

  You can pass the ARN of a new Certificate Manager certificate in this request.
  Typically, ACM
  certificates automatically renew and you user pool can continue to use the same
  ARN. But
  if you generate a new certificate for your custom domain name, replace the
  original
  configuration with the new ARN in this request.

  ACM certificates for custom domains must be in the US East (N. Virginia)
  Amazon Web Services Region. After you submit your request, Amazon Cognito
  requires up to 1 hour to distribute
  your new certificate to your custom domain.

  For more information about adding a custom domain to your user pool, see
  [Configuring a user pool domain](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_user_pool_domain(map(), update_user_pool_domain_request(), list()) ::
          {:ok, update_user_pool_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_pool_domain_errors()}
  def update_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserPoolDomain", input, options)
  end

  @doc """
  Updates replica-specific settings for a user pool replica.

  You can modify the status
  to activate or deactivate the replica. This request can be made in both primary
  and secondary
  regions of the user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you must use IAM credentials to authorize requests, and you must
  grant yourself the corresponding IAM permission in a policy.

  ## Learn more

    

  [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

    

  [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  @spec update_user_pool_replica(map(), update_user_pool_replica_request(), list()) ::
          {:ok, update_user_pool_replica_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_pool_replica_errors()}
  def update_user_pool_replica(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUserPoolReplica", input, options)
  end

  @doc """
  Registers the current user's time-based one-time password (TOTP) authenticator
  with a code generated in their authenticator app from a private key that's
  supplied
  by your user pool.

  Marks the user's software token MFA status as "verified" if
  successful. The request takes an access token or a session string, but not both.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec verify_software_token(map(), verify_software_token_request(), list()) ::
          {:ok, verify_software_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_software_token_errors()}
  def verify_software_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifySoftwareToken", input, options)
  end

  @doc """
  Submits a verification code for a signed-in user who has added or changed a
  value of
  an auto-verified attribute.

  When successful, the user's attribute becomes verified
  and the attribute `email_verified` or `phone_number_verified`
  becomes `true`.

  If your user pool requires verification before Amazon Cognito updates the
  attribute value,
  this operation updates the affected attribute to its pending value.

  Authorize this action with a signed-in user's access token. It must include the
  scope `aws.cognito.signin.user.admin`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For
  this operation, you can't use IAM credentials to authorize requests, and you
  can't
  grant IAM permissions in policies. For more information about authorization
  models in
  Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  @spec verify_user_attribute(map(), verify_user_attribute_request(), list()) ::
          {:ok, verify_user_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_user_attribute_errors()}
  def verify_user_attribute(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifyUserAttribute", input, options)
  end
end
