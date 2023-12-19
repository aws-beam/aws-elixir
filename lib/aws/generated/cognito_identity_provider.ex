# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoIdentityProvider do
  @moduledoc """
  With the Amazon Cognito user pools API, you can configure user pools and
  authenticate users.

  To authenticate users from third-party identity providers (IdPs) in this API,
  you can [link IdP users to native user profiles](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).
  Learn more about the authentication and authorization of federated users at
  [Adding user pool sign-in through a third party](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html)
  and in the [User pool federation endpoints and hosted UI reference](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html).

  This API reference provides detailed information about API operations and object
  types in Amazon Cognito.

  Along with resource management operations, the Amazon Cognito user pools API
  includes classes of operations and authorization models for client-side and
  server-side authentication of users. You can interact with operations in the
  Amazon Cognito user pools API as any of the following subjects.

    1. An administrator who wants to configure user pools, app clients,
  users, groups, or other user pool functions.

    2. A server-side app, like a web application, that wants to use its
  Amazon Web Services privileges to manage, authenticate, or authorize a user.

    3. A client-side app, like a mobile app, that wants to make
  unauthenticated requests to manage, authenticate, or authorize a user.

  For more information, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  in the *Amazon Cognito Developer Guide*.

  With your Amazon Web Services SDK, you can build the logic to support
  operational flows in every use case for this API. You can also make direct REST
  API requests to [Amazon Cognito user pools service endpoints](https://docs.aws.amazon.com/general/latest/gr/cognito_identity.html#cognito_identity_your_user_pools_region).
  The following links can get you started with the `CognitoIdentityProvider`
  client in other supported Amazon Web Services SDKs.

    * [Amazon Web Services Command Line Interface](https://docs.aws.amazon.com/cli/latest/reference/cognito-idp/index.html#cli-aws-cognito-idp)

    * [Amazon Web Services SDK for .NET](https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/CognitoIdentityProvider/TCognitoIdentityProviderClient.html)

    * [Amazon Web Services SDK for C++](https://sdk.amazonaws.com/cpp/api/LATEST/aws-cpp-sdk-cognito-idp/html/class_aws_1_1_cognito_identity_provider_1_1_cognito_identity_provider_client.html)

    * [Amazon Web Services SDK for Go](https://docs.aws.amazon.com/sdk-for-go/api/service/cognitoidentityprovider/#CognitoIdentityProvider)

    * [Amazon Web Services SDK for Java V2](https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/services/cognitoidentityprovider/CognitoIdentityProviderClient.html)

    * [Amazon Web Services SDK for JavaScript](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/CognitoIdentityServiceProvider.html)

    * [Amazon Web Services SDK for PHP V3](https://docs.aws.amazon.com/aws-sdk-php/v3/api/api-cognito-idp-2016-04-18.html)

    * [Amazon Web Services SDK for Python](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/cognito-idp.html)

    * [Amazon Web Services SDK for Ruby V3](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/CognitoIdentityProvider/Client.html)

  To get started with an Amazon Web Services SDK, see [Tools to Build on Amazon Web Services](http://aws.amazon.com/developer/tools/). For example actions and
  scenarios, see [Code examples for Amazon Cognito Identity Provider using Amazon Web Services
  SDKs](https://docs.aws.amazon.com/cognito/latest/developerguide/service_code_examples_cognito-identity-provider.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def add_custom_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddCustomAttributes", input, options)
  end

  @doc """
  Adds a user to a group.

  A user who is in a group can present a preferred-role claim to an identity pool,
  and populates a `cognito:groups` claim to their access and identity tokens.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_add_user_to_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminAddUserToGroup", input, options)
  end

  @doc """
  This IAM-authenticated API operation provides a code that Amazon Cognito sent to
  your user when they signed up in your user pool.

  After your user enters their code, they confirm ownership of the email address
  or phone number that they provided, and their user account becomes active.
  Depending on your user pool configuration, your users will receive their
  confirmation code in an email or SMS message.

  Local users who signed up in your user pool are the only type of user who can
  confirm sign-up with a code. Users who federate through an external identity
  provider (IdP) have already been confirmed by their IdP. Administrator-created
  users confirm their accounts when they respond to their invitation email message
  and choose a password.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_confirm_sign_up(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminConfirmSignUp", input, options)
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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.

  This message is based on a template that you configured in your call to create
  or update a user pool. This template includes your custom sign-up instructions
  and placeholders for user name and temporary password.

  Alternatively, you can call `AdminCreateUser` with `SUPPRESS` for the
  `MessageAction` parameter, and Amazon Cognito won't send any email.

  In either case, the user will be in the `FORCE_CHANGE_PASSWORD` state until they
  sign in and change their password.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_create_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminCreateUser", input, options)
  end

  @doc """
  Deletes a user as an administrator.

  Works on any user.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_delete_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminDeleteUser", input, options)
  end

  @doc """
  Deletes the user attributes in a user pool as an administrator.

  Works on any user.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_delete_user_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminDeleteUserAttributes", input, options)
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
  [AdminLinkProviderForUser](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminLinkProviderForUser.html).  The `ProviderName` must match the value specified when creating an IdP for the
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

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_disable_provider_for_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminDisableProviderForUser", input, options)
  end

  @doc """
  Deactivates a user and revokes all access tokens for the user.

  A deactivated user can't sign in, but still appears in the responses to
  `GetUser` and `ListUsers` API requests.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_disable_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminDisableUser", input, options)
  end

  @doc """
  Enables the specified user as an administrator.

  Works on any user.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_enable_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminEnableUser", input, options)
  end

  @doc """
  Forgets the device, as an administrator.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_forget_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminForgetDevice", input, options)
  end

  @doc """
  Gets the device, as an administrator.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_get_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminGetDevice", input, options)
  end

  @doc """
  Gets the specified user by user name in a user pool as an administrator.

  Works on any user.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_get_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminGetUser", input, options)
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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_initiate_auth(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminInitiateAuth", input, options)
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

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_link_provider_for_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminLinkProviderForUser", input, options)
  end

  @doc """
  Lists devices, as an administrator.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_list_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminListDevices", input, options)
  end

  @doc """
  Lists the groups that a user belongs to.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_list_groups_for_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminListGroupsForUser", input, options)
  end

  @doc """
  A history of user activity and any risks detected as part of Amazon Cognito
  advanced security.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_list_user_auth_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminListUserAuthEvents", input, options)
  end

  @doc """
  Removes the specified user from the specified group.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_remove_user_from_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminRemoveUserFromGroup", input, options)
  end

  @doc """
  Resets the specified user's password in a user pool as an administrator.

  Works on any user.

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Deactivates a user's password, requiring them to change it. If a user tries to
  sign in after the API is called, Amazon Cognito responds with a
  `PasswordResetRequiredException` error. Your app must then perform the actions
  that reset your user's password: the forgot-password flow. In addition, if the
  user pool has phone verification selected and a verified phone number exists for
  the user, or if email verification is selected and a verified email exists for
  the user, calling this API will also result in sending a message to the end user
  with the code to change their password.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_reset_user_password(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminResetUserPassword", input, options)
  end

  @doc """
  Some API operations in a user pool generate a challenge, like a prompt for an
  MFA code, for device authentication that bypasses MFA, or for a custom
  authentication challenge.

  An `AdminRespondToAuthChallenge` API request provides the answer to that
  challenge, like a code or a secure remote password (SRP). The parameters of a
  response to an authentication challenge vary with the type of challenge.

  For more information about custom authentication challenges, see [Custom authentication challenge Lambda
  triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_respond_to_auth_challenge(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminRespondToAuthChallenge", input, options)
  end

  @doc """
  The user's multi-factor authentication (MFA) preference, including which MFA
  options are activated, and if any are preferred.

  Only one factor can be set as preferred. The preferred MFA factor will be used
  to authenticate a user if multiple factors are activated. If multiple options
  are activated and no preference is set, a challenge to choose an MFA option will
  be returned during sign-in.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_set_user_mfa_preference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminSetUserMFAPreference", input, options)
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

  `AdminSetUserPassword` can set a password for the user profile that Amazon
  Cognito creates for third-party federated users. When you set a password, the
  federated user's status changes from `EXTERNAL_PROVIDER` to `CONFIRMED`. A user
  in this state can sign in as a federated user, and initiate authentication flows
  in the API like a linked native user. They can also modify their password and
  attributes in token-authenticated API requests like `ChangePassword` and
  `UpdateUserAttributes`. As a best security practice and to keep users in sync
  with your external IdP, don't set passwords on federated user profiles. To set
  up a federated user for native sign-in with a linked native user, refer to
  [Linking federated users to an existing user profile](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_set_user_password(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminSetUserPassword", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.

  You can't use it to configure time-based one-time password (TOTP) software token
  MFA. To configure either type of MFA, use
  [AdminSetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminSetUserMFAPreference.html) instead.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_set_user_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminSetUserSettings", input, options)
  end

  @doc """
  Provides feedback for an authentication event indicating if it was from a valid
  user.

  This feedback is used for improving the risk evaluation decision for the user
  pool as part of Amazon Cognito advanced security.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_update_auth_event_feedback(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminUpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status as an administrator.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_update_device_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminUpdateDeviceStatus", input, options)
  end

  @doc """
  This action might generate an SMS text message.

  Starting June 1, 2021, US telecom carriers require you to register an
  origination phone number before you can send SMS messages to US phone numbers.
  If you use SMS text messages in Amazon Cognito, you must register a phone number
  with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito
  users who must receive SMS messages might not be able to sign up, activate their
  accounts, or sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox
  mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Updates the specified user's attributes, including developer attributes, as an
  administrator. Works on any user. To delete an attribute from your user, submit
  the attribute in your API request with a blank value.

  For custom attributes, you must prepend the `custom:` prefix to the attribute
  name.

  In addition to updating user attributes, this API can also be used to mark phone
  and email as verified.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_update_user_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminUpdateUserAttributes", input, options)
  end

  @doc """
  Invalidates the identity, access, and refresh tokens that Amazon Cognito issued
  to a user.

  Call this operation with your administrative credentials when your user signs
  out of your app. This results in the following behavior.

    * Amazon Cognito no longer accepts *token-authorized* user
  operations that you authorize with a signed-out user's access tokens. For more
  information, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  Amazon Cognito returns an `Access Token has been revoked` error when your app
  attempts to authorize a user pools API request with a revoked access token that
  contains the scope `aws.cognito.signin.user.admin`.

    * Amazon Cognito no longer accepts a signed-out user's ID token in a
  [GetId
  ](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html)
  request to an identity pool with `ServerSideTokenCheck` enabled for its user
  pool IdP configuration in
  [CognitoIdentityProvider](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html).     * Amazon Cognito no longer accepts a signed-out user's refresh
  tokens in refresh requests.

  Other requests might be valid until your user's token expires.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def admin_user_global_sign_out(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdminUserGlobalSignOut", input, options)
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

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def associate_software_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateSoftwareToken", input, options)
  end

  @doc """
  Changes the password for a specified user in a user pool.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def change_password(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ChangePassword", input, options)
  end

  @doc """
  Confirms tracking of the device.

  This API call is the call that begins device tracking.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def confirm_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmDevice", input, options)
  end

  @doc """
  Allows a user to enter a confirmation code to reset a forgotten password.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def confirm_forgot_password(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmForgotPassword", input, options)
  end

  @doc """
  This public API operation provides a code that Amazon Cognito sent to your user
  when they signed up in your user pool via the
  [SignUp](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SignUp.html) API operation.

  After your user enters their code, they confirm ownership of the email address
  or phone number that they provided, and their user account becomes active.
  Depending on your user pool configuration, your users will receive their
  confirmation code in an email or SMS message.

  Local users who signed up in your user pool are the only type of user who can
  confirm sign-up with a code. Users who federate through an external identity
  provider (IdP) have already been confirmed by their IdP. Administrator-created
  users, users created with the
  [AdminCreateUser](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminCreateUser.html)
  API operation, confirm their accounts when they respond to their invitation
  email message and choose a password. They do not receive a confirmation code.
  Instead, they receive a temporary password.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def confirm_sign_up(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConfirmSignUp", input, options)
  end

  @doc """
  Creates a new group in the specified user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def create_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGroup", input, options)
  end

  @doc """
  Creates an IdP for a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def create_identity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIdentityProvider", input, options)
  end

  @doc """
  Creates a new OAuth2.0 resource server and defines custom scopes within it.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def create_resource_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResourceServer", input, options)
  end

  @doc """
  Creates a user import job.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def create_user_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserImportJob", input, options)
  end

  @doc """
  This action might generate an SMS text message.

  Starting June 1, 2021, US telecom carriers require you to register an
  origination phone number before you can send SMS messages to US phone numbers.
  If you use SMS text messages in Amazon Cognito, you must register a phone number
  with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito
  users who must receive SMS messages might not be able to sign up, activate their
  accounts, or sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox
  mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Creates a new Amazon Cognito user pool and sets the password policy for the
  pool.

  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def create_user_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserPool", input, options)
  end

  @doc """
  Creates the user pool client.

  When you create a new user pool client, token revocation is automatically
  activated. For more information about revoking tokens, see
  [RevokeToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html).  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def create_user_pool_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserPoolClient", input, options)
  end

  @doc """
  Creates a new domain for a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def create_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserPoolDomain", input, options)
  end

  @doc """
  Deletes a group.

  Calling this action requires developer credentials.
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGroup", input, options)
  end

  @doc """
  Deletes an IdP for a user pool.
  """
  def delete_identity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIdentityProvider", input, options)
  end

  @doc """
  Deletes a resource server.
  """
  def delete_resource_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceServer", input, options)
  end

  @doc """
  Allows a user to delete their own user profile.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Deletes the attributes for a user.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def delete_user_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserAttributes", input, options)
  end

  @doc """
  Deletes the specified Amazon Cognito user pool.
  """
  def delete_user_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserPool", input, options)
  end

  @doc """
  Allows the developer to delete the user pool client.
  """
  def delete_user_pool_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserPoolClient", input, options)
  end

  @doc """
  Deletes a domain for a user pool.
  """
  def delete_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserPoolDomain", input, options)
  end

  @doc """
  Gets information about a specific IdP.
  """
  def describe_identity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIdentityProvider", input, options)
  end

  @doc """
  Describes a resource server.
  """
  def describe_resource_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourceServer", input, options)
  end

  @doc """
  Describes the risk configuration.
  """
  def describe_risk_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRiskConfiguration", input, options)
  end

  @doc """
  Describes the user import job.
  """
  def describe_user_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserImportJob", input, options)
  end

  @doc """
  Returns the configuration information and metadata of the specified user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def describe_user_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserPool", input, options)
  end

  @doc """
  Client method for returning the configuration information and metadata of the
  specified user pool app client.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def describe_user_pool_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserPoolClient", input, options)
  end

  @doc """
  Gets information about a domain.
  """
  def describe_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserPoolDomain", input, options)
  end

  @doc """
  Forgets the specified device.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def forget_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ForgetDevice", input, options)
  end

  @doc """
  Calling this API causes a message to be sent to the end user with a confirmation
  code that is required to change the user's password.

  For the `Username` parameter, you can use the username or user alias. The method
  used to send the confirmation code is sent according to the specified
  AccountRecoverySetting. For more information, see [Recovering User Accounts](https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html)
  in the *Amazon Cognito Developer Guide*. To use the confirmation code for
  resetting the password, call
  [ConfirmForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html).  If neither a verified phone number nor a verified email exists, this API returns
  `InvalidParameterException`. If your app client has a client secret and you
  don't provide a `SECRET_HASH` parameter, this API returns
  `NotAuthorizedException`.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC
  APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def forgot_password(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ForgotPassword", input, options)
  end

  @doc """
  Gets the header information for the comma-separated value (CSV) file to be used
  as input for the user import job.
  """
  def get_csv_header(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCSVHeader", input, options)
  end

  @doc """
  Gets the device.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def get_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevice", input, options)
  end

  @doc """
  Gets a group.

  Calling this action requires developer credentials.
  """
  def get_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGroup", input, options)
  end

  @doc """
  Gets the specified IdP.
  """
  def get_identity_provider_by_identifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentityProviderByIdentifier", input, options)
  end

  @doc """
  Gets the detailed activity logging configuration for a user pool.
  """
  def get_log_delivery_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLogDeliveryConfiguration", input, options)
  end

  @doc """
  This method takes a user pool ID, and returns the signing certificate.

  The issued certificate is valid for 10 years from the date of issue.

  Amazon Cognito issues and assigns a new signing certificate annually. This
  process returns a new value in the response to `GetSigningCertificate`, but
  doesn't invalidate the original certificate.
  """
  def get_signing_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSigningCertificate", input, options)
  end

  @doc """
  Gets the user interface (UI) Customization information for a particular app
  client's app UI, if any such information exists for the client.

  If nothing is set for the particular client, but there is an existing pool level
  customization (the app `clientId` is `ALL`), then that information is returned.
  If nothing is present, then an empty shape is returned.
  """
  def get_ui_customization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUICustomization", input, options)
  end

  @doc """
  Gets the user attributes and metadata for a user.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def get_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUser", input, options)
  end

  @doc """
  Generates a user attribute verification code for the specified attribute name.

  Sends a message to a user with a code that they must return in a
  VerifyUserAttribute request.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def get_user_attribute_verification_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUserAttributeVerificationCode", input, options)
  end

  @doc """
  Gets the user pool multi-factor authentication (MFA) configuration.
  """
  def get_user_pool_mfa_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUserPoolMfaConfig", input, options)
  end

  @doc """
  Invalidates the identity, access, and refresh tokens that Amazon Cognito issued
  to a user.

  Call this operation when your user signs out of your app. This results in the
  following behavior.

    * Amazon Cognito no longer accepts *token-authorized* user
  operations that you authorize with a signed-out user's access tokens. For more
  information, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

  Amazon Cognito returns an `Access Token has been revoked` error when your app
  attempts to authorize a user pools API request with a revoked access token that
  contains the scope `aws.cognito.signin.user.admin`.

    * Amazon Cognito no longer accepts a signed-out user's ID token in a
  [GetId
  ](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html)
  request to an identity pool with `ServerSideTokenCheck` enabled for its user
  pool IdP configuration in
  [CognitoIdentityProvider](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html).     * Amazon Cognito no longer accepts a signed-out user's refresh
  tokens in refresh requests.

  Other requests might be valid until your user's token expires.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC
  APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def global_sign_out(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GlobalSignOut", input, options)
  end

  @doc """
  Initiates sign-in for a user in the Amazon Cognito user directory.

  You can't sign in a user with a federated IdP with `InitiateAuth`. For more
  information, see [ Adding user pool sign-in through a third party](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html).

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def initiate_auth(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InitiateAuth", input, options)
  end

  @doc """
  Lists the sign-in devices that Amazon Cognito has registered to the current
  user.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def list_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDevices", input, options)
  end

  @doc """
  Lists the groups associated with a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGroups", input, options)
  end

  @doc """
  Lists information about all IdPs for a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_identity_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIdentityProviders", input, options)
  end

  @doc """
  Lists the resource servers for a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_resource_servers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceServers", input, options)
  end

  @doc """
  Lists the tags that are assigned to an Amazon Cognito user pool.

  A tag is a label that you can apply to user pools to categorize and manage them
  in different ways, such as by purpose, owner, environment, or other criteria.

  You can use this action up to 10 times per second, per account.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists user import jobs for a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_user_import_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUserImportJobs", input, options)
  end

  @doc """
  Lists the clients that have been created for the specified user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_user_pool_clients(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUserPoolClients", input, options)
  end

  @doc """
  Lists the user pools associated with an Amazon Web Services account.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_user_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUserPools", input, options)
  end

  @doc """
  Lists users and their basic details in a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  Lists the users in the specified group.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def list_users_in_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsersInGroup", input, options)
  end

  @doc """
  Resends the confirmation (for confirmation of registration) to a specific user
  in the user pool.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def resend_confirmation_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResendConfirmationCode", input, options)
  end

  @doc """
  Some API operations in a user pool generate a challenge, like a prompt for an
  MFA code, for device authentication that bypasses MFA, or for a custom
  authentication challenge.

  A `RespondToAuthChallenge` API request provides the answer to that challenge,
  like a code or a secure remote password (SRP). The parameters of a response to
  an authentication challenge vary with the type of challenge.

  For more information about custom authentication challenges, see [Custom authentication challenge Lambda
  triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def respond_to_auth_challenge(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RespondToAuthChallenge", input, options)
  end

  @doc """
  Revokes all of the access tokens generated by, and at the same time as, the
  specified refresh token.

  After a token is revoked, you can't use the revoked token to access Amazon
  Cognito user APIs, or to authorize access to your resource server.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def revoke_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeToken", input, options)
  end

  @doc """
  Sets up or modifies the detailed activity logging configuration of a user pool.
  """
  def set_log_delivery_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetLogDeliveryConfiguration", input, options)
  end

  @doc """
  Configures actions on detected risks.

  To delete the risk configuration for `UserPoolId` or `ClientId`, pass null
  values for all four configuration types.

  To activate Amazon Cognito advanced security features, update the user pool to
  include the `UserPoolAddOns` key`AdvancedSecurityMode`.
  """
  def set_risk_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetRiskConfiguration", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "SetUICustomization", input, options)
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

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def set_user_mfa_preference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetUserMFAPreference", input, options)
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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def set_user_pool_mfa_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetUserPoolMfaConfig", input, options)
  end

  @doc """
  *This action is no longer supported.* You can use it to configure only SMS MFA.

  You can't use it to configure time-based one-time password (TOTP) software token
  MFA. To configure either type of MFA, use
  [SetUserMFAPreference](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserMFAPreference.html) instead.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC
  APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def set_user_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetUserSettings", input, options)
  end

  @doc """
  Registers the user in the specified user pool and creates a user name, password,
  and user attributes.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def sign_up(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SignUp", input, options)
  end

  @doc """
  Starts the user import.
  """
  def start_user_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartUserImportJob", input, options)
  end

  @doc """
  Stops the user import job.
  """
  def stop_user_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopUserImportJob", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from an Amazon Cognito user pool.

  You can use this action up to 5 times per second, per account.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Provides the feedback for an authentication event, whether it was from a valid
  user or not.

  This feedback is used for improving the risk evaluation decision for the user
  pool as part of Amazon Cognito advanced security.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def update_auth_event_feedback(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAuthEventFeedback", input, options)
  end

  @doc """
  Updates the device status.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def update_device_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified group with the specified attributes.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def update_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGroup", input, options)
  end

  @doc """
  Updates IdP information for a user pool.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def update_identity_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIdentityProvider", input, options)
  end

  @doc """
  Updates the name and scopes of resource server.

  All other fields are read-only.

  If you don't provide a value for an attribute, it is set to the default value.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def update_resource_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateResourceServer", input, options)
  end

  @doc """
  With this operation, your users can update one or more of their attributes with
  their own credentials.

  You authorize this API request with the user's access token. To delete an
  attribute from your user, submit the attribute in your API request with a blank
  value. Custom attribute values in this request must include the `custom:`
  prefix.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).

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
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.
  """
  def update_user_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserAttributes", input, options)
  end

  @doc """
  This action might generate an SMS text message.

  Starting June 1, 2021, US telecom carriers require you to register an
  origination phone number before you can send SMS messages to US phone numbers.
  If you use SMS text messages in Amazon Cognito, you must register a phone number
  with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito
  users who must receive SMS messages might not be able to sign up, activate their
  accounts, or sign in.

  If you have never used SMS text messages with Amazon Cognito or any other Amazon
  Web Service, Amazon Simple Notification Service might place your account in the
  SMS sandbox. In * [sandbox
  mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) *, you can
  send messages only to verified phone numbers. After you test your app while in
  the sandbox environment, you can move out of the sandbox and into production.
  For more information, see [ SMS message settings for Amazon Cognito user pools](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html)
  in the *Amazon Cognito Developer Guide*.

  Updates the specified user pool with the specified attributes. You can get a
  list of the current user pool settings using
  [DescribeUserPool](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html).  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def update_user_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserPool", input, options)
  end

  @doc """
  Updates the specified user pool app client with the specified attributes.

  You can get a list of the current user pool app client settings using
  [DescribeUserPoolClient](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html).  If you don't provide a value for an attribute, Amazon Cognito sets it to its
  default value.

  You can also use this operation to enable token revocation for user pool
  clients. For more information about revoking tokens, see
  [RevokeToken](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RevokeToken.html).

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def update_user_pool_client(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserPoolClient", input, options)
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

  Amazon Cognito evaluates Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you must use IAM
  credentials to authorize requests, and you must grant yourself the corresponding
  IAM permission in a policy.

  ## Learn more

     [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)

     [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  """
  def update_user_pool_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserPoolDomain", input, options)
  end

  @doc """
  Use this API to register a user's entered time-based one-time password (TOTP)
  code and mark the user's software token MFA status as "verified" if successful.

  The request takes an access token or a session string, but not both.

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def verify_software_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "VerifySoftwareToken", input, options)
  end

  @doc """
  Verifies the specified user attributes in the user pool.

  If your user pool requires verification before Amazon Cognito updates the
  attribute value, VerifyUserAttribute updates the affected attribute to its
  pending value. For more information, see [
  UserAttributeUpdateSettingsType](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_UserAttributeUpdateSettingsType.html).

  Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in
  requests for this API operation. For this operation, you can't use IAM
  credentials to authorize requests, and you can't grant IAM permissions in
  policies. For more information about authorization models in Amazon Cognito, see
  [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  """
  def verify_user_attribute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "VerifyUserAttribute", input, options)
  end
end
