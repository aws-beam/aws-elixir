# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PartnerCentralSelling do
  @moduledoc """
  AWS Partner Central API for Selling

  ## AWS Partner Central API for Selling Reference Guide

  This Amazon Web Services (AWS) Partner Central API reference is designed to help
  [AWS Partners](http://aws.amazon.com/partners/programs/) integrate Customer Relationship Management (CRM) systems with AWS Partner Central.

  Partners can automate interactions with AWS Partner Central, which helps to
  ensure effective engagements in joint business activities.

  The API provides standard AWS API functionality. Access it by either using API
  [Actions](https://docs.aws.amazon.com/partner-central/latest/selling-api/API_Operations.html)
  or by using an AWS SDK that's tailored to your programming language or platform.
  For more information, see [Getting Started with AWS](http://aws.amazon.com/getting-started) and [Tools to Build on AWS](http://aws.amazon.com/developer/tools/).

  ## Features offered by AWS Partner Central API

    1. **Opportunity management:** Manages coselling opportunities
  through API actions such as `CreateOpportunity`, `UpdateOpportunity`,
  `ListOpportunities`, `GetOpportunity`, and `AssignOpportunity`.

    2. **AWS referral management:** Manages referrals shared by AWS
  using actions such as `ListEngagementInvitations`, `GetEngagementInvitation`,
  `StartEngagementByAcceptingInvitation`, and `RejectEngagementInvitation`.

    3. **Entity association:** Associates related entities such as *AWS
  Products*, *Partner Solutions*, and *AWS Marketplace Private Offers* with
  opportunities using the actions `AssociateOpportunity`, and
  `DisassociateOpportunity`.

    4. **View AWS opportunity details:** Retrieves real-time summaries
  of AWS opportunities using the `GetAWSOpportunitySummary` action.

    5. **List solutions:** Provides list APIs for listing partner offers
  using `ListSolutions`.

    6. **Event subscription:** Subscribe to real-time opportunity
  updates through AWS EventBridge by using actions such as *Opportunity Created*,
  *Opportunity Updated*, *Engagement Invitation Accepted*, *Engagement Invitation
  Rejected*, and *Engagement Invitation Created*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_engagement_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type list_engagement_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_resource_associations_request() :: %{
        optional("CreatedBy") => String.t() | atom(),
        optional("EngagementIdentifier") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("ResourceIdentifier") => String.t() | atom(),
        optional("ResourceType") => list(any()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_engagement_resource_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_members_response() :: %{
        "EngagementMemberList" => list(engagement_member()),
        "NextToken" => [String.t() | atom()]
      }
      
  """
  @type list_engagement_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      opportunity_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type opportunity_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      life_cycle() :: %{
        "ClosedLostReason" => list(any()),
        "NextSteps" => String.t() | atom(),
        "NextStepsHistory" => list(next_steps_history()),
        "ReviewComments" => [String.t() | atom()],
        "ReviewStatus" => list(any()),
        "ReviewStatusReason" => [String.t() | atom()],
        "Stage" => list(any()),
        "TargetCloseDate" => String.t() | atom()
      }
      
  """
  @type life_cycle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      assign_opportunity_request() :: %{
        required("Assignee") => assignee_contact(),
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type assign_opportunity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_engagement_invitation_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("EngagementIdentifier") => String.t() | atom(),
        required("Invitation") => invitation()
      }
      
  """
  @type create_engagement_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_team_member() :: %{
        "BusinessTitle" => list(any()),
        "Email" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom()
      }
      
  """
  @type aws_team_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_engagement_by_accepting_invitation_task_response() :: %{
        "EngagementInvitationId" => String.t() | atom(),
        "Message" => [String.t() | atom()],
        "OpportunityId" => String.t() | atom(),
        "ReasonCode" => list(any()),
        "ResourceSnapshotJobId" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "TaskArn" => String.t() | atom(),
        "TaskId" => String.t() | atom(),
        "TaskStatus" => list(any())
      }
      
  """
  @type start_engagement_by_accepting_invitation_task_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      engagement_invitation_summary() :: %{
        "Arn" => [String.t() | atom()],
        "Catalog" => String.t() | atom(),
        "EngagementId" => String.t() | atom(),
        "EngagementTitle" => String.t() | atom(),
        "ExpirationDate" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "InvitationDate" => non_neg_integer(),
        "ParticipantType" => list(any()),
        "PayloadType" => list(any()),
        "Receiver" => list(),
        "SenderAwsAccountId" => String.t() | atom(),
        "SenderCompanyName" => [String.t() | atom()],
        "Status" => list(any())
      }
      
  """
  @type engagement_invitation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "DeliveryModels" => list(list(any())()),
        "ExpectedCustomerSpend" => list(expected_customer_spend())
      }
      
  """
  @type project_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      last_modified_date() :: %{
        "AfterLastModifiedDate" => non_neg_integer(),
        "BeforeLastModifiedDate" => non_neg_integer()
      }
      
  """
  @type last_modified_date() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_snapshot_job_summary() :: %{
        "Arn" => String.t() | atom(),
        "EngagementId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type resource_snapshot_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_by_accepting_invitation_tasks_response() :: %{
        "NextToken" => [String.t() | atom()],
        "TaskSummaries" => list(list_engagement_by_accepting_invitation_task_summary())
      }
      
  """
  @type list_engagement_by_accepting_invitation_tasks_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      aws_opportunity_related_entities() :: %{
        "AwsProducts" => list(String.t() | atom()),
        "Solutions" => list(String.t() | atom())
      }
      
  """
  @type aws_opportunity_related_entities() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement_customer() :: %{
        "CompanyName" => String.t() | atom(),
        "CountryCode" => list(any()),
        "Industry" => list(any()),
        "WebsiteUrl" => String.t() | atom()
      }
      
  """
  @type engagement_customer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_resource_snapshot_job_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ResourceSnapshotJobIdentifier") => String.t() | atom()
      }
      
  """
  @type stop_resource_snapshot_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_aws_opportunity_summary_response() :: %{
        "Catalog" => String.t() | atom(),
        "Customer" => aws_opportunity_customer(),
        "Insights" => aws_opportunity_insights(),
        "InvolvementType" => list(any()),
        "InvolvementTypeChangeReason" => list(any()),
        "LifeCycle" => aws_opportunity_life_cycle(),
        "OpportunityTeam" => list(aws_team_member()),
        "Origin" => list(any()),
        "Project" => aws_opportunity_project(),
        "RelatedEntityIds" => aws_opportunity_related_entities(),
        "RelatedOpportunityId" => String.t() | atom(),
        "Visibility" => list(any())
      }
      
  """
  @type get_aws_opportunity_summary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_insights() :: %{
        "EngagementScore" => list(any()),
        "NextBestActions" => [String.t() | atom()]
      }
      
  """
  @type aws_opportunity_insights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invitation() :: %{
        "Message" => String.t() | atom(),
        "Payload" => list(),
        "Receiver" => list()
      }
      
  """
  @type invitation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_opportunity_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "Customer" => customer(),
        "Id" => String.t() | atom(),
        "LastModifiedDate" => non_neg_integer(),
        "LifeCycle" => life_cycle(),
        "Marketing" => marketing(),
        "NationalSecurity" => list(any()),
        "OpportunityTeam" => list(contact()),
        "OpportunityType" => list(any()),
        "PartnerOpportunityIdentifier" => [String.t() | atom()],
        "PrimaryNeedsFromAws" => list(list(any())()),
        "Project" => project(),
        "RelatedEntityIdentifiers" => related_entity_identifiers(),
        "SoftwareRevenue" => software_revenue()
      }
      
  """
  @type get_opportunity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_selling_system_settings_response() :: %{
        "Catalog" => String.t() | atom(),
        "ResourceSnapshotJobRoleArn" => String.t() | atom()
      }
      
  """
  @type put_selling_system_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_view() :: %{
        "CustomerUseCase" => [String.t() | atom()],
        "DeliveryModels" => list(list(any())()),
        "ExpectedCustomerSpend" => list(expected_customer_spend()),
        "OtherSolutionDescription" => String.t() | atom(),
        "SalesActivities" => list(list(any())())
      }
      
  """
  @type project_view() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resource_snapshots_request() :: %{
        optional("CreatedBy") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("ResourceIdentifier") => String.t() | atom(),
        optional("ResourceSnapshotTemplateIdentifier") => String.t() | atom(),
        optional("ResourceType") => list(any()),
        required("Catalog") => String.t() | atom(),
        required("EngagementIdentifier") => String.t() | atom()
      }
      
  """
  @type list_resource_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      solution_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type solution_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resource_snapshots_response() :: %{
        "NextToken" => [String.t() | atom()],
        "ResourceSnapshotSummaries" => list(resource_snapshot_summary())
      }
      
  """
  @type list_resource_snapshots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_aws_opportunity_summary_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("RelatedOpportunityIdentifier") => String.t() | atom()
      }
      
  """
  @type get_aws_opportunity_summary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_selling_system_settings_request() :: %{
        optional("ResourceSnapshotJobRoleIdentifier") => String.t() | atom(),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type put_selling_system_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_solutions_request() :: %{
        optional("Category") => list([String.t() | atom()]()),
        optional("Identifier") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("Sort") => solution_sort(),
        optional("Status") => list(list(any())()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_solutions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_from_opportunity_tasks_request() :: %{
        optional("EngagementIdentifier") => list(String.t() | atom()),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()],
        optional("OpportunityIdentifier") => list(String.t() | atom()),
        optional("Sort") => list_tasks_sort_base(),
        optional("TaskIdentifier") => list(String.t() | atom()),
        optional("TaskStatus") => list(list(any())()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_engagement_from_opportunity_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_project() :: %{
        "ExpectedCustomerSpend" => list(expected_customer_spend())
      }
      
  """
  @type aws_opportunity_project() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_opportunity_request() :: %{
        optional("Customer") => customer(),
        optional("LifeCycle") => life_cycle(),
        optional("Marketing") => marketing(),
        optional("NationalSecurity") => list(any()),
        optional("OpportunityType") => list(any()),
        optional("PartnerOpportunityIdentifier") => [String.t() | atom()],
        optional("PrimaryNeedsFromAws") => list(list(any())()),
        optional("Project") => project(),
        optional("SoftwareRevenue") => software_revenue(),
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom(),
        required("LastModifiedDate") => non_neg_integer()
      }
      
  """
  @type update_opportunity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_opportunity_response() :: %{
        "Id" => String.t() | atom(),
        "LastModifiedDate" => non_neg_integer(),
        "PartnerOpportunityIdentifier" => [String.t() | atom()]
      }
      
  """
  @type create_opportunity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement_member() :: %{
        "AccountId" => String.t() | atom(),
        "CompanyName" => String.t() | atom(),
        "WebsiteUrl" => [String.t() | atom()]
      }
      
  """
  @type engagement_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type engagement_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_by_accepting_invitation_tasks_request() :: %{
        optional("EngagementInvitationIdentifier") => list(String.t() | atom()),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()],
        optional("OpportunityIdentifier") => list(String.t() | atom()),
        optional("Sort") => list_tasks_sort_base(),
        optional("TaskIdentifier") => list(String.t() | atom()),
        optional("TaskStatus") => list(list(any())()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_engagement_by_accepting_invitation_tasks_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      engagement_context_details() :: %{
        "Payload" => list(),
        "Type" => list(any())
      }
      
  """
  @type engagement_context_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagements_response() :: %{
        "EngagementSummaryList" => list(engagement_summary()),
        "NextToken" => [String.t() | atom()]
      }
      
  """
  @type list_engagements_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_opportunity_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("OpportunityIdentifier") => String.t() | atom(),
        required("RelatedEntityIdentifier") => [String.t() | atom()],
        required("RelatedEntityType") => list(any())
      }
      
  """
  @type associate_opportunity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      related_entity_identifiers() :: %{
        "AwsMarketplaceOffers" => list(String.t() | atom()),
        "AwsProducts" => list(String.t() | atom()),
        "Solutions" => list(String.t() | atom())
      }
      
  """
  @type related_entity_identifiers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customer() :: %{
        "Account" => account(),
        "Contacts" => list(contact())
      }
      
  """
  @type customer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      life_cycle_for_view() :: %{
        "NextSteps" => String.t() | atom(),
        "ReviewStatus" => list(any()),
        "Stage" => list(any()),
        "TargetCloseDate" => String.t() | atom()
      }
      
  """
  @type life_cycle_for_view() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_invitations_response() :: %{
        "EngagementInvitationSummaries" => list(engagement_invitation_summary()),
        "NextToken" => [String.t() | atom()]
      }
      
  """
  @type list_engagement_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      opportunity_engagement_invitation_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type opportunity_engagement_invitation_sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resource_snapshot_response() :: %{
        "Arn" => String.t() | atom(),
        "Revision" => integer()
      }
      
  """
  @type create_resource_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_engagement_from_opportunity_task_response() :: %{
        "EngagementId" => String.t() | atom(),
        "EngagementInvitationId" => String.t() | atom(),
        "Message" => [String.t() | atom()],
        "OpportunityId" => String.t() | atom(),
        "ReasonCode" => list(any()),
        "ResourceSnapshotJobId" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "TaskArn" => String.t() | atom(),
        "TaskId" => String.t() | atom(),
        "TaskStatus" => list(any())
      }
      
  """
  @type start_engagement_from_opportunity_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project() :: %{
        "AdditionalComments" => [String.t() | atom()],
        "ApnPrograms" => list([String.t() | atom()]()),
        "CompetitorName" => list(any()),
        "CustomerBusinessProblem" => String.t() | atom(),
        "CustomerUseCase" => [String.t() | atom()],
        "DeliveryModels" => list(list(any())()),
        "ExpectedCustomerSpend" => list(expected_customer_spend()),
        "OtherCompetitorNames" => [String.t() | atom()],
        "OtherSolutionDescription" => String.t() | atom(),
        "RelatedOpportunityIdentifier" => String.t() | atom(),
        "SalesActivities" => list(list(any())()),
        "Title" => String.t() | atom()
      }
      
  """
  @type project() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_by_accepting_invitation_task_summary() :: %{
        "EngagementInvitationId" => String.t() | atom(),
        "Message" => [String.t() | atom()],
        "OpportunityId" => String.t() | atom(),
        "ReasonCode" => list(any()),
        "ResourceSnapshotJobId" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "TaskArn" => String.t() | atom(),
        "TaskId" => String.t() | atom(),
        "TaskStatus" => list(any())
      }
      
  """
  @type list_engagement_by_accepting_invitation_task_summary() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_engagement_request() :: %{
        optional("Contexts") => list(engagement_context_details()),
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => [String.t() | atom()],
        required("Description") => String.t() | atom(),
        required("Title") => String.t() | atom()
      }
      
  """
  @type create_engagement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_opportunities_request() :: %{
        optional("CustomerCompanyName") => list([String.t() | atom()]()),
        optional("Identifier") => list(String.t() | atom()),
        optional("LastModifiedDate") => last_modified_date(),
        optional("LifeCycleReviewStatus") => list(list(any())()),
        optional("LifeCycleStage") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("Sort") => opportunity_sort(),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_opportunities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_selling_system_settings_response() :: %{
        "Catalog" => String.t() | atom(),
        "ResourceSnapshotJobRoleArn" => String.t() | atom()
      }
      
  """
  @type get_selling_system_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_snapshot_request() :: %{
        optional("Revision") => integer(),
        required("Catalog") => String.t() | atom(),
        required("EngagementIdentifier") => String.t() | atom(),
        required("ResourceIdentifier") => String.t() | atom(),
        required("ResourceSnapshotTemplateIdentifier") => String.t() | atom(),
        required("ResourceType") => list(any())
      }
      
  """
  @type get_resource_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      profile_next_steps_history() :: %{
        "Time" => non_neg_integer(),
        "Value" => [String.t() | atom()]
      }
      
  """
  @type profile_next_steps_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resource_snapshot_job_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }
      
  """
  @type create_resource_snapshot_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sender_contact() :: %{
        "BusinessTitle" => String.t() | atom(),
        "Email" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom(),
        "Phone" => String.t() | atom()
      }
      
  """
  @type sender_contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account() :: %{
        "Address" => address(),
        "AwsAccountId" => String.t() | atom(),
        "CompanyName" => String.t() | atom(),
        "Duns" => String.t() | atom(),
        "Industry" => list(any()),
        "OtherIndustry" => [String.t() | atom()],
        "WebsiteUrl" => String.t() | atom()
      }
      
  """
  @type account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      opportunity_invitation_payload() :: %{
        "Customer" => engagement_customer(),
        "Project" => project_details(),
        "ReceiverResponsibilities" => list(list(any())()),
        "SenderContacts" => list(sender_contact())
      }
      
  """
  @type opportunity_invitation_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_opportunity_request() :: %{
        optional("Visibility") => list(any()),
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom(),
        required("InvolvementType") => list(any())
      }
      
  """
  @type submit_opportunity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expected_customer_spend() :: %{
        "Amount" => [String.t() | atom()],
        "CurrencyCode" => list(any()),
        "EstimationUrl" => String.t() | atom(),
        "Frequency" => list(any()),
        "TargetCompany" => [String.t() | atom()]
      }
      
  """
  @type expected_customer_spend() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      life_cycle_summary() :: %{
        "ClosedLostReason" => list(any()),
        "NextSteps" => String.t() | atom(),
        "ReviewComments" => [String.t() | atom()],
        "ReviewStatus" => list(any()),
        "ReviewStatusReason" => [String.t() | atom()],
        "Stage" => list(any()),
        "TargetCloseDate" => String.t() | atom()
      }
      
  """
  @type life_cycle_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_engagement_invitation_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_engagement_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_invitations_request() :: %{
        optional("EngagementIdentifier") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("PayloadType") => list(list(any())()),
        optional("SenderAwsAccountId") => list(String.t() | atom()),
        optional("Sort") => opportunity_engagement_invitation_sort(),
        optional("Status") => list(list(any())()),
        required("Catalog") => String.t() | atom(),
        required("ParticipantType") => list(any())
      }
      
  """
  @type list_engagement_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resource_snapshot_job_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ResourceSnapshotJobIdentifier") => String.t() | atom()
      }
      
  """
  @type delete_resource_snapshot_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_summary() :: %{
        "Address" => address_summary(),
        "CompanyName" => String.t() | atom(),
        "Industry" => list(any()),
        "OtherIndustry" => [String.t() | atom()],
        "WebsiteUrl" => String.t() | atom()
      }
      
  """
  @type account_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_opportunity_response() :: %{
        "Id" => String.t() | atom(),
        "LastModifiedDate" => non_neg_integer()
      }
      
  """
  @type update_opportunity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      marketing() :: %{
        "AwsFundingUsed" => list(any()),
        "CampaignName" => [String.t() | atom()],
        "Channels" => list(list(any())()),
        "Source" => list(any()),
        "UseCases" => list([String.t() | atom()]())
      }
      
  """
  @type marketing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_solutions_response() :: %{
        "NextToken" => [String.t() | atom()],
        "SolutionSummaries" => list(solution_base())
      }
      
  """
  @type list_solutions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_selling_system_settings_request() :: %{
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type get_selling_system_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_details() :: %{
        "BusinessProblem" => String.t() | atom(),
        "ExpectedCustomerSpend" => list(expected_customer_spend()),
        "TargetCompletionDate" => String.t() | atom(),
        "Title" => [String.t() | atom()]
      }
      
  """
  @type project_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_opportunity_request() :: %{
        optional("Customer") => customer(),
        optional("LifeCycle") => life_cycle(),
        optional("Marketing") => marketing(),
        optional("NationalSecurity") => list(any()),
        optional("OpportunityTeam") => list(contact()),
        optional("OpportunityType") => list(any()),
        optional("Origin") => list(any()),
        optional("PartnerOpportunityIdentifier") => [String.t() | atom()],
        optional("PrimaryNeedsFromAws") => list(list(any())()),
        optional("Project") => project(),
        optional("SoftwareRevenue") => software_revenue(),
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => [String.t() | atom()]
      }
      
  """
  @type create_opportunity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "BusinessTitle" => String.t() | atom(),
        "Email" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom(),
        "Phone" => String.t() | atom()
      }
      
  """
  @type contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sort_object() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type sort_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      software_revenue() :: %{
        "DeliveryModel" => list(any()),
        "EffectiveDate" => String.t() | atom(),
        "ExpirationDate" => String.t() | atom(),
        "Value" => monetary_value()
      }
      
  """
  @type software_revenue() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      opportunity_summary() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedDate" => non_neg_integer(),
        "Customer" => customer_summary(),
        "Id" => String.t() | atom(),
        "LastModifiedDate" => non_neg_integer(),
        "LifeCycle" => life_cycle_summary(),
        "OpportunityType" => list(any()),
        "PartnerOpportunityIdentifier" => [String.t() | atom()],
        "Project" => project_summary()
      }
      
  """
  @type opportunity_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_opportunities_response() :: %{
        "NextToken" => [String.t() | atom()],
        "OpportunitySummaries" => list(opportunity_summary())
      }
      
  """
  @type list_opportunities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement_member_summary() :: %{
        "CompanyName" => String.t() | atom(),
        "WebsiteUrl" => [String.t() | atom()]
      }
      
  """
  @type engagement_member_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tasks_sort_base() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type list_tasks_sort_base() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customer_summary() :: %{
        "Account" => account_summary()
      }
      
  """
  @type customer_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resource_snapshot_jobs_response() :: %{
        "NextToken" => [String.t() | atom()],
        "ResourceSnapshotJobSummaries" => list(resource_snapshot_job_summary())
      }
      
  """
  @type list_resource_snapshot_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      address_summary() :: %{
        "City" => String.t() | atom(),
        "CountryCode" => list(any()),
        "PostalCode" => String.t() | atom(),
        "StateOrRegion" => String.t() | atom()
      }
      
  """
  @type address_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_engagement_invitation_request() :: %{
        optional("RejectionReason") => String.t() | atom(),
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type reject_engagement_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_engagement_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }
      
  """
  @type create_engagement_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_resource_associations_response() :: %{
        "EngagementResourceAssociationSummaries" => list(engagement_resource_association_summary()),
        "NextToken" => [String.t() | atom()]
      }
      
  """
  @type list_engagement_resource_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_engagement_from_opportunity_task_request() :: %{
        optional("Tags") => list(tag()),
        required("AwsSubmission") => aws_submission(),
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type start_engagement_from_opportunity_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_snapshot_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreatedBy" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceSnapshotTemplateName" => String.t() | atom(),
        "ResourceType" => list(any()),
        "Revision" => integer()
      }
      
  """
  @type resource_snapshot_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_engagement_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_engagement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      aws_opportunity_life_cycle() :: %{
        "ClosedLostReason" => list(any()),
        "NextSteps" => String.t() | atom(),
        "NextStepsHistory" => list(profile_next_steps_history()),
        "Stage" => list(any()),
        "TargetCloseDate" => String.t() | atom()
      }
      
  """
  @type aws_opportunity_life_cycle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MemberCount" => [integer()],
        "Title" => String.t() | atom()
      }
      
  """
  @type engagement_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_error() :: %{
        "Code" => list(any()),
        "FieldName" => [String.t() | atom()],
        "Message" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_resource_snapshot_job_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ResourceSnapshotJobIdentifier") => String.t() | atom()
      }
      
  """
  @type start_resource_snapshot_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resource_snapshot_jobs_request() :: %{
        optional("EngagementIdentifier") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("Sort") => sort_object(),
        optional("Status") => list(any()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_resource_snapshot_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_from_opportunity_tasks_response() :: %{
        "NextToken" => [String.t() | atom()],
        "TaskSummaries" => list(list_engagement_from_opportunity_task_summary())
      }
      
  """
  @type list_engagement_from_opportunity_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resource_snapshot_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("EngagementIdentifier") => String.t() | atom(),
        required("ResourceIdentifier") => String.t() | atom(),
        required("ResourceSnapshotTemplateIdentifier") => String.t() | atom(),
        required("ResourceType") => list(any())
      }
      
  """
  @type create_resource_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "ErrorList" => list(validation_exception_error()),
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customer_projects_context() :: %{
        "Customer" => engagement_customer(),
        "Project" => engagement_customer_project_details()
      }
      
  """
  @type customer_projects_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_snapshot_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => String.t() | atom(),
        "EngagementId" => String.t() | atom(),
        "Payload" => list(),
        "ResourceId" => String.t() | atom(),
        "ResourceSnapshotTemplateName" => String.t() | atom(),
        "ResourceType" => list(any()),
        "Revision" => integer()
      }
      
  """
  @type get_resource_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_engagement_invitation_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type accept_engagement_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_resource_snapshot_job_request() :: %{
        optional("Tags") => list(tag()),
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("EngagementIdentifier") => String.t() | atom(),
        required("ResourceIdentifier") => String.t() | atom(),
        required("ResourceSnapshotTemplateIdentifier") => String.t() | atom(),
        required("ResourceType") => list(any())
      }
      
  """
  @type create_resource_snapshot_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      next_steps_history() :: %{
        "Time" => non_neg_integer(),
        "Value" => [String.t() | atom()]
      }
      
  """
  @type next_steps_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_customer() :: %{
        "Contacts" => list(contact())
      }
      
  """
  @type aws_opportunity_customer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_engagement_invitation_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }
      
  """
  @type create_engagement_invitation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_receiver() :: %{
        "Alias" => String.t() | atom(),
        "AwsAccountId" => String.t() | atom()
      }
      
  """
  @type account_receiver() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      assignee_contact() :: %{
        "BusinessTitle" => String.t() | atom(),
        "Email" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom()
      }
      
  """
  @type assignee_contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_opportunity_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("OpportunityIdentifier") => String.t() | atom(),
        required("RelatedEntityIdentifier") => [String.t() | atom()],
        required("RelatedEntityType") => list(any())
      }
      
  """
  @type disassociate_opportunity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement_customer_project_details() :: %{
        "BusinessProblem" => String.t() | atom(),
        "TargetCompletionDate" => [String.t() | atom()],
        "Title" => String.t() | atom()
      }
      
  """
  @type engagement_customer_project_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monetary_value() :: %{
        "Amount" => [String.t() | atom()],
        "CurrencyCode" => list(any())
      }
      
  """
  @type monetary_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      address() :: %{
        "City" => String.t() | atom(),
        "CountryCode" => list(any()),
        "PostalCode" => String.t() | atom(),
        "StateOrRegion" => String.t() | atom(),
        "StreetAddress" => String.t() | atom()
      }
      
  """
  @type address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      solution_base() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "Category" => [String.t() | atom()],
        "CreatedDate" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "Name" => [String.t() | atom()],
        "Status" => list(any())
      }
      
  """
  @type solution_base() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_snapshot_job_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ResourceSnapshotJobIdentifier") => String.t() | atom()
      }
      
  """
  @type get_resource_snapshot_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement_resource_association_summary() :: %{
        "Catalog" => String.t() | atom(),
        "CreatedBy" => String.t() | atom(),
        "EngagementId" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any())
      }
      
  """
  @type engagement_resource_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_engagement_invitation_response() :: %{
        "Arn" => [String.t() | atom()],
        "Catalog" => String.t() | atom(),
        "EngagementDescription" => String.t() | atom(),
        "EngagementId" => String.t() | atom(),
        "EngagementTitle" => String.t() | atom(),
        "ExistingMembers" => list(engagement_member_summary()),
        "ExpirationDate" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "InvitationDate" => non_neg_integer(),
        "InvitationMessage" => String.t() | atom(),
        "Payload" => list(),
        "PayloadType" => list(any()),
        "Receiver" => list(),
        "RejectionReason" => String.t() | atom(),
        "SenderAwsAccountId" => String.t() | atom(),
        "SenderCompanyName" => [String.t() | atom()],
        "Status" => list(any())
      }
      
  """
  @type get_engagement_invitation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      opportunity_summary_view() :: %{
        "Customer" => customer(),
        "Lifecycle" => life_cycle_for_view(),
        "OpportunityTeam" => list(contact()),
        "OpportunityType" => list(any()),
        "PrimaryNeedsFromAws" => list(list(any())()),
        "Project" => project_view(),
        "RelatedEntityIdentifiers" => related_entity_identifiers()
      }
      
  """
  @type opportunity_summary_view() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagements_request() :: %{
        optional("CreatedBy") => list(String.t() | atom()),
        optional("EngagementIdentifier") => list(String.t() | atom()),
        optional("ExcludeCreatedBy") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("Sort") => engagement_sort(),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_engagements_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_engagement_response() :: %{
        "Arn" => String.t() | atom(),
        "Contexts" => list(engagement_context_details()),
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MemberCount" => [integer()],
        "Title" => String.t() | atom()
      }
      
  """
  @type get_engagement_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_opportunity_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_opportunity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagement_from_opportunity_task_summary() :: %{
        "EngagementId" => String.t() | atom(),
        "EngagementInvitationId" => String.t() | atom(),
        "Message" => [String.t() | atom()],
        "OpportunityId" => String.t() | atom(),
        "ReasonCode" => list(any()),
        "ResourceSnapshotJobId" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "TaskArn" => String.t() | atom(),
        "TaskId" => String.t() | atom(),
        "TaskStatus" => list(any())
      }
      
  """
  @type list_engagement_from_opportunity_task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_submission() :: %{
        "InvolvementType" => list(any()),
        "Visibility" => list(any())
      }
      
  """
  @type aws_submission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_snapshot_job_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "EngagementId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastFailure" => [String.t() | atom()],
        "LastSuccessfulExecutionDate" => non_neg_integer(),
        "ResourceArn" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceSnapshotTemplateName" => String.t() | atom(),
        "ResourceType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type get_resource_snapshot_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_engagement_by_accepting_invitation_task_request() :: %{
        optional("Tags") => list(tag()),
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type start_engagement_by_accepting_invitation_task_request() :: %{
          (String.t() | atom()) => any()
        }

  @type accept_engagement_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type assign_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type associate_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_engagement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_engagement_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_resource_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_resource_snapshot_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_snapshot_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_aws_opportunity_summary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_engagement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_engagement_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_resource_snapshot_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_selling_system_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_engagement_by_accepting_invitation_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_engagement_from_opportunity_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_engagement_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_engagement_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_engagement_resource_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_engagements_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_opportunities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_resource_snapshot_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_resource_snapshots_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_solutions_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_selling_system_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type reject_engagement_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_engagement_by_accepting_invitation_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_engagement_from_opportunity_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_resource_snapshot_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type stop_resource_snapshot_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type submit_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "partnercentral-selling",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "PartnerCentral Selling",
      signature_version: "v4",
      signing_name: "partnercentral-selling",
      target_prefix: "AWSPartnerCentralSelling"
    }
  end

  @doc """
  Use the `AcceptEngagementInvitation` action to accept an engagement invitation
  shared by AWS.

  Accepting the invitation indicates your willingness to participate in the
  engagement, granting you access to all engagement-related data.
  """
  @spec accept_engagement_invitation(map(), accept_engagement_invitation_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_engagement_invitation_errors()}
  def accept_engagement_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptEngagementInvitation", input, options)
  end

  @doc """
  Enables you to reassign an existing `Opportunity` to another user within your
  Partner Central account.

  The specified user receives the opportunity, and it appears on their Partner
  Central dashboard, allowing them to take necessary actions or proceed with the
  opportunity.

  This is useful for distributing opportunities to the appropriate team members or
  departments within your organization, ensuring that each opportunity is handled
  by the right person. By default, the opportunity owner is the one who creates
  it. Currently, there's no API to enumerate the list of available users.
  """
  @spec assign_opportunity(map(), assign_opportunity_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assign_opportunity_errors()}
  def assign_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssignOpportunity", input, options)
  end

  @doc """
  Enables you to create a formal association between an `Opportunity` and various
  related entities, enriching the context and details of the opportunity for
  better collaboration and decision making.

  You can associate an opportunity with the following entity types:

    * Partner Solution: A software product or consulting practice
  created and delivered by Partners. Partner Solutions help customers address
  business challenges using Amazon Web Services services.

    * Amazon Web Services Products: Amazon Web Services offers many
  products and services that provide scalable, reliable, and cost-effective
  infrastructure solutions. For the latest list of Amazon Web Services products,
  see [Amazon Web Services products](https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json).

    * Amazon Web Services Marketplace private offer: Allows Amazon Web
  Services Marketplace sellers to extend custom pricing and terms to individual
  Amazon Web Services customers. Sellers can negotiate custom prices, payment
  schedules, and end user license terms through private offers, enabling Amazon
  Web Services customers to acquire software solutions tailored to their specific
  needs. For more information, see [Private offers in Amazon Web Services Marketplace](https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-private-offers.html).

  To obtain identifiers for these entities, use the following methods:

    * Solution: Use the `ListSolutions` operation.

    * AWS Products: For the latest list of Amazon Web Services products,
  see [Amazon Web Services products](https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json).

    * Amazon Web Services Marketplace private offer: Use the [Using the Amazon Web Services Marketplace Catalog
  API](https://docs.aws.amazon.com/marketplace/latest/APIReference/catalog-apis.html)
  to list entities. Specifically, use the `ListEntities` operation to retrieve a
  list of private offers. The request returns the details of available private
  offers. For more information, see
  [ListEntities](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html).
  """
  @spec associate_opportunity(map(), associate_opportunity_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_opportunity_errors()}
  def associate_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateOpportunity", input, options)
  end

  @doc """
  The `CreateEngagement` action allows you to create an `Engagement`, which serves
  as a collaborative space between different parties such as AWS Partners and AWS
  Sellers.

  This action automatically adds the caller's AWS account as an active member of
  the newly created `Engagement`.
  """
  @spec create_engagement(map(), create_engagement_request(), list()) ::
          {:ok, create_engagement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_engagement_errors()}
  def create_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEngagement", input, options)
  end

  @doc """
  This action creates an invitation from a sender to a single receiver to join an
  engagement.
  """
  @spec create_engagement_invitation(map(), create_engagement_invitation_request(), list()) ::
          {:ok, create_engagement_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_engagement_invitation_errors()}
  def create_engagement_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEngagementInvitation", input, options)
  end

  @doc """
  Creates an `Opportunity` record in Partner Central.

  Use this operation to create a potential business opportunity for submission to
  Amazon Web Services. Creating an opportunity sets `Lifecycle.ReviewStatus` to
  `Pending Submission`.

  To submit an opportunity, follow these steps:

    1. To create the opportunity, use `CreateOpportunity`.

    2. To associate a solution with the opportunity, use
  `AssociateOpportunity`.

    3. To start the engagement with AWS, use
  `StartEngagementFromOpportunity`.

  After submission, you can't edit the opportunity until the review is complete.
  But opportunities in the `Pending Submission` state must have complete details.
  You can update the opportunity while it's in the `Pending Submission` state.

  There's a set of mandatory fields to create opportunities, but consider
  providing optional fields to enrich the opportunity record.
  """
  @spec create_opportunity(map(), create_opportunity_request(), list()) ::
          {:ok, create_opportunity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_opportunity_errors()}
  def create_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOpportunity", input, options)
  end

  @doc """
  This action allows you to create an immutable snapshot of a specific resource,
  such as an opportunity, within the context of an engagement.

  The snapshot captures a subset of the resource's data based on the schema
  defined by the provided template.
  """
  @spec create_resource_snapshot(map(), create_resource_snapshot_request(), list()) ::
          {:ok, create_resource_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resource_snapshot_errors()}
  def create_resource_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResourceSnapshot", input, options)
  end

  @doc """
  Use this action to create a job to generate a snapshot of the specified resource
  within an engagement.

  It initiates an asynchronous process to create a resource snapshot. The job
  creates a new snapshot only if the resource state has changed, adhering to the
  same access control and immutability rules as direct snapshot creation.
  """
  @spec create_resource_snapshot_job(map(), create_resource_snapshot_job_request(), list()) ::
          {:ok, create_resource_snapshot_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resource_snapshot_job_errors()}
  def create_resource_snapshot_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResourceSnapshotJob", input, options)
  end

  @doc """
  Use this action to deletes a previously created resource snapshot job.

  The job must be in a stopped state before it can be deleted.
  """
  @spec delete_resource_snapshot_job(map(), delete_resource_snapshot_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_snapshot_job_errors()}
  def delete_resource_snapshot_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceSnapshotJob", input, options)
  end

  @doc """
  Allows you to remove an existing association between an `Opportunity` and
  related entities, such as a Partner Solution, Amazon Web Services product, or an
  Amazon Web Services Marketplace offer.

  This operation is the counterpart to `AssociateOpportunity`, and it provides
  flexibility to manage associations as business needs change.

  Use this operation to update the associations of an `Opportunity` due to changes
  in the related entities, or if an association was made in error. Ensuring
  accurate associations helps maintain clarity and accuracy to track and manage
  business opportunities. When you replace an entity, first attach the new entity
  and then disassociate the one to be removed, especially if it's the last
  remaining entity that's required.
  """
  @spec disassociate_opportunity(map(), disassociate_opportunity_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_opportunity_errors()}
  def disassociate_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateOpportunity", input, options)
  end

  @doc """
  Retrieves a summary of an AWS Opportunity.

  This summary includes high-level details about the opportunity sourced from AWS,
  such as lifecycle information, customer details, and involvement type. It is
  useful for tracking updates on the AWS opportunity corresponding to an
  opportunity in the partner's account.
  """
  @spec get_aws_opportunity_summary(map(), get_aws_opportunity_summary_request(), list()) ::
          {:ok, get_aws_opportunity_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aws_opportunity_summary_errors()}
  def get_aws_opportunity_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAwsOpportunitySummary", input, options)
  end

  @doc """
  Use this action to retrieve the engagement record for a given
  `EngagementIdentifier`.
  """
  @spec get_engagement(map(), get_engagement_request(), list()) ::
          {:ok, get_engagement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_engagement_errors()}
  def get_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEngagement", input, options)
  end

  @doc """
  Retrieves the details of an engagement invitation shared by AWS with a partner.

  The information includes aspects such as customer, project details, and
  lifecycle information. To connect an engagement invitation with an opportunity,
  match the invitation’s `Payload.Project.Title` with opportunity `Project.Title`.
  """
  @spec get_engagement_invitation(map(), get_engagement_invitation_request(), list()) ::
          {:ok, get_engagement_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_engagement_invitation_errors()}
  def get_engagement_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEngagementInvitation", input, options)
  end

  @doc """
  Fetches the `Opportunity` record from Partner Central by a given `Identifier`.

  Use the `ListOpportunities` action or the event notification (from Amazon
  EventBridge) to obtain this identifier.
  """
  @spec get_opportunity(map(), get_opportunity_request(), list()) ::
          {:ok, get_opportunity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_opportunity_errors()}
  def get_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpportunity", input, options)
  end

  @doc """
  Use this action to retrieve a specific snapshot record.
  """
  @spec get_resource_snapshot(map(), get_resource_snapshot_request(), list()) ::
          {:ok, get_resource_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_snapshot_errors()}
  def get_resource_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceSnapshot", input, options)
  end

  @doc """
  Use this action to retrieves information about a specific resource snapshot job.
  """
  @spec get_resource_snapshot_job(map(), get_resource_snapshot_job_request(), list()) ::
          {:ok, get_resource_snapshot_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_snapshot_job_errors()}
  def get_resource_snapshot_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceSnapshotJob", input, options)
  end

  @doc """
  Retrieves the currently set system settings, which include the IAM Role used for
  resource snapshot jobs.
  """
  @spec get_selling_system_settings(map(), get_selling_system_settings_request(), list()) ::
          {:ok, get_selling_system_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_selling_system_settings_errors()}
  def get_selling_system_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSellingSystemSettings", input, options)
  end

  @doc """
  Lists all in-progress, completed, or failed
  StartEngagementByAcceptingInvitationTask tasks that were initiated by the
  caller's account.
  """
  @spec list_engagement_by_accepting_invitation_tasks(
          map(),
          list_engagement_by_accepting_invitation_tasks_request(),
          list()
        ) ::
          {:ok, list_engagement_by_accepting_invitation_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engagement_by_accepting_invitation_tasks_errors()}
  def list_engagement_by_accepting_invitation_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagementByAcceptingInvitationTasks", input, options)
  end

  @doc """
  Lists all in-progress, completed, or failed `EngagementFromOpportunity` tasks
  that were initiated by the caller's account.
  """
  @spec list_engagement_from_opportunity_tasks(
          map(),
          list_engagement_from_opportunity_tasks_request(),
          list()
        ) ::
          {:ok, list_engagement_from_opportunity_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engagement_from_opportunity_tasks_errors()}
  def list_engagement_from_opportunity_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagementFromOpportunityTasks", input, options)
  end

  @doc """
  Retrieves a list of engagement invitations sent to the partner.

  This allows partners to view all pending or past engagement invitations, helping
  them track opportunities shared by AWS.
  """
  @spec list_engagement_invitations(map(), list_engagement_invitations_request(), list()) ::
          {:ok, list_engagement_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engagement_invitations_errors()}
  def list_engagement_invitations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagementInvitations", input, options)
  end

  @doc """
  Retrieves the details of member partners in an Engagement.

  This operation can only be invoked by members of the Engagement. The
  `ListEngagementMembers` operation allows you to fetch information about the
  members of a specific Engagement. This action is restricted to members of the
  Engagement being queried.
  """
  @spec list_engagement_members(map(), list_engagement_members_request(), list()) ::
          {:ok, list_engagement_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engagement_members_errors()}
  def list_engagement_members(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagementMembers", input, options)
  end

  @doc """
  Lists the associations between resources and engagements where the caller is a
  member and has at least one snapshot in the engagement.
  """
  @spec list_engagement_resource_associations(
          map(),
          list_engagement_resource_associations_request(),
          list()
        ) ::
          {:ok, list_engagement_resource_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engagement_resource_associations_errors()}
  def list_engagement_resource_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagementResourceAssociations", input, options)
  end

  @doc """
  This action allows users to retrieve a list of Engagement records from Partner
  Central.

  This action can be used to manage and track various engagements across different
  stages of the partner selling process.
  """
  @spec list_engagements(map(), list_engagements_request(), list()) ::
          {:ok, list_engagements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engagements_errors()}
  def list_engagements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagements", input, options)
  end

  @doc """
  This request accepts a list of filters that retrieve opportunity subsets as well
  as sort options.

  This feature is available to partners from [Partner Central](https://partnercentral.awspartner.com/) using the `ListOpportunities`
  API action.

  To synchronize your system with Amazon Web Services, only list the opportunities
  that were newly created or updated. We recommend you rely on events emitted by
  the service into your Amazon Web Services account’s Amazon EventBridge default
  event bus, you can also use the `ListOpportunities` action.

  We recommend the following approach:

    1. Find the latest `LastModifiedDate` that you stored, and only use
  the values that came from Amazon Web Services. Don’t use values generated by
  your system.

    2. When you send a `ListOpportunities` request, submit the date in
  ISO 8601 format in the `AfterLastModifiedDate` filter.

    3. Amazon Web Services only returns opportunities created or updated
  on or after that date and time. Use `NextToken` to iterate over all pages.
  """
  @spec list_opportunities(map(), list_opportunities_request(), list()) ::
          {:ok, list_opportunities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_opportunities_errors()}
  def list_opportunities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpportunities", input, options)
  end

  @doc """
  Lists resource snapshot jobs owned by the customer.

  This operation supports various filtering scenarios, including listing all jobs
  owned by the caller, jobs for a specific engagement, jobs with a specific
  status, or any combination of these filters.
  """
  @spec list_resource_snapshot_jobs(map(), list_resource_snapshot_jobs_request(), list()) ::
          {:ok, list_resource_snapshot_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_snapshot_jobs_errors()}
  def list_resource_snapshot_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceSnapshotJobs", input, options)
  end

  @doc """
  Retrieves a list of resource view snapshots based on specified criteria.

  This operation supports various use cases, including:

    * Fetching all snapshots associated with an engagement.

    * Retrieving snapshots of a specific resource type within an
  engagement.

    * Obtaining snapshots for a particular resource using a specified
  template.

    * Accessing the latest snapshot of a resource within an engagement.

    * Filtering snapshots by resource owner.
  """
  @spec list_resource_snapshots(map(), list_resource_snapshots_request(), list()) ::
          {:ok, list_resource_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_snapshots_errors()}
  def list_resource_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceSnapshots", input, options)
  end

  @doc """
  Retrieves a list of Partner Solutions that the partner registered on Partner
  Central.

  This API is used to generate a list of solutions that an end user selects from
  for association with an opportunity.
  """
  @spec list_solutions(map(), list_solutions_request(), list()) ::
          {:ok, list_solutions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_solutions_errors()}
  def list_solutions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSolutions", input, options)
  end

  @doc """
  Returns a list of tags for a resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Updates the currently set system settings, which include the IAM Role used for
  resource snapshot jobs.
  """
  @spec put_selling_system_settings(map(), put_selling_system_settings_request(), list()) ::
          {:ok, put_selling_system_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_selling_system_settings_errors()}
  def put_selling_system_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutSellingSystemSettings", input, options)
  end

  @doc """
  This action rejects an `EngagementInvitation` that AWS shared.

  Rejecting an invitation indicates that the partner doesn't want to pursue the
  opportunity, and all related data will become inaccessible thereafter.
  """
  @spec reject_engagement_invitation(map(), reject_engagement_invitation_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_engagement_invitation_errors()}
  def reject_engagement_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectEngagementInvitation", input, options)
  end

  @doc """
  This action starts the engagement by accepting an `EngagementInvitation`.

  The task is asynchronous and involves the following steps: accepting the
  invitation, creating an opportunity in the partner’s account from the AWS
  opportunity, and copying details for tracking. When completed, an `Opportunity
  Created` event is generated, indicating that the opportunity has been
  successfully created in the partner's account.
  """
  @spec start_engagement_by_accepting_invitation_task(
          map(),
          start_engagement_by_accepting_invitation_task_request(),
          list()
        ) ::
          {:ok, start_engagement_by_accepting_invitation_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_engagement_by_accepting_invitation_task_errors()}
  def start_engagement_by_accepting_invitation_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEngagementByAcceptingInvitationTask", input, options)
  end

  @doc """
  This action initiates the engagement process from an existing opportunity by
  accepting the engagement invitation and creating a corresponding opportunity in
  the partner’s system.

  Similar to `StartEngagementByAcceptingInvitationTask`, this action is
  asynchronous and performs multiple steps before completion.
  """
  @spec start_engagement_from_opportunity_task(
          map(),
          start_engagement_from_opportunity_task_request(),
          list()
        ) ::
          {:ok, start_engagement_from_opportunity_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_engagement_from_opportunity_task_errors()}
  def start_engagement_from_opportunity_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEngagementFromOpportunityTask", input, options)
  end

  @doc """
  Starts a resource snapshot job that has been previously created.
  """
  @spec start_resource_snapshot_job(map(), start_resource_snapshot_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_resource_snapshot_job_errors()}
  def start_resource_snapshot_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartResourceSnapshotJob", input, options)
  end

  @doc """
  Stops a resource snapshot job.

  The job must be started prior to being stopped.
  """
  @spec stop_resource_snapshot_job(map(), stop_resource_snapshot_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_resource_snapshot_job_errors()}
  def stop_resource_snapshot_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopResourceSnapshotJob", input, options)
  end

  @doc """
  Use this action to submit an Opportunity that was previously created by partner
  for AWS review.

  After you perform this action, the Opportunity becomes non-editable until it is
  reviewed by AWS and has ` LifeCycle.ReviewStatus ` as either `Approved` or
  `Action Required`.
  """
  @spec submit_opportunity(map(), submit_opportunity_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, submit_opportunity_errors()}
  def submit_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitOpportunity", input, options)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag or tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the `Opportunity` record identified by a given `Identifier`.

  This operation allows you to modify the details of an existing opportunity to
  reflect the latest information and progress. Use this action to keep the
  opportunity record up-to-date and accurate.

  When you perform updates, include the entire payload with each request. If any
  field is omitted, the API assumes that the field is set to `null`. The best
  practice is to always perform a `GetOpportunity` to retrieve the latest values,
  then send the complete payload with the updated values to be changed.
  """
  @spec update_opportunity(map(), update_opportunity_request(), list()) ::
          {:ok, update_opportunity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_opportunity_errors()}
  def update_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateOpportunity", input, options)
  end
end
