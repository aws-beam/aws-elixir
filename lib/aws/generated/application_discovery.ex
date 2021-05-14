# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationDiscovery do
  @moduledoc """
  AWS Application Discovery Service

  AWS Application Discovery Service helps you plan application migration projects.

  It automatically identifies servers, virtual machines (VMs), and network
  dependencies in your on-premises data centers. For more information, see the
  [AWS Application Discovery Service FAQ](http://aws.amazon.com/application-discovery/faqs/). Application Discovery
  Service offers three ways of performing discovery and collecting data about your
  on-premises servers:

    * **Agentless discovery** is recommended for environments that use
  VMware vCenter Server. This mode doesn't require you to install an agent on each
  host. It does not work in non-VMware environments.

      * Agentless discovery gathers server information
  regardless of the operating systems, which minimizes the time required for
  initial on-premises infrastructure assessment.

      * Agentless discovery doesn't collect information about
  network dependencies, only agent-based discovery collects that information.

    * **Agent-based discovery** collects a richer set of data than
  agentless discovery by using the AWS Application Discovery Agent, which you
  install on one or more hosts in your data center.

      * The agent captures infrastructure and application
  information, including an inventory of running processes, system performance
  information, resource utilization, and network dependencies.

      * The information collected by agents is secured at rest
  and in transit to the Application Discovery Service database in the cloud.

    * **AWS Partner Network (APN) solutions** integrate with Application
  Discovery Service, enabling you to import details of your on-premises
  environment directly into Migration Hub without using the discovery connector or
  discovery agent.

      * Third-party application discovery tools can query AWS
  Application Discovery Service, and they can write to the Application Discovery
  Service database using the public API.

      * In this way, you can import data into Migration Hub
  and view it, so that you can associate applications with servers and track
  migrations.

  ## Recommendations

  We recommend that you use agent-based discovery for non-VMware environments, and
  whenever you want to collect information about network dependencies. You can run
  agent-based and agentless discovery simultaneously. Use agentless discovery to
  complete the initial infrastructure assessment quickly, and then install agents
  on select hosts to collect additional information.

  ## Working With This Guide

  This API reference provides descriptions, syntax, and usage examples for each of
  the actions and data types for Application Discovery Service. The topic for each
  action shows the API request parameters and the response. Alternatively, you can
  use one of the AWS SDKs to access an API that is tailored to the programming
  language or platform that you're using. For more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

     Remember that you must set your Migration Hub home region before
  you call any of these APIs.

     You must make API calls for write actions (create, notify,
  associate, disassociate, import, or put) while in your home region, or a
  `HomeRegionNotSetException` error is returned.

     API calls for read actions (list, describe, stop, and delete) are
  permitted outside of your home region.

     Although it is unlikely, the Migration Hub home region could
  change. If you call APIs outside the home region, an `InvalidInputException` is
  returned.

     You must call `GetHomeRegion` to obtain the latest Migration Hub
  home region.

  This guide is intended for use with the [AWS Application Discovery Service User Guide](http://docs.aws.amazon.com/application-discovery/latest/userguide/).

  All data is handled according to the [AWS Privacy Policy](http://aws.amazon.com/privacy/). You can operate Application Discovery
  Service offline to inspect collected data before it is shared with the service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2015-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "discovery",
      global?: false,
      protocol: "json",
      service_id: "Application Discovery Service",
      signature_version: "v4",
      signing_name: "discovery",
      target_prefix: "AWSPoseidonService_V2015_11_01"
    }
  end

  @doc """
  Associates one or more configuration items with an application.
  """
  def associate_configuration_items_to_application(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "AssociateConfigurationItemsToApplication",
      input,
      options
    )
  end

  @doc """
  Deletes one or more import tasks, each identified by their import ID.

  Each import task has a number of records that can identify servers or
  applications.

  AWS Application Discovery Service has built-in matching logic that will identify
  when discovered servers match existing entries that you've previously
  discovered, the information for the already-existing discovered server is
  updated. When you delete an import task that contains records that were used to
  match, the information in those matched records that comes from the deleted
  records will also be deleted.
  """
  def batch_delete_import_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDeleteImportData", input, options)
  end

  @doc """
  Creates an application with the given name and description.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateApplication", input, options)
  end

  @doc """
  Creates one or more tags for configuration items.

  Tags are metadata that help you categorize IT assets. This API accepts a list of
  multiple configuration items.
  """
  def create_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTags", input, options)
  end

  @doc """
  Deletes a list of applications and their associations with configuration items.
  """
  def delete_applications(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteApplications", input, options)
  end

  @doc """
  Deletes the association between configuration items and one or more tags.

  This API accepts a list of multiple configuration items.
  """
  def delete_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTags", input, options)
  end

  @doc """
  Lists agents or connectors as specified by ID or other filters.

  All agents/connectors associated with your user account can be listed if you
  call `DescribeAgents` as is without passing any parameters.
  """
  def describe_agents(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAgents", input, options)
  end

  @doc """
  Retrieves attributes for a list of configuration item IDs.

  All of the supplied IDs must be for the same asset type from one of the
  following:

     server

     application

     process

     connection

  Output fields are specific to the asset type specified. For example, the output
  for a *server* configuration item includes a list of attributes about the
  server, such as host name, operating system, number of network cards, etc.

  For a complete list of outputs for each asset type, see [Using the DescribeConfigurations
  Action](https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations)
  in the *AWS Application Discovery Service User Guide*.
  """
  def describe_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConfigurations", input, options)
  end

  @doc """
  Lists exports as specified by ID.

  All continuous exports associated with your user account can be listed if you
  call `DescribeContinuousExports` as is without passing any parameters.
  """
  def describe_continuous_exports(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeContinuousExports", input, options)
  end

  @doc """
  `DescribeExportConfigurations` is deprecated.

  Use
  [DescribeImportTasks](https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html),
  instead.
  """
  def describe_export_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExportConfigurations", input, options)
  end

  @doc """
  Retrieve status of one or more export tasks.

  You can retrieve the status of up to 100 export tasks.
  """
  def describe_export_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExportTasks", input, options)
  end

  @doc """
  Returns an array of import tasks for your account, including status information,
  times, IDs, the Amazon S3 Object URL for the import file, and more.
  """
  def describe_import_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImportTasks", input, options)
  end

  @doc """
  Retrieves a list of configuration items that have tags as specified by the
  key-value pairs, name and value, passed to the optional parameter `filters`.

  There are three valid tag filter names:

    * tagKey

    * tagValue

    * configurationId

  Also, all configuration items associated with your user account that have tags
  can be listed if you call `DescribeTags` as is without passing any parameters.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTags", input, options)
  end

  @doc """
  Disassociates one or more configuration items from an application.
  """
  def disassociate_configuration_items_from_application(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DisassociateConfigurationItemsFromApplication",
      input,
      options
    )
  end

  @doc """
  Deprecated.

  Use `StartExportTask` instead.

  Exports all discovered configuration data to an Amazon S3 bucket or an
  application that enables you to view and evaluate the data. Data includes tags
  and tag associations, processes, connections, servers, and system performance.
  This API returns an export ID that you can query using the
  *DescribeExportConfigurations* API. The system imposes a limit of two
  configuration exports in six hours.
  """
  def export_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExportConfigurations", input, options)
  end

  @doc """
  Retrieves a short summary of discovered assets.

  This API operation takes no request parameters and is called as is at the
  command prompt as shown in the example.
  """
  def get_discovery_summary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDiscoverySummary", input, options)
  end

  @doc """
  Retrieves a list of configuration items as specified by the value passed to the
  required parameter `configurationType`.

  Optional filtering may be applied to refine search results.
  """
  def list_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListConfigurations", input, options)
  end

  @doc """
  Retrieves a list of servers that are one network hop away from a specified
  server.
  """
  def list_server_neighbors(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServerNeighbors", input, options)
  end

  @doc """
  Start the continuous flow of agent's discovered data into Amazon Athena.
  """
  def start_continuous_export(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents or connectors to start collecting data.
  """
  def start_data_collection_by_agent_ids(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDataCollectionByAgentIds", input, options)
  end

  @doc """
  Begins the export of discovered data to an S3 bucket.

  If you specify `agentIds` in a filter, the task exports up to 72 hours of
  detailed data collected by the identified Application Discovery Agent, including
  network, process, and performance details. A time range for exported agent data
  may be set by using `startTime` and `endTime`. Export of detailed agent data is
  limited to five concurrently running exports.

  If you do not include an `agentIds` filter, summary data is exported that
  includes both AWS Agentless Discovery Connector data and summary data from AWS
  Discovery Agents. Export of summary data is limited to two exports per day.
  """
  def start_export_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartExportTask", input, options)
  end

  @doc """
  Starts an import task, which allows you to import details of your on-premises
  environment directly into AWS Migration Hub without having to use the
  Application Discovery Service (ADS) tools such as the Discovery Connector or
  Discovery Agent.

  This gives you the option to perform migration assessment and planning directly
  from your imported data, including the ability to group your devices as
  applications and track their migration status.

  To start an import request, do this:

    1. Download the specially formatted comma separated value (CSV)
  import template, which you can find here:
  [https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv](https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv).     2. Fill out the template with your server and application data.

    3. Upload your import file to an Amazon S3 bucket, and make a note
  of it's Object URL. Your import file must be in the CSV format.

    4. Use the console or the `StartImportTask` command with the AWS CLI
  or one of the AWS SDKs to import the records from your file.

  For more information, including step-by-step procedures, see [Migration Hub
  Import](https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html)
  in the *AWS Application Discovery Service User Guide*.

  There are limits to the number of import tasks you can create (and delete) in an
  AWS account. For more information, see [AWS Application Discovery Service Limits](https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html)
  in the *AWS Application Discovery Service User Guide*.
  """
  def start_import_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartImportTask", input, options)
  end

  @doc """
  Stop the continuous flow of agent's discovered data into Amazon Athena.
  """
  def stop_continuous_export(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents or connectors to stop collecting data.
  """
  def stop_data_collection_by_agent_ids(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopDataCollectionByAgentIds", input, options)
  end

  @doc """
  Updates metadata about an application.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateApplication", input, options)
  end
end
