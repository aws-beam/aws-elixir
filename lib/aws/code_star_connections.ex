# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeStarConnections do
  @moduledoc """
  AWS CodeStar Connections

  <important> The CodeStar Connections feature is in preview release and is
  subject to change.

  </important> This AWS CodeStar Connections API Reference provides
  descriptions and usage examples of the operations and data types for the
  AWS CodeStar Connections API. You can use the connections API to work with
  connections and installations.

  *Connections* are configurations that you use to connect AWS resources to
  external code repositories. Each connection is a resource that can be given
  to services such as CodePipeline to connect to a third-party repository
  such as Bitbucket. For example, you can add the connection in CodePipeline
  so that it triggers your pipeline when a code change is made to your
  third-party code repository. Each connection is named and associated with a
  unique ARN that is used to reference the connection.

  When you create a connection, the console initiates a third-party
  connection handshake. *Installations* are the apps that are used to conduct
  this handshake. For example, the installation for the Bitbucket provider
  type is the Bitbucket Cloud app. When you create a connection, you can
  choose an existing installation or create one.

  When you want to create a connection to an installed provider type such as
  GitHub Enterprise Server, you create a *host* for your connections.

  You can work with connections by calling:

  <ul> <li> `CreateConnection`, which creates a uniquely named connection
  that can be referenced by services such as CodePipeline.

  </li> <li> `DeleteConnection`, which deletes the specified connection.

  </li> <li> `GetConnection`, which returns information about the connection,
  including the connection status.

  </li> <li> `ListConnections`, which lists the connections associated with
  your account.

  </li> </ul> You can work with hosts by calling:

  <ul> <li> `CreateHost`, which creates a host that represents the
  infrastructure where your provider is installed.

  </li> <li> `DeleteHost`, which deletes the specified host.

  </li> <li> `GetHost`, which returns information about the host, including
  the setup status.

  </li> <li> `ListHosts`, which lists the hosts associated with your account.

  </li> </ul> You can work with tags in AWS CodeStar Connections by calling
  the following:

  <ul> <li> `ListTagsForResource`, which gets information about AWS tags for
  a specified Amazon Resource Name (ARN) in AWS CodeStar Connections.

  </li> <li> `TagResource`, which adds or updates tags for a resource in AWS
  CodeStar Connections.

  </li> <li> `UntagResource`, which removes tags for a resource in AWS
  CodeStar Connections.

  </li> </ul> For information about how to use AWS CodeStar Connections, see
  the [Developer Tools User
  Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).
  """

  @doc """
  Creates a connection that can then be given to other AWS services like
  CodePipeline so that it can access third-party code repositories. The
  connection is in pending status until the third-party connection handshake
  is completed from the console.
  """
  def create_connection(client, input, options \\ []) do
    request(client, "CreateConnection", input, options)
  end

  @doc """
  Creates a resource that represents the infrastructure where a third-party
  provider is installed. The host is used when you create connections to an
  installed third-party provider type, such as GitHub Enterprise Server. You
  create one host for all connections to that provider.

  <note> A host created through the CLI or the SDK is in `PENDING` status by
  default. You can make its status `AVAILABLE` by setting up the host in the
  console.

  </note>
  """
  def create_host(client, input, options \\ []) do
    request(client, "CreateHost", input, options)
  end

  @doc """
  The connection to be deleted.
  """
  def delete_connection(client, input, options \\ []) do
    request(client, "DeleteConnection", input, options)
  end

  @doc """
  The host to be deleted. Before you delete a host, all connections
  associated to the host must be deleted.

  <note> A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or
  VPC_CONFIG_DELETING state.

  </note>
  """
  def delete_host(client, input, options \\ []) do
    request(client, "DeleteHost", input, options)
  end

  @doc """
  Returns the connection ARN and details such as status, owner, and provider
  type.
  """
  def get_connection(client, input, options \\ []) do
    request(client, "GetConnection", input, options)
  end

  @doc """
  Returns the host ARN and details such as status, provider type, endpoint,
  and, if applicable, the VPC configuration.
  """
  def get_host(client, input, options \\ []) do
    request(client, "GetHost", input, options)
  end

  @doc """
  Lists the connections associated with your account.
  """
  def list_connections(client, input, options \\ []) do
    request(client, "ListConnections", input, options)
  end

  @doc """
  Lists the hosts associated with your account.
  """
  def list_hosts(client, input, options \\ []) do
    request(client, "ListHosts", input, options)
  end

  @doc """
  Gets the set of key-value pairs (metadata) that are used to manage the
  resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Adds to or modifies the tags of the given resource. Tags are metadata that
  can be used to manage a resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes tags from an AWS resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "codestar-connections"}
    host = build_host("codestar-connections", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.0"},
      {"X-Amz-Target", "com.amazonaws.codestar.connections.CodeStar_connections_20191201.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
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
