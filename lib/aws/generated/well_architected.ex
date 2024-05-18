# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WellArchitected do
  @moduledoc """
  Well-Architected Tool

  This is the *Well-Architected Tool API Reference*.

  The WA Tool API provides programmatic access to the
  [Well-Architected Tool](http://aws.amazon.com/well-architected-tool) in the [Amazon Web Services Management
  Console](https://console.aws.amazon.com/wellarchitected). For information
  about the Well-Architected Tool, see the
  [Well-Architected Tool User Guide](https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      import_lens_input() :: %{
        optional("LensAlias") => String.t(),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("JSONString") => String.t()
      }

  """
  @type import_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile() :: %{
        "CreatedAt" => non_neg_integer(),
        "Owner" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileDescription" => String.t(),
        "ProfileName" => String.t(),
        "ProfileQuestions" => list(profile_question()()),
        "ProfileVersion" => String.t(),
        "ShareInvitationId" => String.t(),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_answer_input() :: %{
        optional("ChoiceUpdates") => map(),
        optional("IsApplicable") => boolean(),
        optional("Notes") => String.t(),
        optional("Reason") => list(any()),
        optional("SelectedChoices") => list(String.t()())
      }

  """
  @type update_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_question() :: %{
        "MaxSelectedChoices" => integer(),
        "MinSelectedChoices" => integer(),
        "QuestionChoices" => list(profile_choice()()),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "SelectedChoiceIds" => list(String.t()())
      }

  """
  @type profile_question() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      choice_answer_summary() :: %{
        "ChoiceId" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any())
      }

  """
  @type choice_answer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lenses_output() :: %{
        "LensSummaries" => list(lens_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_lenses_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_output() :: %{
        "Profile" => profile()
      }

  """
  @type get_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      question_metric() :: %{
        "BestPractices" => list(best_practice()()),
        "QuestionId" => String.t(),
        "Risk" => list(any())
      }

  """
  @type question_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workload_share_output() :: %{
        "WorkloadId" => String.t(),
        "WorkloadShare" => workload_share()
      }

  """
  @type update_workload_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lens_review() :: %{
        "JiraConfiguration" => jira_selected_question_configuration(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensVersion" => String.t(),
        "NextToken" => String.t(),
        "Notes" => String.t(),
        "PillarReviewSummaries" => list(pillar_review_summary()()),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type lens_review() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_output() :: %{
        "Workload" => workload()
      }

  """
  @type get_workload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_review_template_input() :: %{}

  """
  @type get_review_template_input() :: %{}

  @typedoc """

  ## Example:

      workload_share_summary() :: %{
        "PermissionType" => list(any()),
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type workload_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_summary() :: %{
        "ImprovementStatus" => list(any()),
        "Lenses" => list(String.t()()),
        "Owner" => String.t(),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer(),
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }

  """
  @type workload_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lens_review_improvements_output() :: %{
        "ImprovementSummaries" => list(improvement_summary()()),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "MilestoneNumber" => integer(),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type list_lens_review_improvements_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      best_practice() :: %{
        "ChoiceId" => String.t(),
        "ChoiceTitle" => String.t()
      }

  """
  @type best_practice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_jira_configuration_output() :: %{
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t(),
        "StatusMessage" => String.t()
      }

  """
  @type workload_jira_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_jira_configuration_output() :: %{
        "IntegrationStatus" => list(any()),
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t(),
        "StatusMessage" => String.t(),
        "Subdomain" => String.t()
      }

  """
  @type account_jira_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_review_output() :: %{
        "LensReview" => lens_review(),
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }

  """
  @type get_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workloads_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("WorkloadNamePrefix") => String.t()
      }

  """
  @type list_workloads_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      jira_selected_question_configuration() :: %{
        "SelectedPillars" => list(selected_pillar()())
      }

  """
  @type jira_selected_question_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_check_details_output() :: %{
        "CheckDetails" => list(check_detail()()),
        "NextToken" => String.t()
      }

  """
  @type list_check_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_profiles_input() :: %{
        required("ProfileArns") => list(String.t()())
      }

  """
  @type associate_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      check_detail() :: %{
        "AccountId" => String.t(),
        "ChoiceId" => String.t(),
        "Description" => String.t(),
        "FlaggedResources" => integer(),
        "Id" => String.t(),
        "LensArn" => String.t(),
        "Name" => String.t(),
        "PillarId" => String.t(),
        "Provider" => list(any()),
        "QuestionId" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type check_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_consolidated_report_input() :: %{
        optional("IncludeSharedResources") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Format") => list(any())
      }

  """
  @type get_consolidated_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_output() :: %{
        "ProfileArn" => String.t(),
        "ProfileVersion" => String.t()
      }

  """
  @type create_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      review_template_pillar_review_summary() :: %{
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "PillarName" => String.t(),
        "QuestionCounts" => map()
      }

  """
  @type review_template_pillar_review_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_share_summary() :: %{
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type template_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_lens_version_output() :: %{
        "LensArn" => String.t(),
        "LensVersion" => String.t()
      }

  """
  @type create_lens_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      share_invitation_summary() :: %{
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "PermissionType" => list(any()),
        "ProfileArn" => String.t(),
        "ProfileName" => String.t(),
        "ShareInvitationId" => String.t(),
        "ShareResourceType" => list(any()),
        "SharedBy" => String.t(),
        "SharedWith" => String.t(),
        "TemplateArn" => String.t(),
        "TemplateName" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }

  """
  @type share_invitation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_share_invitation_output() :: %{
        "ShareInvitation" => share_invitation()
      }

  """
  @type update_share_invitation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_share_summary() :: %{
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type profile_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_review_template_output() :: %{
        "TemplateArn" => String.t()
      }

  """
  @type create_review_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lens_shares_output() :: %{
        "LensShareSummaries" => list(lens_share_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_lens_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_integration_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("IntegratingService") => list(any())
      }

  """
  @type update_integration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_check_details_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChoiceId") => String.t(),
        required("LensArn") => String.t(),
        required("PillarId") => String.t(),
        required("QuestionId") => String.t()
      }

  """
  @type list_check_details_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lens_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_lens_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_lens_review_output() :: %{
        "LensReview" => lens_review(),
        "WorkloadId" => String.t()
      }

  """
  @type update_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_milestones_output() :: %{
        "MilestoneSummaries" => list(milestone_summary()()),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type list_milestones_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_answer_input() :: %{
        optional("MilestoneNumber") => integer()
      }

  """
  @type get_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_lens_version_input() :: %{
        optional("IsMajorVersion") => boolean(),
        required("ClientRequestToken") => String.t(),
        required("LensVersion") => String.t()
      }

  """
  @type create_lens_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notifications_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceArn") => String.t(),
        optional("WorkloadId") => String.t()
      }

  """
  @type list_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_milestone_output() :: %{
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }

  """
  @type create_milestone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_lens_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("LensStatus") => list(any())
      }

  """
  @type delete_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_question_update() :: %{
        "QuestionId" => String.t(),
        "SelectedChoiceIds" => list(String.t()())
      }

  """
  @type profile_question_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_lens_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }

  """
  @type delete_lens_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_shares_output() :: %{
        "NextToken" => String.t(),
        "ProfileShareSummaries" => list(profile_share_summary()())
      }

  """
  @type list_profile_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      share_invitation() :: %{
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "ProfileArn" => String.t(),
        "ShareInvitationId" => String.t(),
        "ShareResourceType" => list(any()),
        "TemplateArn" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type share_invitation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_input() :: %{
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("ProfileDescription") => String.t(),
        required("ProfileName") => String.t(),
        required("ProfileQuestions") => list(profile_question_update()())
      }

  """
  @type create_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profiles_output() :: %{
        "NextToken" => String.t(),
        "ProfileSummaries" => list(profile_summary()())
      }

  """
  @type list_profiles_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_milestones_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_milestones_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_lens_review_input() :: %{
        optional("JiraConfiguration") => jira_selected_question_configuration(),
        optional("LensNotes") => String.t(),
        optional("PillarNotes") => map()
      }

  """
  @type update_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_lenses_input() :: %{
        required("LensAliases") => list(String.t()())
      }

  """
  @type associate_lenses_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_review_template_output() :: %{
        "ReviewTemplate" => review_template()
      }

  """
  @type update_review_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_input() :: %{}

  """
  @type get_workload_input() :: %{}

  @typedoc """

  ## Example:

      lens_review_summary() :: %{
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensVersion" => String.t(),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type lens_review_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_shares_output() :: %{
        "NextToken" => String.t(),
        "TemplateArn" => String.t(),
        "TemplateShareSummaries" => list(template_share_summary()())
      }

  """
  @type list_template_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_input() :: %{
        required("ClientRequestToken") => String.t()
      }

  """
  @type delete_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_review_template_input() :: %{
        optional("Description") => String.t(),
        optional("LensesToAssociate") => list(String.t()()),
        optional("LensesToDisassociate") => list(String.t()()),
        optional("Notes") => String.t(),
        optional("TemplateName") => String.t()
      }

  """
  @type update_review_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workload_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_workload_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_lens_output() :: %{
        "LensArn" => String.t(),
        "Status" => list(any())
      }

  """
  @type import_lens_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_milestone_output() :: %{
        "Milestone" => milestone(),
        "WorkloadId" => String.t()
      }

  """
  @type get_milestone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lens_share_summary() :: %{
        "ShareId" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => String.t()
      }

  """
  @type lens_share_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      consolidated_report_metric() :: %{
        "Lenses" => list(lens_metric()()),
        "LensesAppliedCount" => integer(),
        "MetricType" => list(any()),
        "RiskCounts" => map(),
        "UpdatedAt" => non_neg_integer(),
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }

  """
  @type consolidated_report_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_choice() :: %{
        "ChoiceDescription" => String.t(),
        "ChoiceId" => String.t(),
        "ChoiceTitle" => String.t()
      }

  """
  @type profile_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_discovery_config() :: %{
        "TrustedAdvisorIntegrationStatus" => list(any()),
        "WorkloadResourceDefinition" => list(list(any())())
      }

  """
  @type workload_discovery_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_lens_review_input() :: %{
        optional("ClientRequestToken") => String.t(),
        required("MilestoneName") => String.t()
      }

  """
  @type upgrade_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_review_template_input() :: %{
        optional("Notes") => String.t(),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("Description") => String.t(),
        required("Lenses") => list(String.t()()),
        required("TemplateName") => String.t()
      }

  """
  @type create_review_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_jira_configuration_input() :: %{
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t()
      }

  """
  @type workload_jira_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workload_share_input() :: %{
        required("PermissionType") => list(any())
      }

  """
  @type update_workload_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_profiles_input() :: %{
        required("ProfileArns") => list(String.t()())
      }

  """
  @type disassociate_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_template_choice() :: %{
        "ChoiceDescription" => String.t(),
        "ChoiceId" => String.t(),
        "ChoiceTitle" => String.t()
      }

  """
  @type profile_template_choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_review_template_answers_output() :: %{
        "AnswerSummaries" => list(review_template_answer_summary()()),
        "LensAlias" => String.t(),
        "NextToken" => String.t(),
        "TemplateArn" => String.t()
      }

  """
  @type list_review_template_answers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload() :: %{
        "AccountIds" => list(String.t()()),
        "Applications" => list(String.t()()),
        "ArchitecturalDesign" => String.t(),
        "AwsRegions" => list(String.t()()),
        "Description" => String.t(),
        "DiscoveryConfig" => workload_discovery_config(),
        "Environment" => list(any()),
        "ImprovementStatus" => list(any()),
        "Industry" => String.t(),
        "IndustryType" => String.t(),
        "IsReviewOwnerUpdateAcknowledged" => boolean(),
        "JiraConfiguration" => workload_jira_configuration_output(),
        "Lenses" => list(String.t()()),
        "NonAwsRegions" => list(String.t()()),
        "Notes" => String.t(),
        "Owner" => String.t(),
        "PillarPriorities" => list(String.t()()),
        "PrioritizedRiskCounts" => map(),
        "Profiles" => list(workload_profile()()),
        "ReviewOwner" => String.t(),
        "ReviewRestrictionDate" => non_neg_integer(),
        "RiskCounts" => map(),
        "ShareInvitationId" => String.t(),
        "Tags" => map(),
        "UpdatedAt" => non_neg_integer(),
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }

  """
  @type workload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_answer_output() :: %{
        "Answer" => answer(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }

  """
  @type get_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      review_template_summary() :: %{
        "Description" => String.t(),
        "Lenses" => list(String.t()()),
        "Owner" => String.t(),
        "TemplateArn" => String.t(),
        "TemplateName" => String.t(),
        "UpdateStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type review_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      answer() :: %{
        "ChoiceAnswers" => list(choice_answer()()),
        "Choices" => list(choice()()),
        "HelpfulResourceDisplayText" => String.t(),
        "HelpfulResourceUrl" => String.t(),
        "ImprovementPlanUrl" => String.t(),
        "IsApplicable" => boolean(),
        "JiraConfiguration" => jira_configuration(),
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "Reason" => list(any()),
        "Risk" => list(any()),
        "SelectedChoices" => list(String.t()())
      }

  """
  @type answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      review_template_answer_summary() :: %{
        "AnswerStatus" => list(any()),
        "ChoiceAnswerSummaries" => list(choice_answer_summary()()),
        "Choices" => list(choice()()),
        "IsApplicable" => boolean(),
        "PillarId" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "QuestionType" => list(any()),
        "Reason" => list(any()),
        "SelectedChoices" => list(String.t()())
      }

  """
  @type review_template_answer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workload_share_output() :: %{
        "ShareId" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type create_workload_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_review_template_lens_review_input() :: %{
        optional("LensNotes") => String.t(),
        optional("PillarNotes") => map()
      }

  """
  @type update_review_template_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workload_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }

  """
  @type delete_workload_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_review_template_lens_review_output() :: %{
        "LensReview" => review_template_lens_review(),
        "TemplateArn" => String.t()
      }

  """
  @type get_review_template_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lens_review_report() :: %{
        "Base64String" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t()
      }

  """
  @type lens_review_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_template_output() :: %{
        "ProfileTemplate" => profile_template()
      }

  """
  @type get_profile_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_review_templates_output() :: %{
        "NextToken" => String.t(),
        "ReviewTemplates" => list(review_template_summary()())
      }

  """
  @type list_review_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lens_upgrade_summary() :: %{
        "CurrentLensVersion" => String.t(),
        "LatestLensVersion" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "ResourceArn" => String.t(),
        "ResourceName" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }

  """
  @type lens_upgrade_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      milestone() :: %{
        "MilestoneName" => String.t(),
        "MilestoneNumber" => integer(),
        "RecordedAt" => non_neg_integer(),
        "Workload" => workload()
      }

  """
  @type milestone() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_review_report_input() :: %{
        optional("MilestoneNumber") => integer()
      }

  """
  @type get_lens_review_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_lens_input() :: %{
        optional("LensVersion") => String.t()
      }

  """
  @type export_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_template_input() :: %{}

  """
  @type get_profile_template_input() :: %{}

  @typedoc """

  ## Example:

      review_template_lens_review() :: %{
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensVersion" => String.t(),
        "NextToken" => String.t(),
        "Notes" => String.t(),
        "PillarReviewSummaries" => list(review_template_pillar_review_summary()()),
        "QuestionCounts" => map(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type review_template_lens_review() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_milestone_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("MilestoneName") => String.t()
      }

  """
  @type create_milestone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_review_template_input() :: %{
        required("ClientRequestToken") => String.t()
      }

  """
  @type delete_review_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => String.t(),
        "Name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("SharedWith") => String.t()
      }

  """
  @type create_template_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_share_output() :: %{
        "ShareId" => String.t(),
        "TemplateArn" => String.t()
      }

  """
  @type create_template_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      review_template() :: %{
        "Description" => String.t(),
        "Lenses" => list(String.t()()),
        "Notes" => String.t(),
        "Owner" => String.t(),
        "QuestionCounts" => map(),
        "ShareInvitationId" => String.t(),
        "Tags" => map(),
        "TemplateArn" => String.t(),
        "TemplateName" => String.t(),
        "UpdateStatus" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type review_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workload_shares_output() :: %{
        "NextToken" => String.t(),
        "WorkloadId" => String.t(),
        "WorkloadShareSummaries" => list(workload_share_summary()())
      }

  """
  @type list_workload_shares_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_review_report_output() :: %{
        "LensReviewReport" => lens_review_report(),
        "MilestoneNumber" => integer(),
        "WorkloadId" => String.t()
      }

  """
  @type get_lens_review_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      choice() :: %{
        "AdditionalResources" => list(additional_resources()()),
        "ChoiceId" => String.t(),
        "Description" => String.t(),
        "HelpfulResource" => choice_content(),
        "ImprovementPlan" => choice_content(),
        "Title" => String.t()
      }

  """
  @type choice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_profile_shares_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_review_template_answer_input() :: %{
        optional("ChoiceUpdates") => map(),
        optional("IsApplicable") => boolean(),
        optional("Notes") => String.t(),
        optional("Reason") => list(any()),
        optional("SelectedChoices") => list(String.t()())
      }

  """
  @type update_review_template_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pillar_metric() :: %{
        "PillarId" => String.t(),
        "Questions" => list(question_metric()()),
        "RiskCounts" => map()
      }

  """
  @type pillar_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profiles_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProfileNamePrefix") => String.t(),
        optional("ProfileOwnerType") => list(any())
      }

  """
  @type list_profiles_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      milestone_summary() :: %{
        "MilestoneName" => String.t(),
        "MilestoneNumber" => integer(),
        "RecordedAt" => non_neg_integer(),
        "WorkloadSummary" => workload_summary()
      }

  """
  @type milestone_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_milestone_input() :: %{}

  """
  @type get_milestone_input() :: %{}

  @typedoc """

  ## Example:

      question_difference() :: %{
        "DifferenceStatus" => list(any()),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t()
      }

  """
  @type question_difference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("SharedWith") => String.t()
      }

  """
  @type create_profile_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_review_templates_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_review_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      pillar_review_summary() :: %{
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "PillarName" => String.t(),
        "PrioritizedRiskCounts" => map(),
        "RiskCounts" => map()
      }

  """
  @type pillar_review_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_share_invitation_input() :: %{
        required("ShareInvitationAction") => list(any())
      }

  """
  @type update_share_invitation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pillar_difference() :: %{
        "DifferenceStatus" => list(any()),
        "PillarId" => String.t(),
        "PillarName" => String.t(),
        "QuestionDifferences" => list(question_difference()())
      }

  """
  @type pillar_difference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lens_metric() :: %{
        "LensArn" => String.t(),
        "Pillars" => list(pillar_metric()()),
        "RiskCounts" => map()
      }

  """
  @type lens_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      choice_content() :: %{
        "DisplayText" => String.t(),
        "Url" => String.t()
      }

  """
  @type choice_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_review_template_answers_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PillarId") => String.t()
      }

  """
  @type list_review_template_answers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_share_invitations_output() :: %{
        "NextToken" => String.t(),
        "ShareInvitationSummaries" => list(share_invitation_summary()())
      }

  """
  @type list_share_invitations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      selected_pillar() :: %{
        "PillarId" => String.t(),
        "SelectedQuestionIds" => list(String.t()())
      }

  """
  @type selected_pillar() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_input() :: %{
        optional("ProfileVersion") => String.t()
      }

  """
  @type get_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_input() :: %{
        optional("LensVersion") => String.t()
      }

  """
  @type get_lens_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_profile_version_input() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("MilestoneName") => String.t()
      }

  """
  @type upgrade_profile_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      additional_resources() :: %{
        "Content" => list(choice_content()()),
        "Type" => list(any())
      }

  """
  @type additional_resources() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notifications_output() :: %{
        "NextToken" => String.t(),
        "NotificationSummaries" => list(notification_summary()())
      }

  """
  @type list_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_answer_output() :: %{
        "Answer" => answer(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type update_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_template() :: %{
        "CreatedAt" => non_neg_integer(),
        "TemplateName" => String.t(),
        "TemplateQuestions" => list(profile_template_question()()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type profile_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      choice_answer() :: %{
        "ChoiceId" => String.t(),
        "Notes" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any())
      }

  """
  @type choice_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_template_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }

  """
  @type delete_template_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workload_output() :: %{
        "Workload" => workload()
      }

  """
  @type update_workload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profile_share_input() :: %{
        required("ClientRequestToken") => String.t()
      }

  """
  @type delete_profile_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_version_difference_output() :: %{
        "BaseLensVersion" => String.t(),
        "LatestLensVersion" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "TargetLensVersion" => String.t(),
        "VersionDifferences" => version_differences()
      }

  """
  @type get_lens_version_difference_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workloads_output() :: %{
        "NextToken" => String.t(),
        "WorkloadSummaries" => list(workload_summary()())
      }

  """
  @type list_workloads_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_review_template_answer_output() :: %{
        "Answer" => review_template_answer(),
        "LensAlias" => String.t(),
        "TemplateArn" => String.t()
      }

  """
  @type update_review_template_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_global_settings_input() :: %{
        optional("DiscoveryIntegrationStatus") => list(any()),
        optional("JiraConfiguration") => account_jira_configuration_input(),
        optional("OrganizationSharingStatus") => list(any())
      }

  """
  @type update_global_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_notifications_output() :: %{
        "NextToken" => String.t(),
        "NotificationSummaries" => list(profile_notification_summary()())
      }

  """
  @type list_profile_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      improvement_summary() :: %{
        "ImprovementPlanUrl" => String.t(),
        "ImprovementPlans" => list(choice_improvement_plan()()),
        "JiraConfiguration" => jira_configuration(),
        "PillarId" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "Risk" => list(any())
      }

  """
  @type improvement_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lens_reviews_output() :: %{
        "LensReviewSummaries" => list(lens_review_summary()()),
        "MilestoneNumber" => integer(),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type list_lens_reviews_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_lenses_input() :: %{
        required("LensAliases") => list(String.t()())
      }

  """
  @type disassociate_lenses_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lens_review_improvements_input() :: %{
        optional("MaxResults") => integer(),
        optional("MilestoneNumber") => integer(),
        optional("NextToken") => String.t(),
        optional("PillarId") => String.t(),
        optional("QuestionPriority") => list(any())
      }

  """
  @type list_lens_review_improvements_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_profile_output() :: %{
        "Profile" => profile()
      }

  """
  @type update_profile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upgrade_review_template_lens_review_input() :: %{
        optional("ClientRequestToken") => String.t()
      }

  """
  @type upgrade_review_template_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_jira_configuration_input() :: %{
        "IntegrationStatus" => list(any()),
        "IssueManagementStatus" => list(any()),
        "IssueManagementType" => list(any()),
        "JiraProjectKey" => String.t()
      }

  """
  @type account_jira_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Fields" => list(validation_exception_field()()),
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      list_check_summaries_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ChoiceId") => String.t(),
        required("LensArn") => String.t(),
        required("PillarId") => String.t(),
        required("QuestionId") => String.t()
      }

  """
  @type list_check_summaries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workload_input() :: %{
        optional("AccountIds") => list(String.t()()),
        optional("Applications") => list(String.t()()),
        optional("ArchitecturalDesign") => String.t(),
        optional("AwsRegions") => list(String.t()()),
        optional("DiscoveryConfig") => workload_discovery_config(),
        optional("Industry") => String.t(),
        optional("IndustryType") => String.t(),
        optional("JiraConfiguration") => workload_jira_configuration_input(),
        optional("NonAwsRegions") => list(String.t()()),
        optional("Notes") => String.t(),
        optional("PillarPriorities") => list(String.t()()),
        optional("ProfileArns") => list(String.t()()),
        optional("ReviewOwner") => String.t(),
        optional("ReviewTemplateArns") => list(String.t()()),
        optional("Tags") => map(),
        required("ClientRequestToken") => String.t(),
        required("Description") => String.t(),
        required("Environment") => list(any()),
        required("Lenses") => list(String.t()()),
        required("WorkloadName") => String.t()
      }

  """
  @type create_workload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lens_reviews_input() :: %{
        optional("MaxResults") => integer(),
        optional("MilestoneNumber") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_lens_reviews_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ServiceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_notifications_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("WorkloadId") => String.t()
      }

  """
  @type list_profile_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_lens_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("SharedWith") => String.t()
      }

  """
  @type create_lens_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_output() :: %{
        "Lens" => lens()
      }

  """
  @type get_lens_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profile_share_output() :: %{
        "ProfileArn" => String.t(),
        "ShareId" => String.t()
      }

  """
  @type create_profile_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      jira_configuration() :: %{
        "JiraIssueUrl" => String.t(),
        "LastSyncedTime" => non_neg_integer()
      }

  """
  @type jira_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_review_input() :: %{
        optional("MilestoneNumber") => integer()
      }

  """
  @type get_lens_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      choice_update() :: %{
        "Notes" => String.t(),
        "Reason" => list(any()),
        "Status" => list(any())
      }

  """
  @type choice_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_consolidated_report_output() :: %{
        "Base64String" => String.t(),
        "Metrics" => list(consolidated_report_metric()()),
        "NextToken" => String.t()
      }

  """
  @type get_consolidated_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_lens_share_output() :: %{
        "ShareId" => String.t()
      }

  """
  @type create_lens_share_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_workload_share_input() :: %{
        required("ClientRequestToken") => String.t(),
        required("PermissionType") => list(any()),
        required("SharedWith") => String.t()
      }

  """
  @type create_workload_share_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_lens_version_difference_input() :: %{
        optional("BaseLensVersion") => String.t(),
        optional("TargetLensVersion") => String.t()
      }

  """
  @type get_lens_version_difference_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_review_template_lens_review_output() :: %{
        "LensReview" => review_template_lens_review(),
        "TemplateArn" => String.t()
      }

  """
  @type update_review_template_lens_review_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_review_template_answer_input() :: %{}

  """
  @type get_review_template_answer_input() :: %{}

  @typedoc """

  ## Example:

      get_review_template_lens_review_input() :: %{}

  """
  @type get_review_template_lens_review_input() :: %{}

  @typedoc """

  ## Example:

      create_workload_output() :: %{
        "WorkloadArn" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type create_workload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      check_summary() :: %{
        "AccountSummary" => map(),
        "ChoiceId" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LensArn" => String.t(),
        "Name" => String.t(),
        "PillarId" => String.t(),
        "Provider" => list(any()),
        "QuestionId" => String.t(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type check_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_global_settings_output() :: %{
        "DiscoveryIntegrationStatus" => list(any()),
        "JiraConfiguration" => account_jira_configuration_output(),
        "OrganizationSharingStatus" => list(any())
      }

  """
  @type get_global_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      version_differences() :: %{
        "PillarDifferences" => list(pillar_difference()())
      }

  """
  @type version_differences() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_answers_input() :: %{
        optional("MaxResults") => integer(),
        optional("MilestoneNumber") => integer(),
        optional("NextToken") => String.t(),
        optional("PillarId") => String.t(),
        optional("QuestionPriority") => list(any())
      }

  """
  @type list_answers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_check_summaries_output() :: %{
        "CheckSummaries" => list(check_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_check_summaries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lens_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "LensName" => String.t(),
        "LensStatus" => list(any()),
        "LensType" => list(any()),
        "LensVersion" => String.t(),
        "Owner" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type lens_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_answers_output() :: %{
        "AnswerSummaries" => list(answer_summary()()),
        "LensAlias" => String.t(),
        "LensArn" => String.t(),
        "MilestoneNumber" => integer(),
        "NextToken" => String.t(),
        "WorkloadId" => String.t()
      }

  """
  @type list_answers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_summary() :: %{
        "LensUpgradeSummary" => lens_upgrade_summary(),
        "Type" => list(any())
      }

  """
  @type notification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      choice_improvement_plan() :: %{
        "ChoiceId" => String.t(),
        "DisplayText" => String.t(),
        "ImprovementPlanUrl" => String.t()
      }

  """
  @type choice_improvement_plan() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_share() :: %{
        "PermissionType" => list(any()),
        "ShareId" => String.t(),
        "SharedBy" => String.t(),
        "SharedWith" => String.t(),
        "Status" => list(any()),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }

  """
  @type workload_share() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_notification_summary() :: %{
        "CurrentProfileVersion" => String.t(),
        "LatestProfileVersion" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileName" => String.t(),
        "Type" => list(any()),
        "WorkloadId" => String.t(),
        "WorkloadName" => String.t()
      }

  """
  @type profile_notification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lens() :: %{
        "Description" => String.t(),
        "LensArn" => String.t(),
        "LensVersion" => String.t(),
        "Name" => String.t(),
        "Owner" => String.t(),
        "ShareInvitationId" => String.t(),
        "Tags" => map()
      }

  """
  @type lens() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_workload_input() :: %{
        optional("AccountIds") => list(String.t()()),
        optional("Applications") => list(String.t()()),
        optional("ArchitecturalDesign") => String.t(),
        optional("AwsRegions") => list(String.t()()),
        optional("Description") => String.t(),
        optional("DiscoveryConfig") => workload_discovery_config(),
        optional("Environment") => list(any()),
        optional("ImprovementStatus") => list(any()),
        optional("Industry") => String.t(),
        optional("IndustryType") => String.t(),
        optional("IsReviewOwnerUpdateAcknowledged") => boolean(),
        optional("JiraConfiguration") => workload_jira_configuration_input(),
        optional("NonAwsRegions") => list(String.t()()),
        optional("Notes") => String.t(),
        optional("PillarPriorities") => list(String.t()()),
        optional("ReviewOwner") => String.t(),
        optional("WorkloadName") => String.t()
      }

  """
  @type update_workload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_workload_input() :: %{
        required("ClientRequestToken") => String.t()
      }

  """
  @type delete_workload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_lens_output() :: %{
        "LensJSON" => String.t()
      }

  """
  @type export_lens_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_template_question() :: %{
        "MaxSelectedChoices" => integer(),
        "MinSelectedChoices" => integer(),
        "QuestionChoices" => list(profile_template_choice()()),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t()
      }

  """
  @type profile_template_question() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      review_template_answer() :: %{
        "AnswerStatus" => list(any()),
        "ChoiceAnswers" => list(choice_answer()()),
        "Choices" => list(choice()()),
        "HelpfulResourceDisplayText" => String.t(),
        "HelpfulResourceUrl" => String.t(),
        "ImprovementPlanUrl" => String.t(),
        "IsApplicable" => boolean(),
        "Notes" => String.t(),
        "PillarId" => String.t(),
        "QuestionDescription" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "Reason" => list(any()),
        "SelectedChoices" => list(String.t()())
      }

  """
  @type review_template_answer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_profile_input() :: %{
        optional("ProfileDescription") => String.t(),
        optional("ProfileQuestions") => list(profile_question_update()())
      }

  """
  @type update_profile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_review_template_output() :: %{
        "ReviewTemplate" => review_template()
      }

  """
  @type get_review_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_share_invitations_input() :: %{
        optional("LensNamePrefix") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProfileNamePrefix") => String.t(),
        optional("ShareResourceType") => list(any()),
        optional("TemplateNamePrefix") => String.t(),
        optional("WorkloadNamePrefix") => String.t()
      }

  """
  @type list_share_invitations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      answer_summary() :: %{
        "ChoiceAnswerSummaries" => list(choice_answer_summary()()),
        "Choices" => list(choice()()),
        "IsApplicable" => boolean(),
        "JiraConfiguration" => jira_configuration(),
        "PillarId" => String.t(),
        "QuestionId" => String.t(),
        "QuestionTitle" => String.t(),
        "QuestionType" => list(any()),
        "Reason" => list(any()),
        "Risk" => list(any()),
        "SelectedChoices" => list(String.t()())
      }

  """
  @type answer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lenses_input() :: %{
        optional("LensName") => String.t(),
        optional("LensStatus") => list(any()),
        optional("LensType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_lenses_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Owner" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileDescription" => String.t(),
        "ProfileName" => String.t(),
        "ProfileVersion" => String.t(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_review_template_answer_output() :: %{
        "Answer" => review_template_answer(),
        "LensAlias" => String.t(),
        "TemplateArn" => String.t()
      }

  """
  @type get_review_template_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_profile() :: %{
        "ProfileArn" => String.t(),
        "ProfileVersion" => String.t()
      }

  """
  @type workload_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_shares_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SharedWithPrefix") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_template_shares_input() :: %{String.t() => any()}

  @type associate_lenses_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_lens_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_lens_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_milestone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_profile_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_template_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workload_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_lens_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_profile_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_template_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workload_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_lenses_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type export_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_consolidated_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_global_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lens_review_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lens_version_difference_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_milestone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_review_template_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_review_template_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type import_lens_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_answers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_check_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_check_summaries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lens_review_improvements_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lens_reviews_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lens_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_lenses_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_milestones_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_notifications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_profile_notifications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_profile_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_review_template_answers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_review_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_share_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception() | resource_not_found_exception()

  @type list_template_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workload_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workloads_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type update_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_global_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type update_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_review_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_review_template_answer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_review_template_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_share_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workload_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type upgrade_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type upgrade_profile_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type upgrade_review_template_lens_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "wellarchitected",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "WellArchitected",
      signature_version: "v4",
      signing_name: "wellarchitected",
      target_prefix: nil
    }
  end

  @doc """
  Associate a lens to a workload.

  Up to 10 lenses can be associated with a workload in a single API operation. A
  maximum of 20 lenses can be associated with a workload.

  ## Disclaimer

  By accessing and/or applying custom lenses created by another Amazon Web
  Services user or account,
  you acknowledge that custom lenses created by other users and shared with you
  are
  Third Party Content as defined in the Amazon Web Services Customer Agreement.
  """
  @spec associate_lenses(map(), String.t(), associate_lenses_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_lenses_errors()}
  def associate_lenses(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/associateLenses"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associate a profile with a workload.
  """
  @spec associate_profiles(map(), String.t(), associate_profiles_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_profiles_errors()}
  def associate_profiles(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/associateProfiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a lens share.

  The owner of a lens can share it with other Amazon Web Services accounts, users,
  an organization,
  and organizational units (OUs) in the same Amazon Web Services Region.
  Lenses provided by Amazon Web Services (Amazon Web Services Official Content)
  cannot be shared.

  Shared access to a lens is not removed until the lens invitation is deleted.

  If you share a lens with an organization or OU, all accounts in the organization
  or OU
  are granted access to the lens.

  For more information, see [Sharing a custom lens](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-sharing.html)
  in the
  *Well-Architected Tool User Guide*.

  ## Disclaimer

  By sharing your custom lenses with other Amazon Web Services accounts,
  you acknowledge that Amazon Web Services will make your custom lenses available
  to those
  other accounts. Those other accounts may continue to access and use your
  shared custom lenses even if you delete the custom lenses
  from your own Amazon Web Services account or terminate
  your Amazon Web Services account.
  """
  @spec create_lens_share(map(), String.t(), create_lens_share_input(), list()) ::
          {:ok, create_lens_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lens_share_errors()}
  def create_lens_share(%Client{} = client, lens_alias, input, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a new lens version.

  A lens can have up to 100 versions.

  Use this operation to publish a new lens version after you have imported a lens.
  The `LensAlias`
  is used to identify the lens to be published.
  The owner of a lens can share the lens with other
  Amazon Web Services accounts and users in the same Amazon Web Services Region.
  Only the owner of a lens can delete it.
  """
  @spec create_lens_version(map(), String.t(), create_lens_version_input(), list()) ::
          {:ok, create_lens_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_lens_version_errors()}
  def create_lens_version(%Client{} = client, lens_alias, input, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/versions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a milestone for an existing workload.
  """
  @spec create_milestone(map(), String.t(), create_milestone_input(), list()) ::
          {:ok, create_milestone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_milestone_errors()}
  def create_milestone(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestones"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a profile.
  """
  @spec create_profile(map(), create_profile_input(), list()) ::
          {:ok, create_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a profile share.
  """
  @spec create_profile_share(map(), String.t(), create_profile_share_input(), list()) ::
          {:ok, create_profile_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_share_errors()}
  def create_profile_share(%Client{} = client, profile_arn, input, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a review template.

  ## Disclaimer

  Do not include or gather personal identifiable information (PII) of end users or
  other identifiable individuals in or via your review templates. If your review
  template or those shared with you and used in your account do include or collect
  PII
  you are responsible for: ensuring that the included PII is processed in
  accordance
  with applicable law, providing adequate privacy notices, and obtaining necessary
  consents for processing such data.
  """
  @spec create_review_template(map(), create_review_template_input(), list()) ::
          {:ok, create_review_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_review_template_errors()}
  def create_review_template(%Client{} = client, input, options \\ []) do
    url_path = "/reviewTemplates"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a review template share.

  The owner of a review template can share it with other Amazon Web Services
  accounts,
  users, an organization, and organizational units (OUs) in the same Amazon Web
  Services Region.

  Shared access to a review template is not removed until the review template
  share
  invitation is deleted.

  If you share a review template with an organization or OU, all accounts in the
  organization or OU are granted access to the review template.

  ## Disclaimer

  By sharing your review template with other Amazon Web Services accounts, you
  acknowledge that Amazon Web Services will make your review template available to
  those other accounts.
  """
  @spec create_template_share(map(), String.t(), create_template_share_input(), list()) ::
          {:ok, create_template_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_share_errors()}
  def create_template_share(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/templates/shares/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a new workload.

  The owner of a workload can share the workload with other Amazon Web Services
  accounts, users,
  an organization, and organizational units (OUs)
  in the same Amazon Web Services Region. Only the owner of a workload can delete
  it.

  For more information, see [Defining a Workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html)
  in the
  *Well-Architected Tool User Guide*.

  Either `AwsRegions`, `NonAwsRegions`, or both must be specified when
  creating a workload.

  You also must specify `ReviewOwner`, even though the
  parameter is listed as not being required in the following section.

  When creating a workload using a review template, you must have the following
  IAM permissions:

    *

  `wellarchitected:GetReviewTemplate`

    *

  `wellarchitected:GetReviewTemplateAnswer`

    *

  `wellarchitected:ListReviewTemplateAnswers`

    *

  `wellarchitected:GetReviewTemplateLensReview`
  """
  @spec create_workload(map(), create_workload_input(), list()) ::
          {:ok, create_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workload_errors()}
  def create_workload(%Client{} = client, input, options \\ []) do
    url_path = "/workloads"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a workload share.

  The owner of a workload can share it with other Amazon Web Services accounts and
  users in the same
  Amazon Web Services Region. Shared access to a workload is not removed until the
  workload invitation is
  deleted.

  If you share a workload with an organization or OU, all accounts in the
  organization or OU
  are granted access to the workload.

  For more information, see [Sharing a workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html)
  in the
  *Well-Architected Tool User Guide*.
  """
  @spec create_workload_share(map(), String.t(), create_workload_share_input(), list()) ::
          {:ok, create_workload_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workload_share_errors()}
  def create_workload_share(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete an existing lens.

  Only the owner of a lens can delete it. After the lens is deleted, Amazon Web
  Services accounts and users
  that you shared the lens with can continue to use it, but they will no longer be
  able to apply it to new workloads.

  ## Disclaimer

  By sharing your custom lenses with other Amazon Web Services accounts,
  you acknowledge that Amazon Web Services will make your custom lenses available
  to those
  other accounts. Those other accounts may continue to access and use your
  shared custom lenses even if you delete the custom lenses
  from your own Amazon Web Services account or terminate
  your Amazon Web Services account.
  """
  @spec delete_lens(map(), String.t(), delete_lens_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lens_errors()}
  def delete_lens(%Client{} = client, lens_alias, input, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"},
        {"LensStatus", "LensStatus"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete a lens share.

  After the lens share is deleted, Amazon Web Services accounts, users,
  organizations,
  and organizational units (OUs)
  that you shared the lens with can continue to use it, but they will no longer be
  able to apply it to new workloads.

  ## Disclaimer

  By sharing your custom lenses with other Amazon Web Services accounts,
  you acknowledge that Amazon Web Services will make your custom lenses available
  to those
  other accounts. Those other accounts may continue to access and use your
  shared custom lenses even if you delete the custom lenses
  from your own Amazon Web Services account or terminate
  your Amazon Web Services account.
  """
  @spec delete_lens_share(map(), String.t(), String.t(), delete_lens_share_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_lens_share_errors()}
  def delete_lens_share(%Client{} = client, lens_alias, share_id, input, options \\ []) do
    url_path =
      "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete a profile.

  ## Disclaimer

  By sharing your profile with other Amazon Web Services accounts,
  you acknowledge that Amazon Web Services will make your profile available to
  those
  other accounts. Those other accounts may continue to access and use your
  shared profile even if you delete the profile
  from your own Amazon Web Services account or terminate
  your Amazon Web Services account.
  """
  @spec delete_profile(map(), String.t(), delete_profile_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, profile_arn, input, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete a profile share.
  """
  @spec delete_profile_share(map(), String.t(), String.t(), delete_profile_share_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_share_errors()}
  def delete_profile_share(%Client{} = client, profile_arn, share_id, input, options \\ []) do
    url_path =
      "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete a review template.

  Only the owner of a review template can delete it.

  After the review template is deleted, Amazon Web Services accounts, users,
  organizations, and organizational units (OUs) that you shared the review
  template with
  will no longer be able to apply it to new workloads.
  """
  @spec delete_review_template(map(), String.t(), delete_review_template_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_review_template_errors()}
  def delete_review_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete a review template share.

  After the review template share is deleted, Amazon Web Services accounts, users,
  organizations, and organizational units (OUs) that you shared the review
  template with
  will no longer be able to apply it to new workloads.
  """
  @spec delete_template_share(
          map(),
          String.t(),
          String.t(),
          delete_template_share_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_share_errors()}
  def delete_template_share(%Client{} = client, share_id, template_arn, input, options \\ []) do
    url_path =
      "/templates/shares/#{AWS.Util.encode_uri(template_arn)}/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete an existing workload.
  """
  @spec delete_workload(map(), String.t(), delete_workload_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workload_errors()}
  def delete_workload(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete a workload share.
  """
  @spec delete_workload_share(
          map(),
          String.t(),
          String.t(),
          delete_workload_share_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workload_share_errors()}
  def delete_workload_share(%Client{} = client, share_id, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociate a lens from a workload.

  Up to 10 lenses can be disassociated from a workload in a single API operation.

  The Amazon Web Services Well-Architected Framework lens (`wellarchitected`)
  cannot be
  removed from a workload.
  """
  @spec disassociate_lenses(map(), String.t(), disassociate_lenses_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_lenses_errors()}
  def disassociate_lenses(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/disassociateLenses"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociate a profile from a workload.
  """
  @spec disassociate_profiles(map(), String.t(), disassociate_profiles_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_profiles_errors()}
  def disassociate_profiles(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/disassociateProfiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Export an existing lens.

  Only the owner of a lens can export it. Lenses provided by Amazon Web Services
  (Amazon Web Services Official Content)
  cannot be exported.

  Lenses are defined in JSON. For more information, see [JSON format specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
  in the *Well-Architected Tool User Guide*.

  ## Disclaimer

  Do not include or gather personal identifiable information (PII) of end users or
  other identifiable individuals in or via your custom lenses. If your custom
  lens or those shared with you and used in your account do include or collect
  PII you are responsible for: ensuring that the included PII is processed in
  accordance
  with applicable law, providing adequate privacy notices, and obtaining necessary
  consents for processing such data.
  """
  @spec export_lens(map(), String.t(), String.t() | nil, list()) ::
          {:ok, export_lens_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_lens_errors()}
  def export_lens(%Client{} = client, lens_alias, lens_version \\ nil, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/export"
    headers = []
    query_params = []

    query_params =
      if !is_nil(lens_version) do
        [{"LensVersion", lens_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the answer to a specific question in a workload review.
  """
  @spec get_answer(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_answer_errors()}
  def get_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        workload_id,
        milestone_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a consolidated report of your workloads.

  You can optionally choose to include workloads that have been shared with you.
  """
  @spec get_consolidated_report(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_consolidated_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_consolidated_report_errors()}
  def get_consolidated_report(
        %Client{} = client,
        format,
        include_shared_resources \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/consolidatedReport"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_shared_resources) do
        [{"IncludeSharedResources", include_shared_resources} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"Format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Global settings for all workloads.
  """
  @spec get_global_settings(map(), list()) ::
          {:ok, get_global_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_global_settings_errors()}
  def get_global_settings(%Client{} = client, options \\ []) do
    url_path = "/global-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an existing lens.
  """
  @spec get_lens(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_lens_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_errors()}
  def get_lens(%Client{} = client, lens_alias, lens_version \\ nil, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(lens_version) do
        [{"LensVersion", lens_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get lens review.
  """
  @spec get_lens_review(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_review_errors()}
  def get_lens_review(
        %Client{} = client,
        lens_alias,
        workload_id,
        milestone_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get lens review report.
  """
  @spec get_lens_review_report(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_lens_review_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_review_report_errors()}
  def get_lens_review_report(
        %Client{} = client,
        lens_alias,
        workload_id,
        milestone_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/report"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get lens version differences.
  """
  @spec get_lens_version_difference(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_lens_version_difference_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_lens_version_difference_errors()}
  def get_lens_version_difference(
        %Client{} = client,
        lens_alias,
        base_lens_version \\ nil,
        target_lens_version \\ nil,
        options \\ []
      ) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/versionDifference"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_lens_version) do
        [{"TargetLensVersion", target_lens_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(base_lens_version) do
        [{"BaseLensVersion", base_lens_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a milestone for an existing workload.
  """
  @spec get_milestone(map(), String.t(), String.t(), list()) ::
          {:ok, get_milestone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_milestone_errors()}
  def get_milestone(%Client{} = client, milestone_number, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestones/#{AWS.Util.encode_uri(milestone_number)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get profile information.
  """
  @spec get_profile(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_errors()}
  def get_profile(%Client{} = client, profile_arn, profile_version \\ nil, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(profile_version) do
        [{"ProfileVersion", profile_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get profile template.
  """
  @spec get_profile_template(map(), list()) ::
          {:ok, get_profile_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_template_errors()}
  def get_profile_template(%Client{} = client, options \\ []) do
    url_path = "/profileTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get review template.
  """
  @spec get_review_template(map(), String.t(), list()) ::
          {:ok, get_review_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_review_template_errors()}
  def get_review_template(%Client{} = client, template_arn, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get review template answer.
  """
  @spec get_review_template_answer(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_review_template_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_review_template_answer_errors()}
  def get_review_template_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a lens review associated with a review template.
  """
  @spec get_review_template_lens_review(map(), String.t(), String.t(), list()) ::
          {:ok, get_review_template_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_review_template_lens_review_errors()}
  def get_review_template_lens_review(%Client{} = client, lens_alias, template_arn, options \\ []) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an existing workload.
  """
  @spec get_workload(map(), String.t(), list()) ::
          {:ok, get_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workload_errors()}
  def get_workload(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Import a new custom lens or update an existing custom lens.

  To update an existing custom lens, specify its ARN as the `LensAlias`. If
  no ARN is specified, a new custom lens is created.

  The new or updated lens will have a status of `DRAFT`. The lens cannot be
  applied to workloads or shared with other Amazon Web Services accounts until
  it's
  published with `CreateLensVersion`.

  Lenses are defined in JSON. For more information, see [JSON format specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
  in the *Well-Architected Tool User Guide*.

  A custom lens cannot exceed 500 KB in size.

  ## Disclaimer

  Do not include or gather personal identifiable information (PII) of end users or
  other identifiable individuals in or via your custom lenses. If your custom
  lens or those shared with you and used in your account do include or collect
  PII you are responsible for: ensuring that the included PII is processed in
  accordance
  with applicable law, providing adequate privacy notices, and obtaining necessary
  consents for processing such data.
  """
  @spec import_lens(map(), import_lens_input(), list()) ::
          {:ok, import_lens_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_lens_errors()}
  def import_lens(%Client{} = client, input, options \\ []) do
    url_path = "/importLens"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  List of answers for a particular workload and lens.
  """
  @spec list_answers(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_answers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_answers_errors()}
  def list_answers(
        %Client{} = client,
        lens_alias,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        pillar_id \\ nil,
        question_priority \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers"

    headers = []
    query_params = []

    query_params =
      if !is_nil(question_priority) do
        [{"QuestionPriority", question_priority} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pillar_id) do
        [{"PillarId", pillar_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List of Trusted Advisor check details by account related to the workload.
  """
  @spec list_check_details(map(), String.t(), list_check_details_input(), list()) ::
          {:ok, list_check_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_check_details_errors()}
  def list_check_details(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/checks"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List of Trusted Advisor checks summarized for all accounts related to the
  workload.
  """
  @spec list_check_summaries(map(), String.t(), list_check_summaries_input(), list()) ::
          {:ok, list_check_summaries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_check_summaries_errors()}
  def list_check_summaries(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/checkSummaries"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List the improvements of a particular lens review.
  """
  @spec list_lens_review_improvements(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_lens_review_improvements_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lens_review_improvements_errors()}
  def list_lens_review_improvements(
        %Client{} = client,
        lens_alias,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        pillar_id \\ nil,
        question_priority \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/improvements"

    headers = []
    query_params = []

    query_params =
      if !is_nil(question_priority) do
        [{"QuestionPriority", question_priority} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pillar_id) do
        [{"PillarId", pillar_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List lens reviews for a particular workload.
  """
  @spec list_lens_reviews(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_lens_reviews_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lens_reviews_errors()}
  def list_lens_reviews(
        %Client{} = client,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the lens shares associated with the lens.
  """
  @spec list_lens_shares(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_lens_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lens_shares_errors()}
  def list_lens_shares(
        %Client{} = client,
        lens_alias,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the available lenses.
  """
  @spec list_lenses(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_lenses_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_lenses_errors()}
  def list_lenses(
        %Client{} = client,
        lens_name \\ nil,
        lens_status \\ nil,
        lens_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/lenses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_type) do
        [{"LensType", lens_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_status) do
        [{"LensStatus", lens_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_name) do
        [{"LensName", lens_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all milestones for an existing workload.
  """
  @spec list_milestones(map(), String.t(), list_milestones_input(), list()) ::
          {:ok, list_milestones_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_milestones_errors()}
  def list_milestones(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestonesSummaries"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List lens notifications.
  """
  @spec list_notifications(map(), list_notifications_input(), list()) ::
          {:ok, list_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notifications_errors()}
  def list_notifications(%Client{} = client, input, options \\ []) do
    url_path = "/notifications"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List profile notifications.
  """
  @spec list_profile_notifications(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_profile_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_notifications_errors()}
  def list_profile_notifications(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        workload_id \\ nil,
        options \\ []
      ) do
    url_path = "/profileNotifications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workload_id) do
        [{"WorkloadId", workload_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List profile shares.
  """
  @spec list_profile_shares(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_profile_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profile_shares_errors()}
  def list_profile_shares(
        %Client{} = client,
        profile_arn,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List profiles.
  """
  @spec list_profiles(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_profiles_errors()}
  def list_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        profile_name_prefix \\ nil,
        profile_owner_type \\ nil,
        options \\ []
      ) do
    url_path = "/profileSummaries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(profile_owner_type) do
        [{"ProfileOwnerType", profile_owner_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(profile_name_prefix) do
        [{"ProfileNamePrefix", profile_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the answers of a review template.
  """
  @spec list_review_template_answers(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_review_template_answers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_review_template_answers_errors()}
  def list_review_template_answers(
        %Client{} = client,
        lens_alias,
        template_arn,
        max_results \\ nil,
        next_token \\ nil,
        pillar_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers"

    headers = []
    query_params = []

    query_params =
      if !is_nil(pillar_id) do
        [{"PillarId", pillar_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List review templates.
  """
  @spec list_review_templates(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_review_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_review_templates_errors()}
  def list_review_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/reviewTemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the share invitations.

  `WorkloadNamePrefix`, `LensNamePrefix`,
  `ProfileNamePrefix`, and `TemplateNamePrefix` are mutually
  exclusive. Use the parameter that matches your `ShareResourceType`.
  """
  @spec list_share_invitations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_share_invitations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_share_invitations_errors()}
  def list_share_invitations(
        %Client{} = client,
        lens_name_prefix \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        profile_name_prefix \\ nil,
        share_resource_type \\ nil,
        template_name_prefix \\ nil,
        workload_name_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/shareInvitations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workload_name_prefix) do
        [{"WorkloadNamePrefix", workload_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(template_name_prefix) do
        [{"TemplateNamePrefix", template_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(share_resource_type) do
        [{"ShareResourceType", share_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(profile_name_prefix) do
        [{"ProfileNamePrefix", profile_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_name_prefix) do
        [{"LensNamePrefix", lens_name_prefix} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the tags for a resource.

  The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile
  ARN, or review template ARN.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, workload_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List review template shares.
  """
  @spec list_template_shares(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_template_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_template_shares_errors()}
  def list_template_shares(
        %Client{} = client,
        template_arn,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/templates/shares/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the workload shares associated with the workload.
  """
  @spec list_workload_shares(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_workload_shares_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workload_shares_errors()}
  def list_workload_shares(
        %Client{} = client,
        workload_id,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Paginated list of workloads.
  """
  @spec list_workloads(map(), list_workloads_input(), list()) ::
          {:ok, list_workloads_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workloads_errors()}
  def list_workloads(%Client{} = client, input, options \\ []) do
    url_path = "/workloadsSummaries"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds one or more tags to the specified resource.

  The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile
  ARN, or review template ARN.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, workload_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes specified tags from a resource.

  The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile
  ARN, or review template ARN.

  To specify multiple tags, use separate **tagKeys** parameters, for example:

  `DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2`
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, workload_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update the answer to a specific question in a workload review.
  """
  @spec update_answer(map(), String.t(), String.t(), String.t(), update_answer_input(), list()) ::
          {:ok, update_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_answer_errors()}
  def update_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        workload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update whether the Amazon Web Services account is opted into organization
  sharing and discovery integration features.
  """
  @spec update_global_settings(map(), update_global_settings_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_global_settings_errors()}
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/global-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update integration features.
  """
  @spec update_integration(map(), String.t(), update_integration_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_integration_errors()}
  def update_integration(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/updateIntegration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update lens review for a particular workload.
  """
  @spec update_lens_review(map(), String.t(), String.t(), update_lens_review_input(), list()) ::
          {:ok, update_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_lens_review_errors()}
  def update_lens_review(%Client{} = client, lens_alias, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a profile.
  """
  @spec update_profile(map(), String.t(), update_profile_input(), list()) ::
          {:ok, update_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_profile_errors()}
  def update_profile(%Client{} = client, profile_arn, input, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a review template.
  """
  @spec update_review_template(map(), String.t(), update_review_template_input(), list()) ::
          {:ok, update_review_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_review_template_errors()}
  def update_review_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a review template answer.
  """
  @spec update_review_template_answer(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_review_template_answer_input(),
          list()
        ) ::
          {:ok, update_review_template_answer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_review_template_answer_errors()}
  def update_review_template_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a lens review associated with a review template.
  """
  @spec update_review_template_lens_review(
          map(),
          String.t(),
          String.t(),
          update_review_template_lens_review_input(),
          list()
        ) ::
          {:ok, update_review_template_lens_review_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_review_template_lens_review_errors()}
  def update_review_template_lens_review(
        %Client{} = client,
        lens_alias,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a workload or custom lens share invitation.

  This API operation can be called independently of any resource. Previous
  documentation implied that a workload ARN must be specified.
  """
  @spec update_share_invitation(map(), String.t(), update_share_invitation_input(), list()) ::
          {:ok, update_share_invitation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_share_invitation_errors()}
  def update_share_invitation(%Client{} = client, share_invitation_id, input, options \\ []) do
    url_path = "/shareInvitations/#{AWS.Util.encode_uri(share_invitation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update an existing workload.
  """
  @spec update_workload(map(), String.t(), update_workload_input(), list()) ::
          {:ok, update_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workload_errors()}
  def update_workload(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a workload share.
  """
  @spec update_workload_share(
          map(),
          String.t(),
          String.t(),
          update_workload_share_input(),
          list()
        ) ::
          {:ok, update_workload_share_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workload_share_errors()}
  def update_workload_share(%Client{} = client, share_id, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Upgrade lens review for a particular workload.
  """
  @spec upgrade_lens_review(map(), String.t(), String.t(), upgrade_lens_review_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_lens_review_errors()}
  def upgrade_lens_review(%Client{} = client, lens_alias, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/upgrade"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upgrade a profile.
  """
  @spec upgrade_profile_version(
          map(),
          String.t(),
          String.t(),
          upgrade_profile_version_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_profile_version_errors()}
  def upgrade_profile_version(%Client{} = client, profile_arn, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/profiles/#{AWS.Util.encode_uri(profile_arn)}/upgrade"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upgrade the lens review of a review template.
  """
  @spec upgrade_review_template_lens_review(
          map(),
          String.t(),
          String.t(),
          upgrade_review_template_lens_review_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upgrade_review_template_lens_review_errors()}
  def upgrade_review_template_lens_review(
        %Client{} = client,
        lens_alias,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/upgrade"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
