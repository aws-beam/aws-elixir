# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkMonitor do
  @moduledoc """
  Amazon CloudWatch Network Monitor is an Amazon Web Services active network
  monitoring service that identifies if a network issues exists within the Amazon
  Web Services network or your own company network.

  Within Network Monitor you'll choose the source VPCs and subnets from the Amazon
  Web Services network in which you operate and then you'll choose the destination
  IP addresses from your on-premises network. From these sources and destinations,
  Network Monitor creates a monitor containing all the possible source and
  destination combinations, each of which is called a probe, within a single
  monitor. These probes then monitor network traffic to help you identify where
  network issues might be affecting your traffic.

  For more information, see [Using Amazon CloudWatch Network Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/what-is-network-monitor.html)
  in the *Amazon CloudWatch User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "networkmonitor",
      global?: false,
      protocol: "rest-json",
      service_id: "NetworkMonitor",
      signature_version: "v4",
      signing_name: "networkmonitor",
      target_prefix: nil
    }
  end

  @doc """
  Creates a monitor between a source subnet and destination IP address.

  Within a monitor you'll create one or more probes that monitor network traffic
  between your source Amazon Web Services VPC subnets and your destination IP
  addresses. Each probe then aggregates and sends metrics to Amazon CloudWatch.
  """
  def create_monitor(%Client{} = client, input, options \\ []) do
    url_path = "/monitors"
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
  Create a probe within a monitor.

  Once you create a probe, and it begins monitoring your network traffic, you'll
  incur billing charges for that probe.
  """
  def create_probe(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes"
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
  Deletes a specified monitor.
  """
  def delete_monitor(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"
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
  Deletes the specified monitor.

  Once a probe is deleted you'll no longer incur any billing fees for that probe.
  """
  def delete_probe(%Client{} = client, monitor_name, probe_id, input, options \\ []) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes/#{AWS.Util.encode_uri(probe_id)}"

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
  Returns details about a specific monitor.
  """
  def get_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details about a probe.

  You'll need both the `monitorName` and `probeId`.
  """
  def get_probe(%Client{} = client, monitor_name, probe_id, options \\ []) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes/#{AWS.Util.encode_uri(probe_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of your monitors.
  """
  def list_monitors(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/monitors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags assigned to this resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds key-value pairs to a monitor or probe.
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
      200
    )
  end

  @doc """
  Removes a key-value pair from a monitor or probe.
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
      200
    )
  end

  @doc """
  Updates the `aggregationPeriod` for a monitor.

  Monitors support an `aggregationPeriod` of either `30` or `60` seconds.
  """
  def update_monitor(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"
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

  @doc """
  Updates a monitor probe.

  This action requires both the `monitorName` and `probeId` parameters. Run
  `ListMonitors` to get a list of monitor names. Run `GetMonitor` to get a list of
  probes and probe IDs.
  """
  def update_probe(%Client{} = client, monitor_name, probe_id, input, options \\ []) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/probes/#{AWS.Util.encode_uri(probe_id)}"

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
