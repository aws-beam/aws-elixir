# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoIdentityProvider do
  @moduledoc """
  Using the Amazon Cognito User Pools API, you can create a user pool to manage
  directories and users.

  You can authenticate a user to obtain tokens related to user identity and access
  policies.

  This API reference provides information about user pools in Amazon Cognito User
  Pools.

  For more information, see the Amazon Cognito Documentation.
  """

  @doc """
  Adds additional user attributes to the user pool schema.
  """
  def add_custom_attributes(client, input, options \\ []) do
    request(client, "AddCustomAttributes", input, options)
  end

  @doc """
  Adds the specified user to the specified group.

  Calling this action requires developer credentials.
  """
  def admin_add_user_to_group(client, input, options \\ []) do
    request(client, "AdminAddUserToGroup", input, options)
  end

  @doc """
  Confirms user registration as an admin without using a confirmation code.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_confirm_sign_up(client, input, options \\ []) do
    request(client, "AdminConfirmSignUp", input, options)
  end

  @doc """
  Creates a new user in the specified user pool.

  If `MessageAction` is not set, the default is to send a welcome message via
  email or phone (SMS).

  This message is based on a template that you configured in your call to create
  or update a user pool. This template includes your custom sign-up instructions
  and placeholders for user name and temporary password.

  Alternatively, you can call `AdminCreateUser` with “SUPPRESS” for the
  `MessageAction` parameter, and Amazon Cognito will not send any email.

  In either case, the user will be in the `FORCE_CHANGE_PASSWORD` state until they
  sign in and change their password.

  `AdminCreateUser` requires developer credentials.
  """
  def admin_create_user(client, input, options \\ []) do
    request(client, "AdminCreateUser", input, options)
  end

  @doc """
  Deletes a user as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_delete_user(client, input, options \\ []) do
    request(client, "AdminDeleteUser", input, options)
  end

  @doc """
  Deletes the user attributes in a user pool as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_delete_user_attributes(client, input, options \\ []) do
    request(client, "AdminDeleteUserAttributes", input, options)
  end

  @doc """
  Disables the user from signing in with the specified external (SAML or social)
  identity provider.

  If the user to disable is a Cognito User Pools native username + password user,
  they are not permitted to use their password to sign-in. If the user to disable
  is a linked external IdP user, any link between that user and an existing user
  is removed. The next time the external user (no longer attached to the
  previously linked `DestinationUser`) signs in, they must create a new user
  account. See
  [AdminLinkProviderForUser](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminLinkProviderForUser.html).

  This action is enabled only for admin access and requires developer credentials.

  The `ProviderName` must match the value specified when creating an IdP for the
  pool.

  To disable a native username + password user, the `ProviderName` value must be
  `Cognito` and the `ProviderAttributeName` must be `Cognito_Subject`, with the
  `ProviderAttributeValue` being the name that is used in the user pool for the
  user.

  The `ProviderAttributeName` must always be `Cognito_Subject` for social identity
  providers. The `ProviderAttributeValue` must always be the exact subject that
  was used when the user was originally linked as a source user.

  For de-linking a SAML identity, there are two scenarios. If the linked identity
  has not yet been used to sign-in, the `ProviderAttributeName` and
  `ProviderAttributeValue` must be the same values that were used for the
  `SourceUser` when the identities were originally linked using `
  AdminLinkProviderForUser` call. (If the linking was done with
  `ProviderAttributeName` set to `Cognito_Subject`, the same applies here).
  However, if the user has already signed in, the `ProviderAttributeName` must be
  `Cognito_Subject` and `ProviderAttributeValue` must be the subject of the SAML
  assertion.
  """
  def admin_disable_provider_for_user(client, input, options \\ []) do
    request(client, "AdminDisableProviderForUser", input, options)
  end

  @doc """
  Disables the specified user.

  Calling this action requires developer credentials.
  """
  def admin_disable_user(client, input, options \\ []) do
    request(client, "AdminDisableUser", input, options)
  end

  @doc """
  Enables the specified user as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_enable_user(client, input, options \\ []) do
    request(client, "AdminEnableUser", input, options)
  end

  @doc """
  Forgets the device, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_forget_device(client, input, options \\ []) do
    request(client, "AdminForgetDevice", input, options)
  end

  @doc """
  Gets the device, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_get_device(client, input, options \\ []) do
    request(client, "AdminGetDevice", input, options)
  end

  @doc """
  Gets the specified user by user name in a user pool as an administrator.

  Works on any user.

  Calling this action requires developer credentials.
  """
  def admin_get_user(client, input, options \\ []) do
    request(client, "AdminGetUser", input, options)
  end

  @doc """
  Initiates the authentication flow, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_initiate_auth(client, input, options \\ []) do
    request(client, "AdminInitiateAuth", input, options)
  end

  @doc """
  Links an existing user account in a user pool (`DestinationUser`) to an identity
  from an external identity provider (`SourceUser`) based on a specified attribute
  name and value from the external identity provider.

  This allows you to create a link from the existing user account to an external
  federated user identity that has not yet been used to sign in, so that the
  federated user identity can be used to sign in as the existing user account.

  For example, if there is an existing user with a username and password, this API
  links that user to a federated user identity, so that when the federated user
  identity is used, the user signs in as the existing user account.

  The maximum number of federated identities linked to a user is 5.

  Because this API allows a user with an external federated identity to sign in as
  an existing user in the user pool, it is critical that it only be used with
  external identity providers and provider attributes that have been trusted by
  the application owner.

  This action is enabled only for admin access and requires developer credentials.
  """
  def admin_link_provider_for_user(client, input, options \\ []) do
    request(client, "AdminLinkProviderForUser", input, options)
  end

  @doc """
  Lists devices, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_list_devices(client, input, options \\ []) do
    request(client, "AdminListDevices", input, options)
  end

  @doc """
  Lists the groups that the user belongs to.

  Calling this action requires developer credentials.
  """
  def admin_list_groups_for_user(client, input, options \\ []) do
    request(client, "AdminListGroupsForUser", input, options)
  end

  @doc """
  Lists a history of user activity and any risks detected as part of Amazon
  Cognito advanced security.
  """
  def admin_list_user_auth_events(client, input, options \\ []) do
    request(client, "AdminListUserAuthEvents", input, options)
  end

  @doc """
  Removes the specified user from the specified group.

  Calling this action requires developer credentials.
  """
  def admin_remove_user_from_group(client, input, options \\ []) do
    request(client, "AdminRemoveUserFromGroup", input, options)
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

  Calling this action requires developer credentials.
  """
  def admin_reset_user_password(client, input, options \\ []) do
    request(client, "AdminResetUserPassword", input, options)
  end

  @doc """
  Responds to an authentication challenge, as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_respond_to_auth_challenge(client, input, options \\ []) do
    request(client, "AdminRespondToAuthChallenge", input, options)
  end

  @doc """
  Sets the user's multi-factor authentication (MFA) preference, including which
  MFA options are enabled and if any are preferred.

  Only one factor can be set as preferred. The preferred MFA factor will be used
  to authenticate a user if multiple factors are enabled. If multiple options are
  enabled and no preference is set, a challenge to choose an MFA option will be
  returned during sign in.
  """
  def admin_set_user_m_f_a_preference(client, input, options \\ []) do
    request(client, "AdminSetUserMFAPreference", input, options)
  end

  @doc """
  Sets the specified user's password in a user pool as an administrator.

  Works on any user.

  The password can be temporary or permanent. If it is temporary, the user status
  will be placed into the `FORCE_CHANGE_PASSWORD` state. When the user next tries
  to sign in, the InitiateAuth/AdminInitiateAuth response will contain the
  `NEW_PASSWORD_REQUIRED` challenge. If the user does not sign in before it
  expires, the user will not be able to sign in and their password will need to be
  reset by an administrator.

  Once the user has set a new password, or the password is permanent, the user
  status will be set to `Confirmed`.
  """
  def admin_set_user_password(client, input, options \\ []) do
    request(client, "AdminSetUserPassword", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.

  You can't use it to configure TOTP software token MFA. To configure either type
  of MFA, use
  [AdminSetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserMFAPreference.html)
  instead.
  """
  def admin_set_user_settings(client, input, options \\ []) do
    request(client, "AdminSetUserSettings", input, options)
  end

  @doc """
  Provides feedback for an authentication event as to whether it was from a valid
  user.

  This feedback is used for improving the risk evaluation decision for the user
  pool as part of Amazon Cognito advanced security.
  """
  def admin_update_auth_event_feedback(client, input, options \\ []) do
    request(client, "AdminUpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status as an administrator.

  Calling this action requires developer credentials.
  """
  def admin_update_device_status(client, input, options \\ []) do
    request(client, "AdminUpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified user's attributes, including developer attributes, as an
  administrator.

  Works on any user.

  For custom attributes, you must prepend the `custom:` prefix to the attribute
  name.

  In addition to updating user attributes, this API can also be used to mark phone
  and email as verified.

  Calling this action requires developer credentials.
  """
  def admin_update_user_attributes(client, input, options \\ []) do
    request(client, "AdminUpdateUserAttributes", input, options)
  end

  @doc """
  Signs out users from all devices, as an administrator.

  It also invalidates all refresh tokens issued to a user. The user's current
  access and Id tokens remain valid until their expiry. Access and Id tokens
  expire one hour after they are issued.

  Calling this action requires developer credentials.
  """
  def admin_user_global_sign_out(client, input, options \\ []) do
    request(client, "AdminUserGlobalSignOut", input, options)
  end

  @doc """
  Returns a unique generated shared secret key code for the user account.

  The request takes an access token or a session string, but not both.
  """
  def associate_software_token(client, input, options \\ []) do
    request(client, "AssociateSoftwareToken", input, options)
  end

  @doc """
  Changes the password for a specified user in a user pool.
  """
  def change_password(client, input, options \\ []) do
    request(client, "ChangePassword", input, options)
  end

  @doc """
  Confirms tracking of the device.

  This API call is the call that begins device tracking.
  """
  def confirm_device(client, input, options \\ []) do
    request(client, "ConfirmDevice", input, options)
  end

  @doc """
  Allows a user to enter a confirmation code to reset a forgotten password.
  """
  def confirm_forgot_password(client, input, options \\ []) do
    request(client, "ConfirmForgotPassword", input, options)
  end

  @doc """
  Confirms registration of a user and handles the existing alias from a previous
  user.
  """
  def confirm_sign_up(client, input, options \\ []) do
    request(client, "ConfirmSignUp", input, options)
  end

  @doc """
  Creates a new group in the specified user pool.

  Calling this action requires developer credentials.
  """
  def create_group(client, input, options \\ []) do
    request(client, "CreateGroup", input, options)
  end

  @doc """
  Creates an identity provider for a user pool.
  """
  def create_identity_provider(client, input, options \\ []) do
    request(client, "CreateIdentityProvider", input, options)
  end

  @doc """
  Creates a new OAuth2.0 resource server and defines custom scopes in it.
  """
  def create_resource_server(client, input, options \\ []) do
    request(client, "CreateResourceServer", input, options)
  end

  @doc """
  Creates the user import job.
  """
  def create_user_import_job(client, input, options \\ []) do
    request(client, "CreateUserImportJob", input, options)
  end

  @doc """
  Creates a new Amazon Cognito user pool and sets the password policy for the
  pool.
  """
  def create_user_pool(client, input, options \\ []) do
    request(client, "CreateUserPool", input, options)
  end

  @doc """
  Creates the user pool client.
  """
  def create_user_pool_client(client, input, options \\ []) do
    request(client, "CreateUserPoolClient", input, options)
  end

  @doc """
  Creates a new domain for a user pool.
  """
  def create_user_pool_domain(client, input, options \\ []) do
    request(client, "CreateUserPoolDomain", input, options)
  end

  @doc """
  Deletes a group.

  Currently only groups with no members can be deleted.

  Calling this action requires developer credentials.
  """
  def delete_group(client, input, options \\ []) do
    request(client, "DeleteGroup", input, options)
  end

  @doc """
  Deletes an identity provider for a user pool.
  """
  def delete_identity_provider(client, input, options \\ []) do
    request(client, "DeleteIdentityProvider", input, options)
  end

  @doc """
  Deletes a resource server.
  """
  def delete_resource_server(client, input, options \\ []) do
    request(client, "DeleteResourceServer", input, options)
  end

  @doc """
  Allows a user to delete himself or herself.
  """
  def delete_user(client, input, options \\ []) do
    request(client, "DeleteUser", input, options)
  end

  @doc """
  Deletes the attributes for a user.
  """
  def delete_user_attributes(client, input, options \\ []) do
    request(client, "DeleteUserAttributes", input, options)
  end

  @doc """
  Deletes the specified Amazon Cognito user pool.
  """
  def delete_user_pool(client, input, options \\ []) do
    request(client, "DeleteUserPool", input, options)
  end

  @doc """
  Allows the developer to delete the user pool client.
  """
  def delete_user_pool_client(client, input, options \\ []) do
    request(client, "DeleteUserPoolClient", input, options)
  end

  @doc """
  Deletes a domain for a user pool.
  """
  def delete_user_pool_domain(client, input, options \\ []) do
    request(client, "DeleteUserPoolDomain", input, options)
  end

  @doc """
  Gets information about a specific identity provider.
  """
  def describe_identity_provider(client, input, options \\ []) do
    request(client, "DescribeIdentityProvider", input, options)
  end

  @doc """
  Describes a resource server.
  """
  def describe_resource_server(client, input, options \\ []) do
    request(client, "DescribeResourceServer", input, options)
  end

  @doc """
  Describes the risk configuration.
  """
  def describe_risk_configuration(client, input, options \\ []) do
    request(client, "DescribeRiskConfiguration", input, options)
  end

  @doc """
  Describes the user import job.
  """
  def describe_user_import_job(client, input, options \\ []) do
    request(client, "DescribeUserImportJob", input, options)
  end

  @doc """
  Returns the configuration information and metadata of the specified user pool.
  """
  def describe_user_pool(client, input, options \\ []) do
    request(client, "DescribeUserPool", input, options)
  end

  @doc """
  Client method for returning the configuration information and metadata of the
  specified user pool app client.
  """
  def describe_user_pool_client(client, input, options \\ []) do
    request(client, "DescribeUserPoolClient", input, options)
  end

  @doc """
  Gets information about a domain.
  """
  def describe_user_pool_domain(client, input, options \\ []) do
    request(client, "DescribeUserPoolDomain", input, options)
  end

  @doc """
  Forgets the specified device.
  """
  def forget_device(client, input, options \\ []) do
    request(client, "ForgetDevice", input, options)
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
  [ConfirmForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html).
  """
  def forgot_password(client, input, options \\ []) do
    request(client, "ForgotPassword", input, options)
  end

  @doc """
  Gets the header information for the .csv file to be used as input for the user
  import job.
  """
  def get_csv_header(client, input, options \\ []) do
    request(client, "GetCSVHeader", input, options)
  end

  @doc """
  Gets the device.
  """
  def get_device(client, input, options \\ []) do
    request(client, "GetDevice", input, options)
  end

  @doc """
  Gets a group.

  Calling this action requires developer credentials.
  """
  def get_group(client, input, options \\ []) do
    request(client, "GetGroup", input, options)
  end

  @doc """
  Gets the specified identity provider.
  """
  def get_identity_provider_by_identifier(client, input, options \\ []) do
    request(client, "GetIdentityProviderByIdentifier", input, options)
  end

  @doc """
  This method takes a user pool ID, and returns the signing certificate.
  """
  def get_signing_certificate(client, input, options \\ []) do
    request(client, "GetSigningCertificate", input, options)
  end

  @doc """
  Gets the UI Customization information for a particular app client's app UI, if
  there is something set.

  If nothing is set for the particular client, but there is an existing pool level
  customization (app `clientId` will be `ALL`), then that is returned. If nothing
  is present, then an empty shape is returned.
  """
  def get_u_i_customization(client, input, options \\ []) do
    request(client, "GetUICustomization", input, options)
  end

  @doc """
  Gets the user attributes and metadata for a user.
  """
  def get_user(client, input, options \\ []) do
    request(client, "GetUser", input, options)
  end

  @doc """
  Gets the user attribute verification code for the specified attribute name.
  """
  def get_user_attribute_verification_code(client, input, options \\ []) do
    request(client, "GetUserAttributeVerificationCode", input, options)
  end

  @doc """
  Gets the user pool multi-factor authentication (MFA) configuration.
  """
  def get_user_pool_mfa_config(client, input, options \\ []) do
    request(client, "GetUserPoolMfaConfig", input, options)
  end

  @doc """
  Signs out users from all devices.

  It also invalidates all refresh tokens issued to a user. The user's current
  access and Id tokens remain valid until their expiry. Access and Id tokens
  expire one hour after they are issued.
  """
  def global_sign_out(client, input, options \\ []) do
    request(client, "GlobalSignOut", input, options)
  end

  @doc """
  Initiates the authentication flow.
  """
  def initiate_auth(client, input, options \\ []) do
    request(client, "InitiateAuth", input, options)
  end

  @doc """
  Lists the devices.
  """
  def list_devices(client, input, options \\ []) do
    request(client, "ListDevices", input, options)
  end

  @doc """
  Lists the groups associated with a user pool.

  Calling this action requires developer credentials.
  """
  def list_groups(client, input, options \\ []) do
    request(client, "ListGroups", input, options)
  end

  @doc """
  Lists information about all identity providers for a user pool.
  """
  def list_identity_providers(client, input, options \\ []) do
    request(client, "ListIdentityProviders", input, options)
  end

  @doc """
  Lists the resource servers for a user pool.
  """
  def list_resource_servers(client, input, options \\ []) do
    request(client, "ListResourceServers", input, options)
  end

  @doc """
  Lists the tags that are assigned to an Amazon Cognito user pool.

  A tag is a label that you can apply to user pools to categorize and manage them
  in different ways, such as by purpose, owner, environment, or other criteria.

  You can use this action up to 10 times per second, per account.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the user import jobs.
  """
  def list_user_import_jobs(client, input, options \\ []) do
    request(client, "ListUserImportJobs", input, options)
  end

  @doc """
  Lists the clients that have been created for the specified user pool.
  """
  def list_user_pool_clients(client, input, options \\ []) do
    request(client, "ListUserPoolClients", input, options)
  end

  @doc """
  Lists the user pools associated with an AWS account.
  """
  def list_user_pools(client, input, options \\ []) do
    request(client, "ListUserPools", input, options)
  end

  @doc """
  Lists the users in the Amazon Cognito user pool.
  """
  def list_users(client, input, options \\ []) do
    request(client, "ListUsers", input, options)
  end

  @doc """
  Lists the users in the specified group.

  Calling this action requires developer credentials.
  """
  def list_users_in_group(client, input, options \\ []) do
    request(client, "ListUsersInGroup", input, options)
  end

  @doc """
  Resends the confirmation (for confirmation of registration) to a specific user
  in the user pool.
  """
  def resend_confirmation_code(client, input, options \\ []) do
    request(client, "ResendConfirmationCode", input, options)
  end

  @doc """
  Responds to the authentication challenge.
  """
  def respond_to_auth_challenge(client, input, options \\ []) do
    request(client, "RespondToAuthChallenge", input, options)
  end

  @doc """
  Configures actions on detected risks.

  To delete the risk configuration for `UserPoolId` or `ClientId`, pass null
  values for all four configuration types.

  To enable Amazon Cognito advanced security features, update the user pool to
  include the `UserPoolAddOns` key`AdvancedSecurityMode`.
  """
  def set_risk_configuration(client, input, options \\ []) do
    request(client, "SetRiskConfiguration", input, options)
  end

  @doc """
  Sets the UI customization information for a user pool's built-in app UI.

  You can specify app UI customization settings for a single client (with a
  specific `clientId`) or for all clients (by setting the `clientId` to `ALL`). If
  you specify `ALL`, the default configuration will be used for every client that
  has no UI customization set previously. If you specify UI customization settings
  for a particular client, it will no longer fall back to the `ALL` configuration.

  To use this API, your user pool must have a domain associated with it.
  Otherwise, there is no place to host the app's pages, and the service will throw
  an error.
  """
  def set_u_i_customization(client, input, options \\ []) do
    request(client, "SetUICustomization", input, options)
  end

  @doc """
  Set the user's multi-factor authentication (MFA) method preference, including
  which MFA factors are enabled and if any are preferred.

  Only one factor can be set as preferred. The preferred MFA factor will be used
  to authenticate a user if multiple factors are enabled. If multiple options are
  enabled and no preference is set, a challenge to choose an MFA option will be
  returned during sign in.
  """
  def set_user_m_f_a_preference(client, input, options \\ []) do
    request(client, "SetUserMFAPreference", input, options)
  end

  @doc """
  Set the user pool multi-factor authentication (MFA) configuration.
  """
  def set_user_pool_mfa_config(client, input, options \\ []) do
    request(client, "SetUserPoolMfaConfig", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.

  You can't use it to configure TOTP software token MFA. To configure either type
  of MFA, use
  [SetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html)
  instead.
  """
  def set_user_settings(client, input, options \\ []) do
    request(client, "SetUserSettings", input, options)
  end

  @doc """
  Registers the user in the specified user pool and creates a user name, password,
  and user attributes.
  """
  def sign_up(client, input, options \\ []) do
    request(client, "SignUp", input, options)
  end

  @doc """
  Starts the user import.
  """
  def start_user_import_job(client, input, options \\ []) do
    request(client, "StartUserImportJob", input, options)
  end

  @doc """
  Stops the user import job.
  """
  def stop_user_import_job(client, input, options \\ []) do
    request(client, "StopUserImportJob", input, options)
  end

  @doc """
  Assigns a set of tags to an Amazon Cognito user pool.

  A tag is a label that you can use to categorize and manage user pools in
  different ways, such as by purpose, owner, environment, or other criteria.

  Each tag consists of a key and value, both of which you define. A key is a
  general category for more specific values. For example, if you have two versions
  of a user pool, one for testing and another for production, you might assign an
  `Environment` tag key to both user pools. The value of this key might be `Test`
  for one user pool and `Production` for the other.

  Tags are useful for cost tracking and access control. You can activate your tags
  so that they appear on the Billing and Cost Management console, where you can
  track the costs associated with your user pools. In an IAM policy, you can
  constrain permissions for user pools based on specific tags or tag values.

  You can use this action up to 5 times per second, per account. A user pool can
  have as many as 50 tags.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from an Amazon Cognito user pool.

  You can use this action up to 5 times per second, per account
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Provides the feedback for an authentication event whether it was from a valid
  user or not.

  This feedback is used for improving the risk evaluation decision for the user
  pool as part of Amazon Cognito advanced security.
  """
  def update_auth_event_feedback(client, input, options \\ []) do
    request(client, "UpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status.
  """
  def update_device_status(client, input, options \\ []) do
    request(client, "UpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified group with the specified attributes.

  Calling this action requires developer credentials.

  If you don't provide a value for an attribute, it will be set to the default
  value.
  """
  def update_group(client, input, options \\ []) do
    request(client, "UpdateGroup", input, options)
  end

  @doc """
  Updates identity provider information for a user pool.
  """
  def update_identity_provider(client, input, options \\ []) do
    request(client, "UpdateIdentityProvider", input, options)
  end

  @doc """
  Updates the name and scopes of resource server.

  All other fields are read-only.

  If you don't provide a value for an attribute, it will be set to the default
  value.
  """
  def update_resource_server(client, input, options \\ []) do
    request(client, "UpdateResourceServer", input, options)
  end

  @doc """
  Allows a user to update a specific attribute (one at a time).
  """
  def update_user_attributes(client, input, options \\ []) do
    request(client, "UpdateUserAttributes", input, options)
  end

  @doc """
  Updates the specified user pool with the specified attributes.

  You can get a list of the current user pool settings using
  [DescribeUserPool](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html).

  If you don't provide a value for an attribute, it will be set to the default
  value.
  """
  def update_user_pool(client, input, options \\ []) do
    request(client, "UpdateUserPool", input, options)
  end

  @doc """
  Updates the specified user pool app client with the specified attributes.

  You can get a list of the current user pool app client settings using
  [DescribeUserPoolClient](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html).

  If you don't provide a value for an attribute, it will be set to the default
  value.
  """
  def update_user_pool_client(client, input, options \\ []) do
    request(client, "UpdateUserPoolClient", input, options)
  end

  @doc """
  Updates the Secure Sockets Layer (SSL) certificate for the custom domain for
  your user pool.

  You can use this operation to provide the Amazon Resource Name (ARN) of a new
  certificate to Amazon Cognito. You cannot use it to change the domain for a user
  pool.

  A custom domain is used to host the Amazon Cognito hosted UI, which provides
  sign-up and sign-in pages for your application. When you set up a custom domain,
  you provide a certificate that you manage with AWS Certificate Manager (ACM).
  When necessary, you can use this operation to change the certificate that you
  applied to your custom domain.

  Usually, this is unnecessary following routine certificate renewal with ACM.
  When you renew your existing certificate in ACM, the ARN for your certificate
  remains the same, and your custom domain uses the new certificate automatically.

  However, if you replace your existing certificate with a new one, ACM gives the
  new certificate a new ARN. To apply the new certificate to your custom domain,
  you must provide this ARN to Amazon Cognito.

  When you add your new certificate in ACM, you must choose US East (N. Virginia)
  as the AWS Region.

  After you submit your request, Amazon Cognito requires up to 1 hour to
  distribute your new certificate to your custom domain.

  For more information about adding a custom domain to your user pool, see [Using Your Own Domain for the Hosted
  UI](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).
  """
  def update_user_pool_domain(client, input, options \\ []) do
    request(client, "UpdateUserPoolDomain", input, options)
  end

  @doc """
  Use this API to register a user's entered TOTP code and mark the user's software
  token MFA status as "verified" if successful.

  The request takes an access token or a session string, but not both.
  """
  def verify_software_token(client, input, options \\ []) do
    request(client, "VerifySoftwareToken", input, options)
  end

  @doc """
  Verifies the specified user attributes in the user pool.
  """
  def verify_user_attribute(client, input, options \\ []) do
    request(client, "VerifyUserAttribute", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "cognito-idp"}
    host = build_host("cognito-idp", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSCognitoIdentityProviderService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
