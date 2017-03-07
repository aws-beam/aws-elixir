# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Budgets do
  @moduledoc """
  All public APIs for AWS Budgets
  """

  @doc """
  Create a new budget
  """
  def create_budget(client, input, options \\ []) do
    request(client, "CreateBudget", input, options)
  end

  @doc """
  Create a new Notification with subscribers for a budget
  """
  def create_notification(client, input, options \\ []) do
    request(client, "CreateNotification", input, options)
  end

  @doc """
  Create a new Subscriber for a notification
  """
  def create_subscriber(client, input, options \\ []) do
    request(client, "CreateSubscriber", input, options)
  end

  @doc """
  Delete a budget and related notifications
  """
  def delete_budget(client, input, options \\ []) do
    request(client, "DeleteBudget", input, options)
  end

  @doc """
  Delete a notification and related subscribers
  """
  def delete_notification(client, input, options \\ []) do
    request(client, "DeleteNotification", input, options)
  end

  @doc """
  Delete a Subscriber for a notification
  """
  def delete_subscriber(client, input, options \\ []) do
    request(client, "DeleteSubscriber", input, options)
  end

  @doc """
  Get a single budget
  """
  def describe_budget(client, input, options \\ []) do
    request(client, "DescribeBudget", input, options)
  end

  @doc """
  Get all budgets for an account
  """
  def describe_budgets(client, input, options \\ []) do
    request(client, "DescribeBudgets", input, options)
  end

  @doc """
  Get notifications of a budget
  """
  def describe_notifications_for_budget(client, input, options \\ []) do
    request(client, "DescribeNotificationsForBudget", input, options)
  end

  @doc """
  Get subscribers of a notification
  """
  def describe_subscribers_for_notification(client, input, options \\ []) do
    request(client, "DescribeSubscribersForNotification", input, options)
  end

  @doc """
  Update the information of a budget already created
  """
  def update_budget(client, input, options \\ []) do
    request(client, "UpdateBudget", input, options)
  end

  @doc """
  Update the information about a notification already created
  """
  def update_notification(client, input, options \\ []) do
    request(client, "UpdateNotification", input, options)
  end

  @doc """
  Update a subscriber
  """
  def update_subscriber(client, input, options \\ []) do
    request(client, "UpdateSubscriber", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "budgets"}
    host = get_host("budgets", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSBudgetServiceGateway.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
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
