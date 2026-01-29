# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Budgets do
  @moduledoc """
  Use the Amazon Web Services Budgets API to plan your service usage, service
  costs, and instance reservations.

  This API reference provides descriptions, syntax, and usage examples for each of
  the actions and data types for the Amazon Web Services Budgets feature.

  Budgets provide you with a way to see the following information:

    *
  How close your plan is to your budgeted amount or to the free tier limits

    *
  Your usage-to-date, including how much you've used of your Reserved Instances
  (RIs)

    *
  Your current estimated charges from Amazon Web Services, and how much your
  predicted usage will accrue in charges by the end of the month

    *
  How much of your budget has been used

  Amazon Web Services updates your budget status several times a day. Budgets
  track your unblended costs, subscriptions, refunds, and RIs. You can create the
  following types of budgets:

    *

  **Cost budgets** - Plan how much you want to spend on a service.

    *

  **Usage budgets** - Plan how much you want to use one or more services.

    *

  **RI utilization budgets** - Define a utilization threshold, and receive alerts
  when your RI usage falls below that threshold. This lets you see if your RIs are
  unused or under-utilized.

    *

  **RI coverage budgets** - Define a coverage threshold, and receive alerts when
  the number of your instance hours that are covered by RIs fall below that
  threshold. This lets you see how much of your instance usage is covered by a
  reservation.

  Service Endpoint

  The Amazon Web Services Budgets API provides the following endpoint:

    *
  https://budgets.amazonaws.com

  For information about costs that are associated with the Amazon Web Services
  Budgets API, see [Amazon Web Services Cost Management Pricing](https://aws.amazon.com/aws-cost-management/pricing/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      delete_budget_action_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("ActionId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type delete_budget_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expression_dimension_values() :: %{
        "Key" => list(any()),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type expression_dimension_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("ResourceTags") => list(resource_tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budgets_response() :: %{
        "Budgets" => list(budget()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_budgets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_notifications_for_account_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AccountId") => String.t() | atom()
      }
      
  """
  @type describe_budget_notifications_for_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_budget_response() :: %{}
      
  """
  @type delete_budget_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_subscriber_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("Notification") => notification(),
        required("Subscriber") => subscriber()
      }
      
  """
  @type delete_subscriber_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_budget_action_response() :: %{
        "AccountId" => String.t() | atom(),
        "Action" => action(),
        "BudgetName" => String.t() | atom()
      }
      
  """
  @type delete_budget_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_histories_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TimePeriod") => time_period(),
        required("AccountId") => String.t() | atom(),
        required("ActionId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type describe_budget_action_histories_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_budget_response() :: %{}
      
  """
  @type create_budget_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_subscriber_response() :: %{}
      
  """
  @type update_subscriber_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_values() :: %{
        "Key" => String.t() | atom(),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type tag_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      action_threshold() :: %{
        "ActionThresholdType" => list(any()),
        "ActionThresholdValue" => float()
      }
      
  """
  @type action_threshold() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_subscriber_response() :: %{}
      
  """
  @type create_subscriber_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("ResourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_budget_action_request() :: %{
        optional("ActionThreshold") => action_threshold(),
        optional("ApprovalModel") => list(any()),
        optional("Definition") => definition(),
        optional("ExecutionRoleArn") => String.t() | atom(),
        optional("NotificationType") => list(any()),
        optional("Subscribers") => list(subscriber()),
        required("AccountId") => String.t() | atom(),
        required("ActionId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type update_budget_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_account_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AccountId") => String.t() | atom()
      }
      
  """
  @type describe_budget_actions_for_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budgets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ShowFilterExpression") => boolean(),
        required("AccountId") => String.t() | atom()
      }
      
  """
  @type describe_budgets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_period() :: %{
        "End" => non_neg_integer(),
        "Start" => non_neg_integer()
      }
      
  """
  @type time_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_notification_response() :: %{}
      
  """
  @type create_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_budget_response() :: %{
        "Actions" => list(action()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_budget_actions_for_budget_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_budget_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type describe_budget_actions_for_budget_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_budget_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("NewBudget") => budget()
      }
      
  """
  @type update_budget_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_subscriber_response() :: %{}
      
  """
  @type delete_subscriber_response() :: %{}

  @typedoc """

  ## Example:
      
      expired_next_token_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type expired_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_subscribers_for_notification_response() :: %{
        "NextToken" => String.t() | atom(),
        "Subscribers" => list(subscriber())
      }
      
  """
  @type describe_subscribers_for_notification_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_notifications_for_account_response() :: %{
        "BudgetNotificationsForAccount" => list(budget_notifications_for_account()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_budget_notifications_for_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_budget_action_response() :: %{
        "AccountId" => String.t() | atom(),
        "ActionId" => String.t() | atom(),
        "BudgetName" => String.t() | atom(),
        "ExecutionType" => list(any())
      }
      
  """
  @type execute_budget_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      calculated_spend() :: %{
        "ActualSpend" => spend(),
        "ForecastedSpend" => spend()
      }
      
  """
  @type calculated_spend() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_subscriber_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("NewSubscriber") => subscriber(),
        required("Notification") => notification(),
        required("OldSubscriber") => subscriber()
      }
      
  """
  @type update_subscriber_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scp_action_definition() :: %{
        "PolicyId" => String.t() | atom(),
        "TargetIds" => list(String.t() | atom())
      }
      
  """
  @type scp_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_performance_history_response() :: %{
        "BudgetPerformanceHistory" => budget_performance_history(),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_budget_performance_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      action_history() :: %{
        "ActionHistoryDetails" => action_history_details(),
        "EventType" => list(any()),
        "Status" => list(any()),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type action_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ssm_action_definition() :: %{
        "ActionSubType" => list(any()),
        "InstanceIds" => list(String.t() | atom()),
        "Region" => String.t() | atom()
      }
      
  """
  @type ssm_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_view_health_status_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type billing_view_health_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_histories_response() :: %{
        "ActionHistories" => list(action_history()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_budget_action_histories_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_types() :: %{
        "IncludeCredit" => boolean(),
        "IncludeDiscount" => boolean(),
        "IncludeOtherSubscription" => boolean(),
        "IncludeRecurring" => boolean(),
        "IncludeRefund" => boolean(),
        "IncludeSubscription" => boolean(),
        "IncludeSupport" => boolean(),
        "IncludeTax" => boolean(),
        "IncludeUpfront" => boolean(),
        "UseAmortized" => boolean(),
        "UseBlended" => boolean()
      }
      
  """
  @type cost_types() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_budget_response() :: %{}
      
  """
  @type update_budget_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceTags" => list(resource_tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_adjust_data() :: %{
        "AutoAdjustType" => list(any()),
        "HistoricalOptions" => historical_options(),
        "LastAutoAdjustTime" => non_neg_integer()
      }
      
  """
  @type auto_adjust_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification_with_subscribers() :: %{
        "Notification" => notification(),
        "Subscribers" => list(subscriber())
      }
      
  """
  @type notification_with_subscribers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscriber() :: %{
        "Address" => String.t() | atom(),
        "SubscriptionType" => list(any())
      }
      
  """
  @type subscriber() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_budget_action_request() :: %{
        optional("ResourceTags") => list(resource_tag()),
        required("AccountId") => String.t() | atom(),
        required("ActionThreshold") => action_threshold(),
        required("ActionType") => list(any()),
        required("ApprovalModel") => list(any()),
        required("BudgetName") => String.t() | atom(),
        required("Definition") => definition(),
        required("ExecutionRoleArn") => String.t() | atom(),
        required("NotificationType") => list(any()),
        required("Subscribers") => list(subscriber())
      }
      
  """
  @type create_budget_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      health_status() :: %{
        "LastUpdatedTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }
      
  """
  @type health_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_notifications_for_budget_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type describe_notifications_for_budget_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("ActionId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type describe_budget_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_request() :: %{
        optional("ShowFilterExpression") => boolean(),
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type describe_budget_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_notification_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("NewNotification") => notification(),
        required("OldNotification") => notification()
      }
      
  """
  @type update_notification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_actions_for_account_response() :: %{
        "Actions" => list(action()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_budget_actions_for_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      action() :: %{
        "ActionId" => String.t() | atom(),
        "ActionThreshold" => action_threshold(),
        "ActionType" => list(any()),
        "ApprovalModel" => list(any()),
        "BudgetName" => String.t() | atom(),
        "Definition" => definition(),
        "ExecutionRoleArn" => String.t() | atom(),
        "NotificationType" => list(any()),
        "Status" => list(any()),
        "Subscribers" => list(subscriber())
      }
      
  """
  @type action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_values() :: %{
        "Key" => String.t() | atom(),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type cost_category_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      budget() :: %{
        "AutoAdjustData" => auto_adjust_data(),
        "BillingViewArn" => String.t() | atom(),
        "BudgetLimit" => spend(),
        "BudgetName" => String.t() | atom(),
        "BudgetType" => list(any()),
        "CalculatedSpend" => calculated_spend(),
        "CostFilters" => map(),
        "CostTypes" => cost_types(),
        "FilterExpression" => expression(),
        "HealthStatus" => health_status(),
        "LastUpdatedTime" => non_neg_integer(),
        "Metrics" => list(list(any())()),
        "PlannedBudgetLimits" => map(),
        "TimePeriod" => time_period(),
        "TimeUnit" => list(any())
      }
      
  """
  @type budget() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      historical_options() :: %{
        "BudgetAdjustmentPeriod" => integer(),
        "LookBackAvailablePeriods" => integer()
      }
      
  """
  @type historical_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_budget_request() :: %{
        optional("NotificationsWithSubscribers") => list(notification_with_subscribers()),
        optional("ResourceTags") => list(resource_tag()),
        required("AccountId") => String.t() | atom(),
        required("Budget") => budget()
      }
      
  """
  @type create_budget_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_budget_action_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("ActionId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("ExecutionType") => list(any())
      }
      
  """
  @type execute_budget_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_notification_response() :: %{}
      
  """
  @type delete_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_response() :: %{
        "Budget" => budget()
      }
      
  """
  @type describe_budget_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_locked_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_locked_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_notifications_for_budget_response() :: %{
        "NextToken" => String.t() | atom(),
        "Notifications" => list(notification())
      }
      
  """
  @type describe_notifications_for_budget_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_budget_action_response() :: %{
        "AccountId" => String.t() | atom(),
        "ActionId" => String.t() | atom(),
        "BudgetName" => String.t() | atom()
      }
      
  """
  @type create_budget_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      definition() :: %{
        "IamActionDefinition" => iam_action_definition(),
        "ScpActionDefinition" => scp_action_definition(),
        "SsmActionDefinition" => ssm_action_definition()
      }
      
  """
  @type definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "And" => list(expression()),
        "CostCategories" => cost_category_values(),
        "Dimensions" => expression_dimension_values(),
        "Not" => expression(),
        "Or" => list(expression()),
        "Tags" => tag_values()
      }
      
  """
  @type expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      budgeted_and_actual_amounts() :: %{
        "ActualAmount" => spend(),
        "BudgetedAmount" => spend(),
        "TimePeriod" => time_period()
      }
      
  """
  @type budgeted_and_actual_amounts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_budget_action_response() :: %{
        "AccountId" => String.t() | atom(),
        "BudgetName" => String.t() | atom(),
        "NewAction" => action(),
        "OldAction" => action()
      }
      
  """
  @type update_budget_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification() :: %{
        "ComparisonOperator" => list(any()),
        "NotificationState" => list(any()),
        "NotificationType" => list(any()),
        "Threshold" => float(),
        "ThresholdType" => list(any())
      }
      
  """
  @type notification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      budget_performance_history() :: %{
        "BillingViewArn" => String.t() | atom(),
        "BudgetName" => String.t() | atom(),
        "BudgetType" => list(any()),
        "BudgetedAndActualAmountsList" => list(budgeted_and_actual_amounts()),
        "CostFilters" => map(),
        "CostTypes" => cost_types(),
        "FilterExpression" => expression(),
        "Metrics" => list(list(any())()),
        "TimeUnit" => list(any())
      }
      
  """
  @type budget_performance_history() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_action_response() :: %{
        "AccountId" => String.t() | atom(),
        "Action" => action(),
        "BudgetName" => String.t() | atom()
      }
      
  """
  @type describe_budget_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_budget_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type delete_budget_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_subscriber_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("Notification") => notification(),
        required("Subscriber") => subscriber()
      }
      
  """
  @type create_subscriber_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_action_definition() :: %{
        "Groups" => list(String.t() | atom()),
        "PolicyArn" => String.t() | atom(),
        "Roles" => list(String.t() | atom()),
        "Users" => list(String.t() | atom())
      }
      
  """
  @type iam_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_notification_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("Notification") => notification()
      }
      
  """
  @type delete_notification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_record_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type duplicate_record_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      budget_notifications_for_account() :: %{
        "BudgetName" => String.t() | atom(),
        "Notifications" => list(notification())
      }
      
  """
  @type budget_notifications_for_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_notification_response() :: %{}
      
  """
  @type update_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      create_notification_request() :: %{
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("Notification") => notification(),
        required("Subscribers") => list(subscriber())
      }
      
  """
  @type create_notification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      spend() :: %{
        "Amount" => String.t() | atom(),
        "Unit" => String.t() | atom()
      }
      
  """
  @type spend() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_budget_performance_history_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TimePeriod") => time_period(),
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom()
      }
      
  """
  @type describe_budget_performance_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      creation_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type creation_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      action_history_details() :: %{
        "Action" => action(),
        "Message" => String.t() | atom()
      }
      
  """
  @type action_history_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_subscribers_for_notification_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AccountId") => String.t() | atom(),
        required("BudgetName") => String.t() | atom(),
        required("Notification") => notification()
      }
      
  """
  @type describe_subscribers_for_notification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_error_exception() :: %{(String.t() | atom()) => any()}

  @type create_budget_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | billing_view_health_status_exception()
          | service_quota_exceeded_exception()

  @type create_budget_action_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()

  @type create_notification_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type create_subscriber_errors() ::
          internal_error_exception()
          | creation_limit_exceeded_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | resource_locked_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_notification_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type delete_subscriber_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type describe_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type describe_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type describe_budget_action_histories_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()

  @type describe_budget_actions_for_account_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()

  @type describe_budget_actions_for_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()

  @type describe_budget_notifications_for_account_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_budget_performance_history_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | billing_view_health_status_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_budgets_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_notifications_for_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type describe_subscribers_for_notification_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | invalid_next_token_exception()
          | expired_next_token_exception()

  @type execute_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | resource_locked_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type list_tags_for_resource_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type tag_resource_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | service_quota_exceeded_exception()

  @type untag_resource_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type update_budget_errors() ::
          internal_error_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()
          | billing_view_health_status_exception()
          | service_quota_exceeded_exception()

  @type update_budget_action_errors() ::
          internal_error_exception()
          | throttling_exception()
          | resource_locked_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type update_notification_errors() ::
          internal_error_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  @type update_subscriber_errors() ::
          internal_error_exception()
          | duplicate_record_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | not_found_exception()

  def metadata do
    %{
      api_version: "2016-10-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "budgets",
      global?: true,
      hostname: "budgets.amazonaws.com",
      protocol: "json",
      service_id: "Budgets",
      signature_version: "v4",
      signing_name: "budgets",
      target_prefix: "AWSBudgetServiceGateway"
    }
  end

  @doc """
  Creates a budget and, if included, notifications and subscribers.

  Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in
  the syntax at one time. Use the syntax that matches your use case. The Request
  Syntax
  section shows the `BudgetLimit` syntax. For `PlannedBudgetLimits`,
  see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples)
  section.

  Similarly, only one set of filter and metric selections can be present in the
  syntax
  at one time. Either `FilterExpression` and `Metrics` or
  `CostFilters` and `CostTypes`, not both or a different
  combination. We recommend using `FilterExpression` and `Metrics`
  as they provide more flexible and powerful filtering capabilities. The Request
  Syntax
  section shows the `FilterExpression`/`Metrics` syntax.
  """
  @spec create_budget(map(), create_budget_request(), list()) ::
          {:ok, create_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_budget_errors()}
  def create_budget(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBudget", input, options)
  end

  @doc """

  Creates a budget action.
  """
  @spec create_budget_action(map(), create_budget_action_request(), list()) ::
          {:ok, create_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_budget_action_errors()}
  def create_budget_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBudgetAction", input, options)
  end

  @doc """
  Creates a notification.

  You must create the budget before you create the associated notification.
  """
  @spec create_notification(map(), create_notification_request(), list()) ::
          {:ok, create_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_notification_errors()}
  def create_notification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNotification", input, options)
  end

  @doc """
  Creates a subscriber.

  You must create the associated budget and notification before you create the
  subscriber.
  """
  @spec create_subscriber(map(), create_subscriber_request(), list()) ::
          {:ok, create_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_subscriber_errors()}
  def create_subscriber(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSubscriber", input, options)
  end

  @doc """
  Deletes a budget.

  You can delete your budget at any time.

  Deleting a budget also deletes the notifications and subscribers that are
  associated with that budget.
  """
  @spec delete_budget(map(), delete_budget_request(), list()) ::
          {:ok, delete_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_budget_errors()}
  def delete_budget(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBudget", input, options)
  end

  @doc """

  Deletes a budget action.
  """
  @spec delete_budget_action(map(), delete_budget_action_request(), list()) ::
          {:ok, delete_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_budget_action_errors()}
  def delete_budget_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBudgetAction", input, options)
  end

  @doc """
  Deletes a notification.

  Deleting a notification also deletes the subscribers that are associated with
  the notification.
  """
  @spec delete_notification(map(), delete_notification_request(), list()) ::
          {:ok, delete_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_notification_errors()}
  def delete_notification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNotification", input, options)
  end

  @doc """
  Deletes a subscriber.

  Deleting the last subscriber to a notification also deletes the notification.
  """
  @spec delete_subscriber(map(), delete_subscriber_request(), list()) ::
          {:ok, delete_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_subscriber_errors()}
  def delete_subscriber(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSubscriber", input, options)
  end

  @doc """
  Describes a budget.

  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples)
  section.
  """
  @spec describe_budget(map(), describe_budget_request(), list()) ::
          {:ok, describe_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budget_errors()}
  def describe_budget(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudget", input, options)
  end

  @doc """

  Describes a budget action detail.
  """
  @spec describe_budget_action(map(), describe_budget_action_request(), list()) ::
          {:ok, describe_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budget_action_errors()}
  def describe_budget_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudgetAction", input, options)
  end

  @doc """

  Describes a budget action history detail.
  """
  @spec describe_budget_action_histories(
          map(),
          describe_budget_action_histories_request(),
          list()
        ) ::
          {:ok, describe_budget_action_histories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budget_action_histories_errors()}
  def describe_budget_action_histories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudgetActionHistories", input, options)
  end

  @doc """

  Describes all of the budget actions for an account.
  """
  @spec describe_budget_actions_for_account(
          map(),
          describe_budget_actions_for_account_request(),
          list()
        ) ::
          {:ok, describe_budget_actions_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budget_actions_for_account_errors()}
  def describe_budget_actions_for_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudgetActionsForAccount", input, options)
  end

  @doc """

  Describes all of the budget actions for a budget.
  """
  @spec describe_budget_actions_for_budget(
          map(),
          describe_budget_actions_for_budget_request(),
          list()
        ) ::
          {:ok, describe_budget_actions_for_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budget_actions_for_budget_errors()}
  def describe_budget_actions_for_budget(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudgetActionsForBudget", input, options)
  end

  @doc """
  Lists the budget names and notifications that are associated with an account.
  """
  @spec describe_budget_notifications_for_account(
          map(),
          describe_budget_notifications_for_account_request(),
          list()
        ) ::
          {:ok, describe_budget_notifications_for_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budget_notifications_for_account_errors()}
  def describe_budget_notifications_for_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudgetNotificationsForAccount", input, options)
  end

  @doc """
  Describes the history for `DAILY`, `MONTHLY`, and `QUARTERLY` budgets.

  Budget history isn't available for `ANNUAL` budgets.
  """
  @spec describe_budget_performance_history(
          map(),
          describe_budget_performance_history_request(),
          list()
        ) ::
          {:ok, describe_budget_performance_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budget_performance_history_errors()}
  def describe_budget_performance_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudgetPerformanceHistory", input, options)
  end

  @doc """
  Lists the budgets that are associated with an account.

  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples)
  section.
  """
  @spec describe_budgets(map(), describe_budgets_request(), list()) ::
          {:ok, describe_budgets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_budgets_errors()}
  def describe_budgets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBudgets", input, options)
  end

  @doc """
  Lists the notifications that are associated with a budget.
  """
  @spec describe_notifications_for_budget(
          map(),
          describe_notifications_for_budget_request(),
          list()
        ) ::
          {:ok, describe_notifications_for_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_notifications_for_budget_errors()}
  def describe_notifications_for_budget(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeNotificationsForBudget", input, options)
  end

  @doc """
  Lists the subscribers that are associated with a notification.
  """
  @spec describe_subscribers_for_notification(
          map(),
          describe_subscribers_for_notification_request(),
          list()
        ) ::
          {:ok, describe_subscribers_for_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_subscribers_for_notification_errors()}
  def describe_subscribers_for_notification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSubscribersForNotification", input, options)
  end

  @doc """

  Executes a budget action.
  """
  @spec execute_budget_action(map(), execute_budget_action_request(), list()) ::
          {:ok, execute_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_budget_action_errors()}
  def execute_budget_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteBudgetAction", input, options)
  end

  @doc """
  Lists tags associated with a budget or budget action resource.
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
  Creates tags for a budget or budget action resource.
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
  Deletes tags associated with a budget or budget action resource.
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
  Updates a budget.

  You can change every part of a budget except for the `budgetName` and the
  `calculatedSpend`. When you modify a budget, the `calculatedSpend` drops to zero
  until Amazon Web Services has new usage data to use for forecasting.

  Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in
  the syntax at one time. Use the syntax that matches your case. The Request
  Syntax
  section shows the `BudgetLimit` syntax. For `PlannedBudgetLimits`,
  see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples)
  section.

  Similarly, only one set of filter and metric selections can be present in the
  syntax
  at one time. Either `FilterExpression` and `Metrics` or
  `CostFilters` and `CostTypes`, not both or a different
  combination. We recommend using `FilterExpression` and `Metrics`
  as they provide more flexible and powerful filtering capabilities. The Request
  Syntax
  section shows the `FilterExpression`/`Metrics` syntax.
  """
  @spec update_budget(map(), update_budget_request(), list()) ::
          {:ok, update_budget_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_budget_errors()}
  def update_budget(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBudget", input, options)
  end

  @doc """

  Updates a budget action.
  """
  @spec update_budget_action(map(), update_budget_action_request(), list()) ::
          {:ok, update_budget_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_budget_action_errors()}
  def update_budget_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBudgetAction", input, options)
  end

  @doc """
  Updates a notification.
  """
  @spec update_notification(map(), update_notification_request(), list()) ::
          {:ok, update_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_notification_errors()}
  def update_notification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNotification", input, options)
  end

  @doc """
  Updates a subscriber.
  """
  @spec update_subscriber(map(), update_subscriber_request(), list()) ::
          {:ok, update_subscriber_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_subscriber_errors()}
  def update_subscriber(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSubscriber", input, options)
  end
end
