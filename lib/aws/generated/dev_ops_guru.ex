# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DevOpsGuru do
  @moduledoc """
  Amazon DevOps Guru is a fully managed service that helps you identify anomalous
  behavior in
  business critical operational applications.

  You specify the Amazon Web Services resources that you
  want DevOps Guru to cover, then the Amazon CloudWatch metrics and Amazon Web
  Services CloudTrail events related to those
  resources are analyzed. When anomalous behavior is detected, DevOps Guru creates
  an
  *insight* that includes recommendations, related events, and
  related metrics that can help you improve your operational applications. For
  more
  information, see [What is Amazon DevOps Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html).

  You can specify 1 or 2 Amazon Simple Notification Service topics so you are
  notified every time a new insight
  is created. You can also enable DevOps Guru to generate an OpsItem in Amazon Web
  Services Systems Manager for each
  insight to help you manage and track your work addressing insights.

  To learn about the DevOps Guru workflow, see [How DevOps Guru works](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works).
  To
  learn about DevOps Guru concepts, see [Concepts in DevOps Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  anomaly_source_metadata() :: %{
    "Source" => String.t(),
    "SourceResourceName" => String.t(),
    "SourceResourceType" => String.t()
  }
  """
  @type anomaly_source_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_integration_config() :: %{
    "KMSServerSideEncryption" => kms_server_side_encryption_integration(),
    "LogsAnomalyDetection" => logs_anomaly_detection_integration(),
    "OpsCenter" => ops_center_integration()
  }
  """
  @type service_integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_resource_collection_response() :: %{

  }
  """
  @type update_resource_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_organization_insights_response() :: %{
    "NextToken" => String.t(),
    "ProactiveInsights" => list(proactive_organization_insight_summary()()),
    "ReactiveInsights" => list(reactive_organization_insight_summary()())
  }
  """
  @type list_organization_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_stat() :: %{
    "Type" => String.t(),
    "Value" => float()
  }
  """
  @type performance_insights_stat() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_time_range() :: %{
    "EndTime" => non_neg_integer(),
    "StartTime" => non_neg_integer()
  }
  """
  @type anomaly_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_feedback_request() :: %{
    optional("InsightFeedback") => insight_feedback()
  }
  """
  @type put_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_insight_health() :: %{
    "OpenProactiveInsights" => integer(),
    "OpenReactiveInsights" => integer()
  }
  """
  @type service_insight_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_insights_any_status_filter() :: %{
    "StartTimeRange" => start_time_range(),
    "Type" => list(any())
  }
  """
  @type list_insights_any_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_insights_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("StatusFilter") => list_insights_status_filter()
  }
  """
  @type list_insights_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_insight_response() :: %{
    "ProactiveInsight" => proactive_insight(),
    "ReactiveInsight" => reactive_insight()
  }
  """
  @type describe_insight_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_metric_dimension_group() :: %{
    "Dimensions" => list(String.t()()),
    "Group" => String.t(),
    "Limit" => integer()
  }
  """
  @type performance_insights_metric_dimension_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_notification_channel_request() :: %{
    required("Config") => notification_channel_config()
  }
  """
  @type add_notification_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomalies_for_insight_filters() :: %{
    "ServiceCollection" => service_collection()
  }
  """
  @type list_anomalies_for_insight_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_reference_scalar() :: %{
    "Value" => float()
  }
  """
  @type performance_insights_reference_scalar() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_organization_overview_request() :: %{
    optional("AccountIds") => list(String.t()()),
    optional("OrganizationalUnitIds") => list(String.t()()),
    optional("ToTime") => non_neg_integer(),
    required("FromTime") => non_neg_integer()
  }
  """
  @type describe_organization_overview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  account_insight_health() :: %{
    "OpenProactiveInsights" => integer(),
    "OpenReactiveInsights" => integer()
  }
  """
  @type account_insight_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation_related_event() :: %{
    "Name" => String.t(),
    "Resources" => list(recommendation_related_event_resource()())
  }
  """
  @type recommendation_related_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reactive_insight() :: %{
    "Description" => String.t(),
    "Id" => String.t(),
    "InsightTimeRange" => insight_time_range(),
    "Name" => String.t(),
    "ResourceCollection" => resource_collection(),
    "Severity" => list(any()),
    "SsmOpsItemId" => String.t(),
    "Status" => list(any())
  }
  """
  @type reactive_insight() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proactive_organization_insight_summary() :: %{
    "AccountId" => String.t(),
    "Id" => String.t(),
    "InsightTimeRange" => insight_time_range(),
    "Name" => String.t(),
    "OrganizationalUnitId" => String.t(),
    "PredictionTimeRange" => prediction_time_range(),
    "ResourceCollection" => resource_collection(),
    "ServiceCollection" => service_collection(),
    "Severity" => list(any()),
    "Status" => list(any())
  }
  """
  @type proactive_organization_insight_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_resource_collection_response() :: %{
    "NextToken" => String.t(),
    "ResourceCollection" => resource_collection_filter()
  }
  """
  @type get_resource_collection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation_related_cloud_watch_metrics_source_detail() :: %{
    "MetricName" => String.t(),
    "Namespace" => String.t()
  }
  """
  @type recommendation_related_cloud_watch_metrics_source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_event_sources_config_response() :: %{

  }
  """
  @type update_event_sources_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation_related_anomaly_source_detail() :: %{
    "CloudWatchMetrics" => list(recommendation_related_cloud_watch_metrics_source_detail()())
  }
  """
  @type recommendation_related_anomaly_source_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_account_overview_request() :: %{
    optional("ToTime") => non_neg_integer(),
    required("FromTime") => non_neg_integer()
  }
  """
  @type describe_account_overview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proactive_anomaly() :: %{
    "AnomalyReportedTimeRange" => anomaly_reported_time_range(),
    "AnomalyResources" => list(anomaly_resource()()),
    "AnomalyTimeRange" => anomaly_time_range(),
    "AssociatedInsightId" => String.t(),
    "Description" => String.t(),
    "Id" => String.t(),
    "Limit" => float(),
    "PredictionTimeRange" => prediction_time_range(),
    "ResourceCollection" => resource_collection(),
    "Severity" => list(any()),
    "SourceDetails" => anomaly_source_details(),
    "SourceMetadata" => anomaly_source_metadata(),
    "Status" => list(any()),
    "UpdateTime" => non_neg_integer()
  }
  """
  @type proactive_anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_notification_channel_request() :: %{

  }
  """
  @type remove_notification_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_insights_response() :: %{
    "NextToken" => String.t(),
    "ProactiveInsights" => list(proactive_insight_summary()()),
    "ReactiveInsights" => list(reactive_insight_summary()())
  }
  """
  @type list_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_health() :: %{
    "AnalyzedResourceCount" => float(),
    "Insight" => service_insight_health(),
    "ServiceName" => list(any())
  }
  """
  @type service_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kms_server_side_encryption_integration() :: %{
    "KMSKeyId" => String.t(),
    "OptInStatus" => list(any()),
    "Type" => list(any())
  }
  """
  @type kms_server_side_encryption_integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_monitored_resources_request() :: %{
    optional("Filters") => list_monitored_resources_filters(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_monitored_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proactive_insight() :: %{
    "Description" => String.t(),
    "Id" => String.t(),
    "InsightTimeRange" => insight_time_range(),
    "Name" => String.t(),
    "PredictionTimeRange" => prediction_time_range(),
    "ResourceCollection" => resource_collection(),
    "Severity" => list(any()),
    "SsmOpsItemId" => String.t(),
    "Status" => list(any())
  }
  """
  @type proactive_insight() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cost_estimation_request() :: %{
    optional("NextToken") => String.t()
  }
  """
  @type get_cost_estimation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomalous_log_group() :: %{
    "ImpactEndTime" => non_neg_integer(),
    "ImpactStartTime" => non_neg_integer(),
    "LogAnomalyShowcases" => list(log_anomaly_showcase()()),
    "LogGroupName" => String.t(),
    "NumberOfLogLinesScanned" => integer()
  }
  """
  @type anomalous_log_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_feedback_response() :: %{

  }
  """
  @type put_feedback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proactive_insight_summary() :: %{
    "AssociatedResourceArns" => list(String.t()()),
    "Id" => String.t(),
    "InsightTimeRange" => insight_time_range(),
    "Name" => String.t(),
    "PredictionTimeRange" => prediction_time_range(),
    "ResourceCollection" => resource_collection(),
    "ServiceCollection" => service_collection(),
    "Severity" => list(any()),
    "Status" => list(any())
  }
  """
  @type proactive_insight_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_anomaly_response() :: %{
    "ProactiveAnomaly" => proactive_anomaly(),
    "ReactiveAnomaly" => reactive_anomaly()
  }
  """
  @type describe_anomaly_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_resource_collection_filter() :: %{
    "CloudFormation" => update_cloud_formation_collection_filter(),
    "Tags" => list(update_tag_collection_filter()())
  }
  """
  @type update_resource_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cost_estimation_time_range() :: %{
    "EndTime" => non_neg_integer(),
    "StartTime" => non_neg_integer()
  }
  """
  @type cost_estimation_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_events_filters() :: %{
    "DataSource" => list(any()),
    "EventClass" => list(any()),
    "EventSource" => String.t(),
    "EventTimeRange" => event_time_range(),
    "InsightId" => String.t(),
    "ResourceCollection" => resource_collection()
  }
  """
  @type list_events_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kms_server_side_encryption_integration_config() :: %{
    "KMSKeyId" => String.t(),
    "OptInStatus" => list(any()),
    "Type" => list(any())
  }
  """
  @type kms_server_side_encryption_integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_organization_insights_filters() :: %{
    "ResourceCollection" => resource_collection(),
    "ServiceCollection" => service_collection(),
    "Severities" => list(list(any())()),
    "Statuses" => list(list(any())())
  }
  """
  @type search_organization_insights_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_reference_metric() :: %{
    "MetricQuery" => performance_insights_metric_query()
  }
  """
  @type performance_insights_reference_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_insights_response() :: %{
    "NextToken" => String.t(),
    "ProactiveInsights" => list(proactive_insight_summary()()),
    "ReactiveInsights" => list(reactive_insight_summary()())
  }
  """
  @type search_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ops_center_integration_config() :: %{
    "OptInStatus" => list(any())
  }
  """
  @type ops_center_integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_metrics_data_summary() :: %{
    "StatusCode" => list(any()),
    "TimestampMetricValuePairList" => list(timestamp_metric_value_pair()())
  }
  """
  @type cloud_watch_metrics_data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_tag_collection_filter() :: %{
    "AppBoundaryKey" => String.t(),
    "TagValues" => list(String.t()())
  }
  """
  @type update_tag_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_events_request() :: %{
    optional("AccountId") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("Filters") => list_events_filters()
  }
  """
  @type list_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_channel() :: %{
    "Config" => notification_channel_config(),
    "Id" => String.t()
  }
  """
  @type notification_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_service_integration_request() :: %{
    required("ServiceIntegration") => update_service_integration_config()
  }
  """
  @type update_service_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_collection() :: %{
    "AppBoundaryKey" => String.t(),
    "TagValues" => list(String.t()())
  }
  """
  @type tag_collection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cost_estimation_response() :: %{
    "Costs" => list(service_resource_cost()()),
    "NextToken" => String.t(),
    "ResourceCollection" => cost_estimation_resource_collection_filter(),
    "Status" => list(any()),
    "TimeRange" => cost_estimation_time_range(),
    "TotalCost" => float()
  }
  """
  @type get_cost_estimation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_insights_ongoing_status_filter() :: %{
    "Type" => list(any())
  }
  """
  @type list_insights_ongoing_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_reported_time_range() :: %{
    "CloseTime" => non_neg_integer(),
    "OpenTime" => non_neg_integer()
  }
  """
  @type anomaly_reported_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_formation_health() :: %{
    "AnalyzedResourceCount" => float(),
    "Insight" => insight_health(),
    "StackName" => String.t()
  }
  """
  @type cloud_formation_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reactive_organization_insight_summary() :: %{
    "AccountId" => String.t(),
    "Id" => String.t(),
    "InsightTimeRange" => insight_time_range(),
    "Name" => String.t(),
    "OrganizationalUnitId" => String.t(),
    "ResourceCollection" => resource_collection(),
    "ServiceCollection" => service_collection(),
    "Severity" => list(any()),
    "Status" => list(any())
  }
  """
  @type reactive_organization_insight_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  amazon_code_guru_profiler_integration() :: %{
    "Status" => list(any())
  }
  """
  @type amazon_code_guru_profiler_integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "Message" => String.t(),
    "ResourceId" => String.t(),
    "ResourceType" => String.t()
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
  remove_notification_channel_response() :: %{

  }
  """
  @type remove_notification_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_notification_channels_response() :: %{
    "Channels" => list(notification_channel()()),
    "NextToken" => String.t()
  }
  """
  @type list_notification_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reactive_insight_summary() :: %{
    "AssociatedResourceArns" => list(String.t()()),
    "Id" => String.t(),
    "InsightTimeRange" => insight_time_range(),
    "Name" => String.t(),
    "ResourceCollection" => resource_collection(),
    "ServiceCollection" => service_collection(),
    "Severity" => list(any()),
    "Status" => list(any())
  }
  """
  @type reactive_insight_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  event_sources_config() :: %{
    "AmazonCodeGuruProfiler" => amazon_code_guru_profiler_integration()
  }
  """
  @type event_sources_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_formation_cost_estimation_resource_collection_filter() :: %{
    "StackNames" => list(String.t()())
  }
  """
  @type cloud_formation_cost_estimation_resource_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  prediction_time_range() :: %{
    "EndTime" => non_neg_integer(),
    "StartTime" => non_neg_integer()
  }
  """
  @type prediction_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_service_integration_request() :: %{

  }
  """
  @type describe_service_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  log_anomaly_showcase() :: %{
    "LogAnomalyClasses" => list(log_anomaly_class()())
  }
  """
  @type log_anomaly_showcase() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_collection() :: %{
    "ServiceNames" => list(list(any())())
  }
  """
  @type service_collection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_notification_channel_response() :: %{
    "Id" => String.t()
  }
  """
  @type add_notification_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_resource_collection_health_response() :: %{
    "CloudFormation" => list(cloud_formation_health()()),
    "NextToken" => String.t(),
    "Service" => list(service_health()()),
    "Tags" => list(tag_health()())
  }
  """
  @type describe_resource_collection_health_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation() :: %{
    "Category" => String.t(),
    "Description" => String.t(),
    "Link" => String.t(),
    "Name" => String.t(),
    "Reason" => String.t(),
    "RelatedAnomalies" => list(recommendation_related_anomaly()()),
    "RelatedEvents" => list(recommendation_related_event()())
  }
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reactive_anomaly() :: %{
    "AnomalyReportedTimeRange" => anomaly_reported_time_range(),
    "AnomalyResources" => list(anomaly_resource()()),
    "AnomalyTimeRange" => anomaly_time_range(),
    "AssociatedInsightId" => String.t(),
    "CausalAnomalyId" => String.t(),
    "Description" => String.t(),
    "Id" => String.t(),
    "Name" => String.t(),
    "ResourceCollection" => resource_collection(),
    "Severity" => list(any()),
    "SourceDetails" => anomaly_source_details(),
    "Status" => list(any()),
    "Type" => list(any())
  }
  """
  @type reactive_anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_organization_insights_request() :: %{
    optional("Filters") => search_organization_insights_filters(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AccountIds") => list(String.t()()),
    required("StartTimeRange") => start_time_range(),
    required("Type") => list(any())
  }
  """
  @type search_organization_insights_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cloud_formation_collection_filter() :: %{
    "StackNames" => list(String.t()())
  }
  """
  @type update_cloud_formation_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_reference_comparison_values() :: %{
    "ReferenceMetric" => performance_insights_reference_metric(),
    "ReferenceScalar" => performance_insights_reference_scalar()
  }
  """
  @type performance_insights_reference_comparison_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_account_health_response() :: %{
    "AnalyzedResourceCount" => float(),
    "MetricsAnalyzed" => integer(),
    "OpenProactiveInsights" => integer(),
    "OpenReactiveInsights" => integer(),
    "ResourceHours" => float()
  }
  """
  @type describe_account_health_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_source_details() :: %{
    "CloudWatchMetrics" => list(cloud_watch_metrics_detail()()),
    "PerformanceInsightsMetrics" => list(performance_insights_metrics_detail()())
  }
  """
  @type anomaly_source_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  timestamp_metric_value_pair() :: %{
    "MetricValue" => float(),
    "Timestamp" => non_neg_integer()
  }
  """
  @type timestamp_metric_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_insight_request() :: %{
    optional("AccountId") => String.t()
  }
  """
  @type describe_insight_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_monitored_resources_response() :: %{
    "MonitoredResourceIdentifiers" => list(monitored_resource_identifier()()),
    "NextToken" => String.t()
  }
  """
  @type list_monitored_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_insights_request() :: %{
    optional("Filters") => search_insights_filters(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("StartTimeRange") => start_time_range(),
    required("Type") => list(any())
  }
  """
  @type search_insights_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_collection_filter() :: %{
    "AppBoundaryKey" => String.t(),
    "TagValues" => list(String.t()())
  }
  """
  @type tag_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception_field() :: %{
    "Message" => String.t(),
    "Name" => String.t()
  }
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_reference_data() :: %{
    "ComparisonValues" => performance_insights_reference_comparison_values(),
    "Name" => String.t()
  }
  """
  @type performance_insights_reference_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_account_overview_response() :: %{
    "MeanTimeToRecoverInMilliseconds" => float(),
    "ProactiveInsights" => integer(),
    "ReactiveInsights" => integer()
  }
  """
  @type describe_account_overview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reactive_anomaly_summary() :: %{
    "AnomalyReportedTimeRange" => anomaly_reported_time_range(),
    "AnomalyResources" => list(anomaly_resource()()),
    "AnomalyTimeRange" => anomaly_time_range(),
    "AssociatedInsightId" => String.t(),
    "CausalAnomalyId" => String.t(),
    "Description" => String.t(),
    "Id" => String.t(),
    "Name" => String.t(),
    "ResourceCollection" => resource_collection(),
    "Severity" => list(any()),
    "SourceDetails" => anomaly_source_details(),
    "Status" => list(any()),
    "Type" => list(any())
  }
  """
  @type reactive_anomaly_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_insights_filters() :: %{
    "ResourceCollection" => resource_collection(),
    "ServiceCollection" => service_collection(),
    "Severities" => list(list(any())()),
    "Statuses" => list(list(any())())
  }
  """
  @type search_insights_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_event_sources_config_response() :: %{
    "EventSources" => event_sources_config()
  }
  """
  @type describe_event_sources_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_metrics_detail() :: %{
    "Dimensions" => list(cloud_watch_metrics_dimension()()),
    "MetricDataSummary" => cloud_watch_metrics_data_summary(),
    "MetricName" => String.t(),
    "Namespace" => String.t(),
    "Period" => integer(),
    "Stat" => list(any()),
    "Unit" => String.t()
  }
  """
  @type cloud_watch_metrics_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search_organization_insights_response() :: %{
    "NextToken" => String.t(),
    "ProactiveInsights" => list(proactive_insight_summary()()),
    "ReactiveInsights" => list(reactive_insight_summary()())
  }
  """
  @type search_organization_insights_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_formation_collection_filter() :: %{
    "StackNames" => list(String.t()())
  }
  """
  @type cloud_formation_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation_related_anomaly() :: %{
    "AnomalyId" => String.t(),
    "Resources" => list(recommendation_related_anomaly_resource()()),
    "SourceDetails" => list(recommendation_related_anomaly_source_detail()())
  }
  """
  @type recommendation_related_anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_cost_estimation_resource_collection_filter() :: %{
    "AppBoundaryKey" => String.t(),
    "TagValues" => list(String.t()())
  }
  """
  @type tag_cost_estimation_resource_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomalous_log_groups_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("InsightId") => String.t()
  }
  """
  @type list_anomalous_log_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_events_response() :: %{
    "Events" => list(event()()),
    "NextToken" => String.t()
  }
  """
  @type list_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_insights_closed_status_filter() :: %{
    "EndTimeRange" => end_time_range(),
    "Type" => list(any())
  }
  """
  @type list_insights_closed_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_resource() :: %{
    "Name" => String.t(),
    "Type" => String.t()
  }
  """
  @type anomaly_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation_related_anomaly_resource() :: %{
    "Name" => String.t(),
    "Type" => String.t()
  }
  """
  @type recommendation_related_anomaly_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  log_anomaly_class() :: %{
    "Explanation" => String.t(),
    "LogAnomalyToken" => String.t(),
    "LogAnomalyType" => list(any()),
    "LogEventId" => String.t(),
    "LogEventTimestamp" => non_neg_integer(),
    "LogStreamName" => String.t(),
    "NumberOfLogLinesOccurrences" => integer()
  }
  """
  @type log_anomaly_class() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "Message" => String.t(),
    "RetryAfterSeconds" => integer()
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  insight_time_range() :: %{
    "EndTime" => non_neg_integer(),
    "StartTime" => non_neg_integer()
  }
  """
  @type insight_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  end_time_range() :: %{
    "FromTime" => non_neg_integer(),
    "ToTime" => non_neg_integer()
  }
  """
  @type end_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_organization_resource_collection_health_response() :: %{
    "Account" => list(account_health()()),
    "CloudFormation" => list(cloud_formation_health()()),
    "NextToken" => String.t(),
    "Service" => list(service_health()()),
    "Tags" => list(tag_health()())
  }
  """
  @type describe_organization_resource_collection_health_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_event_sources_config_request() :: %{

  }
  """
  @type describe_event_sources_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  event_resource() :: %{
    "Arn" => String.t(),
    "Name" => String.t(),
    "Type" => String.t()
  }
  """
  @type event_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  logs_anomaly_detection_integration() :: %{
    "OptInStatus" => list(any())
  }
  """
  @type logs_anomaly_detection_integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_organization_overview_response() :: %{
    "ProactiveInsights" => integer(),
    "ReactiveInsights" => integer()
  }
  """
  @type describe_organization_overview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  event() :: %{
    "DataSource" => list(any()),
    "EventClass" => list(any()),
    "EventSource" => String.t(),
    "Id" => String.t(),
    "Name" => String.t(),
    "ResourceCollection" => resource_collection(),
    "Resources" => list(event_resource()()),
    "Time" => non_neg_integer()
  }
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_metric_query() :: %{
    "Filter" => map(),
    "GroupBy" => performance_insights_metric_dimension_group(),
    "Metric" => String.t()
  }
  """
  @type performance_insights_metric_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_collection_filter() :: %{
    "CloudFormation" => cloud_formation_collection_filter(),
    "Tags" => list(tag_collection_filter()())
  }
  """
  @type resource_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_organization_resource_collection_health_request() :: %{
    optional("AccountIds") => list(String.t()()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("OrganizationalUnitIds") => list(String.t()()),
    required("OrganizationResourceCollectionType") => list(any())
  }
  """
  @type describe_organization_resource_collection_health_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomalies_for_insight_response() :: %{
    "NextToken" => String.t(),
    "ProactiveAnomalies" => list(proactive_anomaly_summary()()),
    "ReactiveAnomalies" => list(reactive_anomaly_summary()())
  }
  """
  @type list_anomalies_for_insight_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_health() :: %{
    "AnalyzedResourceCount" => float(),
    "AppBoundaryKey" => String.t(),
    "Insight" => insight_health(),
    "TagValue" => String.t()
  }
  """
  @type tag_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cost_estimation_resource_collection_filter() :: %{
    "CloudFormation" => cloud_formation_cost_estimation_resource_collection_filter(),
    "Tags" => list(tag_cost_estimation_resource_collection_filter()())
  }
  """
  @type cost_estimation_resource_collection_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_account_health_request() :: %{

  }
  """
  @type describe_account_health_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_insight_response() :: %{

  }
  """
  @type delete_insight_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_resource_collection_request() :: %{
    required("Action") => list(any()),
    required("ResourceCollection") => update_resource_collection_filter()
  }
  """
  @type update_resource_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_cost_estimation_response() :: %{

  }
  """
  @type start_cost_estimation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_notification_channels_request() :: %{
    optional("NextToken") => String.t()
  }
  """
  @type list_notification_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_event_sources_config_request() :: %{
    optional("EventSources") => event_sources_config()
  }
  """
  @type update_event_sources_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation_related_event_resource() :: %{
    "Name" => String.t(),
    "Type" => String.t()
  }
  """
  @type recommendation_related_event_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_formation_collection() :: %{
    "StackNames" => list(String.t()())
  }
  """
  @type cloud_formation_collection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "Fields" => list(validation_exception_field()()),
    "Message" => String.t(),
    "Reason" => list(any())
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_insight_request() :: %{

  }
  """
  @type delete_insight_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomalous_log_groups_response() :: %{
    "AnomalousLogGroups" => list(anomalous_log_group()()),
    "InsightId" => String.t(),
    "NextToken" => String.t()
  }
  """
  @type list_anomalous_log_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sns_channel_config() :: %{
    "TopicArn" => String.t()
  }
  """
  @type sns_channel_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  logs_anomaly_detection_integration_config() :: %{
    "OptInStatus" => list(any())
  }
  """
  @type logs_anomaly_detection_integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_metrics_dimension() :: %{
    "Name" => String.t(),
    "Value" => String.t()
  }
  """
  @type cloud_watch_metrics_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_service_integration_response() :: %{
    "ServiceIntegration" => service_integration_config()
  }
  """
  @type describe_service_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  performance_insights_metrics_detail() :: %{
    "MetricDisplayName" => String.t(),
    "MetricQuery" => performance_insights_metric_query(),
    "ReferenceData" => list(performance_insights_reference_data()()),
    "StatsAtAnomaly" => list(performance_insights_stat()()),
    "StatsAtBaseline" => list(performance_insights_stat()()),
    "Unit" => String.t()
  }
  """
  @type performance_insights_metrics_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "Message" => String.t(),
    "QuotaCode" => String.t(),
    "RetryAfterSeconds" => integer(),
    "ServiceCode" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_feedback_response() :: %{
    "InsightFeedback" => insight_feedback()
  }
  """
  @type describe_feedback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_cost_estimation_request() :: %{
    optional("ClientToken") => String.t(),
    required("ResourceCollection") => cost_estimation_resource_collection_filter()
  }
  """
  @type start_cost_estimation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_service_integration_response() :: %{

  }
  """
  @type update_service_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_resource_collection_request() :: %{
    optional("NextToken") => String.t()
  }
  """
  @type get_resource_collection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  insight_health() :: %{
    "MeanTimeToRecoverInMilliseconds" => float(),
    "OpenProactiveInsights" => integer(),
    "OpenReactiveInsights" => integer()
  }
  """
  @type insight_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_anomaly_request() :: %{
    optional("AccountId") => String.t()
  }
  """
  @type describe_anomaly_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_service_integration_config() :: %{
    "KMSServerSideEncryption" => kms_server_side_encryption_integration_config(),
    "LogsAnomalyDetection" => logs_anomaly_detection_integration_config(),
    "OpsCenter" => ops_center_integration_config()
  }
  """
  @type update_service_integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_feedback_request() :: %{
    optional("InsightId") => String.t()
  }
  """
  @type describe_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_time_range() :: %{
    "FromTime" => non_neg_integer(),
    "ToTime" => non_neg_integer()
  }
  """
  @type start_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_channel_config() :: %{
    "Filters" => notification_filter_config(),
    "Sns" => sns_channel_config()
  }
  """
  @type notification_channel_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  event_time_range() :: %{
    "FromTime" => non_neg_integer(),
    "ToTime" => non_neg_integer()
  }
  """
  @type event_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_monitored_resources_filters() :: %{
    "ResourcePermission" => list(any()),
    "ResourceTypeFilters" => list(list(any())())
  }
  """
  @type list_monitored_resources_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_organization_insights_request() :: %{
    optional("AccountIds") => list(String.t()()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("OrganizationalUnitIds") => list(String.t()()),
    required("StatusFilter") => list_insights_status_filter()
  }
  """
  @type list_organization_insights_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_filter_config() :: %{
    "MessageTypes" => list(list(any())()),
    "Severities" => list(list(any())())
  }
  """
  @type notification_filter_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_organization_health_response() :: %{
    "MetricsAnalyzed" => integer(),
    "OpenProactiveInsights" => integer(),
    "OpenReactiveInsights" => integer(),
    "ResourceHours" => float()
  }
  """
  @type describe_organization_health_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recommendations_response() :: %{
    "NextToken" => String.t(),
    "Recommendations" => list(recommendation()())
  }
  """
  @type list_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_insights_status_filter() :: %{
    "Any" => list_insights_any_status_filter(),
    "Closed" => list_insights_closed_status_filter(),
    "Ongoing" => list_insights_ongoing_status_filter()
  }
  """
  @type list_insights_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  insight_feedback() :: %{
    "Feedback" => list(any()),
    "Id" => String.t()
  }
  """
  @type insight_feedback() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ops_center_integration() :: %{
    "OptInStatus" => list(any())
  }
  """
  @type ops_center_integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_resource_cost() :: %{
    "Cost" => float(),
    "Count" => integer(),
    "State" => list(any()),
    "Type" => String.t(),
    "UnitCost" => float()
  }
  """
  @type service_resource_cost() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_collection() :: %{
    "CloudFormation" => cloud_formation_collection(),
    "Tags" => list(tag_collection()())
  }
  """
  @type resource_collection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proactive_anomaly_summary() :: %{
    "AnomalyReportedTimeRange" => anomaly_reported_time_range(),
    "AnomalyResources" => list(anomaly_resource()()),
    "AnomalyTimeRange" => anomaly_time_range(),
    "AssociatedInsightId" => String.t(),
    "Description" => String.t(),
    "Id" => String.t(),
    "Limit" => float(),
    "PredictionTimeRange" => prediction_time_range(),
    "ResourceCollection" => resource_collection(),
    "Severity" => list(any()),
    "SourceDetails" => anomaly_source_details(),
    "SourceMetadata" => anomaly_source_metadata(),
    "Status" => list(any()),
    "UpdateTime" => non_neg_integer()
  }
  """
  @type proactive_anomaly_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomalies_for_insight_request() :: %{
    optional("AccountId") => String.t(),
    optional("Filters") => list_anomalies_for_insight_filters(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("StartTimeRange") => start_time_range()
  }
  """
  @type list_anomalies_for_insight_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  account_health() :: %{
    "AccountId" => String.t(),
    "Insight" => account_insight_health()
  }
  """
  @type account_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_organization_health_request() :: %{
    optional("AccountIds") => list(String.t()()),
    optional("OrganizationalUnitIds") => list(String.t()())
  }
  """
  @type describe_organization_health_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recommendations_request() :: %{
    optional("AccountId") => String.t(),
    optional("Locale") => list(any()),
    optional("NextToken") => String.t(),
    required("InsightId") => String.t()
  }
  """
  @type list_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_resource_collection_health_request() :: %{
    optional("NextToken") => String.t()
  }
  """
  @type describe_resource_collection_health_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  monitored_resource_identifier() :: %{
    "LastUpdated" => non_neg_integer(),
    "MonitoredResourceName" => String.t(),
    "ResourceCollection" => resource_collection(),
    "ResourcePermission" => list(any()),
    "Type" => String.t()
  }
  """
  @type monitored_resource_identifier() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2020-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "devops-guru",
      global?: false,
      protocol: "rest-json",
      service_id: "DevOps Guru",
      signature_version: "v4",
      signing_name: "devops-guru",
      target_prefix: nil
    }
  end

  @doc """
  Adds a notification channel to DevOps Guru.

  A notification channel is used to notify you
  about important DevOps Guru events, such as when an insight is generated.

  If you use an Amazon SNS topic in another account, you must attach a policy to
  it that grants DevOps Guru permission
  to send it notifications. DevOps Guru adds the required policy on your behalf to
  send notifications using Amazon SNS in your account. DevOps Guru only supports
  standard SNS topics.
  For more information, see [Permissions for Amazon SNS
  topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html).

  If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key
  Management Service customer-managed key (CMK), then you must add permissions
  to the CMK. For more information, see [Permissions for Amazon Web Services KMS–encrypted Amazon SNS
  topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html).
  """
  @spec add_notification_channel(map(), add_notification_channel_request(), list()) ::
          {:ok, add_notification_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def add_notification_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes the insight along with the associated anomalies, events and
  recommendations.
  """
  @spec delete_insight(map(), String.t(), delete_insight_request(), list()) ::
          {:ok, delete_insight_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_insight(%Client{} = client, id, input, options \\ []) do
    url_path = "/insights/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the number of open reactive insights, the number of open proactive
  insights,
  and the number of metrics analyzed in your Amazon Web Services account.

  Use these numbers to gauge the
  health of operations in your Amazon Web Services account.
  """
  @spec describe_account_health(map(), list()) ::
          {:ok, describe_account_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_account_health(%Client{} = client, options \\ []) do
    url_path = "/accounts/health"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  For the time range passed in, returns the number of open reactive insight that
  were
  created, the number of open proactive insights that were created, and the Mean
  Time to Recover (MTTR) for all
  closed reactive insights.
  """
  @spec describe_account_overview(map(), describe_account_overview_request(), list()) ::
          {:ok, describe_account_overview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_account_overview(%Client{} = client, input, options \\ []) do
    url_path = "/accounts/overview"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns details about an anomaly that you specify using its ID.
  """
  @spec describe_anomaly(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_anomaly_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_anomaly(%Client{} = client, id, account_id \\ nil, options \\ []) do
    url_path = "/anomalies/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(account_id) do
        [{"AccountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the integration status of services that are integrated with DevOps Guru
  as Consumer
  via EventBridge.

  The one service that can be integrated with DevOps Guru is Amazon CodeGuru
  Profiler, which can produce proactive recommendations which can be stored and
  viewed in
  DevOps Guru.
  """
  @spec describe_event_sources_config(map(), describe_event_sources_config_request(), list()) ::
          {:ok, describe_event_sources_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_event_sources_config(%Client{} = client, input, options \\ []) do
    url_path = "/event-sources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the most recent feedback submitted in the current Amazon Web Services
  account and Region.
  """
  @spec describe_feedback(map(), describe_feedback_request(), list()) ::
          {:ok, describe_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/feedback"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns details about an insight that you specify using its ID.
  """
  @spec describe_insight(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_insight_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_insight(%Client{} = client, id, account_id \\ nil, options \\ []) do
    url_path = "/insights/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(account_id) do
        [{"AccountId", account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns active insights, predictive insights, and resource hours analyzed in
  last
  hour.
  """
  @spec describe_organization_health(map(), describe_organization_health_request(), list()) ::
          {:ok, describe_organization_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_organization_health(%Client{} = client, input, options \\ []) do
    url_path = "/organization/health"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns an overview of your organization's history based on the specified time
  range.

  The overview includes the total reactive and proactive insights.
  """
  @spec describe_organization_overview(map(), describe_organization_overview_request(), list()) ::
          {:ok, describe_organization_overview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_organization_overview(%Client{} = client, input, options \\ []) do
    url_path = "/organization/overview"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides an overview of your system's health.

  If additional member accounts are part
  of your organization, you can filter those accounts using the `AccountIds`
  field.
  """
  @spec describe_organization_resource_collection_health(
          map(),
          describe_organization_resource_collection_health_request(),
          list()
        ) ::
          {:ok, describe_organization_resource_collection_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_organization_resource_collection_health(%Client{} = client, input, options \\ []) do
    url_path = "/organization/health/resource-collection"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the number of open proactive insights, open reactive insights, and the
  Mean Time to Recover (MTTR)
  for all closed insights in resource collections in your account.

  You specify the type of
  Amazon Web Services resources collection. The two types of Amazon Web Services
  resource collections supported are Amazon Web Services CloudFormation stacks and
  Amazon Web Services resources that contain the same Amazon Web Services tag.
  DevOps Guru can be configured to analyze
  the Amazon Web Services resources that are defined in the stacks or that are
  tagged using the same tag *key*. You can specify up to 500 Amazon Web Services
  CloudFormation stacks.
  """
  @spec describe_resource_collection_health(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_resource_collection_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_resource_collection_health(
        %Client{} = client,
        resource_collection_type,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/health/resource-collection/#{AWS.Util.encode_uri(resource_collection_type)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the integration status of services that are integrated with DevOps Guru.

  The one service that can be integrated with DevOps Guru
  is Amazon Web Services Systems Manager, which can be used to create an OpsItem
  for each generated insight.
  """
  @spec describe_service_integration(map(), list()) ::
          {:ok, describe_service_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_service_integration(%Client{} = client, options \\ []) do
    url_path = "/service-integrations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon
  Web Services resources.

  For more information,
  see [Estimate your Amazon DevOps Guru
  costs](https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html)
  and
  [Amazon DevOps Guru pricing](http://aws.amazon.com/devops-guru/pricing/).
  """
  @spec get_cost_estimation(map(), String.t() | nil, list()) ::
          {:ok, get_cost_estimation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_cost_estimation(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/cost-estimation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns lists Amazon Web Services resources that are of the specified resource
  collection type.

  The two types of Amazon Web Services resource collections supported are Amazon
  Web Services CloudFormation stacks and
  Amazon Web Services resources that contain the same Amazon Web Services tag.
  DevOps Guru can be configured to analyze
  the Amazon Web Services resources that are defined in the stacks or that are
  tagged using the same tag *key*. You can specify up to 500 Amazon Web Services
  CloudFormation stacks.
  """
  @spec get_resource_collection(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_resource_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_resource_collection(
        %Client{} = client,
        resource_collection_type,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resource-collections/#{AWS.Util.encode_uri(resource_collection_type)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the anomalies that belong to an insight that you specify using
  its
  ID.
  """
  @spec list_anomalies_for_insight(
          map(),
          String.t(),
          list_anomalies_for_insight_request(),
          list()
        ) ::
          {:ok, list_anomalies_for_insight_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_anomalies_for_insight(%Client{} = client, insight_id, input, options \\ []) do
    url_path = "/anomalies/insight/#{AWS.Util.encode_uri(insight_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns the list of log groups that contain log anomalies.
  """
  @spec list_anomalous_log_groups(map(), list_anomalous_log_groups_request(), list()) ::
          {:ok, list_anomalous_log_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_anomalous_log_groups(%Client{} = client, input, options \\ []) do
    url_path = "/list-log-anomalies"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the events emitted by the resources that are evaluated by
  DevOps Guru.

  You can use filters to specify which events are returned.
  """
  @spec list_events(map(), list_events_request(), list()) ::
          {:ok, list_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_events(%Client{} = client, input, options \\ []) do
    url_path = "/events"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of insights in your Amazon Web Services account.

  You can specify which insights are
  returned by their start time and status (`ONGOING`, `CLOSED`, or
  `ANY`).
  """
  @spec list_insights(map(), list_insights_request(), list()) ::
          {:ok, list_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_insights(%Client{} = client, input, options \\ []) do
    url_path = "/insights"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns the list of all log groups that are being monitored and tagged by DevOps
  Guru.
  """
  @spec list_monitored_resources(map(), list_monitored_resources_request(), list()) ::
          {:ok, list_monitored_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_monitored_resources(%Client{} = client, input, options \\ []) do
    url_path = "/monitoredResources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of notification channels configured for DevOps Guru.

  Each notification
  channel is used to notify you when DevOps Guru generates an insight that
  contains information
  about how to improve your operations. The one
  supported notification channel is Amazon Simple Notification Service (Amazon
  SNS).
  """
  @spec list_notification_channels(map(), list_notification_channels_request(), list()) ::
          {:ok, list_notification_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_notification_channels(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of insights associated with the account or OU Id.
  """
  @spec list_organization_insights(map(), list_organization_insights_request(), list()) ::
          {:ok, list_organization_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_organization_insights(%Client{} = client, input, options \\ []) do
    url_path = "/organization/insights"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of a specified insight's recommendations.

  Each recommendation includes
  a list of related metrics and a list of related events.
  """
  @spec list_recommendations(map(), list_recommendations_request(), list()) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/recommendations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Collects customer feedback about the specified insight.
  """
  @spec put_feedback(map(), put_feedback_request(), list()) ::
          {:ok, put_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def put_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/feedback"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes a notification channel from DevOps Guru.

  A notification channel is used to notify
  you when DevOps Guru generates an insight that contains information about how to
  improve your
  operations.
  """
  @spec remove_notification_channel(
          map(),
          String.t(),
          remove_notification_channel_request(),
          list()
        ) ::
          {:ok, remove_notification_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def remove_notification_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of insights in your Amazon Web Services account.

  You can specify which insights are
  returned by their start time, one or more statuses (`ONGOING` or `CLOSED`), one
  or more severities
  (`LOW`, `MEDIUM`, and `HIGH`), and type
  (`REACTIVE` or `PROACTIVE`).

  Use the `Filters` parameter to specify status and severity search
  parameters. Use the `Type` parameter to specify `REACTIVE` or
  `PROACTIVE` in your search.
  """
  @spec search_insights(map(), search_insights_request(), list()) ::
          {:ok, search_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def search_insights(%Client{} = client, input, options \\ []) do
    url_path = "/insights/search"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of insights in your organization.

  You can specify which insights are
  returned by their start time, one or more statuses (`ONGOING`,
  `CLOSED`, and `CLOSED`), one or more severities
  (`LOW`, `MEDIUM`, and `HIGH`), and type
  (`REACTIVE` or `PROACTIVE`).

  Use the `Filters` parameter to specify status and severity search
  parameters. Use the `Type` parameter to specify `REACTIVE` or
  `PROACTIVE` in your search.
  """
  @spec search_organization_insights(map(), search_organization_insights_request(), list()) ::
          {:ok, search_organization_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def search_organization_insights(%Client{} = client, input, options \\ []) do
    url_path = "/organization/insights/search"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts the creation of an estimate of the monthly cost to analyze your Amazon
  Web Services
  resources.
  """
  @spec start_cost_estimation(map(), start_cost_estimation_request(), list()) ::
          {:ok, start_cost_estimation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def start_cost_estimation(%Client{} = client, input, options \\ []) do
    url_path = "/cost-estimation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables or disables integration with a service that can be integrated with
  DevOps Guru.

  The
  one service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler,
  which
  can produce proactive recommendations which can be stored and viewed in DevOps
  Guru.
  """
  @spec update_event_sources_config(map(), update_event_sources_config_request(), list()) ::
          {:ok, update_event_sources_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_event_sources_config(%Client{} = client, input, options \\ []) do
    url_path = "/event-sources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the collection of resources that DevOps Guru analyzes.

  The two types of Amazon Web Services resource collections supported are Amazon
  Web Services CloudFormation stacks and
  Amazon Web Services resources that contain the same Amazon Web Services tag.
  DevOps Guru can be configured to analyze
  the Amazon Web Services resources that are defined in the stacks or that are
  tagged using the same tag *key*. You can specify up to 500 Amazon Web Services
  CloudFormation stacks. This method also creates the IAM role required for
  you to use DevOps Guru.
  """
  @spec update_resource_collection(map(), update_resource_collection_request(), list()) ::
          {:ok, update_resource_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_resource_collection(%Client{} = client, input, options \\ []) do
    url_path = "/resource-collections"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables or disables integration with a service that can be integrated with
  DevOps Guru.

  The
  one service that can be integrated with DevOps Guru is Amazon Web Services
  Systems Manager, which can be used to create
  an OpsItem for each generated insight.
  """
  @spec update_service_integration(map(), update_service_integration_request(), list()) ::
          {:ok, update_service_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_service_integration(%Client{} = client, input, options \\ []) do
    url_path = "/service-integrations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
