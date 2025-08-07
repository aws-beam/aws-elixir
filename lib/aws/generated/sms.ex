# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SMS do
  @moduledoc """


  ## Product update

  We recommend [Amazon Web Services Application Migration Service](http://aws.amazon.com/application-migration-service) (Amazon Web
  Services
  MGN) as the primary migration service for lift-and-shift migrations.

  If Amazon Web Services MGN is
  unavailable in a specific Amazon Web Services Region, you can use the Server
  Migration Service APIs through March
  2023.

  Server Migration Service (Server Migration Service) makes it easier and faster
  for you to migrate your
  on-premises workloads to Amazon Web Services. To learn more about Server
  Migration Service, see the following
  resources:

    *

  [Server Migration Service product page](http://aws.amazon.com/server-migration-service/)

    *

  [Server Migration Service User Guide](https://docs.aws.amazon.com/server-migration-service/latest/userguide/)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      connector() :: %{
        "associatedOn" => non_neg_integer(),
        "capabilityList" => list(list(any())()),
        "connectorId" => String.t() | atom(),
        "ipAddress" => String.t() | atom(),
        "macAddress" => String.t() | atom(),
        "status" => list(any()),
        "version" => String.t() | atom(),
        "vmManagerId" => String.t() | atom(),
        "vmManagerName" => String.t() | atom(),
        "vmManagerType" => list(any())
      }
      
  """
  @type connector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_launch_configuration_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type get_app_launch_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_replication_jobs_response() :: %{
        "nextToken" => String.t() | atom(),
        "replicationJobList" => list(replication_job())
      }
      
  """
  @type get_replication_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_apps_response() :: %{
        "apps" => list(app_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_apps_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_app_launch_configuration_response() :: %{}
      
  """
  @type delete_app_launch_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      import_server_catalog_response() :: %{}
      
  """
  @type import_server_catalog_response() :: %{}

  @typedoc """

  ## Example:
      
      terminate_app_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type terminate_app_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_app_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("roleName") => String.t() | atom(),
        optional("serverGroups") => list(server_group()),
        optional("tags") => list(tag())
      }
      
  """
  @type create_app_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dry_run_operation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type dry_run_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_app_response() :: %{}
      
  """
  @type delete_app_response() :: %{}

  @typedoc """

  ## Example:
      
      generate_change_set_request() :: %{
        optional("appId") => String.t() | atom(),
        optional("changesetFormat") => list(any())
      }
      
  """
  @type generate_change_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_app_validation_configuration_response() :: %{}
      
  """
  @type put_app_validation_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      stop_app_replication_response() :: %{}
      
  """
  @type stop_app_replication_response() :: %{}

  @typedoc """

  ## Example:
      
      server_replication_parameters() :: %{
        "encrypted" => boolean(),
        "frequency" => integer(),
        "kmsKeyId" => String.t() | atom(),
        "licenseType" => list(any()),
        "numberOfRecentAmisToKeep" => integer(),
        "runOnce" => boolean(),
        "seedTime" => non_neg_integer()
      }
      
  """
  @type server_replication_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      launch_app_response() :: %{}
      
  """
  @type launch_app_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_app_launch_configuration_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type delete_app_launch_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_replication_job_request() :: %{
        optional("description") => String.t() | atom(),
        optional("encrypted") => boolean(),
        optional("frequency") => integer(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("licenseType") => list(any()),
        optional("numberOfRecentAmisToKeep") => integer(),
        optional("roleName") => String.t() | atom(),
        optional("runOnce") => boolean(),
        required("seedReplicationTime") => non_neg_integer(),
        required("serverId") => String.t() | atom()
      }
      
  """
  @type create_replication_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unauthorized_operation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unauthorized_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_job_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replication_job_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_replication_job_request() :: %{
        optional("description") => String.t() | atom(),
        optional("encrypted") => boolean(),
        optional("frequency") => integer(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("licenseType") => list(any()),
        optional("nextReplicationRunStartTime") => non_neg_integer(),
        optional("numberOfRecentAmisToKeep") => integer(),
        optional("roleName") => String.t() | atom(),
        required("replicationJobId") => String.t() | atom()
      }
      
  """
  @type update_replication_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_on_demand_app_replication_response() :: %{}
      
  """
  @type start_on_demand_app_replication_response() :: %{}

  @typedoc """

  ## Example:
      
      vm_server() :: %{
        "vmManagerName" => String.t() | atom(),
        "vmManagerType" => list(any()),
        "vmName" => String.t() | atom(),
        "vmPath" => String.t() | atom(),
        "vmServerAddress" => vm_server_address()
      }
      
  """
  @type vm_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      missing_required_parameter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type missing_required_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connectors_response() :: %{
        "connectorList" => list(connector()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_connectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_app_replication_configuration_request() :: %{
        optional("appId") => String.t() | atom(),
        optional("serverGroupReplicationConfigurations") => list(server_group_replication_configuration())
      }
      
  """
  @type put_app_replication_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      launch_app_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type launch_app_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s_s_m_validation_parameters() :: %{
        "command" => String.t() | atom(),
        "executionTimeoutSeconds" => integer(),
        "instanceId" => String.t() | atom(),
        "outputS3BucketName" => String.t() | atom(),
        "scriptType" => list(any()),
        "source" => source()
      }
      
  """
  @type s_s_m_validation_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_app_response() :: %{}
      
  """
  @type terminate_app_response() :: %{}

  @typedoc """

  ## Example:
      
      server_group_launch_configuration() :: %{
        "launchOrder" => integer(),
        "serverGroupId" => String.t() | atom(),
        "serverLaunchConfigurations" => list(server_launch_configuration())
      }
      
  """
  @type server_group_launch_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_app_replication_response() :: %{}
      
  """
  @type start_app_replication_response() :: %{}

  @typedoc """

  ## Example:
      
      server_cannot_be_replicated_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type server_cannot_be_replicated_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_run_stage_details() :: %{
        "stage" => String.t() | atom(),
        "stageProgress" => String.t() | atom()
      }
      
  """
  @type replication_run_stage_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_output() :: %{
        "appValidationOutput" => app_validation_output(),
        "latestValidationTime" => non_neg_integer(),
        "name" => String.t() | atom(),
        "serverValidationOutput" => server_validation_output(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "validationId" => String.t() | atom()
      }
      
  """
  @type validation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_data() :: %{
        "s3Location" => s3_location()
      }
      
  """
  @type user_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_group_replication_configuration() :: %{
        "serverGroupId" => String.t() | atom(),
        "serverReplicationConfigurations" => list(server_replication_configuration())
      }
      
  """
  @type server_group_replication_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type get_app_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_replication_job_request() :: %{
        required("replicationJobId") => String.t() | atom()
      }
      
  """
  @type delete_replication_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_servers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("vmServerAddressList") => list(vm_server_address())
      }
      
  """
  @type get_servers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_replication_configuration_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type get_app_replication_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_connector_response() :: %{}
      
  """
  @type disassociate_connector_response() :: %{}

  @typedoc """

  ## Example:
      
      app_validation_configuration() :: %{
        "appValidationStrategy" => list(any()),
        "name" => String.t() | atom(),
        "ssmValidationParameters" => s_s_m_validation_parameters(),
        "validationId" => String.t() | atom()
      }
      
  """
  @type app_validation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_app_launch_configuration_request() :: %{
        optional("appId") => String.t() | atom(),
        optional("autoLaunch") => boolean(),
        optional("roleName") => String.t() | atom(),
        optional("serverGroupLaunchConfigurations") => list(server_group_launch_configuration())
      }
      
  """
  @type put_app_launch_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_app_replication_configuration_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type delete_app_replication_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_error() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notify_app_validation_output_response() :: %{}
      
  """
  @type notify_app_validation_output_response() :: %{}

  @typedoc """

  ## Example:
      
      no_connectors_available_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type no_connectors_available_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_replication_job_response() :: %{}
      
  """
  @type update_replication_job_response() :: %{}

  @typedoc """

  ## Example:
      
      start_app_replication_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type start_app_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connectors_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type get_connectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generate_template_response() :: %{
        "s3Location" => s3_location()
      }
      
  """
  @type generate_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generate_change_set_response() :: %{
        "s3Location" => s3_location()
      }
      
  """
  @type generate_change_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_app_validation_configuration_request() :: %{
        optional("appValidationConfigurations") => list(app_validation_configuration()),
        optional("serverGroupValidationConfigurations") => list(server_group_validation_configuration()),
        required("appId") => String.t() | atom()
      }
      
  """
  @type put_app_validation_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vm_server_address() :: %{
        "vmId" => String.t() | atom(),
        "vmManagerId" => String.t() | atom()
      }
      
  """
  @type vm_server_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      user_data_validation_parameters() :: %{
        "scriptType" => list(any()),
        "source" => source()
      }
      
  """
  @type user_data_validation_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_validation_output() :: %{
        "server" => server()
      }
      
  """
  @type server_validation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_not_permitted_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type operation_not_permitted_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s_s_m_output() :: %{
        "s3Location" => s3_location()
      }
      
  """
  @type s_s_m_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "bucket" => String.t() | atom(),
        "key" => String.t() | atom()
      }
      
  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_app_catalog_request() :: %{
        optional("roleName") => String.t() | atom()
      }
      
  """
  @type import_app_catalog_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_app_replication_request() :: %{
        optional("appId") => String.t() | atom()
      }
      
  """
  @type stop_app_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_job_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replication_job_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      app_summary() :: %{
        "appId" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "importedAppId" => String.t() | atom(),
        "lastModified" => non_neg_integer(),
        "latestReplicationTime" => non_neg_integer(),
        "launchConfigurationStatus" => list(any()),
        "launchDetails" => launch_details(),
        "launchStatus" => list(any()),
        "launchStatusMessage" => String.t() | atom(),
        "name" => String.t() | atom(),
        "replicationConfigurationStatus" => list(any()),
        "replicationStatus" => list(any()),
        "replicationStatusMessage" => String.t() | atom(),
        "roleName" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "totalServerGroups" => integer(),
        "totalServers" => integer()
      }
      
  """
  @type app_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_server_catalog_response() :: %{}
      
  """
  @type delete_server_catalog_response() :: %{}

  @typedoc """

  ## Example:
      
      get_app_response() :: %{
        "appSummary" => app_summary(),
        "serverGroups" => list(server_group()),
        "tags" => list(tag())
      }
      
  """
  @type get_app_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_validation_configuration_request() :: %{
        required("appId") => String.t() | atom()
      }
      
  """
  @type get_app_validation_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_app_response() :: %{
        "appSummary" => app_summary(),
        "serverGroups" => list(server_group()),
        "tags" => list(tag())
      }
      
  """
  @type update_app_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source() :: %{
        "s3Location" => s3_location()
      }
      
  """
  @type source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_group_validation_configuration() :: %{
        "serverGroupId" => String.t() | atom(),
        "serverValidationConfigurations" => list(server_validation_configuration())
      }
      
  """
  @type server_group_validation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generate_template_request() :: %{
        optional("appId") => String.t() | atom(),
        optional("templateFormat") => list(any())
      }
      
  """
  @type generate_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_app_request() :: %{
        optional("appId") => String.t() | atom(),
        optional("forceStopAppReplication") => boolean(),
        optional("forceTerminateApp") => boolean()
      }
      
  """
  @type delete_app_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      temporarily_unavailable_exception() :: %{}
      
  """
  @type temporarily_unavailable_exception() :: %{}

  @typedoc """

  ## Example:
      
      get_app_validation_configuration_response() :: %{
        "appValidationConfigurations" => list(app_validation_configuration()),
        "serverGroupValidationConfigurations" => list(server_group_validation_configuration())
      }
      
  """
  @type get_app_validation_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification_context() :: %{
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "validationId" => String.t() | atom()
      }
      
  """
  @type notification_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_on_demand_replication_run_response() :: %{
        "replicationRunId" => String.t() | atom()
      }
      
  """
  @type start_on_demand_replication_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_replication_configuration() :: %{
        "server" => server(),
        "serverReplicationParameters" => server_replication_parameters()
      }
      
  """
  @type server_replication_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_on_demand_replication_run_request() :: %{
        optional("description") => String.t() | atom(),
        required("replicationJobId") => String.t() | atom()
      }
      
  """
  @type start_on_demand_replication_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_app_validation_configuration_request() :: %{
        required("appId") => String.t() | atom()
      }
      
  """
  @type delete_app_validation_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server() :: %{
        "replicationJobId" => String.t() | atom(),
        "replicationJobTerminated" => boolean(),
        "serverId" => String.t() | atom(),
        "serverType" => list(any()),
        "vmServer" => vm_server()
      }
      
  """
  @type server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_app_replication_configuration_response() :: %{}
      
  """
  @type delete_app_replication_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      start_on_demand_app_replication_request() :: %{
        optional("description") => String.t() | atom(),
        required("appId") => String.t() | atom()
      }
      
  """
  @type start_on_demand_app_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_replication_job_response() :: %{}
      
  """
  @type delete_replication_job_response() :: %{}

  @typedoc """

  ## Example:
      
      create_replication_job_response() :: %{
        "replicationJobId" => String.t() | atom()
      }
      
  """
  @type create_replication_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_app_request() :: %{
        optional("appId") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("roleName") => String.t() | atom(),
        optional("serverGroups") => list(server_group()),
        optional("tags") => list(tag())
      }
      
  """
  @type update_app_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      app_validation_output() :: %{
        "ssmOutput" => s_s_m_output()
      }
      
  """
  @type app_validation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_servers_response() :: %{
        "lastModifiedOn" => non_neg_integer(),
        "nextToken" => String.t() | atom(),
        "serverCatalogStatus" => list(any()),
        "serverList" => list(server())
      }
      
  """
  @type get_servers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_replication_runs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("replicationJobId") => String.t() | atom()
      }
      
  """
  @type get_replication_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_connector_request() :: %{
        required("connectorId") => String.t() | atom()
      }
      
  """
  @type disassociate_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      replication_run_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type replication_run_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_apps_request() :: %{
        optional("appIds") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_apps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_validation_output_request() :: %{
        required("appId") => String.t() | atom()
      }
      
  """
  @type get_app_validation_output_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_validation_configuration() :: %{
        "name" => String.t() | atom(),
        "server" => server(),
        "serverValidationStrategy" => list(any()),
        "userDataValidationParameters" => user_data_validation_parameters(),
        "validationId" => String.t() | atom()
      }
      
  """
  @type server_validation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_app_launch_configuration_response() :: %{}
      
  """
  @type put_app_launch_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      replication_run() :: %{
        "amiId" => String.t() | atom(),
        "completedTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "encrypted" => boolean(),
        "kmsKeyId" => String.t() | atom(),
        "replicationRunId" => String.t() | atom(),
        "scheduledStartTime" => non_neg_integer(),
        "stageDetails" => replication_run_stage_details(),
        "state" => list(any()),
        "statusMessage" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type replication_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_replication_configuration_response() :: %{
        "serverGroupReplicationConfigurations" => list(server_group_replication_configuration())
      }
      
  """
  @type get_app_replication_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_server_catalog_request() :: %{}
      
  """
  @type import_server_catalog_request() :: %{}

  @typedoc """

  ## Example:
      
      put_app_replication_configuration_response() :: %{}
      
  """
  @type put_app_replication_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_app_validation_configuration_response() :: %{}
      
  """
  @type delete_app_validation_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      create_app_response() :: %{
        "appSummary" => app_summary(),
        "serverGroups" => list(server_group()),
        "tags" => list(tag())
      }
      
  """
  @type create_app_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      launch_details() :: %{
        "latestLaunchTime" => non_neg_integer(),
        "stackId" => String.t() | atom(),
        "stackName" => String.t() | atom()
      }
      
  """
  @type launch_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_launch_configuration() :: %{
        "associatePublicIpAddress" => boolean(),
        "configureScript" => s3_location(),
        "configureScriptType" => list(any()),
        "ec2KeyName" => String.t() | atom(),
        "iamInstanceProfileName" => String.t() | atom(),
        "instanceType" => String.t() | atom(),
        "logicalId" => String.t() | atom(),
        "securityGroup" => String.t() | atom(),
        "server" => server(),
        "subnet" => String.t() | atom(),
        "userData" => user_data(),
        "vpc" => String.t() | atom()
      }
      
  """
  @type server_launch_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_validation_output_response() :: %{
        "validationOutputList" => list(validation_output())
      }
      
  """
  @type get_app_validation_output_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_app_launch_configuration_response() :: %{
        "appId" => String.t() | atom(),
        "autoLaunch" => boolean(),
        "roleName" => String.t() | atom(),
        "serverGroupLaunchConfigurations" => list(server_group_launch_configuration())
      }
      
  """
  @type get_app_launch_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_app_catalog_response() :: %{}
      
  """
  @type import_app_catalog_response() :: %{}

  @typedoc """

  ## Example:
      
      notify_app_validation_output_request() :: %{
        optional("notificationContext") => notification_context(),
        required("appId") => String.t() | atom()
      }
      
  """
  @type notify_app_validation_output_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_server_catalog_request() :: %{}
      
  """
  @type delete_server_catalog_request() :: %{}

  @typedoc """

  ## Example:
      
      replication_job() :: %{
        "description" => String.t() | atom(),
        "encrypted" => boolean(),
        "frequency" => integer(),
        "kmsKeyId" => String.t() | atom(),
        "latestAmiId" => String.t() | atom(),
        "licenseType" => list(any()),
        "nextReplicationRunStartTime" => non_neg_integer(),
        "numberOfRecentAmisToKeep" => integer(),
        "replicationJobId" => String.t() | atom(),
        "replicationRunList" => list(replication_run()),
        "roleName" => String.t() | atom(),
        "runOnce" => boolean(),
        "seedReplicationTime" => non_neg_integer(),
        "serverId" => String.t() | atom(),
        "serverType" => list(any()),
        "state" => list(any()),
        "statusMessage" => String.t() | atom(),
        "vmServer" => vm_server()
      }
      
  """
  @type replication_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_replication_runs_response() :: %{
        "nextToken" => String.t() | atom(),
        "replicationJob" => replication_job(),
        "replicationRunList" => list(replication_run())
      }
      
  """
  @type get_replication_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_replication_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("replicationJobId") => String.t() | atom()
      }
      
  """
  @type get_replication_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_group() :: %{
        "name" => String.t() | atom(),
        "serverGroupId" => String.t() | atom(),
        "serverList" => list(server())
      }
      
  """
  @type server_group() :: %{(String.t() | atom()) => any()}

  @type create_app_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type create_replication_job_errors() ::
          invalid_parameter_exception()
          | temporarily_unavailable_exception()
          | replication_job_already_exists_exception()
          | operation_not_permitted_exception()
          | no_connectors_available_exception()
          | internal_error()
          | server_cannot_be_replicated_exception()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type delete_app_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type delete_app_launch_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type delete_app_replication_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type delete_app_validation_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type delete_replication_job_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | missing_required_parameter_exception()
          | replication_job_not_found_exception()
          | unauthorized_operation_exception()

  @type delete_server_catalog_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type disassociate_connector_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type generate_change_set_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type generate_template_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_app_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_app_launch_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_app_replication_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_app_validation_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_app_validation_output_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_connectors_errors() :: unauthorized_operation_exception()

  @type get_replication_jobs_errors() ::
          invalid_parameter_exception()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_replication_runs_errors() ::
          invalid_parameter_exception()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type get_servers_errors() ::
          invalid_parameter_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type import_app_catalog_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type import_server_catalog_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | no_connectors_available_exception()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type launch_app_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type list_apps_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type notify_app_validation_output_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type put_app_launch_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type put_app_replication_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type put_app_validation_configuration_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type start_app_replication_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type start_on_demand_app_replication_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type start_on_demand_replication_run_errors() ::
          replication_run_limit_exceeded_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()
          | dry_run_operation_exception()

  @type stop_app_replication_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type terminate_app_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type update_app_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | missing_required_parameter_exception()
          | unauthorized_operation_exception()

  @type update_replication_job_errors() ::
          invalid_parameter_exception()
          | temporarily_unavailable_exception()
          | operation_not_permitted_exception()
          | internal_error()
          | server_cannot_be_replicated_exception()
          | missing_required_parameter_exception()
          | replication_job_not_found_exception()
          | unauthorized_operation_exception()

  def metadata do
    %{
      api_version: "2016-10-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sms",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "SMS",
      signature_version: "v4",
      signing_name: "sms",
      target_prefix: "AWSServerMigrationService_V2016_10_24"
    }
  end

  @doc """
  Creates an application.

  An application consists of one or more server groups. Each
  server group contain one or more servers.
  """
  @spec create_app(map(), create_app_request(), list()) ::
          {:ok, create_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_errors()}
  def create_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApp", input, options)
  end

  @doc """
  Creates a replication job.

  The replication job schedules periodic replication runs
  to replicate your server to Amazon Web Services. Each replication run creates an
  Amazon Machine Image
  (AMI).
  """
  @spec create_replication_job(map(), create_replication_job_request(), list()) ::
          {:ok, create_replication_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_replication_job_errors()}
  def create_replication_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReplicationJob", input, options)
  end

  @doc """
  Deletes the specified application.

  Optionally deletes the launched stack associated with
  the application and all Server Migration Service replication jobs for servers in
  the application.
  """
  @spec delete_app(map(), delete_app_request(), list()) ::
          {:ok, delete_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApp", input, options)
  end

  @doc """
  Deletes the launch configuration for the specified application.
  """
  @spec delete_app_launch_configuration(map(), delete_app_launch_configuration_request(), list()) ::
          {:ok, delete_app_launch_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_launch_configuration_errors()}
  def delete_app_launch_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAppLaunchConfiguration", input, options)
  end

  @doc """
  Deletes the replication configuration for the specified application.
  """
  @spec delete_app_replication_configuration(
          map(),
          delete_app_replication_configuration_request(),
          list()
        ) ::
          {:ok, delete_app_replication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_replication_configuration_errors()}
  def delete_app_replication_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAppReplicationConfiguration", input, options)
  end

  @doc """
  Deletes the validation configuration for the specified application.
  """
  @spec delete_app_validation_configuration(
          map(),
          delete_app_validation_configuration_request(),
          list()
        ) ::
          {:ok, delete_app_validation_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_validation_configuration_errors()}
  def delete_app_validation_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAppValidationConfiguration", input, options)
  end

  @doc """
  Deletes the specified replication job.

  After you delete a replication job, there are no further replication runs.
  Amazon Web Services
  deletes the contents of the Amazon S3 bucket used to store Server Migration
  Service artifacts. The AMIs created
  by the replication runs are not deleted.
  """
  @spec delete_replication_job(map(), delete_replication_job_request(), list()) ::
          {:ok, delete_replication_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_replication_job_errors()}
  def delete_replication_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReplicationJob", input, options)
  end

  @doc """
  Deletes all servers from your server catalog.
  """
  @spec delete_server_catalog(map(), delete_server_catalog_request(), list()) ::
          {:ok, delete_server_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_server_catalog_errors()}
  def delete_server_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServerCatalog", input, options)
  end

  @doc """
  Disassociates the specified connector from Server Migration Service.

  After you disassociate a connector, it is no longer available to support
  replication jobs.
  """
  @spec disassociate_connector(map(), disassociate_connector_request(), list()) ::
          {:ok, disassociate_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_connector_errors()}
  def disassociate_connector(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateConnector", input, options)
  end

  @doc """
  Generates a target change set for a currently launched stack and writes it to an
  Amazon S3
  object in the customer’s Amazon S3 bucket.
  """
  @spec generate_change_set(map(), generate_change_set_request(), list()) ::
          {:ok, generate_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_change_set_errors()}
  def generate_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateChangeSet", input, options)
  end

  @doc """
  Generates an CloudFormation template based on the current launch configuration
  and writes it to
  an Amazon S3 object in the customer’s Amazon S3 bucket.
  """
  @spec generate_template(map(), generate_template_request(), list()) ::
          {:ok, generate_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_template_errors()}
  def generate_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateTemplate", input, options)
  end

  @doc """
  Retrieve information about the specified application.
  """
  @spec get_app(map(), get_app_request(), list()) ::
          {:ok, get_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_errors()}
  def get_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApp", input, options)
  end

  @doc """
  Retrieves the application launch configuration associated with the specified
  application.
  """
  @spec get_app_launch_configuration(map(), get_app_launch_configuration_request(), list()) ::
          {:ok, get_app_launch_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_launch_configuration_errors()}
  def get_app_launch_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAppLaunchConfiguration", input, options)
  end

  @doc """
  Retrieves the application replication configuration associated with the
  specified
  application.
  """
  @spec get_app_replication_configuration(
          map(),
          get_app_replication_configuration_request(),
          list()
        ) ::
          {:ok, get_app_replication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_replication_configuration_errors()}
  def get_app_replication_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAppReplicationConfiguration", input, options)
  end

  @doc """
  Retrieves information about a configuration for validating an application.
  """
  @spec get_app_validation_configuration(
          map(),
          get_app_validation_configuration_request(),
          list()
        ) ::
          {:ok, get_app_validation_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_validation_configuration_errors()}
  def get_app_validation_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAppValidationConfiguration", input, options)
  end

  @doc """
  Retrieves output from validating an application.
  """
  @spec get_app_validation_output(map(), get_app_validation_output_request(), list()) ::
          {:ok, get_app_validation_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_validation_output_errors()}
  def get_app_validation_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAppValidationOutput", input, options)
  end

  @doc """
  Describes the connectors registered with the Server Migration Service.
  """
  @spec get_connectors(map(), get_connectors_request(), list()) ::
          {:ok, get_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connectors_errors()}
  def get_connectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnectors", input, options)
  end

  @doc """
  Describes the specified replication job or all of your replication jobs.
  """
  @spec get_replication_jobs(map(), get_replication_jobs_request(), list()) ::
          {:ok, get_replication_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_replication_jobs_errors()}
  def get_replication_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReplicationJobs", input, options)
  end

  @doc """
  Describes the replication runs for the specified replication job.
  """
  @spec get_replication_runs(map(), get_replication_runs_request(), list()) ::
          {:ok, get_replication_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_replication_runs_errors()}
  def get_replication_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReplicationRuns", input, options)
  end

  @doc """
  Describes the servers in your server catalog.

  Before you can describe your servers, you must import them using
  `ImportServerCatalog`.
  """
  @spec get_servers(map(), get_servers_request(), list()) ::
          {:ok, get_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_servers_errors()}
  def get_servers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServers", input, options)
  end

  @doc """
  Allows application import from Migration Hub.
  """
  @spec import_app_catalog(map(), import_app_catalog_request(), list()) ::
          {:ok, import_app_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_app_catalog_errors()}
  def import_app_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportAppCatalog", input, options)
  end

  @doc """
  Gathers a complete list of on-premises servers.

  Connectors must be installed and
  monitoring all servers to import.

  This call returns immediately, but might take additional time to retrieve all
  the
  servers.
  """
  @spec import_server_catalog(map(), import_server_catalog_request(), list()) ::
          {:ok, import_server_catalog_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_server_catalog_errors()}
  def import_server_catalog(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportServerCatalog", input, options)
  end

  @doc """
  Launches the specified application as a stack in CloudFormation.
  """
  @spec launch_app(map(), launch_app_request(), list()) ::
          {:ok, launch_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, launch_app_errors()}
  def launch_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "LaunchApp", input, options)
  end

  @doc """
  Retrieves summaries for all applications.
  """
  @spec list_apps(map(), list_apps_request(), list()) ::
          {:ok, list_apps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_apps_errors()}
  def list_apps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApps", input, options)
  end

  @doc """
  Provides information to Server Migration Service about whether application
  validation is successful.
  """
  @spec notify_app_validation_output(map(), notify_app_validation_output_request(), list()) ::
          {:ok, notify_app_validation_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, notify_app_validation_output_errors()}
  def notify_app_validation_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "NotifyAppValidationOutput", input, options)
  end

  @doc """
  Creates or updates the launch configuration for the specified application.
  """
  @spec put_app_launch_configuration(map(), put_app_launch_configuration_request(), list()) ::
          {:ok, put_app_launch_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_app_launch_configuration_errors()}
  def put_app_launch_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAppLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates the replication configuration for the specified application.
  """
  @spec put_app_replication_configuration(
          map(),
          put_app_replication_configuration_request(),
          list()
        ) ::
          {:ok, put_app_replication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_app_replication_configuration_errors()}
  def put_app_replication_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAppReplicationConfiguration", input, options)
  end

  @doc """
  Creates or updates a validation configuration for the specified application.
  """
  @spec put_app_validation_configuration(
          map(),
          put_app_validation_configuration_request(),
          list()
        ) ::
          {:ok, put_app_validation_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_app_validation_configuration_errors()}
  def put_app_validation_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAppValidationConfiguration", input, options)
  end

  @doc """
  Starts replicating the specified application by creating replication jobs for
  each server in the
  application.
  """
  @spec start_app_replication(map(), start_app_replication_request(), list()) ::
          {:ok, start_app_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_app_replication_errors()}
  def start_app_replication(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAppReplication", input, options)
  end

  @doc """
  Starts an on-demand replication run for the specified application.
  """
  @spec start_on_demand_app_replication(map(), start_on_demand_app_replication_request(), list()) ::
          {:ok, start_on_demand_app_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_on_demand_app_replication_errors()}
  def start_on_demand_app_replication(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartOnDemandAppReplication", input, options)
  end

  @doc """
  Starts an on-demand replication run for the specified replication job.

  This
  replication run starts immediately. This replication run is in addition to the
  ones
  already scheduled.

  There is a limit on the number of on-demand replications runs that you can
  request
  in a 24-hour period.
  """
  @spec start_on_demand_replication_run(map(), start_on_demand_replication_run_request(), list()) ::
          {:ok, start_on_demand_replication_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_on_demand_replication_run_errors()}
  def start_on_demand_replication_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartOnDemandReplicationRun", input, options)
  end

  @doc """
  Stops replicating the specified application by deleting the replication job for
  each server in
  the application.
  """
  @spec stop_app_replication(map(), stop_app_replication_request(), list()) ::
          {:ok, stop_app_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_app_replication_errors()}
  def stop_app_replication(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopAppReplication", input, options)
  end

  @doc """
  Terminates the stack for the specified application.
  """
  @spec terminate_app(map(), terminate_app_request(), list()) ::
          {:ok, terminate_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_app_errors()}
  def terminate_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateApp", input, options)
  end

  @doc """
  Updates the specified application.
  """
  @spec update_app(map(), update_app_request(), list()) ::
          {:ok, update_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_errors()}
  def update_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApp", input, options)
  end

  @doc """
  Updates the specified settings for the specified replication job.
  """
  @spec update_replication_job(map(), update_replication_job_request(), list()) ::
          {:ok, update_replication_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_replication_job_errors()}
  def update_replication_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateReplicationJob", input, options)
  end
end
