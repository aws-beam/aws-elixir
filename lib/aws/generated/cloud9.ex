# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Cloud9 do
  @moduledoc """
  Cloud9

  Cloud9 is a collection of tools that you can use to code, build, run, test,
  debug, and release software in the cloud.

  For more information about Cloud9, see the [Cloud9 User Guide](https://docs.aws.amazon.com/cloud9/latest/user-guide).

  Cloud9 supports these operations:

    * `CreateEnvironmentEC2`: Creates an Cloud9 development environment,
  launches an Amazon EC2 instance, and then connects from the instance to the
  environment.

    * `CreateEnvironmentMembership`: Adds an environment member to an
  environment.

    * `DeleteEnvironment`: Deletes an environment. If an Amazon EC2
  instance is connected to the environment, also terminates the instance.

    * `DeleteEnvironmentMembership`: Deletes an environment member from
  an environment.

    * `DescribeEnvironmentMemberships`: Gets information about
  environment members for an environment.

    * `DescribeEnvironments`: Gets information about environments.

    * `DescribeEnvironmentStatus`: Gets status information for an
  environment.

    * `ListEnvironments`: Gets a list of environment identifiers.

    * `ListTagsForResource`: Gets the tags for an environment.

    * `TagResource`: Adds tags to an environment.

    * `UntagResource`: Removes tags from an environment.

    * `UpdateEnvironment`: Changes the settings of an existing
  environment.

    * `UpdateEnvironmentMembership`: Changes the settings of an existing
  environment member for an environment.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-09-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloud9",
      global?: false,
      protocol: "json",
      service_id: "Cloud9",
      signature_version: "v4",
      signing_name: "cloud9",
      target_prefix: "AWSCloud9WorkspaceManagementService"
    }
  end

  @doc """
  Creates an Cloud9 development environment, launches an Amazon Elastic Compute
  Cloud (Amazon EC2) instance, and then connects from the instance to the
  environment.
  """
  def create_environment_ec2(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEnvironmentEC2", input, options)
  end

  @doc """
  Adds an environment member to an Cloud9 development environment.
  """
  def create_environment_membership(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEnvironmentMembership", input, options)
  end

  @doc """
  Deletes an Cloud9 development environment.

  If an Amazon EC2 instance is connected to the environment, also terminates the
  instance.
  """
  def delete_environment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEnvironment", input, options)
  end

  @doc """
  Deletes an environment member from an Cloud9 development environment.
  """
  def delete_environment_membership(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEnvironmentMembership", input, options)
  end

  @doc """
  Gets information about environment members for an Cloud9 development
  environment.
  """
  def describe_environment_memberships(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEnvironmentMemberships", input, options)
  end

  @doc """
  Gets status information for an Cloud9 development environment.
  """
  def describe_environment_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEnvironmentStatus", input, options)
  end

  @doc """
  Gets information about Cloud9 development environments.
  """
  def describe_environments(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEnvironments", input, options)
  end

  @doc """
  Gets a list of Cloud9 development environment identifiers.
  """
  def list_environments(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEnvironments", input, options)
  end

  @doc """
  Gets a list of the tags associated with an Cloud9 development environment.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Adds tags to an Cloud9 development environment.

  Tags that you add to an Cloud9 environment by using this method will NOT be
  automatically propagated to underlying resources.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes tags from an Cloud9 development environment.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Changes the settings of an existing Cloud9 development environment.
  """
  def update_environment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEnvironment", input, options)
  end

  @doc """
  Changes the settings of an existing environment member for an Cloud9 development
  environment.
  """
  def update_environment_membership(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEnvironmentMembership", input, options)
  end
end
