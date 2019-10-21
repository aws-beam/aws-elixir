# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.STS do
  @moduledoc """
  AWS Security Token Service

  The AWS Security Token Service (STS) is a web service that enables you to
  request temporary, limited-privilege credentials for AWS Identity and
  Access Management (IAM) users or for users that you authenticate (federated
  users). This guide provides descriptions of the STS API. For more detailed
  information about using this service, go to [Temporary Security
  Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).

  For information about setting up signatures and authorization through the
  API, go to [Signing AWS API
  Requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  in the *AWS General Reference*. For general information about the Query
  API, go to [Making Query
  Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in *Using IAM*. For information about using security tokens with other AWS
  products, go to [AWS Services That Work with
  IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html)
  in the *IAM User Guide*.

  If you're new to AWS and need additional technical information about a
  specific AWS product, you can find the product's technical documentation at
  [http://aws.amazon.com/documentation/](http://aws.amazon.com/documentation/).

  **Endpoints**

  By default, AWS Security Token Service (STS) is available as a global
  service, and all AWS STS requests go to a single endpoint at
  `https://sts.amazonaws.com`. Global requests map to the US East (N.
  Virginia) region. AWS recommends using Regional AWS STS endpoints instead
  of the global endpoint to reduce latency, build in redundancy, and increase
  session token validity. For more information, see [Managing AWS STS in an
  AWS
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the *IAM User Guide*.

  Most AWS Regions are enabled for operations in all AWS services by default.
  Those Regions are automatically activated for use with AWS STS. Some
  Regions, such as Asia Pacific (Hong Kong), must be manually enabled. To
  learn more about enabling and disabling AWS Regions, see [Managing AWS
  Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html)
  in the *AWS General Reference*. When you enable these AWS Regions, they are
  automatically activated for use with AWS STS. You cannot activate the STS
  endpoint for a Region that is disabled. Tokens that are valid in all AWS
  Regions are longer than tokens that are valid in Regions that are enabled
  by default. Changing this setting might affect existing systems where you
  temporarily store tokens. For more information, see [Managing Global
  Endpoint Session
  Tokens](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#sts-regions-manage-tokens)
  in the *IAM User Guide*.

  After you activate a Region for use with AWS STS, you can direct AWS STS
  API calls to that Region. AWS STS recommends that you provide both the
  Region and endpoint when you make calls to a Regional endpoint. You can
  provide the Region alone for manually enabled Regions, such as Asia Pacific
  (Hong Kong). In this case, the calls are directed to the STS Regional
  endpoint. However, if you provide the Region alone for Regions enabled by
  default, the calls are directed to the global endpoint of
  `https://sts.amazonaws.com`.

  To view the list of AWS STS endpoints and whether they are active by
  default, see [Writing Code to Use AWS STS
  Regions](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#id_credentials_temp_enable-regions_writing_code)
  in the *IAM User Guide*.

  **Recording API requests**

  STS supports AWS CloudTrail, which is a service that records AWS calls for
  your AWS account and delivers log files to an Amazon S3 bucket. By using
  information collected by CloudTrail, you can determine what requests were
  successfully made to STS, who made the request, when it was made, and so
  on.

  If you activate AWS STS endpoints in Regions other than the default global
  endpoint, then you must also turn on CloudTrail logging in those Regions.
  This is necessary to record any AWS STS API calls that are made in those
  Regions. For more information, see [Turning On CloudTrail in Additional
  Regions](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_turn_on_ct.html)
  in the *AWS CloudTrail User Guide*.

  AWS Security Token Service (STS) is a global service with a single endpoint
  at `https://sts.amazonaws.com`. Calls to this endpoint are logged as calls
  to a global service. However, because this endpoint is physically located
  in the US East (N. Virginia) Region, your logs list `us-east-1` as the
  event Region. CloudTrail does not write these logs to the US East (Ohio)
  Region unless you choose to include global service logs in that Region.
  CloudTrail writes calls to all Regional endpoints to their respective
  Regions. For example, calls to sts.us-east-2.amazonaws.com are published to
  the US East (Ohio) Region and calls to sts.eu-central-1.amazonaws.com are
  published to the EU (Frankfurt) Region.

  To learn more about CloudTrail, including how to turn it on and find your
  log files, see the [AWS CloudTrail User
  Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
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

  The temporary security credentials created by `AssumeRole` can be used to
  make API calls to any AWS service with the following exception: You cannot
  call the AWS STS `GetFederationToken` or `GetSessionToken` API operations.

  (Optional) You can pass inline or managed [session
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies shouldn't exceed 2048 characters.
  Passing policies to this operation returns new temporary credentials. The
  resulting session's permissions are the intersection of the role's
  identity-based policy and the session policies. You can use the role's
  temporary credentials in subsequent AWS API calls to access resources in
  the account that owns the role. You cannot use session policies to grant
  more permissions than those allowed by the identity-based policy of the
  role that is being assumed. For more information, see [Session
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

  The temporary security credentials created by `AssumeRoleWithSAML` can be
  used to make API calls to any AWS service with the following exception: you
  cannot call the STS `GetFederationToken` or `GetSessionToken` API
  operations.

  (Optional) You can pass inline or managed [session
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies shouldn't exceed 2048 characters.
  Passing policies to this operation returns new temporary credentials. The
  resulting session's permissions are the intersection of the role's
  identity-based policy and the session policies. You can use the role's
  temporary credentials in subsequent AWS API calls to access resources in
  the account that owns the role. You cannot use session policies to grant
  more permissions than those allowed by the identity-based policy of the
  role that is being assumed. For more information, see [Session
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  in the *IAM User Guide*.

  Before your application can call `AssumeRoleWithSAML`, you must configure
  your SAML identity provider (IdP) to issue the claims required by AWS.
  Additionally, you must use AWS Identity and Access Management (IAM) to
  create a SAML provider entity in your AWS account that represents your
  identity provider. You must also create an IAM role that specifies this
  SAML provider in its trust policy.

  Calling `AssumeRoleWithSAML` does not require the use of AWS security
  credentials. The identity of the caller is validated by using keys in the
  metadata document that is uploaded for the SAML provider entity for your
  identity provider.

  <important> Calling `AssumeRoleWithSAML` can result in an entry in your AWS
  CloudTrail logs. The entry includes the value in the `NameID` element of
  the SAML assertion. We recommend that you use a `NameIDType` that is not
  associated with any personally identifiable information (PII). For example,
  you could instead use the Persistent Identifier
  (`urn:oasis:names:tc:SAML:2.0:nameid-format:persistent`).

  </important> For more information, see the following resources:

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

  The temporary security credentials created by `AssumeRoleWithWebIdentity`
  can be used to make API calls to any AWS service with the following
  exception: you cannot call the STS `GetFederationToken` or
  `GetSessionToken` API operations.

  (Optional) You can pass inline or managed [session
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies shouldn't exceed 2048 characters.
  Passing policies to this operation returns new temporary credentials. The
  resulting session's permissions are the intersection of the role's
  identity-based policy and the session policies. You can use the role's
  temporary credentials in subsequent AWS API calls to access resources in
  the account that owns the role. You cannot use session policies to grant
  more permissions than those allowed by the identity-based policy of the
  role that is being assumed. For more information, see [Session
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  in the *IAM User Guide*.

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
  Playground](https://web-identity-federation-playground.s3.amazonaws.com/index.html).
  Walk through the process of authenticating through Login with Amazon,
  Facebook, or Google, getting temporary security credentials, and then using
  those credentials to make a request to AWS.

  </li> <li> [AWS SDK for iOS Developer
  Guide](http://aws.amazon.com/sdkforios/) and [AWS SDK for Android Developer
  Guide](http://aws.amazon.com/sdkforandroid/). These toolkits contain sample
  apps that show how to invoke the identity providers, and then how to use
  the information from these providers to get and use temporary security
  credentials.

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
  logs](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html).

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
  iam:DeleteVirtualMFADevice](https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa).

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
  Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).

  </note> You can also call `GetFederationToken` using the security
  credentials of an AWS account root user, but we do not recommend it.
  Instead, we recommend that you create an IAM user for the purpose of the
  proxy application. Then attach a policy to the IAM user that limits
  federated users to only the actions and resources that they need to access.
  For more information, see [IAM Best
  Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
  in the *IAM User Guide*.

  The temporary credentials are valid for the specified duration, from 900
  seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The
  default is 43,200 seconds (12 hours). Temporary credentials that are
  obtained by using AWS account root user credentials have a maximum duration
  of 3,600 seconds (1 hour).

  The temporary security credentials created by `GetFederationToken` can be
  used to make API calls to any AWS service with the following exceptions:

  <ul> <li> You cannot use these credentials to call any IAM API operations.

  </li> <li> You cannot call any STS API operations except
  `GetCallerIdentity`.

  </li> </ul> **Permissions**

  You must pass an inline or managed [session
  policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  to this operation. You can pass a single JSON policy document to use as an
  inline session policy. You can also specify up to 10 managed policies to
  use as managed session policies. The plain text that you use for both
  inline and managed session policies shouldn't exceed 2048 characters.

  Though the session policy parameters are optional, if you do not pass a
  policy, then the resulting federated user session has no permissions. The
  only exception is when the credentials are used to access a resource that
  has a resource-based policy that specifically references the federated user
  session in the `Principal` element of the policy. When you pass session
  policies, the session permissions are the intersection of the IAM user
  policies and the session policies that you pass. This gives you a way to
  further restrict the permissions for a federated user. You cannot use
  session policies to grant more permissions than those that are defined in
  the permissions policy of the IAM user. For more information, see [Session
  Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session)
  in the *IAM User Guide*. For information about using `GetFederationToken`
  to create temporary security credentials, see
  [GetFederationToken—Federation Through a Custom Identity
  Broker](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken).
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

  The `GetSessionToken` operation must be called by using the long-term AWS
  security credentials of the AWS account root user or an IAM user.
  Credentials that are created by IAM users are valid for the duration that
  you specify. This duration can range from 900 seconds (15 minutes) up to a
  maximum of 129,600 seconds (36 hours), with a default of 43,200 seconds (12
  hours). Credentials based on account credentials can range from 900 seconds
  (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour.

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
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "sts"}
    host = get_host("sts", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-"},
      {"X-Amz-Target", ".#{action}"} | headers]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}
    
      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
