# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruProfiler do
  @moduledoc """

  This section provides documentation for the Amazon CodeGuru Profiler API
  operations.

  Amazon CodeGuru Profiler collects runtime performance data from your live
  applications, and provides
  recommendations that can help you fine-tune your application performance. Using
  machine learning
  algorithms, CodeGuru Profiler can help you find your most expensive lines of
  code and suggest ways you can
  improve efficiency and remove CPU bottlenecks.

  Amazon CodeGuru Profiler provides different visualizations of profiling data to
  help you identify what code is
  running on the CPU, see how much time is consumed, and suggest ways to reduce
  CPU utilization.

  Amazon CodeGuru Profiler currently supports applications written in all Java
  virtual machine (JVM)
  languages and Python. While CodeGuru Profiler supports both visualizations and
  recommendations for applications
  written in Java, it can also generate visualizations and a subset of
  recommendations for
  applications written in other JVM languages and Python.

  For more information, see [What is Amazon CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html)
  in
  the *Amazon CodeGuru Profiler User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_profiling_group_request() :: %{
        "agentOrchestrationConfig" => agent_orchestration_config()
      }

  """
  @type update_profiling_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_reports_response() :: %{
        "findingsReportSummaries" => list(findings_report_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_findings_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profile_times_request() :: %{
        "endTime" => non_neg_integer(),
        "maxResults" => integer(),
        "nextToken" => String.t(),
        "orderBy" => String.t(),
        "period" => String.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type list_profile_times_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anomaly_instance() :: %{
        "endTime" => non_neg_integer(),
        "id" => [String.t()],
        "startTime" => non_neg_integer(),
        "userFeedback" => user_feedback()
      }

  """
  @type anomaly_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timestamp_structure() :: %{
        "value" => non_neg_integer()
      }

  """
  @type timestamp_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      aggregated_profile_time() :: %{
        "period" => String.t(),
        "start" => non_neg_integer()
      }

  """
  @type aggregated_profile_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric() :: %{
        "frameName" => [String.t()],
        "threadStates" => list([String.t()]()),
        "type" => String.t()
      }

  """
  @type metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profiling_status() :: %{
        "latestAgentOrchestratedAt" => non_neg_integer(),
        "latestAgentProfileReportedAt" => non_neg_integer(),
        "latestAggregatedProfile" => aggregated_profile_time()
      }

  """
  @type profiling_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_request() :: %{}

  """
  @type get_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_notification_configuration_request() :: %{}

  """
  @type get_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_profiling_group_response() :: %{}

  """
  @type delete_profiling_group_response() :: %{}

  @typedoc """

  ## Example:

      agent_orchestration_config() :: %{
        "profilingEnabled" => [boolean()]
      }

  """
  @type agent_orchestration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_metric() :: %{
        "frameName" => [String.t()],
        "threadStates" => list([String.t()]()),
        "type" => String.t()
      }

  """
  @type frame_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_agent_profile_request() :: %{
        "agentProfile" => binary(),
        "contentType" => [String.t()],
        "profileToken" => String.t()
      }

  """
  @type post_agent_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_notification_channel_request() :: %{}

  """
  @type remove_notification_channel_request() :: %{}

  @typedoc """

  ## Example:

      list_profile_times_response() :: %{
        "nextToken" => String.t(),
        "profileTimes" => list(profile_time())
      }

  """
  @type list_profile_times_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_profiling_group_request() :: %{}

  """
  @type describe_profiling_group_request() :: %{}

  @typedoc """

  ## Example:

      get_recommendations_response() :: %{
        "anomalies" => list(anomaly()),
        "profileEndTime" => non_neg_integer(),
        "profileStartTime" => non_neg_integer(),
        "profilingGroupName" => String.t(),
        "recommendations" => list(recommendation())
      }

  """
  @type get_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_notification_configuration_response() :: %{
        "notificationConfiguration" => notification_configuration()
      }

  """
  @type get_notification_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_report_account_summary_request() :: %{
        "dailyReportsOnly" => [boolean()],
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type get_findings_report_account_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      submit_feedback_response() :: %{}

  """
  @type submit_feedback_response() :: %{}

  @typedoc """

  ## Example:

      remove_notification_channel_response() :: %{
        "notificationConfiguration" => notification_configuration()
      }

  """
  @type remove_notification_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profiling_groups_request() :: %{
        "includeDescription" => [boolean()],
        "maxResults" => integer(),
        "nextToken" => String.t()
      }

  """
  @type list_profiling_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_agent_profile_response() :: %{}

  """
  @type post_agent_profile_response() :: %{}

  @typedoc """

  ## Example:

      pattern() :: %{
        "countersToAggregate" => list([String.t()]()),
        "description" => [String.t()],
        "id" => [String.t()],
        "name" => [String.t()],
        "resolutionSteps" => [String.t()],
        "targetFrames" => list(list([String.t()]())()),
        "thresholdPercent" => float()
      }

  """
  @type pattern() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_report_account_summary_response() :: %{
        "nextToken" => String.t(),
        "reportSummaries" => list(findings_report_summary())
      }

  """
  @type get_findings_report_account_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_agent_request() :: %{
        "fleetInstanceId" => String.t(),
        "metadata" => map()
      }

  """
  @type configure_agent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_profile_response() :: %{
        "contentEncoding" => [String.t()],
        "contentType" => [String.t()],
        "profile" => binary()
      }

  """
  @type get_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "allMatchesCount" => [integer()],
        "allMatchesSum" => [float()],
        "endTime" => non_neg_integer(),
        "pattern" => pattern(),
        "startTime" => non_neg_integer(),
        "topMatches" => list(match())
      }

  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recommendations_request() :: %{
        "endTime" => non_neg_integer(),
        "locale" => String.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type get_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_permission_request() :: %{
        "revisionId" => String.t()
      }

  """
  @type remove_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_reports_request() :: %{
        "dailyReportsOnly" => [boolean()],
        "endTime" => non_neg_integer(),
        "maxResults" => integer(),
        "nextToken" => String.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type list_findings_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_permission_request() :: %{
        "principals" => list(String.t()),
        "revisionId" => String.t()
      }

  """
  @type put_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_profiling_group_response() :: %{
        "profilingGroup" => profiling_group_description()
      }

  """
  @type describe_profiling_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_permission_response() :: %{
        "policy" => [String.t()],
        "revisionId" => String.t()
      }

  """
  @type put_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_profiling_group_response() :: %{
        "profilingGroup" => profiling_group_description()
      }

  """
  @type update_profiling_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_time() :: %{
        "start" => non_neg_integer()
      }

  """
  @type profile_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_configuration() :: %{
        "channels" => list(channel())
      }

  """
  @type notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_response() :: %{
        "policy" => [String.t()],
        "revisionId" => String.t()
      }

  """
  @type get_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_profiling_group_request() :: %{}

  """
  @type delete_profiling_group_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profiling_group_description() :: %{
        "agentOrchestrationConfig" => agent_orchestration_config(),
        "arn" => String.t(),
        "computePlatform" => String.t(),
        "createdAt" => non_neg_integer(),
        "name" => String.t(),
        "profilingStatus" => profiling_status(),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type profiling_group_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      anomaly() :: %{
        "instances" => list(anomaly_instance()),
        "metric" => metric(),
        "reason" => [String.t()]
      }

  """
  @type anomaly() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profiling_group_response() :: %{
        "profilingGroup" => profiling_group_description()
      }

  """
  @type create_profiling_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_profiling_group_request() :: %{
        "agentOrchestrationConfig" => agent_orchestration_config(),
        "clientToken" => String.t(),
        "computePlatform" => String.t(),
        "profilingGroupName" => String.t(),
        "tags" => map()
      }

  """
  @type create_profiling_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_configuration() :: %{
        "agentParameters" => map(),
        "periodInSeconds" => [integer()],
        "shouldProfile" => [boolean()]
      }

  """
  @type agent_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_profiling_groups_response() :: %{
        "nextToken" => String.t(),
        "profilingGroupNames" => list(String.t()),
        "profilingGroups" => list(profiling_group_description())
      }

  """
  @type list_profiling_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_notification_channels_request() :: %{
        "channels" => list(channel())
      }

  """
  @type add_notification_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_profile_request() :: %{
        "accept" => [String.t()],
        "endTime" => non_neg_integer(),
        "maxDepth" => integer(),
        "period" => String.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type get_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_frame_metric_data_request() :: %{
        "endTime" => non_neg_integer(),
        "frameMetrics" => list(frame_metric()),
        "period" => String.t(),
        "startTime" => non_neg_integer(),
        "targetResolution" => String.t()
      }

  """
  @type batch_get_frame_metric_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel() :: %{
        "eventPublishers" => list(String.t()),
        "id" => String.t(),
        "uri" => String.t()
      }

  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_frame_metric_data_response() :: %{
        "endTime" => non_neg_integer(),
        "endTimes" => list(timestamp_structure()),
        "frameMetricData" => list(frame_metric_datum()),
        "resolution" => String.t(),
        "startTime" => non_neg_integer(),
        "unprocessedEndTimes" => map()
      }

  """
  @type batch_get_frame_metric_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      match() :: %{
        "frameAddress" => [String.t()],
        "targetFramesIndex" => [integer()],
        "thresholdBreachValue" => [float()]
      }

  """
  @type match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      submit_feedback_request() :: %{
        "comment" => [String.t()],
        "type" => String.t()
      }

  """
  @type submit_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      frame_metric_datum() :: %{
        "frameMetric" => frame_metric(),
        "values" => list(float())
      }

  """
  @type frame_metric_datum() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_notification_channels_response() :: %{
        "notificationConfiguration" => notification_configuration()
      }

  """
  @type add_notification_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_agent_response() :: %{
        "configuration" => agent_configuration()
      }

  """
  @type configure_agent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      findings_report_summary() :: %{
        "id" => String.t(),
        "profileEndTime" => non_neg_integer(),
        "profileStartTime" => non_neg_integer(),
        "profilingGroupName" => [String.t()],
        "totalNumberOfFindings" => [integer()]
      }

  """
  @type findings_report_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_permission_response() :: %{
        "policy" => [String.t()],
        "revisionId" => String.t()
      }

  """
  @type remove_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_feedback() :: %{
        "type" => String.t()
      }

  """
  @type user_feedback() :: %{String.t() => any()}

  @type add_notification_channels_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_frame_metric_data_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type configure_agent_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_profiling_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_profiling_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_profiling_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_findings_report_account_summary_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type get_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_policy_errors() ::
          throttling_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_findings_reports_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_times_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profiling_groups_errors() :: throttling_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type post_agent_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_permission_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type remove_notification_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type remove_permission_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type submit_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_profiling_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2019-07-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-profiler",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CodeGuruProfiler",
      signature_version: "v4",
      signing_name: "codeguru-profiler",
      target_prefix: nil
    }
  end

  @doc """
  Add up to 2 anomaly notifications channels for a profiling group.
  """
  @spec add_notification_channels(map(), String.t(), add_notification_channels_request(), list()) ::
          {:ok, add_notification_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_notification_channels_errors()}
  def add_notification_channels(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path =
      "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/notificationConfiguration"

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

  Returns the time series of values for a requested list
  of frame metrics from a time period.
  """
  @spec batch_get_frame_metric_data(
          map(),
          String.t(),
          batch_get_frame_metric_data_request(),
          list()
        ) ::
          {:ok, batch_get_frame_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_frame_metric_data_errors()}
  def batch_get_frame_metric_data(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/frames/-/metrics"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"endTime", "endTime"},
        {"period", "period"},
        {"startTime", "startTime"},
        {"targetResolution", "targetResolution"}
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

  Used by profiler agents to report their current state and to receive remote
  configuration updates.

  For example, `ConfigureAgent` can be used
  to tell an agent whether to profile or not and for how long to return profiling
  data.
  """
  @spec configure_agent(map(), String.t(), configure_agent_request(), list()) ::
          {:ok, configure_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, configure_agent_errors()}
  def configure_agent(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/configureAgent"
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
  Creates a profiling group.
  """
  @spec create_profiling_group(map(), create_profiling_group_request(), list()) ::
          {:ok, create_profiling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_profiling_group_errors()}
  def create_profiling_group(%Client{} = client, input, options \\ []) do
    url_path = "/profilingGroups"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      201
    )
  end

  @doc """
  Deletes a profiling group.
  """
  @spec delete_profiling_group(map(), String.t(), delete_profiling_group_request(), list()) ::
          {:ok, delete_profiling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profiling_group_errors()}
  def delete_profiling_group(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}"
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
      204
    )
  end

  @doc """

  Returns a [
  `ProfilingGroupDescription`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)

  object that contains information about the requested profiling group.
  """
  @spec describe_profiling_group(map(), String.t(), list()) ::
          {:ok, describe_profiling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_profiling_group_errors()}
  def describe_profiling_group(%Client{} = client, profiling_group_name, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a list of
  [
  `FindingsReportSummary`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html)

  objects that contain analysis results for all profiling groups in your AWS
  account.
  """
  @spec get_findings_report_account_summary(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_findings_report_account_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_report_account_summary_errors()}
  def get_findings_report_account_summary(
        %Client{} = client,
        daily_reports_only \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/internal/findingsReports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(daily_reports_only) do
        [{"dailyReportsOnly", daily_reports_only} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the current configuration for anomaly notifications for a profiling group.
  """
  @spec get_notification_configuration(map(), String.t(), list()) ::
          {:ok, get_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_notification_configuration_errors()}
  def get_notification_configuration(%Client{} = client, profiling_group_name, options \\ []) do
    url_path =
      "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/notificationConfiguration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns the JSON-formatted resource-based policy on a profiling group.
  """
  @spec get_policy(map(), String.t(), list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, profiling_group_name, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets the aggregated profile of a profiling group for a specified time range.

  Amazon CodeGuru Profiler collects posted agent profiles for a profiling group
  into aggregated profiles.

  Because aggregated profiles expire over time `GetProfile` is not idempotent.

  Specify the time range for the requested aggregated profile using 1 or 2 of the
  following parameters: `startTime`,
  `endTime`, `period`. The maximum time range allowed is 7 days. If you specify
  all 3 parameters,
  an exception is thrown. If you specify only `period`, the latest aggregated
  profile is returned.

  Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour,
  and 1 day, aligned to
  UTC. The aggregation period of an aggregated profile determines how long it is
  retained. For more
  information, see [
  `AggregatedProfileTime`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html).
  The aggregated profile's aggregation period determines how long
  it is retained by CodeGuru Profiler.

    *

  If the aggregation period is 5 minutes, the aggregated profile is retained for
  15 days.

    *

  If the aggregation period is 1 hour, the aggregated profile is retained for 60
  days.

    *

  If the aggregation period is 1 day, the aggregated profile is retained for 3
  years.

  There are two use cases for calling `GetProfile`.

    1.

  If you want to return an aggregated profile that already exists, use
  [
  `ListProfileTimes`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html)
  to
  view the time ranges of existing aggregated profiles. Use them in a `GetProfile`
  request to return a specific,
  existing aggregated profile.

    2.

  If you want to return an aggregated profile for a time range that doesn't align
  with an existing aggregated profile,
  then CodeGuru Profiler makes a best effort to combine existing aggregated
  profiles from the requested time
  range and return them as one aggregated profile.

  If aggregated profiles do not exist for the full time range requested, then
  aggregated profiles for a smaller time range are returned. For example, if the
  requested time range is from 00:00 to 00:20, and the existing aggregated
  profiles are
  from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are
  returned.
  """
  @spec get_profile(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_errors()}
  def get_profile(
        %Client{} = client,
        profiling_group_name,
        end_time \\ nil,
        max_depth \\ nil,
        period \\ nil,
        start_time \\ nil,
        accept \\ nil,
        options \\ []
      ) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/profile"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"Accept", accept} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(period) do
        [{"period", period} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_depth) do
        [{"maxDepth", max_depth} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Encoding", "contentEncoding"}, {"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a list of
  [
  `Recommendation`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html)

  objects that contain recommendations for a profiling group for a given time
  period.

  A list of
  [
  `Anomaly`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html)
  objects that contains details about anomalies detected in the profiling group
  for the same time period is also
  returned.
  """
  @spec get_recommendations(map(), String.t(), String.t(), String.t() | nil, String.t(), list()) ::
          {:ok, get_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendations_errors()}
  def get_recommendations(
        %Client{} = client,
        profiling_group_name,
        end_time,
        locale \\ nil,
        start_time,
        options \\ []
      ) do
    url_path =
      "/internal/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/recommendations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(locale) do
        [{"locale", locale} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the available reports for a given profiling group and time range.
  """
  @spec list_findings_reports(
          map(),
          String.t(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_findings_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_findings_reports_errors()}
  def list_findings_reports(
        %Client{} = client,
        profiling_group_name,
        daily_reports_only \\ nil,
        end_time,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        options \\ []
      ) do
    url_path =
      "/internal/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/findingsReports"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(daily_reports_only) do
        [{"dailyReportsOnly", daily_reports_only} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the start times of the available aggregated profiles of a profiling group
  for an aggregation period within the specified time range.
  """
  @spec list_profile_times(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, list_profile_times_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_times_errors()}
  def list_profile_times(
        %Client{} = client,
        profiling_group_name,
        end_time,
        max_results \\ nil,
        next_token \\ nil,
        order_by \\ nil,
        period,
        start_time,
        options \\ []
      ) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/profileTimes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(period) do
        [{"period", period} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(order_by) do
        [{"orderBy", order_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a list of profiling groups.

  The profiling groups are returned as
  [
  `ProfilingGroupDescription`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)

  objects.
  """
  @spec list_profiling_groups(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_profiling_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profiling_groups_errors()}
  def list_profiling_groups(
        %Client{} = client,
        include_description \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/profilingGroups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_description) do
        [{"includeDescription", include_description} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a list of the tags that are assigned to a specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Submits profiling data to an aggregated profile of a profiling group.

  To get an
  aggregated profile that is created with this profiling data, use
  [
  `GetProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html).
  """
  @spec post_agent_profile(map(), String.t(), post_agent_profile_request(), list()) ::
          {:ok, post_agent_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, post_agent_profile_errors()}
  def post_agent_profile(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/agentProfile"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"profileToken", "profileToken"}
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
      204
    )
  end

  @doc """

  Adds permissions to a profiling group's resource-based policy
  that are provided using an action group.

  If a profiling group doesn't have
  a resource-based policy, one is created for it using the permissions in the
  action group and
  the roles and users in the `principals` parameter.

  The one supported action group that can be added is `agentPermission`
  which grants `ConfigureAgent` and `PostAgent` permissions. For
  more information, see [Resource-based policies in CodeGuru
  Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html)
  in the *Amazon CodeGuru Profiler User
  Guide*, [
  `ConfigureAgent`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html),
  and [
  `PostAgentProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).

  The first time you call `PutPermission` on a profiling group, do not specify a
  `revisionId` because
  it doesn't have a resource-based policy. Subsequent calls must provide a
  `revisionId` to specify
  which revision of the resource-based policy to add the permissions to.

  The response contains the profiling group's JSON-formatted resource policy.
  """
  @spec put_permission(map(), String.t(), String.t(), put_permission_request(), list()) ::
          {:ok, put_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_permission_errors()}
  def put_permission(%Client{} = client, action_group, profiling_group_name, input, options \\ []) do
    url_path =
      "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/policy/#{AWS.Util.encode_uri(action_group)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Remove one anomaly notifications channel for a profiling group.
  """
  @spec remove_notification_channel(
          map(),
          String.t(),
          String.t(),
          remove_notification_channel_request(),
          list()
        ) ::
          {:ok, remove_notification_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_notification_channel_errors()}
  def remove_notification_channel(
        %Client{} = client,
        channel_id,
        profiling_group_name,
        input,
        options \\ []
      ) do
    url_path =
      "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/notificationConfiguration/#{AWS.Util.encode_uri(channel_id)}"

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
  Removes permissions from a profiling group's resource-based policy that are
  provided
  using an action group.

  The one supported action group that can be removed is
  `agentPermission` which grants `ConfigureAgent` and
  `PostAgent` permissions. For more information, see [Resource-based policies in CodeGuru
  Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html)
  in the *Amazon
  CodeGuru Profiler User Guide*, [
  `ConfigureAgent`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html),
  and [
  `PostAgentProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).
  """
  @spec remove_permission(map(), String.t(), String.t(), remove_permission_request(), list()) ::
          {:ok, remove_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_permission_errors()}
  def remove_permission(
        %Client{} = client,
        action_group,
        profiling_group_name,
        input,
        options \\ []
      ) do
    url_path =
      "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/policy/#{AWS.Util.encode_uri(action_group)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"revisionId", "revisionId"}
      ]
      |> Request.build_params(input)

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
  Sends feedback to CodeGuru Profiler about whether the anomaly detected by the
  analysis is
  useful or not.
  """
  @spec submit_feedback(map(), String.t(), String.t(), submit_feedback_request(), list()) ::
          {:ok, submit_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, submit_feedback_errors()}
  def submit_feedback(
        %Client{} = client,
        anomaly_instance_id,
        profiling_group_name,
        input,
        options \\ []
      ) do
    url_path =
      "/internal/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/anomalies/#{AWS.Util.encode_uri(anomaly_instance_id)}/feedback"

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
      204
    )
  end

  @doc """

  Use to assign one or more tags to a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """

  Use to remove one or more tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
      204
    )
  end

  @doc """
  Updates a profiling group.
  """
  @spec update_profiling_group(map(), String.t(), update_profiling_group_request(), list()) ::
          {:ok, update_profiling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_profiling_group_errors()}
  def update_profiling_group(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
