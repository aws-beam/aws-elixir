# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeCommit do
  @moduledoc """
  CodeCommit

  This is the *CodeCommit API Reference*.

  This reference provides descriptions of the operations and data types for
  CodeCommit API along with usage examples.

  You can use the CodeCommit API to work with the following objects:

  Repositories, by calling the following:

    *

  `BatchGetRepositories`, which returns information about one or more repositories
  associated with your Amazon Web Services account.

    *

  `CreateRepository`, which creates an CodeCommit repository.

    *

  `DeleteRepository`, which deletes an CodeCommit repository.

    *

  `GetRepository`, which returns information about a specified repository.

    *

  `ListRepositories`, which lists all CodeCommit repositories associated with your
  Amazon Web Services account.

    *

  `UpdateRepositoryDescription`, which sets or updates the description of the
  repository.

    *

  `UpdateRepositoryEncryptionKey`, which updates the Key Management Service
  encryption key used
  to encrypt and decrypt a repository.

    *

  `UpdateRepositoryName`, which changes the name of the
  repository. If you change the name of a repository, no other users of that
  repository can access it until you send them the new HTTPS or SSH URL to
  use.

  Branches, by calling the following:

    *

  `CreateBranch`, which creates a branch in a specified
  repository.

    *

  `DeleteBranch`, which deletes the specified branch in a repository unless it is
  the default branch.

    *

  `GetBranch`, which returns information about a specified branch.

    *

  `ListBranches`, which lists all branches for a specified repository.

    *

  `UpdateDefaultBranch`, which changes the default branch for a repository.

  Files, by calling the following:

    *

  `DeleteFile`, which deletes the content of a specified file from a specified
  branch.

    *

  `GetBlob`, which returns the base-64 encoded content of an
  individual Git blob object in a repository.

    *

  `GetFile`, which returns the base-64 encoded content of a specified file.

    *

  `GetFolder`, which returns the contents of a specified folder or directory.

    *

  `ListFileCommitHistory`, which retrieves a list of commits and changes to a
  specified file.

    *

  `PutFile`, which adds or modifies a single file in a specified repository and
  branch.

  Commits, by calling the following:

    *

  `BatchGetCommits`, which returns information about one or more commits in a
  repository.

    *

  `CreateCommit`, which creates a commit for changes to a repository.

    *

  `GetCommit`, which returns information about a commit, including commit
  messages and author and committer information.

    *

  `GetDifferences`, which returns information about the
  differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID,
  or other fully qualified reference).

  Merges, by calling the following:

    *

  `BatchDescribeMergeConflicts`, which returns information about conflicts in a
  merge between commits in a repository.

    *

  `CreateUnreferencedMergeCommit`, which creates an unreferenced commit between
  two branches or commits for the
  purpose of comparing them and identifying any potential conflicts.

    *

  `DescribeMergeConflicts`, which returns information about merge conflicts
  between the base, source, and destination versions
  of a file in a potential merge.

    *

  `GetMergeCommit`, which returns information about the merge between a source and
  destination commit.

    *

  `GetMergeConflicts`, which returns information about merge conflicts
  between the source and destination branch in a pull request.

    *

  `GetMergeOptions`, which returns information about the available merge options
  between two branches or commit specifiers.

    *

  `MergeBranchesByFastForward`, which merges two branches using the fast-forward
  merge option.

    *

  `MergeBranchesBySquash`, which merges two branches using the squash merge
  option.

    *

  `MergeBranchesByThreeWay`, which merges two branches using the three-way merge
  option.

  Pull requests, by calling the following:

    *

  `CreatePullRequest`, which creates a pull request in a specified repository.

    *

  `CreatePullRequestApprovalRule`, which creates an approval rule for a specified
  pull request.

    *

  `DeletePullRequestApprovalRule`, which deletes an approval rule for a specified
  pull request.

    *

  `DescribePullRequestEvents`, which returns information about one or more pull
  request events.

    *

  `EvaluatePullRequestApprovalRules`, which evaluates whether a pull request has
  met all the conditions specified in its associated approval rules.

    *

  `GetCommentsForPullRequest`, which returns information about comments on a
  specified pull request.

    *

  `GetPullRequest`, which returns information about a specified pull request.

    *

  `GetPullRequestApprovalStates`, which returns information about the approval
  states for a specified pull request.

    *

  `GetPullRequestOverrideState`, which returns information about whether approval
  rules have been set aside (overriden) for a
  pull request, and if so, the Amazon Resource Name (ARN) of the user or identity
  that overrode the rules and their requirements for the pull request.

    *

  `ListPullRequests`, which lists all pull requests for a repository.

    *

  `MergePullRequestByFastForward`, which merges the source destination branch of a
  pull request into the specified destination
  branch for that pull request using the fast-forward merge option.

    *

  `MergePullRequestBySquash`, which merges the source destination branch of a pull
  request into the specified destination
  branch for that pull request using the squash merge option.

    *

  `MergePullRequestByThreeWay`, which merges the source destination branch of a
  pull request into the specified destination
  branch for that pull request using the three-way merge option.

    *

  `OverridePullRequestApprovalRules`, which sets aside all approval rule
  requirements for a pull request.

    *

  `PostCommentForPullRequest`, which posts a comment to a pull request at the
  specified line, file, or request.

    *

  `UpdatePullRequestApprovalRuleContent`, which updates the structure of an
  approval rule for a pull request.

    *

  `UpdatePullRequestApprovalState`, which updates the state of an approval on a
  pull request.

    *

  `UpdatePullRequestDescription`, which updates the description of a pull request.

    *

  `UpdatePullRequestStatus`, which updates the status of a pull request.

    *

  `UpdatePullRequestTitle`, which updates the title of a pull request.

  Approval rule templates, by calling the following:

    *

  `AssociateApprovalRuleTemplateWithRepository`, which associates a template
  with a specified repository. After the template is associated with a repository,
  CodeCommit creates approval rules that match the template conditions on
  every pull request created in the specified repository.

    *

  `BatchAssociateApprovalRuleTemplateWithRepositories`, which associates a
  template with one or more specified repositories. After the template is
  associated with a repository, CodeCommit creates approval rules that match
  the template conditions on every pull request created in the specified
  repositories.

    *

  `BatchDisassociateApprovalRuleTemplateFromRepositories`, which removes the
  association between a template and specified repositories so that approval rules
  based on the template are not automatically created when pull requests are
  created in those repositories.

    *

  `CreateApprovalRuleTemplate`, which creates a template for approval rules that
  can then be associated with one or more repositories
  in your Amazon Web Services account.

    *

  `DeleteApprovalRuleTemplate`, which deletes the specified template. It does not
  remove approval rules on pull requests already created with the template.

    *

  `DisassociateApprovalRuleTemplateFromRepository`, which removes the
  association between a template and a repository so that approval rules based on
  the template are not automatically created when pull requests are created in the
  specified repository.

    *

  `GetApprovalRuleTemplate`, which returns information about an approval rule
  template.

    *

  `ListApprovalRuleTemplates`, which lists all approval rule templates in the
  Amazon Web Services Region in your Amazon Web Services account.

    *

  `ListAssociatedApprovalRuleTemplatesForRepository`, which lists all approval
  rule templates that are associated with a specified repository.

    *

  `ListRepositoriesForApprovalRuleTemplate`, which lists all repositories
  associated with the specified approval rule template.

    *

  `UpdateApprovalRuleTemplateDescription`, which updates the description of an
  approval rule template.

    *

  `UpdateApprovalRuleTemplateName`, which updates the name of an approval rule
  template.

    *

  `UpdateApprovalRuleTemplateContent`, which updates the content of an approval
  rule template.

  Comments in a repository, by calling the following:

    *

  `DeleteCommentContent`, which deletes the content of a comment on a commit in a
  repository.

    *

  `GetComment`, which returns information about a comment on a commit.

    *

  `GetCommentReactions`, which returns information about emoji reactions to
  comments.

    *

  `GetCommentsForComparedCommit`, which returns information about comments on the
  comparison between two commit specifiers
  in a repository.

    *

  `PostCommentForComparedCommit`, which creates a comment on the comparison
  between two commit specifiers in a repository.

    *

  `PostCommentReply`, which creates a reply to a comment.

    *

  `PutCommentReaction`, which creates or updates an emoji reaction to a comment.

    *

  `UpdateComment`, which updates the content of a comment on a commit in a
  repository.

  Tags used to tag resources in CodeCommit (not Git tags), by calling the
  following:

    *

  `ListTagsForResource`, which gets information about Amazon Web Servicestags for
  a specified Amazon Resource Name (ARN) in CodeCommit.

    *

  `TagResource`, which adds or updates tags for a resource in CodeCommit.

    *

  `UntagResource`, which removes tags for a resource in CodeCommit.

  Triggers, by calling the following:

    *

  `GetRepositoryTriggers`, which returns information about triggers configured
  for a repository.

    *

  `PutRepositoryTriggers`, which replaces all triggers for a repository and can
  be used to create or delete triggers.

    *

  `TestRepositoryTriggers`, which tests the functionality of a repository trigger
  by sending data to the trigger target.

  For information about how to use CodeCommit, see the [CodeCommit User Guide](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      branch_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type branch_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_and_destination_are_same_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type source_and_destination_are_same_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_repositories_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom(),
        "repositoryId" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type batch_get_repositories_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      evaluate_pull_request_approval_rules_output() :: %{
        "evaluation" => evaluation()
      }
      
  """
  @type evaluate_pull_request_approval_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_template_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_template_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      default_branch_cannot_be_deleted_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type default_branch_cannot_be_deleted_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_request_token_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type client_request_token_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_rule_templates_associated_with_repository_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_rule_templates_associated_with_repository_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_approval_rule_template_output() :: %{
        "approvalRuleTemplate" => approval_rule_template()
      }
      
  """
  @type get_approval_rule_template_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_pull_request_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type get_pull_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit() :: %{
        "additionalData" => String.t() | atom(),
        "author" => user_info(),
        "commitId" => String.t() | atom(),
        "committer" => user_info(),
        "message" => String.t() | atom(),
        "parents" => list(String.t() | atom()),
        "treeId" => String.t() | atom()
      }
      
  """
  @type commit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_order_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_order_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_file_output() :: %{
        "blobId" => String.t() | atom(),
        "commitId" => String.t() | atom(),
        "treeId" => String.t() | atom()
      }
      
  """
  @type put_file_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tips_divergence_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tips_divergence_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_approval_rule_template_description_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_approval_rule_template_description_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      repository_name_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_name_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_max_results_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_max_results_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blob_input() :: %{
        required("blobId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_blob_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_file_position_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_file_position_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_continuation_token_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_continuation_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      symbolic_link() :: %{
        "absolutePath" => String.t() | atom(),
        "blobId" => String.t() | atom(),
        "fileMode" => list(any()),
        "relativePath" => String.t() | atom()
      }
      
  """
  @type symbolic_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_content_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_content_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_target_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_target_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_merge_options_input() :: %{
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolutionStrategy") => list(any()),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type get_merge_options_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_repository_encryption_key_output() :: %{
        "kmsKeyId" => String.t() | atom(),
        "originalKmsKeyId" => String.t() | atom(),
        "repositoryId" => String.t() | atom()
      }
      
  """
  @type update_repository_encryption_key_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_commit_input() :: %{
        required("commitId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_commit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_destination_commit_specifier_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_destination_commit_specifier_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comment_deleted_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type comment_deleted_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_associated_approval_rule_templates_for_repository_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type list_associated_approval_rule_templates_for_repository_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      invalid_pull_request_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_pull_request_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_names_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_names_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_branch_input() :: %{
        required("branchName") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type delete_branch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_pull_requests_output() :: %{
        "nextToken" => String.t() | atom(),
        "pullRequestIds" => list(String.t() | atom())
      }
      
  """
  @type list_pull_requests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blob_id_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type blob_id_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_repository_input() :: %{
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_repository_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_branches_by_squash_input() :: %{
        optional("authorName") => String.t() | atom(),
        optional("commitMessage") => String.t() | atom(),
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolution") => conflict_resolution(),
        optional("conflictResolutionStrategy") => list(any()),
        optional("email") => String.t() | atom(),
        optional("keepEmptyFolders") => boolean(),
        optional("targetBranch") => String.t() | atom(),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type merge_branches_by_squash_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comment_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type comment_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit_ids_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type commit_ids_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_integrity_checks_failed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_integrity_checks_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_name_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_name_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_merge_conflicts_output() :: %{
        "baseCommitId" => String.t() | atom(),
        "conflictMetadata" => conflict_metadata(),
        "destinationCommitId" => String.t() | atom(),
        "mergeHunks" => list(merge_hunk()),
        "nextToken" => String.t() | atom(),
        "sourceCommitId" => String.t() | atom()
      }
      
  """
  @type describe_merge_conflicts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_max_merge_hunks_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_max_merge_hunks_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_resolution() :: %{
        "deleteFiles" => list(delete_file_entry()),
        "replaceContents" => list(replace_content_entry()),
        "setFileModes" => list(set_file_mode_entry())
      }
      
  """
  @type conflict_resolution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_key_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_key_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_key_unavailable_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_key_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_client_request_token_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_client_request_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_repository_output() :: %{
        "repositoryMetadata" => repository_metadata()
      }
      
  """
  @type create_repository_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_file_specifier() :: %{
        "filePath" => String.t() | atom(),
        "isMove" => boolean()
      }
      
  """
  @type source_file_specifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_approval_rule_template_content_output() :: %{
        "approvalRuleTemplate" => approval_rule_template()
      }
      
  """
  @type update_approval_rule_template_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_target() :: %{
        "destinationCommit" => String.t() | atom(),
        "destinationReference" => String.t() | atom(),
        "mergeBase" => String.t() | atom(),
        "mergeMetadata" => merge_metadata(),
        "repositoryName" => String.t() | atom(),
        "sourceCommit" => String.t() | atom(),
        "sourceReference" => String.t() | atom()
      }
      
  """
  @type pull_request_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_pull_request_approval_rule_input() :: %{
        required("approvalRuleName") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom()
      }
      
  """
  @type delete_pull_request_approval_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      difference() :: %{
        "afterBlob" => blob_metadata(),
        "beforeBlob" => blob_metadata(),
        "changeType" => list(any())
      }
      
  """
  @type difference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_repositories_for_approval_rule_template_output() :: %{
        "nextToken" => String.t() | atom(),
        "repositoryNames" => list(String.t() | atom())
      }
      
  """
  @type list_repositories_for_approval_rule_template_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_approval_rules_not_satisfied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type pull_request_approval_rules_not_satisfied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_pull_requests_input() :: %{
        optional("authorArn") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("pullRequestStatus") => list(any()),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type list_pull_requests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blob_metadata() :: %{
        "blobId" => String.t() | atom(),
        "mode" => String.t() | atom(),
        "path" => String.t() | atom()
      }
      
  """
  @type blob_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reaction_value_formats() :: %{
        "emoji" => String.t() | atom(),
        "shortCode" => String.t() | atom(),
        "unicode" => String.t() | atom()
      }
      
  """
  @type reaction_value_formats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_author_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_author_arn_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_repository_triggers_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_repository_triggers_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_reaction_value_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_reaction_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_event_metadata() :: %{
        "approvalRuleContent" => String.t() | atom(),
        "approvalRuleId" => String.t() | atom(),
        "approvalRuleName" => String.t() | atom()
      }
      
  """
  @type approval_rule_event_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      folder_content_size_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type folder_content_size_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_file_or_content_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type source_file_or_content_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_trigger_custom_data_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_trigger_custom_data_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_repository_triggers_input() :: %{
        required("repositoryName") => String.t() | atom(),
        required("triggers") => list(repository_trigger())
      }
      
  """
  @type test_repository_triggers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tags_map_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tags_map_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_differences_output() :: %{
        "NextToken" => String.t() | atom(),
        "differences" => list(difference())
      }
      
  """
  @type get_differences_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_conflict_resolution_strategy_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_conflict_resolution_strategy_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_merge_conflicts_output() :: %{
        "baseCommitId" => String.t() | atom(),
        "conflictMetadataList" => list(conflict_metadata()),
        "destinationCommitId" => String.t() | atom(),
        "mergeable" => boolean(),
        "nextToken" => String.t() | atom(),
        "sourceCommitId" => String.t() | atom()
      }
      
  """
  @type get_merge_conflicts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_override_status_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_override_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_merge_options_output() :: %{
        "baseCommitId" => String.t() | atom(),
        "destinationCommitId" => String.t() | atom(),
        "mergeOptions" => list(list(any())()),
        "sourceCommitId" => String.t() | atom()
      }
      
  """
  @type get_merge_options_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_entry() :: %{
        "filePath" => String.t() | atom()
      }
      
  """
  @type delete_file_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_targets_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_targets_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_triggers_list_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_triggers_list_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_hunk_detail() :: %{
        "endLine" => integer(),
        "hunkContent" => String.t() | atom(),
        "startLine" => integer()
      }
      
  """
  @type merge_hunk_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      path_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type path_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_pull_request_approval_states_output() :: %{
        "approvals" => list(approval())
      }
      
  """
  @type get_pull_request_approval_states_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_pull_request_input() :: %{
        optional("clientRequestToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("targets") => list(target()),
        required("title") => String.t() | atom()
      }
      
  """
  @type create_pull_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_status_changed_event_metadata() :: %{
        "pullRequestStatus" => list(any())
      }
      
  """
  @type pull_request_status_changed_event_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_name_conflicts_with_directory_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_name_conflicts_with_directory_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_approval_rule_template_output() :: %{
        "approvalRuleTemplateId" => String.t() | atom()
      }
      
  """
  @type delete_approval_rule_template_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_branches_output() :: %{
        "branches" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_branches_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      same_file_content_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type same_file_content_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_repositories_input() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("order") => list(any()),
        optional("sortBy") => list(any())
      }
      
  """
  @type list_repositories_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_name_id_pair() :: %{
        "repositoryId" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type repository_name_id_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_approval_rule_template_input() :: %{
        optional("approvalRuleTemplateDescription") => String.t() | atom(),
        required("approvalRuleTemplateContent") => String.t() | atom(),
        required("approvalRuleTemplateName") => String.t() | atom()
      }
      
  """
  @type create_approval_rule_template_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type commit_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_repository_triggers_output() :: %{
        "configurationId" => String.t() | atom(),
        "triggers" => list(repository_trigger())
      }
      
  """
  @type get_repository_triggers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      post_comment_reply_output() :: %{
        "comment" => comment()
      }
      
  """
  @type post_comment_reply_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      same_path_request_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type same_path_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_repository_output() :: %{
        "repositoryMetadata" => repository_metadata()
      }
      
  """
  @type get_repository_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_number_of_approvals_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_number_of_approvals_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_rule_content_sha256_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_rule_content_sha256_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      author_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type author_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      post_comment_for_pull_request_output() :: %{
        "afterBlobId" => String.t() | atom(),
        "afterCommitId" => String.t() | atom(),
        "beforeBlobId" => String.t() | atom(),
        "beforeCommitId" => String.t() | atom(),
        "comment" => comment(),
        "location" => location(),
        "pullRequestId" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type post_comment_for_pull_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file() :: %{
        "absolutePath" => String.t() | atom(),
        "blobId" => String.t() | atom(),
        "fileMode" => list(any()),
        "relativePath" => String.t() | atom()
      }
      
  """
  @type file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_template_in_use_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_template_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_policy_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tag_policy_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tip_of_source_reference_is_different_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tip_of_source_reference_is_different_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_replacement_type_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_replacement_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_repository_description_input() :: %{
        optional("repositoryDescription") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type update_repository_description_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_template_content_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_template_content_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_approval_rule_template_description_output() :: %{
        "approvalRuleTemplate" => approval_rule_template()
      }
      
  """
  @type update_approval_rule_template_description_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_state_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_state_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_entry_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_entry_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_describe_merge_conflicts_error() :: %{
        "exceptionName" => String.t() | atom(),
        "filePath" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type batch_describe_merge_conflicts_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "nextToken" => String.t() | atom(),
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_branches_by_fast_forward_output() :: %{
        "commitId" => String.t() | atom(),
        "treeId" => String.t() | atom()
      }
      
  """
  @type merge_branches_by_fast_forward_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type target_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_modes() :: %{
        "base" => list(any()),
        "destination" => list(any()),
        "source" => list(any())
      }
      
  """
  @type file_modes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_trigger_branch_name_list_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_trigger_branch_name_list_required_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      update_pull_request_approval_rule_content_input() :: %{
        optional("existingRuleContentSha256") => String.t() | atom(),
        required("approvalRuleName") => String.t() | atom(),
        required("newRuleContent") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom()
      }
      
  """
  @type update_pull_request_approval_rule_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parent_commit_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_parent_commit_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_template_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_template_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_branches_by_three_way_output() :: %{
        "commitId" => String.t() | atom(),
        "treeId" => String.t() | atom()
      }
      
  """
  @type merge_branches_by_three_way_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_branch_output() :: %{
        "deletedBranch" => branch_info()
      }
      
  """
  @type delete_branch_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cannot_modify_approval_rule_from_template_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cannot_modify_approval_rule_from_template_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_content_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_content_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blob_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type blob_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_approval_rule_template_from_repository_input() :: %{
        required("approvalRuleTemplateName") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type disassociate_approval_rule_template_from_repository_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      pull_request_cannot_be_approved_by_author_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type pull_request_cannot_be_approved_by_author_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      branch_name_is_tag_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type branch_name_is_tag_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_file_commit_history_response() :: %{
        "nextToken" => String.t() | atom(),
        "revisionDag" => list(file_version())
      }
      
  """
  @type list_file_commit_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_metadata() :: %{
        "absolutePath" => String.t() | atom(),
        "blobId" => String.t() | atom(),
        "fileMode" => list(any())
      }
      
  """
  @type file_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_approval_rule_template_description_input() :: %{
        required("approvalRuleTemplateDescription") => String.t() | atom(),
        required("approvalRuleTemplateName") => String.t() | atom()
      }
      
  """
  @type update_approval_rule_template_description_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reference_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reference_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comment_content_size_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type comment_content_size_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replacement_content_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replacement_content_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_branches_by_three_way_input() :: %{
        optional("authorName") => String.t() | atom(),
        optional("commitMessage") => String.t() | atom(),
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolution") => conflict_resolution(),
        optional("conflictResolutionStrategy") => list(any()),
        optional("email") => String.t() | atom(),
        optional("keepEmptyFolders") => boolean(),
        optional("targetBranch") => String.t() | atom(),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type merge_branches_by_three_way_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_approval_rule_template_output() :: %{
        "approvalRuleTemplate" => approval_rule_template()
      }
      
  """
  @type create_approval_rule_template_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replace_content_entry() :: %{
        "content" => binary(),
        "fileMode" => list(any()),
        "filePath" => String.t() | atom(),
        "replacementType" => list(any())
      }
      
  """
  @type replace_content_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_trigger_events_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_trigger_events_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "destinationReference" => String.t() | atom(),
        "repositoryName" => String.t() | atom(),
        "sourceReference" => String.t() | atom()
      }
      
  """
  @type target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type pull_request_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_option_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type merge_option_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_key_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_key_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_associate_approval_rule_template_with_repositories_output() :: %{
        "associatedRepositoryNames" => list(String.t() | atom()),
        "errors" => list(batch_associate_approval_rule_template_with_repositories_error())
      }
      
  """
  @type batch_associate_approval_rule_template_with_repositories_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_comment_content_input() :: %{
        required("commentId") => String.t() | atom()
      }
      
  """
  @type delete_comment_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_items_to_compare_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_items_to_compare_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_merge_commit_input() :: %{
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolutionStrategy") => list(any()),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type get_merge_commit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_repository_output() :: %{
        "repositoryId" => String.t() | atom()
      }
      
  """
  @type delete_repository_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      multiple_conflict_resolution_entries_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type multiple_conflict_resolution_entries_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_pull_request_by_fast_forward_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type merge_pull_request_by_fast_forward_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_key_access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_key_access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_approval_rule_template_content_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_approval_rule_template_content_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_metadata() :: %{
        "isMerged" => boolean(),
        "mergeCommitId" => String.t() | atom(),
        "mergeOption" => list(any()),
        "mergedBy" => String.t() | atom()
      }
      
  """
  @type merge_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_replacement_content_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_replacement_content_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_merge_conflicts_input() :: %{
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolutionStrategy") => list(any()),
        optional("maxConflictFiles") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("mergeOption") => list(any()),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type get_merge_conflicts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_comment_reactions_output() :: %{
        "nextToken" => String.t() | atom(),
        "reactionsForComment" => list(reaction_for_comment())
      }
      
  """
  @type get_comment_reactions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_pull_request_by_squash_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type merge_pull_request_by_squash_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_branches_by_squash_output() :: %{
        "commitId" => String.t() | atom(),
        "treeId" => String.t() | atom()
      }
      
  """
  @type merge_branches_by_squash_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revision_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type revision_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_branches_by_fast_forward_input() :: %{
        optional("targetBranch") => String.t() | atom(),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type merge_branches_by_fast_forward_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_status_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type pull_request_status_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_branch_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_branch_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_hunk() :: %{
        "base" => merge_hunk_detail(),
        "destination" => merge_hunk_detail(),
        "isConflict" => boolean(),
        "source" => merge_hunk_detail()
      }
      
  """
  @type merge_hunk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_approval_rule_content_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_approval_rule_content_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comment() :: %{
        "authorArn" => String.t() | atom(),
        "callerReactions" => list(String.t() | atom()),
        "clientRequestToken" => String.t() | atom(),
        "commentId" => String.t() | atom(),
        "content" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "deleted" => boolean(),
        "inReplyTo" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "reactionCounts" => map()
      }
      
  """
  @type comment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      post_comment_for_pull_request_input() :: %{
        optional("clientRequestToken") => String.t() | atom(),
        optional("location") => location(),
        required("afterCommitId") => String.t() | atom(),
        required("beforeCommitId") => String.t() | atom(),
        required("content") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type post_comment_for_pull_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_repository_encryption_key_input() :: %{
        required("kmsKeyId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type update_repository_encryption_key_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_pull_request_event_type_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_pull_request_event_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      set_file_mode_entry() :: %{
        "fileMode" => list(any()),
        "filePath" => String.t() | atom()
      }
      
  """
  @type set_file_mode_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reaction_value_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reaction_value_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_comment_reactions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("reactionUserArn") => String.t() | atom(),
        required("commentId") => String.t() | atom()
      }
      
  """
  @type get_comment_reactions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_folder_output() :: %{
        "commitId" => String.t() | atom(),
        "files" => list(file()),
        "folderPath" => String.t() | atom(),
        "subFolders" => list(folder()),
        "subModules" => list(sub_module()),
        "symbolicLinks" => list(symbolic_link()),
        "treeId" => String.t() | atom()
      }
      
  """
  @type get_folder_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_repository_names_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_repository_names_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_pull_request_by_fast_forward_input() :: %{
        optional("sourceCommitId") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type merge_pull_request_by_fast_forward_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_revision_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_revision_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_branch_input() :: %{
        required("branchName") => String.t() | atom(),
        required("commitId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type create_branch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_commits_error() :: %{
        "commitId" => String.t() | atom(),
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom()
      }
      
  """
  @type batch_get_commits_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_blob_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_blob_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_describe_merge_conflicts_output() :: %{
        "baseCommitId" => String.t() | atom(),
        "conflicts" => list(conflict()),
        "destinationCommitId" => String.t() | atom(),
        "errors" => list(batch_describe_merge_conflicts_error()),
        "nextToken" => String.t() | atom(),
        "sourceCommitId" => String.t() | atom()
      }
      
  """
  @type batch_describe_merge_conflicts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type pull_request_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_trigger_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_trigger_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_pull_request_by_three_way_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type merge_pull_request_by_three_way_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit_ids_list_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type commit_ids_list_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_email_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_email_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_key_invalid_usage_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_key_invalid_usage_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_commit_output() :: %{
        "commit" => commit()
      }
      
  """
  @type get_commit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comment_not_created_by_caller_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type comment_not_created_by_caller_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_relative_file_version_enum_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_relative_file_version_enum_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parent_commit_id_outdated_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type parent_commit_id_outdated_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_sizes() :: %{
        "base" => float(),
        "destination" => float(),
        "source" => float()
      }
      
  """
  @type file_sizes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_unreferenced_merge_commit_input() :: %{
        optional("authorName") => String.t() | atom(),
        optional("commitMessage") => String.t() | atom(),
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolution") => conflict_resolution(),
        optional("conflictResolutionStrategy") => list(any()),
        optional("email") => String.t() | atom(),
        optional("keepEmptyFolders") => boolean(),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("mergeOption") => list(any()),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type create_unreferenced_merge_commit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_pull_request_title_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type update_pull_request_title_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_source_reference_updated_event_metadata() :: %{
        "afterCommitId" => String.t() | atom(),
        "beforeCommitId" => String.t() | atom(),
        "mergeBase" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type pull_request_source_reference_updated_event_metadata() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_pull_request_input() :: %{
        required("pullRequestId") => String.t() | atom()
      }
      
  """
  @type get_pull_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_comment_output() :: %{
        "comment" => comment()
      }
      
  """
  @type get_comment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_template() :: %{
        "approvalRuleTemplateContent" => String.t() | atom(),
        "approvalRuleTemplateDescription" => String.t() | atom(),
        "approvalRuleTemplateId" => String.t() | atom(),
        "approvalRuleTemplateName" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "lastModifiedUser" => String.t() | atom(),
        "ruleContentSha256" => String.t() | atom()
      }
      
  """
  @type approval_rule_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      post_comment_reply_input() :: %{
        optional("clientRequestToken") => String.t() | atom(),
        required("content") => String.t() | atom(),
        required("inReplyTo") => String.t() | atom()
      }
      
  """
  @type post_comment_reply_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_associate_approval_rule_template_with_repositories_error() :: %{
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type batch_associate_approval_rule_template_with_repositories_error() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      conflict() :: %{
        "conflictMetadata" => conflict_metadata(),
        "mergeHunks" => list(merge_hunk())
      }
      
  """
  @type conflict() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_reaction_user_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_reaction_user_arn_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_mode_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_mode_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reaction_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reaction_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_merge_conflicts_input() :: %{
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolutionStrategy") => list(any()),
        optional("maxMergeHunks") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("filePath") => String.t() | atom(),
        required("mergeOption") => list(any()),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type describe_merge_conflicts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_approval_rule_template_input() :: %{
        required("approvalRuleTemplateName") => String.t() | atom()
      }
      
  """
  @type delete_approval_rule_template_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      override_already_set_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type override_already_set_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_file_entry() :: %{
        "fileContent" => binary(),
        "fileMode" => list(any()),
        "filePath" => String.t() | atom(),
        "sourceFile" => source_file_specifier()
      }
      
  """
  @type put_file_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_associate_approval_rule_template_with_repositories_input() :: %{
        required("approvalRuleTemplateName") => String.t() | atom(),
        required("repositoryNames") => list(String.t() | atom())
      }
      
  """
  @type batch_associate_approval_rule_template_with_repositories_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      invalid_commit_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_commit_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comment_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type comment_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      location() :: %{
        "filePath" => String.t() | atom(),
        "filePosition" => float(),
        "relativeFileVersion" => list(any())
      }
      
  """
  @type location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_trigger_destination_arn_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_trigger_destination_arn_required_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_pull_request_override_state_input() :: %{
        required("pullRequestId") => String.t() | atom(),
        required("revisionId") => String.t() | atom()
      }
      
  """
  @type get_pull_request_override_state_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_target_branch_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_target_branch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_description_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_description_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_commit_output() :: %{
        "commitId" => String.t() | atom(),
        "filesAdded" => list(file_metadata()),
        "filesDeleted" => list(file_metadata()),
        "filesUpdated" => list(file_metadata()),
        "treeId" => String.t() | atom()
      }
      
  """
  @type create_commit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_max_conflict_files_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_max_conflict_files_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      targets_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type targets_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_commit_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_commit_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_file_commit_history_request() :: %{
        optional("commitSpecifier") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("filePath") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type list_file_commit_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request() :: %{
        "approvalRules" => list(approval_rule()),
        "authorArn" => String.t() | atom(),
        "clientRequestToken" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastActivityDate" => non_neg_integer(),
        "pullRequestId" => String.t() | atom(),
        "pullRequestStatus" => list(any()),
        "pullRequestTargets" => list(pull_request_target()),
        "revisionId" => String.t() | atom(),
        "title" => String.t() | atom()
      }
      
  """
  @type pull_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      manual_merge_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type manual_merge_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_pull_request_by_squash_input() :: %{
        optional("authorName") => String.t() | atom(),
        optional("commitMessage") => String.t() | atom(),
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolution") => conflict_resolution(),
        optional("conflictResolutionStrategy") => list(any()),
        optional("email") => String.t() | atom(),
        optional("keepEmptyFolders") => boolean(),
        optional("sourceCommitId") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type merge_pull_request_by_squash_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_commits_output() :: %{
        "commits" => list(commit()),
        "errors" => list(batch_get_commits_error())
      }
      
  """
  @type batch_get_commits_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_file_input() :: %{
        optional("commitSpecifier") => String.t() | atom(),
        required("filePath") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_file_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_repository_triggers_input() :: %{
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_repository_triggers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_commit_input() :: %{
        optional("authorName") => String.t() | atom(),
        optional("commitMessage") => String.t() | atom(),
        optional("deleteFiles") => list(delete_file_entry()),
        optional("email") => String.t() | atom(),
        optional("keepEmptyFolders") => boolean(),
        optional("parentCommitId") => String.t() | atom(),
        optional("putFiles") => list(put_file_entry()),
        optional("setFileModes") => list(set_file_mode_entry()),
        required("branchName") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type create_commit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      multiple_repositories_in_pull_request_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type multiple_repositories_in_pull_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_pull_request_status_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type update_pull_request_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deletion_parameter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deletion_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      number_of_rule_templates_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type number_of_rule_templates_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_approval_rule_templates_output() :: %{
        "approvalRuleTemplateNames" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_approval_rule_templates_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_actor_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_actor_arn_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_conflict_resolution_entries_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_conflict_resolution_entries_exceeded_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      before_commit_id_and_after_commit_id_are_same_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type before_commit_id_and_after_commit_id_are_same_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      override_pull_request_approval_rules_input() :: %{
        required("overrideStatus") => list(any()),
        required("pullRequestId") => String.t() | atom(),
        required("revisionId") => String.t() | atom()
      }
      
  """
  @type override_pull_request_approval_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_pull_request_by_three_way_input() :: %{
        optional("authorName") => String.t() | atom(),
        optional("commitMessage") => String.t() | atom(),
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolution") => conflict_resolution(),
        optional("conflictResolutionStrategy") => list(any()),
        optional("email") => String.t() | atom(),
        optional("keepEmptyFolders") => boolean(),
        optional("sourceCommitId") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type merge_pull_request_by_three_way_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      folder_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type folder_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_pull_request_approval_rule_output() :: %{
        "approvalRuleId" => String.t() | atom()
      }
      
  """
  @type delete_pull_request_approval_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_repository_triggers_output() :: %{
        "configurationId" => String.t() | atom()
      }
      
  """
  @type put_repository_triggers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_key_invalid_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_key_invalid_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_arn_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_arn_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_trigger_region_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_trigger_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_pull_request_override_state_output() :: %{
        "overridden" => boolean(),
        "overrider" => String.t() | atom()
      }
      
  """
  @type get_pull_request_override_state_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_pull_request_approval_rule_content_output() :: %{
        "approvalRule" => approval_rule()
      }
      
  """
  @type update_pull_request_approval_rule_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sub_module() :: %{
        "absolutePath" => String.t() | atom(),
        "commitId" => String.t() | atom(),
        "relativePath" => String.t() | atom()
      }
      
  """
  @type sub_module() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_pull_request_description_input() :: %{
        required("description") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom()
      }
      
  """
  @type update_pull_request_description_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      title_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type title_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_merge_commit_output() :: %{
        "baseCommitId" => String.t() | atom(),
        "destinationCommitId" => String.t() | atom(),
        "mergedCommitId" => String.t() | atom(),
        "sourceCommitId" => String.t() | atom()
      }
      
  """
  @type get_merge_commit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_approval_state_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_approval_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit_message_length_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type commit_message_length_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_open_pull_requests_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_open_pull_requests_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_file_entry_conflict_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type put_file_entry_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_associated_approval_rule_templates_for_repository_output() :: %{
        "approvalRuleTemplateNames" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_associated_approval_rule_templates_for_repository_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      actor_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type actor_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_comment_content_output() :: %{
        "comment" => comment()
      }
      
  """
  @type delete_comment_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_not_associated_with_pull_request_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_not_associated_with_pull_request_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_repository_input() :: %{
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type delete_repository_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_already_closed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type pull_request_already_closed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_file_input() :: %{
        optional("commitMessage") => String.t() | atom(),
        optional("email") => String.t() | atom(),
        optional("fileMode") => list(any()),
        optional("name") => String.t() | atom(),
        optional("parentCommitId") => String.t() | atom(),
        required("branchName") => String.t() | atom(),
        required("fileContent") => binary(),
        required("filePath") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type put_file_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_title_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_title_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_key_disabled_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type encryption_key_disabled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      is_binary_file() :: %{
        "base" => boolean(),
        "destination" => boolean(),
        "source" => boolean()
      }
      
  """
  @type is_binary_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_branch_input() :: %{
        optional("branchName") => String.t() | atom(),
        optional("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_branch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_describe_merge_conflicts_input() :: %{
        optional("conflictDetailLevel") => list(any()),
        optional("conflictResolutionStrategy") => list(any()),
        optional("filePaths") => list(String.t() | atom()),
        optional("maxConflictFiles") => integer(),
        optional("maxMergeHunks") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("destinationCommitSpecifier") => String.t() | atom(),
        required("mergeOption") => list(any()),
        required("repositoryName") => String.t() | atom(),
        required("sourceCommitSpecifier") => String.t() | atom()
      }
      
  """
  @type batch_describe_merge_conflicts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_content_and_source_file_specified_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_content_and_source_file_specified_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_approval_rule_template_from_repositories_input() :: %{
        required("approvalRuleTemplateName") => String.t() | atom(),
        required("repositoryNames") => list(String.t() | atom())
      }
      
  """
  @type batch_disassociate_approval_rule_template_from_repositories_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      replacement_type_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replacement_type_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_keys_list_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_tag_keys_list_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_sort_by_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_sort_by_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_differences_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("afterPath") => String.t() | atom(),
        optional("beforeCommitSpecifier") => String.t() | atom(),
        optional("beforePath") => String.t() | atom(),
        required("afterCommitSpecifier") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_differences_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parent_commit_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type parent_commit_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_trigger() :: %{
        "branches" => list(String.t() | atom()),
        "customData" => String.t() | atom(),
        "destinationArn" => String.t() | atom(),
        "events" => list(list(any())()),
        "name" => String.t() | atom()
      }
      
  """
  @type repository_trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      branch_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type branch_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_repository_triggers_input() :: %{
        required("repositoryName") => String.t() | atom(),
        required("triggers") => list(repository_trigger())
      }
      
  """
  @type put_repository_triggers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_pull_request_events_output() :: %{
        "nextToken" => String.t() | atom(),
        "pullRequestEvents" => list(pull_request_event())
      }
      
  """
  @type describe_pull_request_events_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_content_size_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_content_size_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comments_for_compared_commit() :: %{
        "afterBlobId" => String.t() | atom(),
        "afterCommitId" => String.t() | atom(),
        "beforeBlobId" => String.t() | atom(),
        "beforeCommitId" => String.t() | atom(),
        "comments" => list(comment()),
        "location" => location(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type comments_for_compared_commit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      origin_approval_rule_template() :: %{
        "approvalRuleTemplateId" => String.t() | atom(),
        "approvalRuleTemplateName" => String.t() | atom()
      }
      
  """
  @type origin_approval_rule_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parent_commit_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type parent_commit_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_system_tag_usage_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_system_tag_usage_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_pull_request_events_input() :: %{
        optional("actorArn") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("pullRequestEventType") => list(any()),
        required("pullRequestId") => String.t() | atom()
      }
      
  """
  @type describe_pull_request_events_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      idempotency_parameter_mismatch_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type idempotency_parameter_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        optional("nextToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_path_conflicts_with_submodule_path_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_path_conflicts_with_submodule_path_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_commits_input() :: %{
        required("commitIds") => list(String.t() | atom()),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type batch_get_commits_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reaction_for_comment() :: %{
        "reaction" => reaction_value_formats(),
        "reactionUsers" => list(String.t() | atom()),
        "reactionsFromDeletedUsersCount" => integer()
      }
      
  """
  @type reaction_for_comment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_trigger_execution_failure() :: %{
        "failureMessage" => String.t() | atom(),
        "trigger" => String.t() | atom()
      }
      
  """
  @type repository_trigger_execution_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_repositories_output() :: %{
        "nextToken" => String.t() | atom(),
        "repositories" => list(repository_name_id_pair())
      }
      
  """
  @type list_repositories_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_pull_request_description_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type update_pull_request_description_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_input() :: %{
        optional("commitMessage") => String.t() | atom(),
        optional("email") => String.t() | atom(),
        optional("keepEmptyFolders") => boolean(),
        optional("name") => String.t() | atom(),
        required("branchName") => String.t() | atom(),
        required("filePath") => String.t() | atom(),
        required("parentCommitId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type delete_file_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_pull_request_approval_state_input() :: %{
        required("approvalState") => list(any()),
        required("pullRequestId") => String.t() | atom(),
        required("revisionId") => String.t() | atom()
      }
      
  """
  @type update_pull_request_approval_state_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_trigger_branch_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_trigger_branch_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_too_large_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type file_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_version() :: %{
        "blobId" => String.t() | atom(),
        "commit" => commit(),
        "path" => String.t() | atom(),
        "revisionChildren" => list(String.t() | atom())
      }
      
  """
  @type file_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blob_output() :: %{
        "content" => binary()
      }
      
  """
  @type get_blob_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_path_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_path_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_comments_for_pull_request_input() :: %{
        optional("afterCommitId") => String.t() | atom(),
        optional("beforeCommitId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("repositoryName") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom()
      }
      
  """
  @type get_comments_for_pull_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_pull_request_status_update_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_pull_request_status_update_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      folder() :: %{
        "absolutePath" => String.t() | atom(),
        "relativePath" => String.t() | atom(),
        "treeId" => String.t() | atom()
      }
      
  """
  @type folder() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_trigger_destination_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_trigger_destination_arn_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_comments_for_compared_commit_output() :: %{
        "commentsForComparedCommitData" => list(comments_for_compared_commit()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_comments_for_compared_commit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_resource_arn_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_approval_rule_template_input() :: %{
        required("approvalRuleTemplateName") => String.t() | atom()
      }
      
  """
  @type get_approval_rule_template_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_source_commit_specifier_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_source_commit_specifier_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_comment_reaction_input() :: %{
        required("commentId") => String.t() | atom(),
        required("reactionValue") => String.t() | atom()
      }
      
  """
  @type put_comment_reaction_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_comment_output() :: %{
        "comment" => comment()
      }
      
  """
  @type update_comment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_branches_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_branches_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_merge_option_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_merge_option_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_unreferenced_merge_commit_output() :: %{
        "commitId" => String.t() | atom(),
        "treeId" => String.t() | atom()
      }
      
  """
  @type create_unreferenced_merge_commit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cannot_delete_approval_rule_from_template_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type cannot_delete_approval_rule_from_template_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      override_status_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type override_status_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reference_type_not_supported_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reference_type_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_folder_input() :: %{
        optional("commitSpecifier") => String.t() | atom(),
        required("folderPath") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_folder_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_comment_input() :: %{
        required("commentId") => String.t() | atom()
      }
      
  """
  @type get_comment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_approval_rule_template_name_output() :: %{
        "approvalRuleTemplate" => approval_rule_template()
      }
      
  """
  @type update_approval_rule_template_name_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_conflict_resolution_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_conflict_resolution_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_approval_rule_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_approval_rule_templates_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_pull_request_status_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_pull_request_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_comments_for_pull_request_output() :: %{
        "commentsForPullRequestData" => list(comments_for_pull_request()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_comments_for_pull_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_reference_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_reference_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_approval_rule_template_from_repositories_error() :: %{
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type batch_disassociate_approval_rule_template_from_repositories_error() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      evaluation() :: %{
        "approvalRulesNotSatisfied" => list(String.t() | atom()),
        "approvalRulesSatisfied" => list(String.t() | atom()),
        "approved" => boolean(),
        "overridden" => boolean()
      }
      
  """
  @type evaluation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_pull_request_output() :: %{
        "pullRequest" => pull_request()
      }
      
  """
  @type create_pull_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comment_content_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type comment_content_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_file_output() :: %{
        "blobId" => String.t() | atom(),
        "commitId" => String.t() | atom(),
        "filePath" => String.t() | atom(),
        "treeId" => String.t() | atom()
      }
      
  """
  @type delete_file_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_comment_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_comment_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_branch_output() :: %{
        "branch" => branch_info()
      }
      
  """
  @type get_branch_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_keys_list_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tag_keys_list_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reference_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type reference_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      object_types() :: %{
        "base" => list(any()),
        "destination" => list(any()),
        "source" => list(any())
      }
      
  """
  @type object_types() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revision_not_current_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type revision_not_current_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_comment_input() :: %{
        required("commentId") => String.t() | atom(),
        required("content") => String.t() | atom()
      }
      
  """
  @type update_comment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type commit_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval() :: %{
        "approvalState" => list(any()),
        "userArn" => String.t() | atom()
      }
      
  """
  @type approval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      name_length_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type name_length_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_file_location_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_file_location_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_repository_input() :: %{
        optional("kmsKeyId") => String.t() | atom(),
        optional("repositoryDescription") => String.t() | atom(),
        optional("tags") => map(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type create_repository_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_trigger_events_list_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_trigger_events_list_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      post_comment_for_compared_commit_output() :: %{
        "afterBlobId" => String.t() | atom(),
        "afterCommitId" => String.t() | atom(),
        "beforeBlobId" => String.t() | atom(),
        "beforeCommitId" => String.t() | atom(),
        "comment" => comment(),
        "location" => location(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type post_comment_for_compared_commit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_disassociate_approval_rule_template_from_repositories_output() :: %{
        "disassociatedRepositoryNames" => list(String.t() | atom()),
        "errors" => list(batch_disassociate_approval_rule_template_from_repositories_error())
      }
      
  """
  @type batch_disassociate_approval_rule_template_from_repositories_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      pull_request_created_event_metadata() :: %{
        "destinationCommitId" => String.t() | atom(),
        "mergeBase" => String.t() | atom(),
        "repositoryName" => String.t() | atom(),
        "sourceCommitId" => String.t() | atom()
      }
      
  """
  @type pull_request_created_event_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_repositories_input() :: %{
        required("repositoryNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_repositories_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      branch_info() :: %{
        "branchName" => String.t() | atom(),
        "commitId" => String.t() | atom()
      }
      
  """
  @type branch_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_not_allowed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type operation_not_allowed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_branches_input() :: %{
        optional("nextToken") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type list_branches_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_approval_rule_template_name_input() :: %{
        required("newApprovalRuleTemplateName") => String.t() | atom(),
        required("oldApprovalRuleTemplateName") => String.t() | atom()
      }
      
  """
  @type update_approval_rule_template_name_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_conflict_detail_level_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_conflict_detail_level_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      restricted_source_file_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type restricted_source_file_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit_id_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type commit_id_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      number_of_rules_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type number_of_rules_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_overridden_event_metadata() :: %{
        "overrideStatus" => list(any()),
        "revisionId" => String.t() | atom()
      }
      
  """
  @type approval_rule_overridden_event_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_approval_rule_template_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_approval_rule_template_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_repositories_for_approval_rule_template_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("approvalRuleTemplateName") => String.t() | atom()
      }
      
  """
  @type list_repositories_for_approval_rule_template_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_repositories_output() :: %{
        "errors" => list(batch_get_repositories_error()),
        "repositories" => list(repository_metadata()),
        "repositoriesNotFound" => list(String.t() | atom())
      }
      
  """
  @type batch_get_repositories_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_pull_request_approval_states_input() :: %{
        required("pullRequestId") => String.t() | atom(),
        required("revisionId") => String.t() | atom()
      }
      
  """
  @type get_pull_request_approval_states_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_repository_name_input() :: %{
        required("newName") => String.t() | atom(),
        required("oldName") => String.t() | atom()
      }
      
  """
  @type update_repository_name_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      merge_operations() :: %{
        "destination" => list(any()),
        "source" => list(any())
      }
      
  """
  @type merge_operations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_pull_request_status_input() :: %{
        required("pullRequestId") => String.t() | atom(),
        required("pullRequestStatus") => list(any())
      }
      
  """
  @type update_pull_request_status_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comments_for_pull_request() :: %{
        "afterBlobId" => String.t() | atom(),
        "afterCommitId" => String.t() | atom(),
        "beforeBlobId" => String.t() | atom(),
        "beforeCommitId" => String.t() | atom(),
        "comments" => list(comment()),
        "location" => location(),
        "pullRequestId" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type comments_for_pull_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_approval_rule_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_approval_rule_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commit_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type commit_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      post_comment_for_compared_commit_input() :: %{
        optional("beforeCommitId") => String.t() | atom(),
        optional("clientRequestToken") => String.t() | atom(),
        optional("location") => location(),
        required("afterCommitId") => String.t() | atom(),
        required("content") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type post_comment_for_compared_commit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      branch_name_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type branch_name_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule_template_name_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type approval_rule_template_name_already_exists_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      update_pull_request_title_input() :: %{
        required("pullRequestId") => String.t() | atom(),
        required("title") => String.t() | atom()
      }
      
  """
  @type update_pull_request_title_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_file_output() :: %{
        "blobId" => String.t() | atom(),
        "commitId" => String.t() | atom(),
        "fileContent" => binary(),
        "fileMode" => list(any()),
        "filePath" => String.t() | atom(),
        "fileSize" => float()
      }
      
  """
  @type get_file_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_repository_triggers_output() :: %{
        "failedExecutions" => list(repository_trigger_execution_failure()),
        "successfulExecutions" => list(String.t() | atom())
      }
      
  """
  @type test_repository_triggers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_file_entries_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_file_entries_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_approval_rule_template_content_input() :: %{
        optional("existingRuleContentSha256") => String.t() | atom(),
        required("approvalRuleTemplateName") => String.t() | atom(),
        required("newRuleContent") => String.t() | atom()
      }
      
  """
  @type update_approval_rule_template_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_comments_for_compared_commit_input() :: %{
        optional("beforeCommitId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("afterCommitId") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type get_comments_for_compared_commit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      path_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type path_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_default_branch_input() :: %{
        required("defaultBranchName") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type update_default_branch_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      evaluate_pull_request_approval_rules_input() :: %{
        required("pullRequestId") => String.t() | atom(),
        required("revisionId") => String.t() | atom()
      }
      
  """
  @type evaluate_pull_request_approval_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_state_changed_event_metadata() :: %{
        "approvalStatus" => list(any()),
        "revisionId" => String.t() | atom()
      }
      
  """
  @type approval_state_changed_event_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_event() :: %{
        "actorArn" => String.t() | atom(),
        "approvalRuleEventMetadata" => approval_rule_event_metadata(),
        "approvalRuleOverriddenEventMetadata" => approval_rule_overridden_event_metadata(),
        "approvalStateChangedEventMetadata" => approval_state_changed_event_metadata(),
        "eventDate" => non_neg_integer(),
        "pullRequestCreatedEventMetadata" => pull_request_created_event_metadata(),
        "pullRequestEventType" => list(any()),
        "pullRequestId" => String.t() | atom(),
        "pullRequestMergedStateChangedEventMetadata" => pull_request_merged_state_changed_event_metadata(),
        "pullRequestSourceReferenceUpdatedEventMetadata" => pull_request_source_reference_updated_event_metadata(),
        "pullRequestStatusChangedEventMetadata" => pull_request_status_changed_event_metadata()
      }
      
  """
  @type pull_request_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pull_request_merged_state_changed_event_metadata() :: %{
        "destinationReference" => String.t() | atom(),
        "mergeMetadata" => merge_metadata(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type pull_request_merged_state_changed_event_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approval_rule() :: %{
        "approvalRuleContent" => String.t() | atom(),
        "approvalRuleId" => String.t() | atom(),
        "approvalRuleName" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "lastModifiedDate" => non_neg_integer(),
        "lastModifiedUser" => String.t() | atom(),
        "originApprovalRuleTemplate" => origin_approval_rule_template(),
        "ruleContentSha256" => String.t() | atom()
      }
      
  """
  @type approval_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_tags_map_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_tags_map_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      concurrent_reference_update_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type concurrent_reference_update_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_approval_rule_template_with_repository_input() :: %{
        required("approvalRuleTemplateName") => String.t() | atom(),
        required("repositoryName") => String.t() | atom()
      }
      
  """
  @type associate_approval_rule_template_with_repository_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      directory_name_conflicts_with_file_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type directory_name_conflicts_with_file_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_pull_request_approval_rule_output() :: %{
        "approvalRule" => approval_rule()
      }
      
  """
  @type create_pull_request_approval_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_file_mode_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_file_mode_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_description_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_description_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_info() :: %{
        "date" => String.t() | atom(),
        "email" => String.t() | atom(),
        "name" => String.t() | atom()
      }
      
  """
  @type user_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_pull_request_approval_rule_input() :: %{
        required("approvalRuleContent") => String.t() | atom(),
        required("approvalRuleName") => String.t() | atom(),
        required("pullRequestId") => String.t() | atom()
      }
      
  """
  @type create_pull_request_approval_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maximum_file_content_to_load_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type maximum_file_content_to_load_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_metadata() :: %{
        "Arn" => String.t() | atom(),
        "accountId" => String.t() | atom(),
        "cloneUrlHttp" => String.t() | atom(),
        "cloneUrlSsh" => String.t() | atom(),
        "creationDate" => non_neg_integer(),
        "defaultBranch" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "lastModifiedDate" => non_neg_integer(),
        "repositoryDescription" => String.t() | atom(),
        "repositoryId" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }
      
  """
  @type repository_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_repository_trigger_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_repository_trigger_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_metadata() :: %{
        "contentConflict" => boolean(),
        "fileModeConflict" => boolean(),
        "fileModes" => file_modes(),
        "filePath" => String.t() | atom(),
        "fileSizes" => file_sizes(),
        "isBinaryFile" => is_binary_file(),
        "mergeOperations" => merge_operations(),
        "numberOfConflicts" => integer(),
        "objectTypeConflict" => boolean(),
        "objectTypes" => object_types()
      }
      
  """
  @type conflict_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      no_change_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type no_change_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      repository_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type repository_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @type associate_approval_rule_template_with_repository_errors() ::
          repository_does_not_exist_exception()
          | invalid_approval_rule_template_name_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | approval_rule_template_does_not_exist_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | maximum_rule_templates_associated_with_repository_exception()
          | approval_rule_template_name_required_exception()

  @type batch_associate_approval_rule_template_with_repositories_errors() ::
          invalid_approval_rule_template_name_exception()
          | encryption_key_disabled_exception()
          | maximum_repository_names_exceeded_exception()
          | encryption_key_access_denied_exception()
          | approval_rule_template_does_not_exist_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | repository_names_required_exception()
          | approval_rule_template_name_required_exception()

  @type batch_describe_merge_conflicts_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | commit_does_not_exist_exception()
          | invalid_merge_option_exception()
          | encryption_key_disabled_exception()
          | invalid_max_conflict_files_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | maximum_items_to_compare_exceeded_exception()
          | merge_option_required_exception()
          | invalid_repository_name_exception()
          | invalid_conflict_resolution_strategy_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | invalid_max_merge_hunks_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | tips_divergence_exceeded_exception()

  @type batch_disassociate_approval_rule_template_from_repositories_errors() ::
          invalid_approval_rule_template_name_exception()
          | encryption_key_disabled_exception()
          | maximum_repository_names_exceeded_exception()
          | encryption_key_access_denied_exception()
          | approval_rule_template_does_not_exist_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | repository_names_required_exception()
          | approval_rule_template_name_required_exception()

  @type batch_get_commits_errors() ::
          repository_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | commit_ids_list_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | commit_ids_limit_exceeded_exception()

  @type batch_get_repositories_errors() ::
          encryption_key_disabled_exception()
          | maximum_repository_names_exceeded_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | repository_names_required_exception()

  @type create_approval_rule_template_errors() ::
          approval_rule_template_name_already_exists_exception()
          | invalid_approval_rule_template_name_exception()
          | number_of_rule_templates_exceeded_exception()
          | invalid_approval_rule_template_content_exception()
          | approval_rule_template_content_required_exception()
          | invalid_approval_rule_template_description_exception()
          | approval_rule_template_name_required_exception()

  @type create_branch_errors() ::
          repository_does_not_exist_exception()
          | branch_name_exists_exception()
          | commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | invalid_commit_id_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | commit_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | branch_name_required_exception()

  @type create_commit_errors() ::
          repository_does_not_exist_exception()
          | no_change_exception()
          | invalid_file_mode_exception()
          | directory_name_conflicts_with_file_name_exception()
          | path_required_exception()
          | maximum_file_entries_exceeded_exception()
          | restricted_source_file_exception()
          | name_length_exceeded_exception()
          | invalid_path_exception()
          | file_path_conflicts_with_submodule_path_exception()
          | parent_commit_id_required_exception()
          | file_content_size_limit_exceeded_exception()
          | branch_does_not_exist_exception()
          | parent_commit_does_not_exist_exception()
          | file_content_and_source_file_specified_exception()
          | encryption_key_disabled_exception()
          | put_file_entry_conflict_exception()
          | commit_message_length_exceeded_exception()
          | invalid_deletion_parameter_exception()
          | file_does_not_exist_exception()
          | file_mode_required_exception()
          | parent_commit_id_outdated_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | branch_name_is_tag_name_exception()
          | invalid_parent_commit_id_exception()
          | file_entry_required_exception()
          | invalid_repository_name_exception()
          | same_path_request_exception()
          | file_name_conflicts_with_directory_name_exception()
          | source_file_or_content_required_exception()
          | folder_content_size_limit_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | branch_name_required_exception()

  @type create_pull_request_errors() ::
          repository_does_not_exist_exception()
          | reference_does_not_exist_exception()
          | invalid_reference_name_exception()
          | reference_type_not_supported_exception()
          | idempotency_parameter_mismatch_exception()
          | encryption_key_disabled_exception()
          | invalid_title_exception()
          | maximum_open_pull_requests_exceeded_exception()
          | title_required_exception()
          | multiple_repositories_in_pull_request_exception()
          | targets_required_exception()
          | invalid_description_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | reference_name_required_exception()
          | target_required_exception()
          | invalid_repository_name_exception()
          | invalid_targets_exception()
          | invalid_client_request_token_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_target_exception()
          | client_request_token_required_exception()
          | source_and_destination_are_same_exception()

  @type create_pull_request_approval_rule_errors() ::
          invalid_approval_rule_name_exception()
          | number_of_rules_exceeded_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | pull_request_does_not_exist_exception()
          | invalid_approval_rule_content_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | approval_rule_content_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | approval_rule_name_already_exists_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | approval_rule_name_required_exception()

  @type create_repository_errors() ::
          invalid_repository_description_exception()
          | too_many_tags_exception()
          | invalid_tags_map_exception()
          | repository_limit_exceeded_exception()
          | operation_not_allowed_exception()
          | invalid_system_tag_usage_exception()
          | encryption_key_disabled_exception()
          | encryption_key_invalid_id_exception()
          | encryption_key_invalid_usage_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | tag_policy_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | repository_name_exists_exception()

  @type create_unreferenced_merge_commit_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | invalid_file_mode_exception()
          | concurrent_reference_update_exception()
          | path_required_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | name_length_exceeded_exception()
          | commit_does_not_exist_exception()
          | invalid_conflict_resolution_exception()
          | invalid_merge_option_exception()
          | invalid_path_exception()
          | file_content_size_limit_exceeded_exception()
          | replacement_type_required_exception()
          | encryption_key_disabled_exception()
          | commit_message_length_exceeded_exception()
          | maximum_conflict_resolution_entries_exceeded_exception()
          | manual_merge_required_exception()
          | invalid_commit_exception()
          | file_mode_required_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | invalid_replacement_content_exception()
          | encryption_key_access_denied_exception()
          | multiple_conflict_resolution_entries_exception()
          | maximum_items_to_compare_exceeded_exception()
          | merge_option_required_exception()
          | replacement_content_required_exception()
          | invalid_repository_name_exception()
          | invalid_replacement_type_exception()
          | invalid_conflict_resolution_strategy_exception()
          | folder_content_size_limit_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | tips_divergence_exceeded_exception()

  @type delete_approval_rule_template_errors() ::
          invalid_approval_rule_template_name_exception()
          | approval_rule_template_in_use_exception()
          | approval_rule_template_name_required_exception()

  @type delete_branch_errors() ::
          repository_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | default_branch_cannot_be_deleted_exception()
          | branch_name_required_exception()

  @type delete_comment_content_errors() ::
          invalid_comment_id_exception()
          | comment_does_not_exist_exception()
          | comment_id_required_exception()
          | comment_deleted_exception()

  @type delete_file_errors() ::
          repository_does_not_exist_exception()
          | path_required_exception()
          | name_length_exceeded_exception()
          | invalid_path_exception()
          | parent_commit_id_required_exception()
          | branch_does_not_exist_exception()
          | parent_commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | commit_message_length_exceeded_exception()
          | file_does_not_exist_exception()
          | parent_commit_id_outdated_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | branch_name_is_tag_name_exception()
          | invalid_parent_commit_id_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | branch_name_required_exception()

  @type delete_pull_request_approval_rule_errors() ::
          invalid_approval_rule_name_exception()
          | cannot_delete_approval_rule_from_template_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | pull_request_does_not_exist_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | approval_rule_name_required_exception()

  @type delete_repository_errors() ::
          encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type describe_merge_conflicts_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | path_required_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | commit_does_not_exist_exception()
          | invalid_merge_option_exception()
          | invalid_path_exception()
          | encryption_key_disabled_exception()
          | file_does_not_exist_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | maximum_items_to_compare_exceeded_exception()
          | merge_option_required_exception()
          | invalid_repository_name_exception()
          | invalid_conflict_resolution_strategy_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | invalid_max_merge_hunks_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | tips_divergence_exceeded_exception()

  @type describe_pull_request_events_errors() ::
          encryption_key_disabled_exception()
          | actor_does_not_exist_exception()
          | invalid_actor_arn_exception()
          | pull_request_does_not_exist_exception()
          | invalid_pull_request_event_type_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()

  @type disassociate_approval_rule_template_from_repository_errors() ::
          repository_does_not_exist_exception()
          | invalid_approval_rule_template_name_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | approval_rule_template_does_not_exist_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | approval_rule_template_name_required_exception()

  @type evaluate_pull_request_approval_rules_errors() ::
          revision_not_current_exception()
          | encryption_key_disabled_exception()
          | pull_request_does_not_exist_exception()
          | invalid_revision_id_exception()
          | revision_id_required_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type get_approval_rule_template_errors() ::
          invalid_approval_rule_template_name_exception()
          | approval_rule_template_does_not_exist_exception()
          | approval_rule_template_name_required_exception()

  @type get_blob_errors() ::
          repository_does_not_exist_exception()
          | file_too_large_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | invalid_blob_id_exception()
          | encryption_key_access_denied_exception()
          | blob_id_required_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | blob_id_does_not_exist_exception()

  @type get_branch_errors() ::
          repository_does_not_exist_exception()
          | branch_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | branch_name_required_exception()

  @type get_comment_errors() ::
          invalid_comment_id_exception()
          | encryption_key_disabled_exception()
          | comment_does_not_exist_exception()
          | encryption_key_access_denied_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | comment_id_required_exception()
          | comment_deleted_exception()

  @type get_comment_reactions_errors() ::
          invalid_comment_id_exception()
          | comment_does_not_exist_exception()
          | invalid_reaction_user_arn_exception()
          | comment_id_required_exception()
          | comment_deleted_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()

  @type get_comments_for_compared_commit_errors() ::
          repository_does_not_exist_exception()
          | commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | invalid_commit_id_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | commit_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()

  @type get_comments_for_pull_request_errors() ::
          repository_does_not_exist_exception()
          | commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_not_associated_with_pull_request_exception()
          | invalid_commit_id_exception()
          | repository_name_required_exception()
          | pull_request_does_not_exist_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | invalid_repository_name_exception()
          | commit_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()

  @type get_commit_errors() ::
          repository_does_not_exist_exception()
          | commit_id_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | invalid_commit_id_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | commit_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type get_differences_errors() ::
          repository_does_not_exist_exception()
          | commit_required_exception()
          | commit_does_not_exist_exception()
          | invalid_path_exception()
          | encryption_key_disabled_exception()
          | invalid_commit_id_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | path_does_not_exist_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()

  @type get_file_errors() ::
          repository_does_not_exist_exception()
          | path_required_exception()
          | commit_does_not_exist_exception()
          | invalid_path_exception()
          | file_too_large_exception()
          | encryption_key_disabled_exception()
          | file_does_not_exist_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type get_folder_errors() ::
          repository_does_not_exist_exception()
          | path_required_exception()
          | commit_does_not_exist_exception()
          | invalid_path_exception()
          | encryption_key_disabled_exception()
          | folder_does_not_exist_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type get_merge_commit_errors() ::
          repository_does_not_exist_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | invalid_conflict_resolution_strategy_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type get_merge_conflicts_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | commit_does_not_exist_exception()
          | invalid_merge_option_exception()
          | invalid_source_commit_specifier_exception()
          | encryption_key_disabled_exception()
          | invalid_max_conflict_files_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | maximum_items_to_compare_exceeded_exception()
          | merge_option_required_exception()
          | invalid_repository_name_exception()
          | invalid_conflict_resolution_strategy_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_destination_commit_specifier_exception()
          | invalid_continuation_token_exception()
          | tips_divergence_exceeded_exception()

  @type get_merge_options_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | maximum_items_to_compare_exceeded_exception()
          | invalid_repository_name_exception()
          | invalid_conflict_resolution_strategy_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | tips_divergence_exceeded_exception()

  @type get_pull_request_errors() ::
          encryption_key_disabled_exception()
          | pull_request_does_not_exist_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type get_pull_request_approval_states_errors() ::
          encryption_key_disabled_exception()
          | pull_request_does_not_exist_exception()
          | invalid_revision_id_exception()
          | revision_id_required_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type get_pull_request_override_state_errors() ::
          encryption_key_disabled_exception()
          | pull_request_does_not_exist_exception()
          | invalid_revision_id_exception()
          | revision_id_required_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type get_repository_errors() ::
          repository_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type get_repository_triggers_errors() ::
          repository_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type list_approval_rule_templates_errors() ::
          invalid_continuation_token_exception() | invalid_max_results_exception()

  @type list_associated_approval_rule_templates_for_repository_errors() ::
          repository_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()

  @type list_branches_errors() ::
          repository_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()

  @type list_file_commit_history_errors() ::
          repository_does_not_exist_exception()
          | commit_required_exception()
          | commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()
          | tips_divergence_exceeded_exception()

  @type list_pull_requests_errors() ::
          repository_does_not_exist_exception()
          | invalid_pull_request_status_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | author_does_not_exist_exception()
          | invalid_author_arn_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()

  @type list_repositories_errors() ::
          invalid_sort_by_exception()
          | invalid_continuation_token_exception()
          | invalid_order_exception()

  @type list_repositories_for_approval_rule_template_errors() ::
          invalid_approval_rule_template_name_exception()
          | encryption_key_disabled_exception()
          | encryption_key_access_denied_exception()
          | approval_rule_template_does_not_exist_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_continuation_token_exception()
          | invalid_max_results_exception()
          | approval_rule_template_name_required_exception()

  @type list_tags_for_resource_errors() ::
          repository_does_not_exist_exception()
          | invalid_resource_arn_exception()
          | resource_arn_required_exception()
          | invalid_repository_name_exception()

  @type merge_branches_by_fast_forward_errors() ::
          repository_does_not_exist_exception()
          | concurrent_reference_update_exception()
          | commit_required_exception()
          | commit_does_not_exist_exception()
          | branch_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | manual_merge_required_exception()
          | invalid_target_branch_exception()
          | invalid_commit_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | branch_name_is_tag_name_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | tips_divergence_exceeded_exception()
          | branch_name_required_exception()

  @type merge_branches_by_squash_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | invalid_file_mode_exception()
          | concurrent_reference_update_exception()
          | path_required_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | name_length_exceeded_exception()
          | commit_does_not_exist_exception()
          | invalid_conflict_resolution_exception()
          | invalid_path_exception()
          | file_content_size_limit_exceeded_exception()
          | branch_does_not_exist_exception()
          | replacement_type_required_exception()
          | encryption_key_disabled_exception()
          | commit_message_length_exceeded_exception()
          | maximum_conflict_resolution_entries_exceeded_exception()
          | manual_merge_required_exception()
          | invalid_target_branch_exception()
          | invalid_commit_exception()
          | file_mode_required_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | invalid_replacement_content_exception()
          | encryption_key_access_denied_exception()
          | multiple_conflict_resolution_entries_exception()
          | maximum_items_to_compare_exceeded_exception()
          | replacement_content_required_exception()
          | branch_name_is_tag_name_exception()
          | invalid_repository_name_exception()
          | invalid_replacement_type_exception()
          | invalid_conflict_resolution_strategy_exception()
          | folder_content_size_limit_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | tips_divergence_exceeded_exception()
          | branch_name_required_exception()

  @type merge_branches_by_three_way_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | invalid_file_mode_exception()
          | concurrent_reference_update_exception()
          | path_required_exception()
          | commit_required_exception()
          | invalid_conflict_detail_level_exception()
          | name_length_exceeded_exception()
          | commit_does_not_exist_exception()
          | invalid_conflict_resolution_exception()
          | invalid_path_exception()
          | file_content_size_limit_exceeded_exception()
          | branch_does_not_exist_exception()
          | replacement_type_required_exception()
          | encryption_key_disabled_exception()
          | commit_message_length_exceeded_exception()
          | maximum_conflict_resolution_entries_exceeded_exception()
          | manual_merge_required_exception()
          | invalid_target_branch_exception()
          | invalid_commit_exception()
          | file_mode_required_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | invalid_replacement_content_exception()
          | encryption_key_access_denied_exception()
          | multiple_conflict_resolution_entries_exception()
          | maximum_items_to_compare_exceeded_exception()
          | replacement_content_required_exception()
          | branch_name_is_tag_name_exception()
          | invalid_repository_name_exception()
          | invalid_replacement_type_exception()
          | invalid_conflict_resolution_strategy_exception()
          | folder_content_size_limit_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | tips_divergence_exceeded_exception()
          | branch_name_required_exception()

  @type merge_pull_request_by_fast_forward_errors() ::
          repository_does_not_exist_exception()
          | concurrent_reference_update_exception()
          | reference_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | repository_not_associated_with_pull_request_exception()
          | manual_merge_required_exception()
          | invalid_commit_id_exception()
          | repository_name_required_exception()
          | pull_request_does_not_exist_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | invalid_repository_name_exception()
          | tip_of_source_reference_is_different_exception()
          | pull_request_approval_rules_not_satisfied_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type merge_pull_request_by_squash_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | invalid_file_mode_exception()
          | concurrent_reference_update_exception()
          | path_required_exception()
          | invalid_conflict_detail_level_exception()
          | name_length_exceeded_exception()
          | invalid_conflict_resolution_exception()
          | invalid_path_exception()
          | file_content_size_limit_exceeded_exception()
          | replacement_type_required_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | repository_not_associated_with_pull_request_exception()
          | commit_message_length_exceeded_exception()
          | maximum_conflict_resolution_entries_exceeded_exception()
          | manual_merge_required_exception()
          | invalid_commit_id_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | pull_request_does_not_exist_exception()
          | invalid_replacement_content_exception()
          | encryption_key_access_denied_exception()
          | multiple_conflict_resolution_entries_exception()
          | maximum_items_to_compare_exceeded_exception()
          | pull_request_id_required_exception()
          | replacement_content_required_exception()
          | invalid_repository_name_exception()
          | invalid_replacement_type_exception()
          | tip_of_source_reference_is_different_exception()
          | invalid_conflict_resolution_strategy_exception()
          | folder_content_size_limit_exceeded_exception()
          | pull_request_approval_rules_not_satisfied_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | tips_divergence_exceeded_exception()

  @type merge_pull_request_by_three_way_errors() ::
          repository_does_not_exist_exception()
          | maximum_file_content_to_load_exceeded_exception()
          | invalid_file_mode_exception()
          | concurrent_reference_update_exception()
          | path_required_exception()
          | invalid_conflict_detail_level_exception()
          | name_length_exceeded_exception()
          | invalid_conflict_resolution_exception()
          | invalid_path_exception()
          | file_content_size_limit_exceeded_exception()
          | replacement_type_required_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | repository_not_associated_with_pull_request_exception()
          | commit_message_length_exceeded_exception()
          | maximum_conflict_resolution_entries_exceeded_exception()
          | manual_merge_required_exception()
          | invalid_commit_id_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | pull_request_does_not_exist_exception()
          | invalid_replacement_content_exception()
          | encryption_key_access_denied_exception()
          | multiple_conflict_resolution_entries_exception()
          | maximum_items_to_compare_exceeded_exception()
          | pull_request_id_required_exception()
          | replacement_content_required_exception()
          | invalid_repository_name_exception()
          | invalid_replacement_type_exception()
          | tip_of_source_reference_is_different_exception()
          | invalid_conflict_resolution_strategy_exception()
          | folder_content_size_limit_exceeded_exception()
          | pull_request_approval_rules_not_satisfied_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | tips_divergence_exceeded_exception()

  @type override_pull_request_approval_rules_errors() ::
          revision_not_current_exception()
          | override_status_required_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | override_already_set_exception()
          | pull_request_does_not_exist_exception()
          | invalid_revision_id_exception()
          | revision_id_required_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | invalid_override_status_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type post_comment_for_compared_commit_errors() ::
          repository_does_not_exist_exception()
          | path_required_exception()
          | invalid_file_location_exception()
          | commit_does_not_exist_exception()
          | comment_content_required_exception()
          | invalid_path_exception()
          | idempotency_parameter_mismatch_exception()
          | encryption_key_disabled_exception()
          | before_commit_id_and_after_commit_id_are_same_exception()
          | invalid_commit_id_exception()
          | invalid_relative_file_version_enum_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | comment_content_size_limit_exceeded_exception()
          | invalid_repository_name_exception()
          | commit_id_required_exception()
          | path_does_not_exist_exception()
          | invalid_client_request_token_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_file_position_exception()
          | client_request_token_required_exception()

  @type post_comment_for_pull_request_errors() ::
          repository_does_not_exist_exception()
          | path_required_exception()
          | invalid_file_location_exception()
          | commit_does_not_exist_exception()
          | comment_content_required_exception()
          | invalid_path_exception()
          | idempotency_parameter_mismatch_exception()
          | encryption_key_disabled_exception()
          | repository_not_associated_with_pull_request_exception()
          | before_commit_id_and_after_commit_id_are_same_exception()
          | invalid_commit_id_exception()
          | invalid_relative_file_version_enum_exception()
          | repository_name_required_exception()
          | pull_request_does_not_exist_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | comment_content_size_limit_exceeded_exception()
          | invalid_repository_name_exception()
          | commit_id_required_exception()
          | path_does_not_exist_exception()
          | invalid_client_request_token_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | invalid_file_position_exception()
          | client_request_token_required_exception()

  @type post_comment_reply_errors() ::
          invalid_comment_id_exception()
          | comment_content_required_exception()
          | idempotency_parameter_mismatch_exception()
          | comment_does_not_exist_exception()
          | comment_content_size_limit_exceeded_exception()
          | invalid_client_request_token_exception()
          | comment_id_required_exception()
          | client_request_token_required_exception()

  @type put_comment_reaction_errors() ::
          invalid_comment_id_exception()
          | comment_does_not_exist_exception()
          | reaction_limit_exceeded_exception()
          | reaction_value_required_exception()
          | invalid_reaction_value_exception()
          | comment_id_required_exception()
          | comment_deleted_exception()

  @type put_file_errors() ::
          repository_does_not_exist_exception()
          | invalid_file_mode_exception()
          | directory_name_conflicts_with_file_name_exception()
          | path_required_exception()
          | name_length_exceeded_exception()
          | invalid_path_exception()
          | file_path_conflicts_with_submodule_path_exception()
          | parent_commit_id_required_exception()
          | file_content_size_limit_exceeded_exception()
          | branch_does_not_exist_exception()
          | parent_commit_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | commit_message_length_exceeded_exception()
          | invalid_deletion_parameter_exception()
          | parent_commit_id_outdated_exception()
          | invalid_email_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | branch_name_is_tag_name_exception()
          | invalid_parent_commit_id_exception()
          | invalid_repository_name_exception()
          | same_file_content_exception()
          | file_name_conflicts_with_directory_name_exception()
          | folder_content_size_limit_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | file_content_required_exception()
          | branch_name_required_exception()

  @type put_repository_triggers_errors() ::
          repository_does_not_exist_exception()
          | invalid_repository_trigger_name_exception()
          | repository_trigger_events_list_required_exception()
          | maximum_branches_exceeded_exception()
          | invalid_repository_trigger_destination_arn_exception()
          | invalid_repository_trigger_branch_name_exception()
          | encryption_key_disabled_exception()
          | invalid_repository_trigger_region_exception()
          | repository_trigger_destination_arn_required_exception()
          | repository_name_required_exception()
          | repository_trigger_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_trigger_events_exception()
          | repository_trigger_branch_name_list_required_exception()
          | invalid_repository_name_exception()
          | repository_triggers_list_required_exception()
          | invalid_repository_trigger_custom_data_exception()
          | maximum_repository_triggers_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type tag_resource_errors() ::
          repository_does_not_exist_exception()
          | too_many_tags_exception()
          | invalid_tags_map_exception()
          | invalid_resource_arn_exception()
          | invalid_system_tag_usage_exception()
          | resource_arn_required_exception()
          | invalid_repository_name_exception()
          | tag_policy_exception()
          | tags_map_required_exception()

  @type test_repository_triggers_errors() ::
          repository_does_not_exist_exception()
          | invalid_repository_trigger_name_exception()
          | repository_trigger_events_list_required_exception()
          | maximum_branches_exceeded_exception()
          | invalid_repository_trigger_destination_arn_exception()
          | invalid_repository_trigger_branch_name_exception()
          | encryption_key_disabled_exception()
          | invalid_repository_trigger_region_exception()
          | repository_trigger_destination_arn_required_exception()
          | repository_name_required_exception()
          | repository_trigger_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_trigger_events_exception()
          | repository_trigger_branch_name_list_required_exception()
          | invalid_repository_name_exception()
          | repository_triggers_list_required_exception()
          | invalid_repository_trigger_custom_data_exception()
          | maximum_repository_triggers_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type untag_resource_errors() ::
          repository_does_not_exist_exception()
          | too_many_tags_exception()
          | tag_keys_list_required_exception()
          | invalid_resource_arn_exception()
          | invalid_system_tag_usage_exception()
          | invalid_tag_keys_list_exception()
          | resource_arn_required_exception()
          | invalid_repository_name_exception()
          | tag_policy_exception()

  @type update_approval_rule_template_content_errors() ::
          invalid_approval_rule_template_name_exception()
          | invalid_approval_rule_template_content_exception()
          | approval_rule_template_does_not_exist_exception()
          | approval_rule_template_content_required_exception()
          | invalid_rule_content_sha256_exception()
          | approval_rule_template_name_required_exception()

  @type update_approval_rule_template_description_errors() ::
          invalid_approval_rule_template_name_exception()
          | approval_rule_template_does_not_exist_exception()
          | invalid_approval_rule_template_description_exception()
          | approval_rule_template_name_required_exception()

  @type update_approval_rule_template_name_errors() ::
          approval_rule_template_name_already_exists_exception()
          | invalid_approval_rule_template_name_exception()
          | approval_rule_template_does_not_exist_exception()
          | approval_rule_template_name_required_exception()

  @type update_comment_errors() ::
          invalid_comment_id_exception()
          | comment_content_required_exception()
          | comment_does_not_exist_exception()
          | comment_not_created_by_caller_exception()
          | comment_content_size_limit_exceeded_exception()
          | comment_id_required_exception()
          | comment_deleted_exception()

  @type update_default_branch_errors() ::
          repository_does_not_exist_exception()
          | branch_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | invalid_branch_name_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | branch_name_required_exception()

  @type update_pull_request_approval_rule_content_errors() ::
          invalid_approval_rule_name_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | approval_rule_does_not_exist_exception()
          | pull_request_does_not_exist_exception()
          | invalid_approval_rule_content_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | approval_rule_content_required_exception()
          | cannot_modify_approval_rule_from_template_exception()
          | invalid_rule_content_sha256_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()
          | approval_rule_name_required_exception()

  @type update_pull_request_approval_state_errors() ::
          revision_not_current_exception()
          | encryption_key_disabled_exception()
          | pull_request_already_closed_exception()
          | invalid_approval_state_exception()
          | pull_request_does_not_exist_exception()
          | invalid_revision_id_exception()
          | revision_id_required_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | pull_request_cannot_be_approved_by_author_exception()
          | approval_state_required_exception()
          | maximum_number_of_approvals_exceeded_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type update_pull_request_description_errors() ::
          pull_request_already_closed_exception()
          | invalid_description_exception()
          | pull_request_does_not_exist_exception()
          | pull_request_id_required_exception()
          | invalid_pull_request_id_exception()

  @type update_pull_request_status_errors() ::
          invalid_pull_request_status_exception()
          | invalid_pull_request_status_update_exception()
          | encryption_key_disabled_exception()
          | pull_request_does_not_exist_exception()
          | pull_request_status_required_exception()
          | encryption_key_access_denied_exception()
          | pull_request_id_required_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()
          | invalid_pull_request_id_exception()

  @type update_pull_request_title_errors() ::
          invalid_title_exception()
          | pull_request_already_closed_exception()
          | title_required_exception()
          | pull_request_does_not_exist_exception()
          | pull_request_id_required_exception()
          | invalid_pull_request_id_exception()

  @type update_repository_description_errors() ::
          repository_does_not_exist_exception()
          | invalid_repository_description_exception()
          | encryption_key_disabled_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type update_repository_encryption_key_errors() ::
          repository_does_not_exist_exception()
          | encryption_key_disabled_exception()
          | encryption_key_invalid_id_exception()
          | encryption_key_invalid_usage_exception()
          | repository_name_required_exception()
          | encryption_key_access_denied_exception()
          | encryption_key_required_exception()
          | invalid_repository_name_exception()
          | encryption_key_unavailable_exception()
          | encryption_key_not_found_exception()
          | encryption_integrity_checks_failed_exception()

  @type update_repository_name_errors() ::
          repository_does_not_exist_exception()
          | repository_name_required_exception()
          | invalid_repository_name_exception()
          | repository_name_exists_exception()

  def metadata do
    %{
      api_version: "2015-04-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codecommit",
      global?: false,
      hostname: nil,
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
  destination
  reference (if specified) matches the destination reference (branch) for the pull
  request, an approval rule that matches the template conditions is automatically
  created
  for that pull request. If no destination references are specified in the
  template, an
  approval rule that matches the template contents is created for all pull
  requests in
  that repository.
  """
  @spec associate_approval_rule_template_with_repository(
          map(),
          associate_approval_rule_template_with_repository_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_approval_rule_template_with_repository_errors()}
  def associate_approval_rule_template_with_repository(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec batch_associate_approval_rule_template_with_repositories(
          map(),
          batch_associate_approval_rule_template_with_repositories_input(),
          list()
        ) ::
          {:ok, batch_associate_approval_rule_template_with_repositories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_approval_rule_template_with_repositories_errors()}
  def batch_associate_approval_rule_template_with_repositories(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

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
  @spec batch_describe_merge_conflicts(map(), batch_describe_merge_conflicts_input(), list()) ::
          {:ok, batch_describe_merge_conflicts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_describe_merge_conflicts_errors()}
  def batch_describe_merge_conflicts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchDescribeMergeConflicts", input, options)
  end

  @doc """
  Removes the association between an approval rule template and one or more
  specified repositories.
  """
  @spec batch_disassociate_approval_rule_template_from_repositories(
          map(),
          batch_disassociate_approval_rule_template_from_repositories_input(),
          list()
        ) ::
          {:ok, batch_disassociate_approval_rule_template_from_repositories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_approval_rule_template_from_repositories_errors()}
  def batch_disassociate_approval_rule_template_from_repositories(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

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
  @spec batch_get_commits(map(), batch_get_commits_input(), list()) ::
          {:ok, batch_get_commits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_commits_errors()}
  def batch_get_commits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetCommits", input, options)
  end

  @doc """
  Returns information about one or more repositories.

  The description field for a repository accepts all HTML characters and all valid
  Unicode characters. Applications that do not HTML-encode the description and
  display
  it in a webpage can expose users to potentially malicious code. Make sure that
  you
  HTML-encode the description field in any application that uses this API to
  display
  the repository description on a webpage.
  """
  @spec batch_get_repositories(map(), batch_get_repositories_input(), list()) ::
          {:ok, batch_get_repositories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_repositories_errors()}
  def batch_get_repositories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetRepositories", input, options)
  end

  @doc """
  Creates a template for approval rules that can then be associated with one or
  more
  repositories in your Amazon Web Services account.

  When you associate a template with a repository,
  CodeCommit creates an approval rule that matches the conditions of the template
  for all
  pull requests that meet the conditions of the template. For more information,
  see
  `AssociateApprovalRuleTemplateWithRepository`.
  """
  @spec create_approval_rule_template(map(), create_approval_rule_template_input(), list()) ::
          {:ok, create_approval_rule_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_approval_rule_template_errors()}
  def create_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApprovalRuleTemplate", input, options)
  end

  @doc """
  Creates a branch in a repository and points the branch to a commit.

  Calling the create branch operation does not set a repository's default branch.
  To do this, call the update default branch operation.
  """
  @spec create_branch(map(), create_branch_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_branch_errors()}
  def create_branch(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBranch", input, options)
  end

  @doc """
  Creates a commit for a repository on the tip of a specified branch.
  """
  @spec create_commit(map(), create_commit_input(), list()) ::
          {:ok, create_commit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_commit_errors()}
  def create_commit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCommit", input, options)
  end

  @doc """
  Creates a pull request in the specified repository.
  """
  @spec create_pull_request(map(), create_pull_request_input(), list()) ::
          {:ok, create_pull_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pull_request_errors()}
  def create_pull_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePullRequest", input, options)
  end

  @doc """
  Creates an approval rule for a pull request.
  """
  @spec create_pull_request_approval_rule(
          map(),
          create_pull_request_approval_rule_input(),
          list()
        ) ::
          {:ok, create_pull_request_approval_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pull_request_approval_rule_errors()}
  def create_pull_request_approval_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePullRequestApprovalRule", input, options)
  end

  @doc """
  Creates a new, empty repository.
  """
  @spec create_repository(map(), create_repository_input(), list()) ::
          {:ok, create_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_repository_errors()}
  def create_repository(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRepository", input, options)
  end

  @doc """
  Creates an unreferenced commit that represents the result of merging two
  branches
  using a specified merge strategy.

  This can help you determine the outcome of a potential
  merge. This API cannot be used with the fast-forward merge strategy because that
  strategy does not create a merge commit.

  This unreferenced merge commit
  can only be accessed using the GetCommit API or through git commands such as git
  fetch. To retrieve this commit, you must specify its commit ID or otherwise
  reference it.
  """
  @spec create_unreferenced_merge_commit(map(), create_unreferenced_merge_commit_input(), list()) ::
          {:ok, create_unreferenced_merge_commit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_unreferenced_merge_commit_errors()}
  def create_unreferenced_merge_commit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUnreferencedMergeCommit", input, options)
  end

  @doc """
  Deletes a specified approval rule template.

  Deleting a template does not remove approval rules on pull requests already
  created with the template.
  """
  @spec delete_approval_rule_template(map(), delete_approval_rule_template_input(), list()) ::
          {:ok, delete_approval_rule_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_approval_rule_template_errors()}
  def delete_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApprovalRuleTemplate", input, options)
  end

  @doc """
  Deletes a branch from a repository, unless that branch is the default branch for
  the repository.
  """
  @spec delete_branch(map(), delete_branch_input(), list()) ::
          {:ok, delete_branch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_branch_errors()}
  def delete_branch(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBranch", input, options)
  end

  @doc """
  Deletes the content of a comment made on a change, file, or commit in a
  repository.
  """
  @spec delete_comment_content(map(), delete_comment_content_input(), list()) ::
          {:ok, delete_comment_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_comment_content_errors()}
  def delete_comment_content(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCommentContent", input, options)
  end

  @doc """
  Deletes a specified file from a specified branch.

  A commit is created on the branch
  that contains the revision. The file still exists in the commits earlier to the
  commit
  that contains the deletion.
  """
  @spec delete_file(map(), delete_file_input(), list()) ::
          {:ok, delete_file_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_file_errors()}
  def delete_file(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFile", input, options)
  end

  @doc """
  Deletes an approval rule from a specified pull request.

  Approval rules can be deleted from a pull request only if the pull request is
  open, and if the
  approval rule was created specifically for a pull request and not generated from
  an approval rule template associated with the repository where the
  pull request was created. You cannot delete an approval rule from a merged or
  closed pull request.
  """
  @spec delete_pull_request_approval_rule(
          map(),
          delete_pull_request_approval_rule_input(),
          list()
        ) ::
          {:ok, delete_pull_request_approval_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pull_request_approval_rule_errors()}
  def delete_pull_request_approval_rule(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePullRequestApprovalRule", input, options)
  end

  @doc """
  Deletes a repository.

  If a specified repository was already deleted, a null repository
  ID is returned.

  Deleting a repository also deletes all associated objects and metadata. After a
  repository is
  deleted, all future push calls to the deleted repository fail.
  """
  @spec delete_repository(map(), delete_repository_input(), list()) ::
          {:ok, delete_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_repository_errors()}
  def delete_repository(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRepository", input, options)
  end

  @doc """
  Returns information about one or more merge conflicts in the attempted merge of
  two
  commit specifiers using the squash or three-way merge strategy.

  If the merge option for
  the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.
  """
  @spec describe_merge_conflicts(map(), describe_merge_conflicts_input(), list()) ::
          {:ok, describe_merge_conflicts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_merge_conflicts_errors()}
  def describe_merge_conflicts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeMergeConflicts", input, options)
  end

  @doc """
  Returns information about one or more pull request events.
  """
  @spec describe_pull_request_events(map(), describe_pull_request_events_input(), list()) ::
          {:ok, describe_pull_request_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_pull_request_events_errors()}
  def describe_pull_request_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribePullRequestEvents", input, options)
  end

  @doc """
  Removes the association between a template and a repository so that approval
  rules
  based on the template are not automatically created when pull requests are
  created in
  the specified repository.

  This does not delete any approval rules previously created for
  pull requests through the template association.
  """
  @spec disassociate_approval_rule_template_from_repository(
          map(),
          disassociate_approval_rule_template_from_repository_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_approval_rule_template_from_repository_errors()}
  def disassociate_approval_rule_template_from_repository(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

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
  @spec evaluate_pull_request_approval_rules(
          map(),
          evaluate_pull_request_approval_rules_input(),
          list()
        ) ::
          {:ok, evaluate_pull_request_approval_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, evaluate_pull_request_approval_rules_errors()}
  def evaluate_pull_request_approval_rules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EvaluatePullRequestApprovalRules", input, options)
  end

  @doc """
  Returns information about a specified approval rule template.
  """
  @spec get_approval_rule_template(map(), get_approval_rule_template_input(), list()) ::
          {:ok, get_approval_rule_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_approval_rule_template_errors()}
  def get_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApprovalRuleTemplate", input, options)
  end

  @doc """
  Returns the base-64 encoded content of an individual blob in a repository.
  """
  @spec get_blob(map(), get_blob_input(), list()) ::
          {:ok, get_blob_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_blob_errors()}
  def get_blob(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBlob", input, options)
  end

  @doc """
  Returns information about a repository branch, including its name and the last
  commit ID.
  """
  @spec get_branch(map(), get_branch_input(), list()) ::
          {:ok, get_branch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_branch_errors()}
  def get_branch(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBranch", input, options)
  end

  @doc """
  Returns the content of a comment made on a change, file, or commit in a
  repository.

  Reaction counts might include numbers from user identities who were deleted
  after the reaction was made. For a count of
  reactions from active identities, use GetCommentReactions.
  """
  @spec get_comment(map(), get_comment_input(), list()) ::
          {:ok, get_comment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_comment_errors()}
  def get_comment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetComment", input, options)
  end

  @doc """
  Returns information about reactions to a specified comment ID.

  Reactions from users who have been deleted will not be included in the count.
  """
  @spec get_comment_reactions(map(), get_comment_reactions_input(), list()) ::
          {:ok, get_comment_reactions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_comment_reactions_errors()}
  def get_comment_reactions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCommentReactions", input, options)
  end

  @doc """
  Returns information about comments made on the comparison between two commits.

  Reaction counts might include numbers from user identities who were deleted
  after the reaction was made. For a count of
  reactions from active identities, use GetCommentReactions.
  """
  @spec get_comments_for_compared_commit(map(), get_comments_for_compared_commit_input(), list()) ::
          {:ok, get_comments_for_compared_commit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_comments_for_compared_commit_errors()}
  def get_comments_for_compared_commit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCommentsForComparedCommit", input, options)
  end

  @doc """
  Returns comments made on a pull request.

  Reaction counts might include numbers from user identities who were deleted
  after the reaction was made. For a count of
  reactions from active identities, use GetCommentReactions.
  """
  @spec get_comments_for_pull_request(map(), get_comments_for_pull_request_input(), list()) ::
          {:ok, get_comments_for_pull_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_comments_for_pull_request_errors()}
  def get_comments_for_pull_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCommentsForPullRequest", input, options)
  end

  @doc """
  Returns information about a commit, including commit message and committer
  information.
  """
  @spec get_commit(map(), get_commit_input(), list()) ::
          {:ok, get_commit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_commit_errors()}
  def get_commit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCommit", input, options)
  end

  @doc """
  Returns information about the differences in a valid commit specifier (such as a
  branch, tag, HEAD, commit ID, or other fully qualified reference).

  Results can be
  limited to a specified path.
  """
  @spec get_differences(map(), get_differences_input(), list()) ::
          {:ok, get_differences_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_differences_errors()}
  def get_differences(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDifferences", input, options)
  end

  @doc """
  Returns the base-64 encoded contents of a specified file and its metadata.
  """
  @spec get_file(map(), get_file_input(), list()) ::
          {:ok, get_file_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_file_errors()}
  def get_file(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFile", input, options)
  end

  @doc """
  Returns the contents of a specified folder in a repository.
  """
  @spec get_folder(map(), get_folder_input(), list()) ::
          {:ok, get_folder_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_folder_errors()}
  def get_folder(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFolder", input, options)
  end

  @doc """
  Returns information about a specified merge commit.
  """
  @spec get_merge_commit(map(), get_merge_commit_input(), list()) ::
          {:ok, get_merge_commit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_merge_commit_errors()}
  def get_merge_commit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMergeCommit", input, options)
  end

  @doc """
  Returns information about merge conflicts between the before and after commit
  IDs for a pull request in a repository.
  """
  @spec get_merge_conflicts(map(), get_merge_conflicts_input(), list()) ::
          {:ok, get_merge_conflicts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_merge_conflicts_errors()}
  def get_merge_conflicts(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMergeConflicts", input, options)
  end

  @doc """
  Returns information about the merge options available for merging two specified
  branches.

  For details about why a merge option is not available, use GetMergeConflicts
  or DescribeMergeConflicts.
  """
  @spec get_merge_options(map(), get_merge_options_input(), list()) ::
          {:ok, get_merge_options_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_merge_options_errors()}
  def get_merge_options(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMergeOptions", input, options)
  end

  @doc """
  Gets information about a pull request in a specified repository.
  """
  @spec get_pull_request(map(), get_pull_request_input(), list()) ::
          {:ok, get_pull_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pull_request_errors()}
  def get_pull_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPullRequest", input, options)
  end

  @doc """
  Gets information about the approval states for a specified pull request.

  Approval states only apply to pull requests that have one or more
  approval rules applied to them.
  """
  @spec get_pull_request_approval_states(map(), get_pull_request_approval_states_input(), list()) ::
          {:ok, get_pull_request_approval_states_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pull_request_approval_states_errors()}
  def get_pull_request_approval_states(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPullRequestApprovalStates", input, options)
  end

  @doc """
  Returns information about whether approval rules have been set aside
  (overridden) for a
  pull request, and if so, the Amazon Resource Name (ARN) of the user or identity
  that overrode the rules and their requirements for the pull request.
  """
  @spec get_pull_request_override_state(map(), get_pull_request_override_state_input(), list()) ::
          {:ok, get_pull_request_override_state_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pull_request_override_state_errors()}
  def get_pull_request_override_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPullRequestOverrideState", input, options)
  end

  @doc """
  Returns information about a repository.

  The description field for a repository accepts all HTML characters and all valid
  Unicode characters. Applications that do not HTML-encode the description and
  display
  it in a webpage can expose users to potentially malicious code. Make sure that
  you
  HTML-encode the description field in any application that uses this API to
  display
  the repository description on a webpage.
  """
  @spec get_repository(map(), get_repository_input(), list()) ::
          {:ok, get_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_errors()}
  def get_repository(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRepository", input, options)
  end

  @doc """
  Gets information about triggers configured for a repository.
  """
  @spec get_repository_triggers(map(), get_repository_triggers_input(), list()) ::
          {:ok, get_repository_triggers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_triggers_errors()}
  def get_repository_triggers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRepositoryTriggers", input, options)
  end

  @doc """
  Lists all approval rule templates in the specified Amazon Web Services Region in
  your Amazon Web Services account.

  If
  an Amazon Web Services Region is not specified, the Amazon Web Services Region
  where you are signed in is used.
  """
  @spec list_approval_rule_templates(map(), list_approval_rule_templates_input(), list()) ::
          {:ok, list_approval_rule_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_approval_rule_templates_errors()}
  def list_approval_rule_templates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApprovalRuleTemplates", input, options)
  end

  @doc """
  Lists all approval rule templates that are associated with a specified
  repository.
  """
  @spec list_associated_approval_rule_templates_for_repository(
          map(),
          list_associated_approval_rule_templates_for_repository_input(),
          list()
        ) ::
          {:ok, list_associated_approval_rule_templates_for_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_approval_rule_templates_for_repository_errors()}
  def list_associated_approval_rule_templates_for_repository(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

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
  @spec list_branches(map(), list_branches_input(), list()) ::
          {:ok, list_branches_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_branches_errors()}
  def list_branches(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBranches", input, options)
  end

  @doc """
  Retrieves a list of commits and changes to a specified file.
  """
  @spec list_file_commit_history(map(), list_file_commit_history_request(), list()) ::
          {:ok, list_file_commit_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_file_commit_history_errors()}
  def list_file_commit_history(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFileCommitHistory", input, options)
  end

  @doc """
  Returns a list of pull requests for a specified repository.

  The return list can be refined by pull request
  status or pull request author ARN.
  """
  @spec list_pull_requests(map(), list_pull_requests_input(), list()) ::
          {:ok, list_pull_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pull_requests_errors()}
  def list_pull_requests(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPullRequests", input, options)
  end

  @doc """
  Gets information about one or more repositories.
  """
  @spec list_repositories(map(), list_repositories_input(), list()) ::
          {:ok, list_repositories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_repositories_errors()}
  def list_repositories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRepositories", input, options)
  end

  @doc """
  Lists all repositories associated with the specified approval rule template.
  """
  @spec list_repositories_for_approval_rule_template(
          map(),
          list_repositories_for_approval_rule_template_input(),
          list()
        ) ::
          {:ok, list_repositories_for_approval_rule_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_repositories_for_approval_rule_template_errors()}
  def list_repositories_for_approval_rule_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRepositoriesForApprovalRuleTemplate", input, options)
  end

  @doc """
  Gets information about Amazon Web Servicestags for a specified Amazon Resource
  Name (ARN) in CodeCommit.

  For a list of valid resources in CodeCommit, see [CodeCommit Resources and Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the* CodeCommit User
  Guide*.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Merges two branches using the fast-forward merge strategy.
  """
  @spec merge_branches_by_fast_forward(map(), merge_branches_by_fast_forward_input(), list()) ::
          {:ok, merge_branches_by_fast_forward_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_branches_by_fast_forward_errors()}
  def merge_branches_by_fast_forward(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergeBranchesByFastForward", input, options)
  end

  @doc """
  Merges two branches using the squash merge strategy.
  """
  @spec merge_branches_by_squash(map(), merge_branches_by_squash_input(), list()) ::
          {:ok, merge_branches_by_squash_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_branches_by_squash_errors()}
  def merge_branches_by_squash(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergeBranchesBySquash", input, options)
  end

  @doc """
  Merges two specified branches using the three-way merge strategy.
  """
  @spec merge_branches_by_three_way(map(), merge_branches_by_three_way_input(), list()) ::
          {:ok, merge_branches_by_three_way_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_branches_by_three_way_errors()}
  def merge_branches_by_three_way(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergeBranchesByThreeWay", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination
  branch for that pull request at the specified commit using the fast-forward
  merge strategy.

  If the merge is successful, it closes the pull request.
  """
  @spec merge_pull_request_by_fast_forward(
          map(),
          merge_pull_request_by_fast_forward_input(),
          list()
        ) ::
          {:ok, merge_pull_request_by_fast_forward_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_pull_request_by_fast_forward_errors()}
  def merge_pull_request_by_fast_forward(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergePullRequestByFastForward", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination
  branch for that pull request at the specified commit using the squash merge
  strategy.

  If the merge is successful, it closes the pull request.
  """
  @spec merge_pull_request_by_squash(map(), merge_pull_request_by_squash_input(), list()) ::
          {:ok, merge_pull_request_by_squash_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_pull_request_by_squash_errors()}
  def merge_pull_request_by_squash(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergePullRequestBySquash", input, options)
  end

  @doc """
  Attempts to merge the source commit of a pull request into the specified
  destination
  branch for that pull request at the specified commit using the three-way merge
  strategy.

  If the merge is successful, it closes the pull request.
  """
  @spec merge_pull_request_by_three_way(map(), merge_pull_request_by_three_way_input(), list()) ::
          {:ok, merge_pull_request_by_three_way_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_pull_request_by_three_way_errors()}
  def merge_pull_request_by_three_way(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "MergePullRequestByThreeWay", input, options)
  end

  @doc """
  Sets aside (overrides) all approval rule requirements for a specified pull
  request.
  """
  @spec override_pull_request_approval_rules(
          map(),
          override_pull_request_approval_rules_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, override_pull_request_approval_rules_errors()}
  def override_pull_request_approval_rules(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "OverridePullRequestApprovalRules", input, options)
  end

  @doc """
  Posts a comment on the comparison between two commits.
  """
  @spec post_comment_for_compared_commit(map(), post_comment_for_compared_commit_input(), list()) ::
          {:ok, post_comment_for_compared_commit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_comment_for_compared_commit_errors()}
  def post_comment_for_compared_commit(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PostCommentForComparedCommit", input, options)
  end

  @doc """
  Posts a comment on a pull request.
  """
  @spec post_comment_for_pull_request(map(), post_comment_for_pull_request_input(), list()) ::
          {:ok, post_comment_for_pull_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_comment_for_pull_request_errors()}
  def post_comment_for_pull_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PostCommentForPullRequest", input, options)
  end

  @doc """
  Posts a comment in reply to an existing comment on a comparison between commits
  or a pull request.
  """
  @spec post_comment_reply(map(), post_comment_reply_input(), list()) ::
          {:ok, post_comment_reply_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_comment_reply_errors()}
  def post_comment_reply(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PostCommentReply", input, options)
  end

  @doc """
  Adds or updates a reaction to a specified comment for the user whose identity is
  used to make the request.

  You can only add or
  update a reaction for yourself. You cannot add, modify, or delete a reaction for
  another user.
  """
  @spec put_comment_reaction(map(), put_comment_reaction_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_comment_reaction_errors()}
  def put_comment_reaction(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutCommentReaction", input, options)
  end

  @doc """
  Adds or updates a file in a branch in an CodeCommit repository, and generates a
  commit for the addition in the specified branch.
  """
  @spec put_file(map(), put_file_input(), list()) ::
          {:ok, put_file_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_file_errors()}
  def put_file(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutFile", input, options)
  end

  @doc """
  Replaces all triggers for a repository.

  Used to create or delete triggers.
  """
  @spec put_repository_triggers(map(), put_repository_triggers_input(), list()) ::
          {:ok, put_repository_triggers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_repository_triggers_errors()}
  def put_repository_triggers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRepositoryTriggers", input, options)
  end

  @doc """
  Adds or updates tags for a resource in CodeCommit.

  For a list of valid resources
  in CodeCommit, see [CodeCommit Resources and Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the *CodeCommit User
  Guide*.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Tests the functionality of repository triggers by sending information to the
  trigger
  target.

  If real data is available in the repository, the test sends data from the last
  commit. If no data is available, sample data is generated.
  """
  @spec test_repository_triggers(map(), test_repository_triggers_input(), list()) ::
          {:ok, test_repository_triggers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_repository_triggers_errors()}
  def test_repository_triggers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestRepositoryTriggers", input, options)
  end

  @doc """
  Removes tags for a resource in CodeCommit.

  For a list of valid resources in CodeCommit, see [CodeCommit Resources and Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats)
  in the *CodeCommit User
  Guide*.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the content of an approval rule template.

  You can change the number of
  required approvals, the membership of the approval rule, and whether an approval
  pool is
  defined.
  """
  @spec update_approval_rule_template_content(
          map(),
          update_approval_rule_template_content_input(),
          list()
        ) ::
          {:ok, update_approval_rule_template_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_approval_rule_template_content_errors()}
  def update_approval_rule_template_content(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApprovalRuleTemplateContent", input, options)
  end

  @doc """
  Updates the description for a specified approval rule template.
  """
  @spec update_approval_rule_template_description(
          map(),
          update_approval_rule_template_description_input(),
          list()
        ) ::
          {:ok, update_approval_rule_template_description_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_approval_rule_template_description_errors()}
  def update_approval_rule_template_description(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApprovalRuleTemplateDescription", input, options)
  end

  @doc """
  Updates the name of a specified approval rule template.
  """
  @spec update_approval_rule_template_name(
          map(),
          update_approval_rule_template_name_input(),
          list()
        ) ::
          {:ok, update_approval_rule_template_name_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_approval_rule_template_name_errors()}
  def update_approval_rule_template_name(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApprovalRuleTemplateName", input, options)
  end

  @doc """
  Replaces the contents of a comment.
  """
  @spec update_comment(map(), update_comment_input(), list()) ::
          {:ok, update_comment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_comment_errors()}
  def update_comment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateComment", input, options)
  end

  @doc """
  Sets or changes the default branch name for the specified repository.

  If you use this operation to change the default branch name to the current
  default branch name, a success message is returned even though the default
  branch did not change.
  """
  @spec update_default_branch(map(), update_default_branch_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_default_branch_errors()}
  def update_default_branch(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDefaultBranch", input, options)
  end

  @doc """
  Updates the structure of an approval rule created specifically for a pull
  request.

  For example, you can change the number of required approvers and
  the approval pool for approvers.
  """
  @spec update_pull_request_approval_rule_content(
          map(),
          update_pull_request_approval_rule_content_input(),
          list()
        ) ::
          {:ok, update_pull_request_approval_rule_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pull_request_approval_rule_content_errors()}
  def update_pull_request_approval_rule_content(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePullRequestApprovalRuleContent", input, options)
  end

  @doc """
  Updates the state of a user's approval on a pull request.

  The user is derived from the signed-in account when the request is made.
  """
  @spec update_pull_request_approval_state(
          map(),
          update_pull_request_approval_state_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pull_request_approval_state_errors()}
  def update_pull_request_approval_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePullRequestApprovalState", input, options)
  end

  @doc """
  Replaces the contents of the description of a pull request.
  """
  @spec update_pull_request_description(map(), update_pull_request_description_input(), list()) ::
          {:ok, update_pull_request_description_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pull_request_description_errors()}
  def update_pull_request_description(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePullRequestDescription", input, options)
  end

  @doc """
  Updates the status of a pull request.
  """
  @spec update_pull_request_status(map(), update_pull_request_status_input(), list()) ::
          {:ok, update_pull_request_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pull_request_status_errors()}
  def update_pull_request_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePullRequestStatus", input, options)
  end

  @doc """
  Replaces the title of a pull request.
  """
  @spec update_pull_request_title(map(), update_pull_request_title_input(), list()) ::
          {:ok, update_pull_request_title_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pull_request_title_errors()}
  def update_pull_request_title(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePullRequestTitle", input, options)
  end

  @doc """
  Sets or changes the comment or description for a repository.

  The description field for a repository accepts all HTML characters and all valid
  Unicode characters. Applications that do not HTML-encode the description and
  display
  it in a webpage can expose users to potentially malicious code. Make sure that
  you
  HTML-encode the description field in any application that uses this API to
  display
  the repository description on a webpage.
  """
  @spec update_repository_description(map(), update_repository_description_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_repository_description_errors()}
  def update_repository_description(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRepositoryDescription", input, options)
  end

  @doc """
  Updates the Key Management Service encryption key used to encrypt and decrypt a
  CodeCommit repository.
  """
  @spec update_repository_encryption_key(map(), update_repository_encryption_key_input(), list()) ::
          {:ok, update_repository_encryption_key_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_repository_encryption_key_errors()}
  def update_repository_encryption_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRepositoryEncryptionKey", input, options)
  end

  @doc """
  Renames a repository.

  The repository name must be unique across the calling Amazon Web Services
  account.
  Repository names are limited to 100 alphanumeric, dash, and underscore
  characters, and cannot include certain characters. The suffix .git is
  prohibited. For
  more information about the limits on repository names, see
  [Quotas](https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html) in
  the CodeCommit
  User Guide.
  """
  @spec update_repository_name(map(), update_repository_name_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_repository_name_errors()}
  def update_repository_name(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRepositoryName", input, options)
  end
end
