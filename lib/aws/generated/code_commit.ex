# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeCommit do
  @moduledoc """
  AWS CodeCommit

  This is the *AWS CodeCommit API Reference*.

  This reference provides descriptions of the operations and data types for AWS
  CodeCommit API along with usage examples.

  You can use the AWS CodeCommit API to work with the following objects:

  Repositories, by calling the following:

    * `BatchGetRepositories`, which returns information about one or
  more repositories associated with your AWS account.

    * `CreateRepository`, which creates an AWS CodeCommit repository.

    * `DeleteRepository`, which deletes an AWS CodeCommit repository.

    * `GetRepository`, which returns information about a specified
  repository.

    * `ListRepositories`, which lists all AWS CodeCommit repositories
  associated with your AWS account.

    * `UpdateRepositoryDescription`, which sets or updates the
  description of the repository.

    * `UpdateRepositoryName`, which changes the name of the repository.
  If you change the name of a repository, no other users of that repository can
  access it until you send them the new HTTPS or SSH URL to use.

  Branches, by calling the following:

    * `CreateBranch`, which creates a branch in a specified repository.

    * `DeleteBranch`, which deletes the specified branch in a repository
  unless it is the default branch.

    * `GetBranch`, which returns information about a specified branch.

    * `ListBranches`, which lists all branches for a specified
  repository.

    * `UpdateDefaultBranch`, which changes the default branch for a
  repository.

  Files, by calling the following:

    * `DeleteFile`, which deletes the content of a specified file from a
  specified branch.

    * `GetBlob`, which returns the base-64 encoded content of an
  individual Git blob object in a repository.

    * `GetFile`, which returns the base-64 encoded content of a
  specified file.

    * `GetFolder`, which returns the contents of a specified folder or
  directory.

    * `PutFile`, which adds or modifies a single file in a specified
  repository and branch.

  Commits, by calling the following:

    * `BatchGetCommits`, which returns information about one or more
  commits in a repository.

    * `CreateCommit`, which creates a commit for changes to a
  repository.

    * `GetCommit`, which returns information about a commit, including
  commit messages and author and committer information.

    * `GetDifferences`, which returns information about the differences
  in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other
  fully qualified reference).

  Merges, by calling the following:

    * `BatchDescribeMergeConflicts`, which returns information about
  conflicts in a merge between commits in a repository.

    * `CreateUnreferencedMergeCommit`, which creates an unreferenced
  commit between two branches or commits for the purpose of comparing them and
  identifying any potential conflicts.

    * `DescribeMergeConflicts`, which returns information about merge
  conflicts between the base, source, and destination versions of a file in a
  potential merge.

    * `GetMergeCommit`, which returns information about the merge
  between a source and destination commit.

    * `GetMergeConflicts`, which returns information about merge
  conflicts between the source and destination branch in a pull request.

    * `GetMergeOptions`, which returns information about the available
  merge options between two branches or commit specifiers.

    * `MergeBranchesByFastForward`, which merges two branches using the
  fast-forward merge option.

    * `MergeBranchesBySquash`, which merges two branches using the
  squash merge option.

    * `MergeBranchesByThreeWay`, which merges two branches using the
  three-way merge option.

  Pull requests, by calling the following:

    * `CreatePullRequest`, which creates a pull request in a specified
  repository.

    * `CreatePullRequestApprovalRule`, which creates an approval rule
  for a specified pull request.

    * `DeletePullRequestApprovalRule`, which deletes an approval rule
  for a specified pull request.

    * `DescribePullRequestEvents`, which returns information about one
  or more pull request events.

    * `EvaluatePullRequestApprovalRules`, which evaluates whether a pull
  request has met all the conditions specified in its associated approval rules.

    * `GetCommentsForPullRequest`, which returns information about
  comments on a specified pull request.

    * `GetPullRequest`, which returns information about a specified pull
  request.

    * `GetPullRequestApprovalStates`, which returns information about
  the approval states for a specified pull request.

    * `GetPullRequestOverrideState`, which returns information about
  whether approval rules have been set aside (overriden) for a pull request, and
  if so, the Amazon Resource Name (ARN) of the user or identity that overrode the
  rules and their requirements for the pull request.

    * `ListPullRequests`, which lists all pull requests for a
  repository.

    * `MergePullRequestByFastForward`, which merges the source
  destination branch of a pull request into the specified destination branch for
  that pull request using the fast-forward merge option.

    * `MergePullRequestBySquash`, which merges the source destination
  branch of a pull request into the specified destination branch for that pull
  request using the squash merge option.

    * `MergePullRequestByThreeWay`. which merges the source destination
  branch of a pull request into the specified destination branch for that pull
  request using the three-way merge option.

    * `OverridePullRequestApprovalRules`, which sets aside all approval
  rule requirements for a pull request.

    * `PostCommentForPullRequest`, which posts a comment to a pull
  request at the specified line, file, or request.

    * `UpdatePullRequestApprovalRuleContent`, which updates the
  structure of an approval rule for a pull request.

    * `UpdatePullRequestApprovalState`, which updates the state of an
  approval on a pull request.

    * `UpdatePullRequestDescription`, which updates the description of a
  pull request.

    * `UpdatePullRequestStatus`, which updates the status of a pull
  request.

    * `UpdatePullRequestTitle`, which updates the title of a pull
  request.

  Approval rule templates, by calling the following:

    * `AssociateApprovalRuleTemplateWithRepository`, which associates a
  template with a specified repository. After the template is associated with a
  repository, AWS CodeCommit creates approval rules that match the template
  conditions on every pull request created in the specified repository.

    * `BatchAssociateApprovalRuleTemplateWithRepositories`, which
  associates a template with one or more specified repositories. After the
  template is associated with a repository, AWS CodeCommit creates approval rules
  that match the template conditions on every pull request created in the
  specified repositories.

    * `BatchDisassociateApprovalRuleTemplateFromRepositories`, which
  removes the association between a template and specified repositories so that
  approval rules based on the template are not automatically created when pull
  requests are created in those repositories.

    * `CreateApprovalRuleTemplate`, which creates a template for
  approval rules that can then be associated with one or more repositories in your
  AWS account.

    * `DeleteApprovalRuleTemplate`, which deletes the specified
  template. It does not remove approval rules on pull requests already created
  with the template.

    * `DisassociateApprovalRuleTemplateFromRepository`, which removes
  the association between a template and a repository so that approval rules based
  on the template are not automatically created when pull requests are created in
  the specified repository.

    * `GetApprovalRuleTemplate`, which returns information about an
  approval rule template.

    * `ListApprovalRuleTemplates`, which lists all approval rule
  templates in the AWS Region in your AWS account.

    * `ListAssociatedApprovalRuleTemplatesForRepository`, which lists
  all approval rule templates that are associated with a specified repository.

    * `ListRepositoriesForApprovalRuleTemplate`, which lists all
  repositories associated with the specified approval rule template.

    * `UpdateApprovalRuleTemplateDescription`, which updates the
  description of an approval rule template.

    * `UpdateApprovalRuleTemplateName`, which updates the name of an
  approval rule template.

    * `UpdateApprovalRuleTemplateContent`, which updates the content of
  an approval rule template.

  Comments in a repository, by calling the following:

    * `DeleteCommentContent`, which deletes the content of a comment on
  a commit in a repository.

    * `GetComment`, which returns information about a comment on a
  commit.

    * `GetCommentReactions`, which returns information about emoji
  reactions to comments.

    * `GetCommentsForComparedCommit`, which returns information about
  comments on the comparison between two commit specifiers in a repository.

    * `PostCommentForComparedCommit`, which creates a comment on the
  comparison between two commit specifiers in a repository.

    * `PostCommentReply`, which creates a reply to a comment.

    * `PutCommentReaction`, which creates or updates an emoji reaction
  to a comment.

    * `UpdateComment`, which updates the content of a comment on a
  commit in a repository.

  Tags used to tag resources in AWS CodeCommit (not Git tags), by calling the
  following:

    * `ListTagsForResource`, which gets information about AWS tags for a
  specified Amazon Resource Name (ARN) in AWS CodeCommit.

    * `TagResource`, which adds or updates tags for a resource in AWS
  CodeCommit.

    * `UntagResource`, which removes tags for a resource in AWS
  CodeCommit.

  Triggers, by calling the following:

    * `GetRepositoryTriggers`, which returns information about triggers
  configured for a repository.

    * `PutRepositoryTriggers`, which replaces all triggers for a
  repository and can be used to create or delete triggers.

    * `TestRepositoryTriggers`, which tests the functionality of a
  repository trigger by sending data to the trigger target.

  For information about how to use AWS CodeCommit, see the [AWS CodeCommit User Guide](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "CodeCommit",
      api_version: "2015-04-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codecommit",
      global?: false,
      protocol: "json",
      service_id: "CodeCommit",
      signature_version: "v4",
      signing_name: "codecommit",
      target_prefix: "CodeCommit_20150413"
    }
  end

  @doc """
  Creates an association between an approval rule template and a specified
  repository.

  Then, the next time a pull request is created in the repository where the
  destination reference (if specified) matches the destination reference (branch)
  for the pull request, an approval rule that matches the template conditions is
  automatically created for that pull request. If no destination references are
  specified in the template, an approval rule that matches the template contents
  is created for all pull requests in that repository.
  """
  def associate_approval_rule_template_with_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AssociateApprovalRuleTemplateWithRepository",
      input,
      options
    )
  end

  @doc """
  Creates an association between an approval rule template and one or more
  specified repositories.
  """
  def batch_associate_approval_rule_template_with_repositories(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "BatchAssociateApprovalRuleTemplateWithRepositories",
      input,
      options
    )
  end

  @doc """
  Returns information about one or more merge conflicts in the attempted merge of
  two commit specifiers using the squash or three-way merge strategy.
  """
  def batch_describe_merge_conflicts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDescribeMergeConflicts", input, options)
  end

  @doc """
  Removes the association between an approval rule template and one or more
  specified repositories.
  """
  def batch_disassociate_approval_rule_template_from_repositories(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "BatchDisassociateApprovalRuleTemplateFromRepositories",
      input,
      options
    )
  end

  @doc """
  Returns information about the contents of one or more commits in a repository.
  """
  def batch_get_commits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetCommits", input, options)
  end

  @doc """
  Returns information about one or more repositories.

  The description field for a repository accepts all HTML characters and all valid
  Unicode characters. Applications that do not HTML-encode the description and
  display it in a webpage can expose users to potentially malicious code. Make
  sure that you HTML-encode the description field in any application that uses
  this API to display the repository description on a webpage.
  """
  def batch_get_repositories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetRepositories", input, options)
  end

  @doc """
  Creates a template for approval rules that can then be associated with one or
  more repositories in your AWS account.

  When you associate a template with a repository, AWS CodeCommit creates an
  approval rule that matches the conditions of the template for all pull requests
  that meet the conditions of the template. For more information, see
  `AssociateApprovalRuleTemplateWithRepository`.
  """
  def create_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApprovalRuleTemplate", input, options)
  end

  @doc """
  Creates a branch in a repository and points the branch to a commit.

  Calling the create branch operation does not set a repository's default branch.
  To do this, call the update default branch operation.
  """
  def create_branch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBranch", input, options)
  end

  @doc """
  Creates a commit for a repository on the tip of a specified branch.
  """
  def create_commit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCommit", input, options)
  end

  @doc """
  Creates a pull request in the specified repository.
  """
  def create_pull_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePullRequest", input, options)
  end

  @doc """
  Creates an approval rule for a pull request.
  """
  def create_pull_request_approval_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePullRequestApprovalRule", input, options)
  end

  @doc """
  Creates a new, empty repository.
  """
  def create_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRepository", input, options)
  end

  @doc """
  Creates an unreferenced commit that represents the result of merging two
  branches using a specified merge strategy.

  This can help you determine the outcome of a potential merge. This API cannot be
  used with the fast-forward merge strategy because that strategy does not create
  a merge commit.

  This unreferenced merge commit can only be accessed using the GetCommit API or
  through git commands such as git fetch. To retrieve this commit, you must
  specify its commit ID or otherwise reference it.
  """
  def create_unreferenced_merge_commit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUnreferencedMergeCommit", input, options)
  end

  @doc """
  Deletes a specified approval rule template.

  Deleting a template does not remove approval rules on pull requests already
  created with the template.
  """
  def delete_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApprovalRuleTemplate", input, options)
  end

  @doc """
  Deletes a branch from a repository, unless that branch is the default branch for
  the repository.
  """
  def delete_branch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBranch", input, options)
  end

  @doc """
  Deletes the content of a comment made on a change, file, or commit in a
  repository.
  """
  def delete_comment_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCommentContent", input, options)
  end

  @doc """
  Deletes a specified file from a specified branch.

  A commit is created on the branch that contains the revision. The file still
  exists in the commits earlier to the commit that contains the deletion.
  """
  def delete_file(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFile", input, options)
  end

  @doc """
  Deletes an approval rule from a specified pull request.

  Approval rules can be deleted from a pull request only if the pull request is
  open, and if the approval rule was created specifically for a pull request and
  not generated from an approval rule template associated with the repository
  where the pull request was created. You cannot delete an approval rule from a
  merged or closed pull request.
  """
  def delete_pull_request_approval_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePullRequestApprovalRule", input, options)
  end

  @doc """
  Deletes a repository.

  If a specified repository was already deleted, a null repository ID is returned.

  Deleting a repository also deletes all associated objects and metadata. After a
  repository is deleted, all future push calls to the deleted repository fail.
  """
  def delete_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRepository", input, options)
  end

  @doc """
  Returns information about one or more merge conflicts in the attempted merge of
  two commit specifiers using the squash or three-way merge strategy.

  If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE,
  an exception is thrown.
  """
  def describe_merge_conflicts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMergeConflicts", input, options)
  end

  @doc """
  Returns information about one or more pull request events.
  """
  def describe_pull_request_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePullRequestEvents", input, options)
  end

  @doc """
  Removes the association between a template and a repository so that approval
  rules based on the template are not automatically created when pull requests are
  created in the specified repository.

  This does not delete any approval rules previously created for pull requests
  through the template association.
  """
  def disassociate_approval_rule_template_from_repository(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisassociateApprovalRuleTemplateFromRepository",
      input,
      options
    )
  end

  @doc """
  Evaluates whether a pull request has met all the conditions specified in its
  associated approval rules.
  """
  def evaluate_pull_request_approval_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EvaluatePullRequestApprovalRules", input, options)
  end

  @doc """
  Returns information about a specified approval rule template.
  """
  def get_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApprovalRuleTemplate", input, options)
  end

  @doc """
  Returns the base-64 encoded content of an individual blob in a repository.
  """
  def get_blob(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlob", input, options)
  end

  @doc """
  Returns information about a repository branch, including its name and the last
  commit ID.
  """
  def get_branch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBranch", input, options)
  end

  @doc """
  Returns the content of a comment made on a change, file, or commit in a
  repository.

  Reaction counts might include numbers from user identities who were deleted
  after the reaction was made. For a count of reactions from active identities,
  use GetCommentReactions.
  """
  def get_comment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComment", input, options)
  end

  @doc """
  Returns information about reactions to a specified comment ID.

  Reactions from users who have been deleted will not be included in the count.
  """
  def get_comment_reactions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCommentReactions", input, options)
  end

  @doc """
  Returns information about comments made on the comparison between two commits.

  Reaction counts might include numbers from user identities who were deleted
  after the reaction was made. For a count of reactions from active identities,
  use GetCommentReactions.
  """
  def get_comments_for_compared_commit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCommentsForComparedCommit", input, options)
  end

  @doc """
  Returns comments made on a pull request.

  Reaction counts might include numbers from user identities who were deleted
  after the reaction was made. For a count of reactions from active identities,
  use GetCommentReactions.
  """
  def get_comments_for_pull_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCommentsForPullRequest", input, options)
  end

  @doc """
  Returns information about a commit, including commit message and committer
  information.
  """
  def get_commit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCommit", input, options)
  end

  @doc """
  Returns information about the differences in a valid commit specifier (such as a
  branch, tag, HEAD, commit ID, or other fully qualified reference).

  Results can be limited to a specified path.
  """
  def get_differences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDifferences", input, options)
  end

  @doc """
  Returns the base-64 encoded contents of a specified file and its metadata.
  """
  def get_file(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFile", input, options)
  end

  @doc """
  Returns the contents of a specified folder in a repository.
  """
  def get_folder(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFolder", input, options)
  end

  @doc """
  Returns information about a specified merge commit.
  """
  def get_merge_commit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMergeCommit", input, options)
  end

  @doc """
  Returns information about merge conflicts between the before and after commit
  IDs for a pull request in a repository.
  """
  def get_merge_conflicts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMergeConflicts", input, options)
  end

  @doc """
  Returns information about the merge options available for merging two specified
  branches.

  For details about why a merge option is not available, use GetMergeConflicts or
  DescribeMergeConflicts.
  """
  def get_merge_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMergeOptions", input, options)
  end

  @doc """
  Gets information about a pull request in a specified repository.
  """
  def get_pull_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPullRequest", input, options)
  end

  @doc """
  Gets information about the approval states for a specified pull request.

  Approval states only apply to pull requests that have one or more approval rules
  applied to them.
  """
  def get_pull_request_approval_states(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPullRequestApprovalStates", input, options)
  end

  @doc """
  Returns information about whether approval rules have been set aside
  (overridden) for a pull request, and if so, the Amazon Resource Name (ARN) of
  the user or identity that overrode the rules and their requirements for the pull
  request.
  """
  def get_pull_request_override_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPullRequestOverrideState", input, options)
  end

  @doc """
  Returns information about a repository.

  The description field for a repository accepts all HTML characters and all valid
  Unicode characters. Applications that do not HTML-encode the description and
  display it in a webpage can expose users to potentially malicious code. Make
  sure that you HTML-encode the description field in any application that uses
  this API to display the repository description on a webpage.
  """
  def get_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepository", input, options)
  end

  @doc """
  Gets information about triggers configured for a repository.
  """
  def get_repository_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepositoryTriggers", input, options)
  end

  @doc """
  Lists all approval rule templates in the specified AWS Region in your AWS
  account.

  If an AWS Region is not specified, the AWS Region where you are signed in is
  used.
  """
  def list_approval_rule_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApprovalRuleTemplates", input, options)
  end

  @doc """
  Lists all approval rule templates that are associated with a specified
  repository.
  """
  def list_associated_approval_rule_templates_for_repository(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListAssociatedApprovalRuleTemplatesForRepository",
      input,
      options
    )
  end

  @doc """
  Gets information about one or more branches in a repository.
  """
  def list_branches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBranches", input, options)
  end

  @doc """
  Returns a list of pull requests for a specified repository.

  The return list can be refined by pull request status or pull request author
  ARN.
  """
  def list_pull_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPullRequests", input, options)
  end

  @doc """
  Gets information about one or more repositories.
  """
  def list_repositories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositories", input, options)
  end

  @doc """
  Lists all repositories associated with the specified approval rule template.
  """
  def list_repositories_for_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositoriesForApprovalRuleTemplate", input, options)
  end

  @doc """
  Gets information about AWS tags for a specified Amazon Resource Name (ARN) in
  AWS CodeCommit.

  For a list of valid resources in AWS CodeCommit, see [CodeCommit Resources and Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the* AWS CodeCommit User Guide*.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Merges two branches using the fast-forward merge strategy.
  """
  def merge_branches_by_fast_forward(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergeBranchesByFastForward", input, options)
  end

  @doc """
  Merges two branches using the squash merge strategy.
  """
  def merge_branches_by_squash(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergeBranchesBySquash", input, options)
  end

  @doc """
  Merges two specified branches using the three-way merge strategy.
  """
  def merge_branches_by_three_way(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergeBranchesByThreeWay", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination branch for that pull request at the specified commit using the
  fast-forward merge strategy.

  If the merge is successful, it closes the pull request.
  """
  def merge_pull_request_by_fast_forward(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergePullRequestByFastForward", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination branch for that pull request at the specified commit using the
  squash merge strategy.

  If the merge is successful, it closes the pull request.
  """
  def merge_pull_request_by_squash(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergePullRequestBySquash", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination branch for that pull request at the specified commit using the
  three-way merge strategy.

  If the merge is successful, it closes the pull request.
  """
  def merge_pull_request_by_three_way(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MergePullRequestByThreeWay", input, options)
  end

  @doc """
  Sets aside (overrides) all approval rule requirements for a specified pull
  request.
  """
  def override_pull_request_approval_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "OverridePullRequestApprovalRules", input, options)
  end

  @doc """
  Posts a comment on the comparison between two commits.
  """
  def post_comment_for_compared_commit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PostCommentForComparedCommit", input, options)
  end

  @doc """
  Posts a comment on a pull request.
  """
  def post_comment_for_pull_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PostCommentForPullRequest", input, options)
  end

  @doc """
  Posts a comment in reply to an existing comment on a comparison between commits
  or a pull request.
  """
  def post_comment_reply(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PostCommentReply", input, options)
  end

  @doc """
  Adds or updates a reaction to a specified comment for the user whose identity is
  used to make the request.

  You can only add or update a reaction for yourself. You cannot add, modify, or
  delete a reaction for another user.
  """
  def put_comment_reaction(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutCommentReaction", input, options)
  end

  @doc """
  Adds or updates a file in a branch in an AWS CodeCommit repository, and
  generates a commit for the addition in the specified branch.
  """
  def put_file(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutFile", input, options)
  end

  @doc """
  Replaces all triggers for a repository.

  Used to create or delete triggers.
  """
  def put_repository_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRepositoryTriggers", input, options)
  end

  @doc """
  Adds or updates tags for a resource in AWS CodeCommit.

  For a list of valid resources in AWS CodeCommit, see [CodeCommit Resources and Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the *AWS CodeCommit User Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Tests the functionality of repository triggers by sending information to the
  trigger target.

  If real data is available in the repository, the test sends data from the last
  commit. If no data is available, sample data is generated.
  """
  def test_repository_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestRepositoryTriggers", input, options)
  end

  @doc """
  Removes tags for a resource in AWS CodeCommit.

  For a list of valid resources in AWS CodeCommit, see [CodeCommit Resources and Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the *AWS CodeCommit User Guide*.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the content of an approval rule template.

  You can change the number of required approvals, the membership of the approval
  rule, and whether an approval pool is defined.
  """
  def update_approval_rule_template_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApprovalRuleTemplateContent", input, options)
  end

  @doc """
  Updates the description for a specified approval rule template.
  """
  def update_approval_rule_template_description(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApprovalRuleTemplateDescription", input, options)
  end

  @doc """
  Updates the name of a specified approval rule template.
  """
  def update_approval_rule_template_name(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApprovalRuleTemplateName", input, options)
  end

  @doc """
  Replaces the contents of a comment.
  """
  def update_comment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateComment", input, options)
  end

  @doc """
  Sets or changes the default branch name for the specified repository.

  If you use this operation to change the default branch name to the current
  default branch name, a success message is returned even though the default
  branch did not change.
  """
  def update_default_branch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDefaultBranch", input, options)
  end

  @doc """
  Updates the structure of an approval rule created specifically for a pull
  request.

  For example, you can change the number of required approvers and the approval
  pool for approvers.
  """
  def update_pull_request_approval_rule_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePullRequestApprovalRuleContent", input, options)
  end

  @doc """
  Updates the state of a user's approval on a pull request.

  The user is derived from the signed-in account when the request is made.
  """
  def update_pull_request_approval_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePullRequestApprovalState", input, options)
  end

  @doc """
  Replaces the contents of the description of a pull request.
  """
  def update_pull_request_description(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePullRequestDescription", input, options)
  end

  @doc """
  Updates the status of a pull request.
  """
  def update_pull_request_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePullRequestStatus", input, options)
  end

  @doc """
  Replaces the title of a pull request.
  """
  def update_pull_request_title(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePullRequestTitle", input, options)
  end

  @doc """
  Sets or changes the comment or description for a repository.

  The description field for a repository accepts all HTML characters and all valid
  Unicode characters. Applications that do not HTML-encode the description and
  display it in a webpage can expose users to potentially malicious code. Make
  sure that you HTML-encode the description field in any application that uses
  this API to display the repository description on a webpage.
  """
  def update_repository_description(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRepositoryDescription", input, options)
  end

  @doc """
  Renames a repository.

  The repository name must be unique across the calling AWS account. Repository
  names are limited to 100 alphanumeric, dash, and underscore characters, and
  cannot include certain characters. The suffix .git is prohibited. For more
  information about the limits on repository names, see
  [Limits](https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in
  the AWS CodeCommit User Guide.
  """
  def update_repository_name(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRepositoryName", input, options)
  end
end
