# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RAM do
  @moduledoc """
  Use AWS Resource Access Manager to share AWS resources between AWS
  accounts. To share a resource, you create a resource share, associate the
  resource with the resource share, and specify the principals that can
  access the resources associated with the resource share. The following
  principals are supported: AWS accounts, organizational units (OU) from AWS
  Organizations, and organizations from AWS Organizations.

  For more information, see the [AWS Resource Access Manager User
  Guide](https://docs.aws.amazon.com/ram/latest/userguide/).
  """

  @doc """
  Accepts an invitation to a resource share from another AWS account.
  """
  def accept_resource_share_invitation(client, input, options \\ []) do
    path_ = "/acceptresourceshareinvitation"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates the specified resource share with the specified principals and
  resources.
  """
  def associate_resource_share(client, input, options \\ []) do
    path_ = "/associateresourceshare"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a permission with a resource share.
  """
  def associate_resource_share_permission(client, input, options \\ []) do
    path_ = "/associateresourcesharepermission"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a resource share.
  """
  def create_resource_share(client, input, options \\ []) do
    path_ = "/createresourceshare"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified resource share.
  """
  def delete_resource_share(client, input, options \\ []) do
    path_ = "/deleteresourceshare"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
        {"resourceShareArn", "resourceShareArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates the specified principals or resources from the specified
  resource share.
  """
  def disassociate_resource_share(client, input, options \\ []) do
    path_ = "/disassociateresourceshare"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates an AWS RAM permission from a resource share.
  """
  def disassociate_resource_share_permission(client, input, options \\ []) do
    path_ = "/disassociateresourcesharepermission"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables resource sharing within your AWS Organization.

  The caller must be the master account for the AWS Organization.
  """
  def enable_sharing_with_aws_organization(client, input, options \\ []) do
    path_ = "/enablesharingwithawsorganization"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the contents of an AWS RAM permission in JSON format.
  """
  def get_permission(client, input, options \\ []) do
    path_ = "/getpermission"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the policies for the specified resources that you own and have shared.
  """
  def get_resource_policies(client, input, options \\ []) do
    path_ = "/getresourcepolicies"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the resources or principals for the resource shares that you own.
  """
  def get_resource_share_associations(client, input, options \\ []) do
    path_ = "/getresourceshareassociations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the invitations for resource sharing that you've received.
  """
  def get_resource_share_invitations(client, input, options \\ []) do
    path_ = "/getresourceshareinvitations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the resource shares that you own or the resource shares that are
  shared with you.
  """
  def get_resource_shares(client, input, options \\ []) do
    path_ = "/getresourceshares"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the resources in a resource share that is shared with you but that
  the invitation is still pending for.
  """
  def list_pending_invitation_resources(client, input, options \\ []) do
    path_ = "/listpendinginvitationresources"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the AWS RAM permissions.
  """
  def list_permissions(client, input, options \\ []) do
    path_ = "/listpermissions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the principals that you have shared resources with or that have
  shared resources with you.
  """
  def list_principals(client, input, options \\ []) do
    path_ = "/listprincipals"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the AWS RAM permissions that are associated with a resource share.
  """
  def list_resource_share_permissions(client, input, options \\ []) do
    path_ = "/listresourcesharepermissions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the shareable resource types supported by AWS RAM.
  """
  def list_resource_types(client, input, options \\ []) do
    path_ = "/listresourcetypes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the resources that you added to a resource shares or the resources
  that are shared with you.
  """
  def list_resources(client, input, options \\ []) do
    path_ = "/listresources"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Resource shares that were created by attaching a policy to a resource are
  visible only to the resource share owner, and the resource share cannot be
  modified in AWS RAM.

  Use this API action to promote the resource share. When you promote the
  resource share, it becomes:

  <ul> <li> Visible to all principals that it is shared with.

  </li> <li> Modifiable in AWS RAM.

  </li> </ul>
  """
  def promote_resource_share_created_from_policy(client, input, options \\ []) do
    path_ = "/promoteresourcesharecreatedfrompolicy"
    headers = []
    {query_, input} =
      [
        {"resourceShareArn", "resourceShareArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Rejects an invitation to a resource share from another AWS account.
  """
  def reject_resource_share_invitation(client, input, options \\ []) do
    path_ = "/rejectresourceshareinvitation"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds the specified tags to the specified resource share that you own.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/tagresource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified tags from the specified resource share that you own.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/untagresource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the specified resource share that you own.
  """
  def update_resource_share(client, input, options \\ []) do
    path_ = "/updateresourceshare"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "ram"}
    host = build_host("ram", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
