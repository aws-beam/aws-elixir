# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MPA do
  @moduledoc """
  Multi-party approval is a capability of
  [Organizations](http://aws.amazon.com/organizations) that allows you to protect a predefined list of operations through a distributed approval process.

  Use Multi-party approval to establish approval workflows and transform security
  processes into team-based decisions.

  **When to use Multi-party approval**:

    * You need to align with the Zero Trust principle of "never trust,
  always verify"

    * You need to make sure that the right humans have access to the
  right things in the right way

    * You need distributed decision-making for sensitive or critical
  operations

    * You need to protect against unintended operations on sensitive or
  critical resources

    * You need formal reviews and approvals for auditing or compliance
  reasons

  For more information, see [What is Multi-party
  approval](https://docs.aws.amazon.com/mpa/latest/userguide/what-is.html) in the
  *Multi-party approval User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      policy_version_summary() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "IsDefault" => [boolean()],
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "PolicyArn" => String.t() | Atom.t(),
        "PolicyType" => list(any()),
        "Status" => list(any()),
        "VersionId" => integer()
      }

  """
  @type policy_version_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_policy_versions_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "PolicyVersions" => list(policy_version_summary())
      }

  """
  @type list_policy_versions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_policy_version_response() :: %{
        "PolicyVersion" => policy_version()
      }

  """
  @type get_policy_version_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_session_response_approver_response() :: %{
        "ApproverId" => String.t() | Atom.t(),
        "IdentityId" => String.t() | Atom.t(),
        "IdentitySourceArn" => String.t() | Atom.t(),
        "Response" => list(any()),
        "ResponseTime" => non_neg_integer()
      }

  """
  @type get_session_response_approver_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_active_approval_team_deletion_response() :: %{
        "DeletionCompletionTime" => non_neg_integer(),
        "DeletionStartTime" => non_neg_integer()
      }

  """
  @type start_active_approval_team_deletion_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_session_response() :: %{
        "ActionCompletionStrategy" => list(any()),
        "ActionName" => String.t() | Atom.t(),
        "ApprovalStrategy" => list(),
        "ApprovalTeamArn" => String.t() | Atom.t(),
        "ApprovalTeamName" => String.t() | Atom.t(),
        "ApproverResponses" => list(get_session_response_approver_response()),
        "CompletionTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "ExecutionStatus" => list(any()),
        "ExpirationTime" => non_neg_integer(),
        "InitiationTime" => non_neg_integer(),
        "Metadata" => map(),
        "NumberOfApprovers" => [integer()],
        "ProtectedResourceArn" => String.t() | Atom.t(),
        "RequesterAccountId" => String.t() | Atom.t(),
        "RequesterComment" => String.t() | Atom.t(),
        "RequesterPrincipalArn" => String.t() | Atom.t(),
        "RequesterRegion" => String.t() | Atom.t(),
        "RequesterServicePrincipal" => String.t() | Atom.t(),
        "SessionArn" => String.t() | Atom.t(),
        "Status" => list(any()),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type get_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_policy_version_request() :: %{}

  """
  @type get_policy_version_request() :: %{}

  @typedoc """

  ## Example:

      list_policies_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Policies" => list(policy())
      }

  """
  @type list_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_identity_source_response() :: %{
        "CreationTime" => non_neg_integer(),
        "IdentitySourceArn" => String.t() | Atom.t(),
        "IdentitySourceParameters" => list(),
        "IdentitySourceType" => list(any()),
        "Status" => list(any()),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type get_identity_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_approval_team_response() :: %{
        "ApprovalStrategy" => list(),
        "Approvers" => list(get_approval_team_response_approver()),
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "LastUpdateTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "NumberOfApprovers" => [integer()],
        "PendingUpdate" => pending_update(),
        "Policies" => list(policy_reference()),
        "Status" => list(any()),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t(),
        "UpdateSessionArn" => String.t() | Atom.t(),
        "VersionId" => String.t() | Atom.t()
      }

  """
  @type get_approval_team_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_approval_team_response() :: %{
        "VersionId" => String.t() | Atom.t()
      }

  """
  @type update_approval_team_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "PolicyDocument" => String.t() | Atom.t(),
        "PolicyName" => String.t() | Atom.t(),
        "PolicyType" => list(any()),
        "PolicyVersionArn" => String.t() | Atom.t(),
        "ResourceArn" => String.t() | Atom.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_inactive_approval_team_version_request() :: %{}

  """
  @type delete_inactive_approval_team_version_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cancel_session_response() :: %{}

  """
  @type cancel_session_response() :: %{}

  @typedoc """

  ## Example:

      get_session_request() :: %{}

  """
  @type get_session_request() :: %{}

  @typedoc """

  ## Example:

      iam_identity_center() :: %{
        "InstanceArn" => String.t() | Atom.t(),
        "Region" => String.t() | Atom.t()
      }

  """
  @type iam_identity_center() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cancel_session_request() :: %{}

  """
  @type cancel_session_request() :: %{}

  @typedoc """

  ## Example:

      create_identity_source_response() :: %{
        "CreationTime" => non_neg_integer(),
        "IdentitySourceArn" => String.t() | Atom.t(),
        "IdentitySourceType" => list(any())
      }

  """
  @type create_identity_source_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      policy_version() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "Document" => String.t() | Atom.t(),
        "IsDefault" => [boolean()],
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "PolicyArn" => String.t() | Atom.t(),
        "PolicyType" => list(any()),
        "Status" => list(any()),
        "VersionId" => integer()
      }

  """
  @type policy_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_identity_source_request() :: %{}

  """
  @type get_identity_source_request() :: %{}

  @typedoc """

  ## Example:

      identity_source_for_list() :: %{
        "CreationTime" => non_neg_integer(),
        "IdentitySourceArn" => String.t() | Atom.t(),
        "IdentitySourceParameters" => list(),
        "IdentitySourceType" => list(any()),
        "Status" => list(any()),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type identity_source_for_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Sessions" => list(list_sessions_response_session())
      }

  """
  @type list_sessions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      policy_reference() :: %{
        "PolicyArn" => String.t() | Atom.t()
      }

  """
  @type policy_reference() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_identity_sources_response() :: %{
        "IdentitySources" => list(identity_source_for_list()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_identity_sources_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_approval_team_response_approver() :: %{
        "ApproverId" => String.t() | Atom.t(),
        "PrimaryIdentityId" => String.t() | Atom.t(),
        "PrimaryIdentitySourceArn" => String.t() | Atom.t(),
        "PrimaryIdentityStatus" => list(any()),
        "ResponseTime" => non_neg_integer()
      }

  """
  @type get_approval_team_response_approver() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      approval_team_request_approver() :: %{
        "PrimaryIdentityId" => String.t() | Atom.t(),
        "PrimaryIdentitySourceArn" => String.t() | Atom.t()
      }

  """
  @type approval_team_request_approver() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_resource_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_request() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_sessions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{
        required("PolicyName") => String.t() | Atom.t(),
        required("PolicyType") => list(any()),
        required("ResourceArn") => String.t() | Atom.t()
      }

  """
  @type get_resource_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "FieldName" => list(any()),
        "Operator" => list(any()),
        "Value" => String.t() | Atom.t()
      }

  """
  @type filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_active_approval_team_deletion_request() :: %{
        optional("PendingWindowDays") => [integer()]
      }

  """
  @type start_active_approval_team_deletion_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_policy_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_policy_versions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_approval_teams_response() :: %{
        "ApprovalTeams" => list(list_approval_teams_response_approval_team()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_approval_teams_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      iam_identity_center_for_list() :: %{
        "ApprovalPortalUrl" => String.t() | Atom.t(),
        "InstanceArn" => String.t() | Atom.t(),
        "Region" => String.t() | Atom.t()
      }

  """
  @type iam_identity_center_for_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_approval_team_request() :: %{}

  """
  @type get_approval_team_request() :: %{}

  @typedoc """

  ## Example:

      list_approval_teams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_approval_teams_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_policies_response_resource_policy() :: %{
        "PolicyArn" => String.t() | Atom.t(),
        "PolicyName" => String.t() | Atom.t(),
        "PolicyType" => list(any())
      }

  """
  @type list_resource_policies_response_resource_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      policy() :: %{
        "Arn" => String.t() | Atom.t(),
        "DefaultVersion" => integer(),
        "Name" => String.t() | Atom.t(),
        "PolicyType" => list(any())
      }

  """
  @type policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type invalid_parameter_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_approval_team_response() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "VersionId" => String.t() | Atom.t()
      }

  """
  @type create_approval_team_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_approval_team_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Tags") => map(),
        required("ApprovalStrategy") => list(),
        required("Approvers") => list(approval_team_request_approver()),
        required("Description") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("Policies") => list(policy_reference())
      }

  """
  @type create_approval_team_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      iam_identity_center_for_get() :: %{
        "ApprovalPortalUrl" => String.t() | Atom.t(),
        "InstanceArn" => String.t() | Atom.t(),
        "Region" => String.t() | Atom.t()
      }

  """
  @type iam_identity_center_for_get() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_policies_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ResourcePolicies" => list(list_resource_policies_response_resource_policy())
      }

  """
  @type list_resource_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_inactive_approval_team_version_response() :: %{}

  """
  @type delete_inactive_approval_team_version_response() :: %{}

  @typedoc """

  ## Example:

      list_identity_sources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_identity_sources_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_identity_source_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Tags") => map(),
        required("IdentitySourceParameters") => identity_source_parameters()
      }

  """
  @type create_identity_source_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_approval_teams_response_approval_team() :: %{
        "ApprovalStrategy" => list(),
        "Arn" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "NumberOfApprovers" => [integer()],
        "Status" => list(any()),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type list_approval_teams_response_approval_team() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_sessions_response_session() :: %{
        "ActionCompletionStrategy" => list(any()),
        "ActionName" => String.t() | Atom.t(),
        "ApprovalTeamArn" => String.t() | Atom.t(),
        "ApprovalTeamName" => String.t() | Atom.t(),
        "CompletionTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "ExpirationTime" => non_neg_integer(),
        "InitiationTime" => non_neg_integer(),
        "ProtectedResourceArn" => String.t() | Atom.t(),
        "RequesterAccountId" => String.t() | Atom.t(),
        "RequesterPrincipalArn" => String.t() | Atom.t(),
        "RequesterRegion" => String.t() | Atom.t(),
        "RequesterServicePrincipal" => String.t() | Atom.t(),
        "SessionArn" => String.t() | Atom.t(),
        "Status" => list(any()),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }

  """
  @type list_sessions_response_session() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      identity_source_parameters() :: %{
        "IamIdentityCenter" => iam_identity_center()
      }

  """
  @type identity_source_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_identity_source_request() :: %{}

  """
  @type delete_identity_source_request() :: %{}

  @typedoc """

  ## Example:

      pending_update() :: %{
        "ApprovalStrategy" => list(),
        "Approvers" => list(get_approval_team_response_approver()),
        "Description" => String.t() | Atom.t(),
        "NumberOfApprovers" => [integer()],
        "Status" => list(any()),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t() | Atom.t(),
        "UpdateInitiationTime" => non_neg_integer(),
        "VersionId" => String.t() | Atom.t()
      }

  """
  @type pending_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_approval_team_request() :: %{
        optional("ApprovalStrategy") => list(),
        optional("Approvers") => list(approval_team_request_approver()),
        optional("Description") => String.t() | Atom.t()
      }

  """
  @type update_approval_team_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      mof_n_approval_strategy() :: %{
        "MinApprovalsRequired" => [integer()]
      }

  """
  @type mof_n_approval_strategy() :: %{String.t() | Atom.t() => any()}

  @type cancel_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_approval_team_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_identity_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type delete_identity_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_inactive_approval_team_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_approval_team_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_identity_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_policy_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_approval_teams_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_identity_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_policy_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_resource_policies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_sessions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_active_approval_team_deletion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_approval_team_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mpa",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MPA",
      signature_version: "v4",
      signing_name: "mpa",
      target_prefix: nil
    }
  end

  @doc """
  Cancels an approval session.

  For more information, see
  [Session](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in
  the *Multi-party approval User Guide*.
  """
  @spec cancel_session(map(), String.t() | Atom.t(), cancel_session_request(), list()) ::
          {:ok, cancel_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_session_errors()}
  def cancel_session(%Client{} = client, session_arn, input, options \\ []) do
    url_path = "/sessions/#{AWS.Util.encode_uri(session_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new approval team.

  For more information, see [Approval team](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in the
  *Multi-party approval User Guide*.
  """
  @spec create_approval_team(map(), create_approval_team_request(), list()) ::
          {:ok, create_approval_team_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_approval_team_errors()}
  def create_approval_team(%Client{} = client, input, options \\ []) do
    url_path = "/approval-teams"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new identity source.

  For more information, see [Identity Source](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in
  the *Multi-party approval User Guide*.
  """
  @spec create_identity_source(map(), create_identity_source_request(), list()) ::
          {:ok, create_identity_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_identity_source_errors()}
  def create_identity_source(%Client{} = client, input, options \\ []) do
    url_path = "/identity-sources"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an identity source.

  For more information, see [Identity Source](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in
  the *Multi-party approval User Guide*.
  """
  @spec delete_identity_source(
          map(),
          String.t() | Atom.t(),
          delete_identity_source_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_identity_source_errors()}
  def delete_identity_source(%Client{} = client, identity_source_arn, input, options \\ []) do
    url_path = "/identity-sources/#{AWS.Util.encode_uri(identity_source_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an inactive approval team.

  For more information, see [Team health](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html) in the
  *Multi-party approval User Guide*.

  You can also use this operation to delete a team draft. For more information,
  see [Interacting with drafts](https://docs.aws.amazon.com/mpa/latest/userguide/update-team.html#update-team-draft-status)
  in the *Multi-party approval User Guide*.
  """
  @spec delete_inactive_approval_team_version(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_inactive_approval_team_version_request(),
          list()
        ) ::
          {:ok, delete_inactive_approval_team_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_inactive_approval_team_version_errors()}
  def delete_inactive_approval_team_version(
        %Client{} = client,
        arn,
        version_id,
        input,
        options \\ []
      ) do
    url_path = "/approval-teams/#{AWS.Util.encode_uri(arn)}/#{AWS.Util.encode_uri(version_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns details for an approval team.
  """
  @spec get_approval_team(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_approval_team_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_approval_team_errors()}
  def get_approval_team(%Client{} = client, arn, options \\ []) do
    url_path = "/approval-teams/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details for an identity source.

  For more information, see [Identity Source](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in
  the *Multi-party approval User Guide*.
  """
  @spec get_identity_source(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_identity_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_identity_source_errors()}
  def get_identity_source(%Client{} = client, identity_source_arn, options \\ []) do
    url_path = "/identity-sources/#{AWS.Util.encode_uri(identity_source_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details for the version of a policy.

  Policies define the permissions for team resources.

  The protected operation for a service integration might require specific
  permissions. For more information, see [How other services work with Multi-party approval](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html)
  in the *Multi-party approval User Guide*.
  """
  @spec get_policy_version(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_version_errors()}
  def get_policy_version(%Client{} = client, policy_version_arn, options \\ []) do
    url_path = "/policy-versions/#{AWS.Util.encode_uri(policy_version_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a policy for a resource.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/GetResourcePolicy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns details for an approval session.

  For more information, see
  [Session](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in
  the *Multi-party approval User Guide*.
  """
  @spec get_session(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, session_arn, options \\ []) do
    url_path = "/sessions/#{AWS.Util.encode_uri(session_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of approval teams.
  """
  @spec list_approval_teams(map(), list_approval_teams_request(), list()) ::
          {:ok, list_approval_teams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_approval_teams_errors()}
  def list_approval_teams(%Client{} = client, input, options \\ []) do
    url_path = "/approval-teams/?List"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of identity sources.

  For more information, see [Identity Source](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in
  the *Multi-party approval User Guide*.
  """
  @spec list_identity_sources(map(), list_identity_sources_request(), list()) ::
          {:ok, list_identity_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_identity_sources_errors()}
  def list_identity_sources(%Client{} = client, input, options \\ []) do
    url_path = "/identity-sources/?List"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of policies.

  Policies define the permissions for team resources.

  The protected operation for a service integration might require specific
  permissions. For more information, see [How other services work with Multi-party approval](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html)
  in the *Multi-party approval User Guide*.
  """
  @spec list_policies(map(), list_policies_request(), list()) ::
          {:ok, list_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policies_errors()}
  def list_policies(%Client{} = client, input, options \\ []) do
    url_path = "/policies/?List"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the versions for policies.

  Policies define the permissions for team resources.

  The protected operation for a service integration might require specific
  permissions. For more information, see [How other services work with Multi-party approval](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html)
  in the *Multi-party approval User Guide*.
  """
  @spec list_policy_versions(map(), String.t() | Atom.t(), list_policy_versions_request(), list()) ::
          {:ok, list_policy_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_versions_errors()}
  def list_policy_versions(%Client{} = client, policy_arn, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_arn)}/?List"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of policies for a resource.
  """
  @spec list_resource_policies(
          map(),
          String.t() | Atom.t(),
          list_resource_policies_request(),
          list()
        ) ::
          {:ok, list_resource_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_policies_errors()}
  def list_resource_policies(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resource-policies/#{AWS.Util.encode_uri(resource_arn)}/?List"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of approval sessions.

  For more information, see
  [Session](https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html) in
  the *Multi-party approval User Guide*.
  """
  @spec list_sessions(map(), String.t() | Atom.t(), list_sessions_request(), list()) ::
          {:ok, list_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_errors()}
  def list_sessions(%Client{} = client, approval_team_arn, input, options \\ []) do
    url_path = "/approval-teams/#{AWS.Util.encode_uri(approval_team_arn)}/sessions/?List"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the deletion process for an active approval team.

  ## Deletions require team approval

  Requests to delete an active team must be approved by the team.
  """
  @spec start_active_approval_team_deletion(
          map(),
          String.t() | Atom.t(),
          start_active_approval_team_deletion_request(),
          list()
        ) ::
          {:ok, start_active_approval_team_deletion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_active_approval_team_deletion_errors()}
  def start_active_approval_team_deletion(%Client{} = client, arn, input, options \\ []) do
    url_path = "/approval-teams/#{AWS.Util.encode_uri(arn)}?Delete"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates or updates a resource tag.

  Each tag is a label consisting of a user-defined key and value. Tags can help
  you manage, identify, organize, search for, and filter resources.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a resource tag.

  Each tag is a label consisting of a user-defined key and value. Tags can help
  you manage, identify, organize, search for, and filter resources.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an approval team.

  You can request to update the team description, approval threshold, and
  approvers in the team.

  ## Updates require team approval

  Updates to an active team must be approved by the team.
  """
  @spec update_approval_team(map(), String.t() | Atom.t(), update_approval_team_request(), list()) ::
          {:ok, update_approval_team_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_approval_team_errors()}
  def update_approval_team(%Client{} = client, arn, input, options \\ []) do
    url_path = "/approval-teams/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
