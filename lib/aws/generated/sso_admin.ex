# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOAdmin do
  @moduledoc """
  Amazon Web Services Single Sign On (SSO) is a cloud SSO service that makes it
  easy to centrally manage SSO access to multiple Amazon Web Services accounts and
  business applications.

  This guide provides information on SSO operations which could be used for access
  management of Amazon Web Services accounts. For information about Amazon Web
  Services SSO features, see the [Amazon Web Services Single Sign-On User Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

  Many operations in the SSO APIs rely on identifiers for users and groups, known
  as principals. For more information about how to work with principals and
  principal IDs in Amazon Web Services SSO, see the [Amazon Web Services SSO Identity Store API
  Reference](https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Attaches an IAM managed policy ARN to a permission set.

  If the permission set is already referenced by one or more account assignments,
  you will need to call ` `ProvisionPermissionSet` ` after this operation. Calling
  `ProvisionPermissionSet` applies the corresponding IAM policy updates to all
  assigned accounts.
  """
  def attach_managed_policy_to_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AttachManagedPolicyToPermissionSet", input, options)
  end

  @doc """
  Assigns access to a principal for a specified Amazon Web Services account using
  a specified permission set.

  The term *principal* here refers to a user or group that is defined in Amazon
  Web Services SSO.

  As part of a successful `CreateAccountAssignment` call, the specified permission
  set will automatically be provisioned to the account in the form of an IAM
  policy. That policy is attached to the SSO-created IAM role. If the permission
  set is subsequently updated, the corresponding IAM policies attached to roles in
  your accounts will not be updated automatically. In this case, you must call `
  `ProvisionPermissionSet` ` to make these updates.
  """
  def create_account_assignment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAccountAssignment", input, options)
  end

  @doc """
  Enables the attributes-based access control (ABAC) feature for the specified
  Amazon Web Services SSO instance.

  You can also specify new attributes to add to your ABAC configuration during the
  enabling process. For more information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *Amazon Web Services
  SSO User Guide*.
  """
  def create_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
      "CreateInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Creates a permission set within a specified SSO instance.

  To grant users and groups access to Amazon Web Services account resources, use `
  `CreateAccountAssignment` `.
  """
  def create_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePermissionSet", input, options)
  end

  @doc """
  Deletes a principal's access from a specified Amazon Web Services account using
  a specified permission set.
  """
  def delete_account_assignment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAccountAssignment", input, options)
  end

  @doc """
  Deletes the inline policy from a specified permission set.
  """
  def delete_inline_policy_from_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DeleteInlinePolicyFromPermissionSet",
      input,
      options
    )
  end

  @doc """
  Disables the attributes-based access control (ABAC) feature for the specified
  Amazon Web Services SSO instance and deletes all of the attribute mappings that
  have been configured.

  Once deleted, any attributes that are received from an identity source and any
  custom attributes you have previously configured will not be passed. For more
  information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *Amazon Web Services
  SSO User Guide*.
  """
  def delete_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
      "DeleteInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Deletes the specified permission set.
  """
  def delete_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePermissionSet", input, options)
  end

  @doc """
  Describes the status of the assignment creation request.
  """
  def describe_account_assignment_creation_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeAccountAssignmentCreationStatus",
      input,
      options
    )
  end

  @doc """
  Describes the status of the assignment deletion request.
  """
  def describe_account_assignment_deletion_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeAccountAssignmentDeletionStatus",
      input,
      options
    )
  end

  @doc """
  Returns the list of Amazon Web Services SSO identity store attributes that have
  been configured to work with attributes-based access control (ABAC) for the
  specified Amazon Web Services SSO instance.

  This will not return attributes configured and sent by an external identity
  provider. For more information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *Amazon Web Services
  SSO User Guide*.
  """
  def describe_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
      "DescribeInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Gets the details of the permission set.
  """
  def describe_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePermissionSet", input, options)
  end

  @doc """
  Describes the status for the given permission set provisioning request.
  """
  def describe_permission_set_provisioning_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribePermissionSetProvisioningStatus",
      input,
      options
    )
  end

  @doc """
  Detaches the attached IAM managed policy ARN from the specified permission set.
  """
  def detach_managed_policy_from_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DetachManagedPolicyFromPermissionSet",
      input,
      options
    )
  end

  @doc """
  Obtains the inline policy assigned to the permission set.
  """
  def get_inline_policy_for_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetInlinePolicyForPermissionSet", input, options)
  end

  @doc """
  Lists the status of the Amazon Web Services account assignment creation requests
  for a specified SSO instance.
  """
  def list_account_assignment_creation_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListAccountAssignmentCreationStatus",
      input,
      options
    )
  end

  @doc """
  Lists the status of the Amazon Web Services account assignment deletion requests
  for a specified SSO instance.
  """
  def list_account_assignment_deletion_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListAccountAssignmentDeletionStatus",
      input,
      options
    )
  end

  @doc """
  Lists the assignee of the specified Amazon Web Services account with the
  specified permission set.
  """
  def list_account_assignments(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAccountAssignments", input, options)
  end

  @doc """
  Lists all the Amazon Web Services accounts where the specified permission set is
  provisioned.
  """
  def list_accounts_for_provisioned_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListAccountsForProvisionedPermissionSet",
      input,
      options
    )
  end

  @doc """
  Lists the SSO instances that the caller has access to.
  """
  def list_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstances", input, options)
  end

  @doc """
  Lists the IAM managed policy that is attached to a specified permission set.
  """
  def list_managed_policies_in_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListManagedPoliciesInPermissionSet", input, options)
  end

  @doc """
  Lists the status of the permission set provisioning requests for a specified SSO
  instance.
  """
  def list_permission_set_provisioning_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListPermissionSetProvisioningStatus",
      input,
      options
    )
  end

  @doc """
  Lists the `PermissionSet`s in an SSO instance.
  """
  def list_permission_sets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPermissionSets", input, options)
  end

  @doc """
  Lists all the permission sets that are provisioned to a specified Amazon Web
  Services account.
  """
  def list_permission_sets_provisioned_to_account(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListPermissionSetsProvisionedToAccount",
      input,
      options
    )
  end

  @doc """
  Lists the tags that are attached to a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  The process by which a specified permission set is provisioned to the specified
  target.
  """
  def provision_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ProvisionPermissionSet", input, options)
  end

  @doc """
  Attaches an IAM inline policy to a permission set.

  If the permission set is already referenced by one or more account assignments,
  you will need to call ` `ProvisionPermissionSet` ` after this action to apply
  the corresponding IAM policy updates to all assigned accounts.
  """
  def put_inline_policy_to_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutInlinePolicyToPermissionSet", input, options)
  end

  @doc """
  Associates a set of tags with a specified resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Disassociates a set of tags from a specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the Amazon Web Services SSO identity store attributes that you can use
  with the Amazon Web Services SSO instance for attributes-based access control
  (ABAC).

  When using an external identity provider as an identity source, you can pass
  attributes through the SAML assertion as an alternative to configuring
  attributes from the Amazon Web Services SSO identity store. If a SAML assertion
  passes any of these attributes, Amazon Web Services SSO replaces the attribute
  value with the value from the Amazon Web Services SSO identity store. For more
  information about ABAC, see [Attribute-Based Access Control](/singlesignon/latest/userguide/abac.html) in the *Amazon Web Services
  SSO User Guide*.
  """
  def update_instance_access_control_attribute_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
      "UpdateInstanceAccessControlAttributeConfiguration",
      input,
      options
    )
  end

  @doc """
  Updates an existing permission set.
  """
  def update_permission_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdatePermissionSet", input, options)
  end
end
