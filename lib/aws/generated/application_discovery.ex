# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationDiscovery do
  @moduledoc """
  Amazon Web Services Application Discovery Service

  Amazon Web Services Application Discovery Service (Application Discovery
  Service) helps you plan application migration projects.

  It automatically
  identifies servers, virtual machines (VMs), and network dependencies in your
  on-premises data
  centers. For more information, see the [Amazon Web Services Application Discovery Service FAQ](http://aws.amazon.com/application-discovery/faqs/).

  Application Discovery Service offers three ways of performing discovery and
  collecting
  data about your on-premises servers:

    *

  **Agentless discovery** using
  Amazon Web Services Application Discovery Service Agentless Collector (Agentless
  Collector), which doesn't require you
  to install an agent on each host.

      *
  Agentless Collector gathers server information regardless of the
  operating systems, which minimizes the time required for initial on-premises
  infrastructure assessment.

      *
  Agentless Collector doesn't collect information about network
  dependencies, only agent-based discovery collects that information.

    *

  **Agent-based discovery** using the Amazon Web Services Application
  Discovery Agent (Application Discovery Agent) collects a richer set of data than
  agentless
  discovery, which you install on one or more hosts in your data center.

      *
  The agent captures infrastructure and application information, including an
  inventory of running processes, system performance information, resource
  utilization,
  and network dependencies.

      *
  The information collected by agents is secured at rest and in transit to the
  Application Discovery Service database in the Amazon Web Services cloud. For
  more information, see
  [Amazon Web Services Application Discovery
  Agent](https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-agent.html).

    *

  **Amazon Web Services Partner Network (APN) solutions** integrate with
  Application Discovery Service, enabling you to import details of your
  on-premises
  environment directly into Amazon Web Services Migration Hub (Migration Hub)
  without using
  Agentless Collector or Application Discovery Agent.

      *
  Third-party application discovery tools can query Amazon Web Services
  Application Discovery
  Service, and they can write to the Application Discovery Service database using
  the
  public API.

      *
  In this way, you can import data into Migration Hub and view it, so that you can
  associate applications with servers and track migrations.

  ## Working With This Guide

  This API reference provides descriptions, syntax, and usage examples for each of
  the
  actions and data types for Application Discovery Service. The topic for each
  action shows the
  API request parameters and the response. Alternatively, you can use one of the
  Amazon Web Services SDKs to
  access an API that is tailored to the programming language or platform that
  you're using. For
  more information, see [Amazon Web Services SDKs](http://aws.amazon.com/tools/#SDKs).

    
  Remember that you must set your Migration Hub home Region before you call any of
  these APIs.

    
  You must make API calls for write actions (create, notify, associate,
  disassociate,
  import, or put) while in your home Region, or a `HomeRegionNotSetException`
  error is returned.

    
  API calls for read actions (list, describe, stop, and delete) are permitted
  outside
  of your home Region.

    
  Although it is unlikely, the Migration Hub home Region could change. If you call
  APIs outside the home Region, an `InvalidInputException` is returned.

    
  You must call `GetHomeRegion` to obtain the latest Migration Hub home
  Region.

  This guide is intended for use with the [Amazon Web Services Application Discovery Service User
  Guide](https://docs.aws.amazon.com/application-discovery/latest/userguide/).

  All data is handled according to the [Amazon Web Services Privacy Policy](https://aws.amazon.com/privacy/). You can operate Application Discovery
  Service offline to
  inspect collected data before it is shared with the service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
    meta = metadata()

    Request.request_post(client, meta, "AssociateConfigurationItemsToApplication", input, options)
  end

  @doc """

  Deletes one or more agents or collectors as specified by ID.

  Deleting an agent or collector does not
  delete the previously discovered data.
  To delete the data collected, use `StartBatchDeleteConfigurationTask`.
  """
  def batch_delete_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteAgents", input, options)
  end

  @doc """
  Deletes one or more import tasks, each identified by their import ID.

  Each import task has
  a number of records that can identify servers or applications.

  Amazon Web Services Application Discovery Service has built-in matching logic
  that will identify when
  discovered servers match existing entries that you've previously discovered, the
  information
  for the already-existing discovered server is updated. When you delete an import
  task that
  contains records that were used to match, the information in those matched
  records that comes
  from the deleted records will also be deleted.
  """
  def batch_delete_import_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteImportData", input, options)
  end

  @doc """
  Creates an application with the given name and description.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates one or more tags for configuration items.

  Tags are metadata that help you
  categorize IT assets. This API accepts a list of multiple configuration items.

  Do not store sensitive information (like personal data) in tags.
  """
  def create_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTags", input, options)
  end

  @doc """
  Deletes a list of applications and their associations with configuration
  items.
  """
  def delete_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplications", input, options)
  end

  @doc """
  Deletes the association between configuration items and one or more tags.

  This API
  accepts a list of multiple configuration items.
  """
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Lists agents or collectors as specified by ID or other filters.

  All agents/collectors
  associated with your user can be listed if you call `DescribeAgents` as is
  without passing any parameters.
  """
  def describe_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAgents", input, options)
  end

  @doc """

  Takes a unique deletion task identifier as input and returns metadata about a
  configuration deletion task.
  """
  def describe_batch_delete_configuration_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBatchDeleteConfigurationTask", input, options)
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
  for a
  *server* configuration item includes a list of attributes about the
  server, such as host name, operating system, number of network cards, etc.

  For a complete list of outputs for each asset type, see [Using the DescribeConfigurations
  Action](https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations)
  in the *Amazon Web Services Application
  Discovery Service User Guide*.
  """
  def describe_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigurations", input, options)
  end

  @doc """
  Lists exports as specified by ID.

  All continuous exports associated with your user
  can be listed if you call `DescribeContinuousExports` as is without passing
  any parameters.
  """
  def describe_continuous_exports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContinuousExports", input, options)
  end

  @doc """

  `DescribeExportConfigurations` is deprecated.

  Use
  [DescribeExportTasks](https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html),
  instead.
  """
  def describe_export_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExportConfigurations", input, options)
  end

  @doc """
  Retrieve status of one or more export tasks.

  You can retrieve the status of up to 100
  export tasks.
  """
  def describe_export_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExportTasks", input, options)
  end

  @doc """
  Returns an array of import tasks for your account, including status information,
  times,
  IDs, the Amazon S3 Object URL for the import file, and more.
  """
  def describe_import_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImportTasks", input, options)
  end

  @doc """
  Retrieves a list of configuration items that have tags as specified by the
  key-value
  pairs, name and value, passed to the optional parameter `filters`.

  There are three valid tag filter names:

    *
  tagKey

    *
  tagValue

    *
  configurationId

  Also, all configuration items associated with your user that have tags can be
  listed if you call `DescribeTags` as is without passing any parameters.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Disassociates one or more configuration items from an application.
  """
  def disassociate_configuration_items_from_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisassociateConfigurationItemsFromApplication",
      input,
      options
    )
  end

  @doc """
  Deprecated.

  Use `StartExportTask` instead.

  Exports all discovered configuration data to an Amazon S3 bucket or an
  application that
  enables you to view and evaluate the data. Data includes tags and tag
  associations, processes,
  connections, servers, and system performance. This API returns an export ID that
  you can query
  using the *DescribeExportConfigurations* API. The system imposes a limit of
  two configuration exports in six hours.
  """
  def export_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportConfigurations", input, options)
  end

  @doc """
  Retrieves a short summary of discovered assets.

  This API operation takes no request parameters and is called as is at the
  command
  prompt as shown in the example.
  """
  def get_discovery_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDiscoverySummary", input, options)
  end

  @doc """
  Retrieves a list of configuration items as specified by the value passed to the
  required parameter `configurationType`.

  Optional filtering may be applied to refine
  search results.
  """
  def list_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConfigurations", input, options)
  end

  @doc """
  Retrieves a list of servers that are one network hop away from a specified
  server.
  """
  def list_server_neighbors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServerNeighbors", input, options)
  end

  @doc """

  Takes a list of configurationId as input and starts an asynchronous deletion
  task to remove the configurationItems.

  Returns a unique deletion task identifier.
  """
  def start_batch_delete_configuration_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBatchDeleteConfigurationTask", input, options)
  end

  @doc """
  Start the continuous flow of agent's discovered data into Amazon Athena.
  """
  def start_continuous_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents to start collecting data.
  """
  def start_data_collection_by_agent_ids(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDataCollectionByAgentIds", input, options)
  end

  @doc """
  Begins the export of a discovered data report to an Amazon S3 bucket managed by
  Amazon Web Services.

  Exports might provide an estimate of fees and savings based on certain
  information
  that you provide. Fee estimates do not include any taxes that might apply.
  Your actual fees and savings depend on a variety of factors, including your
  actual usage of Amazon Web Services
  services, which might vary from the estimates provided in this report.

  If you do not specify `preferences` or `agentIds` in the filter, a
  summary of all servers, applications, tags, and performance is generated. This
  data is an
  aggregation of all server data collected through on-premises tooling, file
  import, application
  grouping and applying tags.

  If you specify `agentIds` in a filter, the task exports up to 72 hours of
  detailed data collected by the identified Application Discovery Agent, including
  network,
  process, and performance details. A time range for exported agent data may be
  set by using
  `startTime` and `endTime`. Export of detailed agent data is limited to
  five concurrently running exports.
  Export of detailed agent data is limited to two exports per day.

  If you enable `ec2RecommendationsPreferences` in `preferences`
  , an
  Amazon EC2 instance matching the characteristics of each server in Application
  Discovery Service is generated.
  Changing the attributes of the `ec2RecommendationsPreferences` changes the
  criteria of the recommendation.
  """
  def start_export_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExportTask", input, options)
  end

  @doc """
  Starts an import task, which allows you to import details of your on-premises
  environment
  directly into Amazon Web Services Migration Hub without having to use the Amazon
  Web Services Application Discovery
  Service (Application Discovery Service) tools such as the Amazon Web Services
  Application Discovery Service Agentless Collector
  or Application Discovery Agent.

  This gives you the option to
  perform migration assessment and planning directly from your imported data,
  including the
  ability to group your devices as applications and track their migration status.

  To start an import request, do this:

    1.
  Download the specially formatted comma separated value (CSV) import template,
  which
  you can find here:
  [https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv](https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv). 

    2.
  Fill out the template with your server and application data.

    3.
  Upload your import file to an Amazon S3 bucket, and make a note of it's Object
  URL.
  Your import file must be in the CSV format.

    4.
  Use the console or the `StartImportTask` command with the Amazon Web Services
  CLI or one
  of the Amazon Web Services SDKs to import the records from your file.

  For more information, including step-by-step procedures, see [Migration Hub
  Import](https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html)
  in the *Amazon Web Services Application Discovery Service User
  Guide*.

  There are limits to the number of import tasks you can create (and delete) in an
  Amazon Web Services
  account. For more information, see [Amazon Web Services Application Discovery Service
  Limits](https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html)
  in the *Amazon Web Services Application Discovery Service User
  Guide*.
  """
  def start_import_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartImportTask", input, options)
  end

  @doc """
  Stop the continuous flow of agent's discovered data into Amazon Athena.
  """
  def stop_continuous_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents to stop collecting data.
  """
  def stop_data_collection_by_agent_ids(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDataCollectionByAgentIds", input, options)
  end

  @doc """
  Updates metadata about an application.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end
end
