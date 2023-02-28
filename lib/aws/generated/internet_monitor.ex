# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.InternetMonitor do
  @moduledoc """
  Amazon CloudWatch Internet Monitor provides visibility into how internet issues
  impact the performance and availability between your applications hosted on
  Amazon Web Services and your end users, reducing the time it takes for you to
  diagnose these issues, from days to minutes.

  You can explore internet measurements for different time frames and at different
  geographic granularities, and quickly visualize the impact of issues, and then
  take action to improve your end users' experience, for example, by switching to
  other Amazon Web Services services or rerouting traffic to your workload through
  differentAmazon Web Services Regions.

  If the issue is caused by the Amazon Web Services network, you'll automatically
  receive an Amazon Web Services Health Dashboard notification with the steps that
  Amazon Web Services is taking to mitigate the problem. To support integrating
  health information for geographies and networks specific to your application,
  Internet Monitor delivers measurements to CloudWatch Logs and CloudWatch
  Metrics. Internet Monitor also sends health events to Amazon EventBridge, so you
  can set up notifications. Internet Monitor monitors internet connectivity for
  your application through Amazon Virtual Private Clouds (VPCs), Amazon CloudFront
  distributions, and Amazon WorkSpaces directories.

  To use Internet Monitor, you create a *monitor* and add resources to it, Virtual
  Private Clouds (VPCs), Amazon CloudFront distributions, or WorkSpaces
  directories that show where your application's internet traffic is. Internet
  Monitor then provides internet measurements from Amazon Web Services that are
  specific to the locations and networks that communicate with your application.
  For more information, see [ Using Amazon CloudWatch Internet Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html)
  in the Amazon CloudWatch User Guide.
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
  add: Virtual Private Clouds (VPCs), Amazon CloudFront distributions, and
  WorkSpaces directories.

  After you create a monitor, you can view the internet performance for your
  application, scoped to a location, as well as any health events that are
  impairing traffic. Internet Monitor can also diagnose whether the impairment is
  on the Amazon Web Services network or is an issue with an internet service
  provider (ISP).
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

  This information includes the impacted locations, and all of the information
  related to the event by location.

  The information returned includes the performance, availability, and round-trip
  time impact, information about the network providers, the event type, and so on.

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
  Lists all health events for a monitor in Amazon CloudWatch Internet Monitor.

  Returns all information for health events including the client location
  information the network cause and status, event start and end time, percentage
  of total traffic impacted, and status.

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

  You can update a monitor to add or remove resources, or to change the status of
  the monitor. You can't change the name of a monitor.
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
