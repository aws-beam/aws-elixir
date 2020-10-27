# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeStar do
  @moduledoc """
  AWS CodeStar

  This is the API reference for AWS CodeStar. This reference provides
  descriptions of the operations and data types for the AWS CodeStar API
  along with usage examples.

  You can use the AWS CodeStar API to work with:

  Projects and their resources, by calling the following:

  <ul> <li> `DeleteProject`, which deletes a project.

  </li> <li> `DescribeProject`, which lists the attributes of a project.

  </li> <li> `ListProjects`, which lists all projects associated with your
  AWS account.

  </li> <li> `ListResources`, which lists the resources associated with a
  project.

  </li> <li> `ListTagsForProject`, which lists the tags associated with a
  project.

  </li> <li> `TagProject`, which adds tags to a project.

  </li> <li> `UntagProject`, which removes tags from a project.

  </li> <li> `UpdateProject`, which updates the attributes of a project.

  </li> </ul> Teams and team members, by calling the following:

  <ul> <li> `AssociateTeamMember`, which adds an IAM user to the team for a
  project.

  </li> <li> `DisassociateTeamMember`, which removes an IAM user from the
  team for a project.

  </li> <li> `ListTeamMembers`, which lists all the IAM users in the team for
  a project, including their roles and attributes.

  </li> <li> `UpdateTeamMember`, which updates a team member's attributes in
  a project.

  </li> </ul> Users, by calling the following:

  <ul> <li> `CreateUserProfile`, which creates a user profile that contains
  data associated with the user across all projects.

  </li> <li> `DeleteUserProfile`, which deletes all user profile information
  across all projects.

  </li> <li> `DescribeUserProfile`, which describes the profile of a user.

  </li> <li> `ListUserProfiles`, which lists all user profiles.

  </li> <li> `UpdateUserProfile`, which updates the profile for a user.

  </li> </ul>
  """

  @doc """
  Adds an IAM user to the team for an AWS CodeStar project.
  """
  def associate_team_member(client, input, options \\ []) do
    request(client, "AssociateTeamMember", input, options)
  end

  @doc """
  Creates a project, including project resources. This action creates a
  project based on a submitted project request. A set of source code files
  and a toolchain template file can be included with the project request. If
  these are not provided, an empty project is created.
  """
  def create_project(client, input, options \\ []) do
    request(client, "CreateProject", input, options)
  end

  @doc """
  Creates a profile for a user that includes user preferences, such as the
  display name and email address assocciated with the user, in AWS CodeStar.
  The user profile is not project-specific. Information in the user profile
  is displayed wherever the user's information appears to other users in AWS
  CodeStar.
  """
  def create_user_profile(client, input, options \\ []) do
    request(client, "CreateUserProfile", input, options)
  end

  @doc """
  Deletes a project, including project resources. Does not delete users
  associated with the project, but does delete the IAM roles that allowed
  access to the project.
  """
  def delete_project(client, input, options \\ []) do
    request(client, "DeleteProject", input, options)
  end

  @doc """
  Deletes a user profile in AWS CodeStar, including all personal preference
  data associated with that profile, such as display name and email address.
  It does not delete the history of that user, for example the history of
  commits made by that user.
  """
  def delete_user_profile(client, input, options \\ []) do
    request(client, "DeleteUserProfile", input, options)
  end

  @doc """
  Describes a project and its resources.
  """
  def describe_project(client, input, options \\ []) do
    request(client, "DescribeProject", input, options)
  end

  @doc """
  Describes a user in AWS CodeStar and the user attributes across all
  projects.
  """
  def describe_user_profile(client, input, options \\ []) do
    request(client, "DescribeUserProfile", input, options)
  end

  @doc """
  Removes a user from a project. Removing a user from a project also removes
  the IAM policies from that user that allowed access to the project and its
  resources. Disassociating a team member does not remove that user's profile
  from AWS CodeStar. It does not remove the user from IAM.
  """
  def disassociate_team_member(client, input, options \\ []) do
    request(client, "DisassociateTeamMember", input, options)
  end

  @doc """
  Lists all projects in AWS CodeStar associated with your AWS account.
  """
  def list_projects(client, input, options \\ []) do
    request(client, "ListProjects", input, options)
  end

  @doc """
  Lists resources associated with a project in AWS CodeStar.
  """
  def list_resources(client, input, options \\ []) do
    request(client, "ListResources", input, options)
  end

  @doc """
  Gets the tags for a project.
  """
  def list_tags_for_project(client, input, options \\ []) do
    request(client, "ListTagsForProject", input, options)
  end

  @doc """
  Lists all team members associated with a project.
  """
  def list_team_members(client, input, options \\ []) do
    request(client, "ListTeamMembers", input, options)
  end

  @doc """
  Lists all the user profiles configured for your AWS account in AWS
  CodeStar.
  """
  def list_user_profiles(client, input, options \\ []) do
    request(client, "ListUserProfiles", input, options)
  end

  @doc """
  Adds tags to a project.
  """
  def tag_project(client, input, options \\ []) do
    request(client, "TagProject", input, options)
  end

  @doc """
  Removes tags from a project.
  """
  def untag_project(client, input, options \\ []) do
    request(client, "UntagProject", input, options)
  end

  @doc """
  Updates a project in AWS CodeStar.
  """
  def update_project(client, input, options \\ []) do
    request(client, "UpdateProject", input, options)
  end

  @doc """
  Updates a team member's attributes in an AWS CodeStar project. For example,
  you can change a team member's role in the project, or change whether they
  have remote access to project resources.
  """
  def update_team_member(client, input, options \\ []) do
    request(client, "UpdateTeamMember", input, options)
  end

  @doc """
  Updates a user's profile in AWS CodeStar. The user profile is not
  project-specific. Information in the user profile is displayed wherever the
  user's information appears to other users in AWS CodeStar.
  """
  def update_user_profile(client, input, options \\ []) do
    request(client, "UpdateUserProfile", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "codestar"}
    host = build_host("codestar", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "CodeStar_20170419.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case do_request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
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

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
