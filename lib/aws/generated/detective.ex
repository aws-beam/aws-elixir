# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Detective do
  @moduledoc """
  Detective uses machine learning and purpose-built visualizations to help you to
  analyze and investigate security issues across your Amazon Web Services (Amazon
  Web Services) workloads.

  Detective automatically extracts time-based events such
  as login attempts, API calls, and network traffic from CloudTrail and Amazon
  Virtual Private Cloud (Amazon VPC) flow logs. It also extracts findings detected
  by
  Amazon GuardDuty.

  The Detective API primarily supports the creation and management of behavior
  graphs. A behavior graph contains the extracted data from a set of member
  accounts, and is
  created and managed by an administrator account.

  To add a member account to the behavior graph, the administrator account sends
  an
  invitation to the account. When the account accepts the invitation, it becomes a
  member
  account in the behavior graph.

  Detective is also integrated with Organizations. The organization
  management account designates the Detective administrator account for the
  organization. That account becomes the administrator account for the
  organization behavior
  graph. The Detective administrator account is also the delegated administrator
  account for Detective in Organizations.

  The Detective administrator account can enable any organization account as a
  member account in the organization behavior graph. The organization accounts do
  not receive
  invitations. The Detective administrator account can also invite other accounts
  to
  the organization behavior graph.

  Every behavior graph is specific to a Region. You can only use the API to manage
  behavior graphs that belong to the Region that is associated with the currently
  selected
  endpoint.

  The administrator account for a behavior graph can use the Detective API to do
  the following:

    *
  Enable and disable Detective. Enabling Detective creates a new
  behavior graph.

    *
  View the list of member accounts in a behavior graph.

    *
  Add member accounts to a behavior graph.

    *
  Remove member accounts from a behavior graph.

    *
  Apply tags to a behavior graph.

  The organization management account can use the Detective API to select the
  delegated administrator for Detective.

  The Detective administrator account for an organization can use the Detective
  API to do the following:

    *
  Perform all of the functions of an administrator account.

    *
  Determine whether to automatically enable new organization accounts as member
  accounts in the organization behavior graph.

  An invited member account can use the Detective API to do the following:

    *
  View the list of behavior graphs that they are invited to.

    *
  Accept an invitation to contribute to a behavior graph.

    *
  Decline an invitation to contribute to a behavior graph.

    *
  Remove their account from a behavior graph.

  All API actions are logged as CloudTrail events. See [Logging Detective API Calls with
  CloudTrail](https://docs.aws.amazon.com/detective/latest/userguide/logging-using-cloudtrail.html).

  We replaced the term "master account" with the term "administrator account". An
  administrator account is used to centrally manage multiple accounts. In the case
  of
  Detective, the administrator account manages the accounts in their behavior
  graph.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      administrator() :: %{
        "AccountId" => String.t() | atom(),
        "DelegationTime" => non_neg_integer(),
        "GraphArn" => String.t() | atom()
      }

  """
  @type administrator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{
        required("GraphArn") => String.t() | atom()
      }

  """
  @type describe_organization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_members_response() :: %{
        "MemberDetails" => list(member_detail()),
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type get_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      new_aso_detail() :: %{
        "Aso" => String.t() | atom(),
        "IsNewForEntireAccount" => boolean()
      }

  """
  @type new_aso_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "CreatedTime" => date_filter(),
        "EntityArn" => string_filter(),
        "Severity" => string_filter(),
        "State" => string_filter(),
        "Status" => string_filter()
      }

  """
  @type filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_datasource_packages_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type list_datasource_packages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_graph_request() :: %{
        optional("Tags") => map()
      }

  """
  @type create_graph_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      new_user_agent_detail() :: %{
        "IsNewForEntireAccount" => boolean(),
        "UserAgent" => String.t() | atom()
      }

  """
  @type new_user_agent_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_datasource_packages_request() :: %{
        required("DatasourcePackages") => list(list(any())()),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type update_datasource_packages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_investigation_request() :: %{
        required("EntityArn") => String.t() | atom(),
        required("GraphArn") => String.t() | atom(),
        required("ScopeEndTime") => non_neg_integer(),
        required("ScopeStartTime") => non_neg_integer()
      }

  """
  @type start_investigation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_investigation_response() :: %{
        "InvestigationId" => String.t() | atom()
      }

  """
  @type start_investigation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_graphs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_graphs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_members_response() :: %{
        "AccountIds" => list(String.t() | atom()),
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type delete_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_investigations_response() :: %{
        "InvestigationDetails" => list(investigation_detail()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_investigations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      related_finding_group_detail() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type related_finding_group_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        "AutoEnable" => boolean()
      }

  """
  @type describe_organization_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_investigations_request() :: %{
        optional("FilterCriteria") => filter_criteria(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => sort_criteria(),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type list_investigations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_members_request() :: %{
        required("AccountIds") => list(String.t() | atom()),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type get_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_members_request() :: %{
        optional("DisableEmailNotification") => boolean(),
        optional("Message") => String.t() | atom(),
        required("Accounts") => list(account()),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type create_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      graph() :: %{
        "Arn" => String.t() | atom(),
        "CreatedTime" => non_neg_integer()
      }

  """
  @type graph() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_graph_member_datasources_response() :: %{
        "MemberDatasources" => list(membership_datasources()),
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type batch_get_graph_member_datasources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "Resources" => list(String.t() | atom())
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_members_request() :: %{
        required("AccountIds") => list(String.t() | atom()),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type delete_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      timestamp_for_collection() :: %{
        "Timestamp" => non_neg_integer()
      }

  """
  @type timestamp_for_collection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "AccountId" => String.t() | atom(),
        "EmailAddress" => String.t() | atom()
      }

  """
  @type account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_graph() :: %{
        "GraphArn" => String.t() | atom(),
        "Reason" => String.t() | atom()
      }

  """
  @type unprocessed_graph() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_membership_datasources_response() :: %{
        "MembershipDatasources" => list(membership_datasources()),
        "UnprocessedGraphs" => list(unprocessed_graph())
      }

  """
  @type batch_get_membership_datasources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_graph_member_datasources_request() :: %{
        required("AccountIds") => list(String.t() | atom()),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type batch_get_graph_member_datasources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_investigation_state_request() :: %{
        required("GraphArn") => String.t() | atom(),
        required("InvestigationId") => String.t() | atom(),
        required("State") => list(any())
      }

  """
  @type update_investigation_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_filter() :: %{
        "EndInclusive" => non_neg_integer(),
        "StartInclusive" => non_neg_integer()
      }

  """
  @type date_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_invitation_request() :: %{
        required("GraphArn") => String.t() | atom()
      }

  """
  @type reject_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      investigation_detail() :: %{
        "CreatedTime" => non_neg_integer(),
        "EntityArn" => String.t() | atom(),
        "EntityType" => list(any()),
        "InvestigationId" => String.t() | atom(),
        "Severity" => list(any()),
        "State" => list(any()),
        "Status" => list(any())
      }

  """
  @type investigation_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      impossible_travel_detail() :: %{
        "EndingIpAddress" => String.t() | atom(),
        "EndingLocation" => String.t() | atom(),
        "HourlyTimeDelta" => integer(),
        "StartingIpAddress" => String.t() | atom(),
        "StartingLocation" => String.t() | atom()
      }

  """
  @type impossible_travel_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_graph_request() :: %{
        required("GraphArn") => String.t() | atom()
      }

  """
  @type delete_graph_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_membership_datasources_request() :: %{
        required("GraphArns") => list(String.t() | atom())
      }

  """
  @type batch_get_membership_datasources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        optional("AutoEnable") => boolean(),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type update_organization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_organization_admin_account_request() :: %{
        required("AccountId") => String.t() | atom()
      }

  """
  @type enable_organization_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_graphs_response() :: %{
        "GraphList" => list(graph()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_graphs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      datasource_package_usage_info() :: %{
        "VolumeUsageInBytes" => float(),
        "VolumeUsageUpdateTime" => non_neg_integer()
      }

  """
  @type datasource_package_usage_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_datasource_packages_response() :: %{
        "DatasourcePackages" => map(),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_datasource_packages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      membership_datasources() :: %{
        "AccountId" => String.t() | atom(),
        "DatasourcePackageIngestHistory" => map(),
        "GraphArn" => String.t() | atom()
      }

  """
  @type membership_datasources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "Field" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "ErrorCode" => list(any()),
        "ErrorCodeReason" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "SubErrorCode" => list(any()),
        "SubErrorCodeReason" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      new_geolocation_detail() :: %{
        "IpAddress" => String.t() | atom(),
        "IsNewForEntireAccount" => boolean(),
        "Location" => String.t() | atom()
      }

  """
  @type new_geolocation_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_invitation_request() :: %{
        required("GraphArn") => String.t() | atom()
      }

  """
  @type accept_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_graph_response() :: %{
        "GraphArn" => String.t() | atom()
      }

  """
  @type create_graph_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type list_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        "MemberDetails" => list(member_detail()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_investigation_request() :: %{
        required("GraphArn") => String.t() | atom(),
        required("InvestigationId") => String.t() | atom()
      }

  """
  @type get_investigation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_investigation_response() :: %{
        "CreatedTime" => non_neg_integer(),
        "EntityArn" => String.t() | atom(),
        "EntityType" => list(any()),
        "GraphArn" => String.t() | atom(),
        "InvestigationId" => String.t() | atom(),
        "ScopeEndTime" => non_neg_integer(),
        "ScopeStartTime" => non_neg_integer(),
        "Severity" => list(any()),
        "State" => list(any()),
        "Status" => list(any())
      }

  """
  @type get_investigation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "ErrorCode" => list(any()),
        "ErrorCodeReason" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_invitations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      indicator_detail() :: %{
        "FlaggedIpAddressDetail" => flagged_ip_address_detail(),
        "ImpossibleTravelDetail" => impossible_travel_detail(),
        "NewAsoDetail" => new_aso_detail(),
        "NewGeolocationDetail" => new_geolocation_detail(),
        "NewUserAgentDetail" => new_user_agent_detail(),
        "RelatedFindingDetail" => related_finding_detail(),
        "RelatedFindingGroupDetail" => related_finding_group_detail(),
        "TTPsObservedDetail" => t_t_ps_observed_detail()
      }

  """
  @type indicator_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      string_filter() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flagged_ip_address_detail() :: %{
        "IpAddress" => String.t() | atom(),
        "Reason" => list(any())
      }

  """
  @type flagged_ip_address_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      related_finding_detail() :: %{
        "Arn" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type related_finding_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_account() :: %{
        "AccountId" => String.t() | atom(),
        "Reason" => String.t() | atom()
      }

  """
  @type unprocessed_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_monitoring_member_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("GraphArn") => String.t() | atom()
      }

  """
  @type start_monitoring_member_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_indicators_response() :: %{
        "GraphArn" => String.t() | atom(),
        "Indicators" => list(indicator()),
        "InvestigationId" => String.t() | atom(),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_indicators_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      datasource_package_ingest_detail() :: %{
        "DatasourcePackageIngestState" => list(any()),
        "LastIngestStateChange" => map()
      }

  """
  @type datasource_package_ingest_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_admin_accounts_response() :: %{
        "Administrators" => list(administrator()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_organization_admin_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_indicators_request() :: %{
        optional("IndicatorType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("GraphArn") => String.t() | atom(),
        required("InvestigationId") => String.t() | atom()
      }

  """
  @type list_indicators_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_membership_request() :: %{
        required("GraphArn") => String.t() | atom()
      }

  """
  @type disassociate_membership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      t_t_ps_observed_detail() :: %{
        "APIFailureCount" => float(),
        "APIName" => String.t() | atom(),
        "APISuccessCount" => float(),
        "IpAddress" => String.t() | atom(),
        "Procedure" => String.t() | atom(),
        "Tactic" => String.t() | atom(),
        "Technique" => String.t() | atom()
      }

  """
  @type t_t_ps_observed_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_members_response() :: %{
        "Members" => list(member_detail()),
        "UnprocessedAccounts" => list(unprocessed_account())
      }

  """
  @type create_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member_detail() :: %{
        "AccountId" => String.t() | atom(),
        "AdministratorId" => String.t() | atom(),
        "DatasourcePackageIngestStates" => map(),
        "DisabledReason" => list(any()),
        "EmailAddress" => String.t() | atom(),
        "GraphArn" => String.t() | atom(),
        "InvitationType" => list(any()),
        "InvitedTime" => non_neg_integer(),
        "MasterId" => String.t() | atom(),
        "PercentOfGraphUtilization" => float(),
        "PercentOfGraphUtilizationUpdatedTime" => non_neg_integer(),
        "Status" => list(any()),
        "UpdatedTime" => non_neg_integer(),
        "VolumeUsageByDatasourcePackage" => map(),
        "VolumeUsageInBytes" => float(),
        "VolumeUsageUpdatedTime" => non_neg_integer()
      }

  """
  @type member_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_invitations_response() :: %{
        "Invitations" => list(member_detail()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      indicator() :: %{
        "IndicatorDetail" => indicator_detail(),
        "IndicatorType" => list(any())
      }

  """
  @type indicator() :: %{(String.t() | atom()) => any()}

  @type accept_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_graph_member_datasources_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_membership_datasources_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_graph_errors() ::
          access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_graph_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_organization_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type disable_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type disassociate_membership_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_organization_admin_account_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type get_investigation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_datasource_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_graphs_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_indicators_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_investigations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_invitations_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_members_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_organization_admin_accounts_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reject_invitation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_investigation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type start_monitoring_member_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_datasource_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_investigation_state_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_organization_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.detective",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Detective",
      signature_version: "v4",
      signing_name: "detective",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an invitation for the member account to contribute data to a behavior
  graph.

  This operation can only be called by an invited member account.

  The request provides the ARN of behavior graph.

  The member account status in the graph must be `INVITED`.
  """
  @spec accept_invitation(map(), accept_invitation_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_invitation_errors()}
  def accept_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitation"
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
  Gets data source package information for the behavior graph.
  """
  @spec batch_get_graph_member_datasources(
          map(),
          batch_get_graph_member_datasources_request(),
          list()
        ) ::
          {:ok, batch_get_graph_member_datasources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_graph_member_datasources_errors()}
  def batch_get_graph_member_datasources(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/get"
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
  Gets information on the data source package history for an account.
  """
  @spec batch_get_membership_datasources(
          map(),
          batch_get_membership_datasources_request(),
          list()
        ) ::
          {:ok, batch_get_membership_datasources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_membership_datasources_errors()}
  def batch_get_membership_datasources(%Client{} = client, input, options \\ []) do
    url_path = "/membership/datasources/get"
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
  Creates a new behavior graph for the calling account, and sets that account as
  the
  administrator account.

  This operation is called by the account that is enabling Detective.

  The operation also enables Detective for the calling account in the currently
  selected Region. It returns the ARN of the new behavior graph.

  `CreateGraph` triggers a process to create the corresponding data tables for
  the new behavior graph.

  An account can only be the administrator account for one behavior graph within a
  Region.
  If the same account calls `CreateGraph` with the same administrator account, it
  always returns the same behavior graph ARN. It does not create a new behavior
  graph.
  """
  @spec create_graph(map(), create_graph_request(), list()) ::
          {:ok, create_graph_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_graph_errors()}
  def create_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graph"
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

  `CreateMembers` is used to send invitations to accounts.

  For the organization
  behavior graph, the Detective administrator account uses
  `CreateMembers` to enable organization accounts as member accounts.

  For invited accounts, `CreateMembers` sends a request to invite the specified
  Amazon Web Services accounts to be member accounts in the behavior graph. This
  operation
  can only be called by the administrator account for a behavior graph.

  `CreateMembers` verifies the accounts and then invites the verified accounts.
  The administrator can optionally specify to not send invitation emails to the
  member
  accounts. This would be used when the administrator manages their member
  accounts
  centrally.

  For organization accounts in the organization behavior graph, `CreateMembers`
  attempts to enable the accounts. The organization accounts do not receive
  invitations.

  The request provides the behavior graph ARN and the list of accounts to invite
  or to
  enable.

  The response separates the requested accounts into two lists:

    *
  The accounts that `CreateMembers` was able to process. For invited
  accounts, includes member accounts that are being verified, that have passed
  verification and are to be invited, and that have failed verification. For
  organization accounts in the organization behavior graph, includes accounts that
  can
  be enabled and that cannot be enabled.

    *
  The accounts that `CreateMembers` was unable to process. This list
  includes accounts that were already invited to be member accounts in the
  behavior
  graph.
  """
  @spec create_members(map(), create_members_request(), list()) ::
          {:ok, create_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_members_errors()}
  def create_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members"
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
  Disables the specified behavior graph and queues it to be deleted.

  This operation
  removes the behavior graph from each member account's list of behavior graphs.

  `DeleteGraph` can only be called by the administrator account for a behavior
  graph.
  """
  @spec delete_graph(map(), delete_graph_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_graph_errors()}
  def delete_graph(%Client{} = client, input, options \\ []) do
    url_path = "/graph/removal"
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
  Removes the specified member accounts from the behavior graph.

  The removed accounts no
  longer contribute data to the behavior graph. This operation can only be called
  by the
  administrator account for the behavior graph.

  For invited accounts, the removed accounts are deleted from the list of accounts
  in the
  behavior graph. To restore the account, the administrator account must send
  another
  invitation.

  For organization accounts in the organization behavior graph, the Detective
  administrator account can always enable the organization account again.
  Organization
  accounts that are not enabled as member accounts are not included in the
  `ListMembers` results for the organization behavior graph.

  An administrator account cannot use `DeleteMembers` to remove their own
  account from the behavior graph. To disable a behavior graph, the administrator
  account
  uses the `DeleteGraph` API method.
  """
  @spec delete_members(map(), delete_members_request(), list()) ::
          {:ok, delete_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_members_errors()}
  def delete_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/removal"
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
  Returns information about the configuration for the organization behavior graph.

  Currently indicates whether to automatically enable new organization accounts as
  member
  accounts.

  Can only be called by the Detective administrator account for the organization.
  """
  @spec describe_organization_configuration(
          map(),
          describe_organization_configuration_request(),
          list()
        ) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_configuration_errors()}
  def describe_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/describeOrganizationConfiguration"
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
  Removes the Detective administrator account in the current Region.

  Deletes the
  organization behavior graph.

  Can only be called by the organization management account.

  Removing the Detective administrator account does not affect the delegated
  administrator account for Detective in Organizations.

  To remove the delegated administrator account in Organizations, use the
  Organizations API. Removing the delegated administrator account also removes the
  Detective administrator account in all Regions, except for Regions where the
  Detective administrator account is the organization management account.
  """
  @spec disable_organization_admin_account(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_organization_admin_account_errors()}
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/disableAdminAccount"
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
  Removes the member account from the specified behavior graph.

  This operation can only be
  called by an invited member account that has the `ENABLED` status.

  `DisassociateMembership` cannot be called by an organization account in the
  organization behavior graph. For the organization behavior graph, the Detective
  administrator account determines which organization accounts to enable or
  disable as member
  accounts.
  """
  @spec disassociate_membership(map(), disassociate_membership_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_membership_errors()}
  def disassociate_membership(%Client{} = client, input, options \\ []) do
    url_path = "/membership/removal"
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
  Designates the Detective administrator account for the organization in the
  current Region.

  If the account does not have Detective enabled, then enables Detective
  for that account and creates a new behavior graph.

  Can only be called by the organization management account.

  If the organization has a delegated administrator account in Organizations, then
  the
  Detective administrator account must be either the delegated administrator
  account or the organization management account.

  If the organization does not have a delegated administrator account in
  Organizations, then you can choose any account in the organization. If you
  choose an account other
  than the organization management account, Detective calls Organizations to
  make that account the delegated administrator account for Detective. The
  organization management account cannot be the delegated administrator account.
  """
  @spec enable_organization_admin_account(
          map(),
          enable_organization_admin_account_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_organization_admin_account_errors()}
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/enableAdminAccount"
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
  Detective investigations lets you investigate IAM users and IAM roles using
  indicators of compromise.

  An indicator of compromise (IOC) is an artifact observed in or on a network,
  system, or environment that can (with a high level of confidence) identify
  malicious activity or a security incident. `GetInvestigation` returns the
  investigation results of an investigation for a behavior graph.
  """
  @spec get_investigation(map(), get_investigation_request(), list()) ::
          {:ok, get_investigation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_investigation_errors()}
  def get_investigation(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/getInvestigation"
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
  Returns the membership details for specified member accounts for a behavior
  graph.
  """
  @spec get_members(map(), get_members_request(), list()) ::
          {:ok, get_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_members_errors()}
  def get_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/get"
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
  Lists data source packages in the behavior graph.
  """
  @spec list_datasource_packages(map(), list_datasource_packages_request(), list()) ::
          {:ok, list_datasource_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_datasource_packages_errors()}
  def list_datasource_packages(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/list"
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
  Returns the list of behavior graphs that the calling account is an administrator
  account
  of.

  This operation can only be called by an administrator account.

  Because an account can currently only be the administrator of one behavior graph
  within
  a Region, the results always contain a single behavior graph.
  """
  @spec list_graphs(map(), list_graphs_request(), list()) ::
          {:ok, list_graphs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_graphs_errors()}
  def list_graphs(%Client{} = client, input, options \\ []) do
    url_path = "/graphs/list"
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
  Gets the indicators from an investigation.

  You can use the information from the indicators to determine if an IAM user
  and/or IAM role is involved in an unusual activity that could indicate malicious
  behavior and its impact.
  """
  @spec list_indicators(map(), list_indicators_request(), list()) ::
          {:ok, list_indicators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_indicators_errors()}
  def list_indicators(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/listIndicators"
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
  Detective investigations lets you investigate IAM users and
  IAM roles using indicators of compromise.

  An indicator of compromise
  (IOC) is an artifact observed in or on a network, system, or environment that
  can (with a
  high level of confidence) identify malicious activity or a security incident.
  `ListInvestigations` lists all active Detective
  investigations.
  """
  @spec list_investigations(map(), list_investigations_request(), list()) ::
          {:ok, list_investigations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_investigations_errors()}
  def list_investigations(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/listInvestigations"
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
  Retrieves the list of open and accepted behavior graph invitations for the
  member
  account.

  This operation can only be called by an invited member account.

  Open invitations are invitations that the member account has not responded to.

  The results do not include behavior graphs for which the member account declined
  the
  invitation. The results also do not include behavior graphs that the member
  account
  resigned from or was removed from.
  """
  @spec list_invitations(map(), list_invitations_request(), list()) ::
          {:ok, list_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_invitations_errors()}
  def list_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/list"
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
  Retrieves the list of member accounts for a behavior graph.

  For invited accounts, the results do not include member accounts that were
  removed from
  the behavior graph.

  For the organization behavior graph, the results do not include organization
  accounts
  that the Detective administrator account has not enabled as member
  accounts.
  """
  @spec list_members(map(), list_members_request(), list()) ::
          {:ok, list_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_members_errors()}
  def list_members(%Client{} = client, input, options \\ []) do
    url_path = "/graph/members/list"
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
  Returns information about the Detective administrator account for an
  organization.

  Can only be called by the organization management account.
  """
  @spec list_organization_admin_accounts(
          map(),
          list_organization_admin_accounts_request(),
          list()
        ) ::
          {:ok, list_organization_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_organization_admin_accounts_errors()}
  def list_organization_admin_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/adminAccountslist"
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
  Returns the tag values that are assigned to a behavior graph.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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
  Rejects an invitation to contribute the account data to a behavior graph.

  This operation
  must be called by an invited member account that has the `INVITED`
  status.

  `RejectInvitation` cannot be called by an organization account in the
  organization behavior graph. In the organization behavior graph, organization
  accounts do
  not receive an invitation.
  """
  @spec reject_invitation(map(), reject_invitation_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_invitation_errors()}
  def reject_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/removal"
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
  Detective investigations lets you investigate IAM users and IAM roles using
  indicators of compromise.

  An indicator of compromise (IOC) is an artifact observed in or on a network,
  system, or environment that can (with a high level of confidence) identify
  malicious activity or a security incident. `StartInvestigation` initiates an
  investigation on an entity in a behavior graph.
  """
  @spec start_investigation(map(), start_investigation_request(), list()) ::
          {:ok, start_investigation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_investigation_errors()}
  def start_investigation(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/startInvestigation"
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
  Sends a request to enable data ingest for a member account that has a status of
  `ACCEPTED_BUT_DISABLED`.

  For valid member accounts, the status is updated as follows.

    *
  If Detective enabled the member account, then the new status is
  `ENABLED`.

    *
  If Detective cannot enable the member account, the status remains
  `ACCEPTED_BUT_DISABLED`.
  """
  @spec start_monitoring_member(map(), start_monitoring_member_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_monitoring_member_errors()}
  def start_monitoring_member(%Client{} = client, input, options \\ []) do
    url_path = "/graph/member/monitoringstate"
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
  Applies tag values to a behavior graph.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
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
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes tags from a behavior graph.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Starts a data source package for the Detective behavior graph.
  """
  @spec update_datasource_packages(map(), update_datasource_packages_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_datasource_packages_errors()}
  def update_datasource_packages(%Client{} = client, input, options \\ []) do
    url_path = "/graph/datasources/update"
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
  Updates the state of an investigation.
  """
  @spec update_investigation_state(map(), update_investigation_state_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_investigation_state_errors()}
  def update_investigation_state(%Client{} = client, input, options \\ []) do
    url_path = "/investigations/updateInvestigationState"
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
  Updates the configuration for the Organizations integration in the current
  Region.

  Can only be called by the Detective administrator account for the
  organization.
  """
  @spec update_organization_configuration(
          map(),
          update_organization_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/orgs/updateOrganizationConfiguration"
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
end
