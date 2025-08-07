# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamQuery do
  @moduledoc """
  Amazon Timestream Query
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_settings_request() :: %{}
      
  """
  @type describe_account_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      scheduled_query_description() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "ErrorReportConfiguration" => error_report_configuration(),
        "KmsKeyId" => String.t() | atom(),
        "LastRunSummary" => scheduled_query_run_summary(),
        "Name" => String.t() | atom(),
        "NextInvocationTime" => non_neg_integer(),
        "NotificationConfiguration" => notification_configuration(),
        "PreviousInvocationTime" => non_neg_integer(),
        "QueryString" => String.t() | atom(),
        "RecentlyFailedRuns" => list(scheduled_query_run_summary()),
        "ScheduleConfiguration" => schedule_configuration(),
        "ScheduledQueryExecutionRoleArn" => String.t() | atom(),
        "State" => list(any()),
        "TargetConfiguration" => target_configuration()
      }
      
  """
  @type scheduled_query_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_insights() :: %{
        "Mode" => list(any())
      }
      
  """
  @type query_insights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_scheduled_query_request() :: %{
        required("ScheduledQueryArn") => String.t() | atom()
      }
      
  """
  @type delete_scheduled_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_compute_request() :: %{
        "ComputeMode" => list(any()),
        "ProvisionedCapacity" => provisioned_capacity_request()
      }
      
  """
  @type query_compute_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_status() :: %{
        "CumulativeBytesMetered" => float(),
        "CumulativeBytesScanned" => float(),
        "ProgressPercentage" => float()
      }
      
  """
  @type query_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      select_column() :: %{
        "Aliased" => boolean(),
        "DatabaseName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "TableName" => String.t() | atom(),
        "Type" => type()
      }
      
  """
  @type select_column() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_scheduled_query_response() :: %{
        "Arn" => String.t() | atom()
      }
      
  """
  @type create_scheduled_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      multi_measure_attribute_mapping() :: %{
        "MeasureValueType" => list(any()),
        "SourceColumn" => String.t() | atom(),
        "TargetMultiMeasureAttributeName" => String.t() | atom()
      }
      
  """
  @type multi_measure_attribute_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_account_settings_response() :: %{
        "MaxQueryTCU" => integer(),
        "QueryCompute" => query_compute_response(),
        "QueryPricingModel" => list(any())
      }
      
  """
  @type update_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parameter_mapping() :: %{
        "Name" => String.t() | atom(),
        "Type" => type()
      }
      
  """
  @type parameter_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_endpoint_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datum() :: %{
        "ArrayValue" => list(datum()),
        "NullValue" => boolean(),
        "RowValue" => row(),
        "ScalarValue" => String.t() | atom(),
        "TimeSeriesValue" => list(time_series_data_point())
      }
      
  """
  @type datum() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_response() :: %{
        "Endpoints" => list(endpoint())
      }
      
  """
  @type describe_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_report_location() :: %{
        "S3ReportLocation" => s3_report_location()
      }
      
  """
  @type error_report_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_query_run_summary() :: %{
        "ErrorReportLocation" => error_report_location(),
        "ExecutionStats" => execution_stats(),
        "FailureReason" => String.t() | atom(),
        "InvocationTime" => non_neg_integer(),
        "QueryInsightsResponse" => scheduled_query_insights_response(),
        "RunStatus" => list(any()),
        "TriggerTime" => non_neg_integer()
      }
      
  """
  @type scheduled_query_run_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_scheduled_queries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_scheduled_queries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_scheduled_query_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TargetConfiguration") => target_configuration(),
        required("ErrorReportConfiguration") => error_report_configuration(),
        required("Name") => String.t() | atom(),
        required("NotificationConfiguration") => notification_configuration(),
        required("QueryString") => String.t() | atom(),
        required("ScheduleConfiguration") => schedule_configuration(),
        required("ScheduledQueryExecutionRoleArn") => String.t() | atom()
      }
      
  """
  @type create_scheduled_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_query_response() :: %{
        "ScheduledQuery" => scheduled_query_description()
      }
      
  """
  @type describe_scheduled_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_query_response() :: %{
        "CancellationMessage" => String.t() | atom()
      }
      
  """
  @type cancel_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_query_insights_response() :: %{
        "OutputBytes" => float(),
        "OutputRows" => float(),
        "QuerySpatialCoverage" => query_spatial_coverage(),
        "QueryTableCount" => float(),
        "QueryTemporalRange" => query_temporal_range()
      }
      
  """
  @type scheduled_query_insights_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_temporal_range_max() :: %{
        "TableArn" => String.t() | atom(),
        "Value" => float()
      }
      
  """
  @type query_temporal_range_max() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_query() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "ErrorReportConfiguration" => error_report_configuration(),
        "LastRunStatus" => list(any()),
        "Name" => String.t() | atom(),
        "NextInvocationTime" => non_neg_integer(),
        "PreviousInvocationTime" => non_neg_integer(),
        "State" => list(any()),
        "TargetDestination" => target_destination()
      }
      
  """
  @type scheduled_query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_settings_notification_configuration() :: %{
        "RoleArn" => String.t() | atom(),
        "SnsConfiguration" => sns_configuration()
      }
      
  """
  @type account_settings_notification_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_request() :: %{}
      
  """
  @type describe_endpoints_request() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ScheduledQueryArn" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_query_request() :: %{
        required("QueryId") => String.t() | atom()
      }
      
  """
  @type cancel_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      last_update() :: %{
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "TargetQueryTCU" => integer()
      }
      
  """
  @type last_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_response() :: %{
        "ColumnInfo" => list(column_info()),
        "NextToken" => String.t() | atom(),
        "QueryId" => String.t() | atom(),
        "QueryInsightsResponse" => query_insights_response(),
        "QueryStatus" => query_status(),
        "Rows" => list(row())
      }
      
  """
  @type query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      row() :: %{
        "Data" => list(datum())
      }
      
  """
  @type row() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_series_data_point() :: %{
        "Time" => String.t() | atom(),
        "Value" => datum()
      }
      
  """
  @type time_series_data_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_spatial_coverage_max() :: %{
        "PartitionKey" => list(String.t() | atom()),
        "TableArn" => String.t() | atom(),
        "Value" => float()
      }
      
  """
  @type query_spatial_coverage_max() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      prepare_query_request() :: %{
        optional("ValidateOnly") => boolean(),
        required("QueryString") => String.t() | atom()
      }
      
  """
  @type prepare_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_account_settings_request() :: %{
        optional("MaxQueryTCU") => integer(),
        optional("QueryCompute") => query_compute_request(),
        optional("QueryPricingModel") => list(any())
      }
      
  """
  @type update_account_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_scheduled_query_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("QueryInsights") => scheduled_query_insights(),
        required("InvocationTime") => non_neg_integer(),
        required("ScheduledQueryArn") => String.t() | atom()
      }
      
  """
  @type execute_scheduled_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      timestream_configuration() :: %{
        "DatabaseName" => String.t() | atom(),
        "DimensionMappings" => list(dimension_mapping()),
        "MeasureNameColumn" => String.t() | atom(),
        "MixedMeasureMappings" => list(mixed_measure_mapping()),
        "MultiMeasureMappings" => multi_measure_mappings(),
        "TableName" => String.t() | atom(),
        "TimeColumn" => String.t() | atom()
      }
      
  """
  @type timestream_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_destination() :: %{
        "TimestreamDestination" => timestream_destination()
      }
      
  """
  @type target_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "SnsConfiguration" => sns_configuration()
      }
      
  """
  @type notification_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_report_configuration() :: %{
        "S3Configuration" => s3_configuration()
      }
      
  """
  @type error_report_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t() | atom(),
        "CachePeriodInMinutes" => float()
      }
      
  """
  @type endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_temporal_range() :: %{
        "Max" => query_temporal_range_max()
      }
      
  """
  @type query_temporal_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_scheduled_query_request() :: %{
        required("ScheduledQueryArn") => String.t() | atom(),
        required("State") => list(any())
      }
      
  """
  @type update_scheduled_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      multi_measure_mappings() :: %{
        "MultiMeasureAttributeMappings" => list(multi_measure_attribute_mapping()),
        "TargetMultiMeasureName" => String.t() | atom()
      }
      
  """
  @type multi_measure_mappings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      timestream_destination() :: %{
        "DatabaseName" => String.t() | atom(),
        "TableName" => String.t() | atom()
      }
      
  """
  @type timestream_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_scheduled_queries_response() :: %{
        "NextToken" => String.t() | atom(),
        "ScheduledQueries" => list(scheduled_query())
      }
      
  """
  @type list_scheduled_queries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_scheduled_query_request() :: %{
        required("ScheduledQueryArn") => String.t() | atom()
      }
      
  """
  @type describe_scheduled_query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schedule_configuration() :: %{
        "ScheduleExpression" => String.t() | atom()
      }
      
  """
  @type schedule_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_insights_response() :: %{
        "OutputBytes" => float(),
        "OutputRows" => float(),
        "QuerySpatialCoverage" => query_spatial_coverage(),
        "QueryTableCount" => float(),
        "QueryTemporalRange" => query_temporal_range(),
        "UnloadPartitionCount" => float(),
        "UnloadWrittenBytes" => float(),
        "UnloadWrittenRows" => float()
      }
      
  """
  @type query_insights_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_account_settings_response() :: %{
        "MaxQueryTCU" => integer(),
        "QueryCompute" => query_compute_response(),
        "QueryPricingModel" => list(any())
      }
      
  """
  @type describe_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      type() :: %{
        "ArrayColumnInfo" => column_info(),
        "RowColumnInfo" => list(column_info()),
        "ScalarType" => list(any()),
        "TimeSeriesMeasureValueColumnInfo" => column_info()
      }
      
  """
  @type type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "BucketName" => String.t() | atom(),
        "EncryptionOption" => list(any()),
        "ObjectKeyPrefix" => String.t() | atom()
      }
      
  """
  @type s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mixed_measure_mapping() :: %{
        "MeasureName" => String.t() | atom(),
        "MeasureValueType" => list(any()),
        "MultiMeasureAttributeMappings" => list(multi_measure_attribute_mapping()),
        "SourceColumn" => String.t() | atom(),
        "TargetMeasureName" => String.t() | atom()
      }
      
  """
  @type mixed_measure_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      prepare_query_response() :: %{
        "Columns" => list(select_column()),
        "Parameters" => list(parameter_mapping()),
        "QueryString" => String.t() | atom()
      }
      
  """
  @type prepare_query_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_configuration() :: %{
        "TimestreamConfiguration" => timestream_configuration()
      }
      
  """
  @type target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("MaxRows") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("QueryInsights") => query_insights(),
        required("QueryString") => String.t() | atom()
      }
      
  """
  @type query_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_compute_response() :: %{
        "ComputeMode" => list(any()),
        "ProvisionedCapacity" => provisioned_capacity_response()
      }
      
  """
  @type query_compute_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_execution_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type query_execution_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column_info() :: %{
        "Name" => String.t() | atom(),
        "Type" => type()
      }
      
  """
  @type column_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provisioned_capacity_request() :: %{
        "NotificationConfiguration" => account_settings_notification_configuration(),
        "TargetQueryTCU" => integer()
      }
      
  """
  @type provisioned_capacity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_spatial_coverage() :: %{
        "Max" => query_spatial_coverage_max()
      }
      
  """
  @type query_spatial_coverage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_report_location() :: %{
        "BucketName" => String.t() | atom(),
        "ObjectKey" => String.t() | atom()
      }
      
  """
  @type s3_report_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sns_configuration() :: %{
        "TopicArn" => String.t() | atom()
      }
      
  """
  @type sns_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_mapping() :: %{
        "DimensionValueType" => list(any()),
        "Name" => String.t() | atom()
      }
      
  """
  @type dimension_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_query_insights() :: %{
        "Mode" => list(any())
      }
      
  """
  @type scheduled_query_insights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execution_stats() :: %{
        "BytesMetered" => float(),
        "CumulativeBytesScanned" => float(),
        "DataWrites" => float(),
        "ExecutionTimeInMillis" => float(),
        "QueryResultRows" => float(),
        "RecordsIngested" => float()
      }
      
  """
  @type execution_stats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provisioned_capacity_response() :: %{
        "ActiveQueryTCU" => integer(),
        "LastUpdate" => last_update(),
        "NotificationConfiguration" => account_settings_notification_configuration()
      }
      
  """
  @type provisioned_capacity_response() :: %{(String.t() | atom()) => any()}

  @type cancel_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_endpoint_exception()

  @type create_scheduled_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | invalid_endpoint_exception()

  @type delete_scheduled_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type describe_account_settings_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_endpoint_exception()

  @type describe_endpoints_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type describe_scheduled_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type execute_scheduled_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type list_scheduled_queries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_endpoint_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type prepare_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_endpoint_exception()

  @type query_errors() ::
          query_execution_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | invalid_endpoint_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type update_account_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_endpoint_exception()

  @type update_scheduled_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  def metadata do
    %{
      api_version: "2018-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "query.timestream",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Timestream Query",
      signature_version: "v4",
      signing_name: "timestream",
      target_prefix: "Timestream_20181101"
    }
  end

  @doc """
  Cancels a query that has been issued.

  Cancellation is provided only if the query has
  not completed running before the cancellation request was issued. Because
  cancellation
  is an idempotent operation, subsequent cancellation requests will return a
  `CancellationMessage`, indicating that the query has already been
  canceled. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html)
  for details.
  """
  @spec cancel_query(map(), cancel_query_request(), list()) ::
          {:ok, cancel_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_query_errors()}
  def cancel_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelQuery", input, options)
  end

  @doc """
  Create a scheduled query that will be run on your behalf at the configured
  schedule.

  Timestream assumes the execution role provided as part of the
  `ScheduledQueryExecutionRoleArn` parameter to run the query. You can use
  the `NotificationConfiguration` parameter to configure notification for your
  scheduled query operations.
  """
  @spec create_scheduled_query(map(), create_scheduled_query_request(), list()) ::
          {:ok, create_scheduled_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scheduled_query_errors()}
  def create_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScheduledQuery", input, options)
  end

  @doc """
  Deletes a given scheduled query.

  This is an irreversible operation.
  """
  @spec delete_scheduled_query(map(), delete_scheduled_query_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scheduled_query_errors()}
  def delete_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScheduledQuery", input, options)
  end

  @doc """
  Describes the settings for your account that include the query pricing model and
  the configured maximum TCUs the service can use for your query workload.

  You're charged only for the duration of compute units used for your workloads.
  """
  @spec describe_account_settings(map(), describe_account_settings_request(), list()) ::
          {:ok, describe_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_account_settings_errors()}
  def describe_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountSettings", input, options)
  end

  @doc """
  DescribeEndpoints returns a list of available endpoints to make Timestream
  API calls against.

  This API is available through both Write and Query.

  Because the Timestream SDKs are designed to transparently work with the
  service’s architecture, including the management and mapping of the service
  endpoints,
  *it is not recommended that you use this API unless*:

    *
  You are using [VPC endpoints (Amazon Web Services PrivateLink) with Timestream
  ](https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)

    *
  Your application uses a programming language that does not yet have SDK
  support

    *
  You require better control over the client-side implementation

  For detailed information on how and when to use and implement DescribeEndpoints,
  see
  [The Endpoint Discovery Pattern](https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).
  """
  @spec describe_endpoints(map(), describe_endpoints_request(), list()) ::
          {:ok, describe_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_endpoints_errors()}
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoints", input, options)
  end

  @doc """
  Provides detailed information about a scheduled query.
  """
  @spec describe_scheduled_query(map(), describe_scheduled_query_request(), list()) ::
          {:ok, describe_scheduled_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scheduled_query_errors()}
  def describe_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScheduledQuery", input, options)
  end

  @doc """
  You can use this API to run a scheduled query manually.

  If you enabled `QueryInsights`, this API also returns insights and metrics
  related to the query that you executed as part of an Amazon SNS notification.
  `QueryInsights` helps with performance tuning of your query. For more
  information about `QueryInsights`, see [Using query insights to optimize queries in Amazon
  Timestream](https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html).
  """
  @spec execute_scheduled_query(map(), execute_scheduled_query_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_scheduled_query_errors()}
  def execute_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteScheduledQuery", input, options)
  end

  @doc """
  Gets a list of all scheduled queries in the caller's Amazon account and Region.

  `ListScheduledQueries` is eventually consistent.
  """
  @spec list_scheduled_queries(map(), list_scheduled_queries_request(), list()) ::
          {:ok, list_scheduled_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scheduled_queries_errors()}
  def list_scheduled_queries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListScheduledQueries", input, options)
  end

  @doc """
  List all tags on a Timestream query resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  A synchronous operation that allows you to submit a query with parameters to be
  stored
  by Timestream for later running.

  Timestream only supports using this operation with
  `ValidateOnly` set to `true`.
  """
  @spec prepare_query(map(), prepare_query_request(), list()) ::
          {:ok, prepare_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, prepare_query_errors()}
  def prepare_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PrepareQuery", input, options)
  end

  @doc """

  `Query` is a synchronous operation that enables you to run a query against
  your Amazon Timestream data.

  If you enabled `QueryInsights`, this API also returns insights and metrics
  related to the query that you executed. `QueryInsights` helps with performance
  tuning of your query. For more information about `QueryInsights`, see [Using query insights to optimize queries in Amazon
  Timestream](https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html).

  The maximum number of `Query` API requests you're allowed to make with
  `QueryInsights` enabled is 1 query per second (QPS). If you exceed this query
  rate, it might result in throttling.

  `Query` will time out after 60 seconds.
  You must update the default timeout in the SDK to support a timeout of 60
  seconds. See
  the [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html)
  for details.

  Your query request will fail in the following cases:

    *
  If you submit a `Query` request with the same client token outside
  of the 5-minute idempotency window.

    *
  If you submit a `Query` request with the same client token, but
  change other parameters, within the 5-minute idempotency window.

    *
  If the size of the row (including the query metadata) exceeds 1 MB, then the
  query will fail with the following error message:

  ```
  Query aborted as max page response size has been exceeded by the output
  result row
  ```

    *
  If the IAM principal of the query initiator and the result reader are not the
  same and/or the query initiator and the result reader do not have the same query
  string in the query requests, the query will fail with an

  ```
  Invalid
  pagination token
  ```

  error.
  """
  @spec query(map(), query_request(), list()) ::
          {:ok, query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, query_errors()}
  def query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Query", input, options)
  end

  @doc """
  Associate a set of tags with a Timestream resource.

  You can then activate these
  user-defined tags so that they appear on the Billing and Cost Management console
  for
  cost allocation tracking.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a Timestream query resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Transitions your account to use TCUs for query pricing and modifies the maximum
  query compute units that you've configured.

  If you reduce the value of `MaxQueryTCU` to a desired configuration, the new
  value can take up to 24 hours to be effective.

  After you've transitioned your account to use TCUs for query pricing, you can't
  transition to using bytes scanned for query pricing.
  """
  @spec update_account_settings(map(), update_account_settings_request(), list()) ::
          {:ok, update_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccountSettings", input, options)
  end

  @doc """
  Update a scheduled query.
  """
  @spec update_scheduled_query(map(), update_scheduled_query_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scheduled_query_errors()}
  def update_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScheduledQuery", input, options)
  end
end
