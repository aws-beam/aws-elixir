# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudWatch do
  @moduledoc """
  Amazon CloudWatch monitors your Amazon Web Services (Amazon Web Services)
  resources and the applications you run on Amazon Web Services in real time.

  You can use CloudWatch to collect and track metrics, which are the variables you
  want to measure for your resources and applications.

  CloudWatch alarms send notifications or automatically change the resources you
  are monitoring based on rules that you define. For example, you can monitor the
  CPU usage and disk reads and writes of your Amazon EC2 instances. Then, use this
  data to determine whether you should launch additional instances to handle
  increased load. You can also use this data to stop under-used instances to save
  money.

  In addition to monitoring the built-in metrics that come with Amazon Web
  Services, you can monitor your own custom metrics. With CloudWatch, you gain
  system-wide visibility into resource utilization, application performance, and
  operational health.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "CloudWatch",
      api_version: "2010-08-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "monitoring",
      global?: false,
      protocol: "query",
      service_id: "CloudWatch",
      signature_version: "v4",
      signing_name: "monitoring",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified alarms.

  You can delete up to 100 alarms in one operation. However, this total can
  include no more than one composite alarm. For example, you could delete 99
  metric alarms and one composite alarms with one operation, but you can't delete
  two composite alarms with one operation.

  In the event of an error, no alarms are deleted.

  It is possible to create a loop or cycle of composite alarms, where composite
  alarm A depends on composite alarm B, and composite alarm B also depends on
  composite alarm A. In this scenario, you can't delete any composite alarm that
  is part of the cycle because there is always still a composite alarm that
  depends on that alarm that you want to delete.

  To get out of such a situation, you must break the cycle by changing the rule of
  one of the composite alarms in the cycle to remove a dependency that creates the
  cycle. The simplest change to make to break a cycle is to change the `AlarmRule`
  of one of the alarms to `False`.

  Additionally, the evaluation of composite alarms stops if CloudWatch detects a
  cycle in the evaluation path.
  """
  def delete_alarms(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAlarms", input, options)
  end

  @doc """
  Deletes the specified anomaly detection model from your account.

  For more information about how to delete an anomaly detection model, see
  [Deleting an anomaly detection model](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Anomaly_Detection_Alarm.html#Delete_Anomaly_Detection_Model)
  in the *CloudWatch User Guide*.
  """
  def delete_anomaly_detector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAnomalyDetector", input, options)
  end

  @doc """
  Deletes all dashboards that you specify.

  You can specify up to 100 dashboards to delete. If there is an error during this
  call, no dashboards are deleted.
  """
  def delete_dashboards(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDashboards", input, options)
  end

  @doc """
  Permanently deletes the specified Contributor Insights rules.

  If you create a rule, delete it, and then re-create it with the same name,
  historical data from the first time the rule was created might not be available.
  """
  def delete_insight_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteInsightRules", input, options)
  end

  @doc """
  Permanently deletes the metric stream that you specify.
  """
  def delete_metric_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMetricStream", input, options)
  end

  @doc """
  Retrieves the history for the specified alarm.

  You can filter the results by date range or item type. If an alarm name is not
  specified, the histories for either all metric alarms or all composite alarms
  are returned.

  CloudWatch retains the history of an alarm even if you delete the alarm.

  To use this operation and return information about a composite alarm, you must
  be signed on with the `cloudwatch:DescribeAlarmHistory` permission that is
  scoped to `*`. You can't return information about composite alarms if your
  `cloudwatch:DescribeAlarmHistory` permission has a narrower scope.
  """
  def describe_alarm_history(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAlarmHistory", input, options)
  end

  @doc """
  Retrieves the specified alarms.

  You can filter the results by specifying a prefix for the alarm name, the alarm
  state, or a prefix for any action.

  To use this operation and return information about composite alarms, you must be
  signed on with the `cloudwatch:DescribeAlarms` permission that is scoped to `*`.
  You can't return information about composite alarms if your
  `cloudwatch:DescribeAlarms` permission has a narrower scope.
  """
  def describe_alarms(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAlarms", input, options)
  end

  @doc """
  Retrieves the alarms for the specified metric.

  To filter the results, specify a statistic, period, or unit.

  This operation retrieves only standard alarms that are based on the specified
  metric. It does not return alarms based on math expressions that use the
  specified metric, or composite alarms that use the specified metric.
  """
  def describe_alarms_for_metric(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAlarmsForMetric", input, options)
  end

  @doc """
  Lists the anomaly detection models that you have created in your account.

  For single metric anomaly detectors, you can list all of the models in your
  account or filter the results to only the models that are related to a certain
  namespace, metric name, or metric dimension. For metric math anomaly detectors,
  you can list them by adding `METRIC_MATH` to the `AnomalyDetectorTypes` array.
  This will return all metric math anomaly detectors in your account.
  """
  def describe_anomaly_detectors(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAnomalyDetectors", input, options)
  end

  @doc """
  Returns a list of all the Contributor Insights rules in your account.

  For more information about Contributor Insights, see [Using Contributor Insights to Analyze High-Cardinality
  Data](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html).
  """
  def describe_insight_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeInsightRules", input, options)
  end

  @doc """
  Disables the actions for the specified alarms.

  When an alarm's actions are disabled, the alarm actions do not execute when the
  alarm state changes.
  """
  def disable_alarm_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableAlarmActions", input, options)
  end

  @doc """
  Disables the specified Contributor Insights rules.

  When rules are disabled, they do not analyze log groups and do not incur costs.
  """
  def disable_insight_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableInsightRules", input, options)
  end

  @doc """
  Enables the actions for the specified alarms.
  """
  def enable_alarm_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableAlarmActions", input, options)
  end

  @doc """
  Enables the specified Contributor Insights rules.

  When rules are enabled, they immediately begin analyzing log data.
  """
  def enable_insight_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableInsightRules", input, options)
  end

  @doc """
  Displays the details of the dashboard that you specify.

  To copy an existing dashboard, use `GetDashboard`, and then use the data
  returned within `DashboardBody` as the template for the new dashboard when you
  call `PutDashboard` to create the copy.
  """
  def get_dashboard(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDashboard", input, options)
  end

  @doc """
  This operation returns the time series data collected by a Contributor Insights
  rule.

  The data includes the identity and number of contributors to the log group.

  You can also optionally return one or more statistics about each data point in
  the time series. These statistics can include the following:

    * `UniqueContributors` -- the number of unique contributors for each
  data point.

    * `MaxContributorValue` -- the value of the top contributor for each
  data point. The identity of the contributor might change for each data point in
  the graph.

  If this rule aggregates by COUNT, the top contributor for each data point is the
  contributor with the most occurrences in that period. If the rule aggregates by
  SUM, the top contributor is the contributor with the highest sum in the log
  field specified by the rule's `Value`, during that period.

    * `SampleCount` -- the number of data points matched by the rule.

    * `Sum` -- the sum of the values from all contributors during the
  time period represented by that data point.

    * `Minimum` -- the minimum value from a single observation during
  the time period represented by that data point.

    * `Maximum` -- the maximum value from a single observation during
  the time period represented by that data point.

    * `Average` -- the average value from all contributors during the
  time period represented by that data point.
  """
  def get_insight_rule_report(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetInsightRuleReport", input, options)
  end

  @doc """
  You can use the `GetMetricData` API to retrieve CloudWatch metric values.

  The operation can also include a CloudWatch Metrics Insights query, and one or
  more metric math functions.

  A `GetMetricData` operation that does not include a query can retrieve as many
  as 500 different metrics in a single request, with a total of as many as 100,800
  data points. You can also optionally perform metric math expressions on the
  values of the returned statistics, to create new time series that represent new
  insights into your data. For example, using Lambda metrics, you could divide the
  Errors metric by the Invocations metric to get an error rate time series. For
  more information about metric math expressions, see [Metric Math Syntax and Functions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax)
  in the *Amazon CloudWatch User Guide*.

  If you include a Metrics Insights query, each `GetMetricData` operation can
  include only one query. But the same `GetMetricData` operation can also retrieve
  other metrics. Metrics Insights queries can query only the most recent three
  hours of metric data. For more information about Metrics Insights, see [Query your metrics with CloudWatch Metrics
  Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/query_with_cloudwatch-metrics-insights.html).

  Calls to the `GetMetricData` API have a different pricing structure than calls
  to `GetMetricStatistics`. For more information about pricing, see [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).

  Amazon CloudWatch retains metric data as follows:

    * Data points with a period of less than 60 seconds are available
  for 3 hours. These data points are high-resolution metrics and are available
  only for custom metrics that have been defined with a `StorageResolution` of 1.

    * Data points with a period of 60 seconds (1-minute) are available
  for 15 days.

    * Data points with a period of 300 seconds (5-minute) are available
  for 63 days.

    * Data points with a period of 3600 seconds (1 hour) are available
  for 455 days (15 months).

  Data points that are initially published with a shorter period are aggregated
  together for long-term storage. For example, if you collect data using a period
  of 1 minute, the data remains available for 15 days with 1-minute resolution.
  After 15 days, this data is still available, but is aggregated and retrievable
  only with a resolution of 5 minutes. After 63 days, the data is further
  aggregated and is available with a resolution of 1 hour.

  If you omit `Unit` in your request, all data that was collected with any unit is
  returned, along with the corresponding units that were specified when the data
  was reported to CloudWatch. If you specify a unit, the operation returns only
  data that was collected with that unit specified. If you specify a unit that
  does not match the data collected, the results of the operation are null.
  CloudWatch does not perform unit conversions.

  ## Using Metrics Insights queries with metric math

  You can't mix a Metric Insights query and metric math syntax in the same
  expression, but you can reference results from a Metrics Insights query within
  other Metric math expressions. A Metrics Insights query without a ## GROUP BY
  clause returns a single time-series (TS), and can be used as input for a metric
  math expression that expects a single time series. A Metrics Insights query with
  a **GROUP BY** clause returns an array of time-series (TS[]), and can be used as
  input for a metric math expression that expects an array of time series.
  """
  def get_metric_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMetricData", input, options)
  end

  @doc """
  Gets statistics for the specified metric.

  The maximum number of data points returned from a single call is 1,440. If you
  request more than 1,440 data points, CloudWatch returns an error. To reduce the
  number of data points, you can narrow the specified time range and make multiple
  requests across adjacent time ranges, or you can increase the specified period.
  Data points are not returned in chronological order.

  CloudWatch aggregates data points based on the length of the period that you
  specify. For example, if you request statistics with a one-hour period,
  CloudWatch aggregates all data points with time stamps that fall within each
  one-hour period. Therefore, the number of values aggregated by CloudWatch is
  larger than the number of data points returned.

  CloudWatch needs raw data points to calculate percentile statistics. If you
  publish data using a statistic set instead, you can only retrieve percentile
  statistics for this data if one of the following conditions is true:

    * The SampleCount value of the statistic set is 1.

    * The Min and the Max values of the statistic set are equal.

  Percentile statistics are not available for metrics when any of the metric
  values are negative numbers.

  Amazon CloudWatch retains metric data as follows:

    * Data points with a period of less than 60 seconds are available
  for 3 hours. These data points are high-resolution metrics and are available
  only for custom metrics that have been defined with a `StorageResolution` of 1.

    * Data points with a period of 60 seconds (1-minute) are available
  for 15 days.

    * Data points with a period of 300 seconds (5-minute) are available
  for 63 days.

    * Data points with a period of 3600 seconds (1 hour) are available
  for 455 days (15 months).

  Data points that are initially published with a shorter period are aggregated
  together for long-term storage. For example, if you collect data using a period
  of 1 minute, the data remains available for 15 days with 1-minute resolution.
  After 15 days, this data is still available, but is aggregated and retrievable
  only with a resolution of 5 minutes. After 63 days, the data is further
  aggregated and is available with a resolution of 1 hour.

  CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016.

  For information about metrics and dimensions supported by Amazon Web Services
  services, see the [Amazon CloudWatch Metrics and Dimensions Reference](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html)
  in the *Amazon CloudWatch User Guide*.
  """
  def get_metric_statistics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMetricStatistics", input, options)
  end

  @doc """
  Returns information about the metric stream that you specify.
  """
  def get_metric_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMetricStream", input, options)
  end

  @doc """
  You can use the `GetMetricWidgetImage` API to retrieve a snapshot graph of one
  or more Amazon CloudWatch metrics as a bitmap image.

  You can then embed this image into your services and products, such as wiki
  pages, reports, and documents. You could also retrieve images regularly, such as
  every minute, and create your own custom live dashboard.

  The graph you retrieve can include all CloudWatch metric graph features,
  including metric math and horizontal and vertical annotations.

  There is a limit of 20 transactions per second for this API. Each
  `GetMetricWidgetImage` action has the following limits:

    * As many as 100 metrics in the graph.

    * Up to 100 KB uncompressed payload.
  """
  def get_metric_widget_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetMetricWidgetImage", input, options)
  end

  @doc """
  Returns a list of the dashboards for your account.

  If you include `DashboardNamePrefix`, only those dashboards with names starting
  with the prefix are listed. Otherwise, all dashboards in your account are
  listed.

  `ListDashboards` returns up to 1000 results on one page. If there are more than
  1000 dashboards, you can call `ListDashboards` again and include the value you
  received for `NextToken` in the first call, to receive the next 1000 results.
  """
  def list_dashboards(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDashboards", input, options)
  end

  @doc """
  Returns a list of metric streams in this account.
  """
  def list_metric_streams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMetricStreams", input, options)
  end

  @doc """
  List the specified metrics.

  You can use the returned metrics with
  [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html) or
  [GetMetricStatistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html)
  to obtain statistical data.

  Up to 500 results are returned for any one call. To retrieve additional results,
  use the returned token with subsequent calls.

  After you create a metric, allow up to 15 minutes before the metric appears. You
  can see statistics about the metric sooner by using
  [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html) or
  [GetMetricStatistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html).

  `ListMetrics` doesn't return information about metrics if those metrics haven't
  reported data in the past two weeks. To retrieve those metrics, use
  [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html) or
  [GetMetricStatistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html).
  """
  def list_metrics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMetrics", input, options)
  end

  @doc """
  Displays the tags associated with a CloudWatch resource.

  Currently, alarms and Contributor Insights rules support tagging.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Creates an anomaly detection model for a CloudWatch metric.

  You can use the model to display a band of expected normal values when the
  metric is graphed.

  For more information, see [CloudWatch Anomaly Detection](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html).
  """
  def put_anomaly_detector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAnomalyDetector", input, options)
  end

  @doc """
  Creates or updates a *composite alarm*.

  When you create a composite alarm, you specify a rule expression for the alarm
  that takes into account the alarm states of other alarms that you have created.
  The composite alarm goes into ALARM state only if all conditions of the rule are
  met.

  The alarms specified in a composite alarm's rule expression can include metric
  alarms and other composite alarms. The rule expression of a composite alarm can
  include as many as 100 underlying alarms. Any single alarm can be included in
  the rule expressions of as many as 150 composite alarms.

  Using composite alarms can reduce alarm noise. You can create multiple metric
  alarms, and also create a composite alarm and set up alerts only for the
  composite alarm. For example, you could create a composite alarm that goes into
  ALARM state only when more than one of the underlying metric alarms are in ALARM
  state.

  Currently, the only alarm actions that can be taken by composite alarms are
  notifying SNS topics.

  It is possible to create a loop or cycle of composite alarms, where composite
  alarm A depends on composite alarm B, and composite alarm B also depends on
  composite alarm A. In this scenario, you can't delete any composite alarm that
  is part of the cycle because there is always still a composite alarm that
  depends on that alarm that you want to delete.

  To get out of such a situation, you must break the cycle by changing the rule of
  one of the composite alarms in the cycle to remove a dependency that creates the
  cycle. The simplest change to make to break a cycle is to change the `AlarmRule`
  of one of the alarms to `False`.

  Additionally, the evaluation of composite alarms stops if CloudWatch detects a
  cycle in the evaluation path.

  When this operation creates an alarm, the alarm state is immediately set to
  `INSUFFICIENT_DATA`. The alarm is then evaluated and its state is set
  appropriately. Any actions associated with the new state are then executed. For
  a composite alarm, this initial time after creation is the only time that the
  alarm can be in `INSUFFICIENT_DATA` state.

  When you update an existing alarm, its state is left unchanged, but the update
  completely overwrites the previous configuration of the alarm.

  To use this operation, you must be signed on with the
  `cloudwatch:PutCompositeAlarm` permission that is scoped to `*`. You can't
  create a composite alarms if your `cloudwatch:PutCompositeAlarm` permission has
  a narrower scope.

  If you are an IAM user, you must have `iam:CreateServiceLinkedRole` to create a
  composite alarm that has Systems Manager OpsItem actions.
  """
  def put_composite_alarm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutCompositeAlarm", input, options)
  end

  @doc """
  Creates a dashboard if it does not already exist, or updates an existing
  dashboard.

  If you update a dashboard, the entire contents are replaced with what you
  specify here.

  All dashboards in your account are global, not region-specific.

  A simple way to create a dashboard using `PutDashboard` is to copy an existing
  dashboard. To copy an existing dashboard using the console, you can load the
  dashboard and then use the View/edit source command in the Actions menu to
  display the JSON block for that dashboard. Another way to copy a dashboard is to
  use `GetDashboard`, and then use the data returned within `DashboardBody` as the
  template for the new dashboard when you call `PutDashboard`.

  When you create a dashboard with `PutDashboard`, a good practice is to add a
  text widget at the top of the dashboard with a message that the dashboard was
  created by script and should not be changed in the console. This message could
  also point console users to the location of the `DashboardBody` script or the
  CloudFormation template used to create the dashboard.
  """
  def put_dashboard(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutDashboard", input, options)
  end

  @doc """
  Creates a Contributor Insights rule.

  Rules evaluate log events in a CloudWatch Logs log group, enabling you to find
  contributor data for the log events in that log group. For more information, see
  [Using Contributor Insights to Analyze High-Cardinality Data](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html).

  If you create a rule, delete it, and then re-create it with the same name,
  historical data from the first time the rule was created might not be available.
  """
  def put_insight_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutInsightRule", input, options)
  end

  @doc """
  Creates or updates an alarm and associates it with the specified metric, metric
  math expression, or anomaly detection model.

  Alarms based on anomaly detection models cannot have Auto Scaling actions.

  When this operation creates an alarm, the alarm state is immediately set to
  `INSUFFICIENT_DATA`. The alarm is then evaluated and its state is set
  appropriately. Any actions associated with the new state are then executed.

  When you update an existing alarm, its state is left unchanged, but the update
  completely overwrites the previous configuration of the alarm.

  If you are an IAM user, you must have Amazon EC2 permissions for some alarm
  operations:

    * The `iam:CreateServiceLinkedRole` for all alarms with EC2 actions

    * The `iam:CreateServiceLinkedRole` to create an alarm with Systems
  Manager OpsItem actions.

  The first time you create an alarm in the Amazon Web Services Management
  Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates the
  necessary service-linked role for you. The service-linked roles are called
  `AWSServiceRoleForCloudWatchEvents` and
  `AWSServiceRoleForCloudWatchAlarms_ActionSSM`. For more information, see [Amazon Web Services service-linked
  role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role).

  ## Cross-account alarms

  You can set an alarm on metrics in the current account, or in another account.
  To create a cross-account alarm that watches a metric in a different account,
  you must have completed the following pre-requisites:

    * The account where the metrics are located (the *sharing account*)
  must already have a sharing role named **CloudWatch-CrossAccountSharingRole**.
  If it does not already have this role, you must create it using the instructions
  in **Set up a sharing account** in [ Cross-account cross-Region CloudWatch console](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region).
  The policy for that role must grant access to the ID of the account where you
  are creating the alarm.

    * The account where you are creating the alarm (the *monitoring
  account*) must already have a service-linked role named
  **AWSServiceRoleForCloudWatchCrossAccount** to allow CloudWatch to assume the
  sharing role in the sharing account. If it does not, you must create it
  following the directions in **Set up a monitoring account** in [ Cross-account cross-Region CloudWatch
  console](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region).
  """
  def put_metric_alarm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutMetricAlarm", input, options)
  end

  @doc """
  Publishes metric data points to Amazon CloudWatch.

  CloudWatch associates the data points with the specified metric. If the
  specified metric does not exist, CloudWatch creates the metric. When CloudWatch
  creates a metric, it can take up to fifteen minutes for the metric to appear in
  calls to
  [ListMetrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html).  You can publish either individual data points in the `Value` field, or arrays of
  values and the number of times each value occurred during the period by using
  the `Values` and `Counts` fields in the `MetricDatum` structure. Using the
  `Values` and `Counts` method enables you to publish up to 150 values per metric
  with one `PutMetricData` request, and supports retrieving percentile statistics
  on this data.

  Each `PutMetricData` request is limited to 1 MB in size for HTTP POST requests.
  You can send a payload compressed by gzip. Each request is also limited to no
  more than 1000 different metrics.

  Although the `Value` parameter accepts numbers of type `Double`, CloudWatch
  rejects values that are either too small or too large. Values must be in the
  range of -2^360 to 2^360. In addition, special values (for example, NaN,
  +Infinity, -Infinity) are not supported.

  You can use up to 30 dimensions per metric to further clarify what data the
  metric collects. Each dimension consists of a Name and Value pair. For more
  information about specifying dimensions, see [Publishing
  Metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
  in the *Amazon CloudWatch User Guide*.

  You specify the time stamp to be associated with each data point. You can
  specify time stamps that are as much as two weeks before the current date, and
  as much as 2 hours after the current day and time.

  Data points with time stamps from 24 hours ago or longer can take at least 48
  hours to become available for
  [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html) or
  [GetMetricStatistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html)
  from the time they are submitted. Data points with time stamps between 3 and 24
  hours ago can take as much as 2 hours to become available for for
  [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html) or
  [GetMetricStatistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html).

  CloudWatch needs raw data points to calculate percentile statistics. If you
  publish data using a statistic set instead, you can only retrieve percentile
  statistics for this data if one of the following conditions is true:

    * The `SampleCount` value of the statistic set is 1 and `Min`,
  `Max`, and `Sum` are all equal.

    * The `Min` and `Max` are equal, and `Sum` is equal to `Min`
  multiplied by `SampleCount`.
  """
  def put_metric_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutMetricData", input, options)
  end

  @doc """
  Creates or updates a metric stream.

  Metric streams can automatically stream CloudWatch metrics to Amazon Web
  Services destinations including Amazon S3 and to many third-party solutions.

  For more information, see [ Using Metric Streams](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Metric-Streams.html).

  To create a metric stream, you must be logged on to an account that has the
  `iam:PassRole` permission and either the `CloudWatchFullAccess` policy or the
  `cloudwatch:PutMetricStream` permission.

  When you create or update a metric stream, you choose one of the following:

    * Stream metrics from all metric namespaces in the account.

    * Stream metrics from all metric namespaces in the account, except
  for the namespaces that you list in `ExcludeFilters`.

    * Stream metrics from only the metric namespaces that you list in
  `IncludeFilters`.

  By default, a metric stream always sends the `MAX`, `MIN`, `SUM`, and
  `SAMPLECOUNT` statistics for each metric that is streamed. You can use the
  `StatisticsConfigurations` parameter to have the metric stream also send
  additional statistics in the stream. Streaming additional statistics incurs
  additional costs. For more information, see [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).

  When you use `PutMetricStream` to create a new metric stream, the stream is
  created in the `running` state. If you use it to update an existing stream, the
  state of the stream is not changed.
  """
  def put_metric_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutMetricStream", input, options)
  end

  @doc """
  Temporarily sets the state of an alarm for testing purposes.

  When the updated state differs from the previous value, the action configured
  for the appropriate state is invoked. For example, if your alarm is configured
  to send an Amazon SNS message when an alarm is triggered, temporarily changing
  the alarm state to `ALARM` sends an SNS message.

  Metric alarms returns to their actual state quickly, often within seconds.
  Because the metric alarm state change happens quickly, it is typically only
  visible in the alarm's **History** tab in the Amazon CloudWatch console or
  through
  [DescribeAlarmHistory](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html).

  If you use `SetAlarmState` on a composite alarm, the composite alarm is not
  guaranteed to return to its actual state. It returns to its actual state only
  once any of its children alarms change state. It is also reevaluated if you
  update its configuration.

  If an alarm triggers EC2 Auto Scaling policies or application Auto Scaling
  policies, you must include information in the `StateReasonData` parameter to
  enable the policy to take the correct action.
  """
  def set_alarm_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetAlarmState", input, options)
  end

  @doc """
  Starts the streaming of metrics for one or more of your metric streams.
  """
  def start_metric_streams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartMetricStreams", input, options)
  end

  @doc """
  Stops the streaming of metrics for one or more of your metric streams.
  """
  def stop_metric_streams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopMetricStreams", input, options)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified CloudWatch resource.

  Currently, the only CloudWatch resources that can be tagged are alarms and
  Contributor Insights rules.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with an alarm that already has tags. If you
  specify a new tag key for the alarm, this tag is appended to the list of tags
  associated with the alarm. If you specify a tag key that is already associated
  with the alarm, the new tag value that you specify replaces the previous value
  for that tag.

  You can associate as many as 50 tags with a CloudWatch resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end
end
