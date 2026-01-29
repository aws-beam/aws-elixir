# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mgn do
  @moduledoc """
  The Application Migration Service service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      start_cutover_response() :: %{
        optional("job") => job()
      }

  """
  @type start_cutover_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_log_items_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("jobID") => String.t() | atom()
      }

  """
  @type describe_job_log_items_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_server_life_cycle_state_source_server_lifecycle() :: %{
        "state" => String.t() | atom()
      }

  """
  @type change_server_life_cycle_state_source_server_lifecycle() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      connector() :: %{
        "arn" => String.t() | atom(),
        "connectorID" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ssmCommandConfig" => connector_ssm_command_config(),
        "ssmInstanceID" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type connector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_source_servers_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("filters") => describe_source_servers_request_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_source_servers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_vcenter_clients_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_vcenter_clients_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      life_cycle() :: %{
        "addedToServiceDateTime" => String.t() | atom(),
        "elapsedReplicationDuration" => String.t() | atom(),
        "firstByteDateTime" => String.t() | atom(),
        "lastCutover" => life_cycle_last_cutover(),
        "lastSeenByServiceDateTime" => String.t() | atom(),
        "lastTest" => life_cycle_last_test(),
        "state" => String.t() | atom()
      }

  """
  @type life_cycle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_exports_request_filters() :: %{
        "exportIDs" => list(String.t() | atom())
      }

  """
  @type list_exports_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unarchive_application_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("applicationID") => String.t() | atom()
      }

  """
  @type unarchive_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_connectors_response() :: %{
        "items" => list(connector()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_connectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_waves_request_filters() :: %{
        "isArchived" => [boolean()],
        "waveIDs" => list(String.t() | atom())
      }

  """
  @type list_waves_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_source_server_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("connectorAction") => source_server_connector_action(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type update_source_server_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      archive_wave_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("waveID") => String.t() | atom()
      }

  """
  @type archive_wave_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_launch_configuration_templates_request() :: %{
        optional("launchConfigurationTemplateIDs") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_launch_configuration_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_source_server_response() :: %{}

  """
  @type delete_source_server_response() :: %{}

  @typedoc """

  ## Example:

      delete_source_server_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type delete_source_server_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_aggregated_status() :: %{
        "healthStatus" => String.t() | atom(),
        "lastUpdateDateTime" => String.t() | atom(),
        "progressStatus" => String.t() | atom(),
        "totalSourceServers" => float()
      }

  """
  @type application_aggregated_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replication_configuration_template() :: %{
        optional("arn") => String.t() | atom(),
        optional("associateDefaultSecurityGroup") => [boolean()],
        optional("bandwidthThrottling") => float(),
        optional("createPublicIP") => [boolean()],
        optional("dataPlaneRouting") => String.t() | atom(),
        optional("defaultLargeStagingDiskType") => String.t() | atom(),
        optional("ebsEncryption") => String.t() | atom(),
        optional("ebsEncryptionKeyArn") => String.t() | atom(),
        optional("internetProtocol") => String.t() | atom(),
        optional("replicationServerInstanceType") => String.t() | atom(),
        optional("replicationServersSecurityGroupsIDs") => list(String.t() | atom()),
        optional("stagingAreaSubnetId") => String.t() | atom(),
        optional("stagingAreaTags") => map(),
        optional("tags") => map(),
        optional("useDedicatedReplicationServer") => [boolean()],
        optional("useFipsEndpoint") => [boolean()],
        required("replicationConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type replication_configuration_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resume_replication_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type resume_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_waves_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("filters") => list_waves_request_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_waves_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_replication_configuration_template_request() :: %{
        optional("arn") => String.t() | atom(),
        optional("associateDefaultSecurityGroup") => [boolean()],
        optional("bandwidthThrottling") => float(),
        optional("createPublicIP") => [boolean()],
        optional("dataPlaneRouting") => String.t() | atom(),
        optional("defaultLargeStagingDiskType") => String.t() | atom(),
        optional("ebsEncryption") => String.t() | atom(),
        optional("ebsEncryptionKeyArn") => String.t() | atom(),
        optional("internetProtocol") => String.t() | atom(),
        optional("replicationServerInstanceType") => String.t() | atom(),
        optional("replicationServersSecurityGroupsIDs") => list(String.t() | atom()),
        optional("stagingAreaSubnetId") => String.t() | atom(),
        optional("stagingAreaTags") => map(),
        optional("useDedicatedReplicationServer") => [boolean()],
        optional("useFipsEndpoint") => [boolean()],
        required("replicationConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type update_replication_configuration_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replication_configuration_replicated_disk() :: %{
        "deviceName" => String.t() | atom(),
        "iops" => float(),
        "isBootDisk" => [boolean()],
        "stagingDiskType" => String.t() | atom(),
        "throughput" => float()
      }

  """
  @type replication_configuration_replicated_disk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_applications_response() :: %{}

  """
  @type associate_applications_response() :: %{}

  @typedoc """

  ## Example:

      update_connector_request() :: %{
        optional("name") => String.t() | atom(),
        optional("ssmCommandConfig") => connector_ssm_command_config(),
        required("connectorID") => String.t() | atom()
      }

  """
  @type update_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pause_replication_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type pause_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_interface() :: %{
        "ips" => list(String.t() | atom()),
        "isPrimary" => [boolean()],
        "macAddress" => String.t() | atom()
      }

  """
  @type network_interface() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      life_cycle_last_test_finalized() :: %{
        "apiCallDateTime" => String.t() | atom()
      }

  """
  @type life_cycle_last_test_finalized() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_replication_configuration_template_request() :: %{
        optional("ebsEncryptionKeyArn") => String.t() | atom(),
        optional("internetProtocol") => String.t() | atom(),
        optional("tags") => map(),
        optional("useFipsEndpoint") => [boolean()],
        required("associateDefaultSecurityGroup") => [boolean()],
        required("bandwidthThrottling") => float(),
        required("createPublicIP") => [boolean()],
        required("dataPlaneRouting") => String.t() | atom(),
        required("defaultLargeStagingDiskType") => String.t() | atom(),
        required("ebsEncryption") => String.t() | atom(),
        required("replicationServerInstanceType") => String.t() | atom(),
        required("replicationServersSecurityGroupsIDs") => list(String.t() | atom()),
        required("stagingAreaSubnetId") => String.t() | atom(),
        required("stagingAreaTags") => map(),
        required("useDedicatedReplicationServer") => [boolean()]
      }

  """
  @type create_replication_configuration_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_applications_response() :: %{}

  """
  @type disassociate_applications_response() :: %{}

  @typedoc """

  ## Example:

      remove_source_server_action_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("actionID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type remove_source_server_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_applications_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("applicationIDs") => list(String.t() | atom()),
        required("waveID") => String.t() | atom()
      }

  """
  @type associate_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_server_connector_action() :: %{
        "connectorArn" => String.t() | atom(),
        "credentialsSecretArn" => String.t() | atom()
      }

  """
  @type source_server_connector_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request_filters() :: %{
        "applicationIDs" => list(String.t() | atom()),
        "isArchived" => [boolean()],
        "waveIDs" => list(String.t() | atom())
      }

  """
  @type list_applications_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_ssm_command_config() :: %{
        "cloudWatchLogGroupName" => String.t() | atom(),
        "cloudWatchOutputEnabled" => [boolean()],
        "outputS3BucketName" => String.t() | atom(),
        "s3OutputEnabled" => [boolean()]
      }

  """
  @type connector_ssm_command_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_task_error() :: %{
        "errorData" => import_error_data(),
        "errorDateTime" => String.t() | atom(),
        "errorType" => String.t() | atom()
      }

  """
  @type import_task_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      launched_instance() :: %{
        "ec2InstanceID" => String.t() | atom(),
        "firstBoot" => String.t() | atom(),
        "jobID" => String.t() | atom()
      }

  """
  @type launched_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_test_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("tags") => map(),
        required("sourceServerIDs") => list(String.t() | atom())
      }

  """
  @type start_test_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_connectors_request() :: %{
        optional("filters") => list_connectors_request_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_connectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template_action_document() :: %{
        optional("actionID") => String.t() | atom(),
        optional("actionName") => String.t() | atom(),
        optional("active") => [boolean()],
        optional("category") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("documentIdentifier") => String.t() | atom(),
        optional("documentVersion") => String.t() | atom(),
        optional("externalParameters") => map(),
        optional("mustSucceedForCutover") => [boolean()],
        optional("operatingSystem") => String.t() | atom(),
        optional("order") => integer(),
        optional("parameters") => map(),
        optional("timeoutSeconds") => integer()
      }

  """
  @type template_action_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_data_replication_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type retry_data_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_replication_configuration_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type get_replication_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_replication_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type start_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      life_cycle_last_test_reverted() :: %{
        "apiCallDateTime" => String.t() | atom()
      }

  """
  @type life_cycle_last_test_reverted() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_actions_response() :: %{
        optional("items") => list(template_action_document()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_template_actions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vcenter_client() :: %{
        "arn" => String.t() | atom(),
        "datacenterName" => String.t() | atom(),
        "hostname" => String.t() | atom(),
        "lastSeenDatetime" => String.t() | atom(),
        "sourceServerTags" => map(),
        "tags" => map(),
        "vcenterClientID" => String.t() | atom(),
        "vcenterUUID" => String.t() | atom()
      }

  """
  @type vcenter_client() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_replication_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type stop_replication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_exports_request() :: %{
        "filters" => list_exports_request_filters(),
        "maxResults" => integer(),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_exports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_source_server_actions_response() :: %{
        optional("items") => list(source_server_action_document()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_source_server_actions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unarchive_wave_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("waveID") => String.t() | atom()
      }

  """
  @type unarchive_wave_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_source_server_actions_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("filters") => source_server_actions_request_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type list_source_server_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      launch_configuration_template() :: %{
        optional("arn") => String.t() | atom(),
        optional("associatePublicIpAddress") => [boolean()],
        optional("bootMode") => String.t() | atom(),
        optional("copyPrivateIp") => [boolean()],
        optional("copyTags") => [boolean()],
        optional("ec2LaunchTemplateID") => String.t() | atom(),
        optional("enableMapAutoTagging") => [boolean()],
        optional("enableParametersEncryption") => [boolean()],
        optional("largeVolumeConf") => launch_template_disk_conf(),
        optional("launchDisposition") => String.t() | atom(),
        optional("licensing") => licensing(),
        optional("mapAutoTaggingMpeID") => String.t() | atom(),
        optional("parametersEncryptionKey") => String.t() | atom(),
        optional("postLaunchActions") => post_launch_actions(),
        optional("smallVolumeConf") => launch_template_disk_conf(),
        optional("smallVolumeMaxSize") => float(),
        optional("tags") => map(),
        optional("targetInstanceTypeRightSizingMethod") => String.t() | atom(),
        required("launchConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type launch_configuration_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      licensing() :: %{
        "osByol" => [boolean()]
      }

  """
  @type licensing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_export_response() :: %{
        "exportTask" => export_task()
      }

  """
  @type start_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_task_summary() :: %{
        "applicationsCount" => float(),
        "serversCount" => float(),
        "wavesCount" => float()
      }

  """
  @type export_task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_imports_response() :: %{
        "items" => list(import_task()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_imports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identification_hints() :: %{
        "awsInstanceID" => String.t() | atom(),
        "fqdn" => String.t() | atom(),
        "hostname" => String.t() | atom(),
        "vmPath" => String.t() | atom(),
        "vmWareUuid" => String.t() | atom()
      }

  """
  @type identification_hints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_server_actions_request_filters() :: %{
        "actionIDs" => list(String.t() | atom())
      }

  """
  @type source_server_actions_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      life_cycle_last_cutover() :: %{
        "finalized" => life_cycle_last_cutover_finalized(),
        "initiated" => life_cycle_last_cutover_initiated(),
        "reverted" => life_cycle_last_cutover_reverted()
      }

  """
  @type life_cycle_last_cutover() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_properties() :: %{
        "cpus" => list(c_p_u()),
        "disks" => list(disk()),
        "identificationHints" => identification_hints(),
        "lastUpdatedDateTime" => String.t() | atom(),
        "networkInterfaces" => list(network_interface()),
        "os" => o_s(),
        "ramBytes" => float(),
        "recommendedInstanceType" => String.t() | atom()
      }

  """
  @type source_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_source_servers_response() :: %{
        optional("items") => list(source_server()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_source_servers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_replication_configuration_templates_response() :: %{
        optional("items") => list(replication_configuration_template()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_replication_configuration_templates_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      life_cycle_last_cutover_reverted() :: %{
        "apiCallDateTime" => String.t() | atom()
      }

  """
  @type life_cycle_last_cutover_reverted() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_replication_configuration_template_response() :: %{}

  """
  @type delete_replication_configuration_template_response() :: %{}

  @typedoc """

  ## Example:

      delete_wave_response() :: %{}

  """
  @type delete_wave_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_source_servers_response() :: %{}

  """
  @type disassociate_source_servers_response() :: %{}

  @typedoc """

  ## Example:

      life_cycle_last_test_initiated() :: %{
        "apiCallDateTime" => String.t() | atom(),
        "jobID" => String.t() | atom()
      }

  """
  @type life_cycle_last_test_initiated() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_source_server_action_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("active") => [boolean()],
        optional("category") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("documentVersion") => String.t() | atom(),
        optional("externalParameters") => map(),
        optional("mustSucceedForCutover") => [boolean()],
        optional("parameters") => map(),
        optional("timeoutSeconds") => integer(),
        required("actionID") => String.t() | atom(),
        required("actionName") => String.t() | atom(),
        required("documentIdentifier") => String.t() | atom(),
        required("order") => integer(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type put_source_server_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replication_configuration() :: %{
        optional("associateDefaultSecurityGroup") => [boolean()],
        optional("bandwidthThrottling") => float(),
        optional("createPublicIP") => [boolean()],
        optional("dataPlaneRouting") => String.t() | atom(),
        optional("defaultLargeStagingDiskType") => String.t() | atom(),
        optional("ebsEncryption") => String.t() | atom(),
        optional("ebsEncryptionKeyArn") => String.t() | atom(),
        optional("internetProtocol") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("replicatedDisks") => list(replication_configuration_replicated_disk()),
        optional("replicationServerInstanceType") => String.t() | atom(),
        optional("replicationServersSecurityGroupsIDs") => list(String.t() | atom()),
        optional("sourceServerID") => String.t() | atom(),
        optional("stagingAreaSubnetId") => String.t() | atom(),
        optional("stagingAreaTags") => map(),
        optional("useDedicatedReplicationServer") => [boolean()],
        optional("useFipsEndpoint") => [boolean()]
      }

  """
  @type replication_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "code" => String.t() | atom(),
        "errors" => list(error_details()),
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_replication_error() :: %{
        "error" => String.t() | atom(),
        "rawError" => String.t() | atom()
      }

  """
  @type data_replication_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_applications_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("applicationIDs") => list(String.t() | atom()),
        required("waveID") => String.t() | atom()
      }

  """
  @type disassociate_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_task_error() :: %{
        "errorData" => export_error_data(),
        "errorDateTime" => String.t() | atom()
      }

  """
  @type export_task_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_source_server_replication_type_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("replicationType") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type update_source_server_replication_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      post_launch_actions() :: %{
        "cloudWatchLogGroupName" => String.t() | atom(),
        "deployment" => String.t() | atom(),
        "s3LogBucket" => String.t() | atom(),
        "s3OutputKeyPrefix" => String.t() | atom(),
        "ssmDocuments" => list(ssm_document())
      }

  """
  @type post_launch_actions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_wave_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("waveID") => String.t() | atom()
      }

  """
  @type delete_wave_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "quotaValue" => integer(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "serviceCode" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      post_launch_actions_status() :: %{
        "postLaunchActionsLaunchStatusList" => list(job_post_launch_actions_launch_status()),
        "ssmAgentDiscoveryDatetime" => String.t() | atom()
      }

  """
  @type post_launch_actions_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_wave_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_wave_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_wave_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        required("waveID") => String.t() | atom()
      }

  """
  @type update_wave_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_template_action_response() :: %{}

  """
  @type remove_template_action_response() :: %{}

  @typedoc """

  ## Example:

      c_p_u() :: %{
        "cores" => float(),
        "modelName" => String.t() | atom()
      }

  """
  @type c_p_u() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      uninitialized_account_exception() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type uninitialized_account_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "applicationAggregatedStatus" => application_aggregated_status(),
        "applicationID" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "creationDateTime" => String.t() | atom(),
        "description" => String.t() | atom(),
        "isArchived" => [boolean()],
        "lastModifiedDateTime" => String.t() | atom(),
        "name" => String.t() | atom(),
        "tags" => map(),
        "waveID" => String.t() | atom()
      }

  """
  @type application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      initialize_service_request() :: %{}

  """
  @type initialize_service_request() :: %{}

  @typedoc """

  ## Example:

      create_launch_configuration_template_request() :: %{
        optional("associatePublicIpAddress") => [boolean()],
        optional("bootMode") => String.t() | atom(),
        optional("copyPrivateIp") => [boolean()],
        optional("copyTags") => [boolean()],
        optional("enableMapAutoTagging") => [boolean()],
        optional("enableParametersEncryption") => [boolean()],
        optional("largeVolumeConf") => launch_template_disk_conf(),
        optional("launchDisposition") => String.t() | atom(),
        optional("licensing") => licensing(),
        optional("mapAutoTaggingMpeID") => String.t() | atom(),
        optional("parametersEncryptionKey") => String.t() | atom(),
        optional("postLaunchActions") => post_launch_actions(),
        optional("smallVolumeConf") => launch_template_disk_conf(),
        optional("smallVolumeMaxSize") => float(),
        optional("tags") => map(),
        optional("targetInstanceTypeRightSizingMethod") => String.t() | atom()
      }

  """
  @type create_launch_configuration_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }

  """
  @type error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_account() :: %{
        "accountId" => String.t() | atom()
      }

  """
  @type managed_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_actions_request() :: %{
        optional("filters") => template_actions_request_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("launchConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type list_template_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_replication_info() :: %{
        "dataReplicationError" => data_replication_error(),
        "dataReplicationInitiation" => data_replication_initiation(),
        "dataReplicationState" => String.t() | atom(),
        "etaDateTime" => String.t() | atom(),
        "lagDuration" => String.t() | atom(),
        "lastSnapshotDateTime" => String.t() | atom(),
        "replicatedDisks" => list(data_replication_info_replicated_disk()),
        "replicatorId" => String.t() | atom()
      }

  """
  @type data_replication_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_source_servers_request_filters() :: %{
        "applicationIDs" => list(String.t() | atom()),
        "isArchived" => [boolean()],
        "lifeCycleStates" => list(String.t() | atom()),
        "replicationTypes" => list(String.t() | atom()),
        "sourceServerIDs" => list(String.t() | atom())
      }

  """
  @type describe_source_servers_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_source_servers_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("applicationID") => String.t() | atom(),
        required("sourceServerIDs") => list(String.t() | atom())
      }

  """
  @type associate_source_servers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vcenter_client_request() :: %{
        required("vcenterClientID") => String.t() | atom()
      }

  """
  @type delete_vcenter_client_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_target_instances_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("tags") => map(),
        required("sourceServerIDs") => list(String.t() | atom())
      }

  """
  @type terminate_target_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_replication_info_replicated_disk() :: %{
        "backloggedStorageBytes" => float(),
        "deviceName" => String.t() | atom(),
        "replicatedStorageBytes" => float(),
        "rescannedStorageBytes" => float(),
        "totalStorageBytes" => float()
      }

  """
  @type data_replication_info_replicated_disk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_task() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => String.t() | atom(),
        "endDateTime" => String.t() | atom(),
        "importID" => String.t() | atom(),
        "progressPercentage" => [float()],
        "s3BucketSource" => s3_bucket_source(),
        "status" => String.t() | atom(),
        "summary" => import_task_summary(),
        "tags" => map()
      }

  """
  @type import_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      initialize_service_response() :: %{}

  """
  @type initialize_service_response() :: %{}

  @typedoc """

  ## Example:

      remove_source_server_action_response() :: %{}

  """
  @type remove_source_server_action_response() :: %{}

  @typedoc """

  ## Example:

      import_task_summary() :: %{
        "applications" => import_task_summary_applications(),
        "servers" => import_task_summary_servers(),
        "waves" => import_task_summary_waves()
      }

  """
  @type import_task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      mark_as_archived_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type mark_as_archived_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      describe_vcenter_clients_response() :: %{
        optional("items") => list(vcenter_client()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_vcenter_clients_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wave() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => String.t() | atom(),
        "description" => String.t() | atom(),
        "isArchived" => [boolean()],
        "lastModifiedDateTime" => String.t() | atom(),
        "name" => String.t() | atom(),
        "tags" => map(),
        "waveAggregatedStatus" => wave_aggregated_status(),
        "waveID" => String.t() | atom()
      }

  """
  @type wave() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_jobs_request_filters() :: %{
        "fromDate" => String.t() | atom(),
        "jobIDs" => list(String.t() | atom()),
        "toDate" => String.t() | atom()
      }

  """
  @type describe_jobs_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_replication_initiation() :: %{
        "nextAttemptDateTime" => String.t() | atom(),
        "startDateTime" => String.t() | atom(),
        "steps" => list(data_replication_initiation_step())
      }

  """
  @type data_replication_initiation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_accounts_response() :: %{
        "items" => list(managed_account()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_task() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => String.t() | atom(),
        "endDateTime" => String.t() | atom(),
        "exportID" => String.t() | atom(),
        "progressPercentage" => [float()],
        "s3Bucket" => String.t() | atom(),
        "s3BucketOwner" => String.t() | atom(),
        "s3Key" => String.t() | atom(),
        "status" => String.t() | atom(),
        "summary" => export_task_summary(),
        "tags" => map()
      }

  """
  @type export_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_launch_configuration_templates_response() :: %{
        optional("items") => list(launch_configuration_template()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_launch_configuration_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        required("applicationID") => String.t() | atom()
      }

  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_launch_configuration_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type get_launch_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      life_cycle_last_cutover_finalized() :: %{
        "apiCallDateTime" => String.t() | atom()
      }

  """
  @type life_cycle_last_cutover_finalized() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => float()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participating_server() :: %{
        "launchStatus" => String.t() | atom(),
        "launchedEc2InstanceID" => String.t() | atom(),
        "postLaunchActionsStatus" => post_launch_actions_status(),
        "sourceServerID" => String.t() | atom()
      }

  """
  @type participating_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_import_errors_request() :: %{
        "importID" => String.t() | atom(),
        "maxResults" => integer(),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_import_errors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_replication_initiation_step() :: %{
        "name" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type data_replication_initiation_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_export_request() :: %{
        "s3Bucket" => String.t() | atom(),
        "s3BucketOwner" => String.t() | atom(),
        "s3Key" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type start_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_task_summary_applications() :: %{
        "createdCount" => float(),
        "modifiedCount" => float()
      }

  """
  @type import_task_summary_applications() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disconnect_from_service_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type disconnect_from_service_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      life_cycle_last_test() :: %{
        "finalized" => life_cycle_last_test_finalized(),
        "initiated" => life_cycle_last_test_initiated(),
        "reverted" => life_cycle_last_test_reverted()
      }

  """
  @type life_cycle_last_test() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_task_summary_waves() :: %{
        "createdCount" => float(),
        "modifiedCount" => float()
      }

  """
  @type import_task_summary_waves() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("filters") => list_applications_request_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_export_errors_request() :: %{
        "exportID" => String.t() | atom(),
        "maxResults" => integer(),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_export_errors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_connector_request() :: %{
        optional("ssmCommandConfig") => connector_ssm_command_config(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("ssmInstanceID") => String.t() | atom()
      }

  """
  @type create_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_template_action_request() :: %{
        required("actionID") => String.t() | atom(),
        required("launchConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type remove_template_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_error_data() :: %{
        "rawError" => String.t() | atom()
      }

  """
  @type export_error_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_export_errors_response() :: %{
        "items" => list(export_task_error()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_export_errors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_server_life_cycle_state_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("lifeCycle") => change_server_life_cycle_state_source_server_lifecycle(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type change_server_life_cycle_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      archive_application_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("applicationID") => String.t() | atom()
      }

  """
  @type archive_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_job_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("jobID") => String.t() | atom()
      }

  """
  @type delete_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_test_response() :: %{
        optional("job") => job()
      }

  """
  @type start_test_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ssm_parameter_store_parameter() :: %{
        "parameterName" => String.t() | atom(),
        "parameterType" => String.t() | atom()
      }

  """
  @type ssm_parameter_store_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_jobs_response() :: %{
        optional("items") => list(job()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disk() :: %{
        "bytes" => float(),
        "deviceName" => String.t() | atom()
      }

  """
  @type disk() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_launch_configuration_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("bootMode") => String.t() | atom(),
        optional("copyPrivateIp") => [boolean()],
        optional("copyTags") => [boolean()],
        optional("enableMapAutoTagging") => [boolean()],
        optional("launchDisposition") => String.t() | atom(),
        optional("licensing") => licensing(),
        optional("mapAutoTaggingMpeID") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("postLaunchActions") => post_launch_actions(),
        optional("targetInstanceTypeRightSizingMethod") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type update_launch_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "code" => String.t() | atom(),
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      delete_replication_configuration_template_request() :: %{
        required("replicationConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type delete_replication_configuration_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job() :: %{
        "arn" => String.t() | atom(),
        "creationDateTime" => String.t() | atom(),
        "endDateTime" => String.t() | atom(),
        "initiatedBy" => String.t() | atom(),
        "jobID" => String.t() | atom(),
        "participatingServers" => list(participating_server()),
        "status" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom()
      }

  """
  @type job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      launch_template_disk_conf() :: %{
        "iops" => float(),
        "throughput" => float(),
        "volumeType" => String.t() | atom()
      }

  """
  @type launch_template_disk_conf() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_task_summary_servers() :: %{
        "createdCount" => float(),
        "modifiedCount" => float()
      }

  """
  @type import_task_summary_servers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom(),
        "serviceCode" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ssm_document() :: %{
        "actionName" => String.t() | atom(),
        "externalParameters" => map(),
        "mustSucceedForCutover" => [boolean()],
        "parameters" => map(),
        "ssmDocumentName" => String.t() | atom(),
        "timeoutSeconds" => integer()
      }

  """
  @type ssm_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_template_action_request() :: %{
        optional("active") => [boolean()],
        optional("category") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("documentVersion") => String.t() | atom(),
        optional("externalParameters") => map(),
        optional("mustSucceedForCutover") => [boolean()],
        optional("operatingSystem") => String.t() | atom(),
        optional("parameters") => map(),
        optional("timeoutSeconds") => integer(),
        required("actionID") => String.t() | atom(),
        required("actionName") => String.t() | atom(),
        required("documentIdentifier") => String.t() | atom(),
        required("launchConfigurationTemplateID") => String.t() | atom(),
        required("order") => integer()
      }

  """
  @type put_template_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_imports_request() :: %{
        "filters" => list_imports_request_filters(),
        "maxResults" => integer(),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_imports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_imports_request_filters() :: %{
        "importIDs" => list(String.t() | atom())
      }

  """
  @type list_imports_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_managed_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_log_event_data() :: %{
        "attemptCount" => integer(),
        "conversionServerID" => String.t() | atom(),
        "maxAttemptsCount" => integer(),
        "rawError" => String.t() | atom(),
        "sourceServerID" => String.t() | atom(),
        "targetInstanceID" => String.t() | atom()
      }

  """
  @type job_log_event_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_jobs_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("filters") => describe_jobs_request_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      launch_configuration() :: %{
        optional("bootMode") => String.t() | atom(),
        optional("copyPrivateIp") => [boolean()],
        optional("copyTags") => [boolean()],
        optional("ec2LaunchTemplateID") => String.t() | atom(),
        optional("enableMapAutoTagging") => [boolean()],
        optional("launchDisposition") => String.t() | atom(),
        optional("licensing") => licensing(),
        optional("mapAutoTaggingMpeID") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("postLaunchActions") => post_launch_actions(),
        optional("sourceServerID") => String.t() | atom(),
        optional("targetInstanceTypeRightSizingMethod") => String.t() | atom()
      }

  """
  @type launch_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        optional("items") => list(application()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_post_launch_actions_launch_status() :: %{
        "executionID" => String.t() | atom(),
        "executionStatus" => String.t() | atom(),
        "failureReason" => String.t() | atom(),
        "ssmDocument" => ssm_document(),
        "ssmDocumentType" => String.t() | atom()
      }

  """
  @type job_post_launch_actions_launch_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_error_data() :: %{
        "accountID" => String.t() | atom(),
        "applicationID" => String.t() | atom(),
        "ec2LaunchTemplateID" => String.t() | atom(),
        "rawError" => String.t() | atom(),
        "rowNumber" => float(),
        "sourceServerID" => String.t() | atom(),
        "waveID" => String.t() | atom()
      }

  """
  @type import_error_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_replication_configuration_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("associateDefaultSecurityGroup") => [boolean()],
        optional("bandwidthThrottling") => float(),
        optional("createPublicIP") => [boolean()],
        optional("dataPlaneRouting") => String.t() | atom(),
        optional("defaultLargeStagingDiskType") => String.t() | atom(),
        optional("ebsEncryption") => String.t() | atom(),
        optional("ebsEncryptionKeyArn") => String.t() | atom(),
        optional("internetProtocol") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("replicatedDisks") => list(replication_configuration_replicated_disk()),
        optional("replicationServerInstanceType") => String.t() | atom(),
        optional("replicationServersSecurityGroupsIDs") => list(String.t() | atom()),
        optional("stagingAreaSubnetId") => String.t() | atom(),
        optional("stagingAreaTags") => map(),
        optional("useDedicatedReplicationServer") => [boolean()],
        optional("useFipsEndpoint") => [boolean()],
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type update_replication_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_connector_request() :: %{
        required("connectorID") => String.t() | atom()
      }

  """
  @type delete_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_server() :: %{
        "applicationID" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "connectorAction" => source_server_connector_action(),
        "dataReplicationInfo" => data_replication_info(),
        "fqdnForActionFramework" => String.t() | atom(),
        "isArchived" => [boolean()],
        "launchedInstance" => launched_instance(),
        "lifeCycle" => life_cycle(),
        "replicationType" => String.t() | atom(),
        "sourceProperties" => source_properties(),
        "sourceServerID" => String.t() | atom(),
        "tags" => map(),
        "userProvidedID" => String.t() | atom(),
        "vcenterClientID" => String.t() | atom()
      }

  """
  @type source_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wave_aggregated_status() :: %{
        "healthStatus" => String.t() | atom(),
        "lastUpdateDateTime" => String.t() | atom(),
        "progressStatus" => String.t() | atom(),
        "replicationStartedDateTime" => String.t() | atom(),
        "totalApplications" => float()
      }

  """
  @type wave_aggregated_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_import_errors_response() :: %{
        "items" => list(import_task_error()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_import_errors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_waves_response() :: %{
        optional("items") => list(wave()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_waves_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_server_action_document() :: %{
        optional("actionID") => String.t() | atom(),
        optional("actionName") => String.t() | atom(),
        optional("active") => [boolean()],
        optional("category") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("documentIdentifier") => String.t() | atom(),
        optional("documentVersion") => String.t() | atom(),
        optional("externalParameters") => map(),
        optional("mustSucceedForCutover") => [boolean()],
        optional("order") => integer(),
        optional("parameters") => map(),
        optional("timeoutSeconds") => integer()
      }

  """
  @type source_server_action_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finalize_cutover_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("sourceServerID") => String.t() | atom()
      }

  """
  @type finalize_cutover_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_source_servers_response() :: %{}

  """
  @type associate_source_servers_response() :: %{}

  @typedoc """

  ## Example:

      life_cycle_last_cutover_initiated() :: %{
        "apiCallDateTime" => String.t() | atom(),
        "jobID" => String.t() | atom()
      }

  """
  @type life_cycle_last_cutover_initiated() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_launch_configuration_template_response() :: %{}

  """
  @type delete_launch_configuration_template_response() :: %{}

  @typedoc """

  ## Example:

      delete_job_response() :: %{}

  """
  @type delete_job_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_source_servers_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("applicationID") => String.t() | atom(),
        required("sourceServerIDs") => list(String.t() | atom())
      }

  """
  @type disassociate_source_servers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_replication_configuration_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("replicationConfigurationTemplateIDs") => list(String.t() | atom())
      }

  """
  @type describe_replication_configuration_templates_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      o_s() :: %{
        "fullString" => String.t() | atom()
      }

  """
  @type o_s() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_connectors_request_filters() :: %{
        "connectorIDs" => list(String.t() | atom())
      }

  """
  @type list_connectors_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_job_log_items_response() :: %{
        optional("items") => list(job_log()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type describe_job_log_items_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_target_instances_response() :: %{
        optional("job") => job()
      }

  """
  @type terminate_target_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_import_request() :: %{
        "clientToken" => String.t() | atom(),
        "s3BucketSource" => s3_bucket_source(),
        "tags" => map()
      }

  """
  @type start_import_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_launch_configuration_template_request() :: %{
        optional("associatePublicIpAddress") => [boolean()],
        optional("bootMode") => String.t() | atom(),
        optional("copyPrivateIp") => [boolean()],
        optional("copyTags") => [boolean()],
        optional("enableMapAutoTagging") => [boolean()],
        optional("enableParametersEncryption") => [boolean()],
        optional("largeVolumeConf") => launch_template_disk_conf(),
        optional("launchDisposition") => String.t() | atom(),
        optional("licensing") => licensing(),
        optional("mapAutoTaggingMpeID") => String.t() | atom(),
        optional("parametersEncryptionKey") => String.t() | atom(),
        optional("postLaunchActions") => post_launch_actions(),
        optional("smallVolumeConf") => launch_template_disk_conf(),
        optional("smallVolumeMaxSize") => float(),
        optional("targetInstanceTypeRightSizingMethod") => String.t() | atom(),
        required("launchConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type update_launch_configuration_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_bucket_source() :: %{
        "s3Bucket" => String.t() | atom(),
        "s3BucketOwner" => String.t() | atom(),
        "s3Key" => String.t() | atom()
      }

  """
  @type s3_bucket_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_import_response() :: %{
        "importTask" => import_task()
      }

  """
  @type start_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_cutover_request() :: %{
        optional("accountID") => String.t() | atom(),
        optional("tags") => map(),
        required("sourceServerIDs") => list(String.t() | atom())
      }

  """
  @type start_cutover_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_log() :: %{
        "event" => String.t() | atom(),
        "eventData" => job_log_event_data(),
        "logDateTime" => String.t() | atom()
      }

  """
  @type job_log() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template_actions_request_filters() :: %{
        "actionIDs" => list(String.t() | atom())
      }

  """
  @type template_actions_request_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{
        optional("accountID") => String.t() | atom(),
        required("applicationID") => String.t() | atom()
      }

  """
  @type delete_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_exports_response() :: %{
        "items" => list(export_task()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_exports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_launch_configuration_template_request() :: %{
        required("launchConfigurationTemplateID") => String.t() | atom()
      }

  """
  @type delete_launch_configuration_template_request() :: %{(String.t() | atom()) => any()}

  @type archive_application_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type archive_wave_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_applications_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_source_servers_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type change_server_life_cycle_state_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_application_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_connector_errors() :: validation_exception() | uninitialized_account_exception()

  @type create_launch_configuration_template_errors() ::
          validation_exception() | access_denied_exception() | uninitialized_account_exception()

  @type create_replication_configuration_template_errors() ::
          validation_exception() | access_denied_exception() | uninitialized_account_exception()

  @type create_wave_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_connector_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type delete_job_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_launch_configuration_template_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_replication_configuration_template_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_source_server_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_vcenter_client_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type delete_wave_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_job_log_items_errors() ::
          validation_exception() | uninitialized_account_exception()

  @type describe_jobs_errors() :: validation_exception() | uninitialized_account_exception()

  @type describe_launch_configuration_templates_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type describe_replication_configuration_templates_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type describe_source_servers_errors() ::
          validation_exception() | uninitialized_account_exception()

  @type describe_vcenter_clients_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type disassociate_applications_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_source_servers_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disconnect_from_service_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type finalize_cutover_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_launch_configuration_errors() ::
          uninitialized_account_exception() | resource_not_found_exception()

  @type get_replication_configuration_errors() ::
          uninitialized_account_exception() | resource_not_found_exception()

  @type initialize_service_errors() :: validation_exception() | access_denied_exception()

  @type list_applications_errors() :: uninitialized_account_exception()

  @type list_connectors_errors() :: validation_exception() | uninitialized_account_exception()

  @type list_export_errors_errors() :: validation_exception() | uninitialized_account_exception()

  @type list_exports_errors() :: uninitialized_account_exception()

  @type list_import_errors_errors() :: validation_exception() | uninitialized_account_exception()

  @type list_imports_errors() :: validation_exception() | uninitialized_account_exception()

  @type list_managed_accounts_errors() ::
          validation_exception() | uninitialized_account_exception()

  @type list_source_server_actions_errors() ::
          uninitialized_account_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_template_actions_errors() ::
          uninitialized_account_exception() | resource_not_found_exception()

  @type list_waves_errors() :: uninitialized_account_exception()

  @type mark_as_archived_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type pause_replication_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_source_server_action_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_template_action_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type remove_source_server_action_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type remove_template_action_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type resume_replication_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type retry_data_replication_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type start_cutover_errors() ::
          validation_exception() | uninitialized_account_exception() | conflict_exception()

  @type start_export_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | service_quota_exceeded_exception()

  @type start_import_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_replication_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_test_errors() ::
          validation_exception() | uninitialized_account_exception() | conflict_exception()

  @type stop_replication_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type terminate_target_instances_errors() ::
          validation_exception() | uninitialized_account_exception() | conflict_exception()

  @type unarchive_application_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type unarchive_wave_errors() ::
          uninitialized_account_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_application_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_connector_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type update_launch_configuration_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_launch_configuration_template_errors() ::
          validation_exception()
          | access_denied_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type update_replication_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_replication_configuration_template_errors() ::
          validation_exception()
          | access_denied_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()

  @type update_source_server_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_source_server_replication_type_errors() ::
          validation_exception()
          | uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_wave_errors() ::
          uninitialized_account_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-02-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mgn",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "mgn",
      signature_version: "v4",
      signing_name: "mgn",
      target_prefix: nil
    }
  end

  @doc """
  Archive application.
  """
  @spec archive_application(map(), archive_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, archive_application_errors()}
  def archive_application(%Client{} = client, input, options \\ []) do
    url_path = "/ArchiveApplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Archive wave.
  """
  @spec archive_wave(map(), archive_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, archive_wave_errors()}
  def archive_wave(%Client{} = client, input, options \\ []) do
    url_path = "/ArchiveWave"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associate applications to wave.
  """
  @spec associate_applications(map(), associate_applications_request(), list()) ::
          {:ok, associate_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_applications_errors()}
  def associate_applications(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateApplications"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associate source servers to application.
  """
  @spec associate_source_servers(map(), associate_source_servers_request(), list()) ::
          {:ok, associate_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_source_servers_errors()}
  def associate_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateSourceServers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows the user to set the SourceServer.LifeCycle.state property for specific
  Source Server IDs to one of the following: READY_FOR_TEST or READY_FOR_CUTOVER.

  This command only works if the Source Server is already launchable
  (dataReplicationInfo.lagDuration is not null.)
  """
  @spec change_server_life_cycle_state(map(), change_server_life_cycle_state_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, change_server_life_cycle_state_errors()}
  def change_server_life_cycle_state(%Client{} = client, input, options \\ []) do
    url_path = "/ChangeServerLifeCycleState"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create application.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/CreateApplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create Connector.
  """
  @spec create_connector(map(), create_connector_request(), list()) ::
          {:ok, connector(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connector_errors()}
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/CreateConnector"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new Launch Configuration Template.
  """
  @spec create_launch_configuration_template(
          map(),
          create_launch_configuration_template_request(),
          list()
        ) ::
          {:ok, launch_configuration_template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_launch_configuration_template_errors()}
  def create_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLaunchConfigurationTemplate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new ReplicationConfigurationTemplate.
  """
  @spec create_replication_configuration_template(
          map(),
          create_replication_configuration_template_request(),
          list()
        ) ::
          {:ok, replication_configuration_template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_replication_configuration_template_errors()}
  def create_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/CreateReplicationConfigurationTemplate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create wave.
  """
  @spec create_wave(map(), create_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_wave_errors()}
  def create_wave(%Client{} = client, input, options \\ []) do
    url_path = "/CreateWave"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Delete application.
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteApplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete Connector.
  """
  @spec delete_connector(map(), delete_connector_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connector_errors()}
  def delete_connector(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteConnector"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single Job by ID.
  """
  @spec delete_job(map(), delete_job_request(), list()) ::
          {:ok, delete_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_job_errors()}
  def delete_job(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteJob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single Launch Configuration Template by ID.
  """
  @spec delete_launch_configuration_template(
          map(),
          delete_launch_configuration_template_request(),
          list()
        ) ::
          {:ok, delete_launch_configuration_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_launch_configuration_template_errors()}
  def delete_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLaunchConfigurationTemplate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single Replication Configuration Template by ID
  """
  @spec delete_replication_configuration_template(
          map(),
          delete_replication_configuration_template_request(),
          list()
        ) ::
          {:ok, delete_replication_configuration_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_replication_configuration_template_errors()}
  def delete_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteReplicationConfigurationTemplate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single source server by ID.
  """
  @spec delete_source_server(map(), delete_source_server_request(), list()) ::
          {:ok, delete_source_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_source_server_errors()}
  def delete_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSourceServer"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a given vCenter client by ID.
  """
  @spec delete_vcenter_client(map(), delete_vcenter_client_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vcenter_client_errors()}
  def delete_vcenter_client(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteVcenterClient"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete wave.
  """
  @spec delete_wave(map(), delete_wave_request(), list()) ::
          {:ok, delete_wave_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_wave_errors()}
  def delete_wave(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteWave"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Retrieves detailed job log items with paging.
  """
  @spec describe_job_log_items(map(), describe_job_log_items_request(), list()) ::
          {:ok, describe_job_log_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_log_items_errors()}
  def describe_job_log_items(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobLogItems"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of Jobs.

  Use the JobsID and fromDate and toData filters to limit which jobs are returned.
  The response is sorted by creationDataTime - latest date first. Jobs are
  normally created by the StartTest, StartCutover, and TerminateTargetInstances
  APIs. Jobs are also created by DiagnosticLaunch and
  TerminateDiagnosticInstances, which are APIs available only to *Support* and
  only used in response to relevant support tickets.
  """
  @spec describe_jobs(map(), describe_jobs_request(), list()) ::
          {:ok, describe_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_jobs_errors()}
  def describe_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobs"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all Launch Configuration Templates, filtered by Launch Configuration
  Template IDs
  """
  @spec describe_launch_configuration_templates(
          map(),
          describe_launch_configuration_templates_request(),
          list()
        ) ::
          {:ok, describe_launch_configuration_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_launch_configuration_templates_errors()}
  def describe_launch_configuration_templates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeLaunchConfigurationTemplates"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
  """
  @spec describe_replication_configuration_templates(
          map(),
          describe_replication_configuration_templates_request(),
          list()
        ) ::
          {:ok, describe_replication_configuration_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_replication_configuration_templates_errors()}
  def describe_replication_configuration_templates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeReplicationConfigurationTemplates"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves all SourceServers or multiple SourceServers by ID.
  """
  @spec describe_source_servers(map(), describe_source_servers_request(), list()) ::
          {:ok, describe_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_source_servers_errors()}
  def describe_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSourceServers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the installed vCenter clients.
  """
  @spec describe_vcenter_clients(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_vcenter_clients_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vcenter_clients_errors()}
  def describe_vcenter_clients(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/DescribeVcenterClients"
    headers = []
    query_params = []

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
  Disassociate applications from wave.
  """
  @spec disassociate_applications(map(), disassociate_applications_request(), list()) ::
          {:ok, disassociate_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_applications_errors()}
  def disassociate_applications(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateApplications"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociate source servers from application.
  """
  @spec disassociate_source_servers(map(), disassociate_source_servers_request(), list()) ::
          {:ok, disassociate_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_source_servers_errors()}
  def disassociate_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateSourceServers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disconnects specific Source Servers from Application Migration Service.

  Data replication is stopped immediately. All AWS resources created by
  Application Migration Service for enabling the replication of these source
  servers will be terminated / deleted within 90 minutes. Launched Test or Cutover
  instances will NOT be terminated. If the agent on the source server has not been
  prevented from communicating with the Application Migration Service service,
  then it will receive a command to uninstall itself (within approximately 10
  minutes). The following properties of the SourceServer will be changed
  immediately: dataReplicationInfo.dataReplicationState will be set to
  DISCONNECTED; The totalStorageBytes property for each of
  dataReplicationInfo.replicatedDisks will be set to zero;
  dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be
  nullified.
  """
  @spec disconnect_from_service(map(), disconnect_from_service_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disconnect_from_service_errors()}
  def disconnect_from_service(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectFromService"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Finalizes the cutover immediately for specific Source Servers.

  All AWS resources created by Application Migration Service for enabling the
  replication of these source servers will be terminated / deleted within 90
  minutes. Launched Test or Cutover instances will NOT be terminated. The AWS
  Replication Agent will receive a command to uninstall itself (within 10
  minutes). The following properties of the SourceServer will be changed
  immediately: dataReplicationInfo.dataReplicationState will be changed to
  DISCONNECTED; The SourceServer.lifeCycle.state will be changed to CUTOVER; The
  totalStorageBytes property fo each of dataReplicationInfo.replicatedDisks will
  be set to zero; dataReplicationInfo.lagDuration and
  dataReplicationInfo.lagDuration will be nullified.
  """
  @spec finalize_cutover(map(), finalize_cutover_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, finalize_cutover_errors()}
  def finalize_cutover(%Client{} = client, input, options \\ []) do
    url_path = "/FinalizeCutover"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all LaunchConfigurations available, filtered by Source Server IDs.
  """
  @spec get_launch_configuration(map(), get_launch_configuration_request(), list()) ::
          {:ok, launch_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_launch_configuration_errors()}
  def get_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetLaunchConfiguration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all ReplicationConfigurations, filtered by Source Server ID.
  """
  @spec get_replication_configuration(map(), get_replication_configuration_request(), list()) ::
          {:ok, replication_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_replication_configuration_errors()}
  def get_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetReplicationConfiguration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Initialize Application Migration Service.
  """
  @spec initialize_service(map(), initialize_service_request(), list()) ::
          {:ok, initialize_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initialize_service_errors()}
  def initialize_service(%Client{} = client, input, options \\ []) do
    url_path = "/InitializeService"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Retrieves all applications or multiple applications by ID.
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    url_path = "/ListApplications"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List Connectors.
  """
  @spec list_connectors(map(), list_connectors_request(), list()) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connectors_errors()}
  def list_connectors(%Client{} = client, input, options \\ []) do
    url_path = "/ListConnectors"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List export errors.
  """
  @spec list_export_errors(map(), list_export_errors_request(), list()) ::
          {:ok, list_export_errors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_export_errors_errors()}
  def list_export_errors(%Client{} = client, input, options \\ []) do
    url_path = "/ListExportErrors"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List exports.
  """
  @spec list_exports(map(), list_exports_request(), list()) ::
          {:ok, list_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_exports_errors()}
  def list_exports(%Client{} = client, input, options \\ []) do
    url_path = "/ListExports"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List import errors.
  """
  @spec list_import_errors(map(), list_import_errors_request(), list()) ::
          {:ok, list_import_errors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_import_errors_errors()}
  def list_import_errors(%Client{} = client, input, options \\ []) do
    url_path = "/ListImportErrors"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List imports.
  """
  @spec list_imports(map(), list_imports_request(), list()) ::
          {:ok, list_imports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_imports_errors()}
  def list_imports(%Client{} = client, input, options \\ []) do
    url_path = "/ListImports"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List Managed Accounts.
  """
  @spec list_managed_accounts(map(), list_managed_accounts_request(), list()) ::
          {:ok, list_managed_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_accounts_errors()}
  def list_managed_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/ListManagedAccounts"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List source server post migration custom actions.
  """
  @spec list_source_server_actions(map(), list_source_server_actions_request(), list()) ::
          {:ok, list_source_server_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_source_server_actions_errors()}
  def list_source_server_actions(%Client{} = client, input, options \\ []) do
    url_path = "/ListSourceServerActions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  List all tags for your Application Migration Service resources.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List template post migration custom actions.
  """
  @spec list_template_actions(map(), list_template_actions_request(), list()) ::
          {:ok, list_template_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_template_actions_errors()}
  def list_template_actions(%Client{} = client, input, options \\ []) do
    url_path = "/ListTemplateActions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves all waves or multiple waves by ID.
  """
  @spec list_waves(map(), list_waves_request(), list()) ::
          {:ok, list_waves_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_waves_errors()}
  def list_waves(%Client{} = client, input, options \\ []) do
    url_path = "/ListWaves"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Archives specific Source Servers by setting the SourceServer.isArchived property
  to true for specified SourceServers by ID.

  This command only works for SourceServers with a lifecycle. state which equals
  DISCONNECTED or CUTOVER.
  """
  @spec mark_as_archived(map(), mark_as_archived_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, mark_as_archived_errors()}
  def mark_as_archived(%Client{} = client, input, options \\ []) do
    url_path = "/MarkAsArchived"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Pause Replication.
  """
  @spec pause_replication(map(), pause_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, pause_replication_errors()}
  def pause_replication(%Client{} = client, input, options \\ []) do
    url_path = "/PauseReplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Put source server post migration custom action.
  """
  @spec put_source_server_action(map(), put_source_server_action_request(), list()) ::
          {:ok, source_server_action_document(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_source_server_action_errors()}
  def put_source_server_action(%Client{} = client, input, options \\ []) do
    url_path = "/PutSourceServerAction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Put template post migration custom action.
  """
  @spec put_template_action(map(), put_template_action_request(), list()) ::
          {:ok, template_action_document(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_template_action_errors()}
  def put_template_action(%Client{} = client, input, options \\ []) do
    url_path = "/PutTemplateAction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Remove source server post migration custom action.
  """
  @spec remove_source_server_action(map(), remove_source_server_action_request(), list()) ::
          {:ok, remove_source_server_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_source_server_action_errors()}
  def remove_source_server_action(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveSourceServerAction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Remove template post migration custom action.
  """
  @spec remove_template_action(map(), remove_template_action_request(), list()) ::
          {:ok, remove_template_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_template_action_errors()}
  def remove_template_action(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveTemplateAction"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Resume Replication.
  """
  @spec resume_replication(map(), resume_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_replication_errors()}
  def resume_replication(%Client{} = client, input, options \\ []) do
    url_path = "/ResumeReplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Causes the data replication initiation sequence to begin immediately upon next
  Handshake for specified SourceServer IDs, regardless of when the previous
  initiation started.

  This command will not work if the SourceServer is not stalled or is in a
  DISCONNECTED or STOPPED state.
  """
  @spec retry_data_replication(map(), retry_data_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, retry_data_replication_errors()}
  def retry_data_replication(%Client{} = client, input, options \\ []) do
    url_path = "/RetryDataReplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Launches a Cutover Instance for specific Source Servers.

  This command starts a LAUNCH job whose initiatedBy property is StartCutover and
  changes the SourceServer.lifeCycle.state property to CUTTING_OVER.
  """
  @spec start_cutover(map(), start_cutover_request(), list()) ::
          {:ok, start_cutover_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_cutover_errors()}
  def start_cutover(%Client{} = client, input, options \\ []) do
    url_path = "/StartCutover"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Start export.
  """
  @spec start_export(map(), start_export_request(), list()) ::
          {:ok, start_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_export_errors()}
  def start_export(%Client{} = client, input, options \\ []) do
    url_path = "/StartExport"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Start import.
  """
  @spec start_import(map(), start_import_request(), list()) ::
          {:ok, start_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_import_errors()}
  def start_import(%Client{} = client, input, options \\ []) do
    url_path = "/StartImport"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Start replication for source server irrespective of its replication type.
  """
  @spec start_replication(map(), start_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_replication_errors()}
  def start_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StartReplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Launches a Test Instance for specific Source Servers.

  This command starts a LAUNCH job whose initiatedBy property is StartTest and
  changes the SourceServer.lifeCycle.state property to TESTING.
  """
  @spec start_test(map(), start_test_request(), list()) ::
          {:ok, start_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_test_errors()}
  def start_test(%Client{} = client, input, options \\ []) do
    url_path = "/StartTest"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Stop Replication.
  """
  @spec stop_replication(map(), stop_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_replication_errors()}
  def stop_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StopReplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or overwrites only the specified tags for the specified Application
  Migration Service resource or resources.

  When you specify an existing tag key, the value is overwritten with the new
  value. Each resource can have a maximum of 50 tags. Each tag consists of a key
  and optional value.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a job that terminates specific launched EC2 Test and Cutover instances.

  This command will not work for any Source Server with a lifecycle.state of
  TESTING, CUTTING_OVER, or CUTOVER.
  """
  @spec terminate_target_instances(map(), terminate_target_instances_request(), list()) ::
          {:ok, terminate_target_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_target_instances_errors()}
  def terminate_target_instances(%Client{} = client, input, options \\ []) do
    url_path = "/TerminateTargetInstances"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Unarchive application.
  """
  @spec unarchive_application(map(), unarchive_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unarchive_application_errors()}
  def unarchive_application(%Client{} = client, input, options \\ []) do
    url_path = "/UnarchiveApplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Unarchive wave.
  """
  @spec unarchive_wave(map(), unarchive_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unarchive_wave_errors()}
  def unarchive_wave(%Client{} = client, input, options \\ []) do
    url_path = "/UnarchiveWave"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified set of tags from the specified set of Application
  Migration Service resources.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update application.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateApplication"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update Connector.
  """
  @spec update_connector(map(), update_connector_request(), list()) ::
          {:ok, connector(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connector_errors()}
  def update_connector(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateConnector"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates multiple LaunchConfigurations by Source Server ID.

  bootMode valid values are `LEGACY_BIOS | UEFI`
  """
  @spec update_launch_configuration(map(), update_launch_configuration_request(), list()) ::
          {:ok, launch_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_launch_configuration_errors()}
  def update_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLaunchConfiguration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing Launch Configuration Template by ID.
  """
  @spec update_launch_configuration_template(
          map(),
          update_launch_configuration_template_request(),
          list()
        ) ::
          {:ok, launch_configuration_template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_launch_configuration_template_errors()}
  def update_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLaunchConfigurationTemplate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows you to update multiple ReplicationConfigurations by Source Server ID.
  """
  @spec update_replication_configuration(
          map(),
          update_replication_configuration_request(),
          list()
        ) ::
          {:ok, replication_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_replication_configuration_errors()}
  def update_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfiguration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates multiple ReplicationConfigurationTemplates by ID.
  """
  @spec update_replication_configuration_template(
          map(),
          update_replication_configuration_template_request(),
          list()
        ) ::
          {:ok, replication_configuration_template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_replication_configuration_template_errors()}
  def update_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfigurationTemplate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update Source Server.
  """
  @spec update_source_server(map(), update_source_server_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_source_server_errors()}
  def update_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSourceServer"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows you to change between the AGENT_BASED replication type and the
  SNAPSHOT_SHIPPING replication type.

  SNAPSHOT_SHIPPING should be used for agentless replication.
  """
  @spec update_source_server_replication_type(
          map(),
          update_source_server_replication_type_request(),
          list()
        ) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_source_server_replication_type_errors()}
  def update_source_server_replication_type(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSourceServerReplicationType"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update wave.
  """
  @spec update_wave(map(), update_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_wave_errors()}
  def update_wave(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateWave"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
