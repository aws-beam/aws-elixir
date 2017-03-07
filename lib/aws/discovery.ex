# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Discovery do
  @moduledoc """
  AWS Application Discovery Service

  AWS Application Discovery Service helps you plan application migration
  projects by automatically identifying servers, virtual machines (VMs),
  software, and software dependencies running in your on-premises data
  centers. Application Discovery Service also collects application
  performance data, which can help you assess the outcome of your migration.
  The data collected by Application Discovery Service is securely retained in
  an Amazon-hosted and managed database in the cloud. You can export the data
  as a CSV or XML file into your preferred visualization tool or
  cloud-migration solution to plan your migration. For more information, see
  the Application Discovery Service
  [FAQ](http://aws.amazon.com/application-discovery/faqs/).

  Application Discovery Service offers two modes of operation.

  <ul> <li> **Agentless discovery** mode is recommended for environments that
  use VMware vCenter Server. This mode doesn't require you to install an
  agent on each host. Agentless discovery gathers server information
  regardless of the operating systems, which minimizes the time required for
  initial on-premises infrastructure assessment. Agentless discovery doesn't
  collect information about software and software dependencies. It also
  doesn't work in non-VMware environments. We recommend that you use
  agent-based discovery for non-VMware environments and if you want to
  collect information about software and software dependencies. You can also
  run agent-based and agentless discovery simultaneously. Use agentless
  discovery to quickly complete the initial infrastructure assessment and
  then install agents on select hosts to gather information about software
  and software dependencies.

  </li> <li> **Agent-based discovery** mode collects a richer set of data
  than agentless discovery by using Amazon software, the AWS Application
  Discovery Agent, which you install on one or more hosts in your data
  center. The agent captures infrastructure and application information,
  including an inventory of installed software applications, system and
  process performance, resource utilization, and network dependencies between
  workloads. The information collected by agents is secured at rest and in
  transit to the Application Discovery Service database in the cloud.

  </li> </ul> Application Discovery Service integrates with application
  discovery solutions from AWS Partner Network (APN) partners. Third-party
  application discovery tools can query the Application Discovery Service and
  write to the Application Discovery Service database using a public API. You
  can then import the data into either a visualization tool or
  cloud-migration solution.

  <important> Application Discovery Service doesn't gather sensitive
  information. All data is handled according to the [AWS Privacy
  Policy](http://aws.amazon.com/privacy/). You can operate Application
  Discovery Service using offline mode to inspect collected data before it is
  shared with the service.

  </important> Your AWS account must be granted access to Application
  Discovery Service, a process called *whitelisting*. This is true for AWS
  partners and customers alike. To request access, sign up for the AWS
  Application Discovery Service
  [here](http://aws.amazon.com/application-discovery/preview/). We will send
  you information about how to get started.

  This API reference provides descriptions, syntax, and usage examples for
  each of the actions and data types for the Application Discovery Service.
  The topic for each action shows the API request parameters and the
  response. Alternatively, you can use one of the AWS SDKs to access an API
  that is tailored to the programming language or platform that you're using.
  For more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

  This guide is intended for use with the [ *AWS Application Discovery
  Service User Guide*
  ](http://docs.aws.amazon.com/application-discovery/latest/userguide/).
  """

  @doc """
  Associates one or more configuration items with an application.
  """
  def associate_configuration_items_to_application(client, input, options \\ []) do
    request(client, "AssociateConfigurationItemsToApplication", input, options)
  end

  @doc """
  Creates an application with the given name and description.
  """
  def create_application(client, input, options \\ []) do
    request(client, "CreateApplication", input, options)
  end

  @doc """
  Creates one or more tags for configuration items. Tags are metadata that
  help you categorize IT assets. This API accepts a list of multiple
  configuration items.
  """
  def create_tags(client, input, options \\ []) do
    request(client, "CreateTags", input, options)
  end

  @doc """
  Deletes a list of applications and their associations with configuration
  items.
  """
  def delete_applications(client, input, options \\ []) do
    request(client, "DeleteApplications", input, options)
  end

  @doc """
  Deletes the association between configuration items and one or more tags.
  This API accepts a list of multiple configuration items.
  """
  def delete_tags(client, input, options \\ []) do
    request(client, "DeleteTags", input, options)
  end

  @doc """
  Lists agents or the Connector by ID or lists all agents/Connectors
  associated with your user account if you did not specify an ID.
  """
  def describe_agents(client, input, options \\ []) do
    request(client, "DescribeAgents", input, options)
  end

  @doc """
  Retrieves attributes for a list of configuration item IDs. All of the
  supplied IDs must be for the same asset type (server, application, process,
  or connection). Output fields are specific to the asset type selected. For
  example, the output for a *server* configuration item includes a list of
  attributes about the server, such as host name, operating system, and
  number of network cards.

  For a complete list of outputs for each asset type, see [Querying
  Discovered Configuration
  Items](http://docs.aws.amazon.com/application-discovery/latest/APIReference/querying-configuration-items.html#DescribeConfigurations).
  """
  def describe_configurations(client, input, options \\ []) do
    request(client, "DescribeConfigurations", input, options)
  end

  @doc """
  Retrieves the status of a given export process. You can retrieve status
  from a maximum of 100 processes.
  """
  def describe_export_configurations(client, input, options \\ []) do
    request(client, "DescribeExportConfigurations", input, options)
  end

  @doc """
  Retrieves a list of configuration items that are tagged with a specific
  tag. Or retrieves a list of all tags assigned to a specific configuration
  item.
  """
  def describe_tags(client, input, options \\ []) do
    request(client, "DescribeTags", input, options)
  end

  @doc """
  Disassociates one or more configuration items from an application.
  """
  def disassociate_configuration_items_from_application(client, input, options \\ []) do
    request(client, "DisassociateConfigurationItemsFromApplication", input, options)
  end

  @doc """
  Exports all discovered configuration data to an Amazon S3 bucket or an
  application that enables you to view and evaluate the data. Data includes
  tags and tag associations, processes, connections, servers, and system
  performance. This API returns an export ID which you can query using the
  *DescribeExportConfigurations* API. The system imposes a limit of two
  configuration exports in six hours.
  """
  def export_configurations(client, input, options \\ []) do
    request(client, "ExportConfigurations", input, options)
  end

  @doc """
  Retrieves a short summary of discovered assets.
  """
  def get_discovery_summary(client, input, options \\ []) do
    request(client, "GetDiscoverySummary", input, options)
  end

  @doc """
  Retrieves a list of configuration items according to criteria you specify
  in a filter. The filter criteria identify relationship requirements.
  """
  def list_configurations(client, input, options \\ []) do
    request(client, "ListConfigurations", input, options)
  end

  @doc """
  Retrieves a list of servers which are one network hop away from a specified
  server.
  """
  def list_server_neighbors(client, input, options \\ []) do
    request(client, "ListServerNeighbors", input, options)
  end

  @doc """
  Instructs the specified agents or Connectors to start collecting data.
  """
  def start_data_collection_by_agent_ids(client, input, options \\ []) do
    request(client, "StartDataCollectionByAgentIds", input, options)
  end

  @doc """
  Instructs the specified agents or Connectors to stop collecting data.
  """
  def stop_data_collection_by_agent_ids(client, input, options \\ []) do
    request(client, "StopDataCollectionByAgentIds", input, options)
  end

  @doc """
  Updates metadata about an application.
  """
  def update_application(client, input, options \\ []) do
    request(client, "UpdateApplication", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "discovery"}
    host = get_host("discovery", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSPoseidonService_V2015_11_01.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
