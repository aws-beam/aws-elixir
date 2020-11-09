# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Budgets do
  @moduledoc """
  The AWS Budgets API enables you to use AWS Budgets to plan your service usage,
  service costs, and instance reservations.

  The API reference provides descriptions, syntax, and usage examples for each of
  the actions and data types for AWS Budgets.

  Budgets provide you with a way to see the following information:

    * How close your plan is to your budgeted amount or to the free tier
  limits

    * Your usage-to-date, including how much you've used of your
  Reserved Instances (RIs)

    * Your current estimated charges from AWS, and how much your
  predicted usage will accrue in charges by the end of the month

    * How much of your budget has been used

  AWS updates your budget status several times a day. Budgets track your unblended
  costs, subscriptions, refunds, and RIs. You can create the following types of
  budgets:

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

  The AWS Budgets API provides the following endpoint:

    * https://budgets.amazonaws.com

  For information about costs that are associated with the AWS Budgets API, see
  [AWS Cost Management Pricing](https://aws.amazon.com/aws-cost-management/pricing/).
  """

  @doc """
  Creates a budget and, if included, notifications and subscribers.

  Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in the syntax
  at one time. Use the syntax that matches your case. The Request Syntax section
  shows the `BudgetLimit` syntax. For `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples)
  section.
  """
  def create_budget(client, input, options \\ []) do
    request(client, "CreateBudget", input, options)
  end

  @doc """
  Creates a notification.

  You must create the budget before you create the associated notification.
  """
  def create_notification(client, input, options \\ []) do
    request(client, "CreateNotification", input, options)
  end

  @doc """
  Creates a subscriber.

  You must create the associated budget and notification before you create the
  subscriber.
  """
  def create_subscriber(client, input, options \\ []) do
    request(client, "CreateSubscriber", input, options)
  end

  @doc """
  Deletes a budget.

  You can delete your budget at any time.

  Deleting a budget also deletes the notifications and subscribers that are
  associated with that budget.
  """
  def delete_budget(client, input, options \\ []) do
    request(client, "DeleteBudget", input, options)
  end

  @doc """
  Deletes a notification.

  Deleting a notification also deletes the subscribers that are associated with
  the notification.
  """
  def delete_notification(client, input, options \\ []) do
    request(client, "DeleteNotification", input, options)
  end

  @doc """
  Deletes a subscriber.

  Deleting the last subscriber to a notification also deletes the notification.
  """
  def delete_subscriber(client, input, options \\ []) do
    request(client, "DeleteSubscriber", input, options)
  end

  @doc """
  Describes a budget.

  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples)
  section.
  """
  def describe_budget(client, input, options \\ []) do
    request(client, "DescribeBudget", input, options)
  end

  @doc """
  Describes the history for `DAILY`, `MONTHLY`, and `QUARTERLY` budgets.

  Budget history isn't available for `ANNUAL` budgets.
  """
  def describe_budget_performance_history(client, input, options \\ []) do
    request(client, "DescribeBudgetPerformanceHistory", input, options)
  end

  @doc """
  Lists the budgets that are associated with an account.

  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples)
  section.
  """
  def describe_budgets(client, input, options \\ []) do
    request(client, "DescribeBudgets", input, options)
  end

  @doc """
  Lists the notifications that are associated with a budget.
  """
  def describe_notifications_for_budget(client, input, options \\ []) do
    request(client, "DescribeNotificationsForBudget", input, options)
  end

  @doc """
  Lists the subscribers that are associated with a notification.
  """
  def describe_subscribers_for_notification(client, input, options \\ []) do
    request(client, "DescribeSubscribersForNotification", input, options)
  end

  @doc """
  Updates a budget.

  You can change every part of a budget except for the `budgetName` and the
  `calculatedSpend`. When you modify a budget, the `calculatedSpend` drops to zero
  until AWS has new usage data to use for forecasting.

  Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in the syntax
  at one time. Use the syntax that matches your case. The Request Syntax section
  shows the `BudgetLimit` syntax. For `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples)
  section.
  """
  def update_budget(client, input, options \\ []) do
    request(client, "UpdateBudget", input, options)
  end

  @doc """
  Updates a notification.
  """
  def update_notification(client, input, options \\ []) do
    request(client, "UpdateNotification", input, options)
  end

  @doc """
  Updates a subscriber.
  """
  def update_subscriber(client, input, options \\ []) do
    request(client, "UpdateSubscriber", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "budgets",
                        region:  "us-east-1"}
    host = build_host("budgets", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSBudgetServiceGateway.#{action}"}
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
  defp build_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
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
