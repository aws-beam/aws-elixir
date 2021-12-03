# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RAM do
  @moduledoc """
  This is the *Resource Access Manager API Reference*.

  This documentation provides descriptions and syntax for each of the actions and
  data types in RAM. RAM is a service that helps you securely share your Amazon
  Web Services resources across Amazon Web Services accounts. If you have multiple
  Amazon Web Services accounts, you can use RAM to share those resources with
  other accounts. If you use Organizations to manage your accounts, then you share
  your resources with your organization or organizational units (OUs). For
  supported resource types, you can also share resources with individual Identity
  and Access Management (IAM) roles an users.

  To learn more about RAM, see the following resources:

    * [Resource Access Manager product page](http://aws.amazon.com/ram)     * [Resource Access Manager User
  Guide](https://docs.aws.amazon.com/ram/latest/userguide/)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Deletes the specified resource share.

  This doesn't delete any of the resources that were associated with the resource
  share; it only stops the sharing of those resources outside of the Amazon Web
  Services account that created them.
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

    Request.request_rest(
      client,
      metadata(),
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
  Disassociates the specified principals or resources from the specified resource
  share.
  """
  def disassociate_resource_share(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateresourceshare"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Disassociates an RAM permission from a resource share.

  Permission changes take effect immediately. You can remove a RAM permission from
  a resource share only if there are currently no resources of the relevant
  resource type currently attached to the resource share.
  """
  def disassociate_resource_share_permission(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateresourcesharepermission"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

  Calling this operation enables RAM to retrieve information about the
  organization and its structure. This lets you share resources with all of the
  accounts in an organization by specifying the organization's ID, or all of the
  accounts in an organizational unit (OU) by specifying the OU's ID. Until you
  enable sharing within the organization, you can specify only individual Amazon
  Web Services accounts, or for supported resource types, IAM users and roles.

  You must call this operation from an IAM user or role in the organization's
  management account.
  """
  def enable_sharing_with_aws_organization(%Client{} = client, input, options \\ []) do
    url_path = "/enablesharingwithawsorganization"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Gets the contents of an RAM permission in JSON format.
  """
  def get_permission(%Client{} = client, input, options \\ []) do
    url_path = "/getpermission"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Retrieves the resource and principal associations for resource shares that you
  own.
  """
  def get_resource_share_associations(%Client{} = client, input, options \\ []) do
    url_path = "/getresourceshareassociations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Lists the resources that you added to a resource shares or the resources that
  are shared with you.
  """
  def list_resources(%Client{} = client, input, options \\ []) do
    url_path = "/listresources"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  When you attach a resource-based permission policy to a resource, it
  automatically creates a resource share.

  However, resource shares created this way are visible only to the resource share
  owner, and the resource share can't be modified in RAM.

  You can use this operation to promote the resource share to a full RAM resource
  share. When you promote a resource share, you can then manage the resource share
  in RAM and it becomes visible to all of the principals you shared it with.
  """
  def promote_resource_share_created_from_policy(%Client{} = client, input, options \\ []) do
    url_path = "/promoteresourcesharecreatedfrompolicy"
    headers = []

    {query_params, input} =
      [
        {"resourceShareArn", "resourceShareArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Adds the specified tag keys and values to the specified resource share.

  The tags are attached only to the resource share, not to the resources that are
  in the resource share.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tagresource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Removes the specified tag key and value pairs from the specified resource share.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untagresource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
