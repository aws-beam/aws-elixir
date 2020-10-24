# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.STS do
  @moduledoc """
  AWS Security Token Service

  AWS Security Token Service (STS) enables you to request temporary,
  limited-privilege credentials for AWS Identity and Access Management (IAM)
  users or for users that you authenticate (federated users). This guide
  provides descriptions of the STS API. For more information about using this
  service, see [Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).
  """

  @doc """
  Returns a set of temporary security credentials that you can use to access
  AWS resources that you might not normally have access to. These temporary
  credentials consist of an access key ID, a secret access key, and a
  security token. Typically, you use `AssumeRole` within your account or for
  cross-account access. For a comparison of `AssumeRole` with other API
  operations that produce temporary credentials, see [Requesting Temporary
  Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the AWS STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*.

  <important> You cannot use AWS account root user credentials to call
  `AssumeRole`. You must use credentials for an IAM user or an IAM role to
  call `AssumeRole`.

  </important> For cross-account access, imagine that you own multiple
  accounts and need to access resources in each account. You could create
  long-term credentials in each account to access those resources. However,
  managing all those credentials and remembering which one can access which
  account can be time consuming. Instead, you can create one set of long-term
  credentials in one account. Then use temporary security credentials to
  access all the other accounts by assuming roles in those accounts. For more
  information about roles, see [IAM
  Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in
  the *IAM User Guide*.

  **Session Duration**

  By default, the temporary security credentials created by `AssumeRole` last
  for one hour. However, you can use the optional `DurationSeconds` parameter
  to specify the duration of your session. You can provide a value from 900
  seconds (15 minutes) up to the maximum session duration setting for the
  role. This setting can have a value from 1 hour to 12 hours. To learn how
  to view the maximum value for your role, see [View the Maximum Session
  Duration Setting for a
  Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
  in the *IAM User Guide*. The maximum session duration limit applies when
  you use the `AssumeRole*` API operations or the `assume-role*` CLI
  commands. However the limit does not apply when you use those operations to
  create a console URL. For more information, see [Using IAM
  Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
  in the *IAM User Guide*.

  **Permissions**

  The temporary security credentials created by `AssumeRole` can be used to
  make API calls to any AWS service with the following exception: You cannot
  call the AWS STS `GetFederationToken` or `GetSessionToken` API operations.

  (Optional) You can pass inline or managed [session
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies can't exceed 2,048 characters. Passing
  policies to this operation returns new temporary credentials. The resulting
  session's permissions are the intersection of the role's identity-based
  policy and the session policies. You can use the role's temporary
  credentials in subsequent AWS API calls to access resources in the account
  that owns the role. You cannot use session policies to grant more
  permissions than those allowed by the identity-based policy of the role
  that is being assumed. For more information, see [Session
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  in the *IAM User Guide*.

  To assume a role from a different account, your AWS account must be trusted
  by the role. The trust relationship is defined in the role's trust policy
  when the role is created. That trust policy states which accounts are
  allowed to delegate that access to users in the account.

  A user who wants to access a role in a different account must also have
  permissions that are delegated from the user account administrator. The
  administrator must attach a policy that allows the user to call
  `AssumeRole` for the ARN of the role in the other account. If the user is
  in the same account as the role, then you can do either of the following:

  <ul> <li> Attach a policy to the user (identical to the previous user in a
  different account).

  </li> <li> Add the user as a principal directly in the role's trust policy.

  </li> </ul> In this case, the trust policy acts as an IAM resource-based
  policy. Users in the same account as the role do not need explicit
  permission to assume the role. For more information about trust policies
  and resource-based policies, see [IAM
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
  in the *IAM User Guide*.

  **Tags**

  (Optional) You can pass tag key-value pairs to your session. These tags are
  called session tags. For more information about session tags, see [Passing
  Session Tags in
  STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
  in the *IAM User Guide*.

  An administrator must grant you the permissions necessary to pass session
  tags. The administrator can also create granular permissions to allow you
  to pass only specific session tags. For more information, see [Tutorial:
  Using Tags for Attribute-Based Access
  Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html)
  in the *IAM User Guide*.

  You can set the session tags as transitive. Transitive tags persist during
  role chaining. For more information, see [Chaining Roles with Session
  Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining)
  in the *IAM User Guide*.

  **Using MFA with AssumeRole**

  (Optional) You can include multi-factor authentication (MFA) information
  when you call `AssumeRole`. This is useful for cross-account scenarios to
  ensure that the user that assumes the role has been authenticated with an
  AWS MFA device. In that scenario, the trust policy of the role being
  assumed includes a condition that tests for MFA authentication. If the
  caller does not include valid MFA information, the request to assume the
  role is denied. The condition in a trust policy that tests for MFA
  authentication might look like the following example.

  `"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}`

  For more information, see [Configuring MFA-Protected API
  Access](https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html)
  in the *IAM User Guide* guide.

  To use MFA with `AssumeRole`, you pass values for the `SerialNumber` and
  `TokenCode` parameters. The `SerialNumber` value identifies the user's
  hardware or virtual MFA device. The `TokenCode` is the time-based one-time
  password (TOTP) that the MFA device produces.
  """
  def assume_role(client, input, options \\ []) do
    request(client, "AssumeRole", input, options)
  end

  @doc """
  Returns a set of temporary security credentials for users who have been
  authenticated via a SAML authentication response. This operation provides a
  mechanism for tying an enterprise identity store or directory to role-based
  AWS access without user-specific credentials or configuration. For a
  comparison of `AssumeRoleWithSAML` with the other API operations that
  produce temporary credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the AWS STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*.

  The temporary security credentials returned by this operation consist of an
  access key ID, a secret access key, and a security token. Applications can
  use these temporary security credentials to sign calls to AWS services.

  **Session Duration**

  By default, the temporary security credentials created by
  `AssumeRoleWithSAML` last for one hour. However, you can use the optional
  `DurationSeconds` parameter to specify the duration of your session. Your
  role session lasts for the duration that you specify, or until the time
  specified in the SAML authentication response's `SessionNotOnOrAfter`
  value, whichever is shorter. You can provide a `DurationSeconds` value from
  900 seconds (15 minutes) up to the maximum session duration setting for the
  role. This setting can have a value from 1 hour to 12 hours. To learn how
  to view the maximum value for your role, see [View the Maximum Session
  Duration Setting for a
  Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
  in the *IAM User Guide*. The maximum session duration limit applies when
  you use the `AssumeRole*` API operations or the `assume-role*` CLI
  commands. However the limit does not apply when you use those operations to
  create a console URL. For more information, see [Using IAM
  Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
  in the *IAM User Guide*.

  **Permissions**

  The temporary security credentials created by `AssumeRoleWithSAML` can be
  used to make API calls to any AWS service with the following exception: you
  cannot call the STS `GetFederationToken` or `GetSessionToken` API
  operations.

  (Optional) You can pass inline or managed [session
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies can't exceed 2,048 characters. Passing
  policies to this operation returns new temporary credentials. The resulting
  session's permissions are the intersection of the role's identity-based
  policy and the session policies. You can use the role's temporary
  credentials in subsequent AWS API calls to access resources in the account
  that owns the role. You cannot use session policies to grant more
  permissions than those allowed by the identity-based policy of the role
  that is being assumed. For more information, see [Session
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  in the *IAM User Guide*.

  Calling `AssumeRoleWithSAML` does not require the use of AWS security
  credentials. The identity of the caller is validated by using keys in the
  metadata document that is uploaded for the SAML provider entity for your
  identity provider.

  <important> Calling `AssumeRoleWithSAML` can result in an entry in your AWS
  CloudTrail logs. The entry includes the value in the `NameID` element of
  the SAML assertion. We recommend that you use a `NameIDType` that is not
  associated with any personally identifiable information (PII). For example,
  you could instead use the persistent identifier
  (`urn:oasis:names:tc:SAML:2.0:nameid-format:persistent`).

  </important> **Tags**

  (Optional) You can configure your IdP to pass attributes into your SAML
  assertion as session tags. Each session tag consists of a key name and an
  associated value. For more information about session tags, see [Passing
  Session Tags in
  STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
  in the *IAM User Guide*.

  You can pass up to 50 session tags. The plain text session tag keys can’t
  exceed 128 characters and the values can’t exceed 256 characters. For these
  and additional limits, see [IAM and STS Character
  Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length)
  in the *IAM User Guide*.

  <note> An AWS conversion compresses the passed session policies and session
  tags into a packed binary format that has a separate limit. Your request
  can fail for this limit even if your plain text meets the other
  requirements. The `PackedPolicySize` response element indicates by
  percentage how close the policies and tags for your request are to the
  upper size limit.

  </note> You can pass a session tag with the same key as a tag that is
  attached to the role. When you do, session tags override the role's tags
  with the same key.

  An administrator must grant you the permissions necessary to pass session
  tags. The administrator can also create granular permissions to allow you
  to pass only specific session tags. For more information, see [Tutorial:
  Using Tags for Attribute-Based Access
  Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html)
  in the *IAM User Guide*.

  You can set the session tags as transitive. Transitive tags persist during
  role chaining. For more information, see [Chaining Roles with Session
  Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining)
  in the *IAM User Guide*.

  **SAML Configuration**

  Before your application can call `AssumeRoleWithSAML`, you must configure
  your SAML identity provider (IdP) to issue the claims required by AWS.
  Additionally, you must use AWS Identity and Access Management (IAM) to
  create a SAML provider entity in your AWS account that represents your
  identity provider. You must also create an IAM role that specifies this
  SAML provider in its trust policy.

  For more information, see the following resources:

  <ul> <li> [About SAML 2.0-based
  Federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html)
  in the *IAM User Guide*.

  </li> <li> [Creating SAML Identity
  Providers](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html)
  in the *IAM User Guide*.

  </li> <li> [Configuring a Relying Party and
  Claims](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html)
  in the *IAM User Guide*.

  </li> <li> [Creating a Role for SAML 2.0
  Federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html)
  in the *IAM User Guide*.

  </li> </ul>
  """
  def assume_role_with_s_a_m_l(client, input, options \\ []) do
    request(client, "AssumeRoleWithSAML", input, options)
  end

  @doc """
  Returns a set of temporary security credentials for users who have been
  authenticated in a mobile or web application with a web identity provider.
  Example providers include Amazon Cognito, Login with Amazon, Facebook,
  Google, or any OpenID Connect-compatible identity provider.

  <note> For mobile applications, we recommend that you use Amazon Cognito.
  You can use Amazon Cognito with the [AWS SDK for iOS Developer
  Guide](http://aws.amazon.com/sdkforios/) and the [AWS SDK for Android
  Developer Guide](http://aws.amazon.com/sdkforandroid/) to uniquely identify
  a user. You can also supply the user with a consistent identity throughout
  the lifetime of an application.

  To learn more about Amazon Cognito, see [Amazon Cognito
  Overview](https://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-auth.html#d0e840)
  in *AWS SDK for Android Developer Guide* and [Amazon Cognito
  Overview](https://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-auth.html#d0e664)
  in the *AWS SDK for iOS Developer Guide*.

  </note> Calling `AssumeRoleWithWebIdentity` does not require the use of AWS
  security credentials. Therefore, you can distribute an application (for
  example, on mobile devices) that requests temporary security credentials
  without including long-term AWS credentials in the application. You also
  don't need to deploy server-based proxy services that use long-term AWS
  credentials. Instead, the identity of the caller is validated by using a
  token from the web identity provider. For a comparison of
  `AssumeRoleWithWebIdentity` with the other API operations that produce
  temporary credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the AWS STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*.

  The temporary security credentials returned by this API consist of an
  access key ID, a secret access key, and a security token. Applications can
  use these temporary security credentials to sign calls to AWS service API
  operations.

  **Session Duration**

  By default, the temporary security credentials created by
  `AssumeRoleWithWebIdentity` last for one hour. However, you can use the
  optional `DurationSeconds` parameter to specify the duration of your
  session. You can provide a value from 900 seconds (15 minutes) up to the
  maximum session duration setting for the role. This setting can have a
  value from 1 hour to 12 hours. To learn how to view the maximum value for
  your role, see [View the Maximum Session Duration Setting for a
  Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session)
  in the *IAM User Guide*. The maximum session duration limit applies when
  you use the `AssumeRole*` API operations or the `assume-role*` CLI
  commands. However the limit does not apply when you use those operations to
  create a console URL. For more information, see [Using IAM
  Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
  in the *IAM User Guide*.

  **Permissions**

  The temporary security credentials created by `AssumeRoleWithWebIdentity`
  can be used to make API calls to any AWS service with the following
  exception: you cannot call the STS `GetFederationToken` or
  `GetSessionToken` API operations.

  (Optional) You can pass inline or managed [session
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies can't exceed 2,048 characters. Passing
  policies to this operation returns new temporary credentials. The resulting
  session's permissions are the intersection of the role's identity-based
  policy and the session policies. You can use the role's temporary
  credentials in subsequent AWS API calls to access resources in the account
  that owns the role. You cannot use session policies to grant more
  permissions than those allowed by the identity-based policy of the role
  that is being assumed. For more information, see [Session
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  in the *IAM User Guide*.

  **Tags**

  (Optional) You can configure your IdP to pass attributes into your web
  identity token as session tags. Each session tag consists of a key name and
  an associated value. For more information about session tags, see [Passing
  Session Tags in
  STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
  in the *IAM User Guide*.

  You can pass up to 50 session tags. The plain text session tag keys can’t
  exceed 128 characters and the values can’t exceed 256 characters. For these
  and additional limits, see [IAM and STS Character
  Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length)
  in the *IAM User Guide*.

  <note> An AWS conversion compresses the passed session policies and session
  tags into a packed binary format that has a separate limit. Your request
  can fail for this limit even if your plain text meets the other
  requirements. The `PackedPolicySize` response element indicates by
  percentage how close the policies and tags for your request are to the
  upper size limit.

  </note> You can pass a session tag with the same key as a tag that is
  attached to the role. When you do, the session tag overrides the role tag
  with the same key.

  An administrator must grant you the permissions necessary to pass session
  tags. The administrator can also create granular permissions to allow you
  to pass only specific session tags. For more information, see [Tutorial:
  Using Tags for Attribute-Based Access
  Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html)
  in the *IAM User Guide*.

  You can set the session tags as transitive. Transitive tags persist during
  role chaining. For more information, see [Chaining Roles with Session
  Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining)
  in the *IAM User Guide*.

  **Identities**

  Before your application can call `AssumeRoleWithWebIdentity`, you must have
  an identity token from a supported identity provider and create a role that
  the application can assume. The role that your application assumes must
  trust the identity provider that is associated with the identity token. In
  other words, the identity provider must be specified in the role's trust
  policy.

  <important> Calling `AssumeRoleWithWebIdentity` can result in an entry in
  your AWS CloudTrail logs. The entry includes the
  [Subject](http://openid.net/specs/openid-connect-core-1_0.html#Claims) of
  the provided Web Identity Token. We recommend that you avoid using any
  personally identifiable information (PII) in this field. For example, you
  could instead use a GUID or a pairwise identifier, as [suggested in the
  OIDC
  specification](http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes).

  </important> For more information about how to use web identity federation
  and the `AssumeRoleWithWebIdentity` API, see the following resources:

  <ul> <li> [Using Web Identity Federation API Operations for Mobile
  Apps](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html)
  and [Federation Through a Web-based Identity
  Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).

  </li> <li> [ Web Identity Federation
  Playground](https://aws.amazon.com/blogs/aws/the-aws-web-identity-federation-playground/).
  Walk through the process of authenticating through Login with Amazon,
  Facebook, or Google, getting temporary security credentials, and then using
  those credentials to make a request to AWS.

  </li> <li> [AWS SDK for iOS Developer
  Guide](http://aws.amazon.com/sdkforios/) and [AWS SDK for Android Developer
  Guide](http://aws.amazon.com/sdkforandroid/). These toolkits contain sample
  apps that show how to invoke the identity providers. The toolkits then show
  how to use the information from these providers to get and use temporary
  security credentials.

  </li> <li> [Web Identity Federation with Mobile
  Applications](http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications).
  This article discusses web identity federation and shows an example of how
  to use web identity federation to get access to content in Amazon S3.

  </li> </ul>
  """
  def assume_role_with_web_identity(client, input, options \\ []) do
    request(client, "AssumeRoleWithWebIdentity", input, options)
  end

  @doc """
  Decodes additional information about the authorization status of a request
  from an encoded message returned in response to an AWS request.

  For example, if a user is not authorized to perform an operation that he or
  she has requested, the request returns a `Client.UnauthorizedOperation`
  response (an HTTP 403 response). Some AWS operations additionally return an
  encoded message that can provide details about this authorization failure.

  <note> Only certain AWS operations return an encoded authorization message.
  The documentation for an individual operation indicates whether that
  operation returns an encoded message in addition to returning an HTTP code.

  </note> The message is encoded because the details of the authorization
  status can constitute privileged information that the user who requested
  the operation should not see. To decode an authorization status message, a
  user must be granted permissions via an IAM policy to request the
  `DecodeAuthorizationMessage` (`sts:DecodeAuthorizationMessage`) action.

  The decoded message includes the following type of information:

  <ul> <li> Whether the request was denied due to an explicit deny or due to
  the absence of an explicit allow. For more information, see [Determining
  Whether a Request is Allowed or
  Denied](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow)
  in the *IAM User Guide*.

  </li> <li> The principal who made the request.

  </li> <li> The requested action.

  </li> <li> The requested resource.

  </li> <li> The values of condition keys in the context of the user's
  request.

  </li> </ul>
  """
  def decode_authorization_message(client, input, options \\ []) do
    request(client, "DecodeAuthorizationMessage", input, options)
  end

  @doc """
  Returns the account identifier for the specified access key ID.

  Access keys consist of two parts: an access key ID (for example,
  `AKIAIOSFODNN7EXAMPLE`) and a secret access key (for example,
  `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`). For more information about
  access keys, see [Managing Access Keys for IAM
  Users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
  in the *IAM User Guide*.

  When you pass an access key ID to this operation, it returns the ID of the
  AWS account to which the keys belong. Access key IDs beginning with `AKIA`
  are long-term credentials for an IAM user or the AWS account root user.
  Access key IDs beginning with `ASIA` are temporary credentials that are
  created using STS operations. If the account in the response belongs to
  you, you can sign in as the root user and review your root user access
  keys. Then, you can pull a [credentials
  report](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html)
  to learn which IAM user owns the keys. To learn who requested the temporary
  credentials for an `ASIA` access key, view the STS events in your
  [CloudTrail
  logs](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
  in the *IAM User Guide*.

  This operation does not indicate the state of the access key. The key might
  be active, inactive, or deleted. Active keys might not have permissions to
  perform an operation. Providing a deleted access key might return an error
  that the key doesn't exist.
  """
  def get_access_key_info(client, input, options \\ []) do
    request(client, "GetAccessKeyInfo", input, options)
  end

  @doc """
  Returns details about the IAM user or role whose credentials are used to
  call the operation.

  <note> No permissions are required to perform this operation. If an
  administrator adds a policy to your IAM user or role that explicitly denies
  access to the `sts:GetCallerIdentity` action, you can still perform this
  operation. Permissions are not required because the same information is
  returned when an IAM user or role is denied access. To view an example
  response, see [I Am Not Authorized to Perform:
  iam:DeleteVirtualMFADevice](https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa)
  in the *IAM User Guide*.

  </note>
  """
  def get_caller_identity(client, input, options \\ []) do
    request(client, "GetCallerIdentity", input, options)
  end

  @doc """
  Returns a set of temporary security credentials (consisting of an access
  key ID, a secret access key, and a security token) for a federated user. A
  typical use is in a proxy application that gets temporary security
  credentials on behalf of distributed applications inside a corporate
  network. You must call the `GetFederationToken` operation using the
  long-term security credentials of an IAM user. As a result, this call is
  appropriate in contexts where those credentials can be safely stored,
  usually in a server-based application. For a comparison of
  `GetFederationToken` with the other API operations that produce temporary
  credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the AWS STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*.

  <note> You can create a mobile-based or browser-based app that can
  authenticate users using a web identity provider like Login with Amazon,
  Facebook, Google, or an OpenID Connect-compatible identity provider. In
  this case, we recommend that you use [Amazon
  Cognito](http://aws.amazon.com/cognito/) or `AssumeRoleWithWebIdentity`.
  For more information, see [Federation Through a Web-based Identity
  Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity)
  in the *IAM User Guide*.

  </note> You can also call `GetFederationToken` using the security
  credentials of an AWS account root user, but we do not recommend it.
  Instead, we recommend that you create an IAM user for the purpose of the
  proxy application. Then attach a policy to the IAM user that limits
  federated users to only the actions and resources that they need to access.
  For more information, see [IAM Best
  Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
  in the *IAM User Guide*.

  **Session duration**

  The temporary credentials are valid for the specified duration, from 900
  seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The
  default session duration is 43,200 seconds (12 hours). Temporary
  credentials that are obtained by using AWS account root user credentials
  have a maximum duration of 3,600 seconds (1 hour).

  **Permissions**

  You can use the temporary credentials created by `GetFederationToken` in
  any AWS service except the following:

  <ul> <li> You cannot call any IAM operations using the AWS CLI or the AWS
  API.

  </li> <li> You cannot call any STS operations except `GetCallerIdentity`.

  </li> </ul> You must pass an inline or managed [session
  policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies can't exceed 2,048 characters.

  Though the session policy parameters are optional, if you do not pass a
  policy, then the resulting federated user session has no permissions. When
  you pass session policies, the session permissions are the intersection of
  the IAM user policies and the session policies that you pass. This gives
  you a way to further restrict the permissions for a federated user. You
  cannot use session policies to grant more permissions than those that are
  defined in the permissions policy of the IAM user. For more information,
  see [Session
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  in the *IAM User Guide*. For information about using `GetFederationToken`
  to create temporary security credentials, see
  [GetFederationToken—Federation Through a Custom Identity
  Broker](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken).

  You can use the credentials to access a resource that has a resource-based
  policy. If that policy specifically references the federated user session
  in the `Principal` element of the policy, the session has the permissions
  allowed by the policy. These permissions are granted in addition to the
  permissions granted by the session policies.

  **Tags**

  (Optional) You can pass tag key-value pairs to your session. These are
  called session tags. For more information about session tags, see [Passing
  Session Tags in
  STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html)
  in the *IAM User Guide*.

  An administrator must grant you the permissions necessary to pass session
  tags. The administrator can also create granular permissions to allow you
  to pass only specific session tags. For more information, see [Tutorial:
  Using Tags for Attribute-Based Access
  Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html)
  in the *IAM User Guide*.

  Tag key–value pairs are not case sensitive, but case is preserved. This
  means that you cannot have separate `Department` and `department` tag keys.
  Assume that the user that you are federating has the
  `Department`=`Marketing` tag and you pass the `department`=`engineering`
  session tag. `Department` and `department` are not saved as separate tags,
  and the session tag passed in the request takes precedence over the user
  tag.
  """
  def get_federation_token(client, input, options \\ []) do
    request(client, "GetFederationToken", input, options)
  end

  @doc """
  Returns a set of temporary credentials for an AWS account or IAM user. The
  credentials consist of an access key ID, a secret access key, and a
  security token. Typically, you use `GetSessionToken` if you want to use MFA
  to protect programmatic calls to specific AWS API operations like Amazon
  EC2 `StopInstances`. MFA-enabled IAM users would need to call
  `GetSessionToken` and submit an MFA code that is associated with their MFA
  device. Using the temporary security credentials that are returned from the
  call, IAM users can then make programmatic calls to API operations that
  require MFA authentication. If you do not supply a correct MFA code, then
  the API returns an access denied error. For a comparison of
  `GetSessionToken` with the other API operations that produce temporary
  credentials, see [Requesting Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
  and [Comparing the AWS STS API
  operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison)
  in the *IAM User Guide*.

  **Session Duration**

  The `GetSessionToken` operation must be called by using the long-term AWS
  security credentials of the AWS account root user or an IAM user.
  Credentials that are created by IAM users are valid for the duration that
  you specify. This duration can range from 900 seconds (15 minutes) up to a
  maximum of 129,600 seconds (36 hours), with a default of 43,200 seconds (12
  hours). Credentials based on account credentials can range from 900 seconds
  (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour.

  **Permissions**

  The temporary security credentials created by `GetSessionToken` can be used
  to make API calls to any AWS service with the following exceptions:

  <ul> <li> You cannot call any IAM API operations unless MFA authentication
  information is included in the request.

  </li> <li> You cannot call any STS API *except* `AssumeRole` or
  `GetCallerIdentity`.

  </li> </ul> <note> We recommend that you do not call `GetSessionToken` with
  AWS account root user credentials. Instead, follow our [best
  practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users)
  by creating one or more IAM users, giving them the necessary permissions,
  and using IAM users for everyday interaction with AWS.

  </note> The credentials that are returned by `GetSessionToken` are based on
  permissions associated with the user whose credentials were used to call
  the operation. If `GetSessionToken` is called using AWS account root user
  credentials, the temporary credentials have root user permissions.
  Similarly, if `GetSessionToken` is called using the credentials of an IAM
  user, the temporary credentials have the same permissions as the IAM user.

  For more information about using `GetSessionToken` to create temporary
  credentials, go to [Temporary Credentials for Users in Untrusted
  Environments](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken)
  in the *IAM User Guide*.
  """
  def get_session_token(client, input, options \\ []) do
    request(client, "GetSessionToken", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "sts"}
    host = build_host("sts", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2011-06-15"})
    payload = AWS.Util.encode_query(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if(body != "", do: AWS.Util.decode_xml(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.Util.decode_xml(body)}

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
end
