# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Transfer do
  @moduledoc """
  AWS Transfer Family is a fully managed service that enables the transfer of
  files over the File Transfer Protocol (FTP), File Transfer Protocol over
  SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol (SFTP) directly
  into and out of Amazon Simple Storage Service (Amazon S3). AWS helps you
  seamlessly migrate your file transfer workflows to AWS Transfer Family by
  integrating with existing authentication systems, and providing DNS routing
  with Amazon Route 53 so nothing changes for your customers and partners, or
  their applications. With your data in Amazon S3, you can use it with AWS
  services for processing, analytics, machine learning, and archiving.
  Getting started with AWS Transfer Family is easy since there is no
  infrastructure to buy and set up.
  """

  @doc """
  Instantiates an autoscaling virtual server based on the selected file
  transfer protocol in AWS. When you make updates to your file transfer
  protocol-enabled server or when you work with users, use the
  service-generated `ServerId` property that is assigned to the newly created
  server.
  """
  def create_server(client, input, options \\ []) do
    request(client, "CreateServer", input, options)
  end

  @doc """
  Creates a user and associates them with an existing file transfer
  protocol-enabled server. You can only create and associate users with
  servers that have the `IdentityProviderType` set to `SERVICE_MANAGED`.
  Using parameters for `CreateUser`, you can specify the user name, set the
  home directory, store the user's public key, and assign the user's AWS
  Identity and Access Management (IAM) role. You can also optionally add a
  scope-down policy, and assign metadata with tags that can be used to group
  and search for users.
  """
  def create_user(client, input, options \\ []) do
    request(client, "CreateUser", input, options)
  end

  @doc """
  Deletes the file transfer protocol-enabled server that you specify.

  No response returns from this operation.
  """
  def delete_server(client, input, options \\ []) do
    request(client, "DeleteServer", input, options)
  end

  @doc """
  Deletes a user's Secure Shell (SSH) public key.

  No response is returned from this operation.
  """
  def delete_ssh_public_key(client, input, options \\ []) do
    request(client, "DeleteSshPublicKey", input, options)
  end

  @doc """
  Deletes the user belonging to a file transfer protocol-enabled server you
  specify.

  No response returns from this operation.

  <note> When you delete a user from a server, the user's information is
  lost.

  </note>
  """
  def delete_user(client, input, options \\ []) do
    request(client, "DeleteUser", input, options)
  end

  @doc """
  Describes the security policy that is attached to your file transfer
  protocol-enabled server. The response contains a description of the
  security policy's properties. For more information about security policies,
  see [Working with security
  policies](https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html).
  """
  def describe_security_policy(client, input, options \\ []) do
    request(client, "DescribeSecurityPolicy", input, options)
  end

  @doc """
  Describes a file transfer protocol-enabled server that you specify by
  passing the `ServerId` parameter.

  The response contains a description of a server's properties. When you set
  `EndpointType` to VPC, the response will contain the `EndpointDetails`.
  """
  def describe_server(client, input, options \\ []) do
    request(client, "DescribeServer", input, options)
  end

  @doc """
  Describes the user assigned to the specific file transfer protocol-enabled
  server, as identified by its `ServerId` property.

  The response from this call returns the properties of the user associated
  with the `ServerId` value that was specified.
  """
  def describe_user(client, input, options \\ []) do
    request(client, "DescribeUser", input, options)
  end

  @doc """
  Adds a Secure Shell (SSH) public key to a user account identified by a
  `UserName` value assigned to the specific file transfer protocol-enabled
  server, identified by `ServerId`.

  The response returns the `UserName` value, the `ServerId` value, and the
  name of the `SshPublicKeyId`.
  """
  def import_ssh_public_key(client, input, options \\ []) do
    request(client, "ImportSshPublicKey", input, options)
  end

  @doc """
  Lists the security policies that are attached to your file transfer
  protocol-enabled servers.
  """
  def list_security_policies(client, input, options \\ []) do
    request(client, "ListSecurityPolicies", input, options)
  end

  @doc """
  Lists the file transfer protocol-enabled servers that are associated with
  your AWS account.
  """
  def list_servers(client, input, options \\ []) do
    request(client, "ListServers", input, options)
  end

  @doc """
  Lists all of the tags associated with the Amazon Resource Number (ARN) you
  specify. The resource can be a user, server, or role.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the users for a file transfer protocol-enabled server that you
  specify by passing the `ServerId` parameter.
  """
  def list_users(client, input, options \\ []) do
    request(client, "ListUsers", input, options)
  end

  @doc """
  Changes the state of a file transfer protocol-enabled server from `OFFLINE`
  to `ONLINE`. It has no impact on a server that is already `ONLINE`. An
  `ONLINE` server can accept and process file transfer jobs.

  The state of `STARTING` indicates that the server is in an intermediate
  state, either not fully able to respond, or not fully online. The values of
  `START_FAILED` can indicate an error condition.

  No response is returned from this call.
  """
  def start_server(client, input, options \\ []) do
    request(client, "StartServer", input, options)
  end

  @doc """
  Changes the state of a file transfer protocol-enabled server from `ONLINE`
  to `OFFLINE`. An `OFFLINE` server cannot accept and process file transfer
  jobs. Information tied to your server, such as server and user properties,
  are not affected by stopping your server.

  <note> Stopping the server will not reduce or impact your file transfer
  protocol endpoint billing; you must delete the server to stop being billed.

  </note> The state of `STOPPING` indicates that the server is in an
  intermediate state, either not fully able to respond, or not fully offline.
  The values of `STOP_FAILED` can indicate an error condition.

  No response is returned from this call.
  """
  def stop_server(client, input, options \\ []) do
    request(client, "StopServer", input, options)
  end

  @doc """
  Attaches a key-value pair to a resource, as identified by its Amazon
  Resource Name (ARN). Resources are users, servers, roles, and other
  entities.

  There is no response returned from this call.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  If the `IdentityProviderType` of a file transfer protocol-enabled server is
  `API_Gateway`, tests whether your API Gateway is set up successfully. We
  highly recommend that you call this operation to test your authentication
  method as soon as you create your server. By doing so, you can troubleshoot
  issues with the API Gateway integration to ensure that your users can
  successfully use the service.
  """
  def test_identity_provider(client, input, options \\ []) do
    request(client, "TestIdentityProvider", input, options)
  end

  @doc """
  Detaches a key-value pair from a resource, as identified by its Amazon
  Resource Name (ARN). Resources are users, servers, roles, and other
  entities.

  No response is returned from this call.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the file transfer protocol-enabled server's properties after that
  server has been created.

  The `UpdateServer` call returns the `ServerId` of the server you updated.
  """
  def update_server(client, input, options \\ []) do
    request(client, "UpdateServer", input, options)
  end

  @doc """
  Assigns new properties to a user. Parameters you pass modify any or all of
  the following: the home directory, role, and policy for the `UserName` and
  `ServerId` you specify.

  The response returns the `ServerId` and the `UserName` for the updated
  user.
  """
  def update_user(client, input, options \\ []) do
    request(client, "UpdateUser", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "transfer"}
    host = build_host("transfer", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "TransferService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
