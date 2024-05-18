# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeStar do
  @moduledoc """
  AWS CodeStar

  This is the API reference for AWS CodeStar.

  This reference provides descriptions of the
  operations and data types for the AWS CodeStar API along with usage examples.

  You can use the AWS CodeStar API to work with:

  Projects and their resources, by calling the following:

    *

  `DeleteProject`, which deletes a project.

    *

  `DescribeProject`, which lists the attributes of a project.

    *

  `ListProjects`, which lists all projects associated with your AWS
  account.

    *

  `ListResources`, which lists the resources associated with a
  project.

    *

  `ListTagsForProject`, which lists the tags associated with a
  project.

    *

  `TagProject`, which adds tags to a project.

    *

  `UntagProject`, which removes tags from a project.

    *

  `UpdateProject`, which updates the attributes of a project.

  Teams and team members, by calling the following:

    *

  `AssociateTeamMember`, which adds an IAM user to the team for a
  project.

    *

  `DisassociateTeamMember`, which removes an IAM user from the team for a
  project.

    *

  `ListTeamMembers`, which lists all the IAM users in the team for a
  project, including their roles and attributes.

    *

  `UpdateTeamMember`, which updates a team member's attributes in a
  project.

  Users, by calling the following:

    *

  `CreateUserProfile`, which creates a user profile that contains data
  associated with the user across all projects.

    *

  `DeleteUserProfile`, which deletes all user profile information across
  all projects.

    *

  `DescribeUserProfile`, which describes the profile of a user.

    *

  `ListUserProfiles`, which lists all user profiles.

    *

  `UpdateUserProfile`, which updates the profile for a user.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      project_creation_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type project_creation_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_profile_result() :: %{
        "userArn" => String.t()
      }
      
  """
  @type delete_user_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_profile_request() :: %{
        optional("displayName") => String.t(),
        optional("emailAddress") => String.t(),
        optional("sshPublicKey") => String.t(),
        required("userArn") => String.t()
      }
      
  """
  @type update_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      team_member_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type team_member_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      toolchain_source() :: %{
        "s3" => s3_location()
      }
      
  """
  @type toolchain_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      toolchain() :: %{
        "roleArn" => String.t(),
        "source" => toolchain_source(),
        "stackParameters" => map()
      }
      
  """
  @type toolchain() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_project_result() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdTimeStamp" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "projectTemplateId" => String.t(),
        "stackId" => String.t(),
        "status" => project_status()
      }
      
  """
  @type describe_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_commit_code_destination() :: %{
        "name" => String.t()
      }
      
  """
  @type code_commit_code_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_profiles_result() :: %{
        "nextToken" => String.t(),
        "userProfiles" => list(user_profile_summary()())
      }
      
  """
  @type list_user_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "projectArn" => String.t(),
        "projectId" => String.t()
      }
      
  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_project_request() :: %{
        required("id") => String.t()
      }
      
  """
  @type describe_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_result() :: %{
        "projectArn" => String.t(),
        "stackId" => String.t()
      }
      
  """
  @type delete_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_profile_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_profile_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_project_result() :: %{
        "tags" => map()
      }
      
  """
  @type tag_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_team_member_result() :: %{}
      
  """
  @type disassociate_team_member_result() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_project_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type list_tags_for_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_profile_result() :: %{
        "createdTimestamp" => non_neg_integer(),
        "displayName" => String.t(),
        "emailAddress" => String.t(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "sshPublicKey" => String.t(),
        "userArn" => String.t()
      }
      
  """
  @type describe_user_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_profile_request() :: %{
        required("userArn") => String.t()
      }
      
  """
  @type describe_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_team_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("projectId") => String.t()
      }
      
  """
  @type list_team_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_team_members_result() :: %{
        "nextToken" => String.t(),
        "teamMembers" => list(team_member()())
      }
      
  """
  @type list_team_members_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_profile_request() :: %{
        required("userArn") => String.t()
      }
      
  """
  @type delete_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_destination() :: %{
        "codeCommit" => code_commit_code_destination(),
        "gitHub" => git_hub_code_destination()
      }
      
  """
  @type code_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      team_member() :: %{
        "projectRole" => String.t(),
        "remoteAccessAllowed" => boolean(),
        "userArn" => String.t()
      }
      
  """
  @type team_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_user_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_user_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      team_member_already_associated_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type team_member_already_associated_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_profile_result() :: %{
        "createdTimestamp" => non_neg_integer(),
        "displayName" => String.t(),
        "emailAddress" => String.t(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "sshPublicKey" => String.t(),
        "userArn" => String.t()
      }
      
  """
  @type update_user_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "bucketKey" => String.t(),
        "bucketName" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_result() :: %{
        "nextToken" => String.t(),
        "resources" => list(resource()())
      }
      
  """
  @type list_resources_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_project_result() :: %{}
      
  """
  @type untag_project_result() :: %{}

  @typedoc """

  ## Example:
      
      code() :: %{
        "destination" => code_destination(),
        "source" => code_source()
      }
      
  """
  @type code() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_team_member_request() :: %{
        required("projectId") => String.t(),
        required("userArn") => String.t()
      }
      
  """
  @type disassociate_team_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type project_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_team_member_result() :: %{
        "projectRole" => String.t(),
        "remoteAccessAllowed" => boolean(),
        "userArn" => String.t()
      }
      
  """
  @type update_team_member_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_project_result() :: %{
        "nextToken" => String.t(),
        "tags" => map()
      }
      
  """
  @type list_tags_for_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_source() :: %{
        "s3" => s3_location()
      }
      
  """
  @type code_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_hub_code_destination() :: %{
        "description" => String.t(),
        "issuesEnabled" => boolean(),
        "name" => String.t(),
        "owner" => String.t(),
        "privateRepository" => boolean(),
        "token" => String.t(),
        "type" => String.t()
      }
      
  """
  @type git_hub_code_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_profile_summary() :: %{
        "displayName" => String.t(),
        "emailAddress" => String.t(),
        "sshPublicKey" => String.t(),
        "userArn" => String.t()
      }
      
  """
  @type user_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_profile_request() :: %{
        optional("sshPublicKey") => String.t(),
        required("displayName") => String.t(),
        required("emailAddress") => String.t(),
        required("userArn") => String.t()
      }
      
  """
  @type create_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_profile_result() :: %{
        "createdTimestamp" => non_neg_integer(),
        "displayName" => String.t(),
        "emailAddress" => String.t(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "sshPublicKey" => String.t(),
        "userArn" => String.t()
      }
      
  """
  @type create_user_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("description") => String.t(),
        optional("sourceCode") => list(code()()),
        optional("tags") => map(),
        optional("toolchain") => toolchain(),
        required("id") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_status() :: %{
        "reason" => String.t(),
        "state" => String.t()
      }
      
  """
  @type project_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("projectId") => String.t()
      }
      
  """
  @type list_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_team_member_result() :: %{
        "clientRequestToken" => String.t()
      }
      
  """
  @type associate_team_member_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_team_member_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("remoteAccessAllowed") => boolean(),
        required("projectId") => String.t(),
        required("projectRole") => String.t(),
        required("userArn") => String.t()
      }
      
  """
  @type associate_team_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_result() :: %{
        "nextToken" => String.t(),
        "projects" => list(project_summary()())
      }
      
  """
  @type list_projects_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("deleteStack") => boolean(),
        required("id") => String.t()
      }
      
  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type project_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_profile_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_profile_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_service_role_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_service_role_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_result() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "id" => String.t(),
        "projectTemplateId" => String.t()
      }
      
  """
  @type create_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_project_request() :: %{
        required("id") => String.t(),
        required("tags") => list(String.t()())
      }
      
  """
  @type untag_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_configuration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type project_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_team_member_request() :: %{
        optional("projectRole") => String.t(),
        optional("remoteAccessAllowed") => boolean(),
        required("projectId") => String.t(),
        required("userArn") => String.t()
      }
      
  """
  @type update_team_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "id" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_project_request() :: %{
        required("id") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_result() :: %{}
      
  """
  @type update_project_result() :: %{}

  @type associate_team_member_errors() ::
          project_configuration_exception()
          | invalid_service_role_exception()
          | project_not_found_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | team_member_already_associated_exception()

  @type create_project_errors() ::
          project_configuration_exception()
          | invalid_service_role_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | project_already_exists_exception()
          | project_creation_failed_exception()

  @type create_user_profile_errors() ::
          validation_exception() | user_profile_already_exists_exception()

  @type delete_project_errors() ::
          invalid_service_role_exception()
          | validation_exception()
          | concurrent_modification_exception()

  @type delete_user_profile_errors() :: validation_exception()

  @type describe_project_errors() ::
          project_configuration_exception()
          | invalid_service_role_exception()
          | project_not_found_exception()
          | validation_exception()
          | concurrent_modification_exception()

  @type describe_user_profile_errors() ::
          user_profile_not_found_exception() | validation_exception()

  @type disassociate_team_member_errors() ::
          invalid_service_role_exception()
          | project_not_found_exception()
          | validation_exception()
          | concurrent_modification_exception()

  @type list_projects_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_resources_errors() ::
          project_not_found_exception() | validation_exception() | invalid_next_token_exception()

  @type list_tags_for_project_errors() ::
          project_not_found_exception() | validation_exception() | invalid_next_token_exception()

  @type list_team_members_errors() ::
          project_not_found_exception() | validation_exception() | invalid_next_token_exception()

  @type list_user_profiles_errors() :: validation_exception() | invalid_next_token_exception()

  @type tag_project_errors() ::
          project_not_found_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()

  @type untag_project_errors() ::
          project_not_found_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()

  @type update_project_errors() :: project_not_found_exception() | validation_exception()

  @type update_team_member_errors() ::
          project_configuration_exception()
          | invalid_service_role_exception()
          | project_not_found_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | team_member_not_found_exception()

  @type update_user_profile_errors() ::
          user_profile_not_found_exception() | validation_exception()

  def metadata do
    %{
      api_version: "2017-04-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codestar",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CodeStar",
      signature_version: "v4",
      signing_name: "codestar",
      target_prefix: "CodeStar_20170419"
    }
  end

  @doc """
  Adds an IAM user to the team for an AWS CodeStar project.
  """
  @spec associate_team_member(map(), associate_team_member_request(), list()) ::
          {:ok, associate_team_member_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_team_member_errors()}
  def associate_team_member(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateTeamMember", input, options)
  end

  @doc """
  Creates a project, including project resources.

  This action creates a project based on
  a submitted project request. A set of source code files and a toolchain template
  file
  can be included with the project request. If these are not provided, an empty
  project is created.
  """
  @spec create_project(map(), create_project_request(), list()) ::
          {:ok, create_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """
  Creates a profile for a user that includes user preferences, such as the display
  name
  and email address assocciated with the user, in AWS CodeStar.

  The user profile is not
  project-specific. Information in the user profile is displayed wherever the
  user's information
  appears to other users in AWS CodeStar.
  """
  @spec create_user_profile(map(), create_user_profile_request(), list()) ::
          {:ok, create_user_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_profile_errors()}
  def create_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserProfile", input, options)
  end

  @doc """
  Deletes a project, including project resources.

  Does not delete users associated with
  the project, but does delete the IAM roles that allowed access to the project.
  """
  @spec delete_project(map(), delete_project_request(), list()) ::
          {:ok, delete_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """
  Deletes a user profile in AWS CodeStar, including all personal preference data
  associated with
  that profile, such as display name and email address.

  It does not delete the history of that
  user, for example the history of commits made by that user.
  """
  @spec delete_user_profile(map(), delete_user_profile_request(), list()) ::
          {:ok, delete_user_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_profile_errors()}
  def delete_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserProfile", input, options)
  end

  @doc """
  Describes a project and its resources.
  """
  @spec describe_project(map(), describe_project_request(), list()) ::
          {:ok, describe_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_project_errors()}
  def describe_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProject", input, options)
  end

  @doc """
  Describes a user in AWS CodeStar and the user attributes across all projects.
  """
  @spec describe_user_profile(map(), describe_user_profile_request(), list()) ::
          {:ok, describe_user_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_user_profile_errors()}
  def describe_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserProfile", input, options)
  end

  @doc """
  Removes a user from a project.

  Removing a user from a project also removes the IAM
  policies from that user that allowed access to the project and its resources.
  Disassociating a
  team member does not remove that user's profile from AWS CodeStar. It does not
  remove the user from
  IAM.
  """
  @spec disassociate_team_member(map(), disassociate_team_member_request(), list()) ::
          {:ok, disassociate_team_member_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_team_member_errors()}
  def disassociate_team_member(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateTeamMember", input, options)
  end

  @doc """
  Lists all projects in AWS CodeStar associated with your AWS account.
  """
  @spec list_projects(map(), list_projects_request(), list()) ::
          {:ok, list_projects_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProjects", input, options)
  end

  @doc """
  Lists resources associated with a project in AWS CodeStar.
  """
  @spec list_resources(map(), list_resources_request(), list()) ::
          {:ok, list_resources_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resources_errors()}
  def list_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResources", input, options)
  end

  @doc """
  Gets the tags for a project.
  """
  @spec list_tags_for_project(map(), list_tags_for_project_request(), list()) ::
          {:ok, list_tags_for_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_project_errors()}
  def list_tags_for_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForProject", input, options)
  end

  @doc """
  Lists all team members associated with a project.
  """
  @spec list_team_members(map(), list_team_members_request(), list()) ::
          {:ok, list_team_members_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_team_members_errors()}
  def list_team_members(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTeamMembers", input, options)
  end

  @doc """
  Lists all the user profiles configured for your AWS account in AWS CodeStar.
  """
  @spec list_user_profiles(map(), list_user_profiles_request(), list()) ::
          {:ok, list_user_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_profiles_errors()}
  def list_user_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUserProfiles", input, options)
  end

  @doc """
  Adds tags to a project.
  """
  @spec tag_project(map(), tag_project_request(), list()) ::
          {:ok, tag_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_project_errors()}
  def tag_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagProject", input, options)
  end

  @doc """
  Removes tags from a project.
  """
  @spec untag_project(map(), untag_project_request(), list()) ::
          {:ok, untag_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_project_errors()}
  def untag_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagProject", input, options)
  end

  @doc """
  Updates a project in AWS CodeStar.
  """
  @spec update_project(map(), update_project_request(), list()) ::
          {:ok, update_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProject", input, options)
  end

  @doc """
  Updates a team member's attributes in an AWS CodeStar project.

  For example, you can change a
  team member's role in the project, or change whether they have remote access to
  project
  resources.
  """
  @spec update_team_member(map(), update_team_member_request(), list()) ::
          {:ok, update_team_member_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_team_member_errors()}
  def update_team_member(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTeamMember", input, options)
  end

  @doc """
  Updates a user's profile in AWS CodeStar.

  The user profile is not project-specific.
  Information in the user profile is displayed wherever the user's information
  appears to other
  users in AWS CodeStar.
  """
  @spec update_user_profile(map(), update_user_profile_request(), list()) ::
          {:ok, update_user_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_profile_errors()}
  def update_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserProfile", input, options)
  end
end
