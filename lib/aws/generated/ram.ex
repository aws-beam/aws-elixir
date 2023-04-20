# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RAM do
  @moduledoc """
  This is the *Resource Access Manager API Reference*.

  This documentation provides descriptions and syntax for each of the actions and
  data types in RAM. RAM is a service that helps you securely share your Amazon
  Web Services resources to other Amazon Web Services accounts. If you use
  Organizations to manage your accounts, then you can share your resources with
  your entire organization or to organizational units (OUs). For supported
  resource types, you can also share resources with individual Identity and Access
  Management (IAM) roles and users.

  To learn more about RAM, see the following resources:

    * [Resource Access Manager product page](http://aws.amazon.com/ram)     * [Resource Access Manager User
  Guide](https://docs.aws.amazon.com/ram/latest/userguide/)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-01-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ram",
      global?: false,
      protocol: "rest-json",
      service_id: "RAM",
      signature_version: "v4",
      signing_name: "ram",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an invitation to a resource share from another Amazon Web Services
  account.

  After you accept the invitation, the resources included in the resource share
  are available to interact with in the relevant Amazon Web Services Management
  Consoles and tools.
  """
  def accept_resource_share_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/acceptresourceshareinvitation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds the specified list of principals and list of resources to a resource share.

  Principals that already have access to this resource share immediately receive
  access to the added resources. Newly added principals immediately receive access
  to the resources shared in this resource share.
  """
  def associate_resource_share(%Client{} = client, input, options \\ []) do
    url_path = "/associateresourceshare"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds or replaces the RAM permission for a resource type included in a resource
  share.

  You can have exactly one permission associated with each resource type in the
  resource share. You can add a new RAM permission only if there are currently no
  resources of that resource type currently in the resource share.
  """
  def associate_resource_share_permission(%Client{} = client, input, options \\ []) do
    url_path = "/associateresourcesharepermission"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a customer managed permission for a specified resource type that you can
  attach to resource shares.

  It is created in the Amazon Web Services Region in which you call the operation.
  """
  def create_permission(%Client{} = client, input, options \\ []) do
    url_path = "/createpermission"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new version of the specified customer managed permission.

  The new version is automatically set as the default version of the customer
  managed permission. New resource shares automatically use the default
  permission. Existing resource shares continue to use their original permission
  versions, but you can use `ReplacePermissionAssociations` to update them.

  If the specified customer managed permission already has the maximum of 5
  versions, then you must delete one of the existing versions before you can
  create a new one.
  """
  def create_permission_version(%Client{} = client, input, options \\ []) do
    url_path = "/createpermissionversion"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a resource share.

  You can provide a list of the [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  for the resources that you want to share, a list of principals you want to share
  the resources with, and the permissions to grant those principals.

  Sharing a resource makes it available for use by principals outside of the
  Amazon Web Services account that created the resource. Sharing doesn't change
  any permissions or quotas that apply to the resource in the account that created
  it.
  """
  def create_resource_share(%Client{} = client, input, options \\ []) do
    url_path = "/createresourceshare"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified customer managed permission in the Amazon Web Services
  Region in which you call this operation.

  You can delete a customer managed permission only if it isn't attached to any
  resource share. The operation deletes all versions associated with the customer
  managed permission.
  """
  def delete_permission(%Client{} = client, input, options \\ []) do
    url_path = "/deletepermission"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"permissionArn", "permissionArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes one version of a customer managed permission.

  The version you specify must not be attached to any resource share and must not
  be the default version for the permission.

  If a customer managed permission has the maximum of 5 versions, then you must
  delete at least one version before you can create another.
  """
  def delete_permission_version(%Client{} = client, input, options \\ []) do
    url_path = "/deletepermissionversion"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"permissionArn", "permissionArn"},
        {"permissionVersion", "permissionVersion"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified resource share.

  This doesn't delete any of the resources that were associated with the resource
  share; it only stops the sharing of those resources through this resource share.
  """
  def delete_resource_share(%Client{} = client, input, options \\ []) do
    url_path = "/deleteresourceshare"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"resourceShareArn", "resourceShareArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the specified principals or resources from participating in the
  specified resource share.
  """
  def disassociate_resource_share(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateresourceshare"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes a managed permission from a resource share.

  Permission changes take effect immediately. You can remove a managed permission
  from a resource share only if there are currently no resources of the relevant
  resource type currently attached to the resource share.
  """
  def disassociate_resource_share_permission(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateresourcesharepermission"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Enables resource sharing within your organization in Organizations.

  This operation creates a service-linked role called
  `AWSServiceRoleForResourceAccessManager` that has the IAM managed policy named
  AWSResourceAccessManagerServiceRolePolicy attached. This role permits RAM to
  retrieve information about the organization and its structure. This lets you
  share resources with all of the accounts in the calling account's organization
  by specifying the organization ID, or all of the accounts in an organizational
  unit (OU) by specifying the OU ID. Until you enable sharing within the
  organization, you can specify only individual Amazon Web Services accounts, or
  for supported resource types, IAM roles and users.

  You must call this operation from an IAM role or user in the organization's
  management account.
  """
  def enable_sharing_with_aws_organization(%Client{} = client, input, options \\ []) do
    url_path = "/enablesharingwithawsorganization"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the contents of a managed permission in JSON format.
  """
  def get_permission(%Client{} = client, input, options \\ []) do
    url_path = "/getpermission"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the resource policies for the specified resources that you own and
  have shared.
  """
  def get_resource_policies(%Client{} = client, input, options \\ []) do
    url_path = "/getresourcepolicies"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the lists of resources and principals that associated for resource
  shares that you own.
  """
  def get_resource_share_associations(%Client{} = client, input, options \\ []) do
    url_path = "/getresourceshareassociations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves details about invitations that you have received for resource shares.
  """
  def get_resource_share_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/getresourceshareinvitations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves details about the resource shares that you own or that are shared with
  you.
  """
  def get_resource_shares(%Client{} = client, input, options \\ []) do
    url_path = "/getresourceshares"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the resources in a resource share that is shared with you but for which
  the invitation is still `PENDING`.

  That means that you haven't accepted or rejected the invitation and the
  invitation hasn't expired.
  """
  def list_pending_invitation_resources(%Client{} = client, input, options \\ []) do
    url_path = "/listpendinginvitationresources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists information about the managed permission and its associations to any
  resource shares that use this managed permission.

  This lets you see which resource shares use which versions of the specified
  managed permission.
  """
  def list_permission_associations(%Client{} = client, input, options \\ []) do
    url_path = "/listpermissionassociations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the available versions of the specified RAM permission.
  """
  def list_permission_versions(%Client{} = client, input, options \\ []) do
    url_path = "/listpermissionversions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of available RAM permissions that you can use for the supported
  resource types.
  """
  def list_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/listpermissions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the principals that you are sharing resources with or that are sharing
  resources with you.
  """
  def list_principals(%Client{} = client, input, options \\ []) do
    url_path = "/listprincipals"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves the current status of the asynchronous tasks performed by RAM when you
  perform the `ReplacePermissionAssociationsWork` operation.
  """
  def list_replace_permission_associations_work(%Client{} = client, input, options \\ []) do
    url_path = "/listreplacepermissionassociationswork"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the RAM permissions that are associated with a resource share.
  """
  def list_resource_share_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/listresourcesharepermissions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the resource types that can be shared by RAM.
  """
  def list_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/listresourcetypes"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the resources that you added to a resource share or the resources that are
  shared with you.
  """
  def list_resources(%Client{} = client, input, options \\ []) do
    url_path = "/listresources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  When you attach a resource-based policy to a resource, RAM automatically creates
  a resource share of `featureSet`=`CREATED_FROM_POLICY` with a managed permission
  that has the same IAM permissions as the original resource-based policy.

  However, this type of managed permission is visible to only the resource share
  owner, and the associated resource share can't be modified by using RAM.

  This operation creates a separate, fully manageable customer managed permission
  that has the same IAM permissions as the original resource-based policy. You can
  associate this customer managed permission to any resource shares.

  Before you use `PromoteResourceShareCreatedFromPolicy`, you should first run
  this operation to ensure that you have an appropriate customer managed
  permission that can be associated with the promoted resource share.

     The original `CREATED_FROM_POLICY` policy isn't deleted, and
  resource shares using that original policy aren't automatically updated.

     You can't modify a `CREATED_FROM_POLICY` resource share so you
  can't associate the new customer managed permission by using
  `ReplacePermsissionAssociations`. However, if you use
  `PromoteResourceShareCreatedFromPolicy`, that operation automatically associates
  the fully manageable customer managed permission to the newly promoted
  `STANDARD` resource share.

     After you promote a resource share, if the original
  `CREATED_FROM_POLICY` managed permission has no other associations to A resource
  share, then RAM automatically deletes it.
  """
  def promote_permission_created_from_policy(%Client{} = client, input, options \\ []) do
    url_path = "/promotepermissioncreatedfrompolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  When you attach a resource-based policy to a resource, RAM automatically creates
  a resource share of `featureSet`=`CREATED_FROM_POLICY` with a managed permission
  that has the same IAM permissions as the original resource-based policy.

  However, this type of managed permission is visible to only the resource share
  owner, and the associated resource share can't be modified by using RAM.

  This operation promotes the resource share to a `STANDARD` resource share that
  is fully manageable in RAM. When you promote a resource share, you can then
  manage the resource share in RAM and it becomes visible to all of the principals
  you shared it with.

  Before you perform this operation, you should first run
  `PromotePermissionCreatedFromPolicy`to ensure that you have an appropriate
  customer managed permission that can be associated with this resource share
  after its is promoted. If this operation can't find a managed permission that
  exactly matches the existing `CREATED_FROM_POLICY` permission, then this
  operation fails.
  """
  def promote_resource_share_created_from_policy(%Client{} = client, input, options \\ []) do
    url_path = "/promoteresourcesharecreatedfrompolicy"
    headers = []

    {query_params, input} =
      [
        {"resourceShareArn", "resourceShareArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Rejects an invitation to a resource share from another Amazon Web Services
  account.
  """
  def reject_resource_share_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/rejectresourceshareinvitation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates all resource shares that use a managed permission to a different managed
  permission.

  This operation always applies the default version of the target managed
  permission. You can optionally specify that the update applies to only resource
  shares that currently use a specified version. This enables you to update to the
  latest version, without changing the which managed permission is used.

  You can use this operation to update all of your resource shares to use the
  current default version of the permission by specifying the same value for the
  `fromPermissionArn` and `toPermissionArn` parameters.

  You can use the optional `fromPermissionVersion` parameter to update only those
  resources that use a specified version of the managed permission to the new
  managed permission.

  To successfully perform this operation, you must have permission to update the
  resource-based policy on all affected resource types.
  """
  def replace_permission_associations(%Client{} = client, input, options \\ []) do
    url_path = "/replacepermissionassociations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Designates the specified version number as the default version for the specified
  customer managed permission.

  New resource shares automatically use this new default permission. Existing
  resource shares continue to use their original permission version, but you can
  use `ReplacePermissionAssociations` to update them.
  """
  def set_default_permission_version(%Client{} = client, input, options \\ []) do
    url_path = "/setdefaultpermissionversion"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds the specified tag keys and values to a resource share or managed
  permission.

  If you choose a resource share, the tags are attached to only the resource
  share, not to the resources that are in the resource share.

  The tags on a managed permission are the same for all versions of the managed
  permission.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tagresource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the specified tag key and value pairs from the specified resource share
  or managed permission.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untagresource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Modifies some of the properties of the specified resource share.
  """
  def update_resource_share(%Client{} = client, input, options \\ []) do
    url_path = "/updateresourceshare"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
