# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Cloud9 do
  @moduledoc """
  Cloud9

  Cloud9 is a collection of tools that you can use to code, build, run, test,
  debug, and
  release software in the cloud.

  For more information about Cloud9, see the [Cloud9 User Guide](https://docs.aws.amazon.com/cloud9/latest/user-guide).

  Cloud9 supports these operations:

    *

  `CreateEnvironmentEC2`: Creates an Cloud9 development environment, launches
  an Amazon EC2 instance, and then connects from the instance to the environment.

    *

  `CreateEnvironmentMembership`: Adds an environment member to an
  environment.

    *

  `DeleteEnvironment`: Deletes an environment. If an Amazon EC2 instance is
  connected to the environment, also terminates the instance.

    *

  `DeleteEnvironmentMembership`: Deletes an environment member from an
  environment.

    *

  `DescribeEnvironmentMemberships`: Gets information about environment
  members for an environment.

    *

  `DescribeEnvironments`: Gets information about environments.

    *

  `DescribeEnvironmentStatus`: Gets status information for an
  environment.

    *

  `ListEnvironments`: Gets a list of environment identifiers.

    *

  `ListTagsForResource`: Gets the tags for an environment.

    *

  `TagResource`: Adds tags to an environment.

    *

  `UntagResource`: Removes tags from an environment.

    *

  `UpdateEnvironment`: Changes the settings of an existing
  environment.

    *

  `UpdateEnvironmentMembership`: Changes the settings of an existing
  environment member for an environment.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_result() :: %{
        "environmentIds" => list(String.t()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_environments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environments_result() :: %{
        "environments" => list(environment()())
      }
      
  """
  @type describe_environments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_environment_membership_request() :: %{
        required("environmentId") => String.t(),
        required("userArn") => String.t()
      }
      
  """
  @type delete_environment_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_membership_request() :: %{
        required("environmentId") => String.t(),
        required("permissions") => list(any()),
        required("userArn") => String.t()
      }
      
  """
  @type create_environment_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_memberships_request() :: %{
        optional("environmentId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("permissions") => list(list(any())()),
        optional("userArn") => String.t()
      }
      
  """
  @type describe_environment_memberships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_status_result() :: %{
        "message" => String.t(),
        "status" => list(any())
      }
      
  """
  @type describe_environment_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment() :: %{
        "arn" => String.t(),
        "connectionType" => list(any()),
        "description" => String.t(),
        "id" => String.t(),
        "lifecycle" => environment_lifecycle(),
        "managedCredentialsStatus" => list(any()),
        "name" => String.t(),
        "ownerArn" => String.t(),
        "type" => list(any())
      }
      
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_result() :: %{}
      
  """
  @type update_environment_result() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_membership_result() :: %{
        "membership" => environment_member()
      }
      
  """
  @type create_environment_membership_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_request() :: %{
        required("environmentId") => String.t()
      }
      
  """
  @type delete_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_environment_ec2_result() :: %{
        "environmentId" => String.t()
      }
      
  """
  @type create_environment_ec2_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_result() :: %{}
      
  """
  @type delete_environment_result() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_access_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type concurrent_access_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_ec2_request() :: %{
        optional("automaticStopTimeMinutes") => integer(),
        optional("clientRequestToken") => String.t(),
        optional("connectionType") => list(any()),
        optional("description") => String.t(),
        optional("dryRun") => boolean(),
        optional("ownerArn") => String.t(),
        optional("subnetId") => String.t(),
        optional("tags") => list(tag()()),
        required("imageId") => String.t(),
        required("instanceType") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_environment_ec2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "className" => String.t(),
        "code" => integer(),
        "message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_status_request() :: %{
        required("environmentId") => String.t()
      }
      
  """
  @type describe_environment_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_environment_memberships_result() :: %{
        "memberships" => list(environment_member()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_environment_memberships_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_request() :: %{
        optional("description") => String.t(),
        optional("managedCredentialsAction") => list(any()),
        optional("name") => String.t(),
        required("environmentId") => String.t()
      }
      
  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_membership_request() :: %{
        required("environmentId") => String.t(),
        required("permissions") => list(any()),
        required("userArn") => String.t()
      }
      
  """
  @type update_environment_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_membership_result() :: %{
        "membership" => environment_member()
      }
      
  """
  @type update_environment_membership_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_member() :: %{
        "environmentId" => String.t(),
        "lastAccess" => non_neg_integer(),
        "permissions" => list(any()),
        "userArn" => String.t(),
        "userId" => String.t()
      }
      
  """
  @type environment_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_membership_result() :: %{}
      
  """
  @type delete_environment_membership_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_environments_request() :: %{
        required("environmentIds") => list(String.t()())
      }
      
  """
  @type describe_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_lifecycle() :: %{
        "failureResource" => String.t(),
        "reason" => String.t(),
        "status" => list(any())
      }
      
  """
  @type environment_lifecycle() :: %{String.t() => any()}

  @type create_environment_ec2_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_environment_membership_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_environment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_environment_membership_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_environment_memberships_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_environment_status_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_environments_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_environments_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_error_exception() | not_found_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | concurrent_access_exception()
          | internal_server_error_exception()
          | not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | concurrent_access_exception()
          | internal_server_error_exception()
          | not_found_exception()

  @type update_environment_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_environment_membership_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-09-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloud9",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Cloud9",
      signature_version: "v4",
      signing_name: "cloud9",
      target_prefix: "AWSCloud9WorkspaceManagementService"
    }
  end

  @doc """
  Creates an Cloud9 development environment, launches an Amazon Elastic Compute
  Cloud (Amazon EC2) instance, and
  then connects from the instance to the environment.
  """
  @spec create_environment_ec2(map(), create_environment_ec2_request(), list()) ::
          {:ok, create_environment_ec2_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_ec2_errors()}
  def create_environment_ec2(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentEC2", input, options)
  end

  @doc """
  Adds an environment member to an Cloud9 development environment.
  """
  @spec create_environment_membership(map(), create_environment_membership_request(), list()) ::
          {:ok, create_environment_membership_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_membership_errors()}
  def create_environment_membership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentMembership", input, options)
  end

  @doc """
  Deletes an Cloud9 development environment.

  If an Amazon EC2 instance is connected to the
  environment, also terminates the instance.
  """
  @spec delete_environment(map(), delete_environment_request(), list()) ::
          {:ok, delete_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironment", input, options)
  end

  @doc """
  Deletes an environment member from a development environment.
  """
  @spec delete_environment_membership(map(), delete_environment_membership_request(), list()) ::
          {:ok, delete_environment_membership_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_membership_errors()}
  def delete_environment_membership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentMembership", input, options)
  end

  @doc """
  Gets information about environment members for an Cloud9 development
  environment.
  """
  @spec describe_environment_memberships(
          map(),
          describe_environment_memberships_request(),
          list()
        ) ::
          {:ok, describe_environment_memberships_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_environment_memberships_errors()}
  def describe_environment_memberships(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEnvironmentMemberships", input, options)
  end

  @doc """
  Gets status information for an Cloud9 development environment.
  """
  @spec describe_environment_status(map(), describe_environment_status_request(), list()) ::
          {:ok, describe_environment_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_environment_status_errors()}
  def describe_environment_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEnvironmentStatus", input, options)
  end

  @doc """
  Gets information about Cloud9 development environments.
  """
  @spec describe_environments(map(), describe_environments_request(), list()) ::
          {:ok, describe_environments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_environments_errors()}
  def describe_environments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEnvironments", input, options)
  end

  @doc """
  Gets a list of Cloud9 development environment identifiers.
  """
  @spec list_environments(map(), list_environments_request(), list()) ::
          {:ok, list_environments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironments", input, options)
  end

  @doc """
  Gets a list of the tags associated with an Cloud9 development environment.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds tags to an Cloud9 development environment.

  Tags that you add to an Cloud9 environment by using this method will NOT be
  automatically propagated to underlying resources.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from an Cloud9 development environment.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Changes the settings of an existing Cloud9 development environment.
  """
  @spec update_environment(map(), update_environment_request(), list()) ::
          {:ok, update_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironment", input, options)
  end

  @doc """
  Changes the settings of an existing environment member for an Cloud9 development
  environment.
  """
  @spec update_environment_membership(map(), update_environment_membership_request(), list()) ::
          {:ok, update_environment_membership_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_membership_errors()}
  def update_environment_membership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironmentMembership", input, options)
  end
end
