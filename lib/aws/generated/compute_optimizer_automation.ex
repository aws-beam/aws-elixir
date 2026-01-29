# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComputeOptimizerAutomation do
  @moduledoc """
  Automation is a feature within Amazon Web Services Compute Optimizer that
  enables you to apply optimization recommendations to your Amazon Web Services
  resources, reducing costs and improving performance.

  You can apply recommended actions directly or create automation rules that
  implement recommendations on a recurring schedule when they match your specified
  criteria. With automation rules, set criteria such as Amazon Web Services Region
  and Resource Tags to target specific geographies and workloads. Configure rules
  to run daily, weekly, or monthly, and Compute Optimizer continuously evaluates
  new recommendations against your criteria. Track automation events over time,
  examine detailed step history, estimate savings achieved, and reverse actions
  directly from Compute Optimizer when needed.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      automation_event() :: %{
        "accountId" => String.t() | atom(),
        "completedTimestamp" => [non_neg_integer()],
        "createdTimestamp" => [non_neg_integer()],
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "eventDescription" => [String.t() | atom()],
        "eventId" => String.t() | atom(),
        "eventStatus" => list(any()),
        "eventStatusReason" => [String.t() | atom()],
        "eventType" => list(any()),
        "recommendedActionId" => String.t() | atom(),
        "region" => [String.t() | atom()],
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any()),
        "ruleId" => String.t() | atom()
      }
      
  """
  @type automation_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recommended_action() :: %{
        "accountId" => String.t() | atom(),
        "currentResourceDetails" => list(),
        "currentResourceSummary" => [String.t() | atom()],
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "lookBackPeriodInDays" => [integer()],
        "recommendedActionId" => String.t() | atom(),
        "recommendedActionType" => list(any()),
        "recommendedResourceDetails" => list(),
        "recommendedResourceSummary" => [String.t() | atom()],
        "region" => [String.t() | atom()],
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceTags" => list(tag()),
        "resourceType" => list(any()),
        "restartNeeded" => [boolean()]
      }
      
  """
  @type recommended_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ebs_volume_configuration() :: %{
        "iops" => [integer()],
        "sizeInGib" => [integer()],
        "throughput" => [integer()],
        "type" => [String.t() | atom()]
      }
      
  """
  @type ebs_volume_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      summary_dimension() :: %{
        "key" => String.t() | atom(),
        "value" => [String.t() | atom()]
      }
      
  """
  @type summary_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_recommended_actions_response() :: %{
        "nextToken" => String.t() | atom(),
        "recommendedActions" => list(recommended_action())
      }
      
  """
  @type list_recommended_actions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_preview_total() :: %{
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "recommendedActionCount" => [integer()]
      }
      
  """
  @type rule_preview_total() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom(),
        required("ruleRevision") => [float()],
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_accounts_response() :: %{
        "accountIds" => list(String.t() | atom()),
        "errors" => list([String.t() | atom()]())
      }
      
  """
  @type associate_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_rule_preview_summaries_response() :: %{
        "nextToken" => String.t() | atom(),
        "previewResultSummaries" => list(preview_result_summary())
      }
      
  """
  @type list_automation_rule_preview_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_rule_preview_summaries_request() :: %{
        optional("criteria") => criteria(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("organizationScope") => organization_scope(),
        required("recommendedActionTypes") => list(list(any())()),
        required("ruleType") => list(any())
      }
      
  """
  @type list_automation_rule_preview_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_event_steps_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("eventId") => String.t() | atom()
      }
      
  """
  @type list_automation_event_steps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      recommended_action_total() :: %{
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "recommendedActionCount" => [integer()]
      }
      
  """
  @type recommended_action_total() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      not_management_account_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type not_management_account_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forbidden_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      organization_configuration() :: %{
        "accountIds" => list(String.t() | atom()),
        "ruleApplyOrder" => list(any())
      }
      
  """
  @type organization_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_rule_preview_request() :: %{
        optional("criteria") => criteria(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("organizationScope") => organization_scope(),
        required("recommendedActionTypes") => list(list(any())()),
        required("ruleType") => list(any())
      }
      
  """
  @type list_automation_rule_preview_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_automation_event_response() :: %{
        "eventId" => String.t() | atom(),
        "eventStatus" => list(any()),
        "recommendedActionId" => String.t() | atom()
      }
      
  """
  @type start_automation_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_info() :: %{
        "accountId" => String.t() | atom(),
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "organizationRuleMode" => list(any()),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type account_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      string_criteria_condition() :: %{
        "comparison" => list(any()),
        "values" => list(String.t() | atom())
      }
      
  """
  @type string_criteria_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      preview_result_summary() :: %{
        "key" => [String.t() | atom()],
        "total" => rule_preview_total()
      }
      
  """
  @type preview_result_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      automation_event_summary() :: %{
        "dimensions" => list(summary_dimension()),
        "key" => [String.t() | atom()],
        "timePeriod" => time_period(),
        "total" => summary_totals()
      }
      
  """
  @type automation_event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_automation_rule_response() :: %{
        "accountId" => String.t() | atom(),
        "createdTimestamp" => [non_neg_integer()],
        "criteria" => criteria(),
        "description" => [String.t() | atom()],
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "organizationConfiguration" => organization_configuration(),
        "priority" => [String.t() | atom()],
        "recommendedActionTypes" => list(list(any())()),
        "ruleArn" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleRevision" => [float()],
        "ruleType" => list(any()),
        "schedule" => schedule(),
        "status" => list(any()),
        "tags" => list(tag())
      }
      
  """
  @type get_automation_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_accounts_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("accountIds") => list(String.t() | atom())
      }
      
  """
  @type disassociate_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom(),
        required("ruleRevision") => [float()],
        required("tagKeys") => list([String.t() | atom()]())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_period() :: %{
        "endTimeExclusive" => [non_neg_integer()],
        "startTimeInclusive" => [non_neg_integer()]
      }
      
  """
  @type time_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_event_summaries_request() :: %{
        optional("endDateExclusive") => [String.t() | atom()],
        optional("filters") => list(automation_event_filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("startDateInclusive") => [String.t() | atom()]
      }
      
  """
  @type list_automation_event_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_automation_rule_response() :: %{
        "createdTimestamp" => [non_neg_integer()],
        "criteria" => criteria(),
        "description" => [String.t() | atom()],
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "organizationConfiguration" => organization_configuration(),
        "priority" => [String.t() | atom()],
        "recommendedActionTypes" => list(list(any())()),
        "ruleArn" => String.t() | atom(),
        "ruleRevision" => [float()],
        "ruleType" => list(any()),
        "schedule" => schedule(),
        "status" => list(any())
      }
      
  """
  @type update_automation_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recommended_action_filter() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type recommended_action_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rollback_automation_event_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("eventId") => String.t() | atom()
      }
      
  """
  @type rollback_automation_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      opt_in_required_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type opt_in_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_accounts_response() :: %{
        "accounts" => list(account_info()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_accounts_response() :: %{
        "accountIds" => list(String.t() | atom()),
        "errors" => list([String.t() | atom()]())
      }
      
  """
  @type disassociate_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_automation_rule_response() :: %{}
      
  """
  @type delete_automation_rule_response() :: %{}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ebs_volume() :: %{
        "configuration" => ebs_volume_configuration()
      }
      
  """
  @type ebs_volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      preview_result() :: %{
        "accountId" => String.t() | atom(),
        "currentResourceDetails" => list(),
        "currentResourceSummary" => [String.t() | atom()],
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "lookBackPeriodInDays" => [integer()],
        "recommendedActionId" => String.t() | atom(),
        "recommendedActionType" => list(any()),
        "recommendedResourceDetails" => list(),
        "recommendedResourceSummary" => [String.t() | atom()],
        "region" => [String.t() | atom()],
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceTags" => list(tag()),
        "resourceType" => list(any()),
        "restartNeeded" => [boolean()]
      }
      
  """
  @type preview_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      criteria() :: %{
        "ebsVolumeSizeInGib" => list(integer_criteria_condition()),
        "ebsVolumeType" => list(string_criteria_condition()),
        "estimatedMonthlySavings" => list(double_criteria_condition()),
        "lookBackPeriodInDays" => list(integer_criteria_condition()),
        "region" => list(string_criteria_condition()),
        "resourceArn" => list(string_criteria_condition()),
        "resourceTag" => list(resource_tags_criteria_condition()),
        "restartNeeded" => list(string_criteria_condition())
      }
      
  """
  @type criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      automation_rule() :: %{
        "accountId" => String.t() | atom(),
        "createdTimestamp" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "organizationConfiguration" => organization_configuration(),
        "priority" => [String.t() | atom()],
        "recommendedActionTypes" => list(list(any())()),
        "ruleArn" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleRevision" => [float()],
        "ruleType" => list(any()),
        "schedule" => schedule(),
        "status" => list(any())
      }
      
  """
  @type automation_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_automation_rule_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("criteria") => criteria(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("organizationConfiguration") => organization_configuration(),
        optional("priority") => [String.t() | atom()],
        optional("recommendedActionTypes") => list(list(any())()),
        optional("ruleType") => list(any()),
        optional("schedule") => schedule(),
        optional("status") => list(any()),
        required("ruleArn") => String.t() | atom(),
        required("ruleRevision") => [float()]
      }
      
  """
  @type update_automation_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_automation_rule_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("criteria") => criteria(),
        optional("description") => String.t() | atom(),
        optional("organizationConfiguration") => organization_configuration(),
        optional("priority") => [String.t() | atom()],
        optional("tags") => list(tag()),
        required("name") => String.t() | atom(),
        required("recommendedActionTypes") => list(list(any())()),
        required("ruleType") => list(any()),
        required("schedule") => schedule(),
        required("status") => list(any())
      }
      
  """
  @type create_automation_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      idempotency_token_in_use_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type idempotency_token_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_automation_event_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("recommendedActionId") => String.t() | atom()
      }
      
  """
  @type start_automation_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_enrollment_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("status") => list(any())
      }
      
  """
  @type update_enrollment_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_rules_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_automation_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_automation_event_request() :: %{
        required("eventId") => String.t() | atom()
      }
      
  """
  @type get_automation_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_enrollment_configuration_response() :: %{
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "organizationRuleMode" => list(any()),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type get_enrollment_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      estimated_monthly_savings() :: %{
        "afterDiscountSavings" => [float()],
        "beforeDiscountSavings" => [float()],
        "currency" => [String.t() | atom()],
        "savingsEstimationMode" => list(any())
      }
      
  """
  @type estimated_monthly_savings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      organization_scope() :: %{
        "accountIds" => list(String.t() | atom())
      }
      
  """
  @type organization_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_automation_rule_request() :: %{
        required("ruleArn") => String.t() | atom()
      }
      
  """
  @type get_automation_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schedule() :: %{
        "executionWindowInMinutes" => [integer()],
        "scheduleExpression" => [String.t() | atom()],
        "scheduleExpressionTimezone" => [String.t() | atom()]
      }
      
  """
  @type schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      summary_totals() :: %{
        "automationEventCount" => [integer()],
        "estimatedMonthlySavings" => estimated_monthly_savings()
      }
      
  """
  @type summary_totals() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_recommended_action_summaries_response() :: %{
        "nextToken" => String.t() | atom(),
        "recommendedActionSummaries" => list(recommended_action_summary())
      }
      
  """
  @type list_recommended_action_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_events_request() :: %{
        optional("endTimeExclusive") => [non_neg_integer()],
        optional("filters") => list(automation_event_filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("startTimeInclusive") => [non_neg_integer()]
      }
      
  """
  @type list_automation_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_event_steps_response() :: %{
        "automationEventSteps" => list(automation_event_step()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_automation_event_steps_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      automation_event_filter() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type automation_event_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rollback_automation_event_response() :: %{
        "eventId" => String.t() | atom(),
        "eventStatus" => list(any())
      }
      
  """
  @type rollback_automation_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_events_response() :: %{
        "automationEvents" => list(automation_event()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_automation_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      double_criteria_condition() :: %{
        "comparison" => list(any()),
        "values" => list([float()]())
      }
      
  """
  @type double_criteria_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_enrollment_configuration_response() :: %{
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type update_enrollment_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_automation_event_response() :: %{
        "accountId" => String.t() | atom(),
        "completedTimestamp" => [non_neg_integer()],
        "createdTimestamp" => [non_neg_integer()],
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "eventDescription" => [String.t() | atom()],
        "eventId" => String.t() | atom(),
        "eventStatus" => list(any()),
        "eventStatusReason" => [String.t() | atom()],
        "eventType" => list(any()),
        "recommendedActionId" => String.t() | atom(),
        "region" => [String.t() | atom()],
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any()),
        "ruleId" => String.t() | atom()
      }
      
  """
  @type get_automation_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_automation_rule_response() :: %{
        "createdTimestamp" => [non_neg_integer()],
        "criteria" => criteria(),
        "description" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "organizationConfiguration" => organization_configuration(),
        "priority" => [String.t() | atom()],
        "recommendedActionTypes" => list(list(any())()),
        "ruleArn" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleRevision" => [float()],
        "ruleType" => list(any()),
        "schedule" => schedule(),
        "status" => list(any()),
        "tags" => list(tag())
      }
      
  """
  @type create_automation_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tags_criteria_condition() :: %{
        "comparison" => list(any()),
        "key" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type resource_tags_criteria_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_automation_rule_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("ruleArn") => String.t() | atom(),
        required("ruleRevision") => [float()]
      }
      
  """
  @type delete_automation_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_recommended_action_summaries_request() :: %{
        optional("filters") => list(recommended_action_filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_recommended_action_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_rule_preview_response() :: %{
        "nextToken" => String.t() | atom(),
        "previewResults" => list(preview_result())
      }
      
  """
  @type list_automation_rule_preview_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_recommended_actions_request() :: %{
        optional("filters") => list(recommended_action_filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_recommended_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_accounts_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      integer_criteria_condition() :: %{
        "comparison" => list(any()),
        "values" => list([integer()]())
      }
      
  """
  @type integer_criteria_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_accounts_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("accountIds") => list(String.t() | atom())
      }
      
  """
  @type associate_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_enrollment_configuration_request() :: %{}
      
  """
  @type get_enrollment_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      automation_event_step() :: %{
        "completedTimestamp" => [non_neg_integer()],
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "eventId" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "startTimestamp" => [non_neg_integer()],
        "stepId" => String.t() | atom(),
        "stepStatus" => list(any()),
        "stepType" => list(any())
      }
      
  """
  @type automation_event_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_rules_response() :: %{
        "automationRules" => list(automation_rule()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_automation_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_automation_event_summaries_response() :: %{
        "automationEventSummaries" => list(automation_event_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_automation_event_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recommended_action_summary() :: %{
        "key" => [String.t() | atom()],
        "total" => recommended_action_total()
      }
      
  """
  @type recommended_action_summary() :: %{(String.t() | atom()) => any()}

  @type associate_accounts_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | forbidden_exception()
          | not_management_account_exception()

  @type create_automation_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type delete_automation_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type disassociate_accounts_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | forbidden_exception()
          | not_management_account_exception()

  @type get_automation_event_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type get_automation_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type get_enrollment_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type list_accounts_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()
          | not_management_account_exception()

  @type list_automation_event_steps_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type list_automation_event_summaries_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()

  @type list_automation_events_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()

  @type list_automation_rule_preview_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()

  @type list_automation_rule_preview_summaries_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()

  @type list_automation_rules_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()

  @type list_recommended_action_summaries_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()

  @type list_recommended_actions_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type rollback_automation_event_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type start_automation_event_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type update_automation_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()

  @type update_enrollment_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | idempotency_token_in_use_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | forbidden_exception()
          | not_management_account_exception()

  def metadata do
    %{
      api_version: "2025-09-22",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "aco-automation",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Compute Optimizer Automation",
      signature_version: "v4",
      signing_name: "aco-automation",
      target_prefix: "ComputeOptimizerAutomationService"
    }
  end

  @doc """
  Associates one or more member accounts with your organization's management
  account, enabling centralized implementation of optimization actions across
  those accounts.

  Once associated, the management account (or a delegated administrator) can apply
  recommended actions to the member account. When you associate a member account,
  its organization rule mode is automatically set to "Any allowed," which permits
  the management account to create Automation rules that automatically apply
  actions to that account. If the member account has not previously enabled the
  Automation feature, the association process automatically enables it.

  Only the management account or a delegated administrator can perform this
  action.
  """
  @spec associate_accounts(map(), associate_accounts_request(), list()) ::
          {:ok, associate_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_accounts_errors()}
  def associate_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateAccounts", input, options)
  end

  @doc """
  Creates a new automation rule to apply recommended actions to resources based on
  specified criteria.
  """
  @spec create_automation_rule(map(), create_automation_rule_request(), list()) ::
          {:ok, create_automation_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_automation_rule_errors()}
  def create_automation_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAutomationRule", input, options)
  end

  @doc """
  Deletes an existing automation rule.
  """
  @spec delete_automation_rule(map(), delete_automation_rule_request(), list()) ::
          {:ok, delete_automation_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_automation_rule_errors()}
  def delete_automation_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAutomationRule", input, options)
  end

  @doc """
  Disassociates member accounts from your organization's management account,
  removing centralized automation capabilities.

  Once disassociated, organization rules no longer apply to the member account,
  and the management account (or delegated administrator) cannot create Automation
  rules for that account.

  Only the management account or a delegated administrator can perform this
  action.
  """
  @spec disassociate_accounts(map(), disassociate_accounts_request(), list()) ::
          {:ok, disassociate_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_accounts_errors()}
  def disassociate_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateAccounts", input, options)
  end

  @doc """
  Retrieves details about a specific automation event.
  """
  @spec get_automation_event(map(), get_automation_event_request(), list()) ::
          {:ok, get_automation_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_automation_event_errors()}
  def get_automation_event(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAutomationEvent", input, options)
  end

  @doc """
  Retrieves details about a specific automation rule.
  """
  @spec get_automation_rule(map(), get_automation_rule_request(), list()) ::
          {:ok, get_automation_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_automation_rule_errors()}
  def get_automation_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAutomationRule", input, options)
  end

  @doc """
  Retrieves the current enrollment configuration for Compute Optimizer Automation.
  """
  @spec get_enrollment_configuration(map(), get_enrollment_configuration_request(), list()) ::
          {:ok, get_enrollment_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_enrollment_configuration_errors()}
  def get_enrollment_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnrollmentConfiguration", input, options)
  end

  @doc """
  Lists the accounts in your organization that are enrolled in Compute Optimizer
  and whether they have enabled Automation.

  Only the management account or a delegated administrator can perform this
  action.
  """
  @spec list_accounts(map(), list_accounts_request(), list()) ::
          {:ok, list_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_accounts_errors()}
  def list_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccounts", input, options)
  end

  @doc """
  Lists the steps for a specific automation event.

  You can only list steps for events created within the past year.
  """
  @spec list_automation_event_steps(map(), list_automation_event_steps_request(), list()) ::
          {:ok, list_automation_event_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_event_steps_errors()}
  def list_automation_event_steps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutomationEventSteps", input, options)
  end

  @doc """
  Provides a summary of automation events based on specified filters.

  Only events created within the past year will be included in the summary.
  """
  @spec list_automation_event_summaries(map(), list_automation_event_summaries_request(), list()) ::
          {:ok, list_automation_event_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_event_summaries_errors()}
  def list_automation_event_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutomationEventSummaries", input, options)
  end

  @doc """
  Lists automation events based on specified filters.

  You can retrieve events that were created within the past year.
  """
  @spec list_automation_events(map(), list_automation_events_request(), list()) ::
          {:ok, list_automation_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_events_errors()}
  def list_automation_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutomationEvents", input, options)
  end

  @doc """
  Returns a preview of the recommended actions that match your Automation rule's
  configuration and criteria.
  """
  @spec list_automation_rule_preview(map(), list_automation_rule_preview_request(), list()) ::
          {:ok, list_automation_rule_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_rule_preview_errors()}
  def list_automation_rule_preview(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutomationRulePreview", input, options)
  end

  @doc """
  Returns a summary of the recommended actions that match your rule preview
  configuration and criteria.
  """
  @spec list_automation_rule_preview_summaries(
          map(),
          list_automation_rule_preview_summaries_request(),
          list()
        ) ::
          {:ok, list_automation_rule_preview_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_rule_preview_summaries_errors()}
  def list_automation_rule_preview_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutomationRulePreviewSummaries", input, options)
  end

  @doc """
  Lists the automation rules that match specified filters.
  """
  @spec list_automation_rules(map(), list_automation_rules_request(), list()) ::
          {:ok, list_automation_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_automation_rules_errors()}
  def list_automation_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutomationRules", input, options)
  end

  @doc """
  Provides a summary of recommended actions based on specified filters.

  Management accounts and delegated administrators can retrieve recommended
  actions that include associated member accounts. You can associate a member
  account using `AssociateAccounts`.
  """
  @spec list_recommended_action_summaries(
          map(),
          list_recommended_action_summaries_request(),
          list()
        ) ::
          {:ok, list_recommended_action_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommended_action_summaries_errors()}
  def list_recommended_action_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommendedActionSummaries", input, options)
  end

  @doc """
  Lists the recommended actions based that match specified filters.

  Management accounts and delegated administrators can retrieve recommended
  actions that include associated member accounts. You can associate a member
  account using `AssociateAccounts`.
  """
  @spec list_recommended_actions(map(), list_recommended_actions_request(), list()) ::
          {:ok, list_recommended_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommended_actions_errors()}
  def list_recommended_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommendedActions", input, options)
  end

  @doc """
  Lists the tags for a specified resource.
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
  Initiates a rollback for a completed automation event.

  Management accounts and delegated administrators can only initiate a rollback
  for events belonging to associated member accounts. You can associate a member
  account using `AssociateAccounts`.
  """
  @spec rollback_automation_event(map(), rollback_automation_event_request(), list()) ::
          {:ok, rollback_automation_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rollback_automation_event_errors()}
  def rollback_automation_event(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RollbackAutomationEvent", input, options)
  end

  @doc """
  Initiates a one-time, on-demand automation for the specified recommended action.

  Management accounts and delegated administrators can only initiate recommended
  actions for associated member accounts. You can associate a member account using
  `AssociateAccounts`.
  """
  @spec start_automation_event(map(), start_automation_event_request(), list()) ::
          {:ok, start_automation_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_automation_event_errors()}
  def start_automation_event(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAutomationEvent", input, options)
  end

  @doc """
  Adds tags to the specified resource.
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
  Removes tags from the specified resource.
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
  Updates an existing automation rule.
  """
  @spec update_automation_rule(map(), update_automation_rule_request(), list()) ::
          {:ok, update_automation_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_automation_rule_errors()}
  def update_automation_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAutomationRule", input, options)
  end

  @doc """
  Updates your account’s Compute Optimizer Automation enrollment configuration.
  """
  @spec update_enrollment_configuration(map(), update_enrollment_configuration_request(), list()) ::
          {:ok, update_enrollment_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_enrollment_configuration_errors()}
  def update_enrollment_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnrollmentConfiguration", input, options)
  end
end
