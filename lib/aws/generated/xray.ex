# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.XRay do
  @moduledoc """
  Amazon Web Services X-Ray provides APIs for managing debug traces and retrieving
  service maps
  and other data created by processing those traces.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_encryption_config_result() :: %{
        "EncryptionConfig" => encryption_config()
      }

  """
  @type put_encryption_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_graph_result() :: %{
        "ContainsOldGroupVersions" => boolean(),
        "EndTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "Services" => list(service()()),
        "StartTime" => non_neg_integer()
      }

  """
  @type get_service_graph_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_impact_graph_edge() :: %{
        "ReferenceId" => integer()
      }

  """
  @type insight_impact_graph_edge() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      edge_statistics() :: %{
        "ErrorStatistics" => error_statistics(),
        "FaultStatistics" => fault_statistics(),
        "OkCount" => float(),
        "TotalCount" => float(),
        "TotalResponseTime" => float()
      }

  """
  @type edge_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_summary() :: %{
        "Categories" => list(list(any())()),
        "ClientRequestImpactStatistics" => request_impact_statistics(),
        "EndTime" => non_neg_integer(),
        "GroupARN" => String.t(),
        "GroupName" => String.t(),
        "InsightId" => String.t(),
        "LastUpdateTime" => non_neg_integer(),
        "RootCauseServiceId" => service_id(),
        "RootCauseServiceRequestImpactStatistics" => request_impact_statistics(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "Summary" => String.t(),
        "TopAnomalousServices" => list(anomalous_service()())
      }

  """
  @type insight_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_time_root_cause_service() :: %{
        "AccountId" => String.t(),
        "EntityPath" => list(response_time_root_cause_entity()()),
        "Inferred" => boolean(),
        "Name" => String.t(),
        "Names" => list(String.t()()),
        "Type" => String.t()
      }

  """
  @type response_time_root_cause_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insights_configuration() :: %{
        "InsightsEnabled" => boolean(),
        "NotificationsEnabled" => boolean()
      }

  """
  @type insights_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_config() :: %{
        "KeyId" => String.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_encryption_config_request() :: %{
        optional("KeyId") => String.t(),
        required("Type") => list(any())
      }

  """
  @type put_encryption_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_result() :: %{
        "Group" => group()
      }

  """
  @type create_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_id_detail() :: %{
        "Id" => String.t()
      }

  """
  @type instance_id_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_result() :: %{
        "Group" => group()
      }

  """
  @type get_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_trace_segments_request() :: %{
        required("TraceSegmentDocuments") => list(String.t()())
      }

  """
  @type put_trace_segments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_groups_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sampling_rule_update() :: %{
        "Attributes" => map(),
        "FixedRate" => float(),
        "HTTPMethod" => String.t(),
        "Host" => String.t(),
        "Priority" => integer(),
        "ReservoirSize" => integer(),
        "ResourceARN" => String.t(),
        "RuleARN" => String.t(),
        "RuleName" => String.t(),
        "ServiceName" => String.t(),
        "ServiceType" => String.t(),
        "URLPath" => String.t()
      }

  """
  @type sampling_rule_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_request() :: %{
        required("InsightId") => String.t()
      }

  """
  @type get_insight_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      anomalous_service() :: %{
        "ServiceId" => service_id()
      }

  """
  @type anomalous_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trace_summaries_request() :: %{
        optional("FilterExpression") => String.t(),
        optional("NextToken") => String.t(),
        optional("Sampling") => boolean(),
        optional("SamplingStrategy") => sampling_strategy(),
        optional("TimeRangeType") => list(any()),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_trace_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight_impact_graph_service() :: %{
        "AccountId" => String.t(),
        "Edges" => list(insight_impact_graph_edge()()),
        "Name" => String.t(),
        "Names" => list(String.t()()),
        "ReferenceId" => integer(),
        "Type" => String.t()
      }

  """
  @type insight_impact_graph_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trace_summaries_result() :: %{
        "ApproximateTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "TraceSummaries" => list(trace_summary()()),
        "TracesProcessedCount" => float()
      }

  """
  @type get_trace_summaries_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sampling_rule_result() :: %{
        "SamplingRuleRecord" => sampling_rule_record()
      }

  """
  @type create_sampling_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_result() :: %{
        "ResourcePolicy" => resource_policy()
      }

  """
  @type put_resource_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      availability_zone_detail() :: %{
        "Name" => String.t()
      }

  """
  @type availability_zone_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sampling_rule_request() :: %{
        optional("RuleARN") => String.t(),
        optional("RuleName") => String.t()
      }

  """
  @type delete_sampling_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_telemetry_records_request() :: %{
        optional("EC2InstanceId") => String.t(),
        optional("Hostname") => String.t(),
        optional("ResourceARN") => String.t(),
        required("TelemetryRecords") => list(telemetry_record()())
      }

  """
  @type put_telemetry_records_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sampling_statistic_summary() :: %{
        "BorrowCount" => integer(),
        "RequestCount" => integer(),
        "RuleName" => String.t(),
        "SampledCount" => integer(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type sampling_statistic_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_root_cause() :: %{
        "ClientImpacting" => boolean(),
        "Services" => list(error_root_cause_service()())
      }

  """
  @type error_root_cause() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trace_graph_result() :: %{
        "NextToken" => String.t(),
        "Services" => list(service()())
      }

  """
  @type get_trace_graph_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sampling_rules_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_sampling_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service() :: %{
        "AccountId" => String.t(),
        "DurationHistogram" => list(histogram_entry()()),
        "Edges" => list(edge()()),
        "EndTime" => non_neg_integer(),
        "Name" => String.t(),
        "Names" => list(String.t()()),
        "ReferenceId" => integer(),
        "ResponseTimeHistogram" => list(histogram_entry()()),
        "Root" => boolean(),
        "StartTime" => non_neg_integer(),
        "State" => String.t(),
        "SummaryStatistics" => service_statistics(),
        "Type" => String.t()
      }

  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      policy_size_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type policy_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sampling_target_document() :: %{
        "FixedRate" => float(),
        "Interval" => integer(),
        "ReservoirQuota" => integer(),
        "ReservoirQuotaTTL" => non_neg_integer(),
        "RuleName" => String.t()
      }

  """
  @type sampling_target_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_traces_result() :: %{
        "NextToken" => String.t(),
        "Traces" => list(trace()()),
        "UnprocessedTraceIds" => list(String.t()())
      }

  """
  @type batch_get_traces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_request() :: %{
        optional("FilterExpression") => String.t(),
        optional("GroupARN") => String.t(),
        optional("GroupName") => String.t(),
        optional("InsightsConfiguration") => insights_configuration()
      }

  """
  @type update_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment() :: %{
        "Document" => String.t(),
        "Id" => String.t()
      }

  """
  @type segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("InsightId") => String.t()
      }

  """
  @type get_insight_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_traces_request() :: %{
        optional("NextToken") => String.t(),
        required("TraceIds") => list(String.t()())
      }

  """
  @type batch_get_traces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_statistics() :: %{
        "OtherCount" => float(),
        "ThrottleCount" => float(),
        "TotalCount" => float()
      }

  """
  @type error_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      value_with_service_ids() :: %{
        "AnnotationValue" => list(),
        "ServiceIds" => list(service_id()())
      }

  """
  @type value_with_service_ids() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_statistics() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t(),
        "RuleName" => String.t()
      }

  """
  @type unprocessed_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_policy_revision_id_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_policy_revision_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttled_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sampling_rule_result() :: %{
        "SamplingRuleRecord" => sampling_rule_record()
      }

  """
  @type update_sampling_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sampling_rule_request() :: %{
        required("SamplingRuleUpdate") => sampling_rule_update()
      }

  """
  @type update_sampling_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_telemetry_records_result() :: %{}

  """
  @type put_telemetry_records_result() :: %{}

  @typedoc """

  ## Example:

      insight_event() :: %{
        "ClientRequestImpactStatistics" => request_impact_statistics(),
        "EventTime" => non_neg_integer(),
        "RootCauseServiceRequestImpactStatistics" => request_impact_statistics(),
        "Summary" => String.t(),
        "TopAnomalousServices" => list(anomalous_service()())
      }

  """
  @type insight_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_time_root_cause() :: %{
        "ClientImpacting" => boolean(),
        "Services" => list(response_time_root_cause_service()())
      }

  """
  @type response_time_root_cause() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sampling_rule() :: %{
        "Attributes" => map(),
        "FixedRate" => float(),
        "HTTPMethod" => String.t(),
        "Host" => String.t(),
        "Priority" => integer(),
        "ReservoirSize" => integer(),
        "ResourceARN" => String.t(),
        "RuleARN" => String.t(),
        "RuleName" => String.t(),
        "ServiceName" => String.t(),
        "ServiceType" => String.t(),
        "URLPath" => String.t(),
        "Version" => integer()
      }

  """
  @type sampling_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessed_trace_segment() :: %{
        "ErrorCode" => String.t(),
        "Id" => String.t(),
        "Message" => String.t()
      }

  """
  @type unprocessed_trace_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_graph_request() :: %{
        optional("GroupARN") => String.t(),
        optional("GroupName") => String.t(),
        optional("NextToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_service_graph_request() :: %{String.t() => any()}

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

      invalid_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_events_result() :: %{
        "InsightEvents" => list(insight_event()()),
        "NextToken" => String.t()
      }

  """
  @type get_insight_events_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sampling_targets_request() :: %{
        required("SamplingStatisticsDocuments") => list(sampling_statistics_document()())
      }

  """
  @type get_sampling_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sampling_strategy() :: %{
        "Name" => list(any()),
        "Value" => float()
      }

  """
  @type sampling_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_summaries_request() :: %{
        optional("GroupARN") => String.t(),
        optional("GroupName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("States") => list(list(any())()),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_insight_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_series_service_statistics() :: %{
        "EdgeSummaryStatistics" => edge_statistics(),
        "ResponseTimeHistogram" => list(histogram_entry()()),
        "ServiceForecastStatistics" => forecast_statistics(),
        "ServiceSummaryStatistics" => service_statistics(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type time_series_service_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sampling_targets_result() :: %{
        "LastRuleModification" => non_neg_integer(),
        "SamplingTargetDocuments" => list(sampling_target_document()()),
        "UnprocessedStatistics" => list(unprocessed_statistics()())
      }

  """
  @type get_sampling_targets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_result() :: %{}

  """
  @type delete_group_result() :: %{}

  @typedoc """

  ## Example:

      fault_root_cause_service() :: %{
        "AccountId" => String.t(),
        "EntityPath" => list(fault_root_cause_entity()()),
        "Inferred" => boolean(),
        "Name" => String.t(),
        "Names" => list(String.t()()),
        "Type" => String.t()
      }

  """
  @type fault_root_cause_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_policies_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type list_resource_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fault_statistics() :: %{
        "OtherCount" => float(),
        "TotalCount" => float()
      }

  """
  @type fault_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_group_request() :: %{
        optional("FilterExpression") => String.t(),
        optional("InsightsConfiguration") => insights_configuration(),
        optional("Tags") => list(tag()()),
        required("GroupName") => String.t()
      }

  """
  @type create_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_time_series_service_statistics_request() :: %{
        optional("EntitySelectorExpression") => String.t(),
        optional("ForecastStatistics") => boolean(),
        optional("GroupARN") => String.t(),
        optional("GroupName") => String.t(),
        optional("NextToken") => String.t(),
        optional("Period") => integer(),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_time_series_service_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sampling_statistic_summaries_result() :: %{
        "NextToken" => String.t(),
        "SamplingStatisticSummaries" => list(sampling_statistic_summary()())
      }

  """
  @type get_sampling_statistic_summaries_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_groups_result() :: %{
        "Groups" => list(group_summary()()),
        "NextToken" => String.t()
      }

  """
  @type get_groups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_trace_graph_request() :: %{
        optional("NextToken") => String.t(),
        required("TraceIds") => list(String.t()())
      }

  """
  @type get_trace_graph_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_root_cause_service() :: %{
        "AccountId" => String.t(),
        "EntityPath" => list(error_root_cause_entity()()),
        "Inferred" => boolean(),
        "Name" => String.t(),
        "Names" => list(String.t()()),
        "Type" => String.t()
      }

  """
  @type error_root_cause_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trace() :: %{
        "Duration" => float(),
        "Id" => String.t(),
        "LimitExceeded" => boolean(),
        "Segments" => list(segment()())
      }

  """
  @type trace() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_encryption_config_request() :: %{}

  """
  @type get_encryption_config_request() :: %{}

  @typedoc """

  ## Example:

      resource_policy() :: %{
        "LastUpdatedTime" => non_neg_integer(),
        "PolicyDocument" => String.t(),
        "PolicyName" => String.t(),
        "PolicyRevisionId" => String.t()
      }

  """
  @type resource_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fault_root_cause_entity() :: %{
        "Exceptions" => list(root_cause_exception()()),
        "Name" => String.t(),
        "Remote" => boolean()
      }

  """
  @type fault_root_cause_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_root_cause_entity() :: %{
        "Exceptions" => list(root_cause_exception()()),
        "Name" => String.t(),
        "Remote" => boolean()
      }

  """
  @type error_root_cause_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sampling_rule_result() :: %{
        "SamplingRuleRecord" => sampling_rule_record()
      }

  """
  @type delete_sampling_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sampling_rule_request() :: %{
        optional("Tags") => list(tag()()),
        required("SamplingRule") => sampling_rule()
      }

  """
  @type create_sampling_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("BypassPolicyLockoutCheck") => boolean(),
        optional("PolicyRevisionId") => String.t(),
        required("PolicyDocument") => String.t(),
        required("PolicyName") => String.t()
      }

  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lockout_prevention_exception() :: %{
        "Message" => String.t()
      }

  """
  @type lockout_prevention_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alias() :: %{
        "Name" => String.t(),
        "Names" => list(String.t()()),
        "Type" => String.t()
      }

  """
  @type alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_trace_segments_result() :: %{
        "UnprocessedTraceSegments" => list(unprocessed_trace_segment()())
      }

  """
  @type put_trace_segments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forecast_statistics() :: %{
        "FaultCountHigh" => float(),
        "FaultCountLow" => float()
      }

  """
  @type forecast_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      sampling_rule_record() :: %{
        "CreatedAt" => non_neg_integer(),
        "ModifiedAt" => non_neg_integer(),
        "SamplingRule" => sampling_rule()
      }

  """
  @type sampling_rule_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type rule_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sampling_statistic_summaries_request() :: %{
        optional("NextToken") => String.t()
      }

  """
  @type get_sampling_statistic_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backend_connection_errors() :: %{
        "ConnectionRefusedCount" => integer(),
        "HTTPCode4XXCount" => integer(),
        "HTTPCode5XXCount" => integer(),
        "OtherCount" => integer(),
        "TimeoutCount" => integer(),
        "UnknownHostCount" => integer()
      }

  """
  @type backend_connection_errors() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telemetry_record() :: %{
        "BackendConnectionErrors" => backend_connection_errors(),
        "SegmentsReceivedCount" => integer(),
        "SegmentsRejectedCount" => integer(),
        "SegmentsSentCount" => integer(),
        "SegmentsSpilloverCount" => integer(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type telemetry_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        optional("NextToken") => String.t(),
        required("ResourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_id() :: %{
        "AccountId" => String.t(),
        "Name" => String.t(),
        "Names" => list(String.t()()),
        "Type" => String.t()
      }

  """
  @type service_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trace_summary() :: %{
        "Annotations" => map(),
        "AvailabilityZones" => list(availability_zone_detail()()),
        "Duration" => float(),
        "EntryPoint" => service_id(),
        "ErrorRootCauses" => list(error_root_cause()()),
        "FaultRootCauses" => list(fault_root_cause()()),
        "HasError" => boolean(),
        "HasFault" => boolean(),
        "HasThrottle" => boolean(),
        "Http" => http(),
        "Id" => String.t(),
        "InstanceIds" => list(instance_id_detail()()),
        "IsPartial" => boolean(),
        "MatchedEventTime" => non_neg_integer(),
        "ResourceARNs" => list(resource_arn_detail()()),
        "ResponseTime" => float(),
        "ResponseTimeRootCauses" => list(response_time_root_cause()()),
        "Revision" => integer(),
        "ServiceIds" => list(service_id()()),
        "StartTime" => non_neg_integer(),
        "Users" => list(trace_user()())
      }

  """
  @type trace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_group_result() :: %{
        "Group" => group()
      }

  """
  @type update_group_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "FilterExpression" => String.t(),
        "GroupARN" => String.t(),
        "GroupName" => String.t(),
        "InsightsConfiguration" => insights_configuration()
      }

  """
  @type group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_impact_statistics() :: %{
        "FaultCount" => float(),
        "OkCount" => float(),
        "TotalCount" => float()
      }

  """
  @type request_impact_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fault_root_cause() :: %{
        "ClientImpacting" => boolean(),
        "Services" => list(fault_root_cause_service()())
      }

  """
  @type fault_root_cause() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      malformed_policy_document_exception() :: %{
        "Message" => String.t()
      }

  """
  @type malformed_policy_document_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{
        optional("GroupARN") => String.t(),
        optional("GroupName") => String.t()
      }

  """
  @type delete_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_statistics() :: %{
        "ErrorStatistics" => error_statistics(),
        "FaultStatistics" => fault_statistics(),
        "OkCount" => float(),
        "TotalCount" => float(),
        "TotalResponseTime" => float()
      }

  """
  @type service_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sampling_rules_result() :: %{
        "NextToken" => String.t(),
        "SamplingRuleRecords" => list(sampling_rule_record()())
      }

  """
  @type get_sampling_rules_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      trace_user() :: %{
        "ServiceIds" => list(service_id()()),
        "UserName" => String.t()
      }

  """
  @type trace_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_time_root_cause_entity() :: %{
        "Coverage" => float(),
        "Name" => String.t(),
        "Remote" => boolean()
      }

  """
  @type response_time_root_cause_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t(),
        required("PolicyName") => String.t()
      }

  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_summary() :: %{
        "FilterExpression" => String.t(),
        "GroupARN" => String.t(),
        "GroupName" => String.t(),
        "InsightsConfiguration" => insights_configuration()
      }

  """
  @type group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_impact_graph_request() :: %{
        optional("NextToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("InsightId") => String.t(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_insight_impact_graph_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_arn_detail() :: %{
        "ARN" => String.t()
      }

  """
  @type resource_arn_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      root_cause_exception() :: %{
        "Message" => String.t(),
        "Name" => String.t()
      }

  """
  @type root_cause_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insight() :: %{
        "Categories" => list(list(any())()),
        "ClientRequestImpactStatistics" => request_impact_statistics(),
        "EndTime" => non_neg_integer(),
        "GroupARN" => String.t(),
        "GroupName" => String.t(),
        "InsightId" => String.t(),
        "RootCauseServiceId" => service_id(),
        "RootCauseServiceRequestImpactStatistics" => request_impact_statistics(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "Summary" => String.t(),
        "TopAnomalousServices" => list(anomalous_service()())
      }

  """
  @type insight() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_result() :: %{}

  """
  @type delete_resource_policy_result() :: %{}

  @typedoc """

  ## Example:

      edge() :: %{
        "Aliases" => list(alias()()),
        "EdgeType" => String.t(),
        "EndTime" => non_neg_integer(),
        "ReceivedEventAgeHistogram" => list(histogram_entry()()),
        "ReferenceId" => integer(),
        "ResponseTimeHistogram" => list(histogram_entry()()),
        "StartTime" => non_neg_integer(),
        "SummaryStatistics" => edge_statistics()
      }

  """
  @type edge() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_request() :: %{
        optional("GroupARN") => String.t(),
        optional("GroupName") => String.t()
      }

  """
  @type get_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      histogram_entry() :: %{
        "Count" => integer(),
        "Value" => float()
      }

  """
  @type histogram_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_time_series_service_statistics_result() :: %{
        "ContainsOldGroupVersions" => boolean(),
        "NextToken" => String.t(),
        "TimeSeriesServiceStatistics" => list(time_series_service_statistics()())
      }

  """
  @type get_time_series_service_statistics_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_summaries_result() :: %{
        "InsightSummaries" => list(insight_summary()()),
        "NextToken" => String.t()
      }

  """
  @type get_insight_summaries_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_encryption_config_result() :: %{
        "EncryptionConfig" => encryption_config()
      }

  """
  @type get_encryption_config_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sampling_statistics_document() :: %{
        "BorrowCount" => integer(),
        "ClientID" => String.t(),
        "RequestCount" => integer(),
        "RuleName" => String.t(),
        "SampledCount" => integer(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type sampling_statistics_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_impact_graph_result() :: %{
        "EndTime" => non_neg_integer(),
        "InsightId" => String.t(),
        "NextToken" => String.t(),
        "ServiceGraphEndTime" => non_neg_integer(),
        "ServiceGraphStartTime" => non_neg_integer(),
        "Services" => list(insight_impact_graph_service()()),
        "StartTime" => non_neg_integer()
      }

  """
  @type get_insight_impact_graph_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_insight_result() :: %{
        "Insight" => insight()
      }

  """
  @type get_insight_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http() :: %{
        "ClientIp" => String.t(),
        "HttpMethod" => String.t(),
        "HttpStatus" => integer(),
        "HttpURL" => String.t(),
        "UserAgent" => String.t()
      }

  """
  @type http() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      policy_count_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type policy_count_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_policies_result() :: %{
        "NextToken" => String.t(),
        "ResourcePolicies" => list(resource_policy()())
      }

  """
  @type list_resource_policies_result() :: %{String.t() => any()}

  @type batch_get_traces_errors() :: invalid_request_exception() | throttled_exception()

  @type create_group_errors() :: invalid_request_exception() | throttled_exception()

  @type create_sampling_rule_errors() ::
          rule_limit_exceeded_exception() | invalid_request_exception() | throttled_exception()

  @type delete_group_errors() :: invalid_request_exception() | throttled_exception()

  @type delete_resource_policy_errors() ::
          invalid_request_exception()
          | throttled_exception()
          | invalid_policy_revision_id_exception()

  @type delete_sampling_rule_errors() :: invalid_request_exception() | throttled_exception()

  @type get_encryption_config_errors() :: invalid_request_exception() | throttled_exception()

  @type get_group_errors() :: invalid_request_exception() | throttled_exception()

  @type get_groups_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_events_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_impact_graph_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_summaries_errors() :: invalid_request_exception() | throttled_exception()

  @type get_sampling_rules_errors() :: invalid_request_exception() | throttled_exception()

  @type get_sampling_statistic_summaries_errors() ::
          invalid_request_exception() | throttled_exception()

  @type get_sampling_targets_errors() :: invalid_request_exception() | throttled_exception()

  @type get_service_graph_errors() :: invalid_request_exception() | throttled_exception()

  @type get_time_series_service_statistics_errors() ::
          invalid_request_exception() | throttled_exception()

  @type get_trace_graph_errors() :: invalid_request_exception() | throttled_exception()

  @type get_trace_summaries_errors() :: invalid_request_exception() | throttled_exception()

  @type list_resource_policies_errors() :: invalid_request_exception() | throttled_exception()

  @type list_tags_for_resource_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

  @type put_encryption_config_errors() :: invalid_request_exception() | throttled_exception()

  @type put_resource_policy_errors() ::
          policy_count_limit_exceeded_exception()
          | malformed_policy_document_exception()
          | lockout_prevention_exception()
          | throttled_exception()
          | invalid_policy_revision_id_exception()
          | policy_size_limit_exceeded_exception()

  @type put_telemetry_records_errors() :: invalid_request_exception() | throttled_exception()

  @type put_trace_segments_errors() :: invalid_request_exception() | throttled_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type untag_resource_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

  @type update_group_errors() :: invalid_request_exception() | throttled_exception()

  @type update_sampling_rule_errors() :: invalid_request_exception() | throttled_exception()

  def metadata do
    %{
      api_version: "2016-04-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "xray",
      global?: false,
      protocol: "rest-json",
      service_id: "XRay",
      signature_version: "v4",
      signing_name: "xray",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves a list of traces specified by ID.

  Each trace is a collection of segment
  documents that originates from a single request. Use `GetTraceSummaries` to get
  a
  list of trace IDs.
  """
  @spec batch_get_traces(map(), batch_get_traces_request(), list()) ::
          {:ok, batch_get_traces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_traces_errors()}
  def batch_get_traces(%Client{} = client, input, options \\ []) do
    url_path = "/Traces"
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
  Creates a group resource with a name and a filter expression.
  """
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/CreateGroup"
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
  Creates a rule to control sampling behavior for instrumented applications.

  Services
  retrieve rules with
  [GetSamplingRules](https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingRules.html), and evaluate each rule in ascending
  order of *priority* for each request. If a rule matches, the service
  records a trace, borrowing it from the reservoir size. After 10 seconds, the
  service
  reports back to X-Ray with
  [GetSamplingTargets](https://docs.aws.amazon.com/xray/latest/api/API_GetSamplingTargets.html)
  to get updated versions of
  each in-use rule. The updated rule contains a trace quota that the service can
  use instead
  of borrowing from the reservoir.
  """
  @spec create_sampling_rule(map(), create_sampling_rule_request(), list()) ::
          {:ok, create_sampling_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sampling_rule_errors()}
  def create_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/CreateSamplingRule"
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
  Deletes a group resource.
  """
  @spec delete_group(map(), delete_group_request(), list()) ::
          {:ok, delete_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteGroup"
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
  Deletes a resource policy from the target Amazon Web Services account.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteResourcePolicy"
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
  Deletes a sampling rule.
  """
  @spec delete_sampling_rule(map(), delete_sampling_rule_request(), list()) ::
          {:ok, delete_sampling_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sampling_rule_errors()}
  def delete_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSamplingRule"
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
  Retrieves the current encryption configuration for X-Ray data.
  """
  @spec get_encryption_config(map(), get_encryption_config_request(), list()) ::
          {:ok, get_encryption_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_encryption_config_errors()}
  def get_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/EncryptionConfig"
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
  Retrieves group resource details.
  """
  @spec get_group(map(), get_group_request(), list()) ::
          {:ok, get_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, input, options \\ []) do
    url_path = "/GetGroup"
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
  Retrieves all active group details.
  """
  @spec get_groups(map(), get_groups_request(), list()) ::
          {:ok, get_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_groups_errors()}
  def get_groups(%Client{} = client, input, options \\ []) do
    url_path = "/Groups"
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
  Retrieves the summary information of an insight.

  This includes impact to clients and
  root cause services, the top anomalous services, the category, the state of the
  insight,
  and the start and end time of the insight.
  """
  @spec get_insight(map(), get_insight_request(), list()) ::
          {:ok, get_insight_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insight_errors()}
  def get_insight(%Client{} = client, input, options \\ []) do
    url_path = "/Insight"
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
  X-Ray reevaluates insights periodically until they're resolved, and records each
  intermediate state as an
  event.

  You can review an insight's events in the Impact Timeline on the Inspect page in
  the X-Ray
  console.
  """
  @spec get_insight_events(map(), get_insight_events_request(), list()) ::
          {:ok, get_insight_events_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insight_events_errors()}
  def get_insight_events(%Client{} = client, input, options \\ []) do
    url_path = "/InsightEvents"
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
  Retrieves a service graph structure filtered by the specified insight.

  The service graph is limited to only
  structural information. For a complete service graph, use this API with the
  GetServiceGraph API.
  """
  @spec get_insight_impact_graph(map(), get_insight_impact_graph_request(), list()) ::
          {:ok, get_insight_impact_graph_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insight_impact_graph_errors()}
  def get_insight_impact_graph(%Client{} = client, input, options \\ []) do
    url_path = "/InsightImpactGraph"
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
  Retrieves the summaries of all insights in the specified group matching the
  provided filter values.
  """
  @spec get_insight_summaries(map(), get_insight_summaries_request(), list()) ::
          {:ok, get_insight_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_insight_summaries_errors()}
  def get_insight_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/InsightSummaries"
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
  Retrieves all sampling rules.
  """
  @spec get_sampling_rules(map(), get_sampling_rules_request(), list()) ::
          {:ok, get_sampling_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sampling_rules_errors()}
  def get_sampling_rules(%Client{} = client, input, options \\ []) do
    url_path = "/GetSamplingRules"
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
  Retrieves information about recent sampling results for all sampling rules.
  """
  @spec get_sampling_statistic_summaries(
          map(),
          get_sampling_statistic_summaries_request(),
          list()
        ) ::
          {:ok, get_sampling_statistic_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sampling_statistic_summaries_errors()}
  def get_sampling_statistic_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/SamplingStatisticSummaries"
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
  Requests a sampling quota for rules that the service is using to sample
  requests.
  """
  @spec get_sampling_targets(map(), get_sampling_targets_request(), list()) ::
          {:ok, get_sampling_targets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sampling_targets_errors()}
  def get_sampling_targets(%Client{} = client, input, options \\ []) do
    url_path = "/SamplingTargets"
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
  Retrieves a document that describes services that process incoming requests, and
  downstream services that they call as a result.

  Root services process incoming requests and
  make calls to downstream services. Root services are applications that use the
  [Amazon Web Services X-Ray SDK](https://docs.aws.amazon.com/xray/index.html).
  Downstream services can be other applications, Amazon Web Services resources,
  HTTP web APIs, or SQL
  databases.
  """
  @spec get_service_graph(map(), get_service_graph_request(), list()) ::
          {:ok, get_service_graph_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_graph_errors()}
  def get_service_graph(%Client{} = client, input, options \\ []) do
    url_path = "/ServiceGraph"
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
  Get an aggregation of service statistics defined by a specific time
  range.
  """
  @spec get_time_series_service_statistics(
          map(),
          get_time_series_service_statistics_request(),
          list()
        ) ::
          {:ok, get_time_series_service_statistics_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_time_series_service_statistics_errors()}
  def get_time_series_service_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/TimeSeriesServiceStatistics"
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
  Retrieves a service graph for one or more specific trace IDs.
  """
  @spec get_trace_graph(map(), get_trace_graph_request(), list()) ::
          {:ok, get_trace_graph_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_trace_graph_errors()}
  def get_trace_graph(%Client{} = client, input, options \\ []) do
    url_path = "/TraceGraph"
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
  Retrieves IDs and annotations for traces available for a specified time frame
  using an
  optional filter.

  To get the full traces, pass the trace IDs to
  `BatchGetTraces`.

  A filter expression can target traced requests that hit specific service nodes
  or
  edges, have errors, or come from a known user. For example, the following filter
  expression
  targets traces that pass through `api.example.com`:

  `service("api.example.com")`

  This filter expression finds traces that have an annotation named `account`
  with the value `12345`:

  `annotation.account = "12345"`

  For a full list of indexed fields and keywords that you can use in filter
  expressions,
  see [Using Filter Expressions](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html)
  in the *Amazon Web Services X-Ray Developer Guide*.
  """
  @spec get_trace_summaries(map(), get_trace_summaries_request(), list()) ::
          {:ok, get_trace_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_trace_summaries_errors()}
  def get_trace_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/TraceSummaries"
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
  Returns the list of resource policies in the target Amazon Web Services account.
  """
  @spec list_resource_policies(map(), list_resource_policies_request(), list()) ::
          {:ok, list_resource_policies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resource_policies_errors()}
  def list_resource_policies(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourcePolicies"
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
  Returns a list of tags that are applied to the specified Amazon Web Services
  X-Ray group or sampling rule.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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
  Updates the encryption configuration for X-Ray data.
  """
  @spec put_encryption_config(map(), put_encryption_config_request(), list()) ::
          {:ok, put_encryption_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_encryption_config_errors()}
  def put_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/PutEncryptionConfig"
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

  Sets the resource policy to grant one or more Amazon Web Services services and
  accounts permissions to
  access X-Ray.

  Each resource policy will be associated with a specific Amazon Web Services
  account.
  Each Amazon Web Services account can have a maximum of 5 resource policies, and
  each policy name must be
  unique within that account. The maximum size of each resource policy is 5KB.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutResourcePolicy"
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
  Used by the Amazon Web Services X-Ray daemon to upload telemetry.
  """
  @spec put_telemetry_records(map(), put_telemetry_records_request(), list()) ::
          {:ok, put_telemetry_records_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_telemetry_records_errors()}
  def put_telemetry_records(%Client{} = client, input, options \\ []) do
    url_path = "/TelemetryRecords"
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
  Uploads segment documents to Amazon Web Services X-Ray.

  The [X-Ray SDK](https://docs.aws.amazon.com/xray/index.html) generates segment documents and sends them to the X-Ray daemon, which uploads them in
  batches. A segment document can be a completed segment, an in-progress segment,
  or an array of
  subsegments.

  Segments must include the following fields. For the full segment document
  schema, see
  [Amazon Web Services X-Ray
  Segment
  Documents](https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
  in the *Amazon Web Services X-Ray Developer Guide*.

  ## Required segment document fields

    *

  `name` - The name of the service that handled the request.

    *

  `id` - A 64-bit identifier for the segment, unique among segments in the same
  trace, in 16
  hexadecimal digits.

    *

  `trace_id` - A unique identifier that connects all segments and subsegments
  originating from
  a single client request.

    *

  `start_time` - Time the segment or subsegment was created, in floating point
  seconds in
  epoch time, accurate to milliseconds. For example, `1480615200.010` or
  `1.480615200010E9`.

    *

  `end_time` - Time the segment or subsegment was closed. For example,
  `1480615200.090` or `1.480615200090E9`. Specify either an `end_time` or
  `in_progress`.

    *

  `in_progress` - Set to `true` instead of specifying an `end_time` to
  record that a segment has been started, but is not complete. Send an in-progress
  segment when your application
  receives a request that will take a long time to serve, to trace that the
  request was received. When the
  response is sent, send the complete segment to overwrite the in-progress
  segment.

  A `trace_id` consists of three numbers separated by hyphens. For example,
  1-58406520-a006649127e371903a2de979. This includes:

  ## Trace ID Format

    *
  The version number, for instance, `1`.

    *
  The time of the original request, in Unix epoch time, in 8 hexadecimal digits.
  For
  example, 10:00AM December 2nd, 2016 PST in epoch time is `1480615200` seconds,
  or `58406520` in hexadecimal.

    *
  A 96-bit identifier for the trace, globally unique, in 24 hexadecimal
  digits.
  """
  @spec put_trace_segments(map(), put_trace_segments_request(), list()) ::
          {:ok, put_trace_segments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_trace_segments_errors()}
  def put_trace_segments(%Client{} = client, input, options \\ []) do
    url_path = "/TraceSegments"
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
  Applies tags to an existing Amazon Web Services X-Ray group or sampling rule.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
  Removes tags from an Amazon Web Services X-Ray group or sampling rule.

  You cannot edit or delete system
  tags (those with an `aws:` prefix).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
  Updates a group resource.
  """
  @spec update_group(map(), update_group_request(), list()) ::
          {:ok, update_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateGroup"
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
  Modifies a sampling rule's configuration.
  """
  @spec update_sampling_rule(map(), update_sampling_rule_request(), list()) ::
          {:ok, update_sampling_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sampling_rule_errors()}
  def update_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSamplingRule"
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
