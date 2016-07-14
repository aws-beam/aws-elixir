# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Discovery do
  @moduledoc """
  The AWS Application Discovery Service helps Systems Integrators quickly and
  reliably plan application migration projects by automatically identifying
  applications running in on-premises data centers, their associated
  dependencies, and their performance profile.

  Planning data center migrations can involve thousands of workloads that are
  often deeply interdependent. Application discovery and dependency mapping
  are important early first steps in the migration process, but difficult to
  perform at scale due to the lack of automated tools.

  The AWS Application Discovery Service automatically collects configuration
  and usage data from servers to develop a list of applications, how they
  perform, and how they are interdependent. This information is securely
  retained in an AWS Application Discovery Service database which you can
  export as a CSV file into your preferred visualization tool or cloud
  migration solution to help reduce the complexity and time in planning your
  cloud migration.

  The Application Discovery Service is currently available for preview. Only
  customers who are engaged with [AWS Professional
  Services](https://aws.amazon.com/professional-services/) or a certified AWS
  partner can use the service. To see the list of certified partners and
  request access to the Application Discovery Service, complete the following
  [preview form](http://aws.amazon.com/application-discovery/preview/).

  This API reference provides descriptions, syntax, and usage examples for
  each of the actions and data types for the Discovery Service. The topic for
  each action shows the API request parameters and the response.
  Alternatively, you can use one of the AWS SDKs to access an API that is
  tailored to the programming language or platform that you're using. For
  more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

  This guide is intended for use with the [ *AWS Discovery Service User
  Guide*
  ](http://docs.aws.amazon.com/application-discovery/latest/userguide/what-is-appdiscovery.html).

  The following are short descriptions of each API action, organized by
  function.

  **Managing AWS Agents Using the Application Discovery Service**

  An AWS agent is software that you install on on-premises servers and
  virtual machines that are targeted for discovery and migration. Agents run
  on Linux and Windows Server and collect server configuration and activity
  information about your applications and infrastructure. Specifically,
  agents collect the following information and send it to the Application
  Discovery Service using Secure Sockets Layer (SSL) encryption:

  <ul> <li> User information (user name, home directory)

  </li> <li> Group information (name)

  </li> <li> List of installed packages

  </li> <li> List of kernel modules

  </li> <li> All create and stop process events

  </li> <li> DNS queries

  </li> <li> NIC information

  </li> <li> TCP/UDP process listening ports

  </li> <li> TCPV4/V6 connections

  </li> <li> Operating system information

  </li> <li> System performance

  </li> <li> Process performance

  </li> </ul> The Application Discovery Service API includes the following
  actions to manage AWS agents:

  <ul> <li> *StartDataCollectionByAgentIds*: Instructs the specified agents
  to start collecting data. The Application Discovery Service takes several
  minutes to receive and process data after you initiate data collection.

  </li> <li> *StopDataCollectionByAgentIds*: Instructs the specified agents
  to stop collecting data.

  </li> <li> *DescribeAgents*: Lists AWS agents by ID or lists all agents
  associated with your user account if you did not specify an agent ID. The
  output includes agent IDs, IP addresses, media access control (MAC)
  addresses, agent health, host name where the agent resides, and the version
  number of each agent.

  </li> </ul> **Querying Configuration Items**

  A *configuration item* is an IT asset that was discovered in your data
  center by an AWS agent. When you use the Application Discovery Service, you
  can specify filters and query specific configuration items. The service
  supports Server, Process, and Connection configuration items. This means
  you can specify a value for the following keys and query your IT assets:

  <p class="title"> **Server**

  <ul> <li> server.HostName

  </li> <li> server.osName

  </li> <li> server.osVersion

  </li> <li> server.configurationId

  </li> <li> server.agentId

  </li> </ul> <p class="title"> **Process**

  <ul> <li> process.name

  </li> <li> process.CommandLine

  </li> <li> process.configurationId

  </li> <li> server.hostName

  </li> <li> server.osName

  </li> <li> server.osVersion

  </li> <li> server.configurationId

  </li> <li> server.agentId

  </li> </ul> <p class="title"> **Connection**

  <ul> <li> connection.sourceIp

  </li> <li> connection.sourcePort

  </li> <li> connection.destinationIp

  </li> <li> connection.destinationPort

  </li> <li> sourceProcess.configurationId

  </li> <li> sourceProcess.commandLine

  </li> <li> sourceProcess.name

  </li> <li> destinationProcessId.configurationId

  </li> <li> destinationProcess.commandLine

  </li> <li> destinationProcess.name

  </li> <li> sourceServer.configurationId

  </li> <li> sourceServer.hostName

  </li> <li> sourceServer.osName

  </li> <li> sourceServer.osVersion

  </li> <li> destinationServer.configurationId

  </li> <li> destinationServer.hostName

  </li> <li> destinationServer.osName

  </li> <li> destinationServer.osVersion

  </li> </ul> The Application Discovery Service includes the following
  actions for querying configuration items.

  <ul> <li> *DescribeConfigurations*: Retrieves a list of attributes for a
  specific configuration ID. For example, the output for a *server*
  configuration item includes a list of attributes about the server,
  including host name, operating system, number of network cards, etc.

  </li> <li> *ListConfigurations*: Retrieves a list of configuration items
  according to the criteria you specify in a filter. The filter criteria
  identify relationship requirements. For example, you can specify filter
  criteria of process.name with values of *nginx* and *apache*.

  </li> </ul> **Tagging Discovered Configuration Items**

  You can tag discovered configuration items. Tags are metadata that help you
  categorize IT assets in your data center. Tags use a *key*-*value* format.
  For example, `{"key": "serverType", "value": "webServer"}`.

  <ul> <li> *CreateTags*: Creates one or more tags for a configuration items.

  </li> <li> *DescribeTags*: Retrieves a list of configuration items that are
  tagged with a specific tag. *Or*, retrieves a list of all tags assigned to
  a specific configuration item.

  </li> <li> *DeleteTags*: Deletes the association between a configuration
  item and one or more tags.

  </li> </ul> **Exporting Data**

  You can export data as a CSV file to an Amazon S3 bucket or into your
  preferred visualization tool or cloud migration solution to help reduce the
  complexity and time in planning your cloud migration.

  <ul> <li> *ExportConfigurations*: Exports all discovered configuration data
  to an Amazon S3 bucket. Data includes tags and tag associations, processes,
  connections, servers, and system performance. This API returns an export ID
  which you can query using the GetExportStatus API.

  </li> <li> *DescribeExportConfigurations*: Gets the status of the data
  export. When the export is complete, the service returns an Amazon S3 URL
  where you can download CSV files that include the data.

  </li> </ul>
  """

  @doc """
  Creates one or more tags for configuration items. Tags are metadata that
  help you categorize IT assets. This API accepts a list of multiple
  configuration items.
  """
  def create_tags(client, input, options \\ []) do
    request(client, "CreateTags", input, options)
  end

  @doc """
  Deletes the association between configuration items and one or more tags.
  This API accepts a list of multiple configuration items.
  """
  def delete_tags(client, input, options \\ []) do
    request(client, "DeleteTags", input, options)
  end

  @doc """
  Lists AWS agents by ID or lists all agents associated with your user
  account if you did not specify an agent ID.
  """
  def describe_agents(client, input, options \\ []) do
    request(client, "DescribeAgents", input, options)
  end

  @doc """
  Retrieves a list of attributes for a specific configuration ID. For
  example, the output for a *server* configuration item includes a list of
  attributes about the server, including host name, operating system, number
  of network cards, etc.
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
  Exports all discovered configuration data to an Amazon S3 bucket or an
  application that enables you to view and evaluate the data. Data includes
  tags and tag associations, processes, connections, servers, and system
  performance. This API returns an export ID which you can query using the
  *GetExportStatus* API. The system imposes a limit of two configuration
  exports in six hours.
  """
  def export_configurations(client, input, options \\ []) do
    request(client, "ExportConfigurations", input, options)
  end

  @doc """
  Retrieves a list of configurations items according to the criteria you
  specify in a filter. The filter criteria identify relationship
  requirements.
  """
  def list_configurations(client, input, options \\ []) do
    request(client, "ListConfigurations", input, options)
  end

  @doc """
  Instructs the specified agents to start collecting data. Agents can reside
  on host servers or virtual machines in your data center.
  """
  def start_data_collection_by_agent_ids(client, input, options \\ []) do
    request(client, "StartDataCollectionByAgentIds", input, options)
  end

  @doc """
  Instructs the specified agents to stop collecting data.
  """
  def stop_data_collection_by_agent_ids(client, input, options \\ []) do
    request(client, "StopDataCollectionByAgentIds", input, options)
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
