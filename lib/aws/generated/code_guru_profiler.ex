# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruProfiler do
  @moduledoc """
  This section provides documentation for the Amazon CodeGuru Profiler API
  operations.

  Amazon CodeGuru Profiler collects runtime performance data from your live
  applications, and provides recommendations that can help you fine-tune your
  application performance. Using machine learning algorithms, CodeGuru Profiler
  can help you find your most expensive lines of code and suggest ways you can
  improve efficiency and remove CPU bottlenecks.

  Amazon CodeGuru Profiler provides different visualizations of profiling data to
  help you identify what code is running on the CPU, see how much time is
  consumed, and suggest ways to reduce CPU utilization.

  Amazon CodeGuru Profiler currently supports applications written in all Java
  virtual machine (JVM) languages and Python. While CodeGuru Profiler supports
  both visualizations and recommendations for applications written in Java, it can
  also generate visualizations and a subset of recommendations for applications
  written in other JVM languages and Python.

  For more information, see [What is Amazon CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html)
  in the *Amazon CodeGuru Profiler User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-07-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-profiler",
      global?: false,
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
  def add_notification_channels(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path =
      "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/notificationConfiguration"

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
  Returns the time series of values for a requested list of frame metrics from a
  time period.
  """
  def batch_get_frame_metric_data(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/frames/-/metrics"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Used by profiler agents to report their current state and to receive remote
  configuration updates.

  For example, `ConfigureAgent` can be used to tell an agent whether to profile or
  not and for how long to return profiling data.
  """
  def configure_agent(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/configureAgent"
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
  Creates a profiling group.
  """
  def create_profiling_group(%Client{} = client, input, options \\ []) do
    url_path = "/profilingGroups"
    headers = []

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
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a profiling group.
  """
  def delete_profiling_group(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}"
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
      204
    )
  end

  @doc """
  Returns a [ `ProfilingGroupDescription`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
  object that contains information about the requested profiling group.
  """
  def describe_profiling_group(%Client{} = client, profiling_group_name, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of [ `FindingsReportSummary`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html)
  objects that contain analysis results for all profiling groups in your AWS
  account.
  """
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

  ` Because aggregated profiles expire over time `GetProfile` is not idempotent.

  Specify the time range for the requested aggregated profile using 1 or 2 of the
  following parameters: `startTime`, `endTime`, `period`. The maximum time range
  allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If
  you specify only `period`, the latest aggregated profile is returned.

  Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour,
  and 1 day, aligned to UTC. The aggregation period of an aggregated profile
  determines how long it is retained. For more information, see [
  `AggregatedProfileTime`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html).
  The aggregated profile's aggregation period determines how long it is retained
  by CodeGuru Profiler.

    * If the aggregation period is 5 minutes, the aggregated profile is
  retained for 15 days.

    * If the aggregation period is 1 hour, the aggregated profile is
  retained for 60 days.

    * If the aggregation period is 1 day, the aggregated profile is
  retained for 3 years.

  There are two use cases for calling `GetProfile`.

    1. If you want to return an aggregated profile that already exists,
  use [ `ListProfileTimes`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html)
  to view the time ranges of existing aggregated profiles. Use them in a
  `GetProfile` request to return a specific, existing aggregated profile.

    2. If you want to return an aggregated profile for a time range that
  doesn't align with an existing aggregated profile, then CodeGuru Profiler makes
  a best effort to combine existing aggregated profiles from the requested time
  range and return them as one aggregated profile.

  If aggregated profiles do not exist for the full time range requested, then
  aggregated profiles for a smaller time range are returned. For example, if the
  requested time range is from 00:00 to 00:20, and the existing aggregated
  profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to
  00:20 are returned.

  `
  """
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
  Returns a list of [ `Recommendation`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html)
  objects that contain recommendations for a profiling group for a given time
  period.

  A list of [ `Anomaly`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html)
  objects that contains details about anomalies detected in the profiling group
  for the same time period is also returned.
  """
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

  The profiling groups are returned as [ `ProfilingGroupDescription`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
  objects.
  """
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
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Submits profiling data to an aggregated profile of a profiling group.

  To get an aggregated profile that is created with this profiling data, use [
  `GetProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html).
  """
  def post_agent_profile(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/agentProfile"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Adds permissions to a profiling group's resource-based policy that are provided
  using an action group.

  If a profiling group doesn't have a resource-based policy, one is created for it
  using the permissions in the action group and the roles and users in the
  `principals` parameter.

  ` The one supported action group that can be added is `agentPermission` which
  grants `ConfigureAgent` and `PostAgent` permissions. For more information, see
  [Resource-based policies in CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html)
  in the *Amazon CodeGuru Profiler User Guide*, [ `ConfigureAgent`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html),
  and [ `PostAgentProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).

  The first time you call `PutPermission` on a profiling group, do not specify a
  `revisionId` because it doesn't have a resource-based policy. Subsequent calls
  must provide a `revisionId` to specify which revision of the resource-based
  policy to add the permissions to.

  The response contains the profiling group's JSON-formatted resource policy.

  `
  """
  def put_permission(%Client{} = client, action_group, profiling_group_name, input, options \\ []) do
    url_path =
      "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}/policy/#{AWS.Util.encode_uri(action_group)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Remove one anomaly notifications channel for a profiling group.
  """
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
  Removes permissions from a profiling group's resource-based policy that are
  provided using an action group.

  The one supported action group that can be removed is `agentPermission` which
  grants `ConfigureAgent` and `PostAgent` permissions. For more information, see
  [Resource-based policies in CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html)
  in the *Amazon CodeGuru Profiler User Guide*, [ `ConfigureAgent`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html),
  and [ `PostAgentProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).
  """
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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Sends feedback to CodeGuru Profiler about whether the anomaly detected by the
  analysis is useful or not.
  """
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
  Use to assign one or more tags to a resource.
  """
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
  Use to remove one or more tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates a profiling group.
  """
  def update_profiling_group(%Client{} = client, profiling_group_name, input, options \\ []) do
    url_path = "/profilingGroups/#{AWS.Util.encode_uri(profiling_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
