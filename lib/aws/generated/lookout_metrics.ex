# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LookoutMetrics do
  @moduledoc """
  This is the *Amazon Lookout for Metrics API Reference*.

  For an introduction to the service
  with tutorials for getting started, visit [Amazon Lookout for Metrics Developer
  Guide](https://docs.aws.amazon.com/lookoutmetrics/latest/dev).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  get_data_quality_metrics_response() :: %{
    "AnomalyDetectorDataQualityMetricList" => list(anomaly_detector_data_quality_metric()())
  }
  """
  @type get_data_quality_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_detector_config_summary() :: %{
    "AnomalyDetectorFrequency" => list(any())
  }
  """
  @type anomaly_detector_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detected_csv_format_descriptor() :: %{
    "Charset" => detected_field(),
    "ContainsHeader" => detected_field(),
    "Delimiter" => detected_field(),
    "FileCompression" => detected_field(),
    "HeaderList" => detected_field(),
    "QuoteSymbol" => detected_field()
  }
  """
  @type detected_csv_format_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  activate_anomaly_detector_response() :: %{

  }
  """
  @type activate_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_feedback_request() :: %{
    required("AnomalyDetectorArn") => String.t(),
    required("AnomalyGroupTimeSeriesFeedback") => anomaly_group_time_series_feedback()
  }
  """
  @type put_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  inter_metric_impact_details() :: %{
    "AnomalyGroupId" => String.t(),
    "ContributionPercentage" => float(),
    "MetricName" => String.t(),
    "RelationshipType" => list(any())
  }
  """
  @type inter_metric_impact_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_metric_set_request() :: %{
    optional("DimensionFilterList") => list(metric_set_dimension_filter()()),
    optional("DimensionList") => list(String.t()()),
    optional("MetricList") => list(metric()()),
    optional("MetricSetDescription") => String.t(),
    optional("MetricSetFrequency") => list(any()),
    optional("MetricSource") => metric_source(),
    optional("Offset") => integer(),
    optional("TimestampColumn") => timestamp_column(),
    required("MetricSetArn") => String.t()
  }
  """
  @type update_metric_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("Tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dimension_contribution() :: %{
    "DimensionName" => String.t(),
    "DimensionValueContributionList" => list(dimension_value_contribution()())
  }
  """
  @type dimension_contribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_group_summaries_response() :: %{
    "AnomalyGroupStatistics" => anomaly_group_statistics(),
    "AnomalyGroupSummaryList" => list(anomaly_group_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_anomaly_group_summaries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detected_field() :: %{
    "Confidence" => list(any()),
    "Message" => String.t(),
    "Value" => attribute_value()
  }
  """
  @type detected_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_group() :: %{
    "AnomalyGroupId" => String.t(),
    "AnomalyGroupScore" => float(),
    "EndTime" => String.t(),
    "MetricLevelImpactList" => list(metric_level_impact()()),
    "PrimaryMetricName" => String.t(),
    "StartTime" => String.t()
  }
  """
  @type anomaly_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vpc_configuration() :: %{
    "SecurityGroupIdList" => list(String.t()()),
    "SubnetIdList" => list(String.t()())
  }
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_metric_sets_response() :: %{
    "MetricSetSummaryList" => list(metric_set_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_metric_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_alert_request() :: %{
    required("AlertArn") => String.t()
  }
  """
  @type describe_alert_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_group_time_series() :: %{
    "AnomalyGroupId" => String.t(),
    "TimeSeriesId" => String.t()
  }
  """
  @type anomaly_group_time_series() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metric_set_summary() :: %{
    "AnomalyDetectorArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "LastModificationTime" => non_neg_integer(),
    "MetricSetArn" => String.t(),
    "MetricSetDescription" => String.t(),
    "MetricSetName" => String.t(),
    "Tags" => map()
  }
  """
  @type metric_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_metric_sets_request() :: %{
    optional("AnomalyDetectorArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_metric_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deactivate_anomaly_detector_request() :: %{
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type deactivate_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metric() :: %{
    "AggregationFunction" => list(any()),
    "MetricName" => String.t(),
    "Namespace" => String.t()
  }
  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detected_file_format_descriptor() :: %{
    "CsvFormatDescriptor" => detected_csv_format_descriptor(),
    "JsonFormatDescriptor" => detected_json_format_descriptor()
  }
  """
  @type detected_file_format_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detected_json_format_descriptor() :: %{
    "Charset" => detected_field(),
    "FileCompression" => detected_field()
  }
  """
  @type detected_json_format_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_alerts_request() :: %{
    optional("AnomalyDetectorArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_alerts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metric_set_dimension_filter() :: %{
    "FilterList" => list(filter()()),
    "Name" => String.t()
  }
  """
  @type metric_set_dimension_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dimension_name_value() :: %{
    "DimensionName" => String.t(),
    "DimensionValue" => String.t()
  }
  """
  @type dimension_name_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detect_metric_set_config_request() :: %{
    required("AnomalyDetectorArn") => String.t(),
    required("AutoDetectionMetricSource") => auto_detection_metric_source()
  }
  """
  @type detect_metric_set_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_config() :: %{
    "BackTestConfiguration" => back_test_configuration(),
    "RoleArn" => String.t()
  }
  """
  @type cloud_watch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_feedback_response() :: %{

  }
  """
  @type put_feedback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_requests_exception() :: %{
    "Message" => String.t()
  }
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  execution_status() :: %{
    "FailureReason" => String.t(),
    "Status" => list(any()),
    "Timestamp" => String.t()
  }
  """
  @type execution_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_group_time_series_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AnomalyDetectorArn") => String.t(),
    required("AnomalyGroupId") => String.t(),
    required("MetricName") => String.t()
  }
  """
  @type list_anomaly_group_time_series_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  auto_detection_s3_source_config() :: %{
    "HistoricalDataPathList" => list(String.t()()),
    "TemplatedPathList" => list(String.t()())
  }
  """
  @type auto_detection_s3_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  json_format_descriptor() :: %{
    "Charset" => String.t(),
    "FileCompression" => list(any())
  }
  """
  @type json_format_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_group_time_series_feedback() :: %{
    "AnomalyGroupId" => String.t(),
    "IsAnomaly" => boolean(),
    "TimeSeriesId" => String.t()
  }
  """
  @type anomaly_group_time_series_feedback() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_sample_data_response() :: %{
    "HeaderValues" => list(String.t()()),
    "SampleRows" => list(list(String.t()())())
  }
  """
  @type get_sample_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_sample_data_request() :: %{
    optional("S3SourceConfig") => sample_data_s3_source_config()
  }
  """
  @type get_sample_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  redshift_source_config() :: %{
    "ClusterIdentifier" => String.t(),
    "DatabaseHost" => String.t(),
    "DatabaseName" => String.t(),
    "DatabasePort" => integer(),
    "RoleArn" => String.t(),
    "SecretManagerArn" => String.t(),
    "TableName" => String.t(),
    "VpcConfiguration" => vpc_configuration()
  }
  """
  @type redshift_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_metric_set_request() :: %{
    required("MetricSetArn") => String.t()
  }
  """
  @type describe_metric_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_group_related_metrics_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("RelationshipTypeFilter") => list(any()),
    required("AnomalyDetectorArn") => String.t(),
    required("AnomalyGroupId") => String.t()
  }
  """
  @type list_anomaly_group_related_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_detector_data_quality_metric() :: %{
    "MetricSetDataQualityMetricList" => list(metric_set_data_quality_metric()()),
    "StartTimestamp" => non_neg_integer()
  }
  """
  @type anomaly_detector_data_quality_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  timestamp_column() :: %{
    "ColumnFormat" => String.t(),
    "ColumnName" => String.t()
  }
  """
  @type timestamp_column() :: %{String.t() => any()}

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
  back_test_configuration() :: %{
    "RunBackTestMode" => boolean()
  }
  """
  @type back_test_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  back_test_anomaly_detector_response() :: %{

  }
  """
  @type back_test_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_alert_response() :: %{
    "Alert" => alert()
  }
  """
  @type describe_alert_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metric_set_data_quality_metric() :: %{
    "DataQualityMetricList" => list(data_quality_metric()()),
    "MetricSetArn" => String.t()
  }
  """
  @type metric_set_data_quality_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metric_source() :: %{
    "AppFlowConfig" => app_flow_config(),
    "AthenaSourceConfig" => athena_source_config(),
    "CloudWatchConfig" => cloud_watch_config(),
    "RDSSourceConfig" => rds_source_config(),
    "RedshiftSourceConfig" => redshift_source_config(),
    "S3SourceConfig" => s3_source_config()
  }
  """
  @type metric_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_anomaly_detector_response() :: %{
    "AnomalyDetectorArn" => String.t(),
    "AnomalyDetectorConfig" => anomaly_detector_config_summary(),
    "AnomalyDetectorDescription" => String.t(),
    "AnomalyDetectorName" => String.t(),
    "CreationTime" => non_neg_integer(),
    "FailureReason" => String.t(),
    "FailureType" => list(any()),
    "KmsKeyArn" => String.t(),
    "LastModificationTime" => non_neg_integer(),
    "Status" => list(any())
  }
  """
  @type describe_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  csv_format_descriptor() :: %{
    "Charset" => String.t(),
    "ContainsHeader" => boolean(),
    "Delimiter" => String.t(),
    "FileCompression" => list(any()),
    "HeaderList" => list(String.t()()),
    "QuoteSymbol" => String.t()
  }
  """
  @type csv_format_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  file_format_descriptor() :: %{
    "CsvFormatDescriptor" => csv_format_descriptor(),
    "JsonFormatDescriptor" => json_format_descriptor()
  }
  """
  @type file_format_descriptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "Message" => String.t(),
    "QuotaCode" => String.t(),
    "ResourceId" => String.t(),
    "ResourceType" => String.t(),
    "ServiceCode" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_anomaly_detector_response() :: %{

  }
  """
  @type delete_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sample_data_s3_source_config() :: %{
    "FileFormatDescriptor" => file_format_descriptor(),
    "HistoricalDataPathList" => list(String.t()()),
    "RoleArn" => String.t(),
    "TemplatedPathList" => list(String.t()())
  }
  """
  @type sample_data_s3_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  app_flow_config() :: %{
    "FlowName" => String.t(),
    "RoleArn" => String.t()
  }
  """
  @type app_flow_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  time_series() :: %{
    "DimensionList" => list(dimension_name_value()()),
    "MetricValueList" => list(float()()),
    "TimeSeriesId" => String.t()
  }
  """
  @type time_series() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  activate_anomaly_detector_request() :: %{
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type activate_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  alert_summary() :: %{
    "AlertArn" => String.t(),
    "AlertName" => String.t(),
    "AlertSensitivityThreshold" => integer(),
    "AlertStatus" => list(any()),
    "AlertType" => list(any()),
    "AnomalyDetectorArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "LastModificationTime" => non_neg_integer(),
    "Tags" => map()
  }
  """
  @type alert_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detected_s3_source_config() :: %{
    "FileFormatDescriptor" => detected_file_format_descriptor()
  }
  """
  @type detected_s3_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_alert_request() :: %{
    required("AlertArn") => String.t()
  }
  """
  @type delete_alert_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_alert_response() :: %{
    "AlertArn" => String.t()
  }
  """
  @type create_alert_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_group_summaries_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AnomalyDetectorArn") => String.t(),
    required("SensitivityThreshold") => integer()
  }
  """
  @type list_anomaly_group_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  itemized_metric_stats() :: %{
    "MetricName" => String.t(),
    "OccurrenceCount" => integer()
  }
  """
  @type itemized_metric_stats() :: %{String.t() => any()}

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
  create_anomaly_detector_response() :: %{
    "AnomalyDetectorArn" => String.t()
  }
  """
  @type create_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_value() :: %{
    "B" => String.t(),
    "BS" => list(String.t()()),
    "N" => String.t(),
    "NS" => list(String.t()()),
    "S" => String.t(),
    "SS" => list(String.t()())
  }
  """
  @type attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_alert_request() :: %{
    optional("AlertDescription") => String.t(),
    optional("AlertFilters") => alert_filters(),
    optional("AlertSensitivityThreshold") => integer(),
    optional("Tags") => map(),
    required("Action") => action(),
    required("AlertName") => String.t(),
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type create_alert_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  filter() :: %{
    "DimensionValue" => String.t(),
    "FilterOperation" => list(any())
  }
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dimension_value_contribution() :: %{
    "ContributionScore" => float(),
    "DimensionValue" => String.t()
  }
  """
  @type dimension_value_contribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_source_config() :: %{
    "FileFormatDescriptor" => file_format_descriptor(),
    "HistoricalDataPathList" => list(String.t()()),
    "RoleArn" => String.t(),
    "TemplatedPathList" => list(String.t()())
  }
  """
  @type s3_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_anomaly_group_request() :: %{
    required("AnomalyDetectorArn") => String.t(),
    required("AnomalyGroupId") => String.t()
  }
  """
  @type get_anomaly_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_feedback_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AnomalyDetectorArn") => String.t(),
    required("AnomalyGroupTimeSeriesFeedback") => anomaly_group_time_series()
  }
  """
  @type get_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_group_related_metrics_response() :: %{
    "InterMetricImpactList" => list(inter_metric_impact_details()()),
    "NextToken" => String.t()
  }
  """
  @type list_anomaly_group_related_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  athena_source_config() :: %{
    "BackTestConfiguration" => back_test_configuration(),
    "DataCatalog" => String.t(),
    "DatabaseName" => String.t(),
    "RoleArn" => String.t(),
    "S3ResultsPath" => String.t(),
    "TableName" => String.t(),
    "WorkGroupName" => String.t()
  }
  """
  @type athena_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_detector_summary() :: %{
    "AnomalyDetectorArn" => String.t(),
    "AnomalyDetectorDescription" => String.t(),
    "AnomalyDetectorName" => String.t(),
    "CreationTime" => non_neg_integer(),
    "LastModificationTime" => non_neg_integer(),
    "Status" => list(any()),
    "Tags" => map()
  }
  """
  @type anomaly_detector_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rds_source_config() :: %{
    "DBInstanceIdentifier" => String.t(),
    "DatabaseHost" => String.t(),
    "DatabaseName" => String.t(),
    "DatabasePort" => integer(),
    "RoleArn" => String.t(),
    "SecretManagerArn" => String.t(),
    "TableName" => String.t(),
    "VpcConfiguration" => vpc_configuration()
  }
  """
  @type rds_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  auto_detection_metric_source() :: %{
    "S3SourceConfig" => auto_detection_s3_source_config()
  }
  """
  @type auto_detection_metric_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  action() :: %{
    "LambdaConfiguration" => lambda_configuration(),
    "SNSConfiguration" => s_n_s_configuration()
  }
  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_group_time_series_response() :: %{
    "AnomalyGroupId" => String.t(),
    "MetricName" => String.t(),
    "NextToken" => String.t(),
    "TimeSeriesList" => list(time_series()()),
    "TimestampList" => list(String.t()())
  }
  """
  @type list_anomaly_group_time_series_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_anomaly_detection_executions_response() :: %{
    "ExecutionList" => list(execution_status()()),
    "NextToken" => String.t()
  }
  """
  @type describe_anomaly_detection_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_metric_set_response() :: %{
    "MetricSetArn" => String.t()
  }
  """
  @type update_metric_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lambda_configuration() :: %{
    "LambdaArn" => String.t(),
    "RoleArn" => String.t()
  }
  """
  @type lambda_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s_n_s_configuration() :: %{
    "RoleArn" => String.t(),
    "SnsFormat" => list(any()),
    "SnsTopicArn" => String.t()
  }
  """
  @type s_n_s_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_feedback_response() :: %{
    "AnomalyGroupTimeSeriesFeedback" => list(time_series_feedback()()),
    "NextToken" => String.t()
  }
  """
  @type get_feedback_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_anomaly_group_response() :: %{
    "AnomalyGroup" => anomaly_group()
  }
  """
  @type get_anomaly_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_alert_response() :: %{

  }
  """
  @type delete_alert_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_metric_set_response() :: %{
    "AnomalyDetectorArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "DimensionFilterList" => list(metric_set_dimension_filter()()),
    "DimensionList" => list(String.t()()),
    "LastModificationTime" => non_neg_integer(),
    "MetricList" => list(metric()()),
    "MetricSetArn" => String.t(),
    "MetricSetDescription" => String.t(),
    "MetricSetFrequency" => list(any()),
    "MetricSetName" => String.t(),
    "MetricSource" => metric_source(),
    "Offset" => integer(),
    "TimestampColumn" => timestamp_column(),
    "Timezone" => String.t()
  }
  """
  @type describe_metric_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  contribution_matrix() :: %{
    "DimensionContributionList" => list(dimension_contribution()())
  }
  """
  @type contribution_matrix() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detected_metric_set_config() :: %{
    "MetricSetFrequency" => detected_field(),
    "MetricSource" => detected_metric_source(),
    "Offset" => detected_field()
  }
  """
  @type detected_metric_set_config() :: %{String.t() => any()}

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
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_detectors_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_anomaly_detectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_anomaly_detector_request() :: %{
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type delete_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  alert() :: %{
    "Action" => action(),
    "AlertArn" => String.t(),
    "AlertDescription" => String.t(),
    "AlertFilters" => alert_filters(),
    "AlertName" => String.t(),
    "AlertSensitivityThreshold" => integer(),
    "AlertStatus" => list(any()),
    "AlertType" => list(any()),
    "AnomalyDetectorArn" => String.t(),
    "CreationTime" => non_neg_integer(),
    "LastModificationTime" => non_neg_integer()
  }
  """
  @type alert() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_metric_set_response() :: %{
    "MetricSetArn" => String.t()
  }
  """
  @type create_metric_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_data_quality_metrics_request() :: %{
    optional("MetricSetArn") => String.t(),
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type get_data_quality_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  alert_filters() :: %{
    "DimensionFilterList" => list(dimension_filter()()),
    "MetricList" => list(String.t()())
  }
  """
  @type alert_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detected_metric_source() :: %{
    "S3SourceConfig" => detected_s3_source_config()
  }
  """
  @type detected_metric_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_anomaly_detector_request() :: %{
    optional("AnomalyDetectorConfig") => anomaly_detector_config(),
    optional("AnomalyDetectorDescription") => String.t(),
    optional("KmsKeyArn") => String.t(),
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type update_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_anomaly_detection_executions_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("Timestamp") => String.t(),
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type describe_anomaly_detection_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_alerts_response() :: %{
    "AlertSummaryList" => list(alert_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_alerts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_group_summary() :: %{
    "AnomalyGroupId" => String.t(),
    "AnomalyGroupScore" => float(),
    "EndTime" => String.t(),
    "PrimaryMetricName" => String.t(),
    "StartTime" => String.t()
  }
  """
  @type anomaly_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_anomaly_detectors_response() :: %{
    "AnomalyDetectorSummaryList" => list(anomaly_detector_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_anomaly_detectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  time_series_feedback() :: %{
    "IsAnomaly" => boolean(),
    "TimeSeriesId" => String.t()
  }
  """
  @type time_series_feedback() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_group_statistics() :: %{
    "EvaluationStartDate" => String.t(),
    "ItemizedMetricStatsList" => list(itemized_metric_stats()()),
    "TotalCount" => integer()
  }
  """
  @type anomaly_group_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_alert_response() :: %{
    "AlertArn" => String.t()
  }
  """
  @type update_alert_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_alert_request() :: %{
    optional("Action") => action(),
    optional("AlertDescription") => String.t(),
    optional("AlertFilters") => alert_filters(),
    optional("AlertSensitivityThreshold") => integer(),
    required("AlertArn") => String.t()
  }
  """
  @type update_alert_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  back_test_anomaly_detector_request() :: %{
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type back_test_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metric_level_impact() :: %{
    "ContributionMatrix" => contribution_matrix(),
    "MetricName" => String.t(),
    "NumTimeSeries" => integer()
  }
  """
  @type metric_level_impact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dimension_filter() :: %{
    "DimensionName" => String.t(),
    "DimensionValueList" => list(String.t()())
  }
  """
  @type dimension_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_anomaly_detector_request() :: %{
    optional("AnomalyDetectorDescription") => String.t(),
    optional("KmsKeyArn") => String.t(),
    optional("Tags") => map(),
    required("AnomalyDetectorConfig") => anomaly_detector_config(),
    required("AnomalyDetectorName") => String.t()
  }
  """
  @type create_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deactivate_anomaly_detector_response() :: %{

  }
  """
  @type deactivate_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  anomaly_detector_config() :: %{
    "AnomalyDetectorFrequency" => list(any())
  }
  """
  @type anomaly_detector_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_metric_set_request() :: %{
    optional("DimensionFilterList") => list(metric_set_dimension_filter()()),
    optional("DimensionList") => list(String.t()()),
    optional("MetricSetDescription") => String.t(),
    optional("MetricSetFrequency") => list(any()),
    optional("Offset") => integer(),
    optional("Tags") => map(),
    optional("TimestampColumn") => timestamp_column(),
    optional("Timezone") => String.t(),
    required("AnomalyDetectorArn") => String.t(),
    required("MetricList") => list(metric()()),
    required("MetricSetName") => String.t(),
    required("MetricSource") => metric_source()
  }
  """
  @type create_metric_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detect_metric_set_config_response() :: %{
    "DetectedMetricSetConfig" => detected_metric_set_config()
  }
  """
  @type detect_metric_set_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_anomaly_detector_request() :: %{
    required("AnomalyDetectorArn") => String.t()
  }
  """
  @type describe_anomaly_detector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_anomaly_detector_response() :: %{
    "AnomalyDetectorArn" => String.t()
  }
  """
  @type update_anomaly_detector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_quality_metric() :: %{
    "MetricDescription" => String.t(),
    "MetricType" => list(any()),
    "MetricValue" => float(),
    "RelatedColumnName" => String.t()
  }
  """
  @type data_quality_metric() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lookoutmetrics",
      global?: false,
      protocol: "rest-json",
      service_id: "LookoutMetrics",
      signature_version: "v4",
      signing_name: "lookoutmetrics",
      target_prefix: nil
    }
  end

  @doc """
  Activates an anomaly detector.
  """
  @spec activate_anomaly_detector(map(), activate_anomaly_detector_request(), list()) ::
          {:ok, activate_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def activate_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/ActivateAnomalyDetector"
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
  Runs a backtest for anomaly detection for the specified resource.
  """
  @spec back_test_anomaly_detector(map(), back_test_anomaly_detector_request(), list()) ::
          {:ok, back_test_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def back_test_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/BackTestAnomalyDetector"
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
  Creates an alert for an anomaly detector.
  """
  @spec create_alert(map(), create_alert_request(), list()) ::
          {:ok, create_alert_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def create_alert(%Client{} = client, input, options \\ []) do
    url_path = "/CreateAlert"
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
  Creates an anomaly detector.
  """
  @spec create_anomaly_detector(map(), create_anomaly_detector_request(), list()) ::
          {:ok, create_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def create_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/CreateAnomalyDetector"
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
  Creates a dataset.
  """
  @spec create_metric_set(map(), create_metric_set_request(), list()) ::
          {:ok, create_metric_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def create_metric_set(%Client{} = client, input, options \\ []) do
    url_path = "/CreateMetricSet"
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
  Deactivates an anomaly detector.
  """
  @spec deactivate_anomaly_detector(map(), deactivate_anomaly_detector_request(), list()) ::
          {:ok, deactivate_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def deactivate_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/DeactivateAnomalyDetector"
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
  Deletes an alert.
  """
  @spec delete_alert(map(), delete_alert_request(), list()) ::
          {:ok, delete_alert_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def delete_alert(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteAlert"
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
  Deletes a detector.

  Deleting an anomaly detector will delete all of its corresponding resources
  including any
  configured datasets and alerts.
  """
  @spec delete_anomaly_detector(map(), delete_anomaly_detector_request(), list()) ::
          {:ok, delete_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def delete_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteAnomalyDetector"
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
  Describes an alert.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource
  immediately after creating or modifying it, use retries to allow time for the
  write operation to complete.
  """
  @spec describe_alert(map(), describe_alert_request(), list()) ::
          {:ok, describe_alert_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def describe_alert(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeAlert"
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
  Returns information about the status of the specified anomaly detection jobs.
  """
  @spec describe_anomaly_detection_executions(
          map(),
          describe_anomaly_detection_executions_request(),
          list()
        ) ::
          {:ok, describe_anomaly_detection_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def describe_anomaly_detection_executions(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeAnomalyDetectionExecutions"
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
  Describes a detector.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource
  immediately after creating or modifying it, use retries to allow time for the
  write operation to complete.
  """
  @spec describe_anomaly_detector(map(), describe_anomaly_detector_request(), list()) ::
          {:ok, describe_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def describe_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeAnomalyDetector"
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
  Describes a dataset.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource
  immediately after creating or modifying it, use retries to allow time for the
  write operation to complete.
  """
  @spec describe_metric_set(map(), describe_metric_set_request(), list()) ::
          {:ok, describe_metric_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def describe_metric_set(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeMetricSet"
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
  Detects an Amazon S3 dataset's file format, interval, and offset.
  """
  @spec detect_metric_set_config(map(), detect_metric_set_config_request(), list()) ::
          {:ok, detect_metric_set_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def detect_metric_set_config(%Client{} = client, input, options \\ []) do
    url_path = "/DetectMetricSetConfig"
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
  Returns details about a group of anomalous metrics.
  """
  @spec get_anomaly_group(map(), get_anomaly_group_request(), list()) ::
          {:ok, get_anomaly_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def get_anomaly_group(%Client{} = client, input, options \\ []) do
    url_path = "/GetAnomalyGroup"
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
  Returns details about the requested data quality metrics.
  """
  @spec get_data_quality_metrics(map(), get_data_quality_metrics_request(), list()) ::
          {:ok, get_data_quality_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def get_data_quality_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/GetDataQualityMetrics"
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
  Get feedback for an anomaly group.
  """
  @spec get_feedback(map(), get_feedback_request(), list()) ::
          {:ok, get_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def get_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/GetFeedback"
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
  Returns a selection of sample records from an Amazon S3 datasource.
  """
  @spec get_sample_data(map(), get_sample_data_request(), list()) ::
          {:ok, get_sample_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def get_sample_data(%Client{} = client, input, options \\ []) do
    url_path = "/GetSampleData"
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
  Lists the alerts attached to a detector.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource
  immediately after creating or modifying it, use retries to allow time for the
  write operation to complete.
  """
  @spec list_alerts(map(), list_alerts_request(), list()) ::
          {:ok, list_alerts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def list_alerts(%Client{} = client, input, options \\ []) do
    url_path = "/ListAlerts"
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
  Lists the detectors in the current AWS Region.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource
  immediately after creating or modifying it, use retries to allow time for the
  write operation to complete.
  """
  @spec list_anomaly_detectors(map(), list_anomaly_detectors_request(), list()) ::
          {:ok, list_anomaly_detectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def list_anomaly_detectors(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyDetectors"
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
  Returns a list of measures that are potential causes or effects of an
  anomaly group.
  """
  @spec list_anomaly_group_related_metrics(
          map(),
          list_anomaly_group_related_metrics_request(),
          list()
        ) ::
          {:ok, list_anomaly_group_related_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def list_anomaly_group_related_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyGroupRelatedMetrics"
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
  Returns a list of anomaly groups.
  """
  @spec list_anomaly_group_summaries(map(), list_anomaly_group_summaries_request(), list()) ::
          {:ok, list_anomaly_group_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def list_anomaly_group_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyGroupSummaries"
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
  Gets a list of anomalous metrics for a measure in an anomaly group.
  """
  @spec list_anomaly_group_time_series(map(), list_anomaly_group_time_series_request(), list()) ::
          {:ok, list_anomaly_group_time_series_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def list_anomaly_group_time_series(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyGroupTimeSeries"
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
  Lists the datasets in the current AWS Region.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource
  immediately after creating or modifying it, use retries to allow time for the
  write operation to complete.
  """
  @spec list_metric_sets(map(), list_metric_sets_request(), list()) ::
          {:ok, list_metric_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def list_metric_sets(%Client{} = client, input, options \\ []) do
    url_path = "/ListMetricSets"
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
  Gets a list of
  [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
  for a detector, dataset, or alert.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Add feedback for an anomalous metric.
  """
  @spec put_feedback(map(), put_feedback_request(), list()) ::
          {:ok, put_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def put_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/PutFeedback"
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
  Adds
  [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
  to a detector, dataset, or alert.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes
  [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
  from a detector, dataset, or alert.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Make changes to an existing alert.
  """
  @spec update_alert(map(), update_alert_request(), list()) ::
          {:ok, update_alert_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def update_alert(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateAlert"
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
  Updates a detector.

  After activation, you can only change a detector's ingestion delay and
  description.
  """
  @spec update_anomaly_detector(map(), update_anomaly_detector_request(), list()) ::
          {:ok, update_anomaly_detector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def update_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateAnomalyDetector"
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
  Updates a dataset.
  """
  @spec update_metric_set(map(), update_metric_set_request(), list()) ::
          {:ok, update_metric_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def update_metric_set(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateMetricSet"
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
end
