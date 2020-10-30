# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

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
  repository can access it until you send them the new HTTPS or SSH URL to
  use.

  </li> </ul> Branches, by calling the following:

  <ul> <li> `CreateBranch`, which creates a branch in a specified repository.

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

  </li> <li> `GetBlob`, which returns the base-64 encoded content of an
  individual Git blob object in a repository.

  </li> <li> `GetFile`, which returns the base-64 encoded content of a
  specified file.

  </li> <li> `GetFolder`, which returns the contents of a specified folder or
  directory.

  </li> <li> `PutFile`, which adds or modifies a single file in a specified
  repository and branch.

  </li> </ul> Commits, by calling the following:

  <ul> <li> `BatchGetCommits`, which returns information about one or more
  commits in a repository.

  </li> <li> `CreateCommit`, which creates a commit for changes to a
  repository.

  </li> <li> `GetCommit`, which returns information about a commit, including
  commit messages and author and committer information.

  </li> <li> `GetDifferences`, which returns information about the
  differences in a valid commit specifier (such as a branch, tag, HEAD,
  commit ID, or other fully qualified reference).

  </li> </ul> Merges, by calling the following:

  <ul> <li> `BatchDescribeMergeConflicts`, which returns information about
  conflicts in a merge between commits in a repository.

  </li> <li> `CreateUnreferencedMergeCommit`, which creates an unreferenced
  commit between two branches or commits for the purpose of comparing them
  and identifying any potential conflicts.

  </li> <li> `DescribeMergeConflicts`, which returns information about merge
  conflicts between the base, source, and destination versions of a file in a
  potential merge.

  </li> <li> `GetMergeCommit`, which returns information about the merge
  between a source and destination commit.

  </li> <li> `GetMergeConflicts`, which returns information about merge
  conflicts between the source and destination branch in a pull request.

  </li> <li> `GetMergeOptions`, which returns information about the available
  merge options between two branches or commit specifiers.

  </li> <li> `MergeBranchesByFastForward`, which merges two branches using
  the fast-forward merge option.

  </li> <li> `MergeBranchesBySquash`, which merges two branches using the
  squash merge option.

  </li> <li> `MergeBranchesByThreeWay`, which merges two branches using the
  three-way merge option.

  </li> </ul> Pull requests, by calling the following:

  <ul> <li> `CreatePullRequest`, which creates a pull request in a specified
  repository.

  </li> <li> `CreatePullRequestApprovalRule`, which creates an approval rule
  for a specified pull request.

  </li> <li> `DeletePullRequestApprovalRule`, which deletes an approval rule
  for a specified pull request.

  </li> <li> `DescribePullRequestEvents`, which returns information about one
  or more pull request events.

  </li> <li> `EvaluatePullRequestApprovalRules`, which evaluates whether a
  pull request has met all the conditions specified in its associated
  approval rules.

  </li> <li> `GetCommentsForPullRequest`, which returns information about
  comments on a specified pull request.

  </li> <li> `GetPullRequest`, which returns information about a specified
  pull request.

  </li> <li> `GetPullRequestApprovalStates`, which returns information about
  the approval states for a specified pull request.

  </li> <li> `GetPullRequestOverrideState`, which returns information about
  whether approval rules have been set aside (overriden) for a pull request,
  and if so, the Amazon Resource Name (ARN) of the user or identity that
  overrode the rules and their requirements for the pull request.

  </li> <li> `ListPullRequests`, which lists all pull requests for a
  repository.

  </li> <li> `MergePullRequestByFastForward`, which merges the source
  destination branch of a pull request into the specified destination branch
  for that pull request using the fast-forward merge option.

  </li> <li> `MergePullRequestBySquash`, which merges the source destination
  branch of a pull request into the specified destination branch for that
  pull request using the squash merge option.

  </li> <li> `MergePullRequestByThreeWay`. which merges the source
  destination branch of a pull request into the specified destination branch
  for that pull request using the three-way merge option.

  </li> <li> `OverridePullRequestApprovalRules`, which sets aside all
  approval rule requirements for a pull request.

  </li> <li> `PostCommentForPullRequest`, which posts a comment to a pull
  request at the specified line, file, or request.

  </li> <li> `UpdatePullRequestApprovalRuleContent`, which updates the
  structure of an approval rule for a pull request.

  </li> <li> `UpdatePullRequestApprovalState`, which updates the state of an
  approval on a pull request.

  </li> <li> `UpdatePullRequestDescription`, which updates the description of
  a pull request.

  </li> <li> `UpdatePullRequestStatus`, which updates the status of a pull
  request.

  </li> <li> `UpdatePullRequestTitle`, which updates the title of a pull
  request.

  </li> </ul> Approval rule templates, by calling the following:

  <ul> <li> `AssociateApprovalRuleTemplateWithRepository`, which associates a
  template with a specified repository. After the template is associated with
  a repository, AWS CodeCommit creates approval rules that match the template
  conditions on every pull request created in the specified repository.

  </li> <li> `BatchAssociateApprovalRuleTemplateWithRepositories`, which
  associates a template with one or more specified repositories. After the
  template is associated with a repository, AWS CodeCommit creates approval
  rules that match the template conditions on every pull request created in
  the specified repositories.

  </li> <li> `BatchDisassociateApprovalRuleTemplateFromRepositories`, which
  removes the association between a template and specified repositories so
  that approval rules based on the template are not automatically created
  when pull requests are created in those repositories.

  </li> <li> `CreateApprovalRuleTemplate`, which creates a template for
  approval rules that can then be associated with one or more repositories in
  your AWS account.

  </li> <li> `DeleteApprovalRuleTemplate`, which deletes the specified
  template. It does not remove approval rules on pull requests already
  created with the template.

  </li> <li> `DisassociateApprovalRuleTemplateFromRepository`, which removes
  the association between a template and a repository so that approval rules
  based on the template are not automatically created when pull requests are
  created in the specified repository.

  </li> <li> `GetApprovalRuleTemplate`, which returns information about an
  approval rule template.

  </li> <li> `ListApprovalRuleTemplates`, which lists all approval rule
  templates in the AWS Region in your AWS account.

  </li> <li> `ListAssociatedApprovalRuleTemplatesForRepository`, which lists
  all approval rule templates that are associated with a specified
  repository.

  </li> <li> `ListRepositoriesForApprovalRuleTemplate`, which lists all
  repositories associated with the specified approval rule template.

  </li> <li> `UpdateApprovalRuleTemplateDescription`, which updates the
  description of an approval rule template.

  </li> <li> `UpdateApprovalRuleTemplateName`, which updates the name of an
  approval rule template.

  </li> <li> `UpdateApprovalRuleTemplateContent`, which updates the content
  of an approval rule template.

  </li> </ul> Comments in a repository, by calling the following:

  <ul> <li> `DeleteCommentContent`, which deletes the content of a comment on
  a commit in a repository.

  </li> <li> `GetComment`, which returns information about a comment on a
  commit.

  </li> <li> `GetCommentReactions`, which returns information about emoji
  reactions to comments.

  </li> <li> `GetCommentsForComparedCommit`, which returns information about
  comments on the comparison between two commit specifiers in a repository.

  </li> <li> `PostCommentForComparedCommit`, which creates a comment on the
  comparison between two commit specifiers in a repository.

  </li> <li> `PostCommentReply`, which creates a reply to a comment.

  </li> <li> `PutCommentReaction`, which creates or updates an emoji reaction
  to a comment.

  </li> <li> `UpdateComment`, which updates the content of a comment on a
  commit in a repository.

  </li> </ul> Tags used to tag resources in AWS CodeCommit (not Git tags), by
  calling the following:

  <ul> <li> `ListTagsForResource`, which gets information about AWS tags for
  a specified Amazon Resource Name (ARN) in AWS CodeCommit.

  </li> <li> `TagResource`, which adds or updates tags for a resource in AWS
  CodeCommit.

  </li> <li> `UntagResource`, which removes tags for a resource in AWS
  CodeCommit.

  </li> </ul> Triggers, by calling the following:

  <ul> <li> `GetRepositoryTriggers`, which returns information about triggers
  configured for a repository.

  </li> <li> `PutRepositoryTriggers`, which replaces all triggers for a
  repository and can be used to create or delete triggers.

  </li> <li> `TestRepositoryTriggers`, which tests the functionality of a
  repository trigger by sending data to the trigger target.

  </li> </ul> For information about how to use AWS CodeCommit, see the [AWS
  CodeCommit User
  Guide](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).
  """

  @doc """
  Creates an association between an approval rule template and a specified
  repository. Then, the next time a pull request is created in the repository
  where the destination reference (if specified) matches the destination
  reference (branch) for the pull request, an approval rule that matches the
  template conditions is automatically created for that pull request. If no
  destination references are specified in the template, an approval rule that
  matches the template contents is created for all pull requests in that
  repository.
  """
  def associate_approval_rule_template_with_repository(client, input, options \\ []) do
    request(client, "AssociateApprovalRuleTemplateWithRepository", input, options)
  end

  @doc """
  Creates an association between an approval rule template and one or more
  specified repositories.
  """
  def batch_associate_approval_rule_template_with_repositories(client, input, options \\ []) do
    request(client, "BatchAssociateApprovalRuleTemplateWithRepositories", input, options)
  end

  @doc """
  Returns information about one or more merge conflicts in the attempted
  merge of two commit specifiers using the squash or three-way merge
  strategy.
  """
  def batch_describe_merge_conflicts(client, input, options \\ []) do
    request(client, "BatchDescribeMergeConflicts", input, options)
  end

  @doc """
  Removes the association between an approval rule template and one or more
  specified repositories.
  """
  def batch_disassociate_approval_rule_template_from_repositories(client, input, options \\ []) do
    request(client, "BatchDisassociateApprovalRuleTemplateFromRepositories", input, options)
  end

  @doc """
  Returns information about the contents of one or more commits in a
  repository.
  """
  def batch_get_commits(client, input, options \\ []) do
    request(client, "BatchGetCommits", input, options)
  end

  @doc """
  Returns information about one or more repositories.

  <note> The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a webpage can expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  webpage.

  </note>
  """
  def batch_get_repositories(client, input, options \\ []) do
    request(client, "BatchGetRepositories", input, options)
  end

  @doc """
  Creates a template for approval rules that can then be associated with one
  or more repositories in your AWS account. When you associate a template
  with a repository, AWS CodeCommit creates an approval rule that matches the
  conditions of the template for all pull requests that meet the conditions
  of the template. For more information, see
  `AssociateApprovalRuleTemplateWithRepository`.
  """
  def create_approval_rule_template(client, input, options \\ []) do
    request(client, "CreateApprovalRuleTemplate", input, options)
  end

  @doc """
  Creates a branch in a repository and points the branch to a commit.

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
  Creates an approval rule for a pull request.
  """
  def create_pull_request_approval_rule(client, input, options \\ []) do
    request(client, "CreatePullRequestApprovalRule", input, options)
  end

  @doc """
  Creates a new, empty repository.
  """
  def create_repository(client, input, options \\ []) do
    request(client, "CreateRepository", input, options)
  end

  @doc """
  Creates an unreferenced commit that represents the result of merging two
  branches using a specified merge strategy. This can help you determine the
  outcome of a potential merge. This API cannot be used with the fast-forward
  merge strategy because that strategy does not create a merge commit.

  <note> This unreferenced merge commit can only be accessed using the
  GetCommit API or through git commands such as git fetch. To retrieve this
  commit, you must specify its commit ID or otherwise reference it.

  </note>
  """
  def create_unreferenced_merge_commit(client, input, options \\ []) do
    request(client, "CreateUnreferencedMergeCommit", input, options)
  end

  @doc """
  Deletes a specified approval rule template. Deleting a template does not
  remove approval rules on pull requests already created with the template.
  """
  def delete_approval_rule_template(client, input, options \\ []) do
    request(client, "DeleteApprovalRuleTemplate", input, options)
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
  the branch that contains the revision. The file still exists in the commits
  earlier to the commit that contains the deletion.
  """
  def delete_file(client, input, options \\ []) do
    request(client, "DeleteFile", input, options)
  end

  @doc """
  Deletes an approval rule from a specified pull request. Approval rules can
  be deleted from a pull request only if the pull request is open, and if the
  approval rule was created specifically for a pull request and not generated
  from an approval rule template associated with the repository where the
  pull request was created. You cannot delete an approval rule from a merged
  or closed pull request.
  """
  def delete_pull_request_approval_rule(client, input, options \\ []) do
    request(client, "DeletePullRequestApprovalRule", input, options)
  end

  @doc """
  Deletes a repository. If a specified repository was already deleted, a null
  repository ID is returned.

  <important> Deleting a repository also deletes all associated objects and
  metadata. After a repository is deleted, all future push calls to the
  deleted repository fail.

  </important>
  """
  def delete_repository(client, input, options \\ []) do
    request(client, "DeleteRepository", input, options)
  end

  @doc """
  Returns information about one or more merge conflicts in the attempted
  merge of two commit specifiers using the squash or three-way merge
  strategy. If the merge option for the attempted merge is specified as
  FAST_FORWARD_MERGE, an exception is thrown.
  """
  def describe_merge_conflicts(client, input, options \\ []) do
    request(client, "DescribeMergeConflicts", input, options)
  end

  @doc """
  Returns information about one or more pull request events.
  """
  def describe_pull_request_events(client, input, options \\ []) do
    request(client, "DescribePullRequestEvents", input, options)
  end

  @doc """
  Removes the association between a template and a repository so that
  approval rules based on the template are not automatically created when
  pull requests are created in the specified repository. This does not delete
  any approval rules previously created for pull requests through the
  template association.
  """
  def disassociate_approval_rule_template_from_repository(client, input, options \\ []) do
    request(client, "DisassociateApprovalRuleTemplateFromRepository", input, options)
  end

  @doc """
  Evaluates whether a pull request has met all the conditions specified in
  its associated approval rules.
  """
  def evaluate_pull_request_approval_rules(client, input, options \\ []) do
    request(client, "EvaluatePullRequestApprovalRules", input, options)
  end

  @doc """
  Returns information about a specified approval rule template.
  """
  def get_approval_rule_template(client, input, options \\ []) do
    request(client, "GetApprovalRuleTemplate", input, options)
  end

  @doc """
  Returns the base-64 encoded content of an individual blob in a repository.
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

  <note> Reaction counts might include numbers from user identities who were
  deleted after the reaction was made. For a count of reactions from active
  identities, use GetCommentReactions.

  </note>
  """
  def get_comment(client, input, options \\ []) do
    request(client, "GetComment", input, options)
  end

  @doc """
  Returns information about reactions to a specified comment ID. Reactions
  from users who have been deleted will not be included in the count.
  """
  def get_comment_reactions(client, input, options \\ []) do
    request(client, "GetCommentReactions", input, options)
  end

  @doc """
  Returns information about comments made on the comparison between two
  commits.

  <note> Reaction counts might include numbers from user identities who were
  deleted after the reaction was made. For a count of reactions from active
  identities, use GetCommentReactions.

  </note>
  """
  def get_comments_for_compared_commit(client, input, options \\ []) do
    request(client, "GetCommentsForComparedCommit", input, options)
  end

  @doc """
  Returns comments made on a pull request.

  <note> Reaction counts might include numbers from user identities who were
  deleted after the reaction was made. For a count of reactions from active
  identities, use GetCommentReactions.

  </note>
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
  as a branch, tag, HEAD, commit ID, or other fully qualified reference).
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
  Returns information about a specified merge commit.
  """
  def get_merge_commit(client, input, options \\ []) do
    request(client, "GetMergeCommit", input, options)
  end

  @doc """
  Returns information about merge conflicts between the before and after
  commit IDs for a pull request in a repository.
  """
  def get_merge_conflicts(client, input, options \\ []) do
    request(client, "GetMergeConflicts", input, options)
  end

  @doc """
  Returns information about the merge options available for merging two
  specified branches. For details about why a merge option is not available,
  use GetMergeConflicts or DescribeMergeConflicts.
  """
  def get_merge_options(client, input, options \\ []) do
    request(client, "GetMergeOptions", input, options)
  end

  @doc """
  Gets information about a pull request in a specified repository.
  """
  def get_pull_request(client, input, options \\ []) do
    request(client, "GetPullRequest", input, options)
  end

  @doc """
  Gets information about the approval states for a specified pull request.
  Approval states only apply to pull requests that have one or more approval
  rules applied to them.
  """
  def get_pull_request_approval_states(client, input, options \\ []) do
    request(client, "GetPullRequestApprovalStates", input, options)
  end

  @doc """
  Returns information about whether approval rules have been set aside
  (overridden) for a pull request, and if so, the Amazon Resource Name (ARN)
  of the user or identity that overrode the rules and their requirements for
  the pull request.
  """
  def get_pull_request_override_state(client, input, options \\ []) do
    request(client, "GetPullRequestOverrideState", input, options)
  end

  @doc """
  Returns information about a repository.

  <note> The description field for a repository accepts all HTML characters
  and all valid Unicode characters. Applications that do not HTML-encode the
  description and display it in a webpage can expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  webpage.

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
  Lists all approval rule templates in the specified AWS Region in your AWS
  account. If an AWS Region is not specified, the AWS Region where you are
  signed in is used.
  """
  def list_approval_rule_templates(client, input, options \\ []) do
    request(client, "ListApprovalRuleTemplates", input, options)
  end

  @doc """
  Lists all approval rule templates that are associated with a specified
  repository.
  """
  def list_associated_approval_rule_templates_for_repository(client, input, options \\ []) do
    request(client, "ListAssociatedApprovalRuleTemplatesForRepository", input, options)
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
  Lists all repositories associated with the specified approval rule
  template.
  """
  def list_repositories_for_approval_rule_template(client, input, options \\ []) do
    request(client, "ListRepositoriesForApprovalRuleTemplate", input, options)
  end

  @doc """
  Gets information about AWS tags for a specified Amazon Resource Name (ARN)
  in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see
  [CodeCommit Resources and
  Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the* AWS CodeCommit User Guide*.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Merges two branches using the fast-forward merge strategy.
  """
  def merge_branches_by_fast_forward(client, input, options \\ []) do
    request(client, "MergeBranchesByFastForward", input, options)
  end

  @doc """
  Merges two branches using the squash merge strategy.
  """
  def merge_branches_by_squash(client, input, options \\ []) do
    request(client, "MergeBranchesBySquash", input, options)
  end

  @doc """
  Merges two specified branches using the three-way merge strategy.
  """
  def merge_branches_by_three_way(client, input, options \\ []) do
    request(client, "MergeBranchesByThreeWay", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination branch for that pull request at the specified commit using the
  fast-forward merge strategy. If the merge is successful, it closes the pull
  request.
  """
  def merge_pull_request_by_fast_forward(client, input, options \\ []) do
    request(client, "MergePullRequestByFastForward", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination branch for that pull request at the specified commit using the
  squash merge strategy. If the merge is successful, it closes the pull
  request.
  """
  def merge_pull_request_by_squash(client, input, options \\ []) do
    request(client, "MergePullRequestBySquash", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination branch for that pull request at the specified commit using the
  three-way merge strategy. If the merge is successful, it closes the pull
  request.
  """
  def merge_pull_request_by_three_way(client, input, options \\ []) do
    request(client, "MergePullRequestByThreeWay", input, options)
  end

  @doc """
  Sets aside (overrides) all approval rule requirements for a specified pull
  request.
  """
  def override_pull_request_approval_rules(client, input, options \\ []) do
    request(client, "OverridePullRequestApprovalRules", input, options)
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
  Adds or updates a reaction to a specified comment for the user whose
  identity is used to make the request. You can only add or update a reaction
  for yourself. You cannot add, modify, or delete a reaction for another
  user.
  """
  def put_comment_reaction(client, input, options \\ []) do
    request(client, "PutCommentReaction", input, options)
  end

  @doc """
  Adds or updates a file in a branch in an AWS CodeCommit repository, and
  generates a commit for the addition in the specified branch.
  """
  def put_file(client, input, options \\ []) do
    request(client, "PutFile", input, options)
  end

  @doc """
  Replaces all triggers for a repository. Used to create or delete triggers.
  """
  def put_repository_triggers(client, input, options \\ []) do
    request(client, "PutRepositoryTriggers", input, options)
  end

  @doc """
  Adds or updates tags for a resource in AWS CodeCommit. For a list of valid
  resources in AWS CodeCommit, see [CodeCommit Resources and
  Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the *AWS CodeCommit User Guide*.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Tests the functionality of repository triggers by sending information to
  the trigger target. If real data is available in the repository, the test
  sends data from the last commit. If no data is available, sample data is
  generated.
  """
  def test_repository_triggers(client, input, options \\ []) do
    request(client, "TestRepositoryTriggers", input, options)
  end

  @doc """
  Removes tags for a resource in AWS CodeCommit. For a list of valid
  resources in AWS CodeCommit, see [CodeCommit Resources and
  Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the *AWS CodeCommit User Guide*.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the content of an approval rule template. You can change the number
  of required approvals, the membership of the approval rule, and whether an
  approval pool is defined.
  """
  def update_approval_rule_template_content(client, input, options \\ []) do
    request(client, "UpdateApprovalRuleTemplateContent", input, options)
  end

  @doc """
  Updates the description for a specified approval rule template.
  """
  def update_approval_rule_template_description(client, input, options \\ []) do
    request(client, "UpdateApprovalRuleTemplateDescription", input, options)
  end

  @doc """
  Updates the name of a specified approval rule template.
  """
  def update_approval_rule_template_name(client, input, options \\ []) do
    request(client, "UpdateApprovalRuleTemplateName", input, options)
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
  Updates the structure of an approval rule created specifically for a pull
  request. For example, you can change the number of required approvers and
  the approval pool for approvers.
  """
  def update_pull_request_approval_rule_content(client, input, options \\ []) do
    request(client, "UpdatePullRequestApprovalRuleContent", input, options)
  end

  @doc """
  Updates the state of a user's approval on a pull request. The user is
  derived from the signed-in account when the request is made.
  """
  def update_pull_request_approval_state(client, input, options \\ []) do
    request(client, "UpdatePullRequestApprovalState", input, options)
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
  description and display it in a webpage can expose users to potentially
  malicious code. Make sure that you HTML-encode the description field in any
  application that uses this API to display the repository description on a
  webpage.

  </note>
  """
  def update_repository_description(client, input, options \\ []) do
    request(client, "UpdateRepositoryDescription", input, options)
  end

  @doc """
  Renames a repository. The repository name must be unique across the calling
  AWS account. Repository names are limited to 100 alphanumeric, dash, and
  underscore characters, and cannot include certain characters. The suffix
  .git is prohibited. For more information about the limits on repository
  names, see
  [Limits](https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html)
  in the AWS CodeCommit User Guide.
  """
  def update_repository_name(client, input, options \\ []) do
    request(client, "UpdateRepositoryName", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "codecommit"}
    host = build_host("codecommit", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "CodeCommit_20150413.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
