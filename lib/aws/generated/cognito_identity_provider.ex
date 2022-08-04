# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoIdentityProvider do
  @moduledoc """
  Using the Amazon Cognito user pools API, you can create a user pool to manage
  directories and users.

  You can authenticate a user to obtain tokens related to user identity and access
  policies.

  This API reference provides information about user pools in Amazon Cognito user
  pools.

  For more information, see the [Amazon Cognito Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2016-04-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-idp",
      global?: false,
      protocol: "json",
      service_id: "Cognito Identity Provider",
      signature_version: "v4",
      signing_name: "cognito-idp",
      target_prefix: "AWSCognitoIdentityProviderService"
    }
  end

  @doc """
  Adds additional user attributes to the user pool schema.
  """
  def add_custom_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddCustomAttributes", input, options)
  end

  @doc """
  Adds the specified user to the specified group.

  Calling this action requires developer credentials.
  """
  def admin_add_user_to_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminAddUserToGroup", input, options)
  end

  @doc """
  Confirms user registration as an admin without using a confirmation code.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_confirm_sign_up(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminConfirmSignUp", input, options)
  end

  @doc """
  Creates a new user in the specified user pool.

  If `MessageAction` isn't set, the default is to send a welcome message via email
  or phone (SMS).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.

  This message is based on a template that you configured in your call to create
  or update a user pool. This template includes your custom sign-up instructions
  and placeholders for user name and temporary password.

  Alternatively, you can call `AdminCreateUser` with `SUPPRESS` for the
  `MessageAction` parameter, and Amazon Cognito won't send any email.

  In either case, the user will be in the `FORCE_CHANGE_PASSWORD` state until they
  sign in and change their password.

  `AdminCreateUser` requires developer credentials.
  """
  def admin_create_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminCreateUser", input, options)
  end

  @doc """
  Deletes a user as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_delete_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminDeleteUser", input, options)
  end

  @doc """
  Deletes the user attributes in a user pool as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_delete_user_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminDeleteUserAttributes", input, options)
  end

  @doc """
  Prevents the user from signing in with the specified external (SAML or social)
  identity provider (IdP).

  If the user that you want to deactivate is a Amazon Cognito user pools native
  username + password user, they can't use their password to sign in. If the user
  to deactivate is a linked external IdP user, any link between that user and an
  existing user is removed. When the external user signs in again, and the user is
  no longer attached to the previously linked `DestinationUser`, the user must
  create a new user account. See
  [AdminLinkProviderForUser](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminLinkProviderForUser.html).

  This action is enabled only for admin access and requires developer credentials.

  The `ProviderName` must match the value specified when creating an IdP for the
  pool.

  To deactivate a native username + password user, the `ProviderName` value must
  be `Cognito` and the `ProviderAttributeName` must be `Cognito_Subject`. The
  `ProviderAttributeValue` must be the name that is used in the user pool for the
  user.

  The `ProviderAttributeName` must always be `Cognito_Subject` for social IdPs.
  The `ProviderAttributeValue` must always be the exact subject that was used when
  the user was originally linked as a source user.

  For de-linking a SAML identity, there are two scenarios. If the linked identity
  has not yet been used to sign in, the `ProviderAttributeName` and
  `ProviderAttributeValue` must be the same values that were used for the
  `SourceUser` when the identities were originally linked using `
  AdminLinkProviderForUser` call. (If the linking was done with
  `ProviderAttributeName` set to `Cognito_Subject`, the same applies here).
  However, if the user has already signed in, the `ProviderAttributeName` must be
  `Cognito_Subject` and `ProviderAttributeValue` must be the subject of the SAML
  assertion.
  """
  def admin_disable_provider_for_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminDisableProviderForUser", input, options)
  end

  @doc """
  Disables the specified user.

  Calling this action requires developer credentials.
  """
  def admin_disable_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminDisableUser", input, options)
  end

  @doc """
  Enables the specified user as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_enable_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminEnableUser", input, options)
  end

  @doc """
  Forgets the device, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_forget_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminForgetDevice", input, options)
  end

  @doc """
  Gets the device, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_get_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminGetDevice", input, options)
  end

  @doc """
  Gets the specified user by user name in a user pool as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_get_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminGetUser", input, options)
  end

  @doc """
  Initiates the authentication flow, as an administrator.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Calling this action requires developer credentials.
  """
  def admin_initiate_auth(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminInitiateAuth", input, options)
  end

  @doc """
  Links an existing user account in a user pool (`DestinationUser`) to an identity
  from an external IdP (`SourceUser`) based on a specified attribute name and
  value from the external IdP.

  This allows you to create a link from the existing user account to an external
  federated user identity that has not yet been used to sign in. You can then use
  the federated user identity to sign in as the existing user account.

  For example, if there is an existing user with a username and password, this API
  links that user to a federated user identity. When the user signs in with a
  federated user identity, they sign in as the existing user account.

  The maximum number of federated identities linked to a user is five.

  Because this API allows a user with an external federated identity to sign in as
  an existing user in the user pool, it is critical that it only be used with
  external IdPs and provider attributes that have been trusted by the application
  owner.

  This action is administrative and requires developer credentials.
  """
  def admin_link_provider_for_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminLinkProviderForUser", input, options)
  end

  @doc """
  Lists devices, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_list_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminListDevices", input, options)
  end

  @doc """
  Lists the groups that the user belongs to.

  Calling this action requires developer credentials.
  """
  def admin_list_groups_for_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminListGroupsForUser", input, options)
  end

  @doc """
  A history of user activity and any risks detected as part of Amazon Cognito
  advanced security.
  """
  def admin_list_user_auth_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminListUserAuthEvents", input, options)
  end

  @doc """
  Removes the specified user from the specified group.

  Calling this action requires developer credentials.
  """
  def admin_remove_user_from_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminRemoveUserFromGroup", input, options)
  end

  @doc """
  Resets the specified user's password in a user pool as an administrator.

  Works on any user.

  When a developer calls this API, the current password is invalidated, so it must
  be changed. If a user tries to sign in after the API is called, the app will get
  a PasswordResetRequiredException exception back and should direct the user down
  the flow to reset the password, which is the same as the forgot password flow.
  In addition, if the user pool has phone verification selected and a verified
  phone number exists for the user, or if email verification is selected and a
  verified email exists for the user, calling this API will also result in sending
  a message to the end user with the code to change their password.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Calling this action requires developer credentials.
  """
  def admin_reset_user_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminResetUserPassword", input, options)
  end

  @doc """
  Responds to an authentication challenge, as an administrator.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Calling this action requires developer credentials.
  """
  def admin_respond_to_auth_challenge(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminRespondToAuthChallenge", input, options)
  end

  @doc """
  The user's multi-factor authentication (MFA) preference, including which MFA
  options are activated, and if any are preferred.

  Only one factor can be set as preferred. The preferred MFA factor will be used
  to authenticate a user if multiple factors are activated. If multiple options
  are activated and no preference is set, a challenge to choose an MFA option will
  be returned during sign-in.
  """
  def admin_set_user_mfa_preference(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminSetUserMFAPreference", input, options)
  end

  @doc """
  Sets the specified user's password in a user pool as an administrator.

  Works on any user.

  The password can be temporary or permanent. If it is temporary, the user status
  enters the `FORCE_CHANGE_PASSWORD` state. When the user next tries to sign in,
  the InitiateAuth/AdminInitiateAuth response will contain the
  `NEW_PASSWORD_REQUIRED` challenge. If the user doesn't sign in before it
  expires, the user won't be able to sign in, and an administrator must reset
  their password.

  Once the user has set a new password, or the password is permanent, the user
  status is set to `Confirmed`.
  """
  def admin_set_user_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminSetUserPassword", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.

  You can't use it to configure time-based one-time password (TOTP) software token
  MFA. To configure either type of MFA, use
  [AdminSetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserMFAPreference.html)
  instead.
  """
  def admin_set_user_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminSetUserSettings", input, options)
  end

  @doc """
  Provides feedback for an authentication event indicating if it was from a valid
  user.

  This feedback is used for improving the risk evaluation decision for the user
  pool as part of Amazon Cognito advanced security.
  """
  def admin_update_auth_event_feedback(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminUpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_update_device_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminUpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified user's attributes, including developer attributes, as an
  administrator.

  Works on any user.

  For custom attributes, you must prepend the `custom:` prefix to the attribute
  name.

  In addition to updating user attributes, this API can also be used to mark phone
  and email as verified.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Calling this action requires developer credentials.
  """
  def admin_update_user_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminUpdateUserAttributes", input, options)
  end

  @doc """
  Signs out a user from all devices.

  You must sign `AdminUserGlobalSignOut` requests with Amazon Web Services
  credentials. It also invalidates all refresh tokens that Amazon Cognito has
  issued to a user. The user's current access and ID tokens remain valid until
  they expire. By default, access and ID tokens expire one hour after they're
  issued. A user can still use a hosted UI cookie to retrieve new tokens for the
  duration of the cookie validity period of 1 hour.

  Calling this action requires developer credentials.
  """
  def admin_user_global_sign_out(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AdminUserGlobalSignOut", input, options)
  end

  @doc """
  Begins setup of time-based one-time password (TOTP) multi-factor authentication
  (MFA) for a user, with a unique private key that Amazon Cognito generates and
  returns in the API response.

  You can authorize an `AssociateSoftwareToken` request with either the user's
  access token, or a session string from a challenge response that you received
  from Amazon Cognito.

  Amazon Cognito disassociates an existing software token when you verify the new
  token in a [
  VerifySoftwareToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html)
  API request. If you don't verify the software token and your user pool doesn't
  require MFA, the user can then authenticate with user name and password
  credentials alone. If your user pool requires TOTP MFA, Amazon Cognito generates
  an `MFA_SETUP` or `SOFTWARE_TOKEN_SETUP` challenge each time your user signs.
  Complete setup with `AssociateSoftwareToken` and `VerifySoftwareToken`.

  After you set up software token MFA for your user, Amazon Cognito generates a
  `SOFTWARE_TOKEN_MFA` challenge when they authenticate. Respond to this challenge
  with your user's TOTP.
  """
  def associate_software_token(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateSoftwareToken", input, options)
  end

  @doc """
  Changes the password for a specified user in a user pool.
  """
  def change_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ChangePassword", input, options)
  end

  @doc """
  Confirms tracking of the device.

  This API call is the call that begins device tracking.
  """
  def confirm_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ConfirmDevice", input, options)
  end

  @doc """
  Allows a user to enter a confirmation code to reset a forgotten password.
  """
  def confirm_forgot_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ConfirmForgotPassword", input, options)
  end

  @doc """
  Confirms registration of a new user.
  """
  def confirm_sign_up(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ConfirmSignUp", input, options)
  end

  @doc """
  Creates a new group in the specified user pool.

  Calling this action requires developer credentials.
  """
  def create_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGroup", input, options)
  end

  @doc """
  Creates an IdP for a user pool.
  """
  def create_identity_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateIdentityProvider", input, options)
  end

  @doc """
  Creates a new OAuth2.0 resource server and defines custom scopes within it.
  """
  def create_resource_server(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateResourceServer", input, options)
  end

  @doc """
  Creates the user import job.
  """
  def create_user_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUserImportJob", input, options)
  end

  @doc """
  Creates a new Amazon Cognito user pool and sets the password policy for the
  pool.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def create_user_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUserPool", input, options)
  end

  @doc """
  Creates the user pool client.

  When you create a new user pool client, token revocation is automatically
  activated. For more information about revoking tokens, see
  [RevokeToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html).
  """
  def create_user_pool_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUserPoolClient", input, options)
  end

  @doc """
  Creates a new domain for a user pool.
  """
  def create_user_pool_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUserPoolDomain", input, options)
  end

  @doc """
  Deletes a group.

  Calling this action requires developer credentials.
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGroup", input, options)
  end

  @doc """
  Deletes an IdP for a user pool.
  """
  def delete_identity_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteIdentityProvider", input, options)
  end

  @doc """
  Deletes a resource server.
  """
  def delete_resource_server(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResourceServer", input, options)
  end

  @doc """
  Allows a user to delete himself or herself.
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUser", input, options)
  end

  @doc """
  Deletes the attributes for a user.
  """
  def delete_user_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserAttributes", input, options)
  end

  @doc """
  Deletes the specified Amazon Cognito user pool.
  """
  def delete_user_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserPool", input, options)
  end

  @doc """
  Allows the developer to delete the user pool client.
  """
  def delete_user_pool_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserPoolClient", input, options)
  end

  @doc """
  Deletes a domain for a user pool.
  """
  def delete_user_pool_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserPoolDomain", input, options)
  end

  @doc """
  Gets information about a specific IdP.
  """
  def describe_identity_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeIdentityProvider", input, options)
  end

  @doc """
  Describes a resource server.
  """
  def describe_resource_server(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeResourceServer", input, options)
  end

  @doc """
  Describes the risk configuration.
  """
  def describe_risk_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRiskConfiguration", input, options)
  end

  @doc """
  Describes the user import job.
  """
  def describe_user_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUserImportJob", input, options)
  end

  @doc """
  Returns the configuration information and metadata of the specified user pool.
  """
  def describe_user_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUserPool", input, options)
  end

  @doc """
  Client method for returning the configuration information and metadata of the
  specified user pool app client.
  """
  def describe_user_pool_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUserPoolClient", input, options)
  end

  @doc """
  Gets information about a domain.
  """
  def describe_user_pool_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUserPoolDomain", input, options)
  end

  @doc """
  Forgets the specified device.
  """
  def forget_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ForgetDevice", input, options)
  end

  @doc """
  Calling this API causes a message to be sent to the end user with a confirmation
  code that is required to change the user's password.

  For the `Username` parameter, you can use the username or user alias. The method
  used to send the confirmation code is sent according to the specified
  AccountRecoverySetting. For more information, see [Recovering User Accounts](https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html)
  in the *Amazon Cognito Developer Guide*. If neither a verified phone number nor
  a verified email exists, an `InvalidParameterException` is thrown. To use the
  confirmation code for resetting the password, call
  [ConfirmForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html).  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon
  Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def forgot_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ForgotPassword", input, options)
  end

  @doc """
  Gets the header information for the comma-separated value (CSV) file to be used
  as input for the user import job.
  """
  def get_csv_header(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetCSVHeader", input, options)
  end

  @doc """
  Gets the device.
  """
  def get_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDevice", input, options)
  end

  @doc """
  Gets a group.

  Calling this action requires developer credentials.
  """
  def get_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetGroup", input, options)
  end

  @doc """
  Gets the specified IdP.
  """
  def get_identity_provider_by_identifier(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetIdentityProviderByIdentifier", input, options)
  end

  @doc """
  This method takes a user pool ID, and returns the signing certificate.
  """
  def get_signing_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSigningCertificate", input, options)
  end

  @doc """
  Gets the user interface (UI) Customization information for a particular app
  client's app UI, if any such information exists for the client.

  If nothing is set for the particular client, but there is an existing pool level
  customization (the app `clientId` is `ALL`), then that information is returned.
  If nothing is present, then an empty shape is returned.
  """
  def get_ui_customization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUICustomization", input, options)
  end

  @doc """
  Gets the user attributes and metadata for a user.
  """
  def get_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUser", input, options)
  end

  @doc """
  Generates a user attribute verification code for the specified attribute name.

  Sends a message to a user with a code that they must return in a
  VerifyUserAttribute request.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def get_user_attribute_verification_code(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUserAttributeVerificationCode", input, options)
  end

  @doc """
  Gets the user pool multi-factor authentication (MFA) configuration.
  """
  def get_user_pool_mfa_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUserPoolMfaConfig", input, options)
  end

  @doc """
  Signs out users from all devices.

  It also invalidates all refresh tokens that Amazon Cognito has issued to a user.
  The user's current access and ID tokens remain valid until their expiry. By
  default, access and ID tokens expire one hour after Amazon Cognito issues them.
  A user can still use a hosted UI cookie to retrieve new tokens for the duration
  of the cookie validity period of 1 hour.
  """
  def global_sign_out(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GlobalSignOut", input, options)
  end

  @doc """
  Initiates sign-in for a user in the Amazon Cognito user directory.

  You can't sign in a user with a federated IdP with `InitiateAuth`. For more
  information, see [ Adding user pool sign-in through a third party](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def initiate_auth(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InitiateAuth", input, options)
  end

  @doc """
  Lists the sign-in devices that Amazon Cognito has registered to the current
  user.
  """
  def list_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDevices", input, options)
  end

  @doc """
  Lists the groups associated with a user pool.

  Calling this action requires developer credentials.
  """
  def list_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroups", input, options)
  end

  @doc """
  Lists information about all IdPs for a user pool.
  """
  def list_identity_providers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListIdentityProviders", input, options)
  end

  @doc """
  Lists the resource servers for a user pool.
  """
  def list_resource_servers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResourceServers", input, options)
  end

  @doc """
  Lists the tags that are assigned to an Amazon Cognito user pool.

  A tag is a label that you can apply to user pools to categorize and manage them
  in different ways, such as by purpose, owner, environment, or other criteria.

  You can use this action up to 10 times per second, per account.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Lists the user import jobs.
  """
  def list_user_import_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUserImportJobs", input, options)
  end

  @doc """
  Lists the clients that have been created for the specified user pool.
  """
  def list_user_pool_clients(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUserPoolClients", input, options)
  end

  @doc """
  Lists the user pools associated with an Amazon Web Services account.
  """
  def list_user_pools(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUserPools", input, options)
  end

  @doc """
  Lists the users in the Amazon Cognito user pool.
  """
  def list_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUsers", input, options)
  end

  @doc """
  Lists the users in the specified group.

  Calling this action requires developer credentials.
  """
  def list_users_in_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUsersInGroup", input, options)
  end

  @doc """
  Resends the confirmation (for confirmation of registration) to a specific user
  in the user pool.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def resend_confirmation_code(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResendConfirmationCode", input, options)
  end

  @doc """
  Responds to the authentication challenge.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def respond_to_auth_challenge(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RespondToAuthChallenge", input, options)
  end

  @doc """
  Revokes all of the access tokens generated by the specified refresh token.

  After the token is revoked, you can't use the revoked token to access Amazon
  Cognito authenticated APIs.
  """
  def revoke_token(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RevokeToken", input, options)
  end

  @doc """
  Configures actions on detected risks.

  To delete the risk configuration for `UserPoolId` or `ClientId`, pass null
  values for all four configuration types.

  To activate Amazon Cognito advanced security features, update the user pool to
  include the `UserPoolAddOns` key`AdvancedSecurityMode`.
  """
  def set_risk_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetRiskConfiguration", input, options)
  end

  @doc """
  Sets the user interface (UI) customization information for a user pool's
  built-in app UI.

  You can specify app UI customization settings for a single client (with a
  specific `clientId`) or for all clients (by setting the `clientId` to `ALL`). If
  you specify `ALL`, the default configuration is used for every client that has
  no previously set UI customization. If you specify UI customization settings for
  a particular client, it will no longer return to the `ALL` configuration.

  To use this API, your user pool must have a domain associated with it.
  Otherwise, there is no place to host the app's pages, and the service will throw
  an error.
  """
  def set_ui_customization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetUICustomization", input, options)
  end

  @doc """
  Set the user's multi-factor authentication (MFA) method preference, including
  which MFA factors are activated and if any are preferred.

  Only one factor can be set as preferred. The preferred MFA factor will be used
  to authenticate a user if multiple factors are activated. If multiple options
  are activated and no preference is set, a challenge to choose an MFA option will
  be returned during sign-in. If an MFA type is activated for a user, the user
  will be prompted for MFA during all sign-in attempts unless device tracking is
  turned on and the device has been trusted. If you want MFA to be applied
  selectively based on the assessed risk level of sign-in attempts, deactivate MFA
  for users and turn on Adaptive Authentication for the user pool.
  """
  def set_user_mfa_preference(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetUserMFAPreference", input, options)
  end

  @doc """
  Sets the user pool multi-factor authentication (MFA) configuration.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def set_user_pool_mfa_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetUserPoolMfaConfig", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.

  You can't use it to configure time-based one-time password (TOTP) software token
  MFA. To configure either type of MFA, use
  [SetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html)
  instead.
  """
  def set_user_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetUserSettings", input, options)
  end

  @doc """
  Registers the user in the specified user pool and creates a user name, password,
  and user attributes.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def sign_up(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SignUp", input, options)
  end

  @doc """
  Starts the user import.
  """
  def start_user_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartUserImportJob", input, options)
  end

  @doc """
  Stops the user import job.
  """
  def stop_user_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopUserImportJob", input, options)
  end

  @doc """
  Assigns a set of tags to an Amazon Cognito user pool.

  A tag is a label that you can use to categorize and manage user pools in
  different ways, such as by purpose, owner, environment, or other criteria.

  Each tag consists of a key and value, both of which you define. A key is a
  general category for more specific values. For example, if you have two versions
  of a user pool, one for testing and another for production, you might assign an
  `Environment` tag key to both user pools. The value of this key might be `Test`
  for one user pool, and `Production` for the other.

  Tags are useful for cost tracking and access control. You can activate your tags
  so that they appear on the Billing and Cost Management console, where you can
  track the costs associated with your user pools. In an Identity and Access
  Management policy, you can constrain permissions for user pools based on
  specific tags or tag values.

  You can use this action up to 5 times per second, per account. A user pool can
  have as many as 50 tags.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from an Amazon Cognito user pool.

  You can use this action up to 5 times per second, per account.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Provides the feedback for an authentication event, whether it was from a valid
  user or not.

  This feedback is used for improving the risk evaluation decision for the user
  pool as part of Amazon Cognito advanced security.
  """
  def update_auth_event_feedback(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status.
  """
  def update_device_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified group with the specified attributes.

  Calling this action requires developer credentials.
  """
  def update_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateGroup", input, options)
  end

  @doc """
  Updates IdP information for a user pool.
  """
  def update_identity_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateIdentityProvider", input, options)
  end

  @doc """
  Updates the name and scopes of resource server.

  All other fields are read-only.

  If you don't provide a value for an attribute, it is set to the default value.
  """
  def update_resource_server(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateResourceServer", input, options)
  end

  @doc """
  Allows a user to update a specific attribute (one at a time).

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def update_user_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUserAttributes", input, options)
  end

  @doc """
  Updates the specified user pool with the specified attributes.

  You can get a list of the current user pool settings using
  [DescribeUserPool](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html). If you don't provide a value for an attribute, it will be set to the default
  value.

  This action might generate an SMS text message. Starting June 1, 2021, US
  telecom carriers require you to register an origination phone number before you
  can send SMS messages to US phone numbers. If you use SMS text messages in
  Amazon Cognito, you must register a phone number with [Amazon
  Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses
  the registered number automatically. Otherwise, Amazon Cognito users who must
  receive SMS messages might not be able to sign up, activate their accounts, or
  sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def update_user_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUserPool", input, options)
  end

  @doc """
  Updates the specified user pool app client with the specified attributes.

  You can get a list of the current user pool app client settings using
  [DescribeUserPoolClient](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html).  If you don't provide a value for an attribute, it will be set to the default
  value.

  You can also use this operation to enable token revocation for user pool
  clients. For more information about revoking tokens, see
  [RevokeToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html).
  """
  def update_user_pool_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUserPoolClient", input, options)
  end

  @doc """
  Updates the Secure Sockets Layer (SSL) certificate for the custom domain for
  your user pool.

  You can use this operation to provide the Amazon Resource Name (ARN) of a new
  certificate to Amazon Cognito. You can't use it to change the domain for a user
  pool.

  A custom domain is used to host the Amazon Cognito hosted UI, which provides
  sign-up and sign-in pages for your application. When you set up a custom domain,
  you provide a certificate that you manage with Certificate Manager (ACM). When
  necessary, you can use this operation to change the certificate that you applied
  to your custom domain.

  Usually, this is unnecessary following routine certificate renewal with ACM.
  When you renew your existing certificate in ACM, the ARN for your certificate
  remains the same, and your custom domain uses the new certificate automatically.

  However, if you replace your existing certificate with a new one, ACM gives the
  new certificate a new ARN. To apply the new certificate to your custom domain,
  you must provide this ARN to Amazon Cognito.

  When you add your new certificate in ACM, you must choose US East (N. Virginia)
  as the Amazon Web Services Region.

  After you submit your request, Amazon Cognito requires up to 1 hour to
  distribute your new certificate to your custom domain.

  For more information about adding a custom domain to your user pool, see [Using Your Own Domain for the Hosted
  UI](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).
  """
  def update_user_pool_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUserPoolDomain", input, options)
  end

  @doc """
  Use this API to register a user's entered time-based one-time password (TOTP)
  code and mark the user's software token MFA status as "verified" if successful.

  The request takes an access token or a session string, but not both.
  """
  def verify_software_token(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "VerifySoftwareToken", input, options)
  end

  @doc """
  Verifies the specified user attributes in the user pool.

  If your user pool requires verification before Amazon Cognito updates the
  attribute value, VerifyUserAttribute updates the affected attribute to its
  pending value. For more information, see [
  UserAttributeUpdateSettingsType](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserAttributeUpdateSettingsType.html).
  """
  def verify_user_attribute(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "VerifyUserAttribute", input, options)
  end
end
