# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.InternetMonitor do
  @moduledoc """
  Amazon CloudWatch Internet Monitor provides visibility into how internet issues
  impact the performance and availability between your applications hosted on
  Amazon Web Services and your end users.

  It can reduce the time it takes for you to diagnose internet issues from days to
  minutes. Internet Monitor uses the connectivity data that Amazon Web Services
  captures from its global networking footprint to calculate a baseline of
  performance and availability for internet traffic. This is the same data that
  Amazon Web Services uses to monitor internet uptime and availability. With those
  measurements as a baseline, Internet Monitor raises awareness for you when there
  are significant problems for your end users in the different geographic
  locations where your application runs.

  Internet Monitor publishes internet measurements to CloudWatch Logs and
  CloudWatch Metrics, to easily support using CloudWatch tools with health
  information for geographies and networks specific to your application. Internet
  Monitor sends health events to Amazon EventBridge so that you can set up
  notifications. If an issue is caused by the Amazon Web Services network, you
  also automatically receive an Amazon Web Services Health Dashboard notification
  with the steps that Amazon Web Services is taking to mitigate the problem.

  To use Internet Monitor, you create a *monitor* and associate your application's
  resources with it - VPCs, NLBs, CloudFront distributions, or WorkSpaces
  directories - so Internet Monitor can determine where your application's
  internet traffic is. Internet Monitor then provides internet measurements from
  Amazon Web Services that are specific to the locations and ASNs (typically,
  internet service providers or ISPs) that communicate with your application.

  For more information, see [Using Amazon CloudWatch Internet Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html)
  in the *Amazon CloudWatch User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-06-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "internetmonitor",
      global?: false,
      protocol: "rest-json",
      service_id: "InternetMonitor",
      signature_version: "v4",
      signing_name: "internetmonitor",
      target_prefix: nil
    }
  end

  @doc """
  Creates a monitor in Amazon CloudWatch Internet Monitor.

  A monitor is built based on information from the application resources that you
  add: VPCs, Network Load Balancers (NLBs), Amazon CloudFront distributions, and
  Amazon WorkSpaces directories. Internet Monitor then publishes internet
  measurements from Amazon Web Services that are specific to the *city-networks*.
  That is, the locations and ASNs (typically internet service providers or ISPs),
  where clients access your application. For more information, see [Using Amazon CloudWatch Internet
  Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html)
  in the *Amazon CloudWatch User Guide*.

  When you create a monitor, you choose the percentage of traffic that you want to
  monitor. You can also set a maximum limit for the number of city-networks where
  client traffic is monitored, that caps the total traffic that Internet Monitor
  monitors. A city-network maximum is the limit of city-networks, but you only pay
  for the number of city-networks that are actually monitored. You can update your
  monitor at any time to change the percentage of traffic to monitor or the
  city-networks maximum. For more information, see [Choosing a city-network maximum
  value](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html)
  in the *Amazon CloudWatch User Guide*.
  """
  def create_monitor(%Client{} = client, input, options \\ []) do
    url_path = "/v20210603/Monitors"
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
  Deletes a monitor in Amazon CloudWatch Internet Monitor.
  """
  def delete_monitor(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}"
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
  Gets information the Amazon CloudWatch Internet Monitor has created and stored
  about a health event for a specified monitor.

  This information includes the impacted locations, and all the information
  related to the event, by location.

  The information returned includes the impact on performance, availability, and
  round-trip time, information about the network providers (ASNs), the event type,
  and so on.

  Information rolled up at the global traffic level is also returned, including
  the impact type and total traffic impact.
  """
  def get_health_event(%Client{} = client, event_id, monitor_name, options \\ []) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/HealthEvents/#{AWS.Util.encode_uri(event_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a monitor in Amazon CloudWatch Internet Monitor based on
  a monitor name.

  The information returned includes the Amazon Resource Name (ARN), create time,
  modified time, resources included in the monitor, and status information.
  """
  def get_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Return the data for a query with the Amazon CloudWatch Internet Monitor query
  interface.

  Specify the query that you want to return results for by providing a `QueryId`
  and a monitor name.

  For more information about using the query interface, including examples, see
  [Using the Amazon CloudWatch Internet Monitor query interface](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html)
  in the Amazon CloudWatch Internet Monitor User Guide.
  """
  def get_query_results(
        %Client{} = client,
        monitor_name,
        query_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries/#{AWS.Util.encode_uri(query_id)}/Results"

    headers = []
    query_params = []

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current status of a query for the Amazon CloudWatch Internet Monitor
  query interface, for a specified query ID and monitor.

  When you run a query, check the status to make sure that the query has
  `SUCCEEDED` before you review the results.

    * `QUEUED`: The query is scheduled to run.

    * `RUNNING`: The query is in progress but not complete.

    * `SUCCEEDED`: The query completed sucessfully.

    * `FAILED`: The query failed due to an error.

    * `CANCELED`: The query was canceled.
  """
  def get_query_status(%Client{} = client, monitor_name, query_id, options \\ []) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries/#{AWS.Util.encode_uri(query_id)}/Status"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all health events for a monitor in Amazon CloudWatch Internet Monitor.

  Returns information for health events including the event start and end time and
  the status.

  Health events that have start times during the time frame that is requested are
  not included in the list of health events.
  """
  def list_health_events(
        %Client{} = client,
        monitor_name,
        end_time \\ nil,
        event_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/HealthEvents"
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
      if !is_nil(event_status) do
        [{"EventStatus", event_status} | query_params]
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
  Lists all of your monitors for Amazon CloudWatch Internet Monitor and their
  statuses, along with the Amazon Resource Name (ARN) and name of each monitor.
  """
  def list_monitors(
        %Client{} = client,
        max_results \\ nil,
        monitor_status \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v20210603/Monitors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(monitor_status) do
        [{"MonitorStatus", monitor_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for a resource.

  Tags are supported only for monitors in Amazon CloudWatch Internet Monitor.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Start a query to return data for a specific query type for the Amazon CloudWatch
  Internet Monitor query interface.

  Specify a time period for the data that you want returned by using `StartTime`
  and `EndTime`. You filter the query results to return by providing parameters
  that you specify with `FilterParameters`.

  For more information about using the query interface, including examples, see
  [Using the Amazon CloudWatch Internet Monitor query interface](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html)
  in the Amazon CloudWatch Internet Monitor User Guide.
  """
  def start_query(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries"
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
  Stop a query that is progress for a specific monitor.
  """
  def stop_query(%Client{} = client, monitor_name, query_id, input, options \\ []) do
    url_path =
      "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}/Queries/#{AWS.Util.encode_uri(query_id)}"

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
  Adds a tag to a resource.

  Tags are supported only for monitors in Amazon CloudWatch Internet Monitor. You
  can add a maximum of 50 tags in Internet Monitor.

  A minimum of one tag is required for this call. It returns an error if you use
  the `TagResource` request with 0 tags.
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
  Removes a tag from a resource.
  """
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
  Updates a monitor.

  You can update a monitor to change the percentage of traffic to monitor or the
  maximum number of city-networks (locations and ASNs), to add or remove
  resources, or to change the status of the monitor. Note that you can't change
  the name of a monitor.

  The city-network maximum that you choose is the limit, but you only pay for the
  number of city-networks that are actually monitored. For more information, see
  [Choosing a city-network maximum value](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html)
  in the *Amazon CloudWatch User Guide*.
  """
  def update_monitor(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/v20210603/Monitors/#{AWS.Util.encode_uri(monitor_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
