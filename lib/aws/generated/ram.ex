# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RAM do
  @moduledoc """
  Use AWS Resource Access Manager to share AWS resources between AWS accounts.

  To share a resource, you create a resource share, associate the resource with
  the resource share, and specify the principals that can access the resources
  associated with the resource share. The following principals are supported: AWS
  accounts, organizational units (OU) from AWS Organizations, and organizations
  from AWS Organizations.

  For more information, see the [AWS Resource Access Manager User Guide](https://docs.aws.amazon.com/ram/latest/userguide/).
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
  Accepts an invitation to a resource share from another AWS account.
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
  Associates the specified resource share with the specified principals and
  resources.
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
  Associates a permission with a resource share.
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
  Disassociates an AWS RAM permission from a resource share.
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
  Enables resource sharing within your AWS Organization.

  The caller must be the master account for the AWS Organization.
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
  Gets the contents of an AWS RAM permission in JSON format.
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
  Gets the policies for the specified resources that you own and have shared.
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
  Gets the resources or principals for the resource shares that you own.
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
  Gets the invitations that you have received for resource shares.
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
  Gets the resource shares that you own or the resource shares that are shared
  with you.
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
  Lists the resources in a resource share that is shared with you but that the
  invitation is still pending for.
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
  Lists the AWS RAM permissions.
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
  Lists the principals that you have shared resources with or that have shared
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
  Lists the AWS RAM permissions that are associated with a resource share.
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
  Lists the shareable resource types supported by AWS RAM.
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
  Resource shares that were created by attaching a policy to a resource are
  visible only to the resource share owner, and the resource share cannot be
  modified in AWS RAM.

  Use this API action to promote the resource share. When you promote the resource
  share, it becomes:

    * Visible to all principals that it is shared with.

    * Modifiable in AWS RAM.
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
  Rejects an invitation to a resource share from another AWS account.
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
  Adds the specified tags to the specified resource share that you own.
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
  Removes the specified tags from the specified resource share that you own.
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
  Updates the specified resource share that you own.
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
