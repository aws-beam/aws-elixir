# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Drs do
  @moduledoc """
  AWS Elastic Disaster Recovery Service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  describe_job_log_items_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("jobID") => String.t()
  }
  """
  @type describe_job_log_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_failback_replication_configuration_request() :: %{
    optional("bandwidthThrottling") => float(),
    optional("name") => String.t(),
    optional("usePrivateIP") => [boolean()],
    required("recoveryInstanceID") => String.t()
  }
  """
  @type update_failback_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_recovery_instances_request_filters() :: %{
    "recoveryInstanceIDs" => list(String.t()()),
    "sourceServerIDs" => list(String.t()())
  }
  """
  @type describe_recovery_instances_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_source_servers_request() :: %{
    optional("filters") => describe_source_servers_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_source_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_staging_accounts_response() :: %{
    optional("accounts") => list(account()()),
    optional("nextToken") => String.t()
  }
  """
  @type list_staging_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_recovery_request_source_server() :: %{
    "recoverySnapshotID" => String.t(),
    "sourceServerID" => String.t()
  }
  """
  @type start_recovery_request_source_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle() :: %{
    "addedToServiceDateTime" => String.t(),
    "elapsedReplicationDuration" => String.t(),
    "firstByteDateTime" => String.t(),
    "lastLaunch" => life_cycle_last_launch(),
    "lastSeenByServiceDateTime" => String.t()
  }
  """
  @type life_cycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_life_cycle() :: %{
    "apiCallDateTime" => [non_neg_integer()],
    "jobID" => String.t(),
    "lastRecoveryResult" => String.t()
  }
  """
  @type recovery_life_cycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_source_network_cfn_template_request() :: %{
    required("sourceNetworkID") => String.t()
  }
  """
  @type export_source_network_cfn_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_cloud_properties() :: %{
    "originAccountID" => String.t(),
    "originAvailabilityZone" => String.t(),
    "originRegion" => String.t()
  }
  """
  @type source_cloud_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_extensible_source_servers_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("stagingAccountID") => String.t()
  }
  """
  @type list_extensible_source_servers_request() :: %{String.t() => any()}

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
    required("sourceServerID") => String.t()
  }
  """
  @type delete_source_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_recovery_instances_response() :: %{
    optional("items") => list(recovery_instance()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_recovery_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_configuration_template() :: %{
    optional("arn") => String.t(),
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("autoReplicateNewDisks") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("pitPolicy") => list(p_i_t_policy_rule()()),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("tags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()],
    required("replicationConfigurationTemplateID") => String.t()
  }
  """
  @type replication_configuration_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_instance_properties() :: %{
    "cpus" => list(c_p_u()()),
    "disks" => list(recovery_instance_disk()()),
    "identificationHints" => identification_hints(),
    "lastUpdatedDateTime" => String.t(),
    "networkInterfaces" => list(network_interface()()),
    "os" => o_s(),
    "ramBytes" => float()
  }
  """
  @type recovery_instance_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_instance_disk() :: %{
    "bytes" => float(),
    "ebsVolumeID" => String.t(),
    "internalDeviceName" => String.t()
  }
  """
  @type recovery_instance_disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_replication_configuration_template_request() :: %{
    optional("arn") => String.t(),
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("autoReplicateNewDisks") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("pitPolicy") => list(p_i_t_policy_rule()()),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()],
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
    "optimizedStagingDiskType" => String.t(),
    "stagingDiskType" => String.t(),
    "throughput" => float()
  }
  """
  @type replication_configuration_replicated_disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  terminate_recovery_instances_response() :: %{
    optional("job") => job()
  }
  """
  @type terminate_recovery_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  participating_resource() :: %{
    "launchStatus" => String.t(),
    "participatingResourceID" => list()
  }
  """
  @type participating_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_launch_action_request() :: %{
    optional("parameters") => map(),
    required("actionCode") => String.t(),
    required("actionId") => String.t(),
    required("actionVersion") => String.t(),
    required("active") => [boolean()],
    required("category") => String.t(),
    required("description") => String.t(),
    required("name") => String.t(),
    required("optional") => [boolean()],
    required("order") => integer(),
    required("resourceId") => String.t()
  }
  """
  @type put_launch_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_failback_request() :: %{
    required("recoveryInstanceID") => String.t()
  }
  """
  @type stop_failback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_source_network_request() :: %{
    required("sourceNetworkID") => String.t()
  }
  """
  @type delete_source_network_request() :: %{String.t() => any()}

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
  describe_source_networks_response() :: %{
    "items" => list(source_network()()),
    "nextToken" => String.t()
  }
  """
  @type describe_source_networks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_replication_configuration_template_request() :: %{
    optional("autoReplicateNewDisks") => [boolean()],
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("tags") => map(),
    required("associateDefaultSecurityGroup") => [boolean()],
    required("bandwidthThrottling") => float(),
    required("createPublicIP") => [boolean()],
    required("dataPlaneRouting") => String.t(),
    required("defaultLargeStagingDiskType") => String.t(),
    required("ebsEncryption") => String.t(),
    required("pitPolicy") => list(p_i_t_policy_rule()()),
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
  put_launch_action_response() :: %{
    "actionCode" => String.t(),
    "actionId" => String.t(),
    "actionVersion" => String.t(),
    "active" => [boolean()],
    "category" => String.t(),
    "description" => String.t(),
    "name" => String.t(),
    "optional" => [boolean()],
    "order" => integer(),
    "parameters" => map(),
    "resourceId" => String.t(),
    "type" => String.t()
  }
  """
  @type put_launch_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  staging_source_server() :: %{
    "arn" => String.t(),
    "hostname" => String.t(),
    "tags" => map()
  }
  """
  @type staging_source_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_action_parameter() :: %{
    "type" => String.t(),
    "value" => String.t()
  }
  """
  @type launch_action_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  retry_data_replication_request() :: %{
    "sourceServerID" => String.t()
  }
  """
  @type retry_data_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_replication_configuration_request() :: %{
    required("sourceServerID") => String.t()
  }
  """
  @type get_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_replication_request() :: %{
    required("sourceServerID") => String.t()
  }
  """
  @type start_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_launch_action_response() :: %{

  }
  """
  @type delete_launch_action_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_source_network_replication_request() :: %{
    required("sourceNetworkID") => String.t()
  }
  """
  @type start_source_network_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_replication_request() :: %{
    required("sourceServerID") => String.t()
  }
  """
  @type stop_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_failback_launch_response() :: %{
    optional("job") => job()
  }
  """
  @type start_failback_launch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_configuration_template() :: %{
    "arn" => String.t(),
    "copyPrivateIp" => [boolean()],
    "copyTags" => [boolean()],
    "exportBucketArn" => String.t(),
    "launchConfigurationTemplateID" => String.t(),
    "launchDisposition" => String.t(),
    "launchIntoSourceInstance" => [boolean()],
    "licensing" => licensing(),
    "postLaunchEnabled" => [boolean()],
    "tags" => map(),
    "targetInstanceTypeRightSizingMethod" => String.t()
  }
  """
  @type launch_configuration_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_recovery_snapshots_request() :: %{
    optional("filters") => describe_recovery_snapshots_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("order") => String.t(),
    required("sourceServerID") => String.t()
  }
  """
  @type describe_recovery_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_actions_request_filters() :: %{
    "actionIds" => list(String.t()())
  }
  """
  @type launch_actions_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  licensing() :: %{
    "osByol" => [boolean()]
  }
  """
  @type licensing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  p_i_t_policy_rule() :: %{
    "enabled" => [boolean()],
    "interval" => integer(),
    "retentionDuration" => integer(),
    "ruleID" => float(),
    "units" => String.t()
  }
  """
  @type p_i_t_policy_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_instance_failback() :: %{
    "agentLastSeenByServiceDateTime" => String.t(),
    "elapsedReplicationDuration" => String.t(),
    "failbackClientID" => String.t(),
    "failbackClientLastSeenByServiceDateTime" => String.t(),
    "failbackInitiationTime" => String.t(),
    "failbackJobID" => String.t(),
    "failbackLaunchType" => String.t(),
    "failbackToOriginalServer" => [boolean()],
    "firstByteDateTime" => String.t(),
    "state" => String.t()
  }
  """
  @type recovery_instance_failback() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_recovery_request() :: %{
    optional("isDrill") => [boolean()],
    optional("tags") => map(),
    required("sourceServers") => list(start_recovery_request_source_server()())
  }
  """
  @type start_recovery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  identification_hints() :: %{
    "awsInstanceID" => String.t(),
    "fqdn" => String.t(),
    "hostname" => String.t(),
    "vmWareUuid" => String.t()
  }
  """
  @type identification_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_action() :: %{
    "actionCode" => String.t(),
    "actionId" => String.t(),
    "actionVersion" => String.t(),
    "active" => [boolean()],
    "category" => String.t(),
    "description" => String.t(),
    "name" => String.t(),
    "optional" => [boolean()],
    "order" => integer(),
    "parameters" => map(),
    "type" => String.t()
  }
  """
  @type launch_action() :: %{String.t() => any()}

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
    "recommendedInstanceType" => String.t(),
    "supportsNitroInstances" => [boolean()]
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
  reverse_replication_request() :: %{
    required("recoveryInstanceID") => String.t()
  }
  """
  @type reverse_replication_request() :: %{String.t() => any()}

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
  recovery_instance_data_replication_info_replicated_disk() :: %{
    "backloggedStorageBytes" => float(),
    "deviceName" => String.t(),
    "replicatedStorageBytes" => float(),
    "rescannedStorageBytes" => float(),
    "totalStorageBytes" => float()
  }
  """
  @type recovery_instance_data_replication_info_replicated_disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_replication_configuration_template_response() :: %{

  }
  """
  @type delete_replication_configuration_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  replication_configuration() :: %{
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("autoReplicateNewDisks") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("name") => String.t(),
    optional("pitPolicy") => list(p_i_t_policy_rule()()),
    optional("replicatedDisks") => list(replication_configuration_replicated_disk()()),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("sourceServerID") => String.t(),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()]
  }
  """
  @type replication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "code" => String.t(),
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
  describe_source_networks_request() :: %{
    optional("filters") => describe_source_networks_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_source_networks_request() :: %{String.t() => any()}

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
  disconnect_recovery_instance_request() :: %{
    required("recoveryInstanceID") => String.t()
  }
  """
  @type disconnect_recovery_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_launch_actions_request() :: %{
    optional("filters") => launch_actions_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("resourceId") => String.t()
  }
  """
  @type list_launch_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "code" => String.t(),
    "message" => String.t(),
    "quotaCode" => String.t(),
    "resourceId" => String.t(),
    "resourceType" => String.t(),
    "serviceCode" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_source_network_recovery_request_network_entry() :: %{
    "cfnStackName" => String.t(),
    "sourceNetworkID" => String.t()
  }
  """
  @type start_source_network_recovery_request_network_entry() :: %{String.t() => any()}

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
  launch_action_run() :: %{
    "action" => launch_action(),
    "failureReason" => String.t(),
    "runId" => String.t(),
    "status" => String.t()
  }
  """
  @type launch_action_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_recovery_instance_request() :: %{
    required("recoveryInstanceID") => String.t()
  }
  """
  @type delete_recovery_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  account() :: %{
    "accountID" => String.t()
  }
  """
  @type account() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_instance_data_replication_initiation() :: %{
    "startDateTime" => String.t(),
    "steps" => list(recovery_instance_data_replication_initiation_step()())
  }
  """
  @type recovery_instance_data_replication_initiation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  initialize_service_request() :: %{

  }
  """
  @type initialize_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_launch_configuration_template_request() :: %{
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("exportBucketArn") => String.t(),
    optional("launchDisposition") => String.t(),
    optional("launchIntoSourceInstance") => [boolean()],
    optional("licensing") => licensing(),
    optional("postLaunchEnabled") => [boolean()],
    optional("tags") => map(),
    optional("targetInstanceTypeRightSizingMethod") => String.t()
  }
  """
  @type create_launch_configuration_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_instance_data_replication_info() :: %{
    "dataReplicationError" => recovery_instance_data_replication_error(),
    "dataReplicationInitiation" => recovery_instance_data_replication_initiation(),
    "dataReplicationState" => String.t(),
    "etaDateTime" => String.t(),
    "lagDuration" => String.t(),
    "replicatedDisks" => list(recovery_instance_data_replication_info_replicated_disk()()),
    "stagingAvailabilityZone" => String.t()
  }
  """
  @type recovery_instance_data_replication_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    optional("tags") => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_source_network_request() :: %{
    optional("tags") => map(),
    required("originAccountID") => String.t(),
    required("originRegion") => String.t(),
    required("vpcID") => String.t()
  }
  """
  @type create_source_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_launch_configuration_template_response() :: %{
    optional("launchConfigurationTemplate") => launch_configuration_template()
  }
  """
  @type update_launch_configuration_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_network() :: %{
    "arn" => String.t(),
    "cfnStackName" => String.t(),
    "lastRecovery" => recovery_life_cycle(),
    "launchedVpcID" => String.t(),
    "replicationStatus" => String.t(),
    "replicationStatusDetails" => String.t(),
    "sourceAccountID" => String.t(),
    "sourceNetworkID" => String.t(),
    "sourceRegion" => String.t(),
    "sourceVpcID" => String.t(),
    "tags" => map()
  }
  """
  @type source_network() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_replication_info() :: %{
    "dataReplicationError" => data_replication_error(),
    "dataReplicationInitiation" => data_replication_initiation(),
    "dataReplicationState" => String.t(),
    "etaDateTime" => String.t(),
    "lagDuration" => String.t(),
    "replicatedDisks" => list(data_replication_info_replicated_disk()()),
    "stagingAvailabilityZone" => String.t()
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
    "hardwareId" => String.t(),
    "sourceServerIDs" => list(String.t()()),
    "stagingAccountIDs" => list(String.t()())
  }
  """
  @type describe_source_servers_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reverse_replication_response() :: %{
    optional("reversedDirectionSourceServerArn") => String.t()
  }
  """
  @type reverse_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  terminate_recovery_instances_request() :: %{
    required("recoveryInstanceIDs") => list(String.t()())
  }
  """
  @type terminate_recovery_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_replication_info_replicated_disk() :: %{
    "backloggedStorageBytes" => float(),
    "deviceName" => String.t(),
    "replicatedStorageBytes" => float(),
    "rescannedStorageBytes" => float(),
    "totalStorageBytes" => float(),
    "volumeStatus" => String.t()
  }
  """
  @type data_replication_info_replicated_disk() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disconnect_source_server_request() :: %{
    required("sourceServerID") => String.t()
  }
  """
  @type disconnect_source_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  initialize_service_response() :: %{

  }
  """
  @type initialize_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_actions_status() :: %{
    "runs" => list(launch_action_run()()),
    "ssmAgentDiscoveryDatetime" => String.t()
  }
  """
  @type launch_actions_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conversion_properties() :: %{
    "dataTimestamp" => String.t(),
    "forceUefi" => [boolean()],
    "rootVolumeName" => String.t(),
    "volumeToConversionMap" => map(),
    "volumeToProductCodes" => map(),
    "volumeToVolumeSize" => map()
  }
  """
  @type conversion_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  product_code() :: %{
    "productCodeId" => String.t(),
    "productCodeMode" => String.t()
  }
  """
  @type product_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  export_source_network_cfn_template_response() :: %{
    "s3DestinationUrl" => String.t()
  }
  """
  @type export_source_network_cfn_template_response() :: %{String.t() => any()}

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
  describe_launch_configuration_templates_response() :: %{
    optional("items") => list(launch_configuration_template()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_launch_configuration_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_launch_action_request() :: %{
    required("actionId") => String.t(),
    required("resourceId") => String.t()
  }
  """
  @type delete_launch_action_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_launch_configuration_request() :: %{
    required("sourceServerID") => String.t()
  }
  """
  @type get_launch_configuration_request() :: %{String.t() => any()}

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
  describe_source_networks_request_filters() :: %{
    "originAccountID" => String.t(),
    "originRegion" => String.t(),
    "sourceNetworkIDs" => list(String.t()())
  }
  """
  @type describe_source_networks_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_source_network_stack_request() :: %{
    required("cfnStackName") => String.t(),
    required("sourceNetworkID") => String.t()
  }
  """
  @type associate_source_network_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  participating_server() :: %{
    "launchActionsStatus" => launch_actions_status(),
    "launchStatus" => String.t(),
    "recoveryInstanceID" => String.t(),
    "sourceServerID" => String.t()
  }
  """
  @type participating_server() :: %{String.t() => any()}

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
  start_source_network_recovery_request() :: %{
    optional("deployAsNew") => [boolean()],
    optional("tags") => map(),
    required("sourceNetworks") => list(start_source_network_recovery_request_network_entry()())
  }
  """
  @type start_source_network_recovery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_source_network_replication_response() :: %{
    "sourceNetwork" => source_network()
  }
  """
  @type stop_source_network_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  staging_area() :: %{
    "errorMessage" => String.t(),
    "stagingAccountID" => String.t(),
    "stagingSourceServerArn" => String.t(),
    "status" => String.t()
  }
  """
  @type staging_area() :: %{String.t() => any()}

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
  recovery_instance_data_replication_initiation_step() :: %{
    "name" => String.t(),
    "status" => String.t()
  }
  """
  @type recovery_instance_data_replication_initiation_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_launch_initiated() :: %{
    "apiCallDateTime" => String.t(),
    "jobID" => String.t(),
    "type" => String.t()
  }
  """
  @type life_cycle_last_launch_initiated() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_launch_actions_response() :: %{
    "items" => list(launch_action()()),
    "nextToken" => String.t()
  }
  """
  @type list_launch_actions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_replication_response() :: %{
    optional("sourceServer") => source_server()
  }
  """
  @type stop_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_replication_response() :: %{
    optional("sourceServer") => source_server()
  }
  """
  @type start_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_job_request() :: %{
    required("jobID") => String.t()
  }
  """
  @type delete_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_source_network_replication_response() :: %{
    "sourceNetwork" => source_network()
  }
  """
  @type start_source_network_replication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_failback_replication_configuration_response() :: %{
    optional("bandwidthThrottling") => float(),
    optional("name") => String.t(),
    optional("usePrivateIP") => [boolean()],
    required("recoveryInstanceID") => String.t()
  }
  """
  @type get_failback_replication_configuration_response() :: %{String.t() => any()}

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
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("launchDisposition") => String.t(),
    optional("launchIntoInstanceProperties") => launch_into_instance_properties(),
    optional("licensing") => licensing(),
    optional("name") => String.t(),
    optional("postLaunchEnabled") => [boolean()],
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
    "participatingResources" => list(participating_resource()()),
    "participatingServers" => list(participating_server()()),
    "status" => String.t(),
    "tags" => map(),
    "type" => String.t()
  }
  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_failback_replication_configuration_request() :: %{
    required("recoveryInstanceID") => String.t()
  }
  """
  @type get_failback_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_instance() :: %{
    "agentVersion" => String.t(),
    "arn" => String.t(),
    "dataReplicationInfo" => recovery_instance_data_replication_info(),
    "ec2InstanceID" => String.t(),
    "ec2InstanceState" => String.t(),
    "failback" => recovery_instance_failback(),
    "isDrill" => [boolean()],
    "jobID" => String.t(),
    "originAvailabilityZone" => String.t(),
    "originEnvironment" => String.t(),
    "pointInTimeSnapshotDateTime" => String.t(),
    "recoveryInstanceID" => String.t(),
    "recoveryInstanceProperties" => recovery_instance_properties(),
    "sourceServerID" => String.t(),
    "tags" => map()
  }
  """
  @type recovery_instance() :: %{String.t() => any()}

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
  launch_into_instance_properties() :: %{
    "launchIntoEC2InstanceID" => String.t()
  }
  """
  @type launch_into_instance_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_failback_launch_request() :: %{
    optional("tags") => map(),
    required("recoveryInstanceIDs") => list(String.t()())
  }
  """
  @type start_failback_launch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_recovery_response() :: %{
    optional("job") => job()
  }
  """
  @type start_recovery_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_staging_accounts_request() :: %{
    optional("maxResults") => [integer()],
    optional("nextToken") => String.t()
  }
  """
  @type list_staging_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_log_event_data() :: %{
    "conversionProperties" => conversion_properties(),
    "conversionServerID" => String.t(),
    "eventResourceData" => list(),
    "rawError" => String.t(),
    "sourceServerID" => String.t(),
    "targetInstanceID" => String.t()
  }
  """
  @type job_log_event_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_jobs_request() :: %{
    optional("filters") => describe_jobs_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  launch_configuration() :: %{
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("ec2LaunchTemplateID") => String.t(),
    optional("launchDisposition") => String.t(),
    optional("launchIntoInstanceProperties") => launch_into_instance_properties(),
    optional("licensing") => licensing(),
    optional("name") => String.t(),
    optional("postLaunchEnabled") => [boolean()],
    optional("sourceServerID") => String.t(),
    optional("targetInstanceTypeRightSizingMethod") => String.t()
  }
  """
  @type launch_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_extensible_source_servers_response() :: %{
    optional("items") => list(staging_source_server()()),
    optional("nextToken") => String.t()
  }
  """
  @type list_extensible_source_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_snapshot() :: %{
    "ebsSnapshots" => list(String.t()()),
    "expectedTimestamp" => String.t(),
    "snapshotID" => String.t(),
    "sourceServerID" => String.t(),
    "timestamp" => String.t()
  }
  """
  @type recovery_snapshot() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_replication_configuration_request() :: %{
    optional("associateDefaultSecurityGroup") => [boolean()],
    optional("autoReplicateNewDisks") => [boolean()],
    optional("bandwidthThrottling") => float(),
    optional("createPublicIP") => [boolean()],
    optional("dataPlaneRouting") => String.t(),
    optional("defaultLargeStagingDiskType") => String.t(),
    optional("ebsEncryption") => String.t(),
    optional("ebsEncryptionKeyArn") => String.t(),
    optional("name") => String.t(),
    optional("pitPolicy") => list(p_i_t_policy_rule()()),
    optional("replicatedDisks") => list(replication_configuration_replicated_disk()()),
    optional("replicationServerInstanceType") => String.t(),
    optional("replicationServersSecurityGroupsIDs") => list(String.t()()),
    optional("stagingAreaSubnetId") => String.t(),
    optional("stagingAreaTags") => map(),
    optional("useDedicatedReplicationServer") => [boolean()],
    required("sourceServerID") => String.t()
  }
  """
  @type update_replication_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_network_data() :: %{
    "sourceNetworkID" => String.t(),
    "sourceVpc" => String.t(),
    "stackName" => String.t(),
    "targetVpc" => String.t()
  }
  """
  @type source_network_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_server() :: %{
    "agentVersion" => String.t(),
    "arn" => String.t(),
    "dataReplicationInfo" => data_replication_info(),
    "lastLaunchResult" => String.t(),
    "lifeCycle" => life_cycle(),
    "recoveryInstanceId" => String.t(),
    "replicationDirection" => String.t(),
    "reversedDirectionSourceServerArn" => String.t(),
    "sourceCloudProperties" => source_cloud_properties(),
    "sourceNetworkID" => String.t(),
    "sourceProperties" => source_properties(),
    "sourceServerID" => String.t(),
    "stagingArea" => staging_area(),
    "tags" => map()
  }
  """
  @type source_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_source_network_response() :: %{

  }
  """
  @type delete_source_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_source_network_replication_request() :: %{
    required("sourceNetworkID") => String.t()
  }
  """
  @type stop_source_network_replication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_source_network_recovery_response() :: %{
    "job" => job()
  }
  """
  @type start_source_network_recovery_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  life_cycle_last_launch() :: %{
    "initiated" => life_cycle_last_launch_initiated(),
    "status" => String.t()
  }
  """
  @type life_cycle_last_launch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_recovery_instances_request() :: %{
    optional("filters") => describe_recovery_instances_request_filters(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type describe_recovery_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_source_network_stack_response() :: %{
    "job" => job()
  }
  """
  @type associate_source_network_stack_response() :: %{String.t() => any()}

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
  create_extended_source_server_response() :: %{
    optional("sourceServer") => source_server()
  }
  """
  @type create_extended_source_server_response() :: %{String.t() => any()}

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
  recovery_instance_data_replication_error() :: %{
    "error" => String.t(),
    "rawError" => String.t()
  }
  """
  @type recovery_instance_data_replication_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_launch_configuration_template_request() :: %{
    optional("copyPrivateIp") => [boolean()],
    optional("copyTags") => [boolean()],
    optional("exportBucketArn") => String.t(),
    optional("launchDisposition") => String.t(),
    optional("launchIntoSourceInstance") => [boolean()],
    optional("licensing") => licensing(),
    optional("postLaunchEnabled") => [boolean()],
    optional("targetInstanceTypeRightSizingMethod") => String.t(),
    required("launchConfigurationTemplateID") => String.t()
  }
  """
  @type update_launch_configuration_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_launch_configuration_template_response() :: %{
    optional("launchConfigurationTemplate") => launch_configuration_template()
  }
  """
  @type create_launch_configuration_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_extended_source_server_request() :: %{
    optional("tags") => map(),
    required("sourceServerArn") => String.t()
  }
  """
  @type create_extended_source_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_recovery_snapshots_response() :: %{
    optional("items") => list(recovery_snapshot()()),
    optional("nextToken") => String.t()
  }
  """
  @type describe_recovery_snapshots_response() :: %{String.t() => any()}

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
  describe_recovery_snapshots_request_filters() :: %{
    "fromDateTime" => String.t(),
    "toDateTime" => String.t()
  }
  """
  @type describe_recovery_snapshots_request_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_source_network_response() :: %{
    "sourceNetworkID" => String.t()
  }
  """
  @type create_source_network_response() :: %{String.t() => any()}

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
      endpoint_prefix: "drs",
      global?: false,
      protocol: "rest-json",
      service_id: "drs",
      signature_version: "v4",
      signing_name: "drs",
      target_prefix: nil
    }
  end

  @doc """
  Associate a Source Network to an existing CloudFormation Stack and modify launch
  templates to use this network.

  Can be used for reverting to previously deployed CloudFormation stacks.
  """
  @spec associate_source_network_stack(map(), associate_source_network_stack_request(), list()) ::
          {:ok, associate_source_network_stack_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def associate_source_network_stack(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateSourceNetworkStack"
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
  Create an extended source server in the target Account based on the source
  server in staging account.
  """
  @spec create_extended_source_server(map(), create_extended_source_server_request(), list()) ::
          {:ok, create_extended_source_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def create_extended_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/CreateExtendedSourceServer"
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
          {:ok, create_launch_configuration_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
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
  Create a new Source Network resource for a provided VPC ID.
  """
  @spec create_source_network(map(), create_source_network_request(), list()) ::
          {:ok, create_source_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def create_source_network(%Client{} = client, input, options \\ []) do
    url_path = "/CreateSourceNetwork"
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
  Deletes a single Job by ID.
  """
  @spec delete_job(map(), delete_job_request(), list()) ::
          {:ok, delete_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Deletes a resource launch action.
  """
  @spec delete_launch_action(map(), delete_launch_action_request(), list()) ::
          {:ok, delete_launch_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def delete_launch_action(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLaunchAction"
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
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Deletes a single Recovery Instance by ID.

  This deletes the Recovery Instance resource from Elastic Disaster Recovery. The
  Recovery Instance must be disconnected first in order to delete it.
  """
  @spec delete_recovery_instance(map(), delete_recovery_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_recovery_instance(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteRecoveryInstance"
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
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Delete Source Network resource.
  """
  @spec delete_source_network(map(), delete_source_network_request(), list()) ::
          {:ok, delete_source_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def delete_source_network(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSourceNetwork"
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
  Deletes a single Source Server by ID.

  The Source Server must be disconnected first.
  """
  @spec delete_source_server(map(), delete_source_server_request(), list()) ::
          {:ok, delete_source_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Retrieves a detailed Job log with pagination.
  """
  @spec describe_job_log_items(map(), describe_job_log_items_request(), list()) ::
          {:ok, describe_job_log_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
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

  Use the JobsID and fromDate and toDate filters to limit which jobs are returned.
  The response is sorted by creationDataTime - latest date first. Jobs are created
  by the StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs.
  Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances,
  which are APIs available only to *Support* and only used in response to relevant
  support tickets.
  """
  @spec describe_jobs(map(), describe_jobs_request(), list()) ::
          {:ok, describe_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
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
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Lists all Recovery Instances or multiple Recovery Instances by ID.
  """
  @spec describe_recovery_instances(map(), describe_recovery_instances_request(), list()) ::
          {:ok, describe_recovery_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def describe_recovery_instances(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeRecoveryInstances"
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
  Lists all Recovery Snapshots for a single Source Server.
  """
  @spec describe_recovery_snapshots(map(), describe_recovery_snapshots_request(), list()) ::
          {:ok, describe_recovery_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def describe_recovery_snapshots(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeRecoverySnapshots"
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
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Lists all Source Networks or multiple Source Networks filtered by ID.
  """
  @spec describe_source_networks(map(), describe_source_networks_request(), list()) ::
          {:ok, describe_source_networks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def describe_source_networks(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSourceNetworks"
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
  Lists all Source Servers or multiple Source Servers filtered by ID.
  """
  @spec describe_source_servers(map(), describe_source_servers_request(), list()) ::
          {:ok, describe_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
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
  Disconnect a Recovery Instance from Elastic Disaster Recovery.

  Data replication is stopped immediately. All AWS resources created by Elastic
  Disaster Recovery for enabling the replication of the Recovery Instance will be
  terminated / deleted within 90 minutes. If the agent on the Recovery Instance
  has not been prevented from communicating with the Elastic Disaster Recovery
  service, then it will receive a command to uninstall itself (within
  approximately 10 minutes). The following properties of the Recovery Instance
  will be changed immediately: dataReplicationInfo.dataReplicationState will be
  set to DISCONNECTED; The totalStorageBytes property for each of
  dataReplicationInfo.replicatedDisks will be set to zero;
  dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be
  nullified.
  """
  @spec disconnect_recovery_instance(map(), disconnect_recovery_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def disconnect_recovery_instance(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectRecoveryInstance"
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
  Disconnects a specific Source Server from Elastic Disaster Recovery.

  Data replication is stopped immediately. All AWS resources created by Elastic
  Disaster Recovery for enabling the replication of the Source Server will be
  terminated / deleted within 90 minutes. You cannot disconnect a Source Server if
  it has a Recovery Instance. If the agent on the Source Server has not been
  prevented from communicating with the Elastic Disaster Recovery service, then it
  will receive a command to uninstall itself (within approximately 10 minutes).
  The following properties of the SourceServer will be changed immediately:
  dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
  totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will
  be set to zero; dataReplicationInfo.lagDuration and
  dataReplicationInfo.lagDuration will be nullified.
  """
  @spec disconnect_source_server(map(), disconnect_source_server_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def disconnect_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectSourceServer"
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
  Export the Source Network CloudFormation template to an S3 bucket.
  """
  @spec export_source_network_cfn_template(
          map(),
          export_source_network_cfn_template_request(),
          list()
        ) ::
          {:ok, export_source_network_cfn_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def export_source_network_cfn_template(%Client{} = client, input, options \\ []) do
    url_path = "/ExportSourceNetworkCfnTemplate"
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
  Lists all Failback ReplicationConfigurations, filtered by Recovery Instance ID.
  """
  @spec get_failback_replication_configuration(
          map(),
          get_failback_replication_configuration_request(),
          list()
        ) ::
          {:ok, get_failback_replication_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def get_failback_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetFailbackReplicationConfiguration"
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
  Gets a LaunchConfiguration, filtered by Source Server IDs.
  """
  @spec get_launch_configuration(map(), get_launch_configuration_request(), list()) ::
          {:ok, launch_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Gets a ReplicationConfiguration, filtered by Source Server ID.
  """
  @spec get_replication_configuration(map(), get_replication_configuration_request(), list()) ::
          {:ok, replication_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Initialize Elastic Disaster Recovery.
  """
  @spec initialize_service(map(), initialize_service_request(), list()) ::
          {:ok, initialize_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
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
  Returns a list of source servers on a staging account that are extensible, which
  means that:
  a.

  The source server is not already extended into this Account.
  b. The source server on the Account we’re reading from is not an extension of
  another source server.
  """
  @spec list_extensible_source_servers(map(), list_extensible_source_servers_request(), list()) ::
          {:ok, list_extensible_source_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def list_extensible_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/ListExtensibleSourceServers"
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
  Lists resource launch actions.
  """
  @spec list_launch_actions(map(), list_launch_actions_request(), list()) ::
          {:ok, list_launch_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def list_launch_actions(%Client{} = client, input, options \\ []) do
    url_path = "/ListLaunchActions"
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
  Returns an array of staging accounts for existing extended source servers.
  """
  @spec list_staging_accounts(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_staging_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def list_staging_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/ListStagingAccounts"
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
  List all tags for your Elastic Disaster Recovery resources.
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
  Puts a resource launch action.
  """
  @spec put_launch_action(map(), put_launch_action_request(), list()) ::
          {:ok, put_launch_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def put_launch_action(%Client{} = client, input, options \\ []) do
    url_path = "/PutLaunchAction"
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
  WARNING: RetryDataReplication is deprecated.

  Causes the data replication initiation sequence to begin immediately upon next
  Handshake for the specified Source Server ID, regardless of when the previous
  initiation started. This command will work only if the Source Server is stalled
  or is in a DISCONNECTED or STOPPED state.
  """
  @spec retry_data_replication(map(), retry_data_replication_request(), list()) ::
          {:ok, source_server(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Start replication to origin / target region - applies only to protected
  instances that originated in EC2.

  For recovery instances on target region - starts replication back to origin
  region.
  For failback instances on origin region - starts replication to target region to
  re-protect them.
  """
  @spec reverse_replication(map(), reverse_replication_request(), list()) ::
          {:ok, reverse_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def reverse_replication(%Client{} = client, input, options \\ []) do
    url_path = "/ReverseReplication"
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
  Initiates a Job for launching the machine that is being failed back to from the
  specified Recovery Instance.

  This will run conversion on the failback client and will reboot your machine,
  thus completing the failback process.
  """
  @spec start_failback_launch(map(), start_failback_launch_request(), list()) ::
          {:ok, start_failback_launch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def start_failback_launch(%Client{} = client, input, options \\ []) do
    url_path = "/StartFailbackLaunch"
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
  Launches Recovery Instances for the specified Source Servers.

  For each Source Server you may choose a point in time snapshot to launch from,
  or use an on demand snapshot.
  """
  @spec start_recovery(map(), start_recovery_request(), list()) ::
          {:ok, start_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def start_recovery(%Client{} = client, input, options \\ []) do
    url_path = "/StartRecovery"
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
  Starts replication for a stopped Source Server.

  This action would make the Source Server protected again and restart billing for
  it.
  """
  @spec start_replication(map(), start_replication_request(), list()) ::
          {:ok, start_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
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
  Deploy VPC for the specified Source Network and modify launch templates to use
  this network.

  The VPC will be deployed using a dedicated CloudFormation stack.
  """
  @spec start_source_network_recovery(map(), start_source_network_recovery_request(), list()) ::
          {:ok, start_source_network_recovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def start_source_network_recovery(%Client{} = client, input, options \\ []) do
    url_path = "/StartSourceNetworkRecovery"
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
  Starts replication for a Source Network.

  This action would make the Source Network protected.
  """
  @spec start_source_network_replication(
          map(),
          start_source_network_replication_request(),
          list()
        ) ::
          {:ok, start_source_network_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def start_source_network_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StartSourceNetworkReplication"
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
  Stops the failback process for a specified Recovery Instance.

  This changes the Failback State of the Recovery Instance back to
  FAILBACK_NOT_STARTED.
  """
  @spec stop_failback(map(), stop_failback_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def stop_failback(%Client{} = client, input, options \\ []) do
    url_path = "/StopFailback"
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
  Stops replication for a Source Server.

  This action would make the Source Server unprotected, delete its existing
  snapshots and stop billing for it.
  """
  @spec stop_replication(map(), stop_replication_request(), list()) ::
          {:ok, stop_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
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
  Stops replication for a Source Network.

  This action would make the Source Network unprotected.
  """
  @spec stop_source_network_replication(map(), stop_source_network_replication_request(), list()) ::
          {:ok, stop_source_network_replication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
          | {:error, validation_exception()}
  def stop_source_network_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StopSourceNetworkReplication"
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
  Adds or overwrites only the specified tags for the specified Elastic Disaster
  Recovery resource or resources.

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
  Initiates a Job for terminating the EC2 resources associated with the specified
  Recovery Instances, and then will delete the Recovery Instances from the Elastic
  Disaster Recovery service.
  """
  @spec terminate_recovery_instances(map(), terminate_recovery_instances_request(), list()) ::
          {:ok, terminate_recovery_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def terminate_recovery_instances(%Client{} = client, input, options \\ []) do
    url_path = "/TerminateRecoveryInstances"
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
  Deletes the specified set of tags from the specified set of Elastic Disaster
  Recovery resources.
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
  Allows you to update the failback replication configuration of a Recovery
  Instance by ID.
  """
  @spec update_failback_replication_configuration(
          map(),
          update_failback_replication_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, uninitialized_account_exception()}
  def update_failback_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateFailbackReplicationConfiguration"
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
  Updates a LaunchConfiguration by Source Server ID.
  """
  @spec update_launch_configuration(map(), update_launch_configuration_request(), list()) ::
          {:ok, launch_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          {:ok, update_launch_configuration_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Allows you to update a ReplicationConfiguration by Source Server ID.
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
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
  Updates a ReplicationConfigurationTemplate by ID.
  """
  @spec update_replication_configuration_template(
          map(),
          update_replication_configuration_template_request(),
          list()
        ) ::
          {:ok, replication_configuration_template(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
end
