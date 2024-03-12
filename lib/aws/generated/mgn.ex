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
  @type start_cutover_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_job_log_items_request() :: %{
    optional("accountID") => String.t(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("jobID") => String.t()
  }
  """
  @type describe_job_log_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  change_server_life_cycle_state_source_server_lifecycle() :: %{
    "state" => String.t()
  }
  """
  @type change_server_life_cycle_state_source_server_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connector() :: %{
    "arn" => String.t(),
    "connectorID" => String.t(),
    "name" => String.t(),
    "ssmCommandConfig" => connector_ssm_command_config(),
    "ssmInstanceID" => String.t(),
    "tags" => map()
  }
  """
  @type connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_source_servers_request() :: %{
    optional("accountID") => String.t(),
    optional("filters") => describe_source_servers_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_source_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_vcenter_clients_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_vcenter_clients_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle() :: %{
    "addedToServiceDateTime" => String.t(),
    "elapsedReplicationDuration" => String.t(),
    "firstByteDateTime" => String.t(),
    "lastCutover" => life_cycle_last_cutover(),
    "lastSeenByServiceDateTime" => String.t(),
    "lastTest" => life_cycle_last_test(),
    "state" => String.t()
  }
  """
  @type life_cycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_exports_request_filters() :: %{
    "exportIDs" => list(String.t()())
  }
  """
  @type list_exports_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unarchive_application_request() :: %{
    optional("accountID") => String.t(),
    required("applicationID") => String.t()
  }
  """
  @type unarchive_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_connectors_response() :: %{
    "items" => list(connector()()),
    "nextToken" => String.t()
  }
  """
  @type list_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_waves_request_filters() :: %{
    "isArchived" => [boolean()],
    "waveIDs" => list(String.t()())
  }
  """
  @type list_waves_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_source_server_request() :: %{
    optional("accountID") => String.t(),
    optional("connectorAction") => source_server_connector_action(),
    required("sourceServerID") => String.t()
  }
  """
  @type update_source_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  archive_wave_request() :: %{
    optional("accountID") => String.t(),
    required("waveID") => String.t()
  }
  """
  @type archive_wave_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_launch_configuration_templates_request() :: %{
    optional("launchConfigurationTemplateIDs") => list(String.t()()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_launch_configuration_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_source_server_response() :: %{

  }
  """
  @type delete_source_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_source_server_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type delete_source_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application_aggregated_status() :: %{
    "healthStatus" => String.t(),
    "lastUpdateDateTime" => String.t(),
    "progressStatus" => String.t(),
    "totalSourceServers" => float()
  }
  """
  @type application_aggregated_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_configuration_template() :: %{
    optional("arn") => String.t(),
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("tags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()],
    optional("useFipsEndpoint") => [boolean()],
    required("replicationConfigurationTemplateID") => String.t()
  }
  """
  @type replication_configuration_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resume_replication_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type resume_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_waves_request() :: %{
    optional("accountID") => String.t(),
    optional("filters") => list_waves_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_waves_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_replication_configuration_template_request() :: %{
    optional("arn") => String.t(),
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()],
    optional("useFipsEndpoint") => [boolean()],
    required("replicationConfigurationTemplateID") => String.t()
  }
  """
  @type update_replication_configuration_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_configuration_replicated_disk() :: %{
    "deviceName" => String.t(),
    "iops" => float(),
    "isBootDisk" => [boolean()],
    "stagingDiskType" => String.t(),
    "throughput" => float()
  }
  """
  @type replication_configuration_replicated_disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_applications_response() :: %{

  }
  """
  @type associate_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_connector_request() :: %{
    optional("name") => String.t(),
    optional("ssmCommandConfig") => connector_ssm_command_config(),
    required("connectorID") => String.t()
  }
  """
  @type update_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pause_replication_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type pause_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_interface() :: %{
    "ips" => list(String.t()()),
    "isPrimary" => [boolean()],
    "macAddress" => String.t()
  }
  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_test_finalized() :: %{
    "apiCallDateTime" => String.t()
  }
  """
  @type life_cycle_last_test_finalized() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_replication_configuration_template_request() :: %{
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("tags") => map(),
    optional("useFipsEndpoint") => [boolean()],
    required("associateDefaultSecurityGroup") => [boolean()],
    required("bandwidthThrottling") => float(),
    required("createPublicIP") => [boolean()],
    required("dataPlaneRouting") => String.t(),
    required("defaultLargeStagingDiskType") => String.t(),
    required("ebsEncryption") => String.t(),
    required("replicationServerInstanceType") => String.t(),
    required("replicationServersSecurityGroupsIDs") => list(String.t()()),
    required("stagingAreaSubnetId") => String.t(),
    required("stagingAreaTags") => map(),
    required("useDedicatedReplicationServer") => [boolean()]
  }
  """
  @type create_replication_configuration_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_applications_response() :: %{

  }
  """
  @type disassociate_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_source_server_action_request() :: %{
    optional("accountID") => String.t(),
    required("actionID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type remove_source_server_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_applications_request() :: %{
    optional("accountID") => String.t(),
    required("applicationIDs") => list(String.t()()),
    required("waveID") => String.t()
  }
  """
  @type associate_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_server_connector_action() :: %{
    "connectorArn" => String.t(),
    "credentialsSecretArn" => String.t()
  }
  """
  @type source_server_connector_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applications_request_filters() :: %{
    "applicationIDs" => list(String.t()()),
    "isArchived" => [boolean()],
    "waveIDs" => list(String.t()())
  }
  """
  @type list_applications_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connector_ssm_command_config() :: %{
    "cloudWatchLogGroupName" => String.t(),
    "cloudWatchOutputEnabled" => [boolean()],
    "outputS3BucketName" => String.t(),
    "s3OutputEnabled" => [boolean()]
  }
  """
  @type connector_ssm_command_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_task_error() :: %{
    "errorData" => import_error_data(),
    "errorDateTime" => String.t(),
    "errorType" => String.t()
  }
  """
  @type import_task_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launched_instance() :: %{
    "ec2InstanceID" => String.t(),
    "firstBoot" => String.t(),
    "jobID" => String.t()
  }
  """
  @type launched_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_test_request() :: %{
    optional("accountID") => String.t(),
    optional("tags") => map(),
    required("sourceServerIDs") => list(String.t()())
  }
  """
  @type start_test_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_connectors_request() :: %{
    optional("filters") => list_connectors_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  template_action_document() :: %{
    optional("actionID") => String.t(),
    optional("actionName") => String.t(),
    optional("active") => [boolean()],
    optional("category") => String.t(),
    optional("description") => String.t(),
    optional("documentIdentifier") => String.t(),
    optional("documentVersion") => String.t(),
    optional("externalParameters") => map(),
    optional("mustSucceedForCutover") => [boolean()],
    optional("operatingSystem") => String.t(),
    optional("order") => integer(),
    optional("parameters") => map(),
    optional("timeoutSeconds") => integer()
  }
  """
  @type template_action_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  retry_data_replication_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type retry_data_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_replication_configuration_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type get_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_replication_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type start_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_test_reverted() :: %{
    "apiCallDateTime" => String.t()
  }
  """
  @type life_cycle_last_test_reverted() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_template_actions_response() :: %{
    optional("items") => list(template_action_document()()),
    optional("nextToken") => String.t()
  }
  """
  @type list_template_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vcenter_client() :: %{
    "arn" => String.t(),
    "datacenterName" => String.t(),
    "hostname" => String.t(),
    "lastSeenDatetime" => String.t(),
    "sourceServerTags" => map(),
    "tags" => map(),
    "vcenterClientID" => String.t(),
    "vcenterUUID" => String.t()
  }
  """
  @type vcenter_client() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_replication_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type stop_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_exports_request() :: %{
    "filters" => list_exports_request_filters(),
    "maxResults" => integer(),
    "nextToken" => String.t()
  }
  """
  @type list_exports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_source_server_actions_response() :: %{
    optional("items") => list(source_server_action_document()()),
    optional("nextToken") => String.t()
  }
  """
  @type list_source_server_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unarchive_wave_request() :: %{
    optional("accountID") => String.t(),
    required("waveID") => String.t()
  }
  """
  @type unarchive_wave_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_source_server_actions_request() :: %{
    optional("accountID") => String.t(),
    optional("filters") => source_server_actions_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type list_source_server_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_configuration_template() :: %{
    optional("arn") => String.t(),
    optional("associatePublicIpAddress") => [boolean()],
    optional("bootMode") => String.t(),
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("ec2LaunchTemplateID") => String.t(),
    optional("enableMapAutoTagging") => [boolean()],
    optional("largeVolumeConf") => launch_template_disk_conf(),
    optional("launchDisposition") => String.t(),
    optional("licensing") => licensing(),
    optional("mapAutoTaggingMpeID") => String.t(),
    optional("postLaunchActions") => post_launch_actions(),
    optional("smallVolumeConf") => launch_template_disk_conf(),
    optional("smallVolumeMaxSize") => float(),
    optional("tags") => map(),
    optional("targetInstanceTypeRightSizingMethod") => String.t(),
    required("launchConfigurationTemplateID") => String.t()
  }
  """
  @type launch_configuration_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  licensing() :: %{
    "osByol" => [boolean()]
  }
  """
  @type licensing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_export_response() :: %{
    "exportTask" => export_task()
  }
  """
  @type start_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_task_summary() :: %{
    "applicationsCount" => float(),
    "serversCount" => float(),
    "wavesCount" => float()
  }
  """
  @type export_task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_imports_response() :: %{
    "items" => list(import_task()()),
    "nextToken" => String.t()
  }
  """
  @type list_imports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  identification_hints() :: %{
    "awsInstanceID" => String.t(),
    "fqdn" => String.t(),
    "hostname" => String.t(),
    "vmPath" => String.t(),
    "vmWareUuid" => String.t()
  }
  """
  @type identification_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_server_actions_request_filters() :: %{
    "actionIDs" => list(String.t()())
  }
  """
  @type source_server_actions_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_cutover() :: %{
    "finalized" => life_cycle_last_cutover_finalized(),
    "initiated" => life_cycle_last_cutover_initiated(),
    "reverted" => life_cycle_last_cutover_reverted()
  }
  """
  @type life_cycle_last_cutover() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_properties() :: %{
    "cpus" => list(c_p_u()()),
    "disks" => list(disk()()),
    "identificationHints" => identification_hints(),
    "lastUpdatedDateTime" => String.t(),
    "networkInterfaces" => list(network_interface()()),
    "os" => o_s(),
    "ramBytes" => float(),
    "recommendedInstanceType" => String.t()
  }
  """
  @type source_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_source_servers_response() :: %{
    optional("items") => list(source_server()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_source_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_replication_configuration_templates_response() :: %{
    optional("items") => list(replication_configuration_template()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_replication_configuration_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_cutover_reverted() :: %{
    "apiCallDateTime" => String.t()
  }
  """
  @type life_cycle_last_cutover_reverted() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_replication_configuration_template_response() :: %{

  }
  """
  @type delete_replication_configuration_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_wave_response() :: %{

  }
  """
  @type delete_wave_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_source_servers_response() :: %{

  }
  """
  @type disassociate_source_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_test_initiated() :: %{
    "apiCallDateTime" => String.t(),
    "jobID" => String.t()
  }
  """
  @type life_cycle_last_test_initiated() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_source_server_action_request() :: %{
    optional("accountID") => String.t(),
    optional("active") => [boolean()],
    optional("category") => String.t(),
    optional("description") => String.t(),
    optional("documentVersion") => String.t(),
    optional("externalParameters") => map(),
    optional("mustSucceedForCutover") => [boolean()],
    optional("parameters") => map(),
    optional("timeoutSeconds") => integer(),
    required("actionID") => String.t(),
    required("actionName") => String.t(),
    required("documentIdentifier") => String.t(),
    required("order") => integer(),
    required("sourceServerID") => String.t()
  }
  """
  @type put_source_server_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_configuration() :: %{
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("name") => String.t(),
    optional("replicatedDisks") => list(replication_configuration_replicated_disk()()),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("sourceServerID") => String.t(),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()],
    optional("useFipsEndpoint") => [boolean()]
  }
  """
  @type replication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "code" => String.t(),
    "errors" => list(error_details()()),
    "message" => String.t(),
    "resourceId" => String.t(),
    "resourceType" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "code" => String.t(),
    "message" => String.t(),
    "resourceId" => String.t(),
    "resourceType" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_replication_error() :: %{
    "error" => String.t(),
    "rawError" => String.t()
  }
  """
  @type data_replication_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_applications_request() :: %{
    optional("accountID") => String.t(),
    required("applicationIDs") => list(String.t()()),
    required("waveID") => String.t()
  }
  """
  @type disassociate_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_task_error() :: %{
    "errorData" => export_error_data(),
    "errorDateTime" => String.t()
  }
  """
  @type export_task_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_source_server_replication_type_request() :: %{
    optional("accountID") => String.t(),
    required("replicationType") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type update_source_server_replication_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  post_launch_actions() :: %{
    "cloudWatchLogGroupName" => String.t(),
    "deployment" => String.t(),
    "s3LogBucket" => String.t(),
    "s3OutputKeyPrefix" => String.t(),
    "ssmDocuments" => list(ssm_document()())
  }
  """
  @type post_launch_actions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_wave_request() :: %{
    optional("accountID") => String.t(),
    required("waveID") => String.t()
  }
  """
  @type delete_wave_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "code" => String.t(),
    "message" => String.t(),
    "quotaCode" => String.t(),
    "quotaValue" => integer(),
    "resourceId" => String.t(),
    "resourceType" => String.t(),
    "serviceCode" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  post_launch_actions_status() :: %{
    "postLaunchActionsLaunchStatusList" => list(job_post_launch_actions_launch_status()()),
    "ssmAgentDiscoveryDatetime" => String.t()
  }
  """
  @type post_launch_actions_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_wave_request() :: %{
    optional("accountID") => String.t(),
    optional("description") => String.t(),
    optional("tags") => map(),
    required("name") => String.t()
  }
  """
  @type create_wave_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_wave_request() :: %{
    optional("accountID") => String.t(),
    optional("description") => String.t(),
    optional("name") => String.t(),
    required("waveID") => String.t()
  }
  """
  @type update_wave_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_template_action_response() :: %{

  }
  """
  @type remove_template_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  c_p_u() :: %{
    "cores" => float(),
    "modelName" => String.t()
  }
  """
  @type c_p_u() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  uninitialized_account_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type uninitialized_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application() :: %{
    "applicationAggregatedStatus" => application_aggregated_status(),
    "applicationID" => String.t(),
    "arn" => String.t(),
    "creationDateTime" => String.t(),
    "description" => String.t(),
    "isArchived" => [boolean()],
    "lastModifiedDateTime" => String.t(),
    "name" => String.t(),
    "tags" => map(),
    "waveID" => String.t()
  }
  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  initialize_service_request() :: %{

  }
  """
  @type initialize_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_launch_configuration_template_request() :: %{
    optional("associatePublicIpAddress") => [boolean()],
    optional("bootMode") => String.t(),
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("enableMapAutoTagging") => [boolean()],
    optional("largeVolumeConf") => launch_template_disk_conf(),
    optional("launchDisposition") => String.t(),
    optional("licensing") => licensing(),
    optional("mapAutoTaggingMpeID") => String.t(),
    optional("postLaunchActions") => post_launch_actions(),
    optional("smallVolumeConf") => launch_template_disk_conf(),
    optional("smallVolumeMaxSize") => float(),
    optional("tags") => map(),
    optional("targetInstanceTypeRightSizingMethod") => String.t()
  }
  """
  @type create_launch_configuration_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  error_details() :: %{
    "code" => String.t(),
    "message" => String.t(),
    "resourceId" => String.t(),
    "resourceType" => String.t()
  }
  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    optional("tags") => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_application_request() :: %{
    optional("accountID") => String.t(),
    optional("description") => String.t(),
    optional("tags") => map(),
    required("name") => String.t()
  }
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  managed_account() :: %{
    "accountId" => String.t()
  }
  """
  @type managed_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_template_actions_request() :: %{
    optional("filters") => template_actions_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("launchConfigurationTemplateID") => String.t()
  }
  """
  @type list_template_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_replication_info() :: %{
    "dataReplicationError" => data_replication_error(),
    "dataReplicationInitiation" => data_replication_initiation(),
    "dataReplicationState" => String.t(),
    "etaDateTime" => String.t(),
    "lagDuration" => String.t(),
    "lastSnapshotDateTime" => String.t(),
    "replicatedDisks" => list(data_replication_info_replicated_disk()())
  }
  """
  @type data_replication_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception_field() :: %{
    "message" => String.t(),
    "name" => String.t()
  }
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_source_servers_request_filters() :: %{
    "applicationIDs" => list(String.t()()),
    "isArchived" => [boolean()],
    "lifeCycleStates" => list(String.t()()),
    "replicationTypes" => list(String.t()()),
    "sourceServerIDs" => list(String.t()())
  }
  """
  @type describe_source_servers_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_source_servers_request() :: %{
    optional("accountID") => String.t(),
    required("applicationID") => String.t(),
    required("sourceServerIDs") => list(String.t()())
  }
  """
  @type associate_source_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_vcenter_client_request() :: %{
    required("vcenterClientID") => String.t()
  }
  """
  @type delete_vcenter_client_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  terminate_target_instances_request() :: %{
    optional("accountID") => String.t(),
    optional("tags") => map(),
    required("sourceServerIDs") => list(String.t()())
  }
  """
  @type terminate_target_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_replication_info_replicated_disk() :: %{
    "backloggedStorageBytes" => float(),
    "deviceName" => String.t(),
    "replicatedStorageBytes" => float(),
    "rescannedStorageBytes" => float(),
    "totalStorageBytes" => float()
  }
  """
  @type data_replication_info_replicated_disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_task() :: %{
    "creationDateTime" => String.t(),
    "endDateTime" => String.t(),
    "importID" => String.t(),
    "progressPercentage" => [float()],
    "s3BucketSource" => s3_bucket_source(),
    "status" => String.t(),
    "summary" => import_task_summary()
  }
  """
  @type import_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  initialize_service_response() :: %{

  }
  """
  @type initialize_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_source_server_action_response() :: %{

  }
  """
  @type remove_source_server_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_task_summary() :: %{
    "applications" => import_task_summary_applications(),
    "servers" => import_task_summary_servers(),
    "waves" => import_task_summary_waves()
  }
  """
  @type import_task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  mark_as_archived_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type mark_as_archived_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_response() :: %{

  }
  """
  @type delete_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_vcenter_clients_response() :: %{
    optional("items") => list(vcenter_client()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_vcenter_clients_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  wave() :: %{
    "arn" => String.t(),
    "creationDateTime" => String.t(),
    "description" => String.t(),
    "isArchived" => [boolean()],
    "lastModifiedDateTime" => String.t(),
    "name" => String.t(),
    "tags" => map(),
    "waveAggregatedStatus" => wave_aggregated_status(),
    "waveID" => String.t()
  }
  """
  @type wave() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_jobs_request_filters() :: %{
    "fromDate" => String.t(),
    "jobIDs" => list(String.t()()),
    "toDate" => String.t()
  }
  """
  @type describe_jobs_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_replication_initiation() :: %{
    "nextAttemptDateTime" => String.t(),
    "startDateTime" => String.t(),
    "steps" => list(data_replication_initiation_step()())
  }
  """
  @type data_replication_initiation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_managed_accounts_response() :: %{
    "items" => list(managed_account()()),
    "nextToken" => String.t()
  }
  """
  @type list_managed_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_task() :: %{
    "creationDateTime" => String.t(),
    "endDateTime" => String.t(),
    "exportID" => String.t(),
    "progressPercentage" => [float()],
    "s3Bucket" => String.t(),
    "s3BucketOwner" => String.t(),
    "s3Key" => String.t(),
    "status" => String.t(),
    "summary" => export_task_summary()
  }
  """
  @type export_task() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_launch_configuration_templates_response() :: %{
    optional("items") => list(launch_configuration_template()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_launch_configuration_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_application_request() :: %{
    optional("accountID") => String.t(),
    optional("description") => String.t(),
    optional("name") => String.t(),
    required("applicationID") => String.t()
  }
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_launch_configuration_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type get_launch_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_cutover_finalized() :: %{
    "apiCallDateTime" => String.t()
  }
  """
  @type life_cycle_last_cutover_finalized() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => String.t(),
    "retryAfterSeconds" => float()
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  participating_server() :: %{
    "launchStatus" => String.t(),
    "launchedEc2InstanceID" => String.t(),
    "postLaunchActionsStatus" => post_launch_actions_status(),
    "sourceServerID" => String.t()
  }
  """
  @type participating_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_import_errors_request() :: %{
    "importID" => String.t(),
    "maxResults" => integer(),
    "nextToken" => String.t()
  }
  """
  @type list_import_errors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_replication_initiation_step() :: %{
    "name" => String.t(),
    "status" => String.t()
  }
  """
  @type data_replication_initiation_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_export_request() :: %{
    "s3Bucket" => String.t(),
    "s3BucketOwner" => String.t(),
    "s3Key" => String.t()
  }
  """
  @type start_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_task_summary_applications() :: %{
    "createdCount" => float(),
    "modifiedCount" => float()
  }
  """
  @type import_task_summary_applications() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disconnect_from_service_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type disconnect_from_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_test() :: %{
    "finalized" => life_cycle_last_test_finalized(),
    "initiated" => life_cycle_last_test_initiated(),
    "reverted" => life_cycle_last_test_reverted()
  }
  """
  @type life_cycle_last_test() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_task_summary_waves() :: %{
    "createdCount" => float(),
    "modifiedCount" => float()
  }
  """
  @type import_task_summary_waves() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applications_request() :: %{
    optional("accountID") => String.t(),
    optional("filters") => list_applications_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_export_errors_request() :: %{
    "exportID" => String.t(),
    "maxResults" => integer(),
    "nextToken" => String.t()
  }
  """
  @type list_export_errors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_connector_request() :: %{
    optional("ssmCommandConfig") => connector_ssm_command_config(),
    optional("tags") => map(),
    required("name") => String.t(),
    required("ssmInstanceID") => String.t()
  }
  """
  @type create_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_template_action_request() :: %{
    required("actionID") => String.t(),
    required("launchConfigurationTemplateID") => String.t()
  }
  """
  @type remove_template_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_error_data() :: %{
    "rawError" => String.t()
  }
  """
  @type export_error_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_export_errors_response() :: %{
    "items" => list(export_task_error()()),
    "nextToken" => String.t()
  }
  """
  @type list_export_errors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  change_server_life_cycle_state_request() :: %{
    optional("accountID") => String.t(),
    required("lifeCycle") => change_server_life_cycle_state_source_server_lifecycle(),
    required("sourceServerID") => String.t()
  }
  """
  @type change_server_life_cycle_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  archive_application_request() :: %{
    optional("accountID") => String.t(),
    required("applicationID") => String.t()
  }
  """
  @type archive_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_job_request() :: %{
    optional("accountID") => String.t(),
    required("jobID") => String.t()
  }
  """
  @type delete_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_test_response() :: %{
    optional("job") => job()
  }
  """
  @type start_test_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ssm_parameter_store_parameter() :: %{
    "parameterName" => String.t(),
    "parameterType" => String.t()
  }
  """
  @type ssm_parameter_store_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_jobs_response() :: %{
    optional("items") => list(job()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disk() :: %{
    "bytes" => float(),
    "deviceName" => String.t()
  }
  """
  @type disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_launch_configuration_request() :: %{
    optional("accountID") => String.t(),
    optional("bootMode") => String.t(),
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("enableMapAutoTagging") => [boolean()],
    optional("launchDisposition") => String.t(),
    optional("licensing") => licensing(),
    optional("mapAutoTaggingMpeID") => String.t(),
    optional("name") => String.t(),
    optional("postLaunchActions") => post_launch_actions(),
    optional("targetInstanceTypeRightSizingMethod") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type update_launch_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "code" => String.t(),
    "fieldList" => list(validation_exception_field()()),
    "message" => String.t(),
    "reason" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_replication_configuration_template_request() :: %{
    required("replicationConfigurationTemplateID") => String.t()
  }
  """
  @type delete_replication_configuration_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job() :: %{
    "arn" => String.t(),
    "creationDateTime" => String.t(),
    "endDateTime" => String.t(),
    "initiatedBy" => String.t(),
    "jobID" => String.t(),
    "participatingServers" => list(participating_server()()),
    "status" => String.t(),
    "tags" => map(),
    "type" => String.t()
  }
  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_template_disk_conf() :: %{
    "iops" => float(),
    "throughput" => float(),
    "volumeType" => String.t()
  }
  """
  @type launch_template_disk_conf() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_task_summary_servers() :: %{
    "createdCount" => float(),
    "modifiedCount" => float()
  }
  """
  @type import_task_summary_servers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "message" => String.t(),
    "quotaCode" => String.t(),
    "retryAfterSeconds" => String.t(),
    "serviceCode" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ssm_document() :: %{
    "actionName" => String.t(),
    "externalParameters" => map(),
    "mustSucceedForCutover" => [boolean()],
    "parameters" => map(),
    "ssmDocumentName" => String.t(),
    "timeoutSeconds" => integer()
  }
  """
  @type ssm_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_template_action_request() :: %{
    optional("active") => [boolean()],
    optional("category") => String.t(),
    optional("description") => String.t(),
    optional("documentVersion") => String.t(),
    optional("externalParameters") => map(),
    optional("mustSucceedForCutover") => [boolean()],
    optional("operatingSystem") => String.t(),
    optional("parameters") => map(),
    optional("timeoutSeconds") => integer(),
    required("actionID") => String.t(),
    required("actionName") => String.t(),
    required("documentIdentifier") => String.t(),
    required("launchConfigurationTemplateID") => String.t(),
    required("order") => integer()
  }
  """
  @type put_template_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_imports_request() :: %{
    "filters" => list_imports_request_filters(),
    "maxResults" => integer(),
    "nextToken" => String.t()
  }
  """
  @type list_imports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_imports_request_filters() :: %{
    "importIDs" => list(String.t()())
  }
  """
  @type list_imports_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_managed_accounts_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_managed_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_log_event_data() :: %{
    "conversionServerID" => String.t(),
    "rawError" => String.t(),
    "sourceServerID" => String.t(),
    "targetInstanceID" => String.t()
  }
  """
  @type job_log_event_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_jobs_request() :: %{
    optional("accountID") => String.t(),
    optional("filters") => describe_jobs_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_configuration() :: %{
    optional("bootMode") => String.t(),
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("ec2LaunchTemplateID") => String.t(),
    optional("enableMapAutoTagging") => [boolean()],
    optional("launchDisposition") => String.t(),
    optional("licensing") => licensing(),
    optional("mapAutoTaggingMpeID") => String.t(),
    optional("name") => String.t(),
    optional("postLaunchActions") => post_launch_actions(),
    optional("sourceServerID") => String.t(),
    optional("targetInstanceTypeRightSizingMethod") => String.t()
  }
  """
  @type launch_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applications_response() :: %{
    optional("items") => list(application()()),
    optional("nextToken") => String.t()
  }
  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_post_launch_actions_launch_status() :: %{
    "executionID" => String.t(),
    "executionStatus" => String.t(),
    "failureReason" => String.t(),
    "ssmDocument" => ssm_document(),
    "ssmDocumentType" => String.t()
  }
  """
  @type job_post_launch_actions_launch_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_error_data() :: %{
    "accountID" => String.t(),
    "applicationID" => String.t(),
    "ec2LaunchTemplateID" => String.t(),
    "rawError" => String.t(),
    "rowNumber" => float(),
    "sourceServerID" => String.t(),
    "waveID" => String.t()
  }
  """
  @type import_error_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_replication_configuration_request() :: %{
    optional("accountID") => String.t(),
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("name") => String.t(),
    optional("replicatedDisks") => list(replication_configuration_replicated_disk()()),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()],
    optional("useFipsEndpoint") => [boolean()],
    required("sourceServerID") => String.t()
  }
  """
  @type update_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_connector_request() :: %{
    required("connectorID") => String.t()
  }
  """
  @type delete_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_server() :: %{
    "applicationID" => String.t(),
    "arn" => String.t(),
    "connectorAction" => source_server_connector_action(),
    "dataReplicationInfo" => data_replication_info(),
    "fqdnForActionFramework" => String.t(),
    "isArchived" => [boolean()],
    "launchedInstance" => launched_instance(),
    "lifeCycle" => life_cycle(),
    "replicationType" => String.t(),
    "sourceProperties" => source_properties(),
    "sourceServerID" => String.t(),
    "tags" => map(),
    "userProvidedID" => String.t(),
    "vcenterClientID" => String.t()
  }
  """
  @type source_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  wave_aggregated_status() :: %{
    "healthStatus" => String.t(),
    "lastUpdateDateTime" => String.t(),
    "progressStatus" => String.t(),
    "replicationStartedDateTime" => String.t(),
    "totalApplications" => float()
  }
  """
  @type wave_aggregated_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_import_errors_response() :: %{
    "items" => list(import_task_error()()),
    "nextToken" => String.t()
  }
  """
  @type list_import_errors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_waves_response() :: %{
    optional("items") => list(wave()()),
    optional("nextToken") => String.t()
  }
  """
  @type list_waves_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_server_action_document() :: %{
    optional("actionID") => String.t(),
    optional("actionName") => String.t(),
    optional("active") => [boolean()],
    optional("category") => String.t(),
    optional("description") => String.t(),
    optional("documentIdentifier") => String.t(),
    optional("documentVersion") => String.t(),
    optional("externalParameters") => map(),
    optional("mustSucceedForCutover") => [boolean()],
    optional("order") => integer(),
    optional("parameters") => map(),
    optional("timeoutSeconds") => integer()
  }
  """
  @type source_server_action_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  finalize_cutover_request() :: %{
    optional("accountID") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type finalize_cutover_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_source_servers_response() :: %{

  }
  """
  @type associate_source_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_cutover_initiated() :: %{
    "apiCallDateTime" => String.t(),
    "jobID" => String.t()
  }
  """
  @type life_cycle_last_cutover_initiated() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_launch_configuration_template_response() :: %{

  }
  """
  @type delete_launch_configuration_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_job_response() :: %{

  }
  """
  @type delete_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_source_servers_request() :: %{
    optional("accountID") => String.t(),
    required("applicationID") => String.t(),
    required("sourceServerIDs") => list(String.t()())
  }
  """
  @type disassociate_source_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_replication_configuration_templates_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("replicationConfigurationTemplateIDs") => list(String.t()())
  }
  """
  @type describe_replication_configuration_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  o_s() :: %{
    "fullString" => String.t()
  }
  """
  @type o_s() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_connectors_request_filters() :: %{
    "connectorIDs" => list(String.t()())
  }
  """
  @type list_connectors_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_job_log_items_response() :: %{
    optional("items") => list(job_log()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_job_log_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  terminate_target_instances_response() :: %{
    optional("job") => job()
  }
  """
  @type terminate_target_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_import_request() :: %{
    "clientToken" => String.t(),
    "s3BucketSource" => s3_bucket_source()
  }
  """
  @type start_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_launch_configuration_template_request() :: %{
    optional("associatePublicIpAddress") => [boolean()],
    optional("bootMode") => String.t(),
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("enableMapAutoTagging") => [boolean()],
    optional("largeVolumeConf") => launch_template_disk_conf(),
    optional("launchDisposition") => String.t(),
    optional("licensing") => licensing(),
    optional("mapAutoTaggingMpeID") => String.t(),
    optional("postLaunchActions") => post_launch_actions(),
    optional("smallVolumeConf") => launch_template_disk_conf(),
    optional("smallVolumeMaxSize") => float(),
    optional("targetInstanceTypeRightSizingMethod") => String.t(),
    required("launchConfigurationTemplateID") => String.t()
  }
  """
  @type update_launch_configuration_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_bucket_source() :: %{
    "s3Bucket" => String.t(),
    "s3BucketOwner" => String.t(),
    "s3Key" => String.t()
  }
  """
  @type s3_bucket_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_import_response() :: %{
    "importTask" => import_task()
  }
  """
  @type start_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_cutover_request() :: %{
    optional("accountID") => String.t(),
    optional("tags") => map(),
    required("sourceServerIDs") => list(String.t()())
  }
  """
  @type start_cutover_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_log() :: %{
    "event" => String.t(),
    "eventData" => job_log_event_data(),
    "logDateTime" => String.t()
  }
  """
  @type job_log() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  template_actions_request_filters() :: %{
    "actionIDs" => list(String.t()())
  }
  """
  @type template_actions_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_request() :: %{
    optional("accountID") => String.t(),
    required("applicationID") => String.t()
  }
  """
  @type delete_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_exports_response() :: %{
    "items" => list(export_task()()),
    "nextToken" => String.t()
  }
  """
  @type list_exports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_launch_configuration_template_request() :: %{
    required("launchConfigurationTemplateID") => String.t()
  }
  """
  @type delete_launch_configuration_template_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2020-02-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mgn",
      global?: false,
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
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def archive_application(%Client{} = client, input, options \\ []) do
    url_path = "/ArchiveApplication"
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
  Archive wave.
  """
  @spec archive_wave(map(), archive_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def archive_wave(%Client{} = client, input, options \\ []) do
    url_path = "/ArchiveWave"
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
  Associate applications to wave.
  """
  @spec associate_applications(map(), associate_applications_request(), list()) ::
          {:ok, associate_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def associate_applications(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateApplications"
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
  Associate source servers to application.
  """
  @spec associate_source_servers(map(), associate_source_servers_request(), list()) ::
          {:ok, associate_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def associate_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateSourceServers"
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
  Allows the user to set the SourceServer.LifeCycle.state property for specific
  Source Server IDs to one of the following: READY_FOR_TEST or READY_FOR_CUTOVER.

  This command only works if the Source Server is already launchable
  (dataReplicationInfo.lagDuration is not null.)
  """
  @spec change_server_life_cycle_state(map(), change_server_life_cycle_state_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def change_server_life_cycle_state(%Client{} = client, input, options \\ []) do
    url_path = "/ChangeServerLifeCycleState"
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
  Create application.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/CreateApplication"
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
      201
    )
  end

  @doc """
  Create Connector.
  """
  @spec create_connector(map(), create_connector_request(), list()) ::
          {:ok, connector(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/CreateConnector"
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
          | {:error, access_denied_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def create_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLaunchConfigurationTemplate"
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
          | {:error, access_denied_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def create_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/CreateReplicationConfigurationTemplate"
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
      201
    )
  end

  @doc """
  Create wave.
  """
  @spec create_wave(map(), create_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def create_wave(%Client{} = client, input, options \\ []) do
    url_path = "/CreateWave"
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
      201
    )
  end

  @doc """
  Delete application.
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_application(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteApplication"
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
      204
    )
  end

  @doc """
  Delete Connector.
  """
  @spec delete_connector(map(), delete_connector_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def delete_connector(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteConnector"
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
      204
    )
  end

  @doc """
  Deletes a single Job by ID.
  """
  @spec delete_job(map(), delete_job_request(), list()) ::
          {:ok, delete_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_job(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteJob"
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
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLaunchConfigurationTemplate"
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
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteReplicationConfigurationTemplate"
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
      204
    )
  end

  @doc """
  Deletes a single source server by ID.
  """
  @spec delete_source_server(map(), delete_source_server_request(), list()) ::
          {:ok, delete_source_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSourceServer"
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
      204
    )
  end

  @doc """
  Deletes a given vCenter client by ID.
  """
  @spec delete_vcenter_client(map(), delete_vcenter_client_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def delete_vcenter_client(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteVcenterClient"
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
      204
    )
  end

  @doc """
  Delete wave.
  """
  @spec delete_wave(map(), delete_wave_request(), list()) ::
          {:ok, delete_wave_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_wave(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteWave"
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
      204
    )
  end

  @doc """
  Retrieves detailed job log items with paging.
  """
  @spec describe_job_log_items(map(), describe_job_log_items_request(), list()) ::
          {:ok, describe_job_log_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def describe_job_log_items(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobLogItems"
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
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def describe_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobs"
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
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def describe_launch_configuration_templates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeLaunchConfigurationTemplates"
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
  Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
  """
  @spec describe_replication_configuration_templates(
          map(),
          describe_replication_configuration_templates_request(),
          list()
        ) ::
          {:ok, describe_replication_configuration_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def describe_replication_configuration_templates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeReplicationConfigurationTemplates"
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
  Retrieves all SourceServers or multiple SourceServers by ID.
  """
  @spec describe_source_servers(map(), describe_source_servers_request(), list()) ::
          {:ok, describe_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def describe_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSourceServers"
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
  Returns a list of the installed vCenter clients.
  """
  @spec describe_vcenter_clients(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, describe_vcenter_clients_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
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
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def disassociate_applications(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateApplications"
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
  Disassociate source servers from application.
  """
  @spec disassociate_source_servers(map(), disassociate_source_servers_request(), list()) ::
          {:ok, disassociate_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def disassociate_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateSourceServers"
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
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def disconnect_from_service(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectFromService"
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
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def finalize_cutover(%Client{} = client, input, options \\ []) do
    url_path = "/FinalizeCutover"
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
  Lists all LaunchConfigurations available, filtered by Source Server IDs.
  """
  @spec get_launch_configuration(map(), get_launch_configuration_request(), list()) ::
          {:ok, launch_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def get_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetLaunchConfiguration"
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
  Lists all ReplicationConfigurations, filtered by Source Server ID.
  """
  @spec get_replication_configuration(map(), get_replication_configuration_request(), list()) ::
          {:ok, replication_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def get_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetReplicationConfiguration"
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
  Initialize Application Migration Service.
  """
  @spec initialize_service(map(), initialize_service_request(), list()) ::
          {:ok, initialize_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def initialize_service(%Client{} = client, input, options \\ []) do
    url_path = "/InitializeService"
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
      204
    )
  end

  @doc """
  Retrieves all applications or multiple applications by ID.
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
  def list_applications(%Client{} = client, input, options \\ []) do
    url_path = "/ListApplications"
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
  List Connectors.
  """
  @spec list_connectors(map(), list_connectors_request(), list()) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def list_connectors(%Client{} = client, input, options \\ []) do
    url_path = "/ListConnectors"
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
  List export errors.
  """
  @spec list_export_errors(map(), list_export_errors_request(), list()) ::
          {:ok, list_export_errors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def list_export_errors(%Client{} = client, input, options \\ []) do
    url_path = "/ListExportErrors"
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
  List exports.
  """
  @spec list_exports(map(), list_exports_request(), list()) ::
          {:ok, list_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
  def list_exports(%Client{} = client, input, options \\ []) do
    url_path = "/ListExports"
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
  List import errors.
  """
  @spec list_import_errors(map(), list_import_errors_request(), list()) ::
          {:ok, list_import_errors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def list_import_errors(%Client{} = client, input, options \\ []) do
    url_path = "/ListImportErrors"
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
  List imports.
  """
  @spec list_imports(map(), list_imports_request(), list()) ::
          {:ok, list_imports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def list_imports(%Client{} = client, input, options \\ []) do
    url_path = "/ListImports"
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
  List Managed Accounts.
  """
  @spec list_managed_accounts(map(), list_managed_accounts_request(), list()) ::
          {:ok, list_managed_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def list_managed_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/ListManagedAccounts"
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
  List source server post migration custom actions.
  """
  @spec list_source_server_actions(map(), list_source_server_actions_request(), list()) ::
          {:ok, list_source_server_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def list_source_server_actions(%Client{} = client, input, options \\ []) do
    url_path = "/ListSourceServerActions"
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
  List all tags for your Application Migration Service resources.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
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
  List template post migration custom actions.
  """
  @spec list_template_actions(map(), list_template_actions_request(), list()) ::
          {:ok, list_template_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def list_template_actions(%Client{} = client, input, options \\ []) do
    url_path = "/ListTemplateActions"
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
  Retrieves all waves or multiple waves by ID.
  """
  @spec list_waves(map(), list_waves_request(), list()) ::
          {:ok, list_waves_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, uninitialized_account_exception()}
  def list_waves(%Client{} = client, input, options \\ []) do
    url_path = "/ListWaves"
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
  Archives specific Source Servers by setting the SourceServer.isArchived property
  to true for specified SourceServers by ID.

  This command only works for SourceServers with a lifecycle. state which equals
  DISCONNECTED or CUTOVER.
  """
  @spec mark_as_archived(map(), mark_as_archived_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def mark_as_archived(%Client{} = client, input, options \\ []) do
    url_path = "/MarkAsArchived"
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
  Pause Replication.
  """
  @spec pause_replication(map(), pause_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def pause_replication(%Client{} = client, input, options \\ []) do
    url_path = "/PauseReplication"
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
  Put source server post migration custom action.
  """
  @spec put_source_server_action(map(), put_source_server_action_request(), list()) ::
          {:ok, source_server_action_document(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def put_source_server_action(%Client{} = client, input, options \\ []) do
    url_path = "/PutSourceServerAction"
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
  Put template post migration custom action.
  """
  @spec put_template_action(map(), put_template_action_request(), list()) ::
          {:ok, template_action_document(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def put_template_action(%Client{} = client, input, options \\ []) do
    url_path = "/PutTemplateAction"
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
  Remove source server post migration custom action.
  """
  @spec remove_source_server_action(map(), remove_source_server_action_request(), list()) ::
          {:ok, remove_source_server_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def remove_source_server_action(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveSourceServerAction"
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
      204
    )
  end

  @doc """
  Remove template post migration custom action.
  """
  @spec remove_template_action(map(), remove_template_action_request(), list()) ::
          {:ok, remove_template_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def remove_template_action(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveTemplateAction"
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
      204
    )
  end

  @doc """
  Resume Replication.
  """
  @spec resume_replication(map(), resume_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def resume_replication(%Client{} = client, input, options \\ []) do
    url_path = "/ResumeReplication"
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
  Causes the data replication initiation sequence to begin immediately upon next
  Handshake for specified SourceServer IDs, regardless of when the previous
  initiation started.

  This command will not work if the SourceServer is not stalled or is in a
  DISCONNECTED or STOPPED state.
  """
  @spec retry_data_replication(map(), retry_data_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def retry_data_replication(%Client{} = client, input, options \\ []) do
    url_path = "/RetryDataReplication"
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
  Launches a Cutover Instance for specific Source Servers.

  This command starts a LAUNCH job whose initiatedBy property is StartCutover and
  changes the SourceServer.lifeCycle.state property to CUTTING_OVER.
  """
  @spec start_cutover(map(), start_cutover_request(), list()) ::
          {:ok, start_cutover_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def start_cutover(%Client{} = client, input, options \\ []) do
    url_path = "/StartCutover"
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
      202
    )
  end

  @doc """
  Start export.
  """
  @spec start_export(map(), start_export_request(), list()) ::
          {:ok, start_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def start_export(%Client{} = client, input, options \\ []) do
    url_path = "/StartExport"
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
      202
    )
  end

  @doc """
  Start import.
  """
  @spec start_import(map(), start_import_request(), list()) ::
          {:ok, start_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def start_import(%Client{} = client, input, options \\ []) do
    url_path = "/StartImport"
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
      202
    )
  end

  @doc """
  Starts replication for SNAPSHOT_SHIPPING agents.
  """
  @spec start_replication(map(), start_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def start_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StartReplication"
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
  Launches a Test Instance for specific Source Servers.

  This command starts a LAUNCH job whose initiatedBy property is StartTest and
  changes the SourceServer.lifeCycle.state property to TESTING.
  """
  @spec start_test(map(), start_test_request(), list()) ::
          {:ok, start_test_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def start_test(%Client{} = client, input, options \\ []) do
    url_path = "/StartTest"
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
      202
    )
  end

  @doc """
  Stop Replication.
  """
  @spec stop_replication(map(), stop_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def stop_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StopReplication"
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
  Adds or overwrites only the specified tags for the specified Application
  Migration Service resource or resources.

  When you specify an existing tag key, the value is overwritten with the new
  value. Each resource can have a maximum of 50 tags. Each tag consists of a key
  and optional value.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
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
  Starts a job that terminates specific launched EC2 Test and Cutover instances.

  This command will not work for any Source Server with a lifecycle.state of
  TESTING, CUTTING_OVER, or CUTOVER.
  """
  @spec terminate_target_instances(map(), terminate_target_instances_request(), list()) ::
          {:ok, terminate_target_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def terminate_target_instances(%Client{} = client, input, options \\ []) do
    url_path = "/TerminateTargetInstances"
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
      202
    )
  end

  @doc """
  Unarchive application.
  """
  @spec unarchive_application(map(), unarchive_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def unarchive_application(%Client{} = client, input, options \\ []) do
    url_path = "/UnarchiveApplication"
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
  Unarchive wave.
  """
  @spec unarchive_wave(map(), unarchive_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, uninitialized_account_exception()}
  def unarchive_wave(%Client{} = client, input, options \\ []) do
    url_path = "/UnarchiveWave"
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
  Deletes the specified set of tags from the specified set of Application
  Migration Service resources.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
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
  Update application.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, application(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def update_application(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateApplication"
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
  Update Connector.
  """
  @spec update_connector(map(), update_connector_request(), list()) ::
          {:ok, connector(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def update_connector(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateConnector"
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
  Updates multiple LaunchConfigurations by Source Server ID.
  """
  @spec update_launch_configuration(map(), update_launch_configuration_request(), list()) ::
          {:ok, launch_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def update_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLaunchConfiguration"
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
  Updates an existing Launch Configuration Template by ID.
  """
  @spec update_launch_configuration_template(
          map(),
          update_launch_configuration_template_request(),
          list()
        ) ::
          {:ok, launch_configuration_template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def update_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLaunchConfigurationTemplate"
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
  Allows you to update multiple ReplicationConfigurations by Source Server ID.
  """
  @spec update_replication_configuration(
          map(),
          update_replication_configuration_request(),
          list()
        ) ::
          {:ok, replication_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def update_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfiguration"
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
  Updates multiple ReplicationConfigurationTemplates by ID.
  """
  @spec update_replication_configuration_template(
          map(),
          update_replication_configuration_template_request(),
          list()
        ) ::
          {:ok, replication_configuration_template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def update_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfigurationTemplate"
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
  Update Source Server.
  """
  @spec update_source_server(map(), update_source_server_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def update_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSourceServer"
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
  Allows you to change between the AGENT_BASED replication type and the
  SNAPSHOT_SHIPPING replication type.
  """
  @spec update_source_server_replication_type(
          map(),
          update_source_server_replication_type_request(),
          list()
        ) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def update_source_server_replication_type(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSourceServerReplicationType"
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
  Update wave.
  """
  @spec update_wave(map(), update_wave_request(), list()) ::
          {:ok, wave(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, uninitialized_account_exception()}
  def update_wave(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateWave"
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
end
