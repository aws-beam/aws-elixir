# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOAdmin do
  @moduledoc """
  IAM Identity Center (successor to Single Sign-On) helps you securely create, or
  connect, your workforce identities and manage their access centrally across
  Amazon Web Services accounts and applications.

  IAM Identity Center is the recommended approach for workforce authentication and
  authorization in Amazon Web Services, for organizations of any size and type.

  IAM Identity Center uses the `sso` and `identitystore` API namespaces.

  This reference guide provides information on single sign-on operations which
  could be used for access management of Amazon Web Services accounts. For
  information about IAM Identity Center features, see the [IAM Identity Center User
  Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

  Many operations in the IAM Identity Center APIs rely on identifiers for users
  and groups, known as principals. For more information about how to work with
  principals and principal IDs in IAM Identity Center, see the [Identity Store API Reference](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html).

  Amazon Web Services provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .Net, iOS, Android, and
  more). The SDKs provide a convenient way to create programmatic access to IAM
  Identity Center and other Amazon Web Services services. For more information
  about the Amazon Web Services SDKs, including how to download and install them,
  see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "SSO Admin",
      api_version: "2020-07-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sso",
      global?: false,
      protocol: "json",
      service_id: "SSO Admin",
      signature_version: "v4",
      signing_name: "sso",
      target_prefix: "SWBExternalService"
    }
  end

  @doc """
  Attaches the specified customer managed policy to the specified `PermissionSet`.
  """
  def attach_customer_managed_policy_reference_to_permission_set(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AttachCustomerManagedPolicyReferenceToPermissionSet",
      input,
      options
    )
  end

  @doc """
  Attaches an Amazon Web Services managed policy ARN to a permission set.

  If the permission set is already referenced by one or more account assignments,
  you will need to call ` `ProvisionPermissionSet` ` after this operation. Calling
  `ProvisionPermissionSet` applies the corresponding IAM policy updates to all
  assigned accounts.
  """
  def attach_managed_policy_to_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachManagedPolicyToPermissionSet", input, options)
  end

  @doc """
  Assigns access to a principal for a specified Amazon Web Services account using
  a specified permission set.

  The term *principal* here refers to a user or group that is defined in IAM
  Identity Center.

  As part of a successful `CreateAccountAssignment` call, the specified permission
  set will automatically be provisioned to the account in the form of an IAM
  policy. That policy is attached to the IAM role created in IAM Identity Center.
  If the permission set is subsequently updated, the corresponding IAM policies
  attached to roles in your accounts will not be updated automatically. In this
  case, you must call ` `ProvisionPermissionSet` ` to make these updates.

  After a successful response, call `DescribeAccountAssignmentCreationStatus` to
  describe the status of an assignment creation request.
  """
  def create_account_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccountAssignment", input, options)
  end

  @doc """
  Creates an application in IAM Identity Center for the given application
  provider.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Grant application access to a user or group.
  """
  def create_application_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplicationAssignment", input, options)
  end

  @doc """
  Creates an instance of IAM Identity Center for a standalone Amazon Web Services
  account that is not managed by Organizations or a member Amazon Web Services
  account in an organization.

  You can create only one instance per account and across all Amazon Web Services
  Regions.

  The CreateInstance request is rejected if the following apply:

    * The instance is created within the organization management
  account.

    * An instance already exists in the same account.
  """
  def create_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstance", input, options)
  end

  @doc """
  Enables the attributes-based access control (ABAC) feature for the specified IAM
  Identity Center instance.

  You can also specify new attributes to add to your ABAC configuration during the
  enabling process. For more information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity Center
  User Guide*.

  After a successful response, call
  `DescribeInstanceAccessControlAttributeConfiguration` to validate that
  `InstanceAccessControlAttributeConfiguration` was created.
  """
  def create_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "CreateInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Creates a permission set within a specified IAM Identity Center instance.

  To grant users and groups access to Amazon Web Services account resources, use `
  `CreateAccountAssignment` `.
  """
  def create_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePermissionSet", input, options)
  end

  @doc """
  Creates a connection to a trusted token issuer in an instance of IAM Identity
  Center.

  A trusted token issuer enables trusted identity propagation to be used with
  applications that authenticate outside of Amazon Web Services.

  This trusted token issuer describes an external identity provider (IdP) that can
  generate claims or assertions in the form of access tokens for a user.
  Applications enabled for IAM Identity Center can use these tokens for
  authentication.
  """
  def create_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrustedTokenIssuer", input, options)
  end

  @doc """
  Deletes a principal's access from a specified Amazon Web Services account using
  a specified permission set.

  After a successful response, call `DescribeAccountAssignmentDeletionStatus` to
  describe the status of an assignment deletion request.
  """
  def delete_account_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccountAssignment", input, options)
  end

  @doc """
  Deletes the association with the application.

  The connected service resource still exists.
  """
  def delete_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes an IAM Identity Center access scope from an application.
  """
  def delete_application_access_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationAccessScope", input, options)
  end

  @doc """
  Revoke application access to an application by deleting application assignments
  for a user or group.
  """
  def delete_application_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationAssignment", input, options)
  end

  @doc """
  Deletes an authentication method from an application.
  """
  def delete_application_authentication_method(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationAuthenticationMethod", input, options)
  end

  @doc """
  Deletes a grant from an application.
  """
  def delete_application_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationGrant", input, options)
  end

  @doc """
  Deletes the inline policy from a specified permission set.
  """
  def delete_inline_policy_from_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInlinePolicyFromPermissionSet", input, options)
  end

  @doc """
  Deletes the instance of IAM Identity Center.

  Only the account that owns the instance can call this API. Neither the delegated
  administrator nor member account can delete the organization instance, but those
  roles can delete their own instance.
  """
  def delete_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstance", input, options)
  end

  @doc """
  Disables the attributes-based access control (ABAC) feature for the specified
  IAM Identity Center instance and deletes all of the attribute mappings that have
  been configured.

  Once deleted, any attributes that are received from an identity source and any
  custom attributes you have previously configured will not be passed. For more
  information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity Center
  User Guide*.
  """
  def delete_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Deletes the specified permission set.
  """
  def delete_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePermissionSet", input, options)
  end

  @doc """
  Deletes the permissions boundary from a specified `PermissionSet`.
  """
  def delete_permissions_boundary_from_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeletePermissionsBoundaryFromPermissionSet",
      input,
      options
    )
  end

  @doc """
  Deletes a trusted token issuer configuration from an instance of IAM Identity
  Center.

  Deleting this trusted token issuer configuration will cause users to lose access
  to any applications that are configured to use the trusted token issuer.
  """
  def delete_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrustedTokenIssuer", input, options)
  end

  @doc """
  Describes the status of the assignment creation request.
  """
  def describe_account_assignment_creation_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountAssignmentCreationStatus", input, options)
  end

  @doc """
  Describes the status of the assignment deletion request.
  """
  def describe_account_assignment_deletion_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountAssignmentDeletionStatus", input, options)
  end

  @doc """
  Retrieves the details of an application associated with an instance of IAM
  Identity Center.
  """
  def describe_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """
  Retrieves a direct assignment of a user or group to an application.

  If the user doesn’t have a direct assignment to the application, the user may
  still have access to the application through a group. Therefore, don’t use this
  API to test access to an application for a user. Instead use
  `ListApplicationAssignmentsForPrincipal`.
  """
  def describe_application_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationAssignment", input, options)
  end

  @doc """
  Retrieves details about a provider that can be used to connect an Amazon Web
  Services managed application or customer managed application to IAM Identity
  Center.
  """
  def describe_application_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationProvider", input, options)
  end

  @doc """
  Returns the details of an instance of IAM Identity Center.

  The status can be one of the following:

    * `CREATE_IN_PROGRESS` - The instance is in the process of being
  created. When the instance is ready for use, DescribeInstance returns the status
  of `ACTIVE`. While the instance is in the `CREATE_IN_PROGRESS` state, you can
  call only DescribeInstance and DeleteInstance operations.

    * `DELETE_IN_PROGRESS` - The instance is being deleted. Returns
  `AccessDeniedException` after the delete operation completes.

    * `ACTIVE` - The instance is active.
  """
  def describe_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstance", input, options)
  end

  @doc """
  Returns the list of IAM Identity Center identity store attributes that have been
  configured to work with attributes-based access control (ABAC) for the specified
  IAM Identity Center instance.

  This will not return attributes configured and sent by an external identity
  provider. For more information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity Center
  User Guide*.
  """
  def describe_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Gets the details of the permission set.
  """
  def describe_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePermissionSet", input, options)
  end

  @doc """
  Describes the status for the given permission set provisioning request.
  """
  def describe_permission_set_provisioning_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePermissionSetProvisioningStatus", input, options)
  end

  @doc """
  Retrieves details about a trusted token issuer configuration stored in an
  instance of IAM Identity Center.

  Details include the name of the trusted token issuer, the issuer URL, and the
  path of the source attribute and the destination attribute for a trusted token
  issuer configuration.
  """
  def describe_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrustedTokenIssuer", input, options)
  end

  @doc """
  Detaches the specified customer managed policy from the specified
  `PermissionSet`.
  """
  def detach_customer_managed_policy_reference_from_permission_set(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DetachCustomerManagedPolicyReferenceFromPermissionSet",
      input,
      options
    )
  end

  @doc """
  Detaches the attached Amazon Web Services managed policy ARN from the specified
  permission set.
  """
  def detach_managed_policy_from_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachManagedPolicyFromPermissionSet", input, options)
  end

  @doc """
  Retrieves the authorized targets for an IAM Identity Center access scope for an
  application.
  """
  def get_application_access_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApplicationAccessScope", input, options)
  end

  @doc """
  Retrieves the configuration of `PutApplicationAssignmentConfiguration`.
  """
  def get_application_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApplicationAssignmentConfiguration", input, options)
  end

  @doc """
  Retrieves details about an authentication method used by an application.
  """
  def get_application_authentication_method(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApplicationAuthenticationMethod", input, options)
  end

  @doc """
  Retrieves details about an application grant.
  """
  def get_application_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApplicationGrant", input, options)
  end

  @doc """
  Obtains the inline policy assigned to the permission set.
  """
  def get_inline_policy_for_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInlinePolicyForPermissionSet", input, options)
  end

  @doc """
  Obtains the permissions boundary for a specified `PermissionSet`.
  """
  def get_permissions_boundary_for_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPermissionsBoundaryForPermissionSet", input, options)
  end

  @doc """
  Lists the status of the Amazon Web Services account assignment creation requests
  for a specified IAM Identity Center instance.
  """
  def list_account_assignment_creation_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountAssignmentCreationStatus", input, options)
  end

  @doc """
  Lists the status of the Amazon Web Services account assignment deletion requests
  for a specified IAM Identity Center instance.
  """
  def list_account_assignment_deletion_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountAssignmentDeletionStatus", input, options)
  end

  @doc """
  Lists the assignee of the specified Amazon Web Services account with the
  specified permission set.
  """
  def list_account_assignments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountAssignments", input, options)
  end

  @doc """
  Retrieves a list of the IAM Identity Center associated Amazon Web Services
  accounts that the principal has access to.
  """
  def list_account_assignments_for_principal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountAssignmentsForPrincipal", input, options)
  end

  @doc """
  Lists all the Amazon Web Services accounts where the specified permission set is
  provisioned.
  """
  def list_accounts_for_provisioned_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccountsForProvisionedPermissionSet", input, options)
  end

  @doc """
  Lists the access scopes and authorized targets associated with an application.
  """
  def list_application_access_scopes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationAccessScopes", input, options)
  end

  @doc """
  Lists Amazon Web Services account users that are assigned to an application.
  """
  def list_application_assignments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationAssignments", input, options)
  end

  @doc """
  Lists the applications to which a specified principal is assigned.
  """
  def list_application_assignments_for_principal(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationAssignmentsForPrincipal", input, options)
  end

  @doc """
  Lists all of the authentication methods supported by the specified application.
  """
  def list_application_authentication_methods(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationAuthenticationMethods", input, options)
  end

  @doc """
  List the grants associated with an application.
  """
  def list_application_grants(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationGrants", input, options)
  end

  @doc """
  Lists the application providers configured in the IAM Identity Center identity
  store.
  """
  def list_application_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationProviders", input, options)
  end

  @doc """
  Lists all applications associated with the instance of IAM Identity Center.

  When listing applications for an instance in the management account, member
  accounts must use the `applicationAccount` parameter to filter the list to only
  applications created from that account.
  """
  def list_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Lists all customer managed policies attached to a specified `PermissionSet`.
  """
  def list_customer_managed_policy_references_in_permission_set(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListCustomerManagedPolicyReferencesInPermissionSet",
      input,
      options
    )
  end

  @doc """
  Lists the details of the organization and account instances of IAM Identity
  Center that were created in or visible to the account calling this API.
  """
  def list_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstances", input, options)
  end

  @doc """
  Lists the Amazon Web Services managed policy that is attached to a specified
  permission set.
  """
  def list_managed_policies_in_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListManagedPoliciesInPermissionSet", input, options)
  end

  @doc """
  Lists the status of the permission set provisioning requests for a specified IAM
  Identity Center instance.
  """
  def list_permission_set_provisioning_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPermissionSetProvisioningStatus", input, options)
  end

  @doc """
  Lists the `PermissionSet`s in an IAM Identity Center instance.
  """
  def list_permission_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPermissionSets", input, options)
  end

  @doc """
  Lists all the permission sets that are provisioned to a specified Amazon Web
  Services account.
  """
  def list_permission_sets_provisioned_to_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPermissionSetsProvisionedToAccount", input, options)
  end

  @doc """
  Lists the tags that are attached to a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all the trusted token issuers configured in an instance of IAM Identity
  Center.
  """
  def list_trusted_token_issuers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTrustedTokenIssuers", input, options)
  end

  @doc """
  The process by which a specified permission set is provisioned to the specified
  target.
  """
  def provision_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionPermissionSet", input, options)
  end

  @doc """
  Adds or updates the list of authorized targets for an IAM Identity Center access
  scope for an application.
  """
  def put_application_access_scope(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutApplicationAccessScope", input, options)
  end

  @doc """
  Configure how users gain access to an application.

  If `AssignmentsRequired` is `true` (default value), users don’t have access to
  the application unless an assignment is created using the
  [CreateApplicationAssignment API](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).
  If `false`, all users have access to the application. If an assignment is
  created using
  [CreateApplicationAssignment](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html).,
  the user retains access if `AssignmentsRequired` is set to `true`.
  """
  def put_application_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutApplicationAssignmentConfiguration", input, options)
  end

  @doc """
  Adds or updates an authentication method for an application.
  """
  def put_application_authentication_method(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutApplicationAuthenticationMethod", input, options)
  end

  @doc """
  Adds a grant to an application.
  """
  def put_application_grant(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutApplicationGrant", input, options)
  end

  @doc """
  Attaches an inline policy to a permission set.

  If the permission set is already referenced by one or more account assignments,
  you will need to call ` `ProvisionPermissionSet` ` after this action to apply
  the corresponding IAM policy updates to all assigned accounts.
  """
  def put_inline_policy_to_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutInlinePolicyToPermissionSet", input, options)
  end

  @doc """
  Attaches an Amazon Web Services managed or customer managed policy to the
  specified `PermissionSet` as a permissions boundary.
  """
  def put_permissions_boundary_to_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPermissionsBoundaryToPermissionSet", input, options)
  end

  @doc """
  Associates a set of tags with a specified resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Disassociates a set of tags from a specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates application properties.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Update the details for the instance of IAM Identity Center that is owned by the
  Amazon Web Services account.
  """
  def update_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInstance", input, options)
  end

  @doc """
  Updates the IAM Identity Center identity store attributes that you can use with
  the IAM Identity Center instance for attributes-based access control (ABAC).

  When using an external identity provider as an identity source, you can pass
  attributes through the SAML assertion as an alternative to configuring
  attributes from the IAM Identity Center identity store. If a SAML assertion
  passes any of these attributes, IAM Identity Center replaces the attribute value
  with the value from the IAM Identity Center identity store. For more information
  about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *IAM Identity Center
  User Guide*.
  """
  def update_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "UpdateInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Updates an existing permission set.
  """
  def update_permission_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePermissionSet", input, options)
  end

  @doc """
  Updates the name of the trusted token issuer, or the path of a source attribute
  or destination attribute for a trusted token issuer configuration.

  Updating this trusted token issuer configuration might cause users to lose
  access to any applications that are configured to use the trusted token issuer.
  """
  def update_trusted_token_issuer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrustedTokenIssuer", input, options)
  end
end
