# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationSignals do
  @moduledoc """
  Use CloudWatch Application Signals for comprehensive observability of your
  cloud-based applications.

  It enables real-time service health dashboards and helps you track long-term
  performance trends against your business goals.
  The application-centric view provides you with unified visibility across your
  applications, services, and
  dependencies, so you can proactively monitor and efficiently triage any issues
  that may arise,
  ensuring optimal customer experience.

  Application Signals provides the following benefits:

    *
  Automatically collect metrics and traces from your applications, and display key
  metrics such as call volume, availability, latency, faults, and errors.

    *
  Create and monitor service level objectives (SLOs).

    *
  See a map of your application topology that Application Signals automatically
  discovers, that gives you a visual representation of your applications,
  dependencies, and their connectivity.

  Application Signals works with CloudWatch RUM, CloudWatch Synthetics canaries,
  and Amazon Web Services Service Catalog AppRegistry, to display your client
  pages, Synthetics canaries,
  and application names within dashboards and maps.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_service_operations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }

  """
  @type list_service_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_input() :: %{
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }

  """
  @type get_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_dependencies_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }

  """
  @type list_service_dependencies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_dependency() :: %{
        "DependencyKeyAttributes" => map(),
        "DependencyOperationName" => String.t(),
        "MetricReferences" => list(metric_reference()()),
        "OperationName" => String.t()
      }

  """
  @type service_dependency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_dependencies_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceDependencies" => list(service_dependency()()),
        "StartTime" => [non_neg_integer()]
      }

  """
  @type list_service_dependencies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_operation() :: %{
        "MetricReferences" => list(metric_reference()()),
        "Name" => String.t()
      }

  """
  @type service_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      calendar_interval() :: %{
        "Duration" => integer(),
        "DurationUnit" => list(any()),
        "StartTime" => [non_neg_integer()]
      }

  """
  @type calendar_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      metric() :: %{
        "Dimensions" => list(dimension()()),
        "MetricName" => String.t(),
        "Namespace" => String.t()
      }

  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_level_objective_budget_report_error() :: %{
        "Arn" => String.t(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "Name" => String.t()
      }

  """
  @type service_level_objective_budget_report_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_level_objective_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => [non_neg_integer()],
        "KeyAttributes" => map(),
        "Name" => String.t(),
        "OperationName" => String.t()
      }

  """
  @type service_level_objective_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_level_objective_input() :: %{}

  """
  @type delete_service_level_objective_input() :: %{}

  @typedoc """

  ## Example:

      service_level_indicator_metric_config() :: %{
        "KeyAttributes" => map(),
        "MetricDataQueries" => list(metric_data_query()()),
        "MetricType" => list(any()),
        "OperationName" => String.t(),
        "PeriodSeconds" => integer(),
        "Statistic" => String.t()
      }

  """
  @type service_level_indicator_metric_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_level_objectives_input() :: %{
        optional("KeyAttributes") => map(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OperationName") => String.t()
      }

  """
  @type list_service_level_objectives_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_reference() :: %{
        "Dimensions" => list(dimension()()),
        "MetricName" => String.t(),
        "MetricType" => String.t(),
        "Namespace" => String.t()
      }

  """
  @type metric_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service() :: %{
        "AttributeMaps" => list(map()()),
        "KeyAttributes" => map(),
        "LogGroupReferences" => list(map()()),
        "MetricReferences" => list(metric_reference()())
      }

  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_level_objective_input() :: %{
        optional("BurnRateConfigurations") => list(burn_rate_configuration()()),
        optional("Description") => String.t(),
        optional("Goal") => goal(),
        optional("RequestBasedSliConfig") => request_based_service_level_indicator_config(),
        optional("SliConfig") => service_level_indicator_config(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }

  """
  @type create_service_level_objective_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_level_objective() :: %{
        "Arn" => String.t(),
        "BurnRateConfigurations" => list(burn_rate_configuration()()),
        "CreatedTime" => [non_neg_integer()],
        "Description" => String.t(),
        "EvaluationType" => list(any()),
        "Goal" => goal(),
        "LastUpdatedTime" => [non_neg_integer()],
        "Name" => String.t(),
        "RequestBasedSli" => request_based_service_level_indicator(),
        "Sli" => service_level_indicator()
      }

  """
  @type service_level_objective() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      goal() :: %{
        "AttainmentGoal" => float(),
        "Interval" => list(),
        "WarningThreshold" => float()
      }

  """
  @type goal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_service_level_objective_budget_report_output() :: %{
        "Errors" => list(service_level_objective_budget_report_error()()),
        "Reports" => list(service_level_objective_budget_report()()),
        "Timestamp" => [non_neg_integer()]
      }

  """
  @type batch_get_service_level_objective_budget_report_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_level_indicator_metric() :: %{
        "KeyAttributes" => map(),
        "MetricDataQueries" => list(metric_data_query()()),
        "MetricType" => list(any()),
        "OperationName" => String.t()
      }

  """
  @type service_level_indicator_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_based_service_level_indicator_metric_config() :: %{
        "KeyAttributes" => map(),
        "MetricType" => list(any()),
        "MonitoredRequestCountMetric" => list(),
        "OperationName" => String.t(),
        "TotalRequestCountMetric" => list(metric_data_query()())
      }

  """
  @type request_based_service_level_indicator_metric_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rolling_interval() :: %{
        "Duration" => integer(),
        "DurationUnit" => list(any())
      }

  """
  @type rolling_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_level_objective_input() :: %{}

  """
  @type get_service_level_objective_input() :: %{}

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
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_output() :: %{
        "EndTime" => [non_neg_integer()],
        "LogGroupReferences" => list(map()()),
        "Service" => service(),
        "StartTime" => [non_neg_integer()]
      }

  """
  @type get_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_summary() :: %{
        "AttributeMaps" => list(map()()),
        "KeyAttributes" => map(),
        "MetricReferences" => list(metric_reference()())
      }

  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_data_query() :: %{
        "AccountId" => String.t(),
        "Expression" => String.t(),
        "Id" => String.t(),
        "Label" => String.t(),
        "MetricStat" => metric_stat(),
        "Period" => integer(),
        "ReturnData" => boolean()
      }

  """
  @type metric_data_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_level_indicator() :: %{
        "ComparisonOperator" => list(any()),
        "MetricThreshold" => float(),
        "SliMetric" => service_level_indicator_metric()
      }

  """
  @type service_level_indicator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_level_objective_output() :: %{
        "Slo" => service_level_objective()
      }

  """
  @type get_service_level_objective_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      burn_rate_configuration() :: %{
        "LookBackWindowMinutes" => integer()
      }

  """
  @type burn_rate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_dependent() :: %{
        "DependentKeyAttributes" => map(),
        "DependentOperationName" => String.t(),
        "MetricReferences" => list(metric_reference()()),
        "OperationName" => String.t()
      }

  """
  @type service_dependent() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_level_objective_budget_report() :: %{
        "Arn" => String.t(),
        "Attainment" => float(),
        "BudgetRequestsRemaining" => integer(),
        "BudgetSecondsRemaining" => integer(),
        "BudgetStatus" => list(any()),
        "EvaluationType" => list(any()),
        "Goal" => goal(),
        "Name" => String.t(),
        "RequestBasedSli" => request_based_service_level_indicator(),
        "Sli" => service_level_indicator(),
        "TotalBudgetRequests" => integer(),
        "TotalBudgetSeconds" => integer()
      }

  """
  @type service_level_objective_budget_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_level_objective_output() :: %{
        "Slo" => service_level_objective()
      }

  """
  @type update_service_level_objective_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_dependents_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("KeyAttributes") => map(),
        required("StartTime") => [non_neg_integer()]
      }

  """
  @type list_service_dependents_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_level_objectives_output() :: %{
        "NextToken" => String.t(),
        "SloSummaries" => list(service_level_objective_summary()())
      }

  """
  @type list_service_level_objectives_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_based_service_level_indicator() :: %{
        "ComparisonOperator" => list(any()),
        "MetricThreshold" => float(),
        "RequestBasedSliMetric" => request_based_service_level_indicator_metric()
      }

  """
  @type request_based_service_level_indicator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_stat() :: %{
        "Metric" => metric(),
        "Period" => integer(),
        "Stat" => String.t(),
        "Unit" => list(any())
      }

  """
  @type metric_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_service_level_objective_budget_report_input() :: %{
        required("SloIds") => list([String.t()]()),
        required("Timestamp") => [non_neg_integer()]
      }

  """
  @type batch_get_service_level_objective_budget_report_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      request_based_service_level_indicator_metric() :: %{
        "KeyAttributes" => map(),
        "MetricType" => list(any()),
        "MonitoredRequestCountMetric" => list(),
        "OperationName" => String.t(),
        "TotalRequestCountMetric" => list(metric_data_query()())
      }

  """
  @type request_based_service_level_indicator_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_service_operations_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceOperations" => list(service_operation()()),
        "StartTime" => [non_neg_integer()]
      }

  """
  @type list_service_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_level_objective_input() :: %{
        optional("BurnRateConfigurations") => list(burn_rate_configuration()()),
        optional("Description") => String.t(),
        optional("Goal") => goal(),
        optional("RequestBasedSliConfig") => request_based_service_level_indicator_config(),
        optional("SliConfig") => service_level_indicator_config()
      }

  """
  @type update_service_level_objective_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_discovery_input() :: %{}

  """
  @type start_discovery_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dimension() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_level_indicator_config() :: %{
        "ComparisonOperator" => list(any()),
        "MetricThreshold" => float(),
        "SliMetricConfig" => service_level_indicator_metric_config()
      }

  """
  @type service_level_indicator_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_level_objective_output() :: %{
        "Slo" => service_level_objective()
      }

  """
  @type create_service_level_objective_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_level_objective_output() :: %{}

  """
  @type delete_service_level_objective_output() :: %{}

  @typedoc """

  ## Example:

      list_service_dependents_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceDependents" => list(service_dependent()()),
        "StartTime" => [non_neg_integer()]
      }

  """
  @type list_service_dependents_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_discovery_output() :: %{}

  """
  @type start_discovery_output() :: %{}

  @typedoc """

  ## Example:

      list_services_output() :: %{
        "EndTime" => [non_neg_integer()],
        "NextToken" => String.t(),
        "ServiceSummaries" => list(service_summary()()),
        "StartTime" => [non_neg_integer()]
      }

  """
  @type list_services_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_services_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => [non_neg_integer()],
        required("StartTime") => [non_neg_integer()]
      }

  """
  @type list_services_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_based_service_level_indicator_config() :: %{
        "ComparisonOperator" => list(any()),
        "MetricThreshold" => float(),
        "RequestBasedSliMetricConfig" => request_based_service_level_indicator_metric_config()
      }

  """
  @type request_based_service_level_indicator_config() :: %{String.t() => any()}

  @type batch_get_service_level_objective_budget_report_errors() ::
          throttling_exception() | validation_exception()

  @type create_service_level_objective_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_service_level_objective_errors() ::
          throttling_exception() | validation_exception() | resource_not_found_exception()

  @type get_service_errors() :: throttling_exception() | validation_exception()

  @type get_service_level_objective_errors() ::
          throttling_exception() | validation_exception() | resource_not_found_exception()

  @type list_service_dependencies_errors() :: throttling_exception() | validation_exception()

  @type list_service_dependents_errors() :: throttling_exception() | validation_exception()

  @type list_service_level_objectives_errors() :: throttling_exception() | validation_exception()

  @type list_service_operations_errors() :: throttling_exception() | validation_exception()

  @type list_services_errors() :: throttling_exception() | validation_exception()

  @type list_tags_for_resource_errors() :: throttling_exception() | resource_not_found_exception()

  @type start_discovery_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() :: throttling_exception() | resource_not_found_exception()

  @type update_service_level_objective_errors() ::
          throttling_exception() | validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2024-04-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "application-signals",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Application Signals",
      signature_version: "v4",
      signing_name: "application-signals",
      target_prefix: nil
    }
  end

  @doc """
  Use this operation to retrieve one or more *service level objective (SLO) budget
  reports*.

  An *error budget* is the amount of time or requests in an unhealthy state that
  your service can
  accumulate during an interval before your overall SLO budget health is breached
  and the SLO is considered to be
  unmet. For example, an SLO with a threshold of 99.95% and a monthly interval
  translates to an error budget of 21.9 minutes of
  downtime in a 30-day month.

  Budget reports include a health indicator, the attainment value, and
  remaining budget.

  For more information about SLO error budgets, see
  [
  SLO
  concepts](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html#CloudWatch-ServiceLevelObjectives-concepts).
  """
  @spec batch_get_service_level_objective_budget_report(
          map(),
          batch_get_service_level_objective_budget_report_input(),
          list()
        ) ::
          {:ok, batch_get_service_level_objective_budget_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_service_level_objective_budget_report_errors()}
  def batch_get_service_level_objective_budget_report(%Client{} = client, input, options \\ []) do
    url_path = "/budget-report"
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
  Creates a service level objective (SLO), which can help you ensure that your
  critical business operations are
  meeting customer expectations.

  Use SLOs to set and track specific target levels for the
  reliability and availability of your applications and services. SLOs use service
  level indicators (SLIs) to
  calculate whether the application is performing at the level that you want.

  Create an SLO to set a target for a service or operation’s availability or
  latency. CloudWatch
  measures this target frequently you can find whether it has been breached.

  The target performance quality that is defined for an SLO is the *attainment
  goal*.

  You can set SLO targets for your applications that are discovered by Application
  Signals, using critical metrics such as latency and availability.
  You can also set SLOs against any CloudWatch metric or math expression that
  produces a time series.

  When you create an SLO, you specify whether it is a *period-based SLO*
  or a *request-based SLO*. Each type of SLO has a different way of evaluating
  your application's performance against its attainment goal.

    *
  A *period-based SLO* uses defined *periods* of time within
  a specified total time interval. For each period of time, Application Signals
  determines whether the
  application met its goal. The attainment rate is calculated as the `number of
  good periods/number of total periods`.

  For example, for a period-based SLO, meeting an attainment goal of 99.9% means
  that within your interval, your application must meet its
  performance goal during at least 99.9% of the
  time periods.

    *
  A *request-based SLO* doesn't use pre-defined periods of time. Instead,
  the SLO measures `number of good requests/number of total requests` during the
  interval. At any time, you can find the ratio of
  good requests to total requests for the interval up to the time stamp that you
  specify, and measure that ratio against the goal set in your SLO.

  After you have created an SLO, you can retrieve error budget reports for it.
  An *error budget* is the amount of time or amount of requests that your
  application can be non-compliant
  with the SLO's goal, and still have your application meet the goal.

    *
  For a period-based SLO, the error budget starts at a number defined by the
  highest number of periods that can fail to meet the threshold,
  while still meeting the overall goal. The *remaining error budget* decreases
  with every failed period
  that is recorded. The error budget within one interval can never increase.

  For example, an SLO with a threshold that 99.95% of requests must be completed
  under 2000ms every month
  translates to an error budget of 21.9 minutes of downtime per month.

    *
  For a request-based SLO, the remaining error budget is dynamic and can increase
  or decrease, depending on
  the ratio of good requests to total requests.

  For more information about SLOs, see [
  Service level objectives
  (SLOs)](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html).

  When you perform a `CreateServiceLevelObjective` operation, Application Signals
  creates the *AWSServiceRoleForCloudWatchApplicationSignals* service-linked role,
  if it doesn't already exist in your account. This service-
  linked role has the following permissions:

    *

  `xray:GetServiceGraph`

    *

  `logs:StartQuery`

    *

  `logs:GetQueryResults`

    *

  `cloudwatch:GetMetricData`

    *

  `cloudwatch:ListMetrics`

    *

  `tag:GetResources`

    *

  `autoscaling:DescribeAutoScalingGroups`
  """
  @spec create_service_level_objective(map(), create_service_level_objective_input(), list()) ::
          {:ok, create_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_level_objective_errors()}
  def create_service_level_objective(%Client{} = client, input, options \\ []) do
    url_path = "/slo"
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
  Deletes the specified service level objective.
  """
  @spec delete_service_level_objective(
          map(),
          String.t(),
          delete_service_level_objective_input(),
          list()
        ) ::
          {:ok, delete_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_level_objective_errors()}
  def delete_service_level_objective(%Client{} = client, id, input, options \\ []) do
    url_path = "/slo/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Returns information about a service discovered by Application Signals.
  """
  @spec get_service(map(), get_service_input(), list()) ::
          {:ok, get_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_errors()}
  def get_service(%Client{} = client, input, options \\ []) do
    url_path = "/service"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"EndTime", "EndTime"},
        {"StartTime", "StartTime"}
      ]
      |> Request.build_params(input)

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
  Returns information about one SLO created in the account.
  """
  @spec get_service_level_objective(map(), String.t(), list()) ::
          {:ok, get_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_level_objective_errors()}
  def get_service_level_objective(%Client{} = client, id, options \\ []) do
    url_path = "/slo/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of service dependencies of the service that you specify.

  A dependency is an infrastructure
  component that an operation of this service connects with. Dependencies can
  include Amazon Web Services
  services, Amazon Web Services resources, and third-party services.
  """
  @spec list_service_dependencies(map(), list_service_dependencies_input(), list()) ::
          {:ok, list_service_dependencies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_dependencies_errors()}
  def list_service_dependencies(%Client{} = client, input, options \\ []) do
    url_path = "/service-dependencies"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"EndTime", "EndTime"},
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"},
        {"StartTime", "StartTime"}
      ]
      |> Request.build_params(input)

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
  Returns the list of dependents that invoked the specified service during the
  provided time range.

  Dependents include
  other services, CloudWatch Synthetics canaries, and clients that are
  instrumented with CloudWatch RUM app monitors.
  """
  @spec list_service_dependents(map(), list_service_dependents_input(), list()) ::
          {:ok, list_service_dependents_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_dependents_errors()}
  def list_service_dependents(%Client{} = client, input, options \\ []) do
    url_path = "/service-dependents"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"EndTime", "EndTime"},
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"},
        {"StartTime", "StartTime"}
      ]
      |> Request.build_params(input)

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
  Returns a list of SLOs created in this account.
  """
  @spec list_service_level_objectives(map(), list_service_level_objectives_input(), list()) ::
          {:ok, list_service_level_objectives_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_level_objectives_errors()}
  def list_service_level_objectives(%Client{} = client, input, options \\ []) do
    url_path = "/slos"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"},
        {"OperationName", "OperationName"}
      ]
      |> Request.build_params(input)

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
  Returns a list of the *operations* of this service that have been discovered by
  Application Signals.

  Only the operations that were invoked during the specified time range are
  returned.
  """
  @spec list_service_operations(map(), list_service_operations_input(), list()) ::
          {:ok, list_service_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_operations_errors()}
  def list_service_operations(%Client{} = client, input, options \\ []) do
    url_path = "/service-operations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"EndTime", "EndTime"},
        {"MaxResults", "MaxResults"},
        {"NextToken", "NextToken"},
        {"StartTime", "StartTime"}
      ]
      |> Request.build_params(input)

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
  Returns a list of services that have been discovered by Application Signals.

  A service represents a minimum logical and transactional unit that completes a
  business function. Services
  are discovered through Application Signals instrumentation.
  """
  @spec list_services(map(), String.t(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_services_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_errors()}
  def list_services(
        %Client{} = client,
        end_time,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        options \\ []
      ) do
    url_path = "/services"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"StartTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"EndTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays the tags associated with a CloudWatch resource.

  Tags can be assigned to service level objectives.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"ResourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables this Amazon Web Services account to be able to use CloudWatch
  Application Signals
  by creating the *AWSServiceRoleForCloudWatchApplicationSignals* service-linked
  role.

  This service-
  linked role has the following permissions:

    *

  `xray:GetServiceGraph`

    *

  `logs:StartQuery`

    *

  `logs:GetQueryResults`

    *

  `cloudwatch:GetMetricData`

    *

  `cloudwatch:ListMetrics`

    *

  `tag:GetResources`

    *

  `autoscaling:DescribeAutoScalingGroups`

  After completing this step, you still need to instrument your Java and Python
  applications to send data
  to Application Signals. For more information, see
  [
  Enabling Application
  Signals](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Application-Signals-Enable.html).
  """
  @spec start_discovery(map(), start_discovery_input(), list()) ::
          {:ok, start_discovery_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_discovery_errors()}
  def start_discovery(%Client{} = client, input, options \\ []) do
    url_path = "/start-discovery"
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
  Assigns one or more tags (key-value pairs) to the specified CloudWatch resource,
  such as a service level objective.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user
  permissions by granting a user
  permission to access or change only resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with an alarm that already has tags. If you
  specify a new tag key for the alarm,
  this tag is appended to the list of tags associated
  with the alarm. If you specify a tag key that is already associated with the
  alarm, the new tag value that you specify replaces
  the previous value for that tag.

  You can associate as many as 50 tags with a CloudWatch resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tag-resource"
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
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untag-resource"
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
  Updates an existing service level objective (SLO).

  If you omit parameters, the previous values
  of those parameters are retained.

  You cannot change from a period-based SLO to a request-based SLO,
  or change from a request-based SLO to a period-based SLO.
  """
  @spec update_service_level_objective(
          map(),
          String.t(),
          update_service_level_objective_input(),
          list()
        ) ::
          {:ok, update_service_level_objective_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_level_objective_errors()}
  def update_service_level_objective(%Client{} = client, id, input, options \\ []) do
    url_path = "/slo/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
