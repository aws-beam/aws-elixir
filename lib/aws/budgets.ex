# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Budgets do
  @moduledoc """
  The AWS Budgets API enables you to use AWS Budgets to plan your service
  usage, service costs, and instance reservations. The API reference provides
  descriptions, syntax, and usage examples for each of the actions and data
  types for AWS Budgets.

  Budgets provide you with a way to see the following information:

  <ul> <li> How close your plan is to your budgeted amount or to the free
  tier limits

  </li> <li> Your usage-to-date, including how much you've used of your
  Reserved Instances (RIs)

  </li> <li> Your current estimated charges from AWS, and how much your
  predicted usage will accrue in charges by the end of the month

  </li> <li> How much of your budget has been used

  </li> </ul> AWS updates your budget status several times a day. Budgets
  track your unblended costs, subscriptions, refunds, and RIs. You can create
  the following types of budgets:

  <ul> <li> **Cost budgets** - Plan how much you want to spend on a service.

  </li> <li> **Usage budgets** - Plan how much you want to use one or more
  services.

  </li> <li> **RI utilization budgets** - Define a utilization threshold, and
  receive alerts when your RI usage falls below that threshold. This lets you
  see if your RIs are unused or under-utilized.

  </li> <li> **RI coverage budgets** - Define a coverage threshold, and
  receive alerts when the number of your instance hours that are covered by
  RIs fall below that threshold. This lets you see how much of your instance
  usage is covered by a reservation.

  </li> </ul> Service Endpoint

  The AWS Budgets API provides the following endpoint:

  <ul> <li> https://budgets.amazonaws.com

  </li> </ul> For information about costs that are associated with the AWS
  Budgets API, see [AWS Cost Management
  Pricing](https://aws.amazon.com/aws-cost-management/pricing/).
  """

  @doc """
  Creates a budget and, if included, notifications and subscribers.

  <important> Only one of `BudgetLimit` or `PlannedBudgetLimits` can be
  present in the syntax at one time. Use the syntax that matches your case.
  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples)
  section.

  </important>
  """
  def create_budget(client, input, options \\ []) do
    request(client, "CreateBudget", input, options)
  end

  @doc """
  Creates a notification. You must create the budget before you create the
  associated notification.
  """
  def create_notification(client, input, options \\ []) do
    request(client, "CreateNotification", input, options)
  end

  @doc """
  Creates a subscriber. You must create the associated budget and
  notification before you create the subscriber.
  """
  def create_subscriber(client, input, options \\ []) do
    request(client, "CreateSubscriber", input, options)
  end

  @doc """
  Deletes a budget. You can delete your budget at any time.

  <important> Deleting a budget also deletes the notifications and
  subscribers that are associated with that budget.

  </important>
  """
  def delete_budget(client, input, options \\ []) do
    request(client, "DeleteBudget", input, options)
  end

  @doc """
  Deletes a notification.

  <important> Deleting a notification also deletes the subscribers that are
  associated with the notification.

  </important>
  """
  def delete_notification(client, input, options \\ []) do
    request(client, "DeleteNotification", input, options)
  end

  @doc """
  Deletes a subscriber.

  <important> Deleting the last subscriber to a notification also deletes the
  notification.

  </important>
  """
  def delete_subscriber(client, input, options \\ []) do
    request(client, "DeleteSubscriber", input, options)
  end

  @doc """
  Describes a budget.

  <important> The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples)
  section.

  </important>
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

  <important> The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples)
  section.

  </important>
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
  Updates a budget. You can change every part of a budget except for the
  `budgetName` and the `calculatedSpend`. When you modify a budget, the
  `calculatedSpend` drops to zero until AWS has new usage data to use for
  forecasting.

  <important> Only one of `BudgetLimit` or `PlannedBudgetLimits` can be
  present in the syntax at one time. Use the syntax that matches your case.
  The Request Syntax section shows the `BudgetLimit` syntax. For
  `PlannedBudgetLimits`, see the
  [Examples](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples)
  section.

  </important>
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
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "budgets"}
    host = get_host("budgets", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSBudgetServiceGateway.#{action}"} | headers]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
