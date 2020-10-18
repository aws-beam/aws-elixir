# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Cloud9 do
  @moduledoc """
  AWS Cloud9

  AWS Cloud9 is a collection of tools that you can use to code, build, run,
  test, debug, and release software in the cloud.

  For more information about AWS Cloud9, see the [AWS Cloud9 User
  Guide](https://docs.aws.amazon.com/cloud9/latest/user-guide).

  AWS Cloud9 supports these operations:

  <ul> <li> `CreateEnvironmentEC2`: Creates an AWS Cloud9 development
  environment, launches an Amazon EC2 instance, and then connects from the
  instance to the environment.

  </li> <li> `CreateEnvironmentMembership`: Adds an environment member to an
  environment.

  </li> <li> `DeleteEnvironment`: Deletes an environment. If an Amazon EC2
  instance is connected to the environment, also terminates the instance.

  </li> <li> `DeleteEnvironmentMembership`: Deletes an environment member
  from an environment.

  </li> <li> `DescribeEnvironmentMemberships`: Gets information about
  environment members for an environment.

  </li> <li> `DescribeEnvironments`: Gets information about environments.

  </li> <li> `DescribeEnvironmentStatus`: Gets status information for an
  environment.

  </li> <li> `ListEnvironments`: Gets a list of environment identifiers.

  </li> <li> `ListTagsForResource`: Gets the tags for an environment.

  </li> <li> `TagResource`: Adds tags to an environment.

  </li> <li> `UntagResource`: Removes tags from an environment.

  </li> <li> `UpdateEnvironment`: Changes the settings of an existing
  environment.

  </li> <li> `UpdateEnvironmentMembership`: Changes the settings of an
  existing environment member for an environment.

  </li> </ul>
  """

  @doc """
  Creates an AWS Cloud9 development environment, launches an Amazon Elastic
  Compute Cloud (Amazon EC2) instance, and then connects from the instance to
  the environment.
  """
  def create_environment_e_c2(client, input, options \\ []) do
    request(client, "CreateEnvironmentEC2", input, options)
  end

  @doc """
  Adds an environment member to an AWS Cloud9 development environment.
  """
  def create_environment_membership(client, input, options \\ []) do
    request(client, "CreateEnvironmentMembership", input, options)
  end

  @doc """
  Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is
  connected to the environment, also terminates the instance.
  """
  def delete_environment(client, input, options \\ []) do
    request(client, "DeleteEnvironment", input, options)
  end

  @doc """
  Deletes an environment member from an AWS Cloud9 development environment.
  """
  def delete_environment_membership(client, input, options \\ []) do
    request(client, "DeleteEnvironmentMembership", input, options)
  end

  @doc """
  Gets information about environment members for an AWS Cloud9 development
  environment.
  """
  def describe_environment_memberships(client, input, options \\ []) do
    request(client, "DescribeEnvironmentMemberships", input, options)
  end

  @doc """
  Gets status information for an AWS Cloud9 development environment.
  """
  def describe_environment_status(client, input, options \\ []) do
    request(client, "DescribeEnvironmentStatus", input, options)
  end

  @doc """
  Gets information about AWS Cloud9 development environments.
  """
  def describe_environments(client, input, options \\ []) do
    request(client, "DescribeEnvironments", input, options)
  end

  @doc """
  Gets a list of AWS Cloud9 development environment identifiers.
  """
  def list_environments(client, input, options \\ []) do
    request(client, "ListEnvironments", input, options)
  end

  @doc """
  Gets a list of the tags associated with an AWS Cloud9 development
  environment.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Adds tags to an AWS Cloud9 development environment.

  <important> Tags that you add to an AWS Cloud9 environment by using this
  method will NOT be automatically propagated to underlying resources.

  </important>
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes tags from an AWS Cloud9 development environment.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Changes the settings of an existing AWS Cloud9 development environment.
  """
  def update_environment(client, input, options \\ []) do
    request(client, "UpdateEnvironment", input, options)
  end

  @doc """
  Changes the settings of an existing environment member for an AWS Cloud9
  development environment.
  """
  def update_environment_membership(client, input, options \\ []) do
    request(client, "UpdateEnvironmentMembership", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "cloud9"}
    host = build_host("cloud9", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSCloud9WorkspaceManagementService.#{action}"}
    ]

    payload = encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    perform_request(:post, url, payload, headers, options, 200)
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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
