# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Budgets do
  @moduledoc """
  The Amazon Web Services Budgets API enables you to use Amazon Web Services
  Budgets to plan your service usage, service costs, and instance reservations.

  The API reference provides descriptions, syntax, and usage examples for each of
  the actions and data types for Amazon Web Services Budgets.

  Budgets provide you with a way to see the following information:

    * How close your plan is to your budgeted amount or to the free tier
  limits

    * Your usage-to-date, including how much you've used of your
  Reserved Instances (RIs)

    * Your current estimated charges from Amazon Web Services, and how
  much your predicted usage will accrue in charges by the end of the month

    * How much of your budget has been used

  Amazon Web Services updates your budget status several times a day. Budgets
  track your unblended costs, subscriptions, refunds, and RIs. You can create the
  following types of budgets:

    * **Cost budgets** - Plan how much you want to spend on a service.

    * **Usage budgets** - Plan how much you want to use one or more
  services.

    * **RI utilization budgets** - Define a utilization threshold, and
  receive alerts when your RI usage falls below that threshold. This lets you see
  if your RIs are unused or under-utilized.

    * **RI coverage budgets** - Define a coverage threshold, and receive
  alerts when the number of your instance hours that are covered by RIs fall below
  that threshold. This lets you see how much of your instance usage is covered by
  a reservation.

  Service Endpoint

  The Amazon Web Services Budgets API provides the following endpoint:

    * https://budgets.amazonaws.com

  For information about costs that are associated with the Amazon Web Services
  Budgets API, see [Amazon Web Services Cost Management Pricing](https://aws.amazon.com/aws-cost-management/pricing/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "AWSBudgets",
      api_version: "2016-10-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "budgets",
      global?: true,
      protocol: "json",
      service_id: "Budgets",
      signature_version: "v4",
      signing_name: "budgets",
      target_prefix: "AWSBudgetServiceGateway"
    }
  end

  @doc """
  Creates a budget and, if included, notifications and subscribers.

  Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in the syntax
  at one time. Use the syntax that matches your case. The Request Syntax section
  shows the `BudgetLimit` syntax. For `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples)
  section.
  """
  def create_budget(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateBudget", input, options)
  end

  @doc """
  Creates a budget action.
  """
  def create_budget_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateBudgetAction", input, options)
  end

  @doc """
  Creates a notification.

  You must create the budget before you create the associated notification.
  """
  def create_notification(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateNotification", input, options)
  end

  @doc """
  Creates a subscriber.

  You must create the associated budget and notification before you create the
  subscriber.
  """
  def create_subscriber(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSubscriber", input, options)
  end

  @doc """
  Deletes a budget.

  You can delete your budget at any time.

  Deleting a budget also deletes the notifications and subscribers that are
  associated with that budget.
  """
  def delete_budget(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteBudget", input, options)
  end

  @doc """
  Deletes a budget action.
  """
  def delete_budget_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteBudgetAction", input, options)
  end

  @doc """
  Deletes a notification.

  Deleting a notification also deletes the subscribers that are associated with
  the notification.
  """
  def delete_notification(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteNotification", input, options)
  end

  @doc """
  Deletes a subscriber.

  Deleting the last subscriber to a notification also deletes the notification.
  """
  def delete_subscriber(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSubscriber", input, options)
  end

  @doc """
  Describes a budget.

  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples)
  section.
  """
  def describe_budget(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBudget", input, options)
  end

  @doc """
  Describes a budget action detail.
  """
  def describe_budget_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBudgetAction", input, options)
  end

  @doc """
  Describes a budget action history detail.
  """
  def describe_budget_action_histories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBudgetActionHistories", input, options)
  end

  @doc """
  Describes all of the budget actions for an account.
  """
  def describe_budget_actions_for_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBudgetActionsForAccount", input, options)
  end

  @doc """
  Describes all of the budget actions for a budget.
  """
  def describe_budget_actions_for_budget(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBudgetActionsForBudget", input, options)
  end

  @doc """
  Describes the history for `DAILY`, `MONTHLY`, and `QUARTERLY` budgets.

  Budget history isn't available for `ANNUAL` budgets.
  """
  def describe_budget_performance_history(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBudgetPerformanceHistory", input, options)
  end

  @doc """
  Lists the budgets that are associated with an account.

  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples)
  section.
  """
  def describe_budgets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeBudgets", input, options)
  end

  @doc """
  Lists the notifications that are associated with a budget.
  """
  def describe_notifications_for_budget(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeNotificationsForBudget", input, options)
  end

  @doc """
  Lists the subscribers that are associated with a notification.
  """
  def describe_subscribers_for_notification(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSubscribersForNotification", input, options)
  end

  @doc """
  Executes a budget action.
  """
  def execute_budget_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExecuteBudgetAction", input, options)
  end

  @doc """
  Updates a budget.

  You can change every part of a budget except for the `budgetName` and the
  `calculatedSpend`. When you modify a budget, the `calculatedSpend` drops to zero
  until Amazon Web Services has new usage data to use for forecasting.

  Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in the syntax
  at one time. Use the syntax that matches your case. The Request Syntax section
  shows the `BudgetLimit` syntax. For `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples)
  section.
  """
  def update_budget(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateBudget", input, options)
  end

  @doc """
  Updates a budget action.
  """
  def update_budget_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateBudgetAction", input, options)
  end

  @doc """
  Updates a notification.
  """
  def update_notification(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateNotification", input, options)
  end

  @doc """
  Updates a subscriber.
  """
  def update_subscriber(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSubscriber", input, options)
  end
end
