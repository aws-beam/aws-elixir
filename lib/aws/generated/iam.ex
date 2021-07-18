# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IAM do
  @moduledoc """
  Identity and Access Management

  Identity and Access Management (IAM) is a web service for securely controlling
  access to Amazon Web Services services.

  With IAM, you can centrally manage users, security credentials such as access
  keys, and permissions that control which Amazon Web Services resources users and
  applications can access. For more information about IAM, see [Identity and Access Management (IAM)](http://aws.amazon.com/iam/) and the [Identity and Access Management User
  Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "IAM",
      api_version: "2010-05-08",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: "us-east-1",
      endpoint_prefix: "iam",
      global?: true,
      protocol: "query",
      service_id: "IAM",
      signature_version: "v4",
      signing_name: "iam",
      target_prefix: nil
    }
  end

  @doc """
  Adds a new client ID (also known as audience) to the list of client IDs already
  registered for the specified IAM OpenID Connect (OIDC) provider resource.

  This operation is idempotent; it does not fail or return an error if you add an
  existing client ID to the provider.
  """
  def add_client_id_to_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddClientIDToOpenIDConnectProvider", input, options)
  end

  @doc """
  Adds the specified IAM role to the specified instance profile.

  An instance profile can contain only one role, and this quota cannot be
  increased. You can remove the existing role and then add a different role to an
  instance profile. You must then wait for the change to appear across all of
  Amazon Web Services because of [eventual consistency](https://en.wikipedia.org/wiki/Eventual_consistency). To force the
  change, you must [disassociate the instance profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html)
  and then [associate the instance profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html),
  or you can stop your instance and then restart it.

  The caller of this operation must be granted the `PassRole` permission on the
  IAM role by a permissions policy.

  For more information about roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  """
  def add_role_to_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddRoleToInstanceProfile", input, options)
  end

  @doc """
  Adds the specified user to the specified group.
  """
  def add_user_to_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddUserToGroup", input, options)
  end

  @doc """
  Attaches the specified managed policy to the specified IAM group.

  You use this operation to attach a managed policy to a group. To embed an inline
  policy in a group, use `PutGroupPolicy`.

  As a best practice, you can validate your IAM policies. To learn more, see
  [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def attach_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachGroupPolicy", input, options)
  end

  @doc """
  Attaches the specified managed policy to the specified IAM role.

  When you attach a managed policy to a role, the managed policy becomes part of
  the role's permission (access) policy.

  You cannot use a managed policy as the role's trust policy. The role's trust
  policy is created at the same time as the role, using `CreateRole`. You can
  update a role's trust policy using `UpdateAssumeRolePolicy`.

  Use this operation to attach a *managed* policy to a role. To embed an inline
  policy in a role, use `PutRolePolicy`. For more information about policies, see
  [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  As a best practice, you can validate your IAM policies. To learn more, see
  [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.
  """
  def attach_role_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachRolePolicy", input, options)
  end

  @doc """
  Attaches the specified managed policy to the specified user.

  You use this operation to attach a *managed* policy to a user. To embed an
  inline policy in a user, use `PutUserPolicy`.

  As a best practice, you can validate your IAM policies. To learn more, see
  [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def attach_user_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachUserPolicy", input, options)
  end

  @doc """
  Changes the password of the IAM user who is calling this operation.

  This operation can be performed using the CLI, the Amazon Web Services API, or
  the **My Security Credentials** page in the Management Console. The account root
  user password is not affected by this operation.

  Use `UpdateLoginProfile` to use the CLI, the Amazon Web Services API, or the
  **Users** page in the IAM console to change the password for any IAM user. For
  more information about modifying passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the *IAM User Guide*.
  """
  def change_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ChangePassword", input, options)
  end

  @doc """
  Creates a new Amazon Web Services secret access key and corresponding Amazon Web
  Services access key ID for the specified user.

  The default status for new keys is `Active`.

  If you do not specify a user name, IAM determines the user name implicitly based
  on the Amazon Web Services access key ID signing the request. This operation
  works for access keys under the account. Consequently, you can use this
  operation to manage account root user credentials. This is true even if the
  account has no associated users.

  For information about quotas on the number of keys you can create, see [IAM and STS
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  To ensure the security of your account, the secret access key is accessible only
  during key and user creation. You must save the key (for example, in a text
  file) if you want to be able to access it again. If a secret key is lost, you
  can delete the access keys for the associated user and then create new keys.
  """
  def create_access_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAccessKey", input, options)
  end

  @doc """
  Creates an alias for your account.

  For information about using an account alias, see [Using an alias for your account ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html)
  in the *IAM User Guide*.
  """
  def create_account_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAccountAlias", input, options)
  end

  @doc """
  Creates a new group.

  For information about the number of groups you can create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  def create_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGroup", input, options)
  end

  @doc """
  Creates a new instance profile.

  For information about instance profiles, see [Using roles for applications on Amazon
  EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html)
  in the *IAM User Guide*, and [Instance profiles](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile)
  in the *Amazon EC2 User Guide*.

  For information about the number of instance profiles you can create, see [IAM object
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  def create_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateInstanceProfile", input, options)
  end

  @doc """
  Creates a password for the specified IAM user.

  A password allows an IAM user to access Amazon Web Services services through the
  Management Console.

  You can use the CLI, the Amazon Web Services API, or the **Users** page in the
  IAM console to create a password for any IAM user. Use `ChangePassword` to
  update your own existing password in the **My Security Credentials** page in the
  Management Console.

  For more information about managing passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the *IAM User Guide*.
  """
  def create_login_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLoginProfile", input, options)
  end

  @doc """
  Creates an IAM entity to describe an identity provider (IdP) that supports
  [OpenID Connect (OIDC)](http://openid.net/connect/).   The OIDC provider that you create with this operation can be used as a principal
  in a role's trust policy. Such a policy establishes a trust relationship between
  Amazon Web Services and the OIDC provider.

  If you are using an OIDC identity provider from Google, Facebook, or Amazon
  Cognito, you don't need to create a separate IAM identity provider. These OIDC
  identity providers are already built-in to Amazon Web Services and are available
  for your use. Instead, you can move directly to creating new roles using your
  identity provider. To learn more, see [Creating a role for web identity or
  OpenID connect
  federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html)
  in the *IAM User Guide*.

  When you create the IAM OIDC provider, you specify the following:

    * The URL of the OIDC identity provider (IdP) to trust

    * A list of client IDs (also known as audiences) that identify the
  application or applications allowed to authenticate using the OIDC provider

    * A list of thumbprints of one or more server certificates that the
  IdP uses

  You get all of this information from the OIDC IdP that you want to use to access
  Amazon Web Services.

  The trust for the OIDC provider is derived from the IAM provider that this
  operation creates. Therefore, it is best to limit access to the
  `CreateOpenIDConnectProvider` operation to highly privileged users.
  """
  def create_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateOpenIDConnectProvider", input, options)
  end

  @doc """
  Creates a new managed policy for your account.

  This operation creates a policy version with a version identifier of `v1` and
  sets v1 as the policy's default version. For more information about policy
  versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.

  As a best practice, you can validate your IAM policies. To learn more, see
  [Validating IAM policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
  in the *IAM User Guide*.

  For more information about managed policies in general, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def create_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePolicy", input, options)
  end

  @doc """
  Creates a new version of the specified managed policy.

  To update a managed policy, you create a new policy version. A managed policy
  can have up to five versions. If the policy has five versions, you must delete
  an existing version using `DeletePolicyVersion` before you create a new version.

  Optionally, you can set the new version as the policy's default version. The
  default version is the version that is in effect for the IAM users, groups, and
  roles to which the policy is attached.

  For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  def create_policy_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePolicyVersion", input, options)
  end

  @doc """
  Creates a new role for your account.

  For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  For information about quotas for role names and the number of roles you can
  create, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  def create_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRole", input, options)
  end

  @doc """
  Creates an IAM resource that describes an identity provider (IdP) that supports
  SAML 2.0.

  The SAML provider resource that you create with this operation can be used as a
  principal in an IAM role's trust policy. Such a policy can enable federated
  users who sign in using the SAML IdP to assume the role. You can create an IAM
  role that supports Web-based single sign-on (SSO) to the Management Console or
  one that supports API access to Amazon Web Services.

  When you create the SAML provider resource, you upload a SAML metadata document
  that you get from your IdP. That document includes the issuer's name, expiration
  information, and keys that can be used to validate the SAML authentication
  response (assertions) that the IdP sends. You must generate the metadata
  document using the identity management software that is used as your
  organization's IdP.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  For more information, see [Enabling SAML 2.0 federated users to access the Management
  Console](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html)
  and [About SAML 2.0-based federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html)
  in the *IAM User Guide*.
  """
  def create_saml_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSAMLProvider", input, options)
  end

  @doc """
  Creates an IAM role that is linked to a specific Amazon Web Services service.

  The service controls the attached policies and when the role can be deleted.
  This helps ensure that the service is not broken by an unexpectedly changed or
  deleted role, which could put your Amazon Web Services resources into an unknown
  state. Allowing the service to control the role helps improve service stability
  and proper cleanup when a service and its role are no longer needed. For more
  information, see [Using service-linked roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html)
  in the *IAM User Guide*.

  To attach a policy to this service-linked role, you must make the request using
  the Amazon Web Services service that depends on this role.
  """
  def create_service_linked_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateServiceLinkedRole", input, options)
  end

  @doc """
  Generates a set of credentials consisting of a user name and password that can
  be used to access the service specified in the request.

  These credentials are generated by IAM, and can be used only for the specified
  service.

  You can have a maximum of two sets of service-specific credentials for each
  supported service per user.

  You can create service-specific credentials for CodeCommit and Amazon Keyspaces
  (for Apache Cassandra).

  You can reset the password to a new service-generated value by calling
  `ResetServiceSpecificCredential`.

  For more information about service-specific credentials, see [Using IAM with CodeCommit: Git credentials, SSH keys, and Amazon Web Services access
  keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html)
  in the *IAM User Guide*.
  """
  def create_service_specific_credential(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateServiceSpecificCredential", input, options)
  end

  @doc """
  Creates a new IAM user for your account.

  For information about quotas for the number of IAM users you can create, see
  [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  def create_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUser", input, options)
  end

  @doc """
  Creates a new virtual MFA device for the account.

  After creating the virtual MFA, use `EnableMFADevice` to attach the MFA device
  to an IAM user. For more information about creating and working with virtual MFA
  devices, see [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.

  For information about the maximum number of MFA devices you can create, see [IAM and STS
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  The seed information contained in the QR code and the Base32 string should be
  treated like any other secret access information. In other words, protect the
  seed information as you would your Amazon Web Services access keys or your
  passwords. After you provision your virtual device, you should ensure that the
  information is destroyed following secure procedures.
  """
  def create_virtual_mfa_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateVirtualMFADevice", input, options)
  end

  @doc """
  Deactivates the specified MFA device and removes it from association with the
  user name for which it was originally enabled.

  For more information about creating and working with virtual MFA devices, see
  [Enabling a virtual multi-factor authentication (MFA) device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.
  """
  def deactivate_mfa_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeactivateMFADevice", input, options)
  end

  @doc """
  Deletes the access key pair associated with the specified IAM user.

  If you do not specify a user name, IAM determines the user name implicitly based
  on the Amazon Web Services access key ID signing the request. This operation
  works for access keys under the account. Consequently, you can use this
  operation to manage account root user credentials even if the account has no
  associated users.
  """
  def delete_access_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAccessKey", input, options)
  end

  @doc """
  Deletes the specified account alias.

  For information about using an Amazon Web Services account alias, see [Using an alias for your account
  ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html) in the
  *IAM User Guide*.
  """
  def delete_account_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAccountAlias", input, options)
  end

  @doc """
  Deletes the password policy for the account.

  There are no parameters.
  """
  def delete_account_password_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAccountPasswordPolicy", input, options)
  end

  @doc """
  Deletes the specified IAM group.

  The group must not contain any users or have any attached policies.
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGroup", input, options)
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM group.

  A group can also have managed policies attached to it. To detach a managed
  policy from a group, use `DetachGroupPolicy`. For more information about
  policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGroupPolicy", input, options)
  end

  @doc """
  Deletes the specified instance profile.

  The instance profile must not have an associated role.

  Make sure that you do not have any Amazon EC2 instances running with the
  instance profile you are about to delete. Deleting a role or instance profile
  that is associated with a running instance will break any applications running
  on the instance.

  For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  """
  def delete_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteInstanceProfile", input, options)
  end

  @doc """
  Deletes the password for the specified IAM user, which terminates the user's
  ability to access Amazon Web Services services through the Management Console.

  You can use the CLI, the Amazon Web Services API, or the **Users** page in the
  IAM console to delete a password for any IAM user. You can use `ChangePassword`
  to update, but not delete, your own password in the ## My Security Credentials
  page in the Management Console.

  Deleting a user's password does not prevent a user from accessing Amazon Web
  Services through the command line interface or the API. To prevent all user
  access, you must also either make any access keys inactive or delete them. For
  more information about making keys inactive or deleting them, see
  `UpdateAccessKey` and `DeleteAccessKey`.
  """
  def delete_login_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLoginProfile", input, options)
  end

  @doc """
  Deletes an OpenID Connect identity provider (IdP) resource object in IAM.

  Deleting an IAM OIDC provider resource does not update any roles that reference
  the provider as a principal in their trust policies. Any attempt to assume a
  role that references a deleted provider fails.

  This operation is idempotent; it does not fail or return an error if you call
  the operation for a provider that does not exist.
  """
  def delete_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOpenIDConnectProvider", input, options)
  end

  @doc """
  Deletes the specified managed policy.

  Before you can delete a managed policy, you must first detach the policy from
  all users, groups, and roles that it is attached to. In addition, you must
  delete all the policy's versions. The following steps describe the process for
  deleting a managed policy:

    * Detach the policy from all users, groups, and roles that the
  policy is attached to, using `DetachUserPolicy`, `DetachGroupPolicy`, or
  `DetachRolePolicy`. To list all the users, groups, and roles that a policy is
  attached to, use `ListEntitiesForPolicy`.

    * Delete all versions of the policy using `DeletePolicyVersion`. To
  list the policy's versions, use `ListPolicyVersions`. You cannot use
  `DeletePolicyVersion` to delete the version that is marked as the default
  version. You delete the policy's default version in the next step of the
  process.

    * Delete the policy (this automatically deletes the policy's default
  version) using this operation.

  For information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified version from the specified managed policy.

  You cannot delete the default version from a policy using this operation. To
  delete the default version from a policy, use `DeletePolicy`. To find out which
  version of a policy is marked as the default version, use `ListPolicyVersions`.

  For information about versions for managed policies, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  def delete_policy_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePolicyVersion", input, options)
  end

  @doc """
  Deletes the specified role.

  The role must not have any policies attached. For more information about roles,
  see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

  Make sure that you do not have any Amazon EC2 instances running with the role
  you are about to delete. Deleting a role or instance profile that is associated
  with a running instance will break any applications running on the instance.
  """
  def delete_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRole", input, options)
  end

  @doc """
  Deletes the permissions boundary for the specified IAM role.

  Deleting the permissions boundary for a role might increase its permissions. For
  example, it might allow anyone who assumes the role to perform all the actions
  granted in its permissions policies.
  """
  def delete_role_permissions_boundary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRolePermissionsBoundary", input, options)
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM role.

  A role can also have managed policies attached to it. To detach a managed policy
  from a role, use `DetachRolePolicy`. For more information about policies, refer
  to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_role_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRolePolicy", input, options)
  end

  @doc """
  Deletes a SAML provider resource in IAM.

  Deleting the provider resource from IAM does not update any roles that reference
  the SAML provider resource's ARN as a principal in their trust policies. Any
  attempt to assume a role that references a non-existent provider resource ARN
  fails.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  def delete_saml_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSAMLProvider", input, options)
  end

  @doc """
  Deletes the specified server certificate.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This topic also includes a list of Amazon Web Services
  services that can use the server certificates that you manage with IAM.

  If you are using a server certificate with Elastic Load Balancing, deleting the
  certificate could have implications for your application. If Elastic Load
  Balancing doesn't detect the deletion of bound certificates, it may continue to
  use the certificates. This could cause Elastic Load Balancing to stop accepting
  traffic. We recommend that you remove the reference to the certificate from
  Elastic Load Balancing before using this command to delete the certificate. For
  more information, see
  [DeleteLoadBalancerListeners](https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html)
  in the *Elastic Load Balancing API Reference*.
  """
  def delete_server_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteServerCertificate", input, options)
  end

  @doc """
  Submits a service-linked role deletion request and returns a `DeletionTaskId`,
  which you can use to check the status of the deletion.

  Before you call this operation, confirm that the role has no active sessions and
  that any resources used by the role in the linked service are deleted. If you
  call this operation more than once for the same service-linked role and an
  earlier deletion task is not complete, then the `DeletionTaskId` of the earlier
  request is returned.

  If you submit a deletion request for a service-linked role whose linked service
  is still accessing a resource, then the deletion task fails. If it fails, the
  `GetServiceLinkedRoleDeletionStatus` operation returns the reason for the
  failure, usually including the resources that must be deleted. To delete the
  service-linked role, you must first remove those resources from the linked
  service and then submit the deletion request again. Resources are specific to
  the service that is linked to the role. For more information about removing
  resources from a service, see the [Amazon Web Services documentation](http://docs.aws.amazon.com/) for your service.

  For more information about service-linked roles, see [Roles terms and concepts: Amazon Web Services service-linked
  role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role)
  in the *IAM User Guide*.
  """
  def delete_service_linked_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteServiceLinkedRole", input, options)
  end

  @doc """
  Deletes the specified service-specific credential.
  """
  def delete_service_specific_credential(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteServiceSpecificCredential", input, options)
  end

  @doc """
  Deletes a signing certificate associated with the specified IAM user.

  If you do not specify a user name, IAM determines the user name implicitly based
  on the Amazon Web Services access key ID signing the request. This operation
  works for access keys under the account. Consequently, you can use this
  operation to manage account root user credentials even if the account has no
  associated IAM users.
  """
  def delete_signing_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSigningCertificate", input, options)
  end

  @doc """
  Deletes the specified SSH public key.

  The SSH public key deleted by this operation is used only for authenticating the
  associated IAM user to an CodeCommit repository. For more information about
  using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH
  connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  def delete_ssh_public_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSSHPublicKey", input, options)
  end

  @doc """
  Deletes the specified IAM user.

  Unlike the Management Console, when you delete a user programmatically, you must
  delete the items attached to the user manually, or the deletion fails. For more
  information, see [Deleting an IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli).
  Before attempting to delete a user, remove the following items:

    * Password (`DeleteLoginProfile`)

    * Access keys (`DeleteAccessKey`)

    * Signing certificate (`DeleteSigningCertificate`)

    * SSH public key (`DeleteSSHPublicKey`)

    * Git credentials (`DeleteServiceSpecificCredential`)

    * Multi-factor authentication (MFA) device (`DeactivateMFADevice`,
  `DeleteVirtualMFADevice`)

    * Inline policies (`DeleteUserPolicy`)

    * Attached managed policies (`DetachUserPolicy`)

    * Group memberships (`RemoveUserFromGroup`)
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUser", input, options)
  end

  @doc """
  Deletes the permissions boundary for the specified IAM user.

  Deleting the permissions boundary for a user might increase its permissions by
  allowing the user to perform all the actions granted in its permissions
  policies.
  """
  def delete_user_permissions_boundary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserPermissionsBoundary", input, options)
  end

  @doc """
  Deletes the specified inline policy that is embedded in the specified IAM user.

  A user can also have managed policies attached to it. To detach a managed policy
  from a user, use `DetachUserPolicy`. For more information about policies, refer
  to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def delete_user_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserPolicy", input, options)
  end

  @doc """
  Deletes a virtual MFA device.

  You must deactivate a user's virtual MFA device before you can delete it. For
  information about deactivating MFA devices, see `DeactivateMFADevice`.
  """
  def delete_virtual_mfa_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteVirtualMFADevice", input, options)
  end

  @doc """
  Removes the specified managed policy from the specified IAM group.

  A group can also have inline policies embedded with it. To delete an inline
  policy, use `DeleteGroupPolicy`. For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def detach_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetachGroupPolicy", input, options)
  end

  @doc """
  Removes the specified managed policy from the specified role.

  A role can also have inline policies embedded with it. To delete an inline
  policy, use `DeleteRolePolicy`. For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def detach_role_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetachRolePolicy", input, options)
  end

  @doc """
  Removes the specified managed policy from the specified user.

  A user can also have inline policies embedded with it. To delete an inline
  policy, use `DeleteUserPolicy`. For information about policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def detach_user_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetachUserPolicy", input, options)
  end

  @doc """
  Enables the specified MFA device and associates it with the specified IAM user.

  When enabled, the MFA device is required for every subsequent login by the IAM
  user associated with the device.
  """
  def enable_mfa_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableMFADevice", input, options)
  end

  @doc """
  Generates a credential report for the account.

  For more information about the credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html)
  in the *IAM User Guide*.
  """
  def generate_credential_report(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateCredentialReport", input, options)
  end

  @doc """
  Generates a report for service last accessed data for Organizations.

  You can generate a report for any entities (organization root, organizational
  unit, or account) or policies in your organization.

  To call this operation, you must be signed in using your Organizations
  management account credentials. You can use your long-term IAM user or root user
  credentials, or temporary credentials from assuming an IAM role. SCPs must be
  enabled for your organization root. You must have the required IAM and
  Organizations permissions. For more information, see [Refining permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the *IAM User Guide*.

  You can generate a service last accessed data report for entities by specifying
  only the entity's path. This data includes a list of services that are allowed
  by any service control policies (SCPs) that apply to the entity.

  You can generate a service last accessed data report for a policy by specifying
  an entity's path and an optional Organizations policy ID. This data includes a
  list of services that are allowed by the specified SCP.

  For each service in both report types, the data includes the most recent account
  activity that the policy allows to account principals in the entity or the
  entity's children. For important information about the data, reporting period,
  permissions required, troubleshooting, and supported Regions see [Reducing permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the *IAM User Guide*.

  The data includes all attempts to access Amazon Web Services, not just the
  successful ones. This includes all attempts that were made using the Management
  Console, the Amazon Web Services API through any of the SDKs, or any of the
  command line tools. An unexpected entry in the service last accessed data does
  not mean that an account has been compromised, because the request might have
  been denied. Refer to your CloudTrail logs as the authoritative source for
  information about all API calls and whether they were successful or denied
  access. For more information, see [Logging IAM events with CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
  in the *IAM User Guide*.

  This operation returns a `JobId`. Use this parameter in the `
  `GetOrganizationsAccessReport` ` operation to check the status of the report
  generation. To check the status of this request, use the `JobId` parameter in
  the ` `GetOrganizationsAccessReport` ` operation and test the `JobStatus`
  response parameter. When the job is complete, you can retrieve the report.

  To generate a service last accessed data report for entities, specify an entity
  path without specifying the optional Organizations policy ID. The type of entity
  that you specify determines the data returned in the report.

    * **Root** – When you specify the organizations root as the entity,
  the resulting report lists all of the services allowed by SCPs that are attached
  to your root. For each service, the report includes data for all accounts in
  your organization except the management account, because the management account
  is not limited by SCPs.

    * **OU** – When you specify an organizational unit (OU) as the
  entity, the resulting report lists all of the services allowed by SCPs that are
  attached to the OU and its parents. For each service, the report includes data
  for all accounts in the OU or its children. This data excludes the management
  account, because the management account is not limited by SCPs.

    * **management account** – When you specify the management account,
  the resulting report lists all Amazon Web Services services, because the
  management account is not limited by SCPs. For each service, the report includes
  data for only the management account.

    * **Account** – When you specify another account as the entity, the
  resulting report lists all of the services allowed by SCPs that are attached to
  the account and its parents. For each service, the report includes data for only
  the specified account.

  To generate a service last accessed data report for policies, specify an entity
  path and the optional Organizations policy ID. The type of entity that you
  specify determines the data returned for each service.

    * **Root** – When you specify the root entity and a policy ID, the
  resulting report lists all of the services that are allowed by the specified
  SCP. For each service, the report includes data for all accounts in your
  organization to which the SCP applies. This data excludes the management
  account, because the management account is not limited by SCPs. If the SCP is
  not attached to any entities in the organization, then the report will return a
  list of services with no data.

    * **OU** – When you specify an OU entity and a policy ID, the
  resulting report lists all of the services that are allowed by the specified
  SCP. For each service, the report includes data for all accounts in the OU or
  its children to which the SCP applies. This means that other accounts outside
  the OU that are affected by the SCP might not be included in the data. This data
  excludes the management account, because the management account is not limited
  by SCPs. If the SCP is not attached to the OU or one of its children, the report
  will return a list of services with no data.

    * **management account** – When you specify the management account,
  the resulting report lists all Amazon Web Services services, because the
  management account is not limited by SCPs. If you specify a policy ID in the CLI
  or API, the policy is ignored. For each service, the report includes data for
  only the management account.

    * **Account** – When you specify another account entity and a policy
  ID, the resulting report lists all of the services that are allowed by the
  specified SCP. For each service, the report includes data for only the specified
  account. This means that other accounts in the organization that are affected by
  the SCP might not be included in the data. If the SCP is not attached to the
  account, the report will return a list of services with no data.

  Service last accessed data does not use other policy types when determining
  whether a principal could access a service. These other policy types include
  identity-based policies, resource-based policies, access control lists, IAM
  permissions boundaries, and STS assume role policies. It only applies SCP logic.
  For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the *IAM User Guide*.

  For more information about service last accessed data, see [Reducing policy scope by viewing user
  activity](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the *IAM User Guide*.
  """
  def generate_organizations_access_report(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateOrganizationsAccessReport", input, options)
  end

  @doc """
  Generates a report that includes details about when an IAM resource (user,
  group, role, or policy) was last used in an attempt to access Amazon Web
  Services services.

  Recent activity usually appears within four hours. IAM reports activity for the
  last 365 days, or less if your Region began supporting this feature within the
  last year. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period).

  The service last accessed data includes all attempts to access an Amazon Web
  Services API, not just the successful ones. This includes all attempts that were
  made using the Management Console, the Amazon Web Services API through any of
  the SDKs, or any of the command line tools. An unexpected entry in the service
  last accessed data does not mean that your account has been compromised, because
  the request might have been denied. Refer to your CloudTrail logs as the
  authoritative source for information about all API calls and whether they were
  successful or denied access. For more information, see [Logging IAM events with CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html)
  in the *IAM User Guide*.

  The `GenerateServiceLastAccessedDetails` operation returns a `JobId`. Use this
  parameter in the following operations to retrieve the following details from
  your report:

    * `GetServiceLastAccessedDetails` – Use this operation for users,
  groups, roles, or policies to list every Amazon Web Services service that the
  resource could access using permissions policies. For each service, the response
  includes information about the most recent access attempt.

  The `JobId` returned by `GenerateServiceLastAccessedDetail` must be used by the
  same role within a session, or by the same user when used to call
  `GetServiceLastAccessedDetail`.

    * `GetServiceLastAccessedDetailsWithEntities` – Use this operation
  for groups and policies to list information about the associated entities (users
  or roles) that attempted to access a specific Amazon Web Services service.

  To check the status of the `GenerateServiceLastAccessedDetails` request, use the
  `JobId` parameter in the same operations and test the `JobStatus` response
  parameter.

  For additional information about the permissions policies that allow an identity
  (user, group, or role) to access specific services, use the
  `ListPoliciesGrantingServiceAccess` operation.

  Service last accessed data does not use other policy types when determining
  whether a resource could access a service. These other policy types include
  resource-based policies, access control lists, Organizations policies, IAM
  permissions boundaries, and STS assume role policies. It only applies
  permissions policy logic. For more about the evaluation of policy types, see
  [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the *IAM User Guide*.

  For more information about service and action last accessed data, see [Reducing permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the *IAM User Guide*.
  """
  def generate_service_last_accessed_details(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateServiceLastAccessedDetails", input, options)
  end

  @doc """
  Retrieves information about when the specified access key was last used.

  The information includes the date and time of last use, along with the Amazon
  Web Services service and Region that were specified in the last request made
  with that key.
  """
  def get_access_key_last_used(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAccessKeyLastUsed", input, options)
  end

  @doc """
  Retrieves information about all IAM users, groups, roles, and policies in your
  Amazon Web Services account, including their relationships to one another.

  Use this operation to obtain a snapshot of the configuration of IAM permissions
  (users, groups, roles, and policies) in your account.

  Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to
  convert the policy back to plain JSON text. For example, if you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in the
  Java SDK. Other languages and SDKs provide similar functionality.

  You can optionally filter the results using the `Filter` parameter. You can
  paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def get_account_authorization_details(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAccountAuthorizationDetails", input, options)
  end

  @doc """
  Retrieves the password policy for the account.

  This tells you the complexity requirements and mandatory rotation periods for
  the IAM user passwords in your account. For more information about using a
  password policy, see [Managing an IAM password policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html).
  """
  def get_account_password_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAccountPasswordPolicy", input, options)
  end

  @doc """
  Retrieves information about IAM entity usage and IAM quotas in the Amazon Web
  Services account.

  For information about IAM quotas, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.
  """
  def get_account_summary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAccountSummary", input, options)
  end

  @doc """
  Gets a list of all of the context keys referenced in the input policies.

  The policies are supplied as a list of one or more strings. To get the context
  keys from policies associated with an IAM user, group, or role, use
  `GetContextKeysForPrincipalPolicy`.

  Context keys are variables maintained by Amazon Web Services and its services
  that provide details about the context of an API query request. Context keys can
  be evaluated by testing against a value specified in an IAM policy. Use
  `GetContextKeysForCustomPolicy` to understand what key names and values you must
  supply when you call `SimulateCustomPolicy`. Note that all parameters are shown
  in unencoded form here for clarity but must be URL encoded to be included as a
  part of a real HTML request.
  """
  def get_context_keys_for_custom_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetContextKeysForCustomPolicy", input, options)
  end

  @doc """
  Gets a list of all of the context keys referenced in all the IAM policies that
  are attached to the specified IAM entity.

  The entity can be an IAM user, group, or role. If you specify a user, then the
  request also includes all of the policies attached to groups that the user is a
  member of.

  You can optionally include a list of one or more additional policies, specified
  as strings. If you want to include *only* a list of policies by string, use
  `GetContextKeysForCustomPolicy` instead.

  **Note:** This operation discloses information about the permissions granted to
  other users. If you do not want users to see other user's permissions, then
  consider allowing them to use `GetContextKeysForCustomPolicy` instead.

  Context keys are variables maintained by Amazon Web Services and its services
  that provide details about the context of an API query request. Context keys can
  be evaluated by testing against a value in an IAM policy. Use
  `GetContextKeysForPrincipalPolicy` to understand what key names and values you
  must supply when you call `SimulatePrincipalPolicy`.
  """
  def get_context_keys_for_principal_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetContextKeysForPrincipalPolicy", input, options)
  end

  @doc """
  Retrieves a credential report for the account.

  For more information about the credential report, see [Getting credential reports](https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html)
  in the *IAM User Guide*.
  """
  def get_credential_report(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetCredentialReport", input, options)
  end

  @doc """
  Returns a list of IAM users that are in the specified IAM group.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def get_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetGroup", input, options)
  end

  @doc """
  Retrieves the specified inline policy document that is embedded in the specified
  IAM group.

  Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to
  convert the policy back to plain JSON text. For example, if you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in the
  Java SDK. Other languages and SDKs provide similar functionality.

  An IAM group can also have managed policies attached to it. To retrieve a
  managed policy document that is attached to a group, use `GetPolicy` to
  determine the policy's default version, then use `GetPolicyVersion` to retrieve
  the policy document.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def get_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetGroupPolicy", input, options)
  end

  @doc """
  Retrieves information about the specified instance profile, including the
  instance profile's path, GUID, ARN, and role.

  For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html)
  in the *IAM User Guide*.
  """
  def get_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetInstanceProfile", input, options)
  end

  @doc """
  Retrieves the user name for the specified IAM user.

  A login profile is created when you create a password for the user to access the
  Management Console. If the user does not exist or does not have a password, the
  operation returns a 404 (`NoSuchEntity`) error.

  If you create an IAM user with access to the console, the `CreateDate` reflects
  the date you created the initial password for the user.

  If you create an IAM user with programmatic access, and then later add a
  password for the user to access the Management Console, the `CreateDate`
  reflects the initial password creation date. A user with programmatic access
  does not have a login profile unless you create a password for the user to
  access the Management Console.
  """
  def get_login_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLoginProfile", input, options)
  end

  @doc """
  Returns information about the specified OpenID Connect (OIDC) provider resource
  object in IAM.
  """
  def get_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetOpenIDConnectProvider", input, options)
  end

  @doc """
  Retrieves the service last accessed data report for Organizations that was
  previously generated using the ` `GenerateOrganizationsAccessReport` `
  operation.

  This operation retrieves the status of your report job and the report contents.

  Depending on the parameters that you passed when you generated the report, the
  data returned could include different information. For details, see
  `GenerateOrganizationsAccessReport`.

  To call this operation, you must be signed in to the management account in your
  organization. SCPs must be enabled for your organization root. You must have
  permissions to perform this operation. For more information, see [Refining permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the *IAM User Guide*.

  For each service that principals in an account (root users, IAM users, or IAM
  roles) could access using SCPs, the operation returns details about the most
  recent access attempt. If there was no attempt, the service is listed without
  details about the most recent attempt to access the service. If the operation
  fails, it returns the reason that it failed.

  By default, the list is sorted by service namespace.
  """
  def get_organizations_access_report(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetOrganizationsAccessReport", input, options)
  end

  @doc """
  Retrieves information about the specified managed policy, including the policy's
  default version and the total number of IAM users, groups, and roles to which
  the policy is attached.

  To retrieve the list of the specific users, groups, and roles that the policy is
  attached to, use `ListEntitiesForPolicy`. This operation returns metadata about
  the policy. To retrieve the actual policy document for a specific version of the
  policy, use `GetPolicyVersion`.

  This operation retrieves information about managed policies. To retrieve
  information about an inline policy that is embedded with an IAM user, group, or
  role, use `GetUserPolicy`, `GetGroupPolicy`, or `GetRolePolicy`.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def get_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetPolicy", input, options)
  end

  @doc """
  Retrieves information about the specified version of the specified managed
  policy, including the policy document.

  Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to
  convert the policy back to plain JSON text. For example, if you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in the
  Java SDK. Other languages and SDKs provide similar functionality.

  To list the available versions for a policy, use `ListPolicyVersions`.

  This operation retrieves information about managed policies. To retrieve
  information about an inline policy that is embedded in a user, group, or role,
  use `GetUserPolicy`, `GetGroupPolicy`, or `GetRolePolicy`.

  For more information about the types of policies, see [Managed policies and inline
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For more information about managed policy versions, see [Versioning for managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
  in the *IAM User Guide*.
  """
  def get_policy_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetPolicyVersion", input, options)
  end

  @doc """
  Retrieves information about the specified role, including the role's path, GUID,
  ARN, and the role's trust policy that grants permission to assume the role.

  For more information about roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

  Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to
  convert the policy back to plain JSON text. For example, if you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in the
  Java SDK. Other languages and SDKs provide similar functionality.
  """
  def get_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRole", input, options)
  end

  @doc """
  Retrieves the specified inline policy document that is embedded with the
  specified IAM role.

  Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to
  convert the policy back to plain JSON text. For example, if you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in the
  Java SDK. Other languages and SDKs provide similar functionality.

  An IAM role can also have managed policies attached to it. To retrieve a managed
  policy document that is attached to a role, use `GetPolicy` to determine the
  policy's default version, then use `GetPolicyVersion` to retrieve the policy
  document.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For more information about roles, see [Using roles to delegate permissions and federate
  identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  """
  def get_role_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRolePolicy", input, options)
  end

  @doc """
  Returns the SAML provider metadocument that was uploaded when the IAM SAML
  provider resource object was created or updated.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  def get_saml_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSAMLProvider", input, options)
  end

  @doc """
  Retrieves information about the specified server certificate stored in IAM.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This topic includes a list of Amazon Web Services
  services that can use the server certificates that you manage with IAM.
  """
  def get_server_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetServerCertificate", input, options)
  end

  @doc """
  Retrieves a service last accessed report that was created using the
  `GenerateServiceLastAccessedDetails` operation.

  You can use the `JobId` parameter in `GetServiceLastAccessedDetails` to retrieve
  the status of your report job. When the report is complete, you can retrieve the
  generated report. The report includes a list of Amazon Web Services services
  that the resource (user, group, role, or managed policy) can access.

  Service last accessed data does not use other policy types when determining
  whether a resource could access a service. These other policy types include
  resource-based policies, access control lists, Organizations policies, IAM
  permissions boundaries, and STS assume role policies. It only applies
  permissions policy logic. For more about the evaluation of policy types, see
  [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the *IAM User Guide*.

  For each service that the resource could access using permissions policies, the
  operation returns details about the most recent access attempt. If there was no
  attempt, the service is listed without details about the most recent attempt to
  access the service. If the operation fails, the `GetServiceLastAccessedDetails`
  operation returns the reason that it failed.

  The `GetServiceLastAccessedDetails` operation returns a list of services. This
  list includes the number of entities that have attempted to access the service
  and the date and time of the last attempt. It also returns the ARN of the
  following entity, depending on the resource ARN that you used to generate the
  report:

    * **User** – Returns the user ARN that you used to generate the
  report

    * **Group** – Returns the ARN of the group member (user) that last
  attempted to access the service

    * **Role** – Returns the role ARN that you used to generate the
  report

    * **Policy** – Returns the ARN of the user or role that last used
  the policy to attempt to access the service

  By default, the list is sorted by service namespace.

  If you specified `ACTION_LEVEL` granularity when you generated the report, this
  operation returns service and action last accessed data. This includes the most
  recent access attempt for each tracked action within a service. Otherwise, this
  operation returns only service data.

  For more information about service and action last accessed data, see [Reducing permissions using service last accessed
  data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html)
  in the *IAM User Guide*.
  """
  def get_service_last_accessed_details(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetServiceLastAccessedDetails", input, options)
  end

  @doc """
  After you generate a group or policy report using the
  `GenerateServiceLastAccessedDetails` operation, you can use the `JobId`
  parameter in `GetServiceLastAccessedDetailsWithEntities`.

  This operation retrieves the status of your report job and a list of entities
  that could have used group or policy permissions to access the specified
  service.

    * **Group** – For a group report, this operation returns a list of
  users in the group that could have used the group’s policies in an attempt to
  access the service.

    * **Policy** – For a policy report, this operation returns a list of
  entities (users or roles) that could have used the policy in an attempt to
  access the service.

  You can also use this operation for user or role reports to retrieve details
  about those entities.

  If the operation fails, the `GetServiceLastAccessedDetailsWithEntities`
  operation returns the reason that it failed.

  By default, the list of associated entities is sorted by date, with the most
  recent access listed first.
  """
  def get_service_last_accessed_details_with_entities(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetServiceLastAccessedDetailsWithEntities",
      input,
      options
    )
  end

  @doc """
  Retrieves the status of your service-linked role deletion.

  After you use `DeleteServiceLinkedRole` to submit a service-linked role for
  deletion, you can use the `DeletionTaskId` parameter in
  `GetServiceLinkedRoleDeletionStatus` to check the status of the deletion. If the
  deletion fails, this operation returns the reason that it failed, if that
  information is returned by the service.
  """
  def get_service_linked_role_deletion_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetServiceLinkedRoleDeletionStatus", input, options)
  end

  @doc """
  Retrieves the specified SSH public key, including metadata about the key.

  The SSH public key retrieved by this operation is used only for authenticating
  the associated IAM user to an CodeCommit repository. For more information about
  using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH
  connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  def get_ssh_public_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSSHPublicKey", input, options)
  end

  @doc """
  Retrieves information about the specified IAM user, including the user's
  creation date, path, unique ID, and ARN.

  If you do not specify a user name, IAM determines the user name implicitly based
  on the Amazon Web Services access key ID used to sign the request to this
  operation.
  """
  def get_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUser", input, options)
  end

  @doc """
  Retrieves the specified inline policy document that is embedded in the specified
  IAM user.

  Policies returned by this operation are URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to
  convert the policy back to plain JSON text. For example, if you use Java, you
  can use the `decode` method of the `java.net.URLDecoder` utility class in the
  Java SDK. Other languages and SDKs provide similar functionality.

  An IAM user can also have managed policies attached to it. To retrieve a managed
  policy document that is attached to a user, use `GetPolicy` to determine the
  policy's default version. Then use `GetPolicyVersion` to retrieve the policy
  document.

  For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def get_user_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUserPolicy", input, options)
  end

  @doc """
  Returns information about the access key IDs associated with the specified IAM
  user.

  If there is none, the operation returns an empty list.

  Although each user is limited to a small number of keys, you can still paginate
  the results using the `MaxItems` and `Marker` parameters.

  If the `UserName` field is not specified, the user name is determined implicitly
  based on the Amazon Web Services access key ID used to sign the request. This
  operation works for access keys under the account. Consequently, you can use
  this operation to manage account root user credentials even if the account has
  no associated users.

  To ensure the security of your account, the secret access key is accessible only
  during key and user creation.
  """
  def list_access_keys(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAccessKeys", input, options)
  end

  @doc """
  Lists the account alias associated with the account (Note: you can have only
  one).

  For information about using an account alias, see [Using an alias for your account ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html)
  in the *IAM User Guide*.
  """
  def list_account_aliases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAccountAliases", input, options)
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM group.

  An IAM group can also have inline policies embedded with it. To list the inline
  policies for a group, use `ListGroupPolicies`. For information about policies,
  see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters. You
  can use the `PathPrefix` parameter to limit the list of policies to only those
  matching the specified path prefix. If there are no policies attached to the
  specified group (or none that match the specified path prefix), the operation
  returns an empty list.
  """
  def list_attached_group_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAttachedGroupPolicies", input, options)
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM role.

  An IAM role can also have inline policies embedded with it. To list the inline
  policies for a role, use `ListRolePolicies`. For information about policies, see
  [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters. You
  can use the `PathPrefix` parameter to limit the list of policies to only those
  matching the specified path prefix. If there are no policies attached to the
  specified role (or none that match the specified path prefix), the operation
  returns an empty list.
  """
  def list_attached_role_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAttachedRolePolicies", input, options)
  end

  @doc """
  Lists all managed policies that are attached to the specified IAM user.

  An IAM user can also have inline policies embedded with it. To list the inline
  policies for a user, use `ListUserPolicies`. For information about policies, see
  [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters. You
  can use the `PathPrefix` parameter to limit the list of policies to only those
  matching the specified path prefix. If there are no policies attached to the
  specified group (or none that match the specified path prefix), the operation
  returns an empty list.
  """
  def list_attached_user_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAttachedUserPolicies", input, options)
  end

  @doc """
  Lists all IAM users, groups, and roles that the specified managed policy is
  attached to.

  You can use the optional `EntityFilter` parameter to limit the results to a
  particular type of entity (users, groups, or roles). For example, to list only
  the roles that are attached to the specified policy, set `EntityFilter` to
  `Role`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_entities_for_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEntitiesForPolicy", input, options)
  end

  @doc """
  Lists the names of the inline policies that are embedded in the specified IAM
  group.

  An IAM group can also have managed policies attached to it. To list the managed
  policies that are attached to a group, use `ListAttachedGroupPolicies`. For more
  information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters. If
  there are no inline policies embedded with the specified group, the operation
  returns an empty list.
  """
  def list_group_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroupPolicies", input, options)
  end

  @doc """
  Lists the IAM groups that have the specified path prefix.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroups", input, options)
  end

  @doc """
  Lists the IAM groups that the specified IAM user belongs to.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_groups_for_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroupsForUser", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM instance profile.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def list_instance_profile_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstanceProfileTags", input, options)
  end

  @doc """
  Lists the instance profiles that have the specified path prefix.

  If there are none, the operation returns an empty list. For more information
  about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for an
  instance profile, see `GetInstanceProfile`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_instance_profiles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstanceProfiles", input, options)
  end

  @doc """
  Lists the instance profiles that have the specified associated IAM role.

  If there are none, the operation returns an empty list. For more information
  about instance profiles, go to [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_instance_profiles_for_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstanceProfilesForRole", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM virtual multi-factor
  authentication (MFA) device.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def list_mfa_device_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMFADeviceTags", input, options)
  end

  @doc """
  Lists the MFA devices for an IAM user.

  If the request includes a IAM user name, then this operation lists all the MFA
  devices associated with the specified user. If you do not specify a user name,
  IAM determines the user name implicitly based on the Amazon Web Services access
  key ID signing the request for this operation.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_mfa_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMFADevices", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified OpenID Connect
  (OIDC)-compatible identity provider.

  The returned list of tags is sorted by tag key. For more information, see [About web identity
  federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def list_open_id_connect_provider_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOpenIDConnectProviderTags", input, options)
  end

  @doc """
  Lists information about the IAM OpenID Connect (OIDC) provider resource objects
  defined in the account.

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for an
  OIDC provider, see `GetOpenIDConnectProvider`.
  """
  def list_open_id_connect_providers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOpenIDConnectProviders", input, options)
  end

  @doc """
  Lists all the managed policies that are available in your account, including
  your own customer-defined managed policies and all Amazon Web Services managed
  policies.

  You can filter the list of policies that is returned using the optional
  `OnlyAttached`, `Scope`, and `PathPrefix` parameters. For example, to list only
  the customer managed policies in your Amazon Web Services account, set `Scope`
  to `Local`. To list only Amazon Web Services managed policies, set `Scope` to
  `AWS`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.

  For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for a
  customer manged policy, see `GetPolicy`.
  """
  def list_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPolicies", input, options)
  end

  @doc """
  Retrieves a list of policies that the IAM identity (user, group, or role) can
  use to access each specified service.

  This operation does not use other policy types when determining whether a
  resource could access a service. These other policy types include resource-based
  policies, access control lists, Organizations policies, IAM permissions
  boundaries, and STS assume role policies. It only applies permissions policy
  logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics)
  in the *IAM User Guide*.

  The list of policies returned by the operation depends on the ARN of the
  identity that you provide.

    * **User** – The list of policies includes the managed and inline
  policies that are attached to the user directly. The list also includes any
  additional managed and inline policies that are attached to the group to which
  the user belongs.

    * **Group** – The list of policies includes only the managed and
  inline policies that are attached to the group directly. Policies that are
  attached to the group’s user are not included.

    * **Role** – The list of policies includes only the managed and
  inline policies that are attached to the role.

  For each managed policy, this operation returns the ARN and policy name. For
  each inline policy, it returns the policy name and the entity to which it is
  attached. Inline policies do not have an ARN. For more information about these
  policy types, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
  in the *IAM User Guide*.

  Policies that are attached to users and roles as permissions boundaries are not
  returned. To view which managed policy is currently used to set the permissions
  boundary for a user or role, use the `GetUser` or `GetRole` operations.
  """
  def list_policies_granting_service_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPoliciesGrantingServiceAccess", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM customer managed policy.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def list_policy_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPolicyTags", input, options)
  end

  @doc """
  Lists information about the versions of the specified managed policy, including
  the version that is currently set as the policy's default version.

  For more information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def list_policy_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPolicyVersions", input, options)
  end

  @doc """
  Lists the names of the inline policies that are embedded in the specified IAM
  role.

  An IAM role can also have managed policies attached to it. To list the managed
  policies that are attached to a role, use `ListAttachedRolePolicies`. For more
  information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters. If
  there are no inline policies embedded with the specified role, the operation
  returns an empty list.
  """
  def list_role_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRolePolicies", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified role.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def list_role_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRoleTags", input, options)
  end

  @doc """
  Lists the IAM roles that have the specified path prefix.

  If there are none, the operation returns an empty list. For more information
  about roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for a
  role, see `GetRole`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_roles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRoles", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified Security Assertion Markup
  Language (SAML) identity provider.

  The returned list of tags is sorted by tag key. For more information, see [About SAML 2.0-based
  federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html).

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def list_saml_provider_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSAMLProviderTags", input, options)
  end

  @doc """
  Lists the SAML provider resource objects defined in IAM in the account.

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for a
  SAML provider, see `GetSAMLProvider`.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  def list_saml_providers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSAMLProviders", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM server certificate.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

  For certificates in a Region supported by Certificate Manager (ACM), we
  recommend that you don't use IAM server certificates. Instead, use ACM to
  provision, manage, and deploy your server certificates. For more information
  about IAM server certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.
  """
  def list_server_certificate_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServerCertificateTags", input, options)
  end

  @doc """
  Lists the server certificates stored in IAM that have the specified path prefix.

  If none exist, the operation returns an empty list.

  You can paginate the results using the `MaxItems` and `Marker` parameters.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This topic also includes a list of Amazon Web Services
  services that can use the server certificates that you manage with IAM.

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for a
  servercertificate, see `GetServerCertificate`.
  """
  def list_server_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServerCertificates", input, options)
  end

  @doc """
  Returns information about the service-specific credentials associated with the
  specified IAM user.

  If none exists, the operation returns an empty list. The service-specific
  credentials returned by this operation are used only for authenticating the IAM
  user to a specific service. For more information about using service-specific
  credentials to authenticate to an Amazon Web Services service, see [Set up service-specific
  credentials](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html)
  in the CodeCommit User Guide.
  """
  def list_service_specific_credentials(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServiceSpecificCredentials", input, options)
  end

  @doc """
  Returns information about the signing certificates associated with the specified
  IAM user.

  If none exists, the operation returns an empty list.

  Although each user is limited to a small number of signing certificates, you can
  still paginate the results using the `MaxItems` and `Marker` parameters.

  If the `UserName` field is not specified, the user name is determined implicitly
  based on the Amazon Web Services access key ID used to sign the request for this
  operation. This operation works for access keys under the account. Consequently,
  you can use this operation to manage account root user credentials even if the
  account has no associated users.
  """
  def list_signing_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSigningCertificates", input, options)
  end

  @doc """
  Returns information about the SSH public keys associated with the specified IAM
  user.

  If none exists, the operation returns an empty list.

  The SSH public keys returned by this operation are used only for authenticating
  the IAM user to an CodeCommit repository. For more information about using SSH
  keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.

  Although each user is limited to a small number of keys, you can still paginate
  the results using the `MaxItems` and `Marker` parameters.
  """
  def list_ssh_public_keys(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSSHPublicKeys", input, options)
  end

  @doc """
  Lists the names of the inline policies embedded in the specified IAM user.

  An IAM user can also have managed policies attached to it. To list the managed
  policies that are attached to a user, use `ListAttachedUserPolicies`. For more
  information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  You can paginate the results using the `MaxItems` and `Marker` parameters. If
  there are no inline policies embedded with the specified user, the operation
  returns an empty list.
  """
  def list_user_policies(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUserPolicies", input, options)
  end

  @doc """
  Lists the tags that are attached to the specified IAM user.

  The returned list of tags is sorted by tag key. For more information about
  tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def list_user_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUserTags", input, options)
  end

  @doc """
  Lists the IAM users that have the specified path prefix.

  If no path prefix is specified, the operation returns all users in the account.
  If there are none, the operation returns an empty list.

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for a
  user, see `GetUser`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUsers", input, options)
  end

  @doc """
  Lists the virtual MFA devices defined in the account by assignment status.

  If you do not specify an assignment status, the operation returns a list of all
  virtual MFA devices. Assignment status can be `Assigned`, `Unassigned`, or
  `Any`.

  IAM resource-listing operations return a subset of the available attributes for
  the resource. For example, this operation does not return tags, even though they
  are an attribute of the returned object. To view all of the information for a
  virtual MFA device, see `ListVirtualMFADevices`.

  You can paginate the results using the `MaxItems` and `Marker` parameters.
  """
  def list_virtual_mfa_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListVirtualMFADevices", input, options)
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified IAM
  group.

  A user can also have managed policies attached to it. To attach a managed policy
  to a group, use `AttachGroupPolicy`. To create a new managed policy, use
  `CreatePolicy`. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For information about the maximum number of inline policies that you can embed
  in a group, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because policy documents can be large, you should use POST rather than GET when
  calling `PutGroupPolicy`. For general information about using the Query API with
  IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.
  """
  def put_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutGroupPolicy", input, options)
  end

  @doc """
  Adds or updates the policy that is specified as the IAM role's permissions
  boundary.

  You can use an Amazon Web Services managed policy or a customer managed policy
  to set the boundary for a role. Use the boundary to control the maximum
  permissions that the role can have. Setting a permissions boundary is an
  advanced feature that can affect the permissions for the role.

  You cannot set the boundary for a service-linked role.

  Policies used as permissions boundaries do not provide permissions. You must
  also attach a permissions policy to the role. To learn how the effective
  permissions for a role are evaluated, see [IAM JSON policy evaluation logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html)
  in the IAM User Guide.
  """
  def put_role_permissions_boundary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRolePermissionsBoundary", input, options)
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified IAM
  role.

  When you embed an inline policy in a role, the inline policy is used as part of
  the role's access (permissions) policy. The role's trust policy is created at
  the same time as the role, using `CreateRole`. You can update a role's trust
  policy using `UpdateAssumeRolePolicy`. For more information about IAM roles, see
  [Using roles to delegate permissions and federate identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).

  A role can also have a managed policy attached to it. To attach a managed policy
  to a role, use `AttachRolePolicy`. To create a new managed policy, use
  `CreatePolicy`. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For information about the maximum number of inline policies that you can embed
  with a role, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because policy documents can be large, you should use POST rather than GET when
  calling `PutRolePolicy`. For general information about using the Query API with
  IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.
  """
  def put_role_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRolePolicy", input, options)
  end

  @doc """
  Adds or updates the policy that is specified as the IAM user's permissions
  boundary.

  You can use an Amazon Web Services managed policy or a customer managed policy
  to set the boundary for a user. Use the boundary to control the maximum
  permissions that the user can have. Setting a permissions boundary is an
  advanced feature that can affect the permissions for the user.

  Policies that are used as permissions boundaries do not provide permissions. You
  must also attach a permissions policy to the user. To learn how the effective
  permissions for a user are evaluated, see [IAM JSON policy evaluation logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html)
  in the IAM User Guide.
  """
  def put_user_permissions_boundary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutUserPermissionsBoundary", input, options)
  end

  @doc """
  Adds or updates an inline policy document that is embedded in the specified IAM
  user.

  An IAM user can also have a managed policy attached to it. To attach a managed
  policy to a user, use `AttachUserPolicy`. To create a new managed policy, use
  `CreatePolicy`. For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.

  For information about the maximum number of inline policies that you can embed
  in a user, see [IAM and STS quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because policy documents can be large, you should use POST rather than GET when
  calling `PutUserPolicy`. For general information about using the Query API with
  IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.
  """
  def put_user_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutUserPolicy", input, options)
  end

  @doc """
  Removes the specified client ID (also known as audience) from the list of client
  IDs registered for the specified IAM OpenID Connect (OIDC) provider resource
  object.

  This operation is idempotent; it does not fail or return an error if you try to
  remove a client ID that does not exist.
  """
  def remove_client_id_from_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "RemoveClientIDFromOpenIDConnectProvider",
      input,
      options
    )
  end

  @doc """
  Removes the specified IAM role from the specified EC2 instance profile.

  Make sure that you do not have any Amazon EC2 instances running with the role
  you are about to remove from the instance profile. Removing a role from an
  instance profile that is associated with a running instance might break any
  applications running on the instance.

  For more information about IAM roles, see [Working with roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html).
  For more information about instance profiles, see [About instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html).
  """
  def remove_role_from_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveRoleFromInstanceProfile", input, options)
  end

  @doc """
  Removes the specified user from the specified group.
  """
  def remove_user_from_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveUserFromGroup", input, options)
  end

  @doc """
  Resets the password for a service-specific credential.

  The new password is Amazon Web Services generated and cryptographically strong.
  It cannot be configured by the user. Resetting the password immediately
  invalidates the previous password associated with this user.
  """
  def reset_service_specific_credential(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetServiceSpecificCredential", input, options)
  end

  @doc """
  Synchronizes the specified MFA device with its IAM resource object on the Amazon
  Web Services servers.

  For more information about creating and working with virtual MFA devices, see
  [Using a virtual MFA device](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html)
  in the *IAM User Guide*.
  """
  def resync_mfa_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResyncMFADevice", input, options)
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative) version.

  This operation affects all users, groups, and roles that the policy is attached
  to. To list the users, groups, and roles that the policy is attached to, use
  `ListEntitiesForPolicy`.

  For information about managed policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
  in the *IAM User Guide*.
  """
  def set_default_policy_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetDefaultPolicyVersion", input, options)
  end

  @doc """
  Sets the specified version of the global endpoint token as the token version
  used for the account.

  By default, Security Token Service (STS) is available as a global service, and
  all STS requests go to a single endpoint at `https://sts.amazonaws.com`. Amazon
  Web Services recommends using Regional STS endpoints to reduce latency, build in
  redundancy, and increase session token availability. For information about
  Regional endpoints for STS, see [Security Token Service endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/sts.html) in the *Amazon
  Web Services General Reference*.

  If you make an STS call to the global endpoint, the resulting session tokens
  might be valid in some Regions but not others. It depends on the version that is
  set in this operation. Version 1 tokens are valid only in Regions that are
  available by default. These tokens do not work in manually enabled Regions, such
  as Asia Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However,
  version 2 tokens are longer and might affect systems where you temporarily store
  tokens. For information, see [Activating and deactivating STS in an Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the *IAM User Guide*.

  To view the current session token version, see the `GlobalEndpointTokenVersion`
  entry in the response of the `GetAccountSummary` operation.
  """
  def set_security_token_service_preferences(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetSecurityTokenServicePreferences", input, options)
  end

  @doc """
  Simulate how a set of IAM policies and optionally a resource-based policy works
  with a list of API operations and Amazon Web Services resources to determine the
  policies' effective permissions.

  The policies are provided as strings.

  The simulation does not perform the API operations; it only checks the
  authorization to determine if the simulated policies allow or deny the
  operations. You can simulate resources that don't exist in your account.

  If you want to simulate existing policies that are attached to an IAM user,
  group, or role, use `SimulatePrincipalPolicy` instead.

  Context keys are variables that are maintained by Amazon Web Services and its
  services and which provide details about the context of an API query request.
  You can use the `Condition` element of an IAM policy to evaluate context keys.
  To get the list of context keys that the policies require for correct
  simulation, use `GetContextKeysForCustomPolicy`.

  If the output is long, you can use `MaxItems` and `Marker` parameters to
  paginate the results.

  For more information about using the policy simulator, see [Testing IAM policies with the IAM policy simulator
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html)in
  the *IAM User Guide*.
  """
  def simulate_custom_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SimulateCustomPolicy", input, options)
  end

  @doc """
  Simulate how a set of IAM policies attached to an IAM entity works with a list
  of API operations and Amazon Web Services resources to determine the policies'
  effective permissions.

  The entity can be an IAM user, group, or role. If you specify a user, then the
  simulation also includes all of the policies that are attached to groups that
  the user belongs to. You can simulate resources that don't exist in your
  account.

  You can optionally include a list of one or more additional policies specified
  as strings to include in the simulation. If you want to simulate only policies
  specified as strings, use `SimulateCustomPolicy` instead.

  You can also optionally include one resource-based policy to be evaluated with
  each of the resources included in the simulation.

  The simulation does not perform the API operations; it only checks the
  authorization to determine if the simulated policies allow or deny the
  operations.

  **Note:** This operation discloses information about the permissions granted to
  other users. If you do not want users to see other user's permissions, then
  consider allowing them to use `SimulateCustomPolicy` instead.

  Context keys are variables maintained by Amazon Web Services and its services
  that provide details about the context of an API query request. You can use the
  `Condition` element of an IAM policy to evaluate context keys. To get the list
  of context keys that the policies require for correct simulation, use
  `GetContextKeysForPrincipalPolicy`.

  If the output is long, you can use the `MaxItems` and `Marker` parameters to
  paginate the results.

  For more information about using the policy simulator, see [Testing IAM policies with the IAM policy simulator
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html)in
  the *IAM User Guide*.
  """
  def simulate_principal_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SimulatePrincipalPolicy", input, options)
  end

  @doc """
  Adds one or more tags to an IAM instance profile.

  If a tag with the same key name already exists, then that tag is overwritten
  with the new value.

  Each tag consists of a key name and an associated value. By assigning tags to
  your resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only an IAM
  instance profile that has a specified tag attached. For examples of policies
  that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.
  """
  def tag_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagInstanceProfile", input, options)
  end

  @doc """
  Adds one or more tags to an IAM virtual multi-factor authentication (MFA)
  device.

  If a tag with the same key name already exists, then that tag is overwritten
  with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only an IAM
  virtual MFA device that has a specified tag attached. For examples of policies
  that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.
  """
  def tag_mfa_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagMFADevice", input, options)
  end

  @doc """
  Adds one or more tags to an OpenID Connect (OIDC)-compatible identity provider.

  For more information about these providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
  If a tag with the same key name already exists, then that tag is overwritten
  with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only an OIDC
  provider that has a specified tag attached. For examples of policies that show
  how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.
  """
  def tag_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagOpenIDConnectProvider", input, options)
  end

  @doc """
  Adds one or more tags to an IAM customer managed policy.

  If a tag with the same key name already exists, then that tag is overwritten
  with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only an IAM
  customer managed policy that has a specified tag attached. For examples of
  policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in
  the *IAM User Guide*.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.
  """
  def tag_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagPolicy", input, options)
  end

  @doc """
  Adds one or more tags to an IAM role.

  The role can be a regular role or a service-linked role. If a tag with the same
  key name already exists, then that tag is overwritten with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only an IAM role
  that has a specified tag attached. You can also restrict access to only those
  resources that have a certain tag attached. For examples of policies that show
  how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    * **Cost allocation** - Use tags to help track which individuals and
  teams are using which Amazon Web Services resources.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.

  For more information about tagging, see [Tagging IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in
  the *IAM User Guide*.
  """
  def tag_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagRole", input, options)
  end

  @doc """
  Adds one or more tags to a Security Assertion Markup Language (SAML) identity
  provider.

  For more information about these providers, see [About SAML 2.0-based federation
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html).
  If a tag with the same key name already exists, then that tag is overwritten
  with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only a SAML
  identity provider that has a specified tag attached. For examples of policies
  that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.
  """
  def tag_saml_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagSAMLProvider", input, options)
  end

  @doc """
  Adds one or more tags to an IAM server certificate.

  If a tag with the same key name already exists, then that tag is overwritten
  with the new value.

  For certificates in a Region supported by Certificate Manager (ACM), we
  recommend that you don't use IAM server certificates. Instead, use ACM to
  provision, manage, and deploy your server certificates. For more information
  about IAM server certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only a server
  certificate that has a specified tag attached. For examples of policies that
  show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in the
  *IAM User Guide*.

    * **Cost allocation** - Use tags to help track which individuals and
  teams are using which Amazon Web Services resources.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.
  """
  def tag_server_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagServerCertificate", input, options)
  end

  @doc """
  Adds one or more tags to an IAM user.

  If a tag with the same key name already exists, then that tag is overwritten
  with the new value.

  A tag consists of a key name and an associated value. By assigning tags to your
  resources, you can do the following:

    * **Administrative grouping and discovery** - Attach tags to
  resources to aid in organization and search. For example, you could search for
  all resources with the key name *Project* and the value *MyImportantProject*. Or
  search for all resources with the key name *Cost Center* and the value *41200*.

    * **Access control** - Include tags in IAM user-based and
  resource-based policies. You can use tags to restrict access to only an IAM
  requesting user that has a specified tag attached. You can also restrict access
  to only those resources that have a certain tag attached. For examples of
  policies that show how to use tags to control access, see [Control access using IAM tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html) in
  the *IAM User Guide*.

    * **Cost allocation** - Use tags to help track which individuals and
  teams are using which Amazon Web Services resources.

     If any one of the tags is invalid or if you exceed the allowed
  maximum number of tags, then the entire request fails and the resource is not
  created. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

     Amazon Web Services always interprets the tag `Value` as a single
  string. If you need to store an array, you can store comma-separated values in
  the string. However, you must interpret the value in your code.

  For more information about tagging, see [Tagging IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in
  the *IAM User Guide*.
  """
  def tag_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagUser", input, options)
  end

  @doc """
  Removes the specified tags from the IAM instance profile.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def untag_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagInstanceProfile", input, options)
  end

  @doc """
  Removes the specified tags from the IAM virtual multi-factor authentication
  (MFA) device.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def untag_mfa_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagMFADevice", input, options)
  end

  @doc """
  Removes the specified tags from the specified OpenID Connect (OIDC)-compatible
  identity provider in IAM.

  For more information about OIDC providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def untag_open_id_connect_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagOpenIDConnectProvider", input, options)
  end

  @doc """
  Removes the specified tags from the customer managed policy.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def untag_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagPolicy", input, options)
  end

  @doc """
  Removes the specified tags from the role.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def untag_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagRole", input, options)
  end

  @doc """
  Removes the specified tags from the specified Security Assertion Markup Language
  (SAML) identity provider in IAM.

  For more information about these providers, see [About web identity federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html).
  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def untag_saml_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagSAMLProvider", input, options)
  end

  @doc """
  Removes the specified tags from the IAM server certificate.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.

  For certificates in a Region supported by Certificate Manager (ACM), we
  recommend that you don't use IAM server certificates. Instead, use ACM to
  provision, manage, and deploy your server certificates. For more information
  about IAM server certificates, [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.
  """
  def untag_server_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagServerCertificate", input, options)
  end

  @doc """
  Removes the specified tags from the user.

  For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
  *IAM User Guide*.
  """
  def untag_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagUser", input, options)
  end

  @doc """
  Changes the status of the specified access key from Active to Inactive, or vice
  versa.

  This operation can be used to disable a user's key as part of a key rotation
  workflow.

  If the `UserName` is not specified, the user name is determined implicitly based
  on the Amazon Web Services access key ID used to sign the request. This
  operation works for access keys under the account. Consequently, you can use
  this operation to manage account root user credentials even if the account has
  no associated users.

  For information about rotating keys, see [Managing keys and certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html)
  in the *IAM User Guide*.
  """
  def update_access_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAccessKey", input, options)
  end

  @doc """
  Updates the password policy settings for the account.

     This operation does not support partial updates. No parameters are
  required, but if you do not specify a parameter, that parameter's value reverts
  to its default value. See the **Request Parameters** section for each
  parameter's default value. Also note that some parameters do not allow the
  default parameter to be explicitly set. Instead, to invoke the default value, do
  not include that parameter when you invoke the operation.

  For more information about using a password policy, see [Managing an IAM password
  policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html)
  in the *IAM User Guide*.
  """
  def update_account_password_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAccountPasswordPolicy", input, options)
  end

  @doc """
  Updates the policy that grants an IAM entity permission to assume a role.

  This is typically referred to as the "role trust policy". For more information
  about roles, see [Using roles to delegate permissions and federate identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html).
  """
  def update_assume_role_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAssumeRolePolicy", input, options)
  end

  @doc """
  Updates the name and/or the path of the specified IAM group.

  You should understand the implications of changing a group's path or name. For
  more information, see [Renaming users and groups](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html)
  in the *IAM User Guide*.

  The person making the request (the principal), must have permission to change
  the role group with the old name and the new name. For example, to change the
  group named `Managers` to `MGRs`, the principal must have a policy that allows
  them to update both groups. If the principal has permission to update the
  `Managers` group, but not the `MGRs` group, then the update fails. For more
  information about permissions, see [Access management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html).
  """
  def update_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateGroup", input, options)
  end

  @doc """
  Changes the password for the specified IAM user.

  You can use the CLI, the Amazon Web Services API, or the **Users** page in the
  IAM console to change the password for any IAM user. Use `ChangePassword` to
  change your own password in the **My Security Credentials** page in the
  Management Console.

  For more information about modifying passwords, see [Managing passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html)
  in the *IAM User Guide*.
  """
  def update_login_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateLoginProfile", input, options)
  end

  @doc """
  Replaces the existing list of server certificate thumbprints associated with an
  OpenID Connect (OIDC) provider resource object with a new list of thumbprints.

  The list that you pass with this operation completely replaces the existing list
  of thumbprints. (The lists are not merged.)

  Typically, you need to update a thumbprint only when the identity provider's
  certificate changes, which occurs rarely. However, if the provider's certificate
  *does* change, any attempt to assume an IAM role that specifies the OIDC
  provider as a principal fails until the certificate thumbprint is updated.

  Trust for the OIDC provider is derived from the provider's certificate and is
  validated by the thumbprint. Therefore, it is best to limit access to the
  `UpdateOpenIDConnectProviderThumbprint` operation to highly privileged users.
  """
  def update_open_id_connect_provider_thumbprint(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "UpdateOpenIDConnectProviderThumbprint",
      input,
      options
    )
  end

  @doc """
  Updates the description or maximum session duration setting of a role.
  """
  def update_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRole", input, options)
  end

  @doc """
  Use `UpdateRole` instead.

  Modifies only the description of a role. This operation performs the same
  function as the `Description` parameter in the `UpdateRole` operation.
  """
  def update_role_description(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRoleDescription", input, options)
  end

  @doc """
  Updates the metadata document for an existing SAML provider resource object.

  This operation requires [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  def update_saml_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSAMLProvider", input, options)
  end

  @doc """
  Updates the name and/or the path of the specified server certificate stored in
  IAM.

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This topic also includes a list of Amazon Web Services
  services that can use the server certificates that you manage with IAM.

  You should understand the implications of changing a server certificate's path
  or name. For more information, see [Renaming a server certificate](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts)
  in the *IAM User Guide*.

  The person making the request (the principal), must have permission to change
  the server certificate with the old name and the new name. For example, to
  change the certificate named `ProductionCert` to `ProdCert`, the principal must
  have a policy that allows them to update both certificates. If the principal has
  permission to update the `ProductionCert` group, but not the `ProdCert`
  certificate, then the update fails. For more information about permissions, see
  [Access management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html) in the
  *IAM User Guide*.
  """
  def update_server_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateServerCertificate", input, options)
  end

  @doc """
  Sets the status of a service-specific credential to `Active` or `Inactive`.

  Service-specific credentials that are inactive cannot be used for authentication
  to the service. This operation can be used to disable a user's service-specific
  credential as part of a credential rotation work flow.
  """
  def update_service_specific_credential(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateServiceSpecificCredential", input, options)
  end

  @doc """
  Changes the status of the specified user signing certificate from active to
  disabled, or vice versa.

  This operation can be used to disable an IAM user's signing certificate as part
  of a certificate rotation work flow.

  If the `UserName` field is not specified, the user name is determined implicitly
  based on the Amazon Web Services access key ID used to sign the request. This
  operation works for access keys under the account. Consequently, you can use
  this operation to manage account root user credentials even if the account has
  no associated users.
  """
  def update_signing_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSigningCertificate", input, options)
  end

  @doc """
  Sets the status of an IAM user's SSH public key to active or inactive.

  SSH public keys that are inactive cannot be used for authentication. This
  operation can be used to disable a user's SSH public key as part of a key
  rotation work flow.

  The SSH public key affected by this operation is used only for authenticating
  the associated IAM user to an CodeCommit repository. For more information about
  using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH
  connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  def update_ssh_public_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSSHPublicKey", input, options)
  end

  @doc """
  Updates the name and/or the path of the specified IAM user.

  You should understand the implications of changing an IAM user's path or name.
  For more information, see [Renaming an IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming)
  and [Renaming an IAM group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html)
  in the *IAM User Guide*.

  To change a user name, the requester must have appropriate permissions on both
  the source object and the target object. For example, to change Bob to Robert,
  the entity making the request must have permission on Bob and Robert, or must
  have permission on all (*). For more information about permissions, see
  [Permissions and policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html).
  """
  def update_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUser", input, options)
  end

  @doc """
  Uploads a server certificate entity for the account.

  The server certificate entity includes a public key certificate, a private key,
  and an optional certificate chain, which should all be PEM-encoded.

  We recommend that you use [Certificate Manager](https://docs.aws.amazon.com/acm/) to provision, manage, and deploy your
  server certificates. With ACM you can request a certificate, deploy it to Amazon
  Web Services resources, and let ACM handle certificate renewals for you.
  Certificates provided by ACM are free. For more information about using ACM, see
  the [Certificate Manager User Guide](https://docs.aws.amazon.com/acm/latest/userguide/).

  For more information about working with server certificates, see [Working with server
  certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*. This topic includes a list of Amazon Web Services
  services that can use the server certificates that you manage with IAM.

  For information about the number of server certificates you can upload, see [IAM and STS
  quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
  in the *IAM User Guide*.

  Because the body of the public key certificate, private key, and the certificate
  chain can be large, you should use POST rather than GET when calling
  `UploadServerCertificate`. For information about setting up signatures and
  authorization through the API, see [Signing Amazon Web Services API requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  in the *Amazon Web Services General Reference*. For general information about
  using the Query API with IAM, see [Calling the API by making HTTP query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html) in
  the *IAM User Guide*.
  """
  def upload_server_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UploadServerCertificate", input, options)
  end

  @doc """
  Uploads an X.509 signing certificate and associates it with the specified IAM
  user.

  Some Amazon Web Services services require you to use certificates to validate
  requests that are signed with a corresponding private key. When you upload the
  certificate, its default status is `Active`.

  For information about when you would use an X.509 signing certificate, see
  [Managing server certificates in IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
  in the *IAM User Guide*.

  If the `UserName` is not specified, the IAM user name is determined implicitly
  based on the Amazon Web Services access key ID used to sign the request. This
  operation works for access keys under the account. Consequently, you can use
  this operation to manage account root user credentials even if the account has
  no associated users.

  Because the body of an X.509 certificate can be large, you should use POST
  rather than GET when calling `UploadSigningCertificate`. For information about
  setting up signatures and authorization through the API, see [Signing Amazon Web Services API
  requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
  in the *Amazon Web Services General Reference*. For general information about
  using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
  in the *IAM User Guide*.
  """
  def upload_signing_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UploadSigningCertificate", input, options)
  end

  @doc """
  Uploads an SSH public key and associates it with the specified IAM user.

  The SSH public key uploaded by this operation can be used only for
  authenticating the associated IAM user to an CodeCommit repository. For more
  information about using SSH keys to authenticate to an CodeCommit repository,
  see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html)
  in the *CodeCommit User Guide*.
  """
  def upload_ssh_public_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UploadSSHPublicKey", input, options)
  end
end
