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
  @type put_encryption_config_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_service_graph_result() :: %{
        "ContainsOldGroupVersions" => boolean(),
        "EndTime" => non_neg_integer(),
        "NextToken" => String.t() | atom(),
        "Services" => list(service()),
        "StartTime" => non_neg_integer()
      }

  """
  @type get_service_graph_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight_impact_graph_edge() :: %{
        "ReferenceId" => integer()
      }

  """
  @type insight_impact_graph_edge() :: %{(String.t() | atom()) => any()}

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
  @type edge_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight_summary() :: %{
        "Categories" => list(list(any())()),
        "ClientRequestImpactStatistics" => request_impact_statistics(),
        "EndTime" => non_neg_integer(),
        "GroupARN" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "InsightId" => String.t() | atom(),
        "LastUpdateTime" => non_neg_integer(),
        "RootCauseServiceId" => service_id(),
        "RootCauseServiceRequestImpactStatistics" => request_impact_statistics(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "Summary" => String.t() | atom(),
        "TopAnomalousServices" => list(anomalous_service())
      }

  """
  @type insight_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      graph_link() :: %{
        "DestinationTraceIds" => list(String.t() | atom()),
        "ReferenceType" => String.t() | atom(),
        "SourceTraceId" => String.t() | atom()
      }

  """
  @type graph_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      response_time_root_cause_service() :: %{
        "AccountId" => String.t() | atom(),
        "EntityPath" => list(response_time_root_cause_entity()),
        "Inferred" => boolean(),
        "Name" => String.t() | atom(),
        "Names" => list(String.t() | atom()),
        "Type" => String.t() | atom()
      }

  """
  @type response_time_root_cause_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_trace_retrieval_result() :: %{
        "RetrievalToken" => String.t() | atom()
      }

  """
  @type start_trace_retrieval_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insights_configuration() :: %{
        "InsightsEnabled" => boolean(),
        "NotificationsEnabled" => boolean()
      }

  """
  @type insights_configuration() :: %{(String.t() | atom()) => any()}

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

      encryption_config() :: %{
        "KeyId" => String.t() | atom(),
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type encryption_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_encryption_config_request() :: %{
        optional("KeyId") => String.t() | atom(),
        required("Type") => list(any())
      }

  """
  @type put_encryption_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_group_result() :: %{
        "Group" => group()
      }

  """
  @type create_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_id_detail() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type instance_id_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_indexing_rules_request() :: %{
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_indexing_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_group_result() :: %{
        "Group" => group()
      }

  """
  @type get_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_trace_segments_request() :: %{
        required("TraceSegmentDocuments") => list(String.t() | atom())
      }

  """
  @type put_trace_segments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_groups_request() :: %{
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_retrieved_traces_result() :: %{
        "NextToken" => String.t() | atom(),
        "RetrievalStatus" => list(any()),
        "TraceFormat" => list(any()),
        "Traces" => list(retrieved_trace())
      }

  """
  @type list_retrieved_traces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_rule_update() :: %{
        "Attributes" => map(),
        "FixedRate" => float(),
        "HTTPMethod" => String.t() | atom(),
        "Host" => String.t() | atom(),
        "Priority" => integer(),
        "ReservoirSize" => integer(),
        "ResourceARN" => String.t() | atom(),
        "RuleARN" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "SamplingRateBoost" => sampling_rate_boost(),
        "ServiceName" => String.t() | atom(),
        "ServiceType" => String.t() | atom(),
        "URLPath" => String.t() | atom()
      }

  """
  @type sampling_rule_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_request() :: %{
        required("InsightId") => String.t() | atom()
      }

  """
  @type get_insight_request() :: %{(String.t() | atom()) => any()}

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
  @type anomalous_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trace_summaries_request() :: %{
        optional("FilterExpression") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("Sampling") => boolean(),
        optional("SamplingStrategy") => sampling_strategy(),
        optional("TimeRangeType") => list(any()),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_trace_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      probabilistic_rule_value() :: %{
        "ActualSamplingPercentage" => float(),
        "DesiredSamplingPercentage" => float()
      }

  """
  @type probabilistic_rule_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight_impact_graph_service() :: %{
        "AccountId" => String.t() | atom(),
        "Edges" => list(insight_impact_graph_edge()),
        "Name" => String.t() | atom(),
        "Names" => list(String.t() | atom()),
        "ReferenceId" => integer(),
        "Type" => String.t() | atom()
      }

  """
  @type insight_impact_graph_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_retrieved_traces_request() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("TraceFormat") => list(any()),
        required("RetrievalToken") => String.t() | atom()
      }

  """
  @type list_retrieved_traces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trace_summaries_result() :: %{
        "ApproximateTime" => non_neg_integer(),
        "NextToken" => String.t() | atom(),
        "TraceSummaries" => list(trace_summary()),
        "TracesProcessedCount" => float()
      }

  """
  @type get_trace_summaries_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sampling_rule_result() :: %{
        "SamplingRuleRecord" => sampling_rule_record()
      }

  """
  @type create_sampling_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_result() :: %{
        "ResourcePolicy" => resource_policy()
      }

  """
  @type put_resource_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      availability_zone_detail() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type availability_zone_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_sampling_rule_request() :: %{
        optional("RuleARN") => String.t() | atom(),
        optional("RuleName") => String.t() | atom()
      }

  """
  @type delete_sampling_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_telemetry_records_request() :: %{
        optional("EC2InstanceId") => String.t() | atom(),
        optional("Hostname") => String.t() | atom(),
        optional("ResourceARN") => String.t() | atom(),
        required("TelemetryRecords") => list(telemetry_record())
      }

  """
  @type put_telemetry_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_statistic_summary() :: %{
        "BorrowCount" => integer(),
        "RequestCount" => integer(),
        "RuleName" => String.t() | atom(),
        "SampledCount" => integer(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type sampling_statistic_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_root_cause() :: %{
        "ClientImpacting" => boolean(),
        "Services" => list(error_root_cause_service())
      }

  """
  @type error_root_cause() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trace_graph_result() :: %{
        "NextToken" => String.t() | atom(),
        "Services" => list(service())
      }

  """
  @type get_trace_graph_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_rate_boost() :: %{
        "CooldownWindowMinutes" => integer(),
        "MaxRate" => float()
      }

  """
  @type sampling_rate_boost() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sampling_rules_request() :: %{
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_sampling_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service() :: %{
        "AccountId" => String.t() | atom(),
        "DurationHistogram" => list(histogram_entry()),
        "Edges" => list(edge()),
        "EndTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Names" => list(String.t() | atom()),
        "ReferenceId" => integer(),
        "ResponseTimeHistogram" => list(histogram_entry()),
        "Root" => boolean(),
        "StartTime" => non_neg_integer(),
        "State" => String.t() | atom(),
        "SummaryStatistics" => service_statistics(),
        "Type" => String.t() | atom()
      }

  """
  @type service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_size_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type policy_size_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      probabilistic_rule_value_update() :: %{
        "DesiredSamplingPercentage" => float()
      }

  """
  @type probabilistic_rule_value_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_target_document() :: %{
        "FixedRate" => float(),
        "Interval" => integer(),
        "ReservoirQuota" => integer(),
        "ReservoirQuotaTTL" => non_neg_integer(),
        "RuleName" => String.t() | atom(),
        "SamplingBoost" => sampling_boost()
      }

  """
  @type sampling_target_document() :: %{(String.t() | atom()) => any()}

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

      retrieved_trace() :: %{
        "Duration" => float(),
        "Id" => String.t() | atom(),
        "Spans" => list(span())
      }

  """
  @type retrieved_trace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_traces_result() :: %{
        "NextToken" => String.t() | atom(),
        "Traces" => list(trace()),
        "UnprocessedTraceIds" => list(String.t() | atom())
      }

  """
  @type batch_get_traces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      indexing_rule() :: %{
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Rule" => list()
      }

  """
  @type indexing_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_group_request() :: %{
        optional("FilterExpression") => String.t() | atom(),
        optional("GroupARN") => String.t() | atom(),
        optional("GroupName") => String.t() | atom(),
        optional("InsightsConfiguration") => insights_configuration()
      }

  """
  @type update_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      segment() :: %{
        "Document" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_trace_segment_destination_result() :: %{
        "Destination" => list(any()),
        "Status" => list(any())
      }

  """
  @type update_trace_segment_destination_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("InsightId") => String.t() | atom()
      }

  """
  @type get_insight_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retrieved_service() :: %{
        "Links" => list(graph_link()),
        "Service" => service()
      }

  """
  @type retrieved_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_traces_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("TraceIds") => list(String.t() | atom())
      }

  """
  @type batch_get_traces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_statistics() :: %{
        "OtherCount" => float(),
        "ThrottleCount" => float(),
        "TotalCount" => float()
      }

  """
  @type error_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      value_with_service_ids() :: %{
        "AnnotationValue" => list(),
        "ServiceIds" => list(service_id())
      }

  """
  @type value_with_service_ids() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_trace_retrieval_request() :: %{
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer(),
        required("TraceIds") => list(String.t() | atom())
      }

  """
  @type start_trace_retrieval_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      span() :: %{
        "Document" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type span() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_statistics() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "RuleName" => String.t() | atom()
      }

  """
  @type unprocessed_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_policy_revision_id_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_policy_revision_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttled_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sampling_rule_result() :: %{
        "SamplingRuleRecord" => sampling_rule_record()
      }

  """
  @type update_sampling_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sampling_rule_request() :: %{
        required("SamplingRuleUpdate") => sampling_rule_update()
      }

  """
  @type update_sampling_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceName" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

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
        "Summary" => String.t() | atom(),
        "TopAnomalousServices" => list(anomalous_service())
      }

  """
  @type insight_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      response_time_root_cause() :: %{
        "ClientImpacting" => boolean(),
        "Services" => list(response_time_root_cause_service())
      }

  """
  @type response_time_root_cause() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_rule() :: %{
        "Attributes" => map(),
        "FixedRate" => float(),
        "HTTPMethod" => String.t() | atom(),
        "Host" => String.t() | atom(),
        "Priority" => integer(),
        "ReservoirSize" => integer(),
        "ResourceARN" => String.t() | atom(),
        "RuleARN" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "SamplingRateBoost" => sampling_rate_boost(),
        "ServiceName" => String.t() | atom(),
        "ServiceType" => String.t() | atom(),
        "URLPath" => String.t() | atom(),
        "Version" => integer()
      }

  """
  @type sampling_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessed_trace_segment() :: %{
        "ErrorCode" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type unprocessed_trace_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_service_graph_request() :: %{
        optional("GroupARN") => String.t() | atom(),
        optional("GroupName") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_service_graph_request() :: %{(String.t() | atom()) => any()}

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

      invalid_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_events_result() :: %{
        "InsightEvents" => list(insight_event()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_insight_events_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sampling_targets_request() :: %{
        optional("SamplingBoostStatisticsDocuments") => list(sampling_boost_statistics_document()),
        required("SamplingStatisticsDocuments") => list(sampling_statistics_document())
      }

  """
  @type get_sampling_targets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_strategy() :: %{
        "Name" => list(any()),
        "Value" => float()
      }

  """
  @type sampling_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_summaries_request() :: %{
        optional("GroupARN") => String.t() | atom(),
        optional("GroupName") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("States") => list(list(any())()),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_insight_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_series_service_statistics() :: %{
        "EdgeSummaryStatistics" => edge_statistics(),
        "ResponseTimeHistogram" => list(histogram_entry()),
        "ServiceForecastStatistics" => forecast_statistics(),
        "ServiceSummaryStatistics" => service_statistics(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type time_series_service_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sampling_targets_result() :: %{
        "LastRuleModification" => non_neg_integer(),
        "SamplingTargetDocuments" => list(sampling_target_document()),
        "UnprocessedBoostStatistics" => list(unprocessed_statistics()),
        "UnprocessedStatistics" => list(unprocessed_statistics())
      }

  """
  @type get_sampling_targets_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_group_result() :: %{}

  """
  @type delete_group_result() :: %{}

  @typedoc """

  ## Example:

      sampling_boost() :: %{
        "BoostRate" => float(),
        "BoostRateTTL" => non_neg_integer()
      }

  """
  @type sampling_boost() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fault_root_cause_service() :: %{
        "AccountId" => String.t() | atom(),
        "EntityPath" => list(fault_root_cause_entity()),
        "Inferred" => boolean(),
        "Name" => String.t() | atom(),
        "Names" => list(String.t() | atom()),
        "Type" => String.t() | atom()
      }

  """
  @type fault_root_cause_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_policies_request() :: %{
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_resource_policies_request() :: %{(String.t() | atom()) => any()}

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

      fault_statistics() :: %{
        "OtherCount" => float(),
        "TotalCount" => float()
      }

  """
  @type fault_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_group_request() :: %{
        optional("FilterExpression") => String.t() | atom(),
        optional("InsightsConfiguration") => insights_configuration(),
        optional("Tags") => list(tag()),
        required("GroupName") => String.t() | atom()
      }

  """
  @type create_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_time_series_service_statistics_request() :: %{
        optional("EntitySelectorExpression") => String.t() | atom(),
        optional("ForecastStatistics") => boolean(),
        optional("GroupARN") => String.t() | atom(),
        optional("GroupName") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("Period") => integer(),
        required("EndTime") => non_neg_integer(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_time_series_service_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sampling_statistic_summaries_result() :: %{
        "NextToken" => String.t() | atom(),
        "SamplingStatisticSummaries" => list(sampling_statistic_summary())
      }

  """
  @type get_sampling_statistic_summaries_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_groups_result() :: %{
        "Groups" => list(group_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_groups_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trace_graph_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("TraceIds") => list(String.t() | atom())
      }

  """
  @type get_trace_graph_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_root_cause_service() :: %{
        "AccountId" => String.t() | atom(),
        "EntityPath" => list(error_root_cause_entity()),
        "Inferred" => boolean(),
        "Name" => String.t() | atom(),
        "Names" => list(String.t() | atom()),
        "Type" => String.t() | atom()
      }

  """
  @type error_root_cause_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trace() :: %{
        "Duration" => float(),
        "Id" => String.t() | atom(),
        "LimitExceeded" => boolean(),
        "Segments" => list(segment())
      }

  """
  @type trace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_encryption_config_request() :: %{}

  """
  @type get_encryption_config_request() :: %{}

  @typedoc """

  ## Example:

      resource_policy() :: %{
        "LastUpdatedTime" => non_neg_integer(),
        "PolicyDocument" => String.t() | atom(),
        "PolicyName" => String.t() | atom(),
        "PolicyRevisionId" => String.t() | atom()
      }

  """
  @type resource_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_boost_statistics_document() :: %{
        "AnomalyCount" => integer(),
        "RuleName" => String.t() | atom(),
        "SampledAnomalyCount" => integer(),
        "ServiceName" => String.t() | atom(),
        "Timestamp" => non_neg_integer(),
        "TotalCount" => integer()
      }

  """
  @type sampling_boost_statistics_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fault_root_cause_entity() :: %{
        "Exceptions" => list(root_cause_exception()),
        "Name" => String.t() | atom(),
        "Remote" => boolean()
      }

  """
  @type fault_root_cause_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_root_cause_entity() :: %{
        "Exceptions" => list(root_cause_exception()),
        "Name" => String.t() | atom(),
        "Remote" => boolean()
      }

  """
  @type error_root_cause_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_trace_segment_destination_request() :: %{
        optional("Destination") => list(any())
      }

  """
  @type update_trace_segment_destination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_retrieved_traces_graph_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("RetrievalToken") => String.t() | atom()
      }

  """
  @type get_retrieved_traces_graph_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_sampling_rule_result() :: %{
        "SamplingRuleRecord" => sampling_rule_record()
      }

  """
  @type delete_sampling_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sampling_rule_request() :: %{
        optional("Tags") => list(tag()),
        required("SamplingRule") => sampling_rule()
      }

  """
  @type create_sampling_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("BypassPolicyLockoutCheck") => boolean(),
        optional("PolicyRevisionId") => String.t() | atom(),
        required("PolicyDocument") => String.t() | atom(),
        required("PolicyName") => String.t() | atom()
      }

  """
  @type put_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lockout_prevention_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type lockout_prevention_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alias() :: %{
        "Name" => String.t() | atom(),
        "Names" => list(String.t() | atom()),
        "Type" => String.t() | atom()
      }

  """
  @type alias() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_trace_retrieval_result() :: %{}

  """
  @type cancel_trace_retrieval_result() :: %{}

  @typedoc """

  ## Example:

      put_trace_segments_result() :: %{
        "UnprocessedTraceSegments" => list(unprocessed_trace_segment())
      }

  """
  @type put_trace_segments_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forecast_statistics() :: %{
        "FaultCountHigh" => float(),
        "FaultCountLow" => float()
      }

  """
  @type forecast_statistics() :: %{(String.t() | atom()) => any()}

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
  @type sampling_rule_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type rule_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sampling_statistic_summaries_request() :: %{
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_sampling_statistic_summaries_request() :: %{(String.t() | atom()) => any()}

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
  @type backend_connection_errors() :: %{(String.t() | atom()) => any()}

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
  @type telemetry_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_indexing_rules_result() :: %{
        "IndexingRules" => list(indexing_rule()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_indexing_rules_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ResourceARN") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trace_segment_destination_request() :: %{}

  """
  @type get_trace_segment_destination_request() :: %{}

  @typedoc """

  ## Example:

      service_id() :: %{
        "AccountId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Names" => list(String.t() | atom()),
        "Type" => String.t() | atom()
      }

  """
  @type service_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trace_summary() :: %{
        "Annotations" => map(),
        "AvailabilityZones" => list(availability_zone_detail()),
        "Duration" => float(),
        "EntryPoint" => service_id(),
        "ErrorRootCauses" => list(error_root_cause()),
        "FaultRootCauses" => list(fault_root_cause()),
        "HasError" => boolean(),
        "HasFault" => boolean(),
        "HasThrottle" => boolean(),
        "Http" => http(),
        "Id" => String.t() | atom(),
        "InstanceIds" => list(instance_id_detail()),
        "IsPartial" => boolean(),
        "MatchedEventTime" => non_neg_integer(),
        "ResourceARNs" => list(resource_arn_detail()),
        "ResponseTime" => float(),
        "ResponseTimeRootCauses" => list(response_time_root_cause()),
        "Revision" => integer(),
        "ServiceIds" => list(service_id()),
        "StartTime" => non_neg_integer(),
        "Users" => list(trace_user())
      }

  """
  @type trace_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_group_result() :: %{
        "Group" => group()
      }

  """
  @type update_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "FilterExpression" => String.t() | atom(),
        "GroupARN" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "InsightsConfiguration" => insights_configuration()
      }

  """
  @type group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_impact_statistics() :: %{
        "FaultCount" => float(),
        "OkCount" => float(),
        "TotalCount" => float()
      }

  """
  @type request_impact_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fault_root_cause() :: %{
        "ClientImpacting" => boolean(),
        "Services" => list(fault_root_cause_service())
      }

  """
  @type fault_root_cause() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malformed_policy_document_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type malformed_policy_document_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{
        optional("GroupARN") => String.t() | atom(),
        optional("GroupName") => String.t() | atom()
      }

  """
  @type delete_group_request() :: %{(String.t() | atom()) => any()}

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
  @type service_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sampling_rules_result() :: %{
        "NextToken" => String.t() | atom(),
        "SamplingRuleRecords" => list(sampling_rule_record())
      }

  """
  @type get_sampling_rules_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trace_user() :: %{
        "ServiceIds" => list(service_id()),
        "UserName" => String.t() | atom()
      }

  """
  @type trace_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      response_time_root_cause_entity() :: %{
        "Coverage" => float(),
        "Name" => String.t() | atom(),
        "Remote" => boolean()
      }

  """
  @type response_time_root_cause_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t() | atom(),
        required("PolicyName") => String.t() | atom()
      }

  """
  @type delete_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_summary() :: %{
        "FilterExpression" => String.t() | atom(),
        "GroupARN" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "InsightsConfiguration" => insights_configuration()
      }

  """
  @type group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_impact_graph_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("EndTime") => non_neg_integer(),
        required("InsightId") => String.t() | atom(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_insight_impact_graph_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trace_segment_destination_result() :: %{
        "Destination" => list(any()),
        "Status" => list(any())
      }

  """
  @type get_trace_segment_destination_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_arn_detail() :: %{
        "ARN" => String.t() | atom()
      }

  """
  @type resource_arn_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      root_cause_exception() :: %{
        "Message" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type root_cause_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insight() :: %{
        "Categories" => list(list(any())()),
        "ClientRequestImpactStatistics" => request_impact_statistics(),
        "EndTime" => non_neg_integer(),
        "GroupARN" => String.t() | atom(),
        "GroupName" => String.t() | atom(),
        "InsightId" => String.t() | atom(),
        "RootCauseServiceId" => service_id(),
        "RootCauseServiceRequestImpactStatistics" => request_impact_statistics(),
        "StartTime" => non_neg_integer(),
        "State" => list(any()),
        "Summary" => String.t() | atom(),
        "TopAnomalousServices" => list(anomalous_service())
      }

  """
  @type insight() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_result() :: %{}

  """
  @type delete_resource_policy_result() :: %{}

  @typedoc """

  ## Example:

      edge() :: %{
        "Aliases" => list(alias()),
        "EdgeType" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "ReceivedEventAgeHistogram" => list(histogram_entry()),
        "ReferenceId" => integer(),
        "ResponseTimeHistogram" => list(histogram_entry()),
        "StartTime" => non_neg_integer(),
        "SummaryStatistics" => edge_statistics()
      }

  """
  @type edge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_group_request() :: %{
        optional("GroupARN") => String.t() | atom(),
        optional("GroupName") => String.t() | atom()
      }

  """
  @type get_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_trace_retrieval_request() :: %{
        required("RetrievalToken") => String.t() | atom()
      }

  """
  @type cancel_trace_retrieval_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_retrieved_traces_graph_result() :: %{
        "NextToken" => String.t() | atom(),
        "RetrievalStatus" => list(any()),
        "Services" => list(retrieved_service())
      }

  """
  @type get_retrieved_traces_graph_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      histogram_entry() :: %{
        "Count" => integer(),
        "Value" => float()
      }

  """
  @type histogram_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_time_series_service_statistics_result() :: %{
        "ContainsOldGroupVersions" => boolean(),
        "NextToken" => String.t() | atom(),
        "TimeSeriesServiceStatistics" => list(time_series_service_statistics())
      }

  """
  @type get_time_series_service_statistics_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_summaries_result() :: %{
        "InsightSummaries" => list(insight_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_insight_summaries_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_encryption_config_result() :: %{
        "EncryptionConfig" => encryption_config()
      }

  """
  @type get_encryption_config_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sampling_statistics_document() :: %{
        "BorrowCount" => integer(),
        "ClientID" => String.t() | atom(),
        "RequestCount" => integer(),
        "RuleName" => String.t() | atom(),
        "SampledCount" => integer(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type sampling_statistics_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceName" => String.t() | atom()
      }

  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_impact_graph_result() :: %{
        "EndTime" => non_neg_integer(),
        "InsightId" => String.t() | atom(),
        "NextToken" => String.t() | atom(),
        "ServiceGraphEndTime" => non_neg_integer(),
        "ServiceGraphStartTime" => non_neg_integer(),
        "Services" => list(insight_impact_graph_service()),
        "StartTime" => non_neg_integer()
      }

  """
  @type get_insight_impact_graph_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_indexing_rule_result() :: %{
        "IndexingRule" => indexing_rule()
      }

  """
  @type update_indexing_rule_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_insight_result() :: %{
        "Insight" => insight()
      }

  """
  @type get_insight_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http() :: %{
        "ClientIp" => String.t() | atom(),
        "HttpMethod" => String.t() | atom(),
        "HttpStatus" => integer(),
        "HttpURL" => String.t() | atom(),
        "UserAgent" => String.t() | atom()
      }

  """
  @type http() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_count_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type policy_count_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_indexing_rule_request() :: %{
        required("Name") => String.t() | atom(),
        required("Rule") => list()
      }

  """
  @type update_indexing_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_policies_result() :: %{
        "NextToken" => String.t() | atom(),
        "ResourcePolicies" => list(resource_policy())
      }

  """
  @type list_resource_policies_result() :: %{(String.t() | atom()) => any()}

  @type batch_get_traces_errors() :: invalid_request_exception() | throttled_exception()

  @type cancel_trace_retrieval_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

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

  @type get_indexing_rules_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_events_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_impact_graph_errors() :: invalid_request_exception() | throttled_exception()

  @type get_insight_summaries_errors() :: invalid_request_exception() | throttled_exception()

  @type get_retrieved_traces_graph_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

  @type get_sampling_rules_errors() :: invalid_request_exception() | throttled_exception()

  @type get_sampling_statistic_summaries_errors() ::
          invalid_request_exception() | throttled_exception()

  @type get_sampling_targets_errors() :: invalid_request_exception() | throttled_exception()

  @type get_service_graph_errors() :: invalid_request_exception() | throttled_exception()

  @type get_time_series_service_statistics_errors() ::
          invalid_request_exception() | throttled_exception()

  @type get_trace_graph_errors() :: invalid_request_exception() | throttled_exception()

  @type get_trace_segment_destination_errors() ::
          invalid_request_exception() | throttled_exception()

  @type get_trace_summaries_errors() :: invalid_request_exception() | throttled_exception()

  @type list_resource_policies_errors() :: invalid_request_exception() | throttled_exception()

  @type list_retrieved_traces_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

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

  @type start_trace_retrieval_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type untag_resource_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

  @type update_group_errors() :: invalid_request_exception() | throttled_exception()

  @type update_indexing_rule_errors() ::
          invalid_request_exception() | resource_not_found_exception() | throttled_exception()

  @type update_sampling_rule_errors() :: invalid_request_exception() | throttled_exception()

  @type update_trace_segment_destination_errors() ::
          invalid_request_exception() | throttled_exception()

  def metadata do
    %{
      api_version: "2016-04-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "xray",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "XRay",
      signature_version: "v4",
      signing_name: "xray",
      target_prefix: nil
    }
  end

  @doc """

  You cannot find traces through this API if Transaction Search is enabled since
  trace is not indexed in X-Ray.

  Retrieves a list of traces specified by ID. Each trace is a collection of
  segment
  documents that originates from a single request. Use `GetTraceSummaries` to get
  a
  list of trace IDs.
  """
  @spec batch_get_traces(map(), batch_get_traces_request(), list()) ::
          {:ok, batch_get_traces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_traces_errors()}
  def batch_get_traces(%Client{} = client, input, options \\ []) do
    url_path = "/Traces"
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

  Cancels an ongoing trace retrieval job initiated by `StartTraceRetrieval` using
  the provided `RetrievalToken`.

  A successful cancellation will return an HTTP 200 response.
  """
  @spec cancel_trace_retrieval(map(), cancel_trace_retrieval_request(), list()) ::
          {:ok, cancel_trace_retrieval_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_trace_retrieval_errors()}
  def cancel_trace_retrieval(%Client{} = client, input, options \\ []) do
    url_path = "/CancelTraceRetrieval"
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
  Creates a group resource with a name and a filter expression.
  """
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/CreateGroup"
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
          | {:error, term()}
          | {:error, create_sampling_rule_errors()}
  def create_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/CreateSamplingRule"
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
  Deletes a group resource.
  """
  @spec delete_group(map(), delete_group_request(), list()) ::
          {:ok, delete_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteGroup"
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
  Deletes a resource policy from the target Amazon Web Services account.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteResourcePolicy"
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
  Deletes a sampling rule.
  """
  @spec delete_sampling_rule(map(), delete_sampling_rule_request(), list()) ::
          {:ok, delete_sampling_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sampling_rule_errors()}
  def delete_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSamplingRule"
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
  Retrieves the current encryption configuration for X-Ray data.
  """
  @spec get_encryption_config(map(), get_encryption_config_request(), list()) ::
          {:ok, get_encryption_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_encryption_config_errors()}
  def get_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/EncryptionConfig"
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
  Retrieves group resource details.
  """
  @spec get_group(map(), get_group_request(), list()) ::
          {:ok, get_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, input, options \\ []) do
    url_path = "/GetGroup"
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
  Retrieves all active group details.
  """
  @spec get_groups(map(), get_groups_request(), list()) ::
          {:ok, get_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_groups_errors()}
  def get_groups(%Client{} = client, input, options \\ []) do
    url_path = "/Groups"
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

  Retrieves all indexing rules.

  Indexing rules are used to determine the server-side sampling rate for spans
  ingested through the CloudWatchLogs destination and indexed by X-Ray. For more
  information, see [Transaction Search](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).
  """
  @spec get_indexing_rules(map(), get_indexing_rules_request(), list()) ::
          {:ok, get_indexing_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_indexing_rules_errors()}
  def get_indexing_rules(%Client{} = client, input, options \\ []) do
    url_path = "/GetIndexingRules"
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
  Retrieves the summary information of an insight.

  This includes impact to clients and
  root cause services, the top anomalous services, the category, the state of the
  insight,
  and the start and end time of the insight.
  """
  @spec get_insight(map(), get_insight_request(), list()) ::
          {:ok, get_insight_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_insight_errors()}
  def get_insight(%Client{} = client, input, options \\ []) do
    url_path = "/Insight"
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
          | {:error, term()}
          | {:error, get_insight_events_errors()}
  def get_insight_events(%Client{} = client, input, options \\ []) do
    url_path = "/InsightEvents"
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
  Retrieves a service graph structure filtered by the specified insight.

  The service graph is limited to only
  structural information. For a complete service graph, use this API with the
  GetServiceGraph API.
  """
  @spec get_insight_impact_graph(map(), get_insight_impact_graph_request(), list()) ::
          {:ok, get_insight_impact_graph_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_insight_impact_graph_errors()}
  def get_insight_impact_graph(%Client{} = client, input, options \\ []) do
    url_path = "/InsightImpactGraph"
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
  Retrieves the summaries of all insights in the specified group matching the
  provided filter values.
  """
  @spec get_insight_summaries(map(), get_insight_summaries_request(), list()) ::
          {:ok, get_insight_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_insight_summaries_errors()}
  def get_insight_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/InsightSummaries"
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

  Retrieves a service graph for traces based on the specified `RetrievalToken`
  from the CloudWatch log group generated by Transaction Search.

  This API does not initiate a retrieval job. You must first execute
  `StartTraceRetrieval` to obtain the required `RetrievalToken`.

  The trace graph describes services that process incoming requests and any
  downstream services they call, which may include Amazon Web Services resources,
  external APIs, or databases.

  The response is empty until the `RetrievalStatus` is *COMPLETE*. Retry the
  request after the status changes from *RUNNING* or *SCHEDULED* to *COMPLETE* to
  access the full service graph.

  When CloudWatch log is the destination, this API can support cross-account
  observability and service graph retrieval across linked accounts.

  For retrieving graphs from X-Ray directly as opposed to the Transaction-Search
  Log group, see
  [GetTraceGraph](https://docs.aws.amazon.com/xray/latest/api/API_GetTraceGraph.html).
  """
  @spec get_retrieved_traces_graph(map(), get_retrieved_traces_graph_request(), list()) ::
          {:ok, get_retrieved_traces_graph_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_retrieved_traces_graph_errors()}
  def get_retrieved_traces_graph(%Client{} = client, input, options \\ []) do
    url_path = "/GetRetrievedTracesGraph"
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
  Retrieves all sampling rules.
  """
  @spec get_sampling_rules(map(), get_sampling_rules_request(), list()) ::
          {:ok, get_sampling_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sampling_rules_errors()}
  def get_sampling_rules(%Client{} = client, input, options \\ []) do
    url_path = "/GetSamplingRules"
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
  Retrieves information about recent sampling results for all sampling rules.
  """
  @spec get_sampling_statistic_summaries(
          map(),
          get_sampling_statistic_summaries_request(),
          list()
        ) ::
          {:ok, get_sampling_statistic_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sampling_statistic_summaries_errors()}
  def get_sampling_statistic_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/SamplingStatisticSummaries"
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
  Requests a sampling quota for rules that the service is using to sample
  requests.
  """
  @spec get_sampling_targets(map(), get_sampling_targets_request(), list()) ::
          {:ok, get_sampling_targets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sampling_targets_errors()}
  def get_sampling_targets(%Client{} = client, input, options \\ []) do
    url_path = "/SamplingTargets"
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
          | {:error, term()}
          | {:error, get_service_graph_errors()}
  def get_service_graph(%Client{} = client, input, options \\ []) do
    url_path = "/ServiceGraph"
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
          | {:error, term()}
          | {:error, get_time_series_service_statistics_errors()}
  def get_time_series_service_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/TimeSeriesServiceStatistics"
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
  Retrieves a service graph for one or more specific trace IDs.
  """
  @spec get_trace_graph(map(), get_trace_graph_request(), list()) ::
          {:ok, get_trace_graph_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trace_graph_errors()}
  def get_trace_graph(%Client{} = client, input, options \\ []) do
    url_path = "/TraceGraph"
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

  Retrieves the current destination of data sent to `PutTraceSegments` and
  *OpenTelemetry protocol (OTLP)* endpoint.

  The Transaction Search feature requires a CloudWatchLogs destination. For more
  information, see [Transaction Search](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html)
  and
  [OpenTelemetry](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-OpenTelemetry-Sections.html).
  """
  @spec get_trace_segment_destination(map(), get_trace_segment_destination_request(), list()) ::
          {:ok, get_trace_segment_destination_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trace_segment_destination_errors()}
  def get_trace_segment_destination(%Client{} = client, input, options \\ []) do
    url_path = "/GetTraceSegmentDestination"
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
  see [Use filter expressions](https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-console.html#xray-console-filters)
  in the *Amazon Web Services X-Ray Developer Guide*.
  """
  @spec get_trace_summaries(map(), get_trace_summaries_request(), list()) ::
          {:ok, get_trace_summaries_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trace_summaries_errors()}
  def get_trace_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/TraceSummaries"
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
  Returns the list of resource policies in the target Amazon Web Services account.
  """
  @spec list_resource_policies(map(), list_resource_policies_request(), list()) ::
          {:ok, list_resource_policies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_policies_errors()}
  def list_resource_policies(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourcePolicies"
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

  Retrieves a list of traces for a given `RetrievalToken` from the CloudWatch log
  group generated by Transaction Search.

  For information on what each trace returns, see
  [BatchGetTraces](https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html). 
  This API does not initiate a retrieval process. To start a trace retrieval, use
  `StartTraceRetrieval`, which generates the required `RetrievalToken`.

  When the `RetrievalStatus` is not *COMPLETE*, the API will return an empty
  response. Retry the request once the retrieval has completed to access the full
  list of traces.

  For cross-account observability, this API can retrieve traces from linked
  accounts when CloudWatch log is set as the destination across relevant accounts.
  For more details, see [CloudWatch cross-account
  observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).

  For retrieving data from X-Ray directly as opposed to the Transaction Search
  generated log group, see
  [BatchGetTraces](https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html).
  """
  @spec list_retrieved_traces(map(), list_retrieved_traces_request(), list()) ::
          {:ok, list_retrieved_traces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_retrieved_traces_errors()}
  def list_retrieved_traces(%Client{} = client, input, options \\ []) do
    url_path = "/ListRetrievedTraces"
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
  Returns a list of tags that are applied to the specified Amazon Web Services
  X-Ray group or sampling rule.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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
  Updates the encryption configuration for X-Ray data.
  """
  @spec put_encryption_config(map(), put_encryption_config_request(), list()) ::
          {:ok, put_encryption_config_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_encryption_config_errors()}
  def put_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/PutEncryptionConfig"
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
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutResourcePolicy"
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
  Used by the Amazon Web Services X-Ray daemon to upload telemetry.
  """
  @spec put_telemetry_records(map(), put_telemetry_records_request(), list()) ::
          {:ok, put_telemetry_records_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_telemetry_records_errors()}
  def put_telemetry_records(%Client{} = client, input, options \\ []) do
    url_path = "/TelemetryRecords"
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
  Uploads segment documents to Amazon Web Services X-Ray.

  A segment document can be a completed segment, an in-progress segment, or an
  array of
  subsegments.

  Segments must include the following fields. For the full segment document
  schema, see
  [Amazon Web Services X-Ray Segment
  Documents](https://docs.aws.amazon.com/xray/latest/devguide/aws-xray-interface-api.html#xray-api-segmentdocuments.html)
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
  1-58406520-a006649127e371903a2de979. For trace IDs created by an X-Ray SDK, or
  by Amazon Web Services services
  integrated with X-Ray, a trace ID includes:

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

  Trace IDs created via OpenTelemetry have a different format based on the
  [W3C Trace Context specification](https://www.w3.org/TR/trace-context/).
  A W3C trace ID must be formatted in the X-Ray trace ID format when sending to
  X-Ray. For example, a W3C
  trace ID `4efaaf4d1e8720b39541901950019ee5` should be formatted as
  `1-4efaaf4d-1e8720b39541901950019ee5` when sending to X-Ray. While X-Ray trace
  IDs include
  the original request timestamp in Unix epoch time, this is not required or
  validated.
  """
  @spec put_trace_segments(map(), put_trace_segments_request(), list()) ::
          {:ok, put_trace_segments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_trace_segments_errors()}
  def put_trace_segments(%Client{} = client, input, options \\ []) do
    url_path = "/TraceSegments"
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

  Initiates a trace retrieval process using the specified time range and for the
  given trace IDs in the Transaction Search generated CloudWatch log group.

  For more information, see [Transaction Search](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).

  API returns a `RetrievalToken`, which can be used with `ListRetrievedTraces` or
  `GetRetrievedTracesGraph` to fetch results. Retrievals will time out after 60
  minutes. To execute long time ranges, consider segmenting into multiple
  retrievals.

  If you are using [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html),
  you can use this operation in a monitoring account to retrieve data from a
  linked source account, as long as both accounts have transaction search enabled.

  For retrieving data from X-Ray directly as opposed to the Transaction-Search Log
  group, see
  [BatchGetTraces](https://docs.aws.amazon.com/xray/latest/api/API_BatchGetTraces.html).
  """
  @spec start_trace_retrieval(map(), start_trace_retrieval_request(), list()) ::
          {:ok, start_trace_retrieval_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_trace_retrieval_errors()}
  def start_trace_retrieval(%Client{} = client, input, options \\ []) do
    url_path = "/StartTraceRetrieval"
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
  Applies tags to an existing Amazon Web Services X-Ray group or sampling rule.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
  Removes tags from an Amazon Web Services X-Ray group or sampling rule.

  You cannot edit or delete system
  tags (those with an `aws:` prefix).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
  Updates a group resource.
  """
  @spec update_group(map(), update_group_request(), list()) ::
          {:ok, update_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_group_errors()}
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateGroup"
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

  Modifies an indexing rule’s configuration.

  Indexing rules are used for determining the sampling rate for spans indexed from
  CloudWatch Logs. For more information, see [Transaction Search](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).
  """
  @spec update_indexing_rule(map(), update_indexing_rule_request(), list()) ::
          {:ok, update_indexing_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_indexing_rule_errors()}
  def update_indexing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateIndexingRule"
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
  Modifies a sampling rule's configuration.
  """
  @spec update_sampling_rule(map(), update_sampling_rule_request(), list()) ::
          {:ok, update_sampling_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sampling_rule_errors()}
  def update_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSamplingRule"
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

  Modifies the destination of data sent to `PutTraceSegments`.

  The Transaction Search feature requires the CloudWatchLogs destination. For more
  information, see [Transaction Search](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Transaction-Search.html).
  """
  @spec update_trace_segment_destination(
          map(),
          update_trace_segment_destination_request(),
          list()
        ) ::
          {:ok, update_trace_segment_destination_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trace_segment_destination_errors()}
  def update_trace_segment_destination(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTraceSegmentDestination"
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
end
