# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruProfiler do
  @moduledoc """
  This section provides documentation for the Amazon CodeGuru Profiler API
  operations.

  <pre>` &lt;p&gt;Amazon CodeGuru Profiler collects runtime performance data
  from your live applications, and provides recommendations that can help you
  fine-tune your application performance. Using machine learning algorithms,
  CodeGuru Profiler can help you find your most expensive lines of code and
  suggest ways you can improve efficiency and remove CPU bottlenecks.
  &lt;/p&gt; &lt;p&gt;Amazon CodeGuru Profiler provides different
  visualizations of profiling data to help you identify what code is running
  on the CPU, see how much time is consumed, and suggest ways to reduce CPU
  utilization. &lt;/p&gt; &lt;note&gt; &lt;p&gt;Amazon CodeGuru Profiler
  currently supports applications written in all Java virtual machine (JVM)
  languages. While CodeGuru Profiler supports both visualizations and
  recommendations for applications written in Java, it can also generate
  visualizations and a subset of recommendations for applications written in
  other JVM languages.&lt;/p&gt; &lt;/note&gt; &lt;p&gt; For more
  information, see &lt;a
  href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html&quot;&gt;What
  is Amazon CodeGuru Profiler&lt;/a&gt; in the &lt;i&gt;Amazon CodeGuru
  Profiler User Guide&lt;/i&gt;. &lt;/p&gt; `</pre>
  """

  @doc """
  Add up to 2 anomaly notifications channels for a profiling group.
  """
  def add_notification_channels(client, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/notificationConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns the time series of values for a requested list of frame metrics
  from a time period.
  """
  def batch_get_frame_metric_data(client, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/frames/-/metrics"
    headers = []
    {query_, input} =
      [
        {"endTime", "endTime"},
        {"period", "period"},
        {"startTime", "startTime"},
        {"targetResolution", "targetResolution"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Used by profiler agents to report their current state and to receive remote
  configuration updates. For example, `ConfigureAgent` can be used to tell
  and agent whether to profile or not and for how long to return profiling
  data.
  """
  def configure_agent(client, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/configureAgent"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a profiling group.
  """
  def create_profiling_group(client, input, options \\ []) do
    path_ = "/profilingGroups"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes a profiling group.
  """
  def delete_profiling_group(client, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Returns a [ `ProfilingGroupDescription`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
  object that contains information about the requested profiling group.
  """
  def describe_profiling_group(client, profiling_group_name, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of [ `FindingsReportSummary`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html)
  objects that contain analysis results for all profiling groups in your AWS
  account.
  """
  def get_findings_report_account_summary(client, daily_reports_only \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/internal/findingsReports"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(daily_reports_only) do
      [{"dailyReportsOnly", daily_reports_only} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Get the current configuration for anomaly notifications for a profiling
  group.
  """
  def get_notification_configuration(client, profiling_group_name, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/notificationConfiguration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the JSON-formatted resource-based policy on a profiling group.
  """
  def get_policy(client, profiling_group_name, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/policy"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the aggregated profile of a profiling group for a specified time
  range. Amazon CodeGuru Profiler collects posted agent profiles for a
  profiling group into aggregated profiles.

  <pre>` &lt;note&gt; &lt;p&gt; Because aggregated profiles expire over time
  &lt;code&gt;GetProfile&lt;/code&gt; is not idempotent. &lt;/p&gt;
  &lt;/note&gt; &lt;p&gt; Specify the time range for the requested aggregated
  profile using 1 or 2 of the following parameters:
  &lt;code&gt;startTime&lt;/code&gt;, &lt;code&gt;endTime&lt;/code&gt;,
  &lt;code&gt;period&lt;/code&gt;. The maximum time range allowed is 7 days.
  If you specify all 3 parameters, an exception is thrown. If you specify
  only &lt;code&gt;period&lt;/code&gt;, the latest aggregated profile is
  returned. &lt;/p&gt; &lt;p&gt; Aggregated profiles are available with
  aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The
  aggregation period of an aggregated profile determines how long it is
  retained. For more information, see &lt;a
  href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html&quot;&gt;
  &lt;code&gt;AggregatedProfileTime&lt;/code&gt; &lt;/a&gt;. The aggregated
  profile's aggregation period determines how long it is retained by CodeGuru
  Profiler. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If the aggregation
  period is 5 minutes, the aggregated profile is retained for 15 days.
  &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1
  hour, the aggregated profile is retained for 60 days. &lt;/p&gt;
  &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1 day, the
  aggregated profile is retained for 3 years. &lt;/p&gt; &lt;/li&gt;
  &lt;/ul&gt; &lt;p&gt;There are two use cases for calling
  &lt;code&gt;GetProfile&lt;/code&gt;.&lt;/p&gt; &lt;ol&gt; &lt;li&gt;
  &lt;p&gt; If you want to return an aggregated profile that already exists,
  use &lt;a
  href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html&quot;&gt;
  &lt;code&gt;ListProfileTimes&lt;/code&gt; &lt;/a&gt; to view the time
  ranges of existing aggregated profiles. Use them in a
  &lt;code&gt;GetProfile&lt;/code&gt; request to return a specific, existing
  aggregated profile. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If you want
  to return an aggregated profile for a time range that doesn't align with an
  existing aggregated profile, then CodeGuru Profiler makes a best effort to
  combine existing aggregated profiles from the requested time range and
  return them as one aggregated profile. &lt;/p&gt; &lt;p&gt; If aggregated
  profiles do not exist for the full time range requested, then aggregated
  profiles for a smaller time range are returned. For example, if the
  requested time range is from 00:00 to 00:20, and the existing aggregated
  profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15
  to 00:20 are returned. &lt;/p&gt; &lt;/li&gt; &lt;/ol&gt; `</pre>
  """
  def get_profile(client, profiling_group_name, end_time \\ nil, max_depth \\ nil, period \\ nil, start_time \\ nil, accept \\ nil, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/profile"
    headers = []
    headers = if !is_nil(accept) do
      [{"Accept", accept} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(period) do
      [{"period", period} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_depth) do
      [{"maxDepth", max_depth} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    case request(client, :get, path_, query_, headers, nil, options, 200) do
      {:ok, body, response} when not is_nil(body) ->
        body =
          [
            {"Content-Encoding", "contentEncoding"},
            {"Content-Type", "contentType"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Returns a list of [ `Recommendation`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html)
  objects that contain recommendations for a profiling group for a given time
  period. A list of [ `Anomaly`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html)
  objects that contains details about anomalies detected in the profiling
  group for the same time period is also returned.
  """
  def get_recommendations(client, profiling_group_name, end_time, locale \\ nil, start_time, options \\ []) do
    path_ = "/internal/profilingGroups/#{URI.encode(profiling_group_name)}/recommendations"
    headers = []
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(locale) do
      [{"locale", locale} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List the available reports for a given profiling group and time range.
  """
  def list_findings_reports(client, profiling_group_name, daily_reports_only \\ nil, end_time, max_results \\ nil, next_token \\ nil, start_time, options \\ []) do
    path_ = "/internal/profilingGroups/#{URI.encode(profiling_group_name)}/findingsReports"
    headers = []
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(daily_reports_only) do
      [{"dailyReportsOnly", daily_reports_only} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the start times of the available aggregated profiles of a profiling
  group for an aggregation period within the specified time range.
  """
  def list_profile_times(client, profiling_group_name, end_time, max_results \\ nil, next_token \\ nil, order_by \\ nil, period, start_time, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/profileTimes"
    headers = []
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(period) do
      [{"period", period} | query_]
    else
      query_
    end
    query_ = if !is_nil(order_by) do
      [{"orderBy", order_by} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of profiling groups. The profiling groups are returned as [
  `ProfilingGroupDescription`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
  objects.
  """
  def list_profiling_groups(client, include_description \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/profilingGroups"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(include_description) do
      [{"includeDescription", include_description} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the tags that are assigned to a specified resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Submits profiling data to an aggregated profile of a profiling group. To
  get an aggregated profile that is created with this profiling data, use [
  `GetProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html).
  """
  def post_agent_profile(client, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/agentProfile"
    {headers, input} =
      [
        {"contentType", "Content-Type"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"profileToken", "profileToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Adds permissions to a profiling group's resource-based policy that are
  provided using an action group. If a profiling group doesn't have a
  resource-based policy, one is created for it using the permissions in the
  action group and the roles and users in the `principals` parameter.

  <pre>` &lt;p&gt; The one supported action group that can be added is
  &lt;code&gt;agentPermission&lt;/code&gt; which grants
  &lt;code&gt;ConfigureAgent&lt;/code&gt; and
  &lt;code&gt;PostAgent&lt;/code&gt; permissions. For more information, see
  &lt;a
  href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html&quot;&gt;Resource-based
  policies in CodeGuru Profiler&lt;/a&gt; in the &lt;i&gt;Amazon CodeGuru
  Profiler User Guide&lt;/i&gt;, &lt;a
  href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html&quot;&gt;
  &lt;code&gt;ConfigureAgent&lt;/code&gt; &lt;/a&gt;, and &lt;a
  href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html&quot;&gt;
  &lt;code&gt;PostAgentProfile&lt;/code&gt; &lt;/a&gt;. &lt;/p&gt; &lt;p&gt;
  The first time you call &lt;code&gt;PutPermission&lt;/code&gt; on a
  profiling group, do not specify a &lt;code&gt;revisionId&lt;/code&gt;
  because it doesn't have a resource-based policy. Subsequent calls must
  provide a &lt;code&gt;revisionId&lt;/code&gt; to specify which revision of
  the resource-based policy to add the permissions to. &lt;/p&gt; &lt;p&gt;
  The response contains the profiling group's JSON-formatted resource policy.
  &lt;/p&gt; `</pre>
  """
  def put_permission(client, action_group, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/policy/#{URI.encode(action_group)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Remove one anomaly notifications channel for a profiling group.
  """
  def remove_notification_channel(client, channel_id, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/notificationConfiguration/#{URI.encode(channel_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Removes permissions from a profiling group's resource-based policy that are
  provided using an action group. The one supported action group that can be
  removed is `agentPermission` which grants `ConfigureAgent` and `PostAgent`
  permissions. For more information, see [Resource-based policies in CodeGuru
  Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html)
  in the *Amazon CodeGuru Profiler User Guide*, [ `ConfigureAgent`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html),
  and [ `PostAgentProfile`
  ](https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html).
  """
  def remove_permission(client, action_group, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}/policy/#{URI.encode(action_group)}"
    headers = []
    {query_, input} =
      [
        {"revisionId", "revisionId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Sends feedback to CodeGuru Profiler about whether the anomaly detected by
  the analysis is useful or not.
  """
  def submit_feedback(client, anomaly_instance_id, profiling_group_name, input, options \\ []) do
    path_ = "/internal/profilingGroups/#{URI.encode(profiling_group_name)}/anomalies/#{URI.encode(anomaly_instance_id)}/feedback"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Use to assign one or more tags to a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Use to remove one or more tags from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates a profiling group.
  """
  def update_profiling_group(client, profiling_group_name, input, options \\ []) do
    path_ = "/profilingGroups/#{URI.encode(profiling_group_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "codeguru-profiler"}
    host = build_host("codeguru-profiler", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload, type \\ :json) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(type)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
