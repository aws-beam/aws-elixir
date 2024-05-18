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

  @typedoc """

  ## Example:
      
      describe_continuous_exports_response() :: %{
        "descriptions" => list(continuous_export_description()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_continuous_exports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_continuous_export_request() :: %{}
      
  """
  @type start_continuous_export_request() :: %{}

  @typedoc """

  ## Example:
      
      export_configurations_response() :: %{
        "exportId" => String.t()
      }
      
  """
  @type export_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_tag() :: %{
        "configurationId" => String.t(),
        "configurationType" => list(any()),
        "key" => String.t(),
        "timeOfCreation" => non_neg_integer(),
        "value" => String.t()
      }
      
  """
  @type configuration_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      neighbor_connection_detail() :: %{
        "connectionsCount" => float(),
        "destinationPort" => integer(),
        "destinationServerId" => String.t(),
        "sourceServerId" => String.t(),
        "transportProtocol" => String.t()
      }
      
  """
  @type neighbor_connection_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_agents_request() :: %{
        required("deleteAgents") => list(delete_agent()())
      }
      
  """
  @type batch_delete_agents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_request() :: %{
        optional("tags") => list(tag()()),
        required("configurationIds") => list(String.t()())
      }
      
  """
  @type delete_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_connector_info() :: %{
        "activeConnectors" => integer(),
        "blackListedConnectors" => integer(),
        "healthyConnectors" => integer(),
        "shutdownConnectors" => integer(),
        "totalConnectors" => integer(),
        "unhealthyConnectors" => integer(),
        "unknownConnectors" => integer()
      }
      
  """
  @type customer_connector_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_applications_response() :: %{}
      
  """
  @type delete_applications_response() :: %{}

  @typedoc """

  ## Example:
      
      server_internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type server_internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_import_task_response() :: %{
        "task" => import_task()
      }
      
  """
  @type start_import_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configurations_response() :: %{
        "configurations" => list(map()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_server_neighbors_response() :: %{
        "knownDependencyCount" => float(),
        "neighbors" => list(neighbor_connection_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_server_neighbors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failed_configuration() :: %{
        "configurationId" => String.t(),
        "errorMessage" => String.t(),
        "errorStatusCode" => integer()
      }
      
  """
  @type failed_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_export_configurations_response() :: %{
        "exportsInfo" => list(export_info()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_export_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_filter() :: %{
        "condition" => String.t(),
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type export_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_configuration_items_from_application_request() :: %{
        required("applicationConfigurationId") => String.t(),
        required("configurationIds") => list(String.t()())
      }
      
  """
  @type disassociate_configuration_items_from_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_export_tasks_response() :: %{
        "exportsInfo" => list(export_info()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_export_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configurations_request() :: %{
        required("configurationIds") => list(String.t()())
      }
      
  """
  @type describe_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agents_request() :: %{
        optional("agentIds") => list(String.t()()),
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_agents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_instance_options() :: %{
        "offeringClass" => list(any()),
        "purchasingOption" => list(any()),
        "termLength" => list(any())
      }
      
  """
  @type reserved_instance_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_configuration_items_to_application_response() :: %{}
      
  """
  @type associate_configuration_items_to_application_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_tags_response() :: %{
        "nextToken" => String.t(),
        "tags" => list(configuration_tag()())
      }
      
  """
  @type describe_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_batch_delete_configuration_task_request() :: %{
        required("configurationIds") => list(String.t()()),
        required("configurationType") => list(any())
      }
      
  """
  @type start_batch_delete_configuration_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_configurations_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("orderBy") => list(order_by_element()()),
        required("configurationType") => list(any())
      }
      
  """
  @type list_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_batch_delete_configuration_task_response() :: %{
        "taskId" => String.t()
      }
      
  """
  @type start_batch_delete_configuration_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tags_request() :: %{
        required("configurationIds") => list(String.t()()),
        required("tags") => list(tag()())
      }
      
  """
  @type create_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_agent_info() :: %{
        "activeAgents" => integer(),
        "blackListedAgents" => integer(),
        "healthyAgents" => integer(),
        "shutdownAgents" => integer(),
        "totalAgents" => integer(),
        "unhealthyAgents" => integer(),
        "unknownAgents" => integer()
      }
      
  """
  @type customer_agent_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_network_info() :: %{
        "ipAddress" => String.t(),
        "macAddress" => String.t()
      }
      
  """
  @type agent_network_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_tags_response() :: %{}
      
  """
  @type delete_tags_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_continuous_export_response() :: %{
        "startTime" => non_neg_integer(),
        "stopTime" => non_neg_integer()
      }
      
  """
  @type stop_continuous_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_info() :: %{
        "agentId" => String.t(),
        "agentNetworkInfoList" => list(agent_network_info()()),
        "agentType" => String.t(),
        "collectionStatus" => String.t(),
        "connectorId" => String.t(),
        "health" => list(any()),
        "hostName" => String.t(),
        "lastHealthPingTime" => String.t(),
        "registeredTime" => String.t(),
        "version" => String.t()
      }
      
  """
  @type agent_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_export_tasks_request() :: %{
        optional("exportIds") => list(String.t()()),
        optional("filters") => list(export_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_export_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_continuous_export_response() :: %{
        "dataSource" => list(any()),
        "exportId" => String.t(),
        "s3Bucket" => String.t(),
        "schemaStorageConfig" => map(),
        "startTime" => non_neg_integer()
      }
      
  """
  @type start_continuous_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_import_data_response() :: %{
        "errors" => list(batch_delete_import_data_error()())
      }
      
  """
  @type batch_delete_import_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_agentless_collector_info() :: %{
        "activeAgentlessCollectors" => integer(),
        "denyListedAgentlessCollectors" => integer(),
        "healthyAgentlessCollectors" => integer(),
        "shutdownAgentlessCollectors" => integer(),
        "totalAgentlessCollectors" => integer(),
        "unhealthyAgentlessCollectors" => integer(),
        "unknownAgentlessCollectors" => integer()
      }
      
  """
  @type customer_agentless_collector_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_configuration_status() :: %{
        "agentId" => String.t(),
        "description" => String.t(),
        "operationSucceeded" => boolean()
      }
      
  """
  @type agent_configuration_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_agents_response() :: %{
        "errors" => list(batch_delete_agent_error()())
      }
      
  """
  @type batch_delete_agents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_agent() :: %{
        "agentId" => String.t(),
        "force" => boolean()
      }
      
  """
  @type delete_agent() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("description") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_permitted_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type operation_not_permitted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        "configurationId" => String.t()
      }
      
  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_recommendations_export_preferences() :: %{
        "cpuPerformanceMetricBasis" => usage_metric_basis(),
        "enabled" => boolean(),
        "excludedInstanceTypes" => list(String.t()()),
        "preferredRegion" => String.t(),
        "ramPerformanceMetricBasis" => usage_metric_basis(),
        "reservedInstanceOptions" => reserved_instance_options(),
        "tenancy" => list(any())
      }
      
  """
  @type ec2_recommendations_export_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_data_collection_by_agent_ids_response() :: %{
        "agentsConfigurationStatus" => list(agent_configuration_status()())
      }
      
  """
  @type stop_data_collection_by_agent_ids_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_delete_configuration_task_response() :: %{
        "task" => batch_delete_configuration_task()
      }
      
  """
  @type describe_batch_delete_configuration_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_configuration_items_to_application_request() :: %{
        required("applicationConfigurationId") => String.t(),
        required("configurationIds") => list(String.t()())
      }
      
  """
  @type associate_configuration_items_to_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_task() :: %{
        "applicationImportFailure" => integer(),
        "applicationImportSuccess" => integer(),
        "clientRequestToken" => String.t(),
        "errorsAndFailedEntriesZip" => String.t(),
        "importCompletionTime" => non_neg_integer(),
        "importDeletedTime" => non_neg_integer(),
        "importRequestTime" => non_neg_integer(),
        "importTaskId" => String.t(),
        "importUrl" => String.t(),
        "name" => String.t(),
        "serverImportFailure" => integer(),
        "serverImportSuccess" => integer(),
        "status" => list(any())
      }
      
  """
  @type import_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_configurations_response() :: %{
        "configurations" => list(map()())
      }
      
  """
  @type describe_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "condition" => String.t(),
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_me_collector_info() :: %{
        "activeMeCollectors" => integer(),
        "denyListedMeCollectors" => integer(),
        "healthyMeCollectors" => integer(),
        "shutdownMeCollectors" => integer(),
        "totalMeCollectors" => integer(),
        "unhealthyMeCollectors" => integer(),
        "unknownMeCollectors" => integer()
      }
      
  """
  @type customer_me_collector_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_discovery_summary_request() :: %{}
      
  """
  @type get_discovery_summary_request() :: %{}

  @typedoc """

  ## Example:
      
      start_data_collection_by_agent_ids_request() :: %{
        required("agentIds") => list(String.t()())
      }
      
  """
  @type start_data_collection_by_agent_ids_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t(),
        required("configurationId") => String.t()
      }
      
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{}
      
  """
  @type update_application_response() :: %{}

  @typedoc """

  ## Example:
      
      export_info() :: %{
        "configurationsDownloadUrl" => String.t(),
        "exportId" => String.t(),
        "exportRequestTime" => non_neg_integer(),
        "exportStatus" => list(any()),
        "isTruncated" => boolean(),
        "requestedEndTime" => non_neg_integer(),
        "requestedStartTime" => non_neg_integer(),
        "statusMessage" => String.t()
      }
      
  """
  @type export_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_continuous_export_request() :: %{
        required("exportId") => String.t()
      }
      
  """
  @type stop_continuous_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_configuration_task() :: %{
        "configurationType" => list(any()),
        "deletedConfigurations" => list(String.t()()),
        "deletionWarnings" => list(deletion_warning()()),
        "endTime" => non_neg_integer(),
        "failedConfigurations" => list(failed_configuration()()),
        "requestedConfigurations" => list(String.t()()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "taskId" => String.t()
      }
      
  """
  @type batch_delete_configuration_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_import_data_request() :: %{
        optional("deleteHistory") => boolean(),
        required("importTaskIds") => list(String.t()())
      }
      
  """
  @type batch_delete_import_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_continuous_exports_request() :: %{
        optional("exportIds") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_continuous_exports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_data_collection_by_agent_ids_request() :: %{
        required("agentIds") => list(String.t()())
      }
      
  """
  @type stop_data_collection_by_agent_ids_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_batch_delete_configuration_task_request() :: %{
        required("taskId") => String.t()
      }
      
  """
  @type describe_batch_delete_configuration_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_data_collection_by_agent_ids_response() :: %{
        "agentsConfigurationStatus" => list(agent_configuration_status()())
      }
      
  """
  @type start_data_collection_by_agent_ids_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_import_data_error() :: %{
        "errorCode" => list(any()),
        "errorDescription" => String.t(),
        "importTaskId" => String.t()
      }
      
  """
  @type batch_delete_import_data_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_task_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type import_task_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agents_response() :: %{
        "agentsInfo" => list(agent_info()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_agents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_export_task_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("exportDataFormat") => list(list(any())()),
        optional("filters") => list(export_filter()()),
        optional("preferences") => list(),
        optional("startTime") => non_neg_integer()
      }
      
  """
  @type start_export_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_tags_response() :: %{}
      
  """
  @type create_tags_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_export_configurations_request() :: %{
        optional("exportIds") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_export_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      order_by_element() :: %{
        "fieldName" => String.t(),
        "sortOrder" => list(any())
      }
      
  """
  @type order_by_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_import_task_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("importUrl") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type start_import_task_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_discovery_summary_response() :: %{
        "agentSummary" => customer_agent_info(),
        "agentlessCollectorSummary" => customer_agentless_collector_info(),
        "applications" => float(),
        "connectorSummary" => customer_connector_info(),
        "meCollectorSummary" => customer_me_collector_info(),
        "servers" => float(),
        "serversMappedToApplications" => float(),
        "serversMappedtoTags" => float()
      }
      
  """
  @type get_discovery_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_agent_error() :: %{
        "agentId" => String.t(),
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }
      
  """
  @type batch_delete_agent_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_server_neighbors_request() :: %{
        optional("maxResults") => integer(),
        optional("neighborConfigurationIds") => list(String.t()()),
        optional("nextToken") => String.t(),
        optional("portInformationNeeded") => boolean(),
        required("configurationId") => String.t()
      }
      
  """
  @type list_server_neighbors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deletion_warning() :: %{
        "configurationId" => String.t(),
        "warningCode" => integer(),
        "warningText" => String.t()
      }
      
  """
  @type deletion_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      home_region_not_set_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type home_region_not_set_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      continuous_export_description() :: %{
        "dataSource" => list(any()),
        "exportId" => String.t(),
        "s3Bucket" => String.t(),
        "schemaStorageConfig" => map(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusDetail" => String.t(),
        "stopTime" => non_neg_integer()
      }
      
  """
  @type continuous_export_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_tags_request() :: %{
        optional("filters") => list(tag_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_filter() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }
      
  """
  @type tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_import_tasks_request() :: %{
        optional("filters") => list(import_task_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_import_tasks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_metric_basis() :: %{
        "name" => String.t(),
        "percentageAdjust" => float()
      }
      
  """
  @type usage_metric_basis() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_export_task_response() :: %{
        "exportId" => String.t()
      }
      
  """
  @type start_export_task_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_configuration_items_from_application_response() :: %{}
      
  """
  @type disassociate_configuration_items_from_application_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_import_tasks_response() :: %{
        "nextToken" => String.t(),
        "tasks" => list(import_task()())
      }
      
  """
  @type describe_import_tasks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_applications_request() :: %{
        required("configurationIds") => list(String.t()())
      }
      
  """
  @type delete_applications_request() :: %{String.t() => any()}

  @type associate_configuration_items_to_application_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type batch_delete_agents_errors() ::
          authorization_error_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type batch_delete_import_data_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type create_application_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type create_tags_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | server_internal_error_exception()

  @type delete_applications_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type delete_tags_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | server_internal_error_exception()

  @type describe_agents_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type describe_batch_delete_configuration_task_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type describe_configurations_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type describe_continuous_exports_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | server_internal_error_exception()

  @type describe_export_configurations_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | server_internal_error_exception()

  @type describe_export_tasks_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type describe_import_tasks_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type describe_tags_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | server_internal_error_exception()

  @type disassociate_configuration_items_from_application_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type export_configurations_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type get_discovery_summary_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type list_configurations_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | server_internal_error_exception()

  @type list_server_neighbors_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type start_batch_delete_configuration_task_errors() ::
          limit_exceeded_exception()
          | authorization_error_exception()
          | home_region_not_set_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type start_continuous_export_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | conflict_error_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_value_exception()
          | resource_in_use_exception()
          | server_internal_error_exception()

  @type start_data_collection_by_agent_ids_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type start_export_task_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type start_import_task_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | resource_in_use_exception()
          | server_internal_error_exception()

  @type stop_continuous_export_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | server_internal_error_exception()

  @type stop_data_collection_by_agent_ids_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  @type update_application_errors() ::
          authorization_error_exception()
          | home_region_not_set_exception()
          | invalid_parameter_exception()
          | invalid_parameter_value_exception()
          | server_internal_error_exception()

  def metadata do
    %{
      api_version: "2015-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "discovery",
      global?: false,
      hostname: nil,
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
  @spec associate_configuration_items_to_application(
          map(),
          associate_configuration_items_to_application_request(),
          list()
        ) ::
          {:ok, associate_configuration_items_to_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_configuration_items_to_application_errors()}
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
  @spec batch_delete_agents(map(), batch_delete_agents_request(), list()) ::
          {:ok, batch_delete_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_agents_errors()}
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
  @spec batch_delete_import_data(map(), batch_delete_import_data_request(), list()) ::
          {:ok, batch_delete_import_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_import_data_errors()}
  def batch_delete_import_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteImportData", input, options)
  end

  @doc """
  Creates an application with the given name and description.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
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
  @spec create_tags(map(), create_tags_request(), list()) ::
          {:ok, create_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_tags_errors()}
  def create_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTags", input, options)
  end

  @doc """
  Deletes a list of applications and their associations with configuration
  items.
  """
  @spec delete_applications(map(), delete_applications_request(), list()) ::
          {:ok, delete_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_applications_errors()}
  def delete_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplications", input, options)
  end

  @doc """
  Deletes the association between configuration items and one or more tags.

  This API
  accepts a list of multiple configuration items.
  """
  @spec delete_tags(map(), delete_tags_request(), list()) ::
          {:ok, delete_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_tags_errors()}
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
  @spec describe_agents(map(), describe_agents_request(), list()) ::
          {:ok, describe_agents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_agents_errors()}
  def describe_agents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAgents", input, options)
  end

  @doc """

  Takes a unique deletion task identifier as input and returns metadata about a
  configuration deletion task.
  """
  @spec describe_batch_delete_configuration_task(
          map(),
          describe_batch_delete_configuration_task_request(),
          list()
        ) ::
          {:ok, describe_batch_delete_configuration_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_batch_delete_configuration_task_errors()}
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
  @spec describe_configurations(map(), describe_configurations_request(), list()) ::
          {:ok, describe_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_configurations_errors()}
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
  @spec describe_continuous_exports(map(), describe_continuous_exports_request(), list()) ::
          {:ok, describe_continuous_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_continuous_exports_errors()}
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
  @spec describe_export_configurations(map(), describe_export_configurations_request(), list()) ::
          {:ok, describe_export_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_export_configurations_errors()}
  def describe_export_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExportConfigurations", input, options)
  end

  @doc """
  Retrieve status of one or more export tasks.

  You can retrieve the status of up to 100
  export tasks.
  """
  @spec describe_export_tasks(map(), describe_export_tasks_request(), list()) ::
          {:ok, describe_export_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_export_tasks_errors()}
  def describe_export_tasks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExportTasks", input, options)
  end

  @doc """
  Returns an array of import tasks for your account, including status information,
  times,
  IDs, the Amazon S3 Object URL for the import file, and more.
  """
  @spec describe_import_tasks(map(), describe_import_tasks_request(), list()) ::
          {:ok, describe_import_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_import_tasks_errors()}
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
  @spec describe_tags(map(), describe_tags_request(), list()) ::
          {:ok, describe_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_tags_errors()}
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Disassociates one or more configuration items from an application.
  """
  @spec disassociate_configuration_items_from_application(
          map(),
          disassociate_configuration_items_from_application_request(),
          list()
        ) ::
          {:ok, disassociate_configuration_items_from_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_configuration_items_from_application_errors()}
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
  @spec export_configurations(map(), %{}, list()) ::
          {:ok, export_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_configurations_errors()}
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
  @spec get_discovery_summary(map(), get_discovery_summary_request(), list()) ::
          {:ok, get_discovery_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_discovery_summary_errors()}
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
  @spec list_configurations(map(), list_configurations_request(), list()) ::
          {:ok, list_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_configurations_errors()}
  def list_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConfigurations", input, options)
  end

  @doc """
  Retrieves a list of servers that are one network hop away from a specified
  server.
  """
  @spec list_server_neighbors(map(), list_server_neighbors_request(), list()) ::
          {:ok, list_server_neighbors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_server_neighbors_errors()}
  def list_server_neighbors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServerNeighbors", input, options)
  end

  @doc """

  Takes a list of configurationId as input and starts an asynchronous deletion
  task to remove the configurationItems.

  Returns a unique deletion task identifier.
  """
  @spec start_batch_delete_configuration_task(
          map(),
          start_batch_delete_configuration_task_request(),
          list()
        ) ::
          {:ok, start_batch_delete_configuration_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_batch_delete_configuration_task_errors()}
  def start_batch_delete_configuration_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBatchDeleteConfigurationTask", input, options)
  end

  @doc """
  Start the continuous flow of agent's discovered data into Amazon Athena.
  """
  @spec start_continuous_export(map(), start_continuous_export_request(), list()) ::
          {:ok, start_continuous_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_continuous_export_errors()}
  def start_continuous_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents to start collecting data.
  """
  @spec start_data_collection_by_agent_ids(
          map(),
          start_data_collection_by_agent_ids_request(),
          list()
        ) ::
          {:ok, start_data_collection_by_agent_ids_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_data_collection_by_agent_ids_errors()}
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
  @spec start_export_task(map(), start_export_task_request(), list()) ::
          {:ok, start_export_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_export_task_errors()}
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
  @spec start_import_task(map(), start_import_task_request(), list()) ::
          {:ok, start_import_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_import_task_errors()}
  def start_import_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartImportTask", input, options)
  end

  @doc """
  Stop the continuous flow of agent's discovered data into Amazon Athena.
  """
  @spec stop_continuous_export(map(), stop_continuous_export_request(), list()) ::
          {:ok, stop_continuous_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_continuous_export_errors()}
  def stop_continuous_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopContinuousExport", input, options)
  end

  @doc """
  Instructs the specified agents to stop collecting data.
  """
  @spec stop_data_collection_by_agent_ids(
          map(),
          stop_data_collection_by_agent_ids_request(),
          list()
        ) ::
          {:ok, stop_data_collection_by_agent_ids_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_data_collection_by_agent_ids_errors()}
  def stop_data_collection_by_agent_ids(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDataCollectionByAgentIds", input, options)
  end

  @doc """
  Updates metadata about an application.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end
end
