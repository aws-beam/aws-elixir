# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CodeCommit do
  @moduledoc """
  AWS CodeCommit

  This is the *AWS CodeCommit API Reference*. This reference provides
  descriptions of the operations and data types for AWS CodeCommit API along
  with usage examples.

  You can use the AWS CodeCommit API to work with the following objects:

  Repositories, by calling the following:

  <ul> <li> `BatchGetRepositories`, which returns information about one or
  more repositories associated with your AWS account.

  </li> <li> `CreateRepository`, which creates an AWS CodeCommit repository.

  </li> <li> `DeleteRepository`, which deletes an AWS CodeCommit repository.

  </li> <li> `GetRepository`, which returns information about a specified
  repository.

  </li> <li> `ListRepositories`, which lists all AWS CodeCommit repositories
  associated with your AWS account.

  </li> <li> `UpdateRepositoryDescription`, which sets or updates the
  description of the repository.

  </li> <li> `UpdateRepositoryName`, which changes the name of the
  repository. If you change the name of a repository, no other users of that
  repository will be able to access it until you send them the new HTTPS or
  SSH URL to use.

  </li> </ul> Branches, by calling the following:

  <ul> <li> `CreateBranch`, which creates a new branch in a specified
  repository.

  </li> <li> `DeleteBranch`, which deletes the specified branch in a
  repository unless it is the default branch.

  </li> <li> `GetBranch`, which returns information about a specified branch.

  </li> <li> `ListBranches`, which lists all branches for a specified
  repository.

  </li> <li> `UpdateDefaultBranch`, which changes the default branch for a
  repository.

  </li> </ul> Files, by calling the following:

  <ul> <li> `DeleteFile`, which deletes the content of a specified file from
  a specified branch.

  </li> <li> `GetFile`, which returns the base-64 encoded content of a
  specified file.

  </li> <li> `GetFolder`, which returns the contents of a specified folder or
  directory.

  </li> <li> `PutFile`, which adds or modifies a file in a specified
  repository and branch.

  </li> </ul> Information about committed code in a repository, by calling
  the following:

  <ul> <li> `CreateCommit`, which creates a commit for changes to a
  repository.

  </li> <li> `GetBlob`, which returns the base-64 encoded content of an
  individual Git blob object within a repository.

  </li> <li> `GetCommit`, which returns information about a commit, including
  commit messages and author and committer information.

  </li> <li> `GetDifferences`, which returns information about the
  differences in a valid commit specifier (such as a branch, tag, HEAD,
  commit ID or other fully qualified reference).

  </li> </ul> Pull requests, by calling the following:

  <ul> <li> `CreatePullRequest`, which creates a pull request in a specified
  repository.

  </li> <li> `DescribePullRequestEvents`, which returns information about one
  or more pull request events.

  </li> <li> `GetCommentsForPullRequest`, which returns information about
  comments on a specified pull request.

  </li> <li> `GetMergeConflicts`, which returns information about merge
  conflicts between the source and destination branch in a pull request.

  </li> <li> `GetPullRequest`, which returns information about a specified
  pull request.

  </li> <li> `ListPullRequests`, which lists all pull requests for a
  repository.

  </li> <li> `MergePullRequestByFastForward`, which merges the source
  destination branch of a pull request into the specified destination branch
  for that pull request using the fast-forward merge option.

  </li> <li> `PostCommentForPullRequest`, which posts a comment to a pull
  request at the specified line, file, or request.

  </li> <li> `UpdatePullRequestDescription`, which updates the description of
  a pull request.

  </li> <li> `UpdatePullRequestStatus`, which updates the status of a pull
  request.

  </li> <li> `UpdatePullRequestTitle`, which updates the title of a pull
  request.

  </li> </ul> Information about comments in a repository, by calling the
  following:

  <ul> <li> `DeleteCommentContent`, which deletes the content of a comment on
  a commit in a repository.

  </li> <li> `GetComment`, which returns information about a comment on a
  commit.

  </li> <li> `GetCommentsForComparedCommit`, which returns information about
  comments on the comparison between two commit specifiers in a repository.

  </li> <li> `PostCommentForComparedCommit`, which creates a comment on the
  comparison between two commit specifiers in a repository.

  </li> <li> `PostCommentReply`, which creates a reply to a comment.

  </li> <li> `UpdateComment`, which updates the content of a comment on a
  commit in a repository.

  </li> </ul> Triggers, by calling the following:

  <ul> <li> `GetRepositoryTriggers`, which returns information about triggers
  configured for a repository.

  </li> <li> `PutRepositoryTriggers`, which replaces all triggers for a
  repository and can be used to create or delete triggers.

  </li> <li> `TestRepositoryTriggers`, which tests the functionality of a
  repository trigger by sending data to the trigger target.

  </li> </ul> For information about how to use AWS CodeCommit, see the [AWS
  CodeCommit User
  Guide](http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).
  """

  @doc """
  Returns information about one or more repositories.

  <note> The description field for a repository accepts all HTML characters
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

  <note> Calling the create branch operation does not set a repository's
  default branch. To do this, call the update default branch operation.

  </note>
  """
  def create_branch(client, input, options \\ []) do
    request(client, "CreateBranch", input, options)
  end

  @doc """
  Creates a commit for a repository on the tip of a specified branch.
  """
  def create_commit(client, input, options \\ []) do
    request(client, "CreateCommit", input, options)
  end

  @doc """
  Creates a pull request in the specified repository.
  """
  def create_pull_request(client, input, options \\ []) do
    request(client, "CreatePullRequest", input, options)
  end

  @doc """
  Creates a new, empty repository.
  """
  def create_repository(client, input, options \\ []) do
    request(client, "CreateRepository", input, options)
  end

  @doc """
  Deletes a branch from a repository, unless that branch is the default
  branch for the repository.
  """
  def delete_branch(client, input, options \\ []) do
    request(client, "DeleteBranch", input, options)
  end

  @doc """
  Deletes the content of a comment made on a change, file, or commit in a
  repository.
  """
  def delete_comment_content(client, input, options \\ []) do
    request(client, "DeleteCommentContent", input, options)
  end

  @doc """
  Deletes a specified file from a specified branch. A commit is created on
  the branch that contains the revision. The file will still exist in the
  commits prior to the commit that contains the deletion.
  """
  def delete_file(client, input, options \\ []) do
    request(client, "DeleteFile", input, options)
  end

  @doc """
  Deletes a repository. If a specified repository was already deleted, a null
  repository ID will be returned.

  <important> Deleting a repository also deletes all associated objects and
  metadata. After a repository is deleted, all future push calls to the
  deleted repository will fail.

  </important>
  """
  def delete_repository(client, input, options \\ []) do
    request(client, "DeleteRepository", input, options)
  end

  @doc """
  Returns information about one or more pull request events.
  """
  def describe_pull_request_events(client, input, options \\ []) do
    request(client, "DescribePullRequestEvents", input, options)
  end

  @doc """
  Returns the base-64 encoded content of an individual blob within a
  repository.
  """
  def get_blob(client, input, options \\ []) do
    request(client, "GetBlob", input, options)
  end

  @doc """
  Returns information about a repository branch, including its name and the
  last commit ID.
  """
  def get_branch(client, input, options \\ []) do
    request(client, "GetBranch", input, options)
  end

  @doc """
  Returns the content of a comment made on a change, file, or commit in a
  repository.
  """
  def get_comment(client, input, options \\ []) do
    request(client, "GetComment", input, options)
  end

  @doc """
  Returns information about comments made on the comparison between two
  commits.
  """
  def get_comments_for_compared_commit(client, input, options \\ []) do
    request(client, "GetCommentsForComparedCommit", input, options)
  end

  @doc """
  Returns comments made on a pull request.
  """
  def get_comments_for_pull_request(client, input, options \\ []) do
    request(client, "GetCommentsForPullRequest", input, options)
  end

  @doc """
  Returns information about a commit, including commit message and committer
  information.
  """
  def get_commit(client, input, options \\ []) do
    request(client, "GetCommit", input, options)
  end

  @doc """
  Returns information about the differences in a valid commit specifier (such
  as a branch, tag, HEAD, commit ID or other fully qualified reference).
  Results can be limited to a specified path.
  """
  def get_differences(client, input, options \\ []) do
    request(client, "GetDifferences", input, options)
  end

  @doc """
  Returns the base-64 encoded contents of a specified file and its metadata.
  """
  def get_file(client, input, options \\ []) do
    request(client, "GetFile", input, options)
  end

  @doc """
  Returns the contents of a specified folder in a repository.
  """
  def get_folder(client, input, options \\ []) do
    request(client, "GetFolder", input, options)
  end

  @doc """
  Returns information about merge conflicts between the before and after
  commit IDs for a pull request in a repository.
  """
  def get_merge_conflicts(client, input, options \\ []) do
    request(client, "GetMergeConflicts", input, options)
  end

  @doc """
  Gets information about a pull request in a specified repository.
  """
  def get_pull_request(client, input, options \\ []) do
    request(client, "GetPullRequest", input, options)
  end

  @doc """
  Returns information about a repository.

  <note> The description field for a repository accepts all HTML characters
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
  Gets information about triggers configured for a repository.
  """
  def get_repository_triggers(client, input, options \\ []) do
    request(client, "GetRepositoryTriggers", input, options)
  end

  @doc """
  Gets information about one or more branches in a repository.
  """
  def list_branches(client, input, options \\ []) do
    request(client, "ListBranches", input, options)
  end

  @doc """
  Returns a list of pull requests for a specified repository. The return list
  can be refined by pull request status or pull request author ARN.
  """
  def list_pull_requests(client, input, options \\ []) do
    request(client, "ListPullRequests", input, options)
  end

  @doc """
  Gets information about one or more repositories.
  """
  def list_repositories(client, input, options \\ []) do
    request(client, "ListRepositories", input, options)
  end

  @doc """
  Closes a pull request and attempts to merge the source commit of a pull
  request into the specified destination branch for that pull request at the
  specified commit using the fast-forward merge option.
  """
  def merge_pull_request_by_fast_forward(client, input, options \\ []) do
    request(client, "MergePullRequestByFastForward", input, options)
  end

  @doc """
  Posts a comment on the comparison between two commits.
  """
  def post_comment_for_compared_commit(client, input, options \\ []) do
    request(client, "PostCommentForComparedCommit", input, options)
  end

  @doc """
  Posts a comment on a pull request.
  """
  def post_comment_for_pull_request(client, input, options \\ []) do
    request(client, "PostCommentForPullRequest", input, options)
  end

  @doc """
  Posts a comment in reply to an existing comment on a comparison between
  commits or a pull request.
  """
  def post_comment_reply(client, input, options \\ []) do
    request(client, "PostCommentReply", input, options)
  end

  @doc """
  Adds or updates a file in a branch in an AWS CodeCommit repository, and
  generates a commit for the addition in the specified branch.
  """
  def put_file(client, input, options \\ []) do
    request(client, "PutFile", input, options)
  end

  @doc """
  Replaces all triggers for a repository. This can be used to create or
  delete triggers.
  """
  def put_repository_triggers(client, input, options \\ []) do
    request(client, "PutRepositoryTriggers", input, options)
  end

  @doc """
  Tests the functionality of repository triggers by sending information to
  the trigger target. If real data is available in the repository, the test
  will send data from the last commit. If no data is available, sample data
  will be generated.
  """
  def test_repository_triggers(client, input, options \\ []) do
    request(client, "TestRepositoryTriggers", input, options)
  end

  @doc """
  Replaces the contents of a comment.
  """
  def update_comment(client, input, options \\ []) do
    request(client, "UpdateComment", input, options)
  end

  @doc """
  Sets or changes the default branch name for the specified repository.

  <note> If you use this operation to change the default branch name to the
  current default branch name, a success message is returned even though the
  default branch did not change.

  </note>
  """
  def update_default_branch(client, input, options \\ []) do
    request(client, "UpdateDefaultBranch", input, options)
  end

  @doc """
  Replaces the contents of the description of a pull request.
  """
  def update_pull_request_description(client, input, options \\ []) do
    request(client, "UpdatePullRequestDescription", input, options)
  end

  @doc """
  Updates the status of a pull request.
  """
  def update_pull_request_status(client, input, options \\ []) do
    request(client, "UpdatePullRequestStatus", input, options)
  end

  @doc """
  Replaces the title of a pull request.
  """
  def update_pull_request_title(client, input, options \\ []) do
    request(client, "UpdatePullRequestTitle", input, options)
  end

  @doc """
  Sets or changes the comment or description for a repository.

  <note> The description field for a repository accepts all HTML characters
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
  Renames a repository. The repository name must be unique across the calling
  AWS account. In addition, repository names are limited to 100 alphanumeric,
  dash, and underscore characters, and cannot include certain characters. The
  suffix ".git" is prohibited. For a full description of the limits on
  repository names, see
  [Limits](http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html)
  in the AWS CodeCommit User Guide.
  """
  def update_repository_name(client, input, options \\ []) do
    request(client, "UpdateRepositoryName", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "codecommit"}
    host = get_host("codecommit", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "CodeCommit_20150413.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
