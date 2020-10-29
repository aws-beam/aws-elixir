# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostExplorer do
  @moduledoc """
  The Cost Explorer API enables you to programmatically query your cost and
  usage data. You can query for aggregated data such as total monthly costs
  or total daily usage. You can also query for granular data, such as the
  number of daily write operations for Amazon DynamoDB database tables in
  your production environment.

  Service Endpoint

  The Cost Explorer API provides the following endpoint:

  <ul> <li> `https://ce.us-east-1.amazonaws.com`

  </li> </ul> For information about costs associated with the Cost Explorer
  API, see [AWS Cost Management
  Pricing](http://aws.amazon.com/aws-cost-management/pricing/).
  """

  @doc """
  Creates a new cost anomaly detection monitor with the requested type and
  monitor specification.
  """
  def create_anomaly_monitor(client, input, options \\ []) do
    request(client, "CreateAnomalyMonitor", input, options)
  end

  @doc """
  Adds a subscription to a cost anomaly detection monitor. You can use each
  subscription to define subscribers with email or SNS notifications. Email
  subscribers can set a dollar threshold and a time frequency for receiving
  notifications.
  """
  def create_anomaly_subscription(client, input, options \\ []) do
    request(client, "CreateAnomalySubscription", input, options)
  end

  @doc """
  Creates a new Cost Category with the requested name and rules.
  """
  def create_cost_category_definition(client, input, options \\ []) do
    request(client, "CreateCostCategoryDefinition", input, options)
  end

  @doc """
  Deletes a cost anomaly monitor.
  """
  def delete_anomaly_monitor(client, input, options \\ []) do
    request(client, "DeleteAnomalyMonitor", input, options)
  end

  @doc """
  Deletes a cost anomaly subscription.
  """
  def delete_anomaly_subscription(client, input, options \\ []) do
    request(client, "DeleteAnomalySubscription", input, options)
  end

  @doc """
  Deletes a Cost Category. Expenses from this month going forward will no
  longer be categorized with this Cost Category.
  """
  def delete_cost_category_definition(client, input, options \\ []) do
    request(client, "DeleteCostCategoryDefinition", input, options)
  end

  @doc """
  Returns the name, ARN, rules, definition, and effective dates of a Cost
  Category that's defined in the account.

  You have the option to use `EffectiveOn` to return a Cost Category that is
  active on a specific date. If there is no `EffectiveOn` specified, you’ll
  see a Cost Category that is effective on the current date. If Cost Category
  is still effective, `EffectiveEnd` is omitted in the response.
  """
  def describe_cost_category_definition(client, input, options \\ []) do
    request(client, "DescribeCostCategoryDefinition", input, options)
  end

  @doc """
  Retrieves all of the cost anomalies detected on your account, during the
  time period specified by the `DateInterval` object.
  """
  def get_anomalies(client, input, options \\ []) do
    request(client, "GetAnomalies", input, options)
  end

  @doc """
  Retrieves the cost anomaly monitor definitions for your account. You can
  filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).
  """
  def get_anomaly_monitors(client, input, options \\ []) do
    request(client, "GetAnomalyMonitors", input, options)
  end

  @doc """
  Retrieves the cost anomaly subscription objects for your account. You can
  filter using a list of cost anomaly monitor Amazon Resource Names (ARNs).
  """
  def get_anomaly_subscriptions(client, input, options \\ []) do
    request(client, "GetAnomalySubscriptions", input, options)
  end

  @doc """
  Retrieves cost and usage metrics for your account. You can specify which
  cost and usage-related metric, such as `BlendedCosts` or `UsageQuantity`,
  that you want the request to return. You can also filter and group your
  data by various dimensions, such as `SERVICE` or `AZ`, in a specific time
  range. For a complete list of valid dimensions, see the
  [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html)
  operation. Master account in an organization in AWS Organizations have
  access to all member accounts.
  """
  def get_cost_and_usage(client, input, options \\ []) do
    request(client, "GetCostAndUsage", input, options)
  end

  @doc """
  Retrieves cost and usage metrics with resources for your account. You can
  specify which cost and usage-related metric, such as `BlendedCosts` or
  `UsageQuantity`, that you want the request to return. You can also filter
  and group your data by various dimensions, such as `SERVICE` or `AZ`, in a
  specific time range. For a complete list of valid dimensions, see the
  [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html)
  operation. Master account in an organization in AWS Organizations have
  access to all member accounts. This API is currently available for the
  Amazon Elastic Compute Cloud – Compute service only.

  <note> This is an opt-in only feature. You can enable this feature from the
  Cost Explorer Settings page. For information on how to access the Settings
  page, see [Controlling Access for Cost
  Explorer](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html)
  in the *AWS Billing and Cost Management User Guide*.

  </note>
  """
  def get_cost_and_usage_with_resources(client, input, options \\ []) do
    request(client, "GetCostAndUsageWithResources", input, options)
  end

  @doc """
  Retrieves a forecast for how much Amazon Web Services predicts that you
  will spend over the forecast time period that you select, based on your
  past costs.
  """
  def get_cost_forecast(client, input, options \\ []) do
    request(client, "GetCostForecast", input, options)
  end

  @doc """
  Retrieves all available filter values for a specified filter over a period
  of time. You can search the dimension values for an arbitrary string.
  """
  def get_dimension_values(client, input, options \\ []) do
    request(client, "GetDimensionValues", input, options)
  end

  @doc """
  Retrieves the reservation coverage for your account. This enables you to
  see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache,
  Amazon Relational Database Service, or Amazon Redshift usage is covered by
  a reservation. An organization's master account can see the coverage of the
  associated member accounts. This supports dimensions, Cost Categories, and
  nested expressions. For any time period, you can filter data about
  reservation usage by the following dimensions:

  <ul> <li> AZ

  </li> <li> CACHE_ENGINE

  </li> <li> DATABASE_ENGINE

  </li> <li> DEPLOYMENT_OPTION

  </li> <li> INSTANCE_TYPE

  </li> <li> LINKED_ACCOUNT

  </li> <li> OPERATING_SYSTEM

  </li> <li> PLATFORM

  </li> <li> REGION

  </li> <li> SERVICE

  </li> <li> TAG

  </li> <li> TENANCY

  </li> </ul> To determine valid values for a dimension, use the
  `GetDimensionValues` operation.
  """
  def get_reservation_coverage(client, input, options \\ []) do
    request(client, "GetReservationCoverage", input, options)
  end

  @doc """
  Gets recommendations for which reservations to purchase. These
  recommendations could help you reduce your costs. Reservations provide a
  discounted hourly rate (up to 75%) compared to On-Demand pricing.

  AWS generates your recommendations by identifying your On-Demand usage
  during a specific time period and collecting your usage into categories
  that are eligible for a reservation. After AWS has these categories, it
  simulates every combination of reservations in each category of usage to
  identify the best number of each type of RI to purchase to maximize your
  estimated savings.

  For example, AWS automatically aggregates your Amazon EC2 Linux, shared
  tenancy, and c4 family usage in the US West (Oregon) Region and recommends
  that you buy size-flexible regional reservations to apply to the c4 family
  usage. AWS recommends the smallest size instance in an instance family.
  This makes it easier to purchase a size-flexible RI. AWS also shows the
  equal number of normalized units so that you can purchase any instance size
  that you want. For this example, your RI recommendation would be for
  `c4.large` because that is the smallest size instance in the c4 instance
  family.
  """
  def get_reservation_purchase_recommendation(client, input, options \\ []) do
    request(client, "GetReservationPurchaseRecommendation", input, options)
  end

  @doc """
  Retrieves the reservation utilization for your account. Master account in
  an organization have access to member accounts. You can filter data by
  dimensions in a time period. You can use `GetDimensionValues` to determine
  the possible dimension values. Currently, you can group only by
  `SUBSCRIPTION_ID`.
  """
  def get_reservation_utilization(client, input, options \\ []) do
    request(client, "GetReservationUtilization", input, options)
  end

  @doc """
  Creates recommendations that help you save cost by identifying idle and
  underutilized Amazon EC2 instances.

  Recommendations are generated to either downsize or terminate instances,
  along with providing savings detail and metrics. For details on calculation
  and function, see [Optimizing Your Cost with Rightsizing
  Recommendations](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def get_rightsizing_recommendation(client, input, options \\ []) do
    request(client, "GetRightsizingRecommendation", input, options)
  end

  @doc """
  Retrieves the Savings Plans covered for your account. This enables you to
  see how much of your cost is covered by a Savings Plan. An organization’s
  master account can see the coverage of the associated member accounts. This
  supports dimensions, Cost Categories, and nested expressions. For any time
  period, you can filter data for Savings Plans usage with the following
  dimensions:

  <ul> <li> `LINKED_ACCOUNT`

  </li> <li> `REGION`

  </li> <li> `SERVICE`

  </li> <li> `INSTANCE_FAMILY`

  </li> </ul> To determine valid values for a dimension, use the
  `GetDimensionValues` operation.
  """
  def get_savings_plans_coverage(client, input, options \\ []) do
    request(client, "GetSavingsPlansCoverage", input, options)
  end

  @doc """
  Retrieves your request parameters, Savings Plan Recommendations Summary and
  Details.
  """
  def get_savings_plans_purchase_recommendation(client, input, options \\ []) do
    request(client, "GetSavingsPlansPurchaseRecommendation", input, options)
  end

  @doc """
  Retrieves the Savings Plans utilization for your account across date ranges
  with daily or monthly granularity. Master account in an organization have
  access to member accounts. You can use `GetDimensionValues` in
  `SAVINGS_PLANS` to determine the possible dimension values.

  <note> You cannot group by any dimension values for
  `GetSavingsPlansUtilization`.

  </note>
  """
  def get_savings_plans_utilization(client, input, options \\ []) do
    request(client, "GetSavingsPlansUtilization", input, options)
  end

  @doc """
  Retrieves attribute data along with aggregate utilization and savings data
  for a given time period. This doesn't support granular or grouped data
  (daily/monthly) in response. You can't retrieve data by dates in a single
  response similar to `GetSavingsPlanUtilization`, but you have the option to
  make multiple calls to `GetSavingsPlanUtilizationDetails` by providing
  individual dates. You can use `GetDimensionValues` in `SAVINGS_PLANS` to
  determine the possible dimension values.

  <note> `GetSavingsPlanUtilizationDetails` internally groups data by
  `SavingsPlansArn`.

  </note>
  """
  def get_savings_plans_utilization_details(client, input, options \\ []) do
    request(client, "GetSavingsPlansUtilizationDetails", input, options)
  end

  @doc """
  Queries for available tag keys and tag values for a specified period. You
  can search the tag values for an arbitrary string.
  """
  def get_tags(client, input, options \\ []) do
    request(client, "GetTags", input, options)
  end

  @doc """
  Retrieves a forecast for how much Amazon Web Services predicts that you
  will use over the forecast time period that you select, based on your past
  usage.
  """
  def get_usage_forecast(client, input, options \\ []) do
    request(client, "GetUsageForecast", input, options)
  end

  @doc """
  Returns the name, ARN, `NumberOfRules` and effective dates of all Cost
  Categories defined in the account. You have the option to use `EffectiveOn`
  to return a list of Cost Categories that were active on a specific date. If
  there is no `EffectiveOn` specified, you’ll see Cost Categories that are
  effective on the current date. If Cost Category is still effective,
  `EffectiveEnd` is omitted in the response. `ListCostCategoryDefinitions`
  supports pagination. The request can have a `MaxResults` range up to 100.
  """
  def list_cost_category_definitions(client, input, options \\ []) do
    request(client, "ListCostCategoryDefinitions", input, options)
  end

  @doc """
  Modifies the feedback property of a given cost anomaly.
  """
  def provide_anomaly_feedback(client, input, options \\ []) do
    request(client, "ProvideAnomalyFeedback", input, options)
  end

  @doc """
  Updates an existing cost anomaly monitor. The changes made are applied
  going forward, and does not change anomalies detected in the past.
  """
  def update_anomaly_monitor(client, input, options \\ []) do
    request(client, "UpdateAnomalyMonitor", input, options)
  end

  @doc """
  Updates an existing cost anomaly monitor subscription.
  """
  def update_anomaly_subscription(client, input, options \\ []) do
    request(client, "UpdateAnomalySubscription", input, options)
  end

  @doc """
  Updates an existing Cost Category. Changes made to the Cost Category rules
  will be used to categorize the current month’s expenses and future
  expenses. This won’t change categorization for the previous months.
  """
  def update_cost_category_definition(client, input, options \\ []) do
    request(client, "UpdateCostCategoryDefinition", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "ce",
                        region:  "us-east-1"}
    host = build_host("ce", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSInsightsIndexService.#{action}"}
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

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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
