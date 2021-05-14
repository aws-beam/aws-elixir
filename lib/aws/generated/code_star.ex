# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeStar do
  @moduledoc """
  AWS CodeStar

  This is the API reference for AWS CodeStar.

  This reference provides descriptions of the operations and data types for the
  AWS CodeStar API along with usage examples.

  You can use the AWS CodeStar API to work with:

  Projects and their resources, by calling the following:

    * `DeleteProject`, which deletes a project.

    * `DescribeProject`, which lists the attributes of a project.

    * `ListProjects`, which lists all projects associated with your AWS
  account.

    * `ListResources`, which lists the resources associated with a
  project.

    * `ListTagsForProject`, which lists the tags associated with a
  project.

    * `TagProject`, which adds tags to a project.

    * `UntagProject`, which removes tags from a project.

    * `UpdateProject`, which updates the attributes of a project.

  Teams and team members, by calling the following:

    * `AssociateTeamMember`, which adds an IAM user to the team for a
  project.

    * `DisassociateTeamMember`, which removes an IAM user from the team
  for a project.

    * `ListTeamMembers`, which lists all the IAM users in the team for a
  project, including their roles and attributes.

    * `UpdateTeamMember`, which updates a team member's attributes in a
  project.

  Users, by calling the following:

    * `CreateUserProfile`, which creates a user profile that contains
  data associated with the user across all projects.

    * `DeleteUserProfile`, which deletes all user profile information
  across all projects.

    * `DescribeUserProfile`, which describes the profile of a user.

    * `ListUserProfiles`, which lists all user profiles.

    * `UpdateUserProfile`, which updates the profile for a user.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "CodeStar",
      api_version: "2017-04-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codestar",
      global?: false,
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
  def associate_team_member(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateTeamMember", input, options)
  end

  @doc """
  Creates a project, including project resources.

  This action creates a project based on a submitted project request. A set of
  source code files and a toolchain template file can be included with the project
  request. If these are not provided, an empty project is created.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProject", input, options)
  end

  @doc """
  Creates a profile for a user that includes user preferences, such as the display
  name and email address assocciated with the user, in AWS CodeStar.

  The user profile is not project-specific. Information in the user profile is
  displayed wherever the user's information appears to other users in AWS
  CodeStar.
  """
  def create_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUserProfile", input, options)
  end

  @doc """
  Deletes a project, including project resources.

  Does not delete users associated with the project, but does delete the IAM roles
  that allowed access to the project.
  """
  def delete_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProject", input, options)
  end

  @doc """
  Deletes a user profile in AWS CodeStar, including all personal preference data
  associated with that profile, such as display name and email address.

  It does not delete the history of that user, for example the history of commits
  made by that user.
  """
  def delete_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserProfile", input, options)
  end

  @doc """
  Describes a project and its resources.
  """
  def describe_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProject", input, options)
  end

  @doc """
  Describes a user in AWS CodeStar and the user attributes across all projects.
  """
  def describe_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUserProfile", input, options)
  end

  @doc """
  Removes a user from a project.

  Removing a user from a project also removes the IAM policies from that user that
  allowed access to the project and its resources. Disassociating a team member
  does not remove that user's profile from AWS CodeStar. It does not remove the
  user from IAM.
  """
  def disassociate_team_member(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateTeamMember", input, options)
  end

  @doc """
  Lists all projects in AWS CodeStar associated with your AWS account.
  """
  def list_projects(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProjects", input, options)
  end

  @doc """
  Lists resources associated with a project in AWS CodeStar.
  """
  def list_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResources", input, options)
  end

  @doc """
  Gets the tags for a project.
  """
  def list_tags_for_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForProject", input, options)
  end

  @doc """
  Lists all team members associated with a project.
  """
  def list_team_members(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTeamMembers", input, options)
  end

  @doc """
  Lists all the user profiles configured for your AWS account in AWS CodeStar.
  """
  def list_user_profiles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUserProfiles", input, options)
  end

  @doc """
  Adds tags to a project.
  """
  def tag_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagProject", input, options)
  end

  @doc """
  Removes tags from a project.
  """
  def untag_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagProject", input, options)
  end

  @doc """
  Updates a project in AWS CodeStar.
  """
  def update_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProject", input, options)
  end

  @doc """
  Updates a team member's attributes in an AWS CodeStar project.

  For example, you can change a team member's role in the project, or change
  whether they have remote access to project resources.
  """
  def update_team_member(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTeamMember", input, options)
  end

  @doc """
  Updates a user's profile in AWS CodeStar.

  The user profile is not project-specific. Information in the user profile is
  displayed wherever the user's information appears to other users in AWS
  CodeStar.
  """
  def update_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUserProfile", input, options)
  end
end
