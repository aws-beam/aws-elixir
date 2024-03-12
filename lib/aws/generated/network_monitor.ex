# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkMonitor do
  @moduledoc """
  Amazon CloudWatch Network Monitor is an Amazon Web Services active network
  monitoring
  service that identifies if a network issues exists within the Amazon Web
  Services network
  or your own company network.

  Within Network Monitor you'll choose the source VPCs and
  subnets from the Amazon Web Services network in which you operate and then
  you'll choose
  the destination IP addresses from your on-premises network. From these sources
  and
  destinations, Network Monitor creates a monitor containing all the possible
  source and
  destination combinations, each of which is called a probe, within a single
  monitor.
  These probes then monitor network traffic to help you identify where network
  issues might be affecting your traffic.

  For more information, see [Using Amazon CloudWatch Network Monitor](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/what-is-network-monitor.html)
  in the *Amazon CloudWatch User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  list_monitors_input() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("state") => [String.t()]
  }
  """
  @type list_monitors_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_monitor_output() :: %{
    "aggregationPeriod" => float(),
    "createdAt" => non_neg_integer(),
    "modifiedAt" => non_neg_integer(),
    "monitorArn" => String.t(),
    "monitorName" => String.t(),
    "probes" => list(probe()()),
    "state" => list(any()),
    "tags" => map()
  }
  """
  @type get_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_monitors_output() :: %{
    "monitors" => list(monitor_summary()()),
    "nextToken" => [String.t()]
  }
  """
  @type list_monitors_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_monitor_probe_input() :: %{
    "destination" => String.t(),
    "destinationPort" => integer(),
    "packetSize" => integer(),
    "probeTags" => map(),
    "protocol" => list(any()),
    "sourceArn" => String.t()
  }
  """
  @type create_monitor_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_probe_output() :: %{
    "addressFamily" => list(any()),
    "createdAt" => non_neg_integer(),
    "destination" => String.t(),
    "destinationPort" => integer(),
    "modifiedAt" => non_neg_integer(),
    "packetSize" => integer(),
    "probeArn" => String.t(),
    "probeId" => String.t(),
    "protocol" => list(any()),
    "sourceArn" => String.t(),
    "state" => list(any()),
    "tags" => map(),
    "vpcId" => String.t()
  }
  """
  @type update_probe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_monitor_output() :: %{

  }
  """
  @type delete_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_output() :: %{
    "tags" => map()
  }
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_monitor_input() :: %{

  }
  """
  @type delete_monitor_input() :: %{String.t() => any()}

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
  create_probe_input() :: %{
    optional("clientToken") => [String.t()],
    optional("tags") => map(),
    required("probe") => probe_input()
  }
  """
  @type create_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_probe_input() :: %{

  }
  """
  @type delete_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_probe_input() :: %{

  }
  """
  @type get_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_monitor_input() :: %{

  }
  """
  @type get_monitor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_probe_output() :: %{
    "addressFamily" => list(any()),
    "createdAt" => non_neg_integer(),
    "destination" => String.t(),
    "destinationPort" => integer(),
    "modifiedAt" => non_neg_integer(),
    "packetSize" => integer(),
    "probeArn" => String.t(),
    "probeId" => String.t(),
    "protocol" => list(any()),
    "sourceArn" => String.t(),
    "state" => list(any()),
    "tags" => map(),
    "vpcId" => String.t()
  }
  """
  @type create_probe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_input() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_probe_output() :: %{

  }
  """
  @type delete_probe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_output() :: %{

  }
  """
  @type tag_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_probe_input() :: %{
    optional("destination") => String.t(),
    optional("destinationPort") => integer(),
    optional("packetSize") => integer(),
    optional("protocol") => list(any()),
    optional("state") => list(any())
  }
  """
  @type update_probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_input() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  probe_input() :: %{
    "destination" => String.t(),
    "destinationPort" => integer(),
    "packetSize" => integer(),
    "protocol" => list(any()),
    "sourceArn" => String.t(),
    "tags" => map()
  }
  """
  @type probe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_monitor_input() :: %{
    required("aggregationPeriod") => float()
  }
  """
  @type update_monitor_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_input() :: %{

  }
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  probe() :: %{
    "addressFamily" => list(any()),
    "createdAt" => non_neg_integer(),
    "destination" => String.t(),
    "destinationPort" => integer(),
    "modifiedAt" => non_neg_integer(),
    "packetSize" => integer(),
    "probeArn" => String.t(),
    "probeId" => String.t(),
    "protocol" => list(any()),
    "sourceArn" => String.t(),
    "state" => list(any()),
    "tags" => map(),
    "vpcId" => String.t()
  }
  """
  @type probe() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_output() :: %{

  }
  """
  @type untag_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_probe_output() :: %{
    "addressFamily" => list(any()),
    "createdAt" => non_neg_integer(),
    "destination" => String.t(),
    "destinationPort" => integer(),
    "modifiedAt" => non_neg_integer(),
    "packetSize" => integer(),
    "probeArn" => String.t(),
    "probeId" => String.t(),
    "protocol" => list(any()),
    "sourceArn" => String.t(),
    "state" => list(any()),
    "tags" => map(),
    "vpcId" => String.t()
  }
  """
  @type get_probe_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_monitor_output() :: %{
    "aggregationPeriod" => float(),
    "monitorArn" => String.t(),
    "monitorName" => String.t(),
    "state" => list(any()),
    "tags" => map()
  }
  """
  @type create_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  monitor_summary() :: %{
    "aggregationPeriod" => float(),
    "monitorArn" => String.t(),
    "monitorName" => String.t(),
    "state" => list(any()),
    "tags" => map()
  }
  """
  @type monitor_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_monitor_output() :: %{
    "aggregationPeriod" => float(),
    "monitorArn" => String.t(),
    "monitorName" => String.t(),
    "state" => list(any()),
    "tags" => map()
  }
  """
  @type update_monitor_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_monitor_input() :: %{
    optional("aggregationPeriod") => float(),
    optional("clientToken") => [String.t()],
    optional("probes") => list(create_monitor_probe_input()()),
    optional("tags") => map(),
    required("monitorName") => String.t()
  }
  """
  @type create_monitor_input() :: %{String.t() => any()}

  def metadata do
    %{
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
  @spec create_monitor(map(), create_monitor_input(), list()) ::
          {:ok, create_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec create_probe(map(), String.t(), create_probe_input(), list()) ::
          {:ok, create_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec delete_monitor(map(), String.t(), delete_monitor_input(), list()) ::
          {:ok, delete_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec delete_probe(map(), String.t(), String.t(), delete_probe_input(), list()) ::
          {:ok, delete_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec get_monitor(map(), String.t(), list()) ::
          {:ok, get_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec get_probe(map(), String.t(), String.t(), list()) ::
          {:ok, get_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec list_monitors(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_monitors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
      200
    )
  end

  @doc """
  Removes a key-value pair from a monitor or probe.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec update_monitor(map(), String.t(), update_monitor_input(), list()) ::
          {:ok, update_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec update_probe(map(), String.t(), String.t(), update_probe_input(), list()) ::
          {:ok, update_probe_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
