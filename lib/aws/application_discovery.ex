# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationDiscovery do
  @moduledoc """
  AWS Application Discovery Service

  AWS Application Discovery Service helps you plan application migration
  projects. It automatically identifies servers, virtual machines (VMs), and
  network dependencies in your on-premises data centers. For more
  information, see the [AWS Application Discovery Service
  FAQ](http://aws.amazon.com/application-discovery/faqs/). Application
  Discovery Service offers three ways of performing discovery and collecting
  data about your on-premises servers:

  <ul> <li> **Agentless discovery** is recommended for environments that use
  VMware vCenter Server. This mode doesn't require you to install an agent on
  each host. It does not work in non-VMware environments.

  <ul> <li> Agentless discovery gathers server information regardless of the
  operating systems, which minimizes the time required for initial
  on-premises infrastructure assessment.

  </li> <li> Agentless discovery doesn't collect information about network
  dependencies, only agent-based discovery collects that information.

  </li> </ul> </li> </ul> <ul> <li> **Agent-based discovery** collects a
  richer set of data than agentless discovery by using the AWS Application
  Discovery Agent, which you install on one or more hosts in your data
  center.

  <ul> <li> The agent captures infrastructure and application information,
  including an inventory of running processes, system performance
  information, resource utilization, and network dependencies.

  </li> <li> The information collected by agents is secured at rest and in
  transit to the Application Discovery Service database in the cloud.

  </li> </ul> </li> </ul> <ul> <li> **AWS Partner Network (APN) solutions**
  integrate with Application Discovery Service, enabling you to import
  details of your on-premises environment directly into Migration Hub without
  using the discovery connector or discovery agent.

  <ul> <li> Third-party application discovery tools can query AWS Application
  Discovery Service, and they can write to the Application Discovery Service
  database using the public API.

  </li> <li> In this way, you can import data into Migration Hub and view it,
  so that you can associate applications with servers and track migrations.

  </li> </ul> </li> </ul> **Recommendations**

  We recommend that you use agent-based discovery for non-VMware
  environments, and whenever you want to collect information about network
  dependencies. You can run agent-based and agentless discovery
  simultaneously. Use agentless discovery to complete the initial
  infrastructure assessment quickly, and then install agents on select hosts
  to collect additional information.

  **Working With This Guide**

  This API reference provides descriptions, syntax, and usage examples for
  each of the actions and data types for Application Discovery Service. The
  topic for each action shows the API request parameters and the response.
  Alternatively, you can use one of the AWS SDKs to access an API that is
  tailored to the programming language or platform that you're using. For
  more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

  <note> <ul> <li> Remember that you must set your Migration Hub home region
  before you call any of these APIs.

  </li> <li> You must make API calls for write actions (create, notify,
  associate, disassociate, import, or put) while in your home region, or a
  `HomeRegionNotSetException` error is returned.

  </li> <li> API calls for read actions (list, describe, stop, and delete)
  are permitted outside of your home region.

  </li> <li> Although it is unlikely, the Migration Hub home region could
  change. If you call APIs outside the home region, an
  `InvalidInputException` is returned.

  </li> <li> You must call `GetHomeRegion` to obtain the latest Migration Hub
  home region.

  </li> </ul> </note> This guide is intended for use with the [AWS
  Application Discovery Service User
  Guide](http://docs.aws.amazon.com/application-discovery/latest/userguide/).

  <important> All data is handled according to the [AWS Privacy
  Policy](http://aws.amazon.com/privacy/). You can operate Application
  Discovery Service offline to inspect collected data before it is shared
  with the service.

  </important>
  """

  @doc """
  Associates one or more configuration items with an application.
  """
  def associate_configuration_items_to_application(client, input, options \\ []) do
    request(client, "AssociateConfigurationItemsToApplication", input, options)
  end

  @doc """
  Deletes one or more import tasks, each identified by their import ID. Each
  import task has a number of records that can identify servers or
  applications.

  AWS Application Discovery Service has built-in matching logic that will
  identify when discovered servers match existing entries that you've
  previously discovered, the information for the already-existing discovered
  server is updated. When you delete an import task that contains records
  that were used to match, the information in those matched records that
  comes from the deleted records will also be deleted.
  """
  def batch_delete_import_data(client, input, options \\ []) do
    request(client, "BatchDeleteImportData", input, options)
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
  Lists agents or connectors as specified by ID or other filters. All
  agents/connectors associated with your user account can be listed if you
  call `DescribeAgents` as is without passing any parameters.
  """
  def describe_agents(client, input, options \\ []) do
    request(client, "DescribeAgents", input, options)
  end

  @doc """
  Retrieves attributes for a list of configuration item IDs.

  <note> All of the supplied IDs must be for the same asset type from one of
  the following:

  <ul> <li> server

  </li> <li> application

  </li> <li> process

  </li> <li> connection

  </li> </ul> Output fields are specific to the asset type specified. For
  example, the output for a *server* configuration item includes a list of
  attributes about the server, such as host name, operating system, number of
  network cards, etc.

  For a complete list of outputs for each asset type, see [Using the
  DescribeConfigurations
  Action](https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations)
  in the *AWS Application Discovery Service User Guide*.

  </note>
  """
  def describe_configurations(client, input, options \\ []) do
    request(client, "DescribeConfigurations", input, options)
  end

  @doc """
  Lists exports as specified by ID. All continuous exports associated with
  your user account can be listed if you call `DescribeContinuousExports` as
  is without passing any parameters.
  """
  def describe_continuous_exports(client, input, options \\ []) do
    request(client, "DescribeContinuousExports", input, options)
  end

  @doc """
  `DescribeExportConfigurations` is deprecated. Use
  [DescribeImportTasks](https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html),
  instead.
  """
  def describe_export_configurations(client, input, options \\ []) do
    request(client, "DescribeExportConfigurations", input, options)
  end

  @doc """
  Retrieve status of one or more export tasks. You can retrieve the status of
  up to 100 export tasks.
  """
  def describe_export_tasks(client, input, options \\ []) do
    request(client, "DescribeExportTasks", input, options)
  end

  @doc """
  Returns an array of import tasks for your account, including status
  information, times, IDs, the Amazon S3 Object URL for the import file, and
  more.
  """
  def describe_import_tasks(client, input, options \\ []) do
    request(client, "DescribeImportTasks", input, options)
  end

  @doc """
  Retrieves a list of configuration items that have tags as specified by the
  key-value pairs, name and value, passed to the optional parameter
  `filters`.

  There are three valid tag filter names:

  <ul> <li> tagKey

  </li> <li> tagValue

  </li> <li> configurationId

  </li> </ul> Also, all configuration items associated with your user account
  that have tags can be listed if you call `DescribeTags` as is without
  passing any parameters.
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
  Deprecated. Use `StartExportTask` instead.

  Exports all discovered configuration data to an Amazon S3 bucket or an
  application that enables you to view and evaluate the data. Data includes
  tags and tag associations, processes, connections, servers, and system
  performance. This API returns an export ID that you can query using the
  *DescribeExportConfigurations* API. The system imposes a limit of two
  configuration exports in six hours.
  """
  def export_configurations(client, input, options \\ []) do
    request(client, "ExportConfigurations", input, options)
  end

  @doc """
  Retrieves a short summary of discovered assets.

  This API operation takes no request parameters and is called as is at the
  command prompt as shown in the example.
  """
  def get_discovery_summary(client, input, options \\ []) do
    request(client, "GetDiscoverySummary", input, options)
  end

  @doc """
  Retrieves a list of configuration items as specified by the value passed to
  the required parameter `configurationType`. Optional filtering may be
  applied to refine search results.
  """
  def list_configurations(client, input, options \\ []) do
    request(client, "ListConfigurations", input, options)
  end

  @doc """
  Retrieves a list of servers that are one network hop away from a specified
  server.
  """
  def list_server_neighbors(client, input, options \\ []) do
    request(client, "ListServerNeighbors", input, options)
  end

  @doc """
  Start the continuous flow of agent's discovered data into Amazon Athena.
  """
  def start_continuous_export(client, input, options \\ []) do
    request(client, "StartContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents or connectors to start collecting data.
  """
  def start_data_collection_by_agent_ids(client, input, options \\ []) do
    request(client, "StartDataCollectionByAgentIds", input, options)
  end

  @doc """
  Begins the export of discovered data to an S3 bucket.

  If you specify `agentIds` in a filter, the task exports up to 72 hours of
  detailed data collected by the identified Application Discovery Agent,
  including network, process, and performance details. A time range for
  exported agent data may be set by using `startTime` and `endTime`. Export
  of detailed agent data is limited to five concurrently running exports.

  If you do not include an `agentIds` filter, summary data is exported that
  includes both AWS Agentless Discovery Connector data and summary data from
  AWS Discovery Agents. Export of summary data is limited to two exports per
  day.
  """
  def start_export_task(client, input, options \\ []) do
    request(client, "StartExportTask", input, options)
  end

  @doc """
  Starts an import task, which allows you to import details of your
  on-premises environment directly into AWS Migration Hub without having to
  use the Application Discovery Service (ADS) tools such as the Discovery
  Connector or Discovery Agent. This gives you the option to perform
  migration assessment and planning directly from your imported data,
  including the ability to group your devices as applications and track their
  migration status.

  To start an import request, do this:

  <ol> <li> Download the specially formatted comma separated value (CSV)
  import template, which you can find here:
  [https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv](https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv).

  </li> <li> Fill out the template with your server and application data.

  </li> <li> Upload your import file to an Amazon S3 bucket, and make a note
  of it's Object URL. Your import file must be in the CSV format.

  </li> <li> Use the console or the `StartImportTask` command with the AWS
  CLI or one of the AWS SDKs to import the records from your file.

  </li> </ol> For more information, including step-by-step procedures, see
  [Migration Hub
  Import](https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html)
  in the *AWS Application Discovery Service User Guide*.

  <note> There are limits to the number of import tasks you can create (and
  delete) in an AWS account. For more information, see [AWS Application
  Discovery Service
  Limits](https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html)
  in the *AWS Application Discovery Service User Guide*.

  </note>
  """
  def start_import_task(client, input, options \\ []) do
    request(client, "StartImportTask", input, options)
  end

  @doc """
  Stop the continuous flow of agent's discovered data into Amazon Athena.
  """
  def stop_continuous_export(client, input, options \\ []) do
    request(client, "StopContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents or connectors to stop collecting data.
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

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "discovery"}
    host = build_host("discovery", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSPoseidonService_V2015_11_01.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
