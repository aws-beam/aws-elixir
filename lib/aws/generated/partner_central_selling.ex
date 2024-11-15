# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PartnerCentralSelling do
  @moduledoc """
  AWS Partner Central API for Selling

  ## AWS Partner Central API for Selling Reference Guide

  Amazon Web Services (AWS) Partner Central API reference guide is designed to
  help
  [AWS Partners](https://docs.aws.amazon.com/partners/programs/) programmatically integrate their Customer Relationship Management (CRM) systems with AWS Partner
  Central.

  Through the Partner Central APIs, partners can automate and streamline their
  interactions with AWS Partner Central, ensuring a more efficient and effective
  engagement in joint business activities.

  The AWS Partner Central API service provides standard AWS API functionality. You
  can directly use the API
  [Actions](https://docs.aws.amazon.com/partner-central/latest/selling-api/API_Operations.html),
  or you can use an AWS SDK to access an API that's tailored to the programming
  language or platform that you're using. For more information about AWS
  application development, see [Getting Started with AWS](https://docs.aws.amazon.com/getting-started). For more information about
  using AWS SDKs, see [AWS SDKs](https://docs.aws.amazon.com/aws-sdk).

  ## Features offered by AWS Partner Central API

    1.

  **Opportunity management:** Facilitates the management of co-selling
  opportunities with AWS using API actions such as `CreateOpportunity`,
  `UpdateOpportunity`, `ListOpportunities`, `GetOpportunity`, and
  `AssignOpportunity`.

    2.

  **AWS referral management:** Facilitates receiving referrals shared by AWS using
  actions like `ListEngagementInvitations`, `GetEngagementInvitation`,
  `StartEngagementByAcceptingInvitation`, and `RejectEngagementInvitation`.

    3.

  **Entity association:** Associate related entities such as *AWS Products*,
  *Partner Solutions*, and *AWS Marketplace Private Offers* with opportunities
  using the actions `AssociateOpportunity` and `DisassociateOpportunity`.

    4.

  **View AWS opportunity details:** Use the `GetAWSOpportunitySummary` action to
  retrieve real-time summaries of AWS opportunities that are linked to your
  opportunities.

    5.

  **List solutions:** Provides list APIs for listing solutions partners offer
  using `ListSolutions`.

    6.

  **Event subscription:** Partners can subscribe to real-time updates on
  opportunities by listening to events such as *Opportunity Created*, *Opportunity
  Updated*, *Engagement Invitation Accepted*, *Engagement Invitation Rejected* and
  *Engagement Invitation Created* using AWS EventBridge.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      opportunity_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type opportunity_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      life_cycle() :: %{
        "ClosedLostReason" => list(any()),
        "NextSteps" => String.t(),
        "NextStepsHistory" => list(next_steps_history()()),
        "ReviewComments" => [String.t()],
        "ReviewStatus" => list(any()),
        "ReviewStatusReason" => [String.t()],
        "Stage" => list(any()),
        "TargetCloseDate" => String.t()
      }
      
  """
  @type life_cycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_opportunity_request() :: %{
        required("Assignee") => assignee_contact(),
        required("Catalog") => String.t(),
        required("Identifier") => String.t()
      }
      
  """
  @type assign_opportunity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_team_member() :: %{
        "BusinessTitle" => list(any()),
        "Email" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t()
      }
      
  """
  @type aws_team_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_engagement_by_accepting_invitation_task_response() :: %{
        "EngagementInvitationId" => String.t(),
        "Message" => [String.t()],
        "OpportunityId" => String.t(),
        "ReasonCode" => list(any()),
        "StartTime" => non_neg_integer(),
        "TaskArn" => String.t(),
        "TaskId" => String.t(),
        "TaskStatus" => list(any())
      }
      
  """
  @type start_engagement_by_accepting_invitation_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engagement_invitation_summary() :: %{
        "Arn" => [String.t()],
        "Catalog" => String.t(),
        "EngagementTitle" => String.t(),
        "ExpirationDate" => non_neg_integer(),
        "Id" => String.t(),
        "InvitationDate" => non_neg_integer(),
        "PayloadType" => list(any()),
        "Receiver" => list(),
        "SenderAwsAccountId" => String.t(),
        "SenderCompanyName" => [String.t()],
        "Status" => list(any())
      }
      
  """
  @type engagement_invitation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "DeliveryModels" => list(list(any())()),
        "ExpectedCustomerSpend" => list(expected_customer_spend()())
      }
      
  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      last_modified_date() :: %{
        "AfterLastModifiedDate" => non_neg_integer(),
        "BeforeLastModifiedDate" => non_neg_integer()
      }
      
  """
  @type last_modified_date() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_related_entities() :: %{
        "AwsProducts" => list(String.t()()),
        "Solutions" => list(String.t()())
      }
      
  """
  @type aws_opportunity_related_entities() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engagement_customer() :: %{
        "CompanyName" => String.t(),
        "CountryCode" => list(any()),
        "Industry" => list(any()),
        "WebsiteUrl" => String.t()
      }
      
  """
  @type engagement_customer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aws_opportunity_summary_response() :: %{
        "Catalog" => String.t(),
        "Customer" => aws_opportunity_customer(),
        "Insights" => aws_opportunity_insights(),
        "InvolvementType" => list(any()),
        "InvolvementTypeChangeReason" => list(any()),
        "LifeCycle" => aws_opportunity_life_cycle(),
        "OpportunityTeam" => list(aws_team_member()()),
        "Origin" => list(any()),
        "Project" => aws_opportunity_project(),
        "RelatedEntityIds" => aws_opportunity_related_entities(),
        "RelatedOpportunityId" => String.t(),
        "Visibility" => list(any())
      }
      
  """
  @type get_aws_opportunity_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_insights() :: %{
        "EngagementScore" => list(any()),
        "NextBestActions" => [String.t()]
      }
      
  """
  @type aws_opportunity_insights() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_opportunity_response() :: %{
        "Catalog" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "Customer" => customer(),
        "Id" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "LifeCycle" => life_cycle(),
        "Marketing" => marketing(),
        "NationalSecurity" => list(any()),
        "OpportunityTeam" => list(contact()()),
        "OpportunityType" => list(any()),
        "PartnerOpportunityIdentifier" => [String.t()],
        "PrimaryNeedsFromAws" => list(list(any())()),
        "Project" => project(),
        "RelatedEntityIdentifiers" => related_entity_identifiers(),
        "SoftwareRevenue" => software_revenue()
      }
      
  """
  @type get_opportunity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type solution_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aws_opportunity_summary_request() :: %{
        required("Catalog") => String.t(),
        required("RelatedOpportunityIdentifier") => String.t()
      }
      
  """
  @type get_aws_opportunity_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_solutions_request() :: %{
        optional("Category") => list([String.t()]()),
        optional("Identifier") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        optional("Sort") => solution_sort(),
        optional("Status") => list(list(any())()),
        required("Catalog") => String.t()
      }
      
  """
  @type list_solutions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_project() :: %{
        "ExpectedCustomerSpend" => list(expected_customer_spend()())
      }
      
  """
  @type aws_opportunity_project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_opportunity_request() :: %{
        optional("Customer") => customer(),
        optional("LifeCycle") => life_cycle(),
        optional("Marketing") => marketing(),
        optional("NationalSecurity") => list(any()),
        optional("OpportunityType") => list(any()),
        optional("PartnerOpportunityIdentifier") => [String.t()],
        optional("PrimaryNeedsFromAws") => list(list(any())()),
        optional("Project") => project(),
        optional("SoftwareRevenue") => software_revenue(),
        required("Catalog") => String.t(),
        required("Identifier") => String.t(),
        required("LastModifiedDate") => non_neg_integer()
      }
      
  """
  @type update_opportunity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_opportunity_response() :: %{
        "Id" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "PartnerOpportunityIdentifier" => [String.t()]
      }
      
  """
  @type create_opportunity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_opportunity_request() :: %{
        required("Catalog") => String.t(),
        required("OpportunityIdentifier") => String.t(),
        required("RelatedEntityIdentifier") => [String.t()],
        required("RelatedEntityType") => list(any())
      }
      
  """
  @type associate_opportunity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      related_entity_identifiers() :: %{
        "AwsMarketplaceOffers" => list(String.t()()),
        "AwsProducts" => list(String.t()()),
        "Solutions" => list(String.t()())
      }
      
  """
  @type related_entity_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer() :: %{
        "Account" => account(),
        "Contacts" => list(contact()())
      }
      
  """
  @type customer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_engagement_invitations_response() :: %{
        "EngagementInvitationSummaries" => list(engagement_invitation_summary()()),
        "NextToken" => [String.t()]
      }
      
  """
  @type list_engagement_invitations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opportunity_engagement_invitation_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }
      
  """
  @type opportunity_engagement_invitation_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_engagement_from_opportunity_task_response() :: %{
        "Message" => [String.t()],
        "OpportunityId" => String.t(),
        "ReasonCode" => list(any()),
        "StartTime" => non_neg_integer(),
        "TaskArn" => String.t(),
        "TaskId" => String.t(),
        "TaskStatus" => list(any())
      }
      
  """
  @type start_engagement_from_opportunity_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project() :: %{
        "AdditionalComments" => [String.t()],
        "ApnPrograms" => list([String.t()]()),
        "CompetitorName" => list(any()),
        "CustomerBusinessProblem" => String.t(),
        "CustomerUseCase" => [String.t()],
        "DeliveryModels" => list(list(any())()),
        "ExpectedCustomerSpend" => list(expected_customer_spend()()),
        "OtherCompetitorNames" => [String.t()],
        "OtherSolutionDescription" => String.t(),
        "RelatedOpportunityIdentifier" => String.t(),
        "SalesActivities" => list(list(any())()),
        "Title" => String.t()
      }
      
  """
  @type project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_opportunities_request() :: %{
        optional("CustomerCompanyName") => list([String.t()]()),
        optional("Identifier") => list(String.t()()),
        optional("LastModifiedDate") => last_modified_date(),
        optional("LifeCycleReviewStatus") => list(list(any())()),
        optional("LifeCycleStage") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        optional("Sort") => opportunity_sort(),
        required("Catalog") => String.t()
      }
      
  """
  @type list_opportunities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_next_steps_history() :: %{
        "Time" => non_neg_integer(),
        "Value" => [String.t()]
      }
      
  """
  @type profile_next_steps_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sender_contact() :: %{
        "BusinessTitle" => String.t(),
        "Email" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "Phone" => String.t()
      }
      
  """
  @type sender_contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account() :: %{
        "Address" => address(),
        "AwsAccountId" => String.t(),
        "CompanyName" => String.t(),
        "Duns" => String.t(),
        "Industry" => list(any()),
        "OtherIndustry" => [String.t()],
        "WebsiteUrl" => String.t()
      }
      
  """
  @type account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opportunity_invitation_payload() :: %{
        "Customer" => engagement_customer(),
        "Project" => project_details(),
        "ReceiverResponsibilities" => list(list(any())()),
        "SenderContacts" => list(sender_contact()())
      }
      
  """
  @type opportunity_invitation_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expected_customer_spend() :: %{
        "Amount" => [String.t()],
        "CurrencyCode" => list(any()),
        "Frequency" => list(any()),
        "TargetCompany" => [String.t()]
      }
      
  """
  @type expected_customer_spend() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      life_cycle_summary() :: %{
        "ClosedLostReason" => list(any()),
        "NextSteps" => String.t(),
        "ReviewComments" => [String.t()],
        "ReviewStatus" => list(any()),
        "ReviewStatusReason" => [String.t()],
        "Stage" => list(any()),
        "TargetCloseDate" => String.t()
      }
      
  """
  @type life_cycle_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_engagement_invitation_request() :: %{
        required("Catalog") => String.t(),
        required("Identifier") => String.t()
      }
      
  """
  @type get_engagement_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_engagement_invitations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        optional("PayloadType") => list(list(any())()),
        optional("Sort") => opportunity_engagement_invitation_sort(),
        required("Catalog") => String.t(),
        required("ParticipantType") => list(any())
      }
      
  """
  @type list_engagement_invitations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_summary() :: %{
        "Address" => address_summary(),
        "CompanyName" => String.t(),
        "Industry" => list(any()),
        "OtherIndustry" => [String.t()],
        "WebsiteUrl" => String.t()
      }
      
  """
  @type account_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_opportunity_response() :: %{
        "Id" => String.t(),
        "LastModifiedDate" => non_neg_integer()
      }
      
  """
  @type update_opportunity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      marketing() :: %{
        "AwsFundingUsed" => list(any()),
        "CampaignName" => [String.t()],
        "Channels" => list(list(any())()),
        "Source" => list(any()),
        "UseCases" => list([String.t()]())
      }
      
  """
  @type marketing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_solutions_response() :: %{
        "NextToken" => [String.t()],
        "SolutionSummaries" => list(solution_base()())
      }
      
  """
  @type list_solutions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project_details() :: %{
        "BusinessProblem" => String.t(),
        "ExpectedCustomerSpend" => list(expected_customer_spend()()),
        "TargetCompletionDate" => String.t(),
        "Title" => [String.t()]
      }
      
  """
  @type project_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_opportunity_request() :: %{
        optional("Customer") => customer(),
        optional("LifeCycle") => life_cycle(),
        optional("Marketing") => marketing(),
        optional("NationalSecurity") => list(any()),
        optional("OpportunityTeam") => list(contact()()),
        optional("OpportunityType") => list(any()),
        optional("Origin") => list(any()),
        optional("PartnerOpportunityIdentifier") => [String.t()],
        optional("PrimaryNeedsFromAws") => list(list(any())()),
        optional("Project") => project(),
        optional("SoftwareRevenue") => software_revenue(),
        required("Catalog") => String.t(),
        required("ClientToken") => [String.t()]
      }
      
  """
  @type create_opportunity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "BusinessTitle" => String.t(),
        "Email" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "Phone" => String.t()
      }
      
  """
  @type contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      software_revenue() :: %{
        "DeliveryModel" => list(any()),
        "EffectiveDate" => String.t(),
        "ExpirationDate" => String.t(),
        "Value" => monetary_value()
      }
      
  """
  @type software_revenue() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opportunity_summary() :: %{
        "Catalog" => String.t(),
        "CreatedDate" => non_neg_integer(),
        "Customer" => customer_summary(),
        "Id" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "LifeCycle" => life_cycle_summary(),
        "OpportunityType" => list(any()),
        "PartnerOpportunityIdentifier" => [String.t()],
        "Project" => project_summary()
      }
      
  """
  @type opportunity_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_opportunities_response() :: %{
        "NextToken" => [String.t()],
        "OpportunitySummaries" => list(opportunity_summary()())
      }
      
  """
  @type list_opportunities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_summary() :: %{
        "Account" => account_summary()
      }
      
  """
  @type customer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address_summary() :: %{
        "City" => String.t(),
        "CountryCode" => list(any()),
        "PostalCode" => String.t(),
        "StateOrRegion" => String.t()
      }
      
  """
  @type address_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_engagement_invitation_request() :: %{
        optional("RejectionReason") => String.t(),
        required("Catalog") => String.t(),
        required("Identifier") => String.t()
      }
      
  """
  @type reject_engagement_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_engagement_from_opportunity_task_request() :: %{
        required("AwsSubmission") => aws_submission(),
        required("Catalog") => String.t(),
        required("ClientToken") => [String.t()],
        required("Identifier") => String.t()
      }
      
  """
  @type start_engagement_from_opportunity_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_life_cycle() :: %{
        "ClosedLostReason" => list(any()),
        "NextSteps" => String.t(),
        "NextStepsHistory" => list(profile_next_steps_history()()),
        "Stage" => list(any()),
        "TargetCloseDate" => String.t()
      }
      
  """
  @type aws_opportunity_life_cycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_error() :: %{
        "Code" => list(any()),
        "FieldName" => [String.t()],
        "Message" => [String.t()]
      }
      
  """
  @type validation_exception_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "ErrorList" => list(validation_exception_error()()),
        "Message" => [String.t()],
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      next_steps_history() :: %{
        "Time" => non_neg_integer(),
        "Value" => [String.t()]
      }
      
  """
  @type next_steps_history() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_opportunity_customer() :: %{
        "Contacts" => list(contact()())
      }
      
  """
  @type aws_opportunity_customer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_receiver() :: %{
        "Alias" => String.t(),
        "AwsAccountId" => String.t()
      }
      
  """
  @type account_receiver() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assignee_contact() :: %{
        "BusinessTitle" => String.t(),
        "Email" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t()
      }
      
  """
  @type assignee_contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_opportunity_request() :: %{
        required("Catalog") => String.t(),
        required("OpportunityIdentifier") => String.t(),
        required("RelatedEntityIdentifier") => [String.t()],
        required("RelatedEntityType") => list(any())
      }
      
  """
  @type disassociate_opportunity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monetary_value() :: %{
        "Amount" => [String.t()],
        "CurrencyCode" => list(any())
      }
      
  """
  @type monetary_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address() :: %{
        "City" => String.t(),
        "CountryCode" => list(any()),
        "PostalCode" => String.t(),
        "StateOrRegion" => String.t(),
        "StreetAddress" => String.t()
      }
      
  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      solution_base() :: %{
        "Catalog" => String.t(),
        "Category" => [String.t()],
        "CreatedDate" => non_neg_integer(),
        "Id" => String.t(),
        "Name" => [String.t()],
        "Status" => list(any())
      }
      
  """
  @type solution_base() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_engagement_invitation_response() :: %{
        "Arn" => [String.t()],
        "Catalog" => String.t(),
        "EngagementTitle" => String.t(),
        "ExpirationDate" => non_neg_integer(),
        "Id" => String.t(),
        "InvitationDate" => non_neg_integer(),
        "Payload" => list(),
        "PayloadType" => list(any()),
        "Receiver" => list(),
        "RejectionReason" => String.t(),
        "SenderAwsAccountId" => String.t(),
        "SenderCompanyName" => [String.t()],
        "Status" => list(any())
      }
      
  """
  @type get_engagement_invitation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_opportunity_request() :: %{
        required("Catalog") => String.t(),
        required("Identifier") => String.t()
      }
      
  """
  @type get_opportunity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_submission() :: %{
        "InvolvementType" => list(any()),
        "Visibility" => list(any())
      }
      
  """
  @type aws_submission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_engagement_by_accepting_invitation_task_request() :: %{
        required("Catalog") => String.t(),
        required("ClientToken") => [String.t()],
        required("Identifier") => String.t()
      }
      
  """
  @type start_engagement_by_accepting_invitation_task_request() :: %{String.t() => any()}

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

  @type create_opportunity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
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

  @type list_engagement_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_opportunities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_solutions_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reject_engagement_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

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

  Enables you to reassign an existing `Opportunity` to another user within your
  Partner Central account.

  The specified user receives the opportunity, and it appears on their
  Partner Central dashboard, allowing them to take necessary actions or proceed
  with the opportunity.

  This is useful for distributing opportunities to the appropriate team members
  or departments within your organization, ensuring that each opportunity is
  handled by the right person. By default, the opportunity owner is the one who
  creates it. Currently, there's no API to enumerate the list of available users.
  """
  @spec assign_opportunity(map(), assign_opportunity_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assign_opportunity_errors()}
  def assign_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssignOpportunity", input, options)
  end

  @doc """

  Enables you to create a formal association between an `Opportunity` and various
  related entities, enriching the context and details of the opportunity for
  better collaboration and
  decision-making.

  You can associate an opportunity with the following types of entities:

    *

  Partner Solution:
  A software product or consulting practice created and delivered by Partners.
  Partner Solutions help customers address specific business challenges or achieve
  particular goals using Amazon Web Services services.

    *

  Amazon Web Services Product:
  Amazon Web Services offers a wide range of products and services designed to
  provide scalable, reliable, and cost-effective infrastructure solutions. For the
  latest list of Amazon Web Services products, refer to [Amazon Web Services products](https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json).

    *

  Amazon Web Services Marketplace private offer:
  Allows Amazon Web Services Marketplace sellers to extend custom pricing and
  terms to individual Amazon Web Services customers. Sellers can negotiate custom
  prices, payment schedules, and end user license terms through private offers,
  enabling Amazon Web Services customers to acquire software solutions tailored to
  their specific needs. For more information, refer to [Private offers in Amazon Web Services
  Marketplace](https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-private-offers.html).

  To obtain identifiers for these entities, use the following methods:

    *
  Solution: Use the `ListSolutions` operation.

    *

  AWS products: For the latest list of Amazon Web Services products, refer to
  the Amazon Web Services products list.

    *

  Amazon Web Services Marketplace private offer: Use the [AWS Marketplace Catalog API](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html)
  to list entities. Specifically, use the `ListEntities` operation to retrieve a
  list of private offers. The request to the `ListEntities` API returns the
  details of the private offers available to you. For more information, refer to
  [ListEntities](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html).
  """
  @spec associate_opportunity(map(), associate_opportunity_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_opportunity_errors()}
  def associate_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateOpportunity", input, options)
  end

  @doc """

  Creates an `Opportunity` record in Partner Central.

  Use this operation to create
  a potential business opportunity intended to be submitted to Amazon Web
  Services. Creating an opportunity sets its `Lifecycle.ReviewStatus` to
  `Pending Submission`.

  To fully submit an opportunity, follow these steps:

    1.
  To create the opportunity, use `CreateOpportunity`.

    2.
  To associate a solution with the opportunity, use `AssociateOpportunity`.

    3.
  To submit the opportunity, use `SubmitOpportunity`.

  After submission, you can't edit the opportunity until the review is complete.
  However, opportunities in the
  `Pending Submission` state still need all details completed. You can update
  the opportunity while it's in the `Pending Submission` state.

  There's a set of mandatory fields required to create opportunities, but consider
  providing optional fields to
  enrich the opportunity record.
  """
  @spec create_opportunity(map(), create_opportunity_request(), list()) ::
          {:ok, create_opportunity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_opportunity_errors()}
  def create_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOpportunity", input, options)
  end

  @doc """

  Allows you to remove an existing association between an `Opportunity` and
  related entities such as a Partner Solution, Amazon Web Services product, or an
  Amazon Web Services Marketplace offer.

  This operation is the counterpart to `AssociateOpportunity`, and it provides
  flexibility to manage
  associations as business needs change.

  Use this operation to update the associations of an `Opportunity` due to changes
  in the related entities,
  or if an association was made in error. Ensuring accurate associations helps
  maintain clarity and accuracy to track
  and manage business opportunities. When you replace an entity, first attach the
  new entity and then disassociate the
  one to be removed, especially if it's the last remaining related entity that's
  required.
  """
  @spec disassociate_opportunity(map(), disassociate_opportunity_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_opportunity_errors()}
  def disassociate_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateOpportunity", input, options)
  end

  @doc """

  Retrieves a summary of an AWS Opportunity.

  This summary includes high-level details about the opportunity
  sourced from AWS, such as lifecycle information, customer details, and
  involvement type.
  It is useful for tracking updates on the AWS opportunity corresponding to an
  opportunity in the partner's account.
  """
  @spec get_aws_opportunity_summary(map(), get_aws_opportunity_summary_request(), list()) ::
          {:ok, get_aws_opportunity_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_aws_opportunity_summary_errors()}
  def get_aws_opportunity_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAwsOpportunitySummary", input, options)
  end

  @doc """
  Retrieves the details of an engagement invitation shared by AWS with a partner.

  The information includes key aspects such as the customer, project details, and
  lifecycle information related to the engagement.
  """
  @spec get_engagement_invitation(map(), get_engagement_invitation_request(), list()) ::
          {:ok, get_engagement_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, get_opportunity_errors()}
  def get_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOpportunity", input, options)
  end

  @doc """
  Retrieves a list of engagement invitations sent to the partner.

  This allows partners to view all pending or past engagement invitations, helping
  them track opportunities shared by AWS.
  """
  @spec list_engagement_invitations(map(), list_engagement_invitations_request(), list()) ::
          {:ok, list_engagement_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_engagement_invitations_errors()}
  def list_engagement_invitations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagementInvitations", input, options)
  end

  @doc """
  This request accepts a list of filters to use to
  retrieve a specific subset of opportunities, as well as sort options.

  This feature is available to partners from
  [Partner Central](https://partnercentral.awspartner.com/)
  using the `ListOpportunities` API action.

  To synchronize your system with Amazon Web Services, only list the opportunities
  that were
  newly created or updated.
  We recommend you rely on events emitted by the service into your Amazon Web
  Services account’s Amazon EventBridge default
  event bus, you can also use the `ListOpportunities` action.

  We recommend the following approach:

    1.
  Find the latest `LastModifiedDate` that you stored, and only use the values that
  came
  from Amazon Web Services. Don’t use values generated by your system.

    2.
  When you send a `ListOpportunities` request, submit the date in ISO 8601 format
  in the `AfterLastModifiedDate` filter.

    3.
  Amazon Web Services only returns opportunities created or updated on or after
  that date and time. Use `NextToken` to iterate over all pages.
  """
  @spec list_opportunities(map(), list_opportunities_request(), list()) ::
          {:ok, list_opportunities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_opportunities_errors()}
  def list_opportunities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOpportunities", input, options)
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
          | {:error, list_solutions_errors()}
  def list_solutions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSolutions", input, options)
  end

  @doc """
  Use this action to reject an `EngagementInvitation` that has been shared by AWS.

  Rejecting the engagement invitation indicates that the partner does not wish to
  pursue the opportunity, and all related data will be inaccessible after the
  rejection.
  """
  @spec reject_engagement_invitation(map(), reject_engagement_invitation_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_engagement_invitation_errors()}
  def reject_engagement_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectEngagementInvitation", input, options)
  end

  @doc """
  This action starts the engagement by accepting an `EngagementInvitation`.

  The task is asynchronous and involves several steps: accepting the invitation,
  creating an opportunity in the partner’s account from the AWS Opportunity, and
  copying over key details for tracking. Once completed, an `Opportunity Created`
  event is generated, indicating that the opportunity has been successfully
  created in the partner's account.
  """
  @spec start_engagement_by_accepting_invitation_task(
          map(),
          start_engagement_by_accepting_invitation_task_request(),
          list()
        ) ::
          {:ok, start_engagement_by_accepting_invitation_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, start_engagement_from_opportunity_task_errors()}
  def start_engagement_from_opportunity_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEngagementFromOpportunityTask", input, options)
  end

  @doc """

  Updates the `Opportunity` record identified by a given `Identifier`.

  This operation allows you to modify the details of an existing opportunity to
  reflect the latest information
  and progress. Use this action to keep the opportunity record up-to-date and
  accurate.

  When you perform updates, include the entire payload with each request. If any
  field is omitted, the API assumes that the field is set to `null`. The best
  practice is to always perform a `GetOpportunity` to retrieve the latest values,
  then send the complete payload with the updated values to be changed.
  """
  @spec update_opportunity(map(), update_opportunity_request(), list()) ::
          {:ok, update_opportunity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_opportunity_errors()}
  def update_opportunity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateOpportunity", input, options)
  end
end
