# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CodeCommit do
  @moduledoc """
  AWS CodeCommit

  This is the *AWS CodeCommit API Reference*. This reference provides
  descriptions of the AWS CodeCommit API.

  You can use the AWS CodeCommit API to work with the following objects:

  <ul> <li>Repositories</li> <li>Branches</li> <li>Commits</li> </ul> For
  information about how to use AWS CodeCommit, see the *AWS CodeCommit User
  Guide*.
  """

  @doc """
  Gets information about one or more repositories.

  <note>The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a web page could expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  web page.

  </note>
  """
  def batch_get_repositories(client, input, options \\ []) do
    request(client, "BatchGetRepositories", input, options)
  end

  @doc """
  Creates a new branch in a repository and points the branch to a commit.

  <note>Calling the create branch operation does not set a repository's
  default branch. To do this, call the update default branch
  operation.</note>
  """
  def create_branch(client, input, options \\ []) do
    request(client, "CreateBranch", input, options)
  end

  @doc """
  Creates a new, empty repository.
  """
  def create_repository(client, input, options \\ []) do
    request(client, "CreateRepository", input, options)
  end

  @doc """
  Deletes a repository. If a specified repository was already deleted, a null
  repository ID will be returned.

  <important>Deleting a repository also deletes all associated objects and
  metadata. After a repository is deleted, all future push calls to the
  deleted repository will fail.</important>
  """
  def delete_repository(client, input, options \\ []) do
    request(client, "DeleteRepository", input, options)
  end

  @doc """
  Retrieves information about a repository branch, including its name and the
  last commit ID.
  """
  def get_branch(client, input, options \\ []) do
    request(client, "GetBranch", input, options)
  end

  @doc """
  Gets information about a repository.

  <note>The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a web page could expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  web page.

  </note>
  """
  def get_repository(client, input, options \\ []) do
    request(client, "GetRepository", input, options)
  end

  @doc """
  Gets information about one or more branches in a repository.
  """
  def list_branches(client, input, options \\ []) do
    request(client, "ListBranches", input, options)
  end

  @doc """
  Gets information about one or more repositories.
  """
  def list_repositories(client, input, options \\ []) do
    request(client, "ListRepositories", input, options)
  end

  @doc """
  Sets or changes the default branch name for the specified repository.

  <note>If you use this operation to change the default branch name to the
  current default branch name, a success message is returned even though the
  default branch did not change.</note>
  """
  def update_default_branch(client, input, options \\ []) do
    request(client, "UpdateDefaultBranch", input, options)
  end

  @doc """
  Sets or changes the comment or description for a repository.

  <note>The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a web page could expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  web page.

  </note>
  """
  def update_repository_description(client, input, options \\ []) do
    request(client, "UpdateRepositoryDescription", input, options)
  end

  @doc """
  Renames a repository.
  """
  def update_repository_name(client, input, options \\ []) do
    request(client, "UpdateRepositoryName", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "codecommit"}
    host = "codecommit.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "CodeCommit_20150413.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end
