# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostExplorer do
  @moduledoc """
  You can use the Cost Explorer API to programmatically query your cost and usage
  data.

  You can query for aggregated data such as total monthly costs or total daily
  usage. You can
  also query for granular data. This might include the number of daily write
  operations for
  Amazon DynamoDB database tables in your production environment.

  Service Endpoint

  The Cost Explorer API provides the following endpoint:

    *

  `https://ce.us-east-1.amazonaws.com`

  For information about the costs that are associated with the Cost Explorer API,
  see
  [Amazon Web Services Cost Management Pricing](http://aws.amazon.com/aws-cost-management/pricing/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2017-10-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "ce",
      global?: true,
      protocol: "json",
      service_id: "Cost Explorer",
      signature_version: "v4",
      signing_name: "ce",
      target_prefix: "AWSInsightsIndexService"
    }
  end

  @doc """
  Creates a new cost anomaly detection monitor with the requested type and monitor
  specification.
  """
  def create_anomaly_monitor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAnomalyMonitor", input, options)
  end

  @doc """
  Adds an alert subscription to a cost anomaly detection monitor.

  You can use each
  subscription to define subscribers with email or SNS notifications. Email
  subscribers can set
  an absolute or percentage threshold and a time frequency for receiving
  notifications.
  """
  def create_anomaly_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAnomalySubscription", input, options)
  end

  @doc """
  Creates a new Cost Category with the requested name and rules.
  """
  def create_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCostCategoryDefinition", input, options)
  end

  @doc """
  Deletes a cost anomaly monitor.
  """
  def delete_anomaly_monitor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAnomalyMonitor", input, options)
  end

  @doc """
  Deletes a cost anomaly subscription.
  """
  def delete_anomaly_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAnomalySubscription", input, options)
  end

  @doc """
  Deletes a Cost Category.

  Expenses from this month going forward will no longer be
  categorized with this Cost Category.
  """
  def delete_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCostCategoryDefinition", input, options)
  end

  @doc """
  Returns the name, Amazon Resource Name (ARN), rules, definition, and effective
  dates of a
  Cost Category that's defined in the account.

  You have the option to use `EffectiveOn` to return a Cost Category that's
  active on a specific date. If there's no `EffectiveOn` specified, you see a Cost
  Category that's effective on the current date. If Cost Category is still
  effective,
  `EffectiveEnd` is omitted in the response.
  """
  def describe_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCostCategoryDefinition", input, options)
  end

  @doc """
  Retrieves all of the cost anomalies detected on your account during the time
  period that's
  specified by the `DateInterval` object.

  Anomalies are available for up to 90
  days.
  """
  def get_anomalies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAnomalies", input, options)
  end

  @doc """
  Retrieves the cost anomaly monitor definitions for your account.

  You can filter using a
  list of cost anomaly monitor Amazon Resource Names (ARNs).
  """
  def get_anomaly_monitors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAnomalyMonitors", input, options)
  end

  @doc """
  Retrieves the cost anomaly subscription objects for your account.

  You can filter using a
  list of cost anomaly monitor Amazon Resource Names (ARNs).
  """
  def get_anomaly_subscriptions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAnomalySubscriptions", input, options)
  end

  @doc """
  Retrieves estimated usage records for hourly granularity or resource-level data
  at daily
  granularity.
  """
  def get_approximate_usage_records(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApproximateUsageRecords", input, options)
  end

  @doc """
  Retrieves cost and usage metrics for your account.

  You can specify which cost and
  usage-related metric that you want the request to return. For example, you can
  specify
  `BlendedCosts` or `UsageQuantity`. You can also filter and group your
  data by various dimensions, such as `SERVICE` or `AZ`, in a specific
  time range. For a complete list of valid dimensions, see the
  [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html) operation. Management account in an organization in Organizations have access to
  all member accounts.

  For information about filter limitations, see [Quotas and
  restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html)
  in the *Billing and Cost Management User Guide*.
  """
  def get_cost_and_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCostAndUsage", input, options)
  end

  @doc """
  Retrieves cost and usage metrics with resources for your account.

  You can specify which
  cost and usage-related metric, such as `BlendedCosts` or
  `UsageQuantity`, that you want the request to return. You can also filter and
  group
  your data by various dimensions, such as `SERVICE` or `AZ`, in a
  specific time range. For a complete list of valid dimensions, see the
  [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html) operation. Management account in an organization in Organizations have access to
  all member accounts. This API is currently available for the
  Amazon Elastic Compute Cloud – Compute service only.

  This is an opt-in only feature. You can enable this feature from the Cost
  Explorer
  Settings page. For information about how to access the Settings page, see
  [Controlling
  Access for Cost
  Explorer](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html)
  in the *Billing and Cost Management User
  Guide*.
  """
  def get_cost_and_usage_with_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCostAndUsageWithResources", input, options)
  end

  @doc """
  Retrieves an array of Cost Category names and values incurred cost.

  If some Cost Category names and values are not associated with any cost, they
  will not
  be returned by this API.
  """
  def get_cost_categories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCostCategories", input, options)
  end

  @doc """
  Retrieves a forecast for how much Amazon Web Services predicts that you will
  spend over
  the forecast time period that you select, based on your past costs.
  """
  def get_cost_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCostForecast", input, options)
  end

  @doc """
  Retrieves all available filter values for a specified filter over a period of
  time.

  You
  can search the dimension values for an arbitrary string.
  """
  def get_dimension_values(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDimensionValues", input, options)
  end

  @doc """
  Retrieves the reservation coverage for your account, which you can use to see
  how much
  of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational
  Database Service,
  or Amazon Redshift usage is covered by a reservation.

  An organization's management account can
  see the coverage of the associated member accounts. This supports dimensions,
  Cost Categories,
  and nested expressions. For any time period, you can filter data about
  reservation usage by
  the following dimensions:

    *
  AZ

    *
  CACHE_ENGINE

    *
  DATABASE_ENGINE

    *
  DEPLOYMENT_OPTION

    *
  INSTANCE_TYPE

    *
  LINKED_ACCOUNT

    *
  OPERATING_SYSTEM

    *
  PLATFORM

    *
  REGION

    *
  SERVICE

    *
  TAG

    *
  TENANCY

  To determine valid values for a dimension, use the `GetDimensionValues`
  operation.
  """
  def get_reservation_coverage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReservationCoverage", input, options)
  end

  @doc """
  Gets recommendations for reservation purchases.

  These recommendations might help you to
  reduce your costs. Reservations provide a discounted hourly rate (up to 75%)
  compared to
  On-Demand pricing.

  Amazon Web Services generates your recommendations by identifying your On-Demand
  usage
  during a specific time period and collecting your usage into categories that are
  eligible for
  a reservation. After Amazon Web Services has these categories, it simulates
  every combination
  of reservations in each category of usage to identify the best number of each
  type of Reserved
  Instance (RI) to purchase to maximize your estimated savings.

  For example, Amazon Web Services automatically aggregates your Amazon EC2 Linux,
  shared
  tenancy, and c4 family usage in the US West (Oregon) Region and recommends that
  you buy
  size-flexible regional reservations to apply to the c4 family usage. Amazon Web
  Services
  recommends the smallest size instance in an instance family. This makes it
  easier to purchase
  a size-flexible Reserved Instance (RI). Amazon Web Services also shows the equal
  number of
  normalized units. This way, you can purchase any instance size that you want.
  For this
  example, your RI recommendation is for `c4.large` because that is the smallest
  size
  instance in the c4 instance family.
  """
  def get_reservation_purchase_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReservationPurchaseRecommendation", input, options)
  end

  @doc """
  Retrieves the reservation utilization for your account.

  Management account in an
  organization have access to member accounts. You can filter data by dimensions
  in a time
  period. You can use `GetDimensionValues` to determine the possible dimension
  values. Currently, you can group only by `SUBSCRIPTION_ID`.
  """
  def get_reservation_utilization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReservationUtilization", input, options)
  end

  @doc """
  Creates recommendations that help you save cost by identifying idle and
  underutilized
  Amazon EC2 instances.

  Recommendations are generated to either downsize or terminate instances, along
  with
  providing savings detail and metrics. For more information about calculation and
  function, see
  [Optimizing Your Cost with Rightsizing Recommendations](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html)
  in the *Billing and Cost Management User Guide*.
  """
  def get_rightsizing_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRightsizingRecommendation", input, options)
  end

  @doc """
  Retrieves the details for a Savings Plan recommendation.

  These details include the hourly
  data-points that construct the cost, coverage, and utilization charts.
  """
  def get_savings_plan_purchase_recommendation_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetSavingsPlanPurchaseRecommendationDetails",
      input,
      options
    )
  end

  @doc """
  Retrieves the Savings Plans covered for your account.

  This enables you to see how much of
  your cost is covered by a Savings Plan. An organization’s management account can
  see the
  coverage of the associated member accounts. This supports dimensions, Cost
  Categories, and
  nested expressions. For any time period, you can filter data for Savings Plans
  usage with the
  following dimensions:

    *

  `LINKED_ACCOUNT`

    *

  `REGION`

    *

  `SERVICE`

    *

  `INSTANCE_FAMILY`

  To determine valid values for a dimension, use the `GetDimensionValues`
  operation.
  """
  def get_savings_plans_coverage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSavingsPlansCoverage", input, options)
  end

  @doc """
  Retrieves the Savings Plans recommendations for your account.

  First use
  `StartSavingsPlansPurchaseRecommendationGeneration` to generate a new set of
  recommendations, and then use `GetSavingsPlansPurchaseRecommendation` to
  retrieve
  them.
  """
  def get_savings_plans_purchase_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSavingsPlansPurchaseRecommendation", input, options)
  end

  @doc """
  Retrieves the Savings Plans utilization for your account across date ranges with
  daily or
  monthly granularity.

  Management account in an organization have access to member accounts. You
  can use `GetDimensionValues` in `SAVINGS_PLANS` to determine the
  possible dimension values.

  You can't group by any dimension values for
  `GetSavingsPlansUtilization`.
  """
  def get_savings_plans_utilization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSavingsPlansUtilization", input, options)
  end

  @doc """
  Retrieves attribute data along with aggregate utilization and savings data for a
  given
  time period.

  This doesn't support granular or grouped data (daily/monthly) in response. You
  can't retrieve data by dates in a single response similar to
  `GetSavingsPlanUtilization`, but you have the option to make multiple calls to
  `GetSavingsPlanUtilizationDetails` by providing individual dates. You can use
  `GetDimensionValues` in `SAVINGS_PLANS` to determine the possible
  dimension values.

  `GetSavingsPlanUtilizationDetails` internally groups data by
  `SavingsPlansArn`.
  """
  def get_savings_plans_utilization_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSavingsPlansUtilizationDetails", input, options)
  end

  @doc """
  Queries for available tag keys and tag values for a specified period.

  You can search
  the tag values for an arbitrary string.
  """
  def get_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTags", input, options)
  end

  @doc """
  Retrieves a forecast for how much Amazon Web Services predicts that you will use
  over the forecast time period that you select, based on your past usage.
  """
  def get_usage_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUsageForecast", input, options)
  end

  @doc """

  Retrieves a list of your historical cost allocation tag backfill requests.
  """
  def list_cost_allocation_tag_backfill_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCostAllocationTagBackfillHistory", input, options)
  end

  @doc """
  Get a list of cost allocation tags.

  All inputs in the API are optional and serve as
  filters. By default, all cost allocation tags are returned.
  """
  def list_cost_allocation_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCostAllocationTags", input, options)
  end

  @doc """
  Returns the name, Amazon Resource Name (ARN), `NumberOfRules` and effective
  dates of all Cost Categories defined in the account.

  You have the option to use
  `EffectiveOn` to return a list of Cost Categories that were active on a specific
  date. If there is no `EffectiveOn` specified, you’ll see Cost Categories that
  are
  effective on the current date. If Cost Category is still effective,
  `EffectiveEnd`
  is omitted in the response. `ListCostCategoryDefinitions` supports pagination.
  The
  request can have a `MaxResults` range up to 100.
  """
  def list_cost_category_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCostCategoryDefinitions", input, options)
  end

  @doc """
  Retrieves a list of your historical recommendation generations within the past
  30
  days.
  """
  def list_savings_plans_purchase_recommendation_generation(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListSavingsPlansPurchaseRecommendationGeneration",
      input,
      options
    )
  end

  @doc """
  Returns a list of resource tags associated with the resource specified by the
  Amazon
  Resource Name (ARN).
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the feedback property of a given cost anomaly.
  """
  def provide_anomaly_feedback(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvideAnomalyFeedback", input, options)
  end

  @doc """

  Request a cost allocation tag backfill.

  This will backfill the activation status (either `active` or `inactive`) for all
  tag keys from `para:BackfillFrom` up to the when this request is made.

  You can request a backfill once every 24 hours.
  """
  def start_cost_allocation_tag_backfill(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartCostAllocationTagBackfill", input, options)
  end

  @doc """
  Requests a Savings Plans recommendation generation.

  This enables you to calculate a fresh
  set of Savings Plans recommendations that takes your latest usage data and
  current Savings
  Plans inventory into account. You can refresh Savings Plans recommendations up
  to three times
  daily for a consolidated billing family.

  `StartSavingsPlansPurchaseRecommendationGeneration` has no request syntax
  because no input parameters are needed to support this operation.
  """
  def start_savings_plans_purchase_recommendation_generation(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "StartSavingsPlansPurchaseRecommendationGeneration",
      input,
      options
    )
  end

  @doc """
  An API operation for adding one or more tags (key-value pairs) to a resource.

  You can use the `TagResource` operation with a resource that already has tags.
  If you specify a new tag key for the resource, this tag is appended to the list
  of tags
  associated with the resource. If you specify a tag key that is already
  associated with the
  resource, the new tag value you specify replaces the previous value for that
  tag.

  Although the maximum number of array members is 200, user-tag maximum is 50. The
  remaining
  are reserved for Amazon Web Services use.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a resource.

  Specify only tag keys in your request. Don't
  specify the value.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing cost anomaly monitor.

  The changes made are applied going forward, and
  doesn't change anomalies detected in the past.
  """
  def update_anomaly_monitor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAnomalyMonitor", input, options)
  end

  @doc """
  Updates an existing cost anomaly subscription.

  Specify the fields that you want to update.
  Omitted fields are unchanged.

  The JSON below describes the generic construct for each type. See [Request Parameters](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_UpdateAnomalySubscription.html#API_UpdateAnomalySubscription_RequestParameters)
  for possible values as they apply to
  `AnomalySubscription`.
  """
  def update_anomaly_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAnomalySubscription", input, options)
  end

  @doc """
  Updates status for cost allocation tags in bulk, with maximum batch size of 20.

  If the tag
  status that's updated is the same as the existing tag status, the request
  doesn't fail.
  Instead, it doesn't have any effect on the tag status (for example, activating
  the active
  tag).
  """
  def update_cost_allocation_tags_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCostAllocationTagsStatus", input, options)
  end

  @doc """
  Updates an existing Cost Category.

  Changes made to the Cost Category rules will be used to
  categorize the current month’s expenses and future expenses. This won’t change
  categorization
  for the previous months.
  """
  def update_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCostCategoryDefinition", input, options)
  end
end
