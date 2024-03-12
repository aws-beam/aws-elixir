# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Finspace do
  @moduledoc """
  The FinSpace management service provides the APIs for managing FinSpace
  environments.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  get_kx_volume_response() :: %{
    "attachedClusters" => list(kx_attached_cluster()()),
    "availabilityZoneIds" => list(String.t()()),
    "azMode" => list(any()),
    "createdTimestamp" => non_neg_integer(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "nas1Configuration" => kx_n_a_s1_configuration(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "volumeArn" => String.t(),
    "volumeName" => String.t(),
    "volumeType" => list(any())
  }
  """
  @type get_kx_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_acl_entry() :: %{
    "cidrBlock" => String.t(),
    "icmpTypeCode" => icmp_type_code(),
    "portRange" => port_range(),
    "protocol" => String.t(),
    "ruleAction" => list(any()),
    "ruleNumber" => integer()
  }
  """
  @type network_acl_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_cluster_code_deployment_configuration() :: %{
    "deploymentStrategy" => list(any())
  }
  """
  @type kx_cluster_code_deployment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_cache_storage_configuration() :: %{
    "size" => integer(),
    "type" => String.t()
  }
  """
  @type kx_cache_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_environment_response() :: %{
    "environment" => environment()
  }
  """
  @type update_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_cluster_request() :: %{

  }
  """
  @type get_kx_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_dataview_response() :: %{

  }
  """
  @type delete_kx_dataview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_connection_string_response() :: %{
    "signedConnectionString" => String.t()
  }
  """
  @type get_kx_connection_string_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_environment_network_response() :: %{
    "availabilityZoneIds" => list(String.t()()),
    "awsAccountId" => String.t(),
    "creationTimestamp" => non_neg_integer(),
    "customDNSConfiguration" => list(custom_dns_server()()),
    "dedicatedServiceAccountId" => String.t(),
    "description" => String.t(),
    "dnsStatus" => list(any()),
    "environmentArn" => String.t(),
    "environmentId" => String.t(),
    "errorMessage" => String.t(),
    "kmsKeyId" => String.t(),
    "name" => String.t(),
    "status" => list(any()),
    "tgwStatus" => list(any()),
    "transitGatewayConfiguration" => transit_gateway_configuration(),
    "updateTimestamp" => non_neg_integer()
  }
  """
  @type update_kx_environment_network_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_user_response() :: %{
    "environmentId" => String.t(),
    "iamRole" => String.t(),
    "userArn" => String.t(),
    "userName" => String.t()
  }
  """
  @type create_kx_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_dataviews_response() :: %{
    "kxDataviews" => list(kx_dataview_list_entry()()),
    "nextToken" => String.t()
  }
  """
  @type list_kx_dataviews_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  code_configuration() :: %{
    "s3Bucket" => String.t(),
    "s3Key" => String.t(),
    "s3ObjectVersion" => String.t()
  }
  """
  @type code_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_environments_response() :: %{
    "environments" => list(kx_environment()()),
    "nextToken" => String.t()
  }
  """
  @type list_kx_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vpc_configuration() :: %{
    "ipAddressType" => list(any()),
    "securityGroupIds" => list(String.t()()),
    "subnetIds" => list(String.t()()),
    "vpcId" => String.t()
  }
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_volumes_response() :: %{
    "kxVolumeSummaries" => list(kx_volume()()),
    "nextToken" => String.t()
  }
  """
  @type list_kx_volumes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_cluster() :: %{
    "availabilityZoneId" => String.t(),
    "azMode" => list(any()),
    "clusterDescription" => String.t(),
    "clusterName" => String.t(),
    "clusterType" => list(any()),
    "createdTimestamp" => non_neg_integer(),
    "executionRole" => String.t(),
    "initializationScript" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "releaseLabel" => String.t(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "volumes" => list(volume()())
  }
  """
  @type kx_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_changeset_list_entry() :: %{
    "activeFromTimestamp" => non_neg_integer(),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "status" => list(any())
  }
  """
  @type kx_changeset_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_cluster_nodes_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_cluster_nodes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_connection_string_request() :: %{
    required("clusterName") => String.t(),
    required("userArn") => String.t()
  }
  """
  @type get_kx_connection_string_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_dataview_list_entry() :: %{
    "activeVersions" => list(kx_dataview_active_version()()),
    "autoUpdate" => boolean(),
    "availabilityZoneId" => String.t(),
    "azMode" => list(any()),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "databaseName" => String.t(),
    "dataviewName" => String.t(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "segmentConfigurations" => list(kx_dataview_segment_configuration()()),
    "status" => list(any()),
    "statusReason" => String.t()
  }
  """
  @type kx_dataview_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_database_request() :: %{
    optional("description") => String.t(),
    optional("tags") => map(),
    required("clientToken") => String.t(),
    required("databaseName") => String.t()
  }
  """
  @type create_kx_database_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_database_response() :: %{
    "createdTimestamp" => non_neg_integer(),
    "databaseArn" => String.t(),
    "databaseName" => String.t(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer()
  }
  """
  @type create_kx_database_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_user_request() :: %{

  }
  """
  @type get_kx_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_changeset_request() :: %{
    required("changeRequests") => list(change_request()()),
    required("clientToken") => String.t()
  }
  """
  @type create_kx_changeset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_volume_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("nas1Configuration") => kx_n_a_s1_configuration()
  }
  """
  @type update_kx_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_environment_request() :: %{

  }
  """
  @type get_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_volumes_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    optional("volumeType") => list(any())
  }
  """
  @type list_kx_volumes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_scaling_group_configuration() :: %{
    "cpu" => float(),
    "memoryLimit" => integer(),
    "memoryReservation" => integer(),
    "nodeCount" => integer(),
    "scalingGroupName" => String.t()
  }
  """
  @type kx_scaling_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_databases_response() :: %{
    "kxDatabases" => list(kx_database_list_entry()()),
    "nextToken" => String.t()
  }
  """
  @type list_kx_databases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_environments_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_scaling_group_response() :: %{
    "availabilityZoneId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "environmentId" => String.t(),
    "hostType" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "scalingGroupName" => String.t(),
    "status" => list(any())
  }
  """
  @type create_kx_scaling_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_database_response() :: %{

  }
  """
  @type delete_kx_database_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_scaling_groups_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_scaling_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_changeset_response() :: %{
    "changeRequests" => list(change_request()()),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "databaseName" => String.t(),
    "environmentId" => String.t(),
    "errorInfo" => error_info(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "status" => list(any())
  }
  """
  @type create_kx_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_user_response() :: %{

  }
  """
  @type delete_kx_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_volume() :: %{
    "availabilityZoneIds" => list(String.t()()),
    "azMode" => list(any()),
    "createdTimestamp" => non_neg_integer(),
    "description" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "volumeName" => String.t(),
    "volumeType" => list(any())
  }
  """
  @type kx_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tickerplant_log_configuration() :: %{
    "tickerplantLogVolumes" => list(String.t()())
  }
  """
  @type tickerplant_log_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_dataview_request() :: %{
    optional("changesetId") => String.t(),
    optional("description") => String.t(),
    optional("segmentConfigurations") => list(kx_dataview_segment_configuration()()),
    required("clientToken") => String.t()
  }
  """
  @type update_kx_dataview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_database_response() :: %{
    "databaseName" => String.t(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer()
  }
  """
  @type update_kx_database_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_user_request() :: %{
    optional("clientToken") => String.t(),
    optional("tags") => map(),
    required("iamRole") => String.t(),
    required("userName") => String.t()
  }
  """
  @type create_kx_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_users_response() :: %{
    "nextToken" => String.t(),
    "users" => list(kx_user()())
  }
  """
  @type list_kx_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_cluster_nodes_response() :: %{
    "nextToken" => String.t(),
    "nodes" => list(kx_node()())
  }
  """
  @type list_kx_cluster_nodes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  error_info() :: %{
    "errorMessage" => String.t(),
    "errorType" => list(any())
  }
  """
  @type error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_environment_response() :: %{
    "environment" => environment()
  }
  """
  @type get_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_environment_response() :: %{
    "availabilityZoneIds" => list(String.t()()),
    "awsAccountId" => String.t(),
    "certificateAuthorityArn" => String.t(),
    "creationTimestamp" => non_neg_integer(),
    "customDNSConfiguration" => list(custom_dns_server()()),
    "dedicatedServiceAccountId" => String.t(),
    "description" => String.t(),
    "dnsStatus" => list(any()),
    "environmentArn" => String.t(),
    "environmentId" => String.t(),
    "errorMessage" => String.t(),
    "kmsKeyId" => String.t(),
    "name" => String.t(),
    "status" => list(any()),
    "tgwStatus" => list(any()),
    "transitGatewayConfiguration" => transit_gateway_configuration(),
    "updateTimestamp" => non_neg_integer()
  }
  """
  @type get_kx_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_volume_request() :: %{

  }
  """
  @type get_kx_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_environment_request() :: %{
    optional("clientToken") => String.t()
  }
  """
  @type delete_kx_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_cluster_databases_response() :: %{

  }
  """
  @type update_kx_cluster_databases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_n_a_s1_configuration() :: %{
    "size" => integer(),
    "type" => list(any())
  }
  """
  @type kx_n_a_s1_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_database_cache_configuration() :: %{
    "cacheType" => String.t(),
    "dataviewName" => String.t(),
    "dbPaths" => list(String.t()())
  }
  """
  @type kx_database_cache_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_database_request() :: %{
    required("clientToken") => String.t()
  }
  """
  @type delete_kx_database_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_volume_response() :: %{

  }
  """
  @type delete_kx_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_scaling_group_response() :: %{
    "availabilityZoneId" => String.t(),
    "clusters" => list(String.t()()),
    "createdTimestamp" => non_neg_integer(),
    "hostType" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "scalingGroupArn" => String.t(),
    "scalingGroupName" => String.t(),
    "status" => list(any()),
    "statusReason" => String.t()
  }
  """
  @type get_kx_scaling_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_user_response() :: %{
    "environmentId" => String.t(),
    "iamRole" => String.t(),
    "userArn" => String.t(),
    "userName" => String.t()
  }
  """
  @type update_kx_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_cluster_request() :: %{
    optional("clientToken") => String.t()
  }
  """
  @type delete_kx_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  auto_scaling_configuration() :: %{
    "autoScalingMetric" => list(any()),
    "maxNodeCount" => integer(),
    "metricTarget" => float(),
    "minNodeCount" => integer(),
    "scaleInCooldownSeconds" => float(),
    "scaleOutCooldownSeconds" => float()
  }
  """
  @type auto_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_user() :: %{
    "createTimestamp" => non_neg_integer(),
    "iamRole" => String.t(),
    "updateTimestamp" => non_neg_integer(),
    "userArn" => String.t(),
    "userName" => String.t()
  }
  """
  @type kx_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_environment_request() :: %{

  }
  """
  @type get_kx_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_database_configuration() :: %{
    "cacheConfigurations" => list(kx_database_cache_configuration()()),
    "changesetId" => String.t(),
    "databaseName" => String.t(),
    "dataviewConfiguration" => kx_dataview_configuration(),
    "dataviewName" => String.t()
  }
  """
  @type kx_database_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_changeset_response() :: %{
    "activeFromTimestamp" => non_neg_integer(),
    "changeRequests" => list(change_request()()),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "databaseName" => String.t(),
    "environmentId" => String.t(),
    "errorInfo" => error_info(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "status" => list(any())
  }
  """
  @type get_kx_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_dataview_configuration() :: %{
    "changesetId" => String.t(),
    "dataviewName" => String.t(),
    "dataviewVersionId" => String.t(),
    "segmentConfigurations" => list(kx_dataview_segment_configuration()())
  }
  """
  @type kx_dataview_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => String.t(),
    "reason" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_database_request() :: %{

  }
  """
  @type get_kx_database_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_environment_response() :: %{

  }
  """
  @type delete_kx_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  superuser_parameters() :: %{
    "emailAddress" => String.t(),
    "firstName" => String.t(),
    "lastName" => String.t()
  }
  """
  @type superuser_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  icmp_type_code() :: %{
    "code" => integer(),
    "type" => integer()
  }
  """
  @type icmp_type_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  environment() :: %{
    "awsAccountId" => String.t(),
    "dedicatedServiceAccountId" => String.t(),
    "description" => String.t(),
    "environmentArn" => String.t(),
    "environmentId" => String.t(),
    "environmentUrl" => String.t(),
    "federationMode" => list(any()),
    "federationParameters" => federation_parameters(),
    "kmsKeyId" => String.t(),
    "name" => String.t(),
    "sageMakerStudioDomainUrl" => String.t(),
    "status" => list(any())
  }
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_volume_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("nas1Configuration") => kx_n_a_s1_configuration(),
    optional("tags") => map(),
    required("availabilityZoneIds") => list(String.t()()),
    required("azMode") => list(any()),
    required("volumeName") => String.t(),
    required("volumeType") => list(any())
  }
  """
  @type create_kx_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_environment() :: %{
    "availabilityZoneIds" => list(String.t()()),
    "awsAccountId" => String.t(),
    "certificateAuthorityArn" => String.t(),
    "creationTimestamp" => non_neg_integer(),
    "customDNSConfiguration" => list(custom_dns_server()()),
    "dedicatedServiceAccountId" => String.t(),
    "description" => String.t(),
    "dnsStatus" => list(any()),
    "environmentArn" => String.t(),
    "environmentId" => String.t(),
    "errorMessage" => String.t(),
    "kmsKeyId" => String.t(),
    "name" => String.t(),
    "status" => list(any()),
    "tgwStatus" => list(any()),
    "transitGatewayConfiguration" => transit_gateway_configuration(),
    "updateTimestamp" => non_neg_integer()
  }
  """
  @type kx_environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_environment_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("name") => String.t()
  }
  """
  @type update_kx_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_user_request() :: %{
    optional("clientToken") => String.t(),
    required("iamRole") => String.t()
  }
  """
  @type update_kx_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_users_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_scaling_group_request() :: %{

  }
  """
  @type get_kx_scaling_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_cluster_response() :: %{
    "autoScalingConfiguration" => auto_scaling_configuration(),
    "availabilityZoneId" => String.t(),
    "azMode" => list(any()),
    "cacheStorageConfigurations" => list(kx_cache_storage_configuration()()),
    "capacityConfiguration" => capacity_configuration(),
    "clusterDescription" => String.t(),
    "clusterName" => String.t(),
    "clusterType" => list(any()),
    "code" => code_configuration(),
    "commandLineArguments" => list(kx_command_line_argument()()),
    "createdTimestamp" => non_neg_integer(),
    "databases" => list(kx_database_configuration()()),
    "executionRole" => String.t(),
    "initializationScript" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "releaseLabel" => String.t(),
    "savedownStorageConfiguration" => kx_savedown_storage_configuration(),
    "scalingGroupConfiguration" => kx_scaling_group_configuration(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "tickerplantLogConfiguration" => tickerplant_log_configuration(),
    "volumes" => list(volume()()),
    "vpcConfiguration" => vpc_configuration()
  }
  """
  @type get_kx_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_dataview_request() :: %{
    optional("autoUpdate") => boolean(),
    optional("availabilityZoneId") => String.t(),
    optional("changesetId") => String.t(),
    optional("description") => String.t(),
    optional("segmentConfigurations") => list(kx_dataview_segment_configuration()()),
    optional("tags") => map(),
    required("azMode") => list(any()),
    required("clientToken") => String.t(),
    required("dataviewName") => String.t()
  }
  """
  @type create_kx_dataview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_scaling_group() :: %{
    "availabilityZoneId" => String.t(),
    "clusters" => list(String.t()()),
    "createdTimestamp" => non_neg_integer(),
    "hostType" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "scalingGroupName" => String.t(),
    "status" => list(any()),
    "statusReason" => String.t()
  }
  """
  @type kx_scaling_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_clusters_request() :: %{
    optional("clusterType") => list(any()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_command_line_argument() :: %{
    "key" => String.t(),
    "value" => String.t()
  }
  """
  @type kx_command_line_argument() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_environments_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_deployment_configuration() :: %{
    "deploymentStrategy" => list(any())
  }
  """
  @type kx_deployment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_database_list_entry() :: %{
    "createdTimestamp" => non_neg_integer(),
    "databaseName" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer()
  }
  """
  @type kx_database_list_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_clusters_response() :: %{
    "kxClusterSummaries" => list(kx_cluster()()),
    "nextToken" => String.t()
  }
  """
  @type list_kx_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_dataviews_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_dataviews_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_environment_response() :: %{
    "environmentArn" => String.t(),
    "environmentId" => String.t(),
    "environmentUrl" => String.t()
  }
  """
  @type create_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => String.t()
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_dataview_response() :: %{
    "autoUpdate" => boolean(),
    "availabilityZoneId" => String.t(),
    "azMode" => list(any()),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "databaseName" => String.t(),
    "dataviewName" => String.t(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "segmentConfigurations" => list(kx_dataview_segment_configuration()()),
    "status" => list(any())
  }
  """
  @type create_kx_dataview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_environment_request() :: %{

  }
  """
  @type delete_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  port_range() :: %{
    "from" => integer(),
    "to" => integer()
  }
  """
  @type port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_volume_response() :: %{
    "attachedClusters" => list(kx_attached_cluster()()),
    "availabilityZoneIds" => list(String.t()()),
    "azMode" => list(any()),
    "createdTimestamp" => non_neg_integer(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "nas1Configuration" => kx_n_a_s1_configuration(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "volumeArn" => String.t(),
    "volumeName" => String.t(),
    "volumeType" => list(any())
  }
  """
  @type update_kx_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_savedown_storage_configuration() :: %{
    "size" => integer(),
    "type" => list(any()),
    "volumeName" => String.t()
  }
  """
  @type kx_savedown_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_cluster_code_configuration_request() :: %{
    optional("clientToken") => String.t(),
    optional("commandLineArguments") => list(kx_command_line_argument()()),
    optional("deploymentConfiguration") => kx_cluster_code_deployment_configuration(),
    optional("initializationScript") => String.t(),
    required("code") => code_configuration()
  }
  """
  @type update_kx_cluster_code_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_scaling_group_request() :: %{
    optional("tags") => map(),
    required("availabilityZoneId") => String.t(),
    required("clientToken") => String.t(),
    required("hostType") => String.t(),
    required("scalingGroupName") => String.t()
  }
  """
  @type create_kx_scaling_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_cluster_code_configuration_response() :: %{

  }
  """
  @type update_kx_cluster_code_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_dataview_request() :: %{
    required("clientToken") => String.t()
  }
  """
  @type delete_kx_dataview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  volume() :: %{
    "volumeName" => String.t(),
    "volumeType" => list(any())
  }
  """
  @type volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  federation_parameters() :: %{
    "applicationCallBackURL" => String.t(),
    "attributeMap" => map(),
    "federationProviderName" => String.t(),
    "federationURN" => String.t(),
    "samlMetadataDocument" => String.t(),
    "samlMetadataURL" => String.t()
  }
  """
  @type federation_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_database_response() :: %{
    "createdTimestamp" => non_neg_integer(),
    "databaseArn" => String.t(),
    "databaseName" => String.t(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastCompletedChangesetId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "numBytes" => float(),
    "numChangesets" => integer(),
    "numFiles" => integer()
  }
  """
  @type get_kx_database_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_environment_request() :: %{
    optional("clientToken") => String.t(),
    optional("description") => String.t(),
    optional("tags") => map(),
    required("kmsKeyId") => String.t(),
    required("name") => String.t()
  }
  """
  @type create_kx_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_cluster_request() :: %{
    optional("autoScalingConfiguration") => auto_scaling_configuration(),
    optional("availabilityZoneId") => String.t(),
    optional("cacheStorageConfigurations") => list(kx_cache_storage_configuration()()),
    optional("capacityConfiguration") => capacity_configuration(),
    optional("clientToken") => String.t(),
    optional("clusterDescription") => String.t(),
    optional("code") => code_configuration(),
    optional("commandLineArguments") => list(kx_command_line_argument()()),
    optional("databases") => list(kx_database_configuration()()),
    optional("executionRole") => String.t(),
    optional("initializationScript") => String.t(),
    optional("savedownStorageConfiguration") => kx_savedown_storage_configuration(),
    optional("scalingGroupConfiguration") => kx_scaling_group_configuration(),
    optional("tags") => map(),
    optional("tickerplantLogConfiguration") => tickerplant_log_configuration(),
    required("azMode") => list(any()),
    required("clusterName") => String.t(),
    required("clusterType") => list(any()),
    required("releaseLabel") => String.t(),
    required("vpcConfiguration") => vpc_configuration()
  }
  """
  @type create_kx_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_attached_cluster() :: %{
    "clusterName" => String.t(),
    "clusterStatus" => list(any()),
    "clusterType" => list(any())
  }
  """
  @type kx_attached_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_dataview_request() :: %{

  }
  """
  @type get_kx_dataview_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "message" => String.t()
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
  get_kx_changeset_request() :: %{

  }
  """
  @type get_kx_changeset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_dataview_active_version() :: %{
    "attachedClusters" => list(String.t()()),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "segmentConfigurations" => list(kx_dataview_segment_configuration()()),
    "versionId" => String.t()
  }
  """
  @type kx_dataview_active_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_scaling_groups_response() :: %{
    "nextToken" => String.t(),
    "scalingGroups" => list(kx_scaling_group()())
  }
  """
  @type list_kx_scaling_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "message" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_dns_server() :: %{
    "customDNSServerIP" => String.t(),
    "customDNSServerName" => String.t()
  }
  """
  @type custom_dns_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_environments_response() :: %{
    "environments" => list(environment()()),
    "nextToken" => String.t()
  }
  """
  @type list_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_changesets_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_changesets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_user_response() :: %{
    "environmentId" => String.t(),
    "iamRole" => String.t(),
    "userArn" => String.t(),
    "userName" => String.t()
  }
  """
  @type get_kx_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_dataview_response() :: %{
    "activeVersions" => list(kx_dataview_active_version()()),
    "autoUpdate" => boolean(),
    "availabilityZoneId" => String.t(),
    "azMode" => list(any()),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "databaseName" => String.t(),
    "dataviewName" => String.t(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "segmentConfigurations" => list(kx_dataview_segment_configuration()()),
    "status" => list(any())
  }
  """
  @type update_kx_dataview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_cluster_databases_request() :: %{
    optional("clientToken") => String.t(),
    optional("deploymentConfiguration") => kx_deployment_configuration(),
    required("databases") => list(kx_database_configuration()())
  }
  """
  @type update_kx_cluster_databases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_kx_dataview_response() :: %{
    "activeVersions" => list(kx_dataview_active_version()()),
    "autoUpdate" => boolean(),
    "availabilityZoneId" => String.t(),
    "azMode" => list(any()),
    "changesetId" => String.t(),
    "createdTimestamp" => non_neg_integer(),
    "databaseName" => String.t(),
    "dataviewName" => String.t(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "segmentConfigurations" => list(kx_dataview_segment_configuration()()),
    "status" => list(any()),
    "statusReason" => String.t()
  }
  """
  @type get_kx_dataview_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_volume_request() :: %{
    optional("clientToken") => String.t()
  }
  """
  @type delete_kx_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_scaling_group_response() :: %{

  }
  """
  @type delete_kx_scaling_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_database_request() :: %{
    optional("description") => String.t(),
    required("clientToken") => String.t()
  }
  """
  @type update_kx_database_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  capacity_configuration() :: %{
    "nodeCount" => integer(),
    "nodeType" => String.t()
  }
  """
  @type capacity_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  change_request() :: %{
    "changeType" => list(any()),
    "dbPath" => String.t(),
    "s3Path" => String.t()
  }
  """
  @type change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_dataview_segment_configuration() :: %{
    "dbPaths" => list(String.t()()),
    "volumeName" => String.t()
  }
  """
  @type kx_dataview_segment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_already_exists_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_environment_request() :: %{
    optional("dataBundles") => list(String.t()()),
    optional("description") => String.t(),
    optional("federationMode") => list(any()),
    optional("federationParameters") => federation_parameters(),
    optional("kmsKeyId") => String.t(),
    optional("superuserParameters") => superuser_parameters(),
    optional("tags") => map(),
    required("name") => String.t()
  }
  """
  @type create_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_environment_response() :: %{
    "creationTimestamp" => non_neg_integer(),
    "description" => String.t(),
    "environmentArn" => String.t(),
    "environmentId" => String.t(),
    "kmsKeyId" => String.t(),
    "name" => String.t(),
    "status" => list(any())
  }
  """
  @type create_kx_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_scaling_group_request() :: %{
    optional("clientToken") => String.t()
  }
  """
  @type delete_kx_scaling_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_changesets_response() :: %{
    "kxChangesets" => list(kx_changeset_list_entry()()),
    "nextToken" => String.t()
  }
  """
  @type list_kx_changesets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_environment_network_request() :: %{
    optional("clientToken") => String.t(),
    optional("customDNSConfiguration") => list(custom_dns_server()()),
    optional("transitGatewayConfiguration") => transit_gateway_configuration()
  }
  """
  @type update_kx_environment_network_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_environment_request() :: %{
    optional("description") => String.t(),
    optional("federationMode") => list(any()),
    optional("federationParameters") => federation_parameters(),
    optional("name") => String.t()
  }
  """
  @type update_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_user_request() :: %{
    optional("clientToken") => String.t()
  }
  """
  @type delete_kx_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  transit_gateway_configuration() :: %{
    "attachmentNetworkAclConfiguration" => list(network_acl_entry()()),
    "routableCIDRSpace" => String.t(),
    "transitGatewayID" => String.t()
  }
  """
  @type transit_gateway_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_kx_cluster_response() :: %{

  }
  """
  @type delete_kx_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_volume_response() :: %{
    "availabilityZoneIds" => list(String.t()()),
    "azMode" => list(any()),
    "createdTimestamp" => non_neg_integer(),
    "description" => String.t(),
    "environmentId" => String.t(),
    "nas1Configuration" => kx_n_a_s1_configuration(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "volumeArn" => String.t(),
    "volumeName" => String.t(),
    "volumeType" => list(any())
  }
  """
  @type create_kx_volume_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kx_node() :: %{
    "availabilityZoneId" => String.t(),
    "launchTime" => non_neg_integer(),
    "nodeId" => String.t()
  }
  """
  @type kx_node() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_kx_environment_response() :: %{
    "availabilityZoneIds" => list(String.t()()),
    "awsAccountId" => String.t(),
    "creationTimestamp" => non_neg_integer(),
    "customDNSConfiguration" => list(custom_dns_server()()),
    "dedicatedServiceAccountId" => String.t(),
    "description" => String.t(),
    "dnsStatus" => list(any()),
    "environmentArn" => String.t(),
    "environmentId" => String.t(),
    "errorMessage" => String.t(),
    "kmsKeyId" => String.t(),
    "name" => String.t(),
    "status" => list(any()),
    "tgwStatus" => list(any()),
    "transitGatewayConfiguration" => transit_gateway_configuration(),
    "updateTimestamp" => non_neg_integer()
  }
  """
  @type update_kx_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_kx_databases_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_kx_databases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_environment_response() :: %{

  }
  """
  @type delete_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_kx_cluster_response() :: %{
    "autoScalingConfiguration" => auto_scaling_configuration(),
    "availabilityZoneId" => String.t(),
    "azMode" => list(any()),
    "cacheStorageConfigurations" => list(kx_cache_storage_configuration()()),
    "capacityConfiguration" => capacity_configuration(),
    "clusterDescription" => String.t(),
    "clusterName" => String.t(),
    "clusterType" => list(any()),
    "code" => code_configuration(),
    "commandLineArguments" => list(kx_command_line_argument()()),
    "createdTimestamp" => non_neg_integer(),
    "databases" => list(kx_database_configuration()()),
    "environmentId" => String.t(),
    "executionRole" => String.t(),
    "initializationScript" => String.t(),
    "lastModifiedTimestamp" => non_neg_integer(),
    "releaseLabel" => String.t(),
    "savedownStorageConfiguration" => kx_savedown_storage_configuration(),
    "scalingGroupConfiguration" => kx_scaling_group_configuration(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "tickerplantLogConfiguration" => tickerplant_log_configuration(),
    "volumes" => list(volume()()),
    "vpcConfiguration" => vpc_configuration()
  }
  """
  @type create_kx_cluster_response() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2021-03-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "finspace",
      global?: false,
      protocol: "rest-json",
      service_id: "finspace",
      signature_version: "v4",
      signing_name: "finspace",
      target_prefix: nil
    }
  end

  @doc """
  Create a new FinSpace environment.
  """
  @spec create_environment(map(), create_environment_request(), list()) ::
          {:ok, create_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environment"
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

  Creates a changeset for a kdb database.

  A changeset allows you to add and delete existing files by using an ordered list
  of change requests.
  """
  @spec create_kx_changeset(map(), String.t(), String.t(), create_kx_changeset_request(), list()) ::
          {:ok, create_kx_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_changeset(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/changesets"

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
  Creates a new kdb cluster.
  """
  @spec create_kx_cluster(map(), String.t(), create_kx_cluster_request(), list()) ::
          {:ok, create_kx_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_cluster(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters"
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
  Creates a new kdb database in the environment.
  """
  @spec create_kx_database(map(), String.t(), create_kx_database_request(), list()) ::
          {:ok, create_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_database(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases"
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

  Creates a snapshot of kdb database with tiered storage capabilities and a
  pre-warmed cache, ready for mounting on kdb clusters.

  Dataviews are only available for clusters running on a scaling group. They are
  not supported on dedicated clusters.
  """
  @spec create_kx_dataview(map(), String.t(), String.t(), create_kx_dataview_request(), list()) ::
          {:ok, create_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_dataview(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/dataviews"

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
  Creates a managed kdb environment for the account.
  """
  @spec create_kx_environment(map(), create_kx_environment_request(), list()) ::
          {:ok, create_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_environment(%Client{} = client, input, options \\ []) do
    url_path = "/kx/environments"
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
  Creates a new scaling group.
  """
  @spec create_kx_scaling_group(map(), String.t(), create_kx_scaling_group_request(), list()) ::
          {:ok, create_kx_scaling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_scaling_group(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/scalingGroups"
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
  Creates a user in FinSpace kdb environment with an associated IAM role.
  """
  @spec create_kx_user(map(), String.t(), create_kx_user_request(), list()) ::
          {:ok, create_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_user(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users"
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

  Creates a new volume with a specific amount of throughput and storage capacity.
  """
  @spec create_kx_volume(map(), String.t(), create_kx_volume_request(), list()) ::
          {:ok, create_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_kx_volume(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes"
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
  Delete an FinSpace environment.
  """
  @spec delete_environment(map(), String.t(), delete_environment_request(), list()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

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
  Deletes a kdb cluster.
  """
  @spec delete_kx_cluster(map(), String.t(), String.t(), delete_kx_cluster_request(), list()) ::
          {:ok, delete_kx_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_kx_cluster(%Client{} = client, cluster_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes the specified database and all of its associated data.

  This action is irreversible. You must copy any data out of the database before
  deleting it if the data is to be retained.
  """
  @spec delete_kx_database(map(), String.t(), String.t(), delete_kx_database_request(), list()) ::
          {:ok, delete_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_kx_database(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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

  Deletes the specified dataview.

  Before deleting a dataview, make sure that it is not in use by any cluster.
  """
  @spec delete_kx_dataview(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_kx_dataview_request(),
          list()
        ) ::
          {:ok, delete_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_kx_dataview(
        %Client{} = client,
        database_name,
        dataview_name,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/dataviews/#{AWS.Util.encode_uri(dataview_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes the kdb environment.

  This action is irreversible. Deleting a kdb environment will remove all the
  associated data and any services running in it.
  """
  @spec delete_kx_environment(map(), String.t(), delete_kx_environment_request(), list()) ::
          {:ok, delete_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_kx_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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

  Deletes the specified scaling group.

  This action is irreversible. You cannot delete a scaling group until all the
  clusters running on it have been deleted.
  """
  @spec delete_kx_scaling_group(
          map(),
          String.t(),
          String.t(),
          delete_kx_scaling_group_request(),
          list()
        ) ::
          {:ok, delete_kx_scaling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_kx_scaling_group(
        %Client{} = client,
        environment_id,
        scaling_group_name,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/scalingGroups/#{AWS.Util.encode_uri(scaling_group_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes a user in the specified kdb environment.
  """
  @spec delete_kx_user(map(), String.t(), String.t(), delete_kx_user_request(), list()) ::
          {:ok, delete_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_kx_user(%Client{} = client, environment_id, user_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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

  Deletes a volume.

  You can only delete a volume if it's not attached to a cluster or a dataview.
  When a volume is deleted, any data on the volume is lost. This action is
  irreversible.
  """
  @spec delete_kx_volume(map(), String.t(), String.t(), delete_kx_volume_request(), list()) ::
          {:ok, delete_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_kx_volume(%Client{} = client, environment_id, volume_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes/#{AWS.Util.encode_uri(volume_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Returns the FinSpace environment object.
  """
  @spec get_environment(map(), String.t(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a kdb changeset.
  """
  @spec get_kx_changeset(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_kx_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_changeset(
        %Client{} = client,
        changeset_id,
        database_name,
        environment_id,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/changesets/#{AWS.Util.encode_uri(changeset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a kdb cluster.
  """
  @spec get_kx_cluster(map(), String.t(), String.t(), list()) ::
          {:ok, get_kx_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_cluster(%Client{} = client, cluster_name, environment_id, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a connection string for a user to connect to a kdb cluster.

  You must call this API using the same role that you have defined while creating
  a user.
  """
  @spec get_kx_connection_string(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_kx_connection_string_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_connection_string(
        %Client{} = client,
        environment_id,
        cluster_name,
        user_arn,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/connectionString"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_arn) do
        [{"userArn", user_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(cluster_name) do
        [{"clusterName", cluster_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns database information for the specified environment ID.
  """
  @spec get_kx_database(map(), String.t(), String.t(), list()) ::
          {:ok, get_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_database(%Client{} = client, database_name, environment_id, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Retrieves details of the dataview.
  """
  @spec get_kx_dataview(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_dataview(
        %Client{} = client,
        database_name,
        dataview_name,
        environment_id,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/dataviews/#{AWS.Util.encode_uri(dataview_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all the information for the specified kdb environment.
  """
  @spec get_kx_environment(map(), String.t(), list()) ::
          {:ok, get_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_kx_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Retrieves details of a scaling group.
  """
  @spec get_kx_scaling_group(map(), String.t(), String.t(), list()) ::
          {:ok, get_kx_scaling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_scaling_group(%Client{} = client, environment_id, scaling_group_name, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/scalingGroups/#{AWS.Util.encode_uri(scaling_group_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified kdb user.
  """
  @spec get_kx_user(map(), String.t(), String.t(), list()) ::
          {:ok, get_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_user(%Client{} = client, environment_id, user_name, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Retrieves the information about the volume.
  """
  @spec get_kx_volume(map(), String.t(), String.t(), list()) ::
          {:ok, get_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_kx_volume(%Client{} = client, environment_id, volume_name, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes/#{AWS.Util.encode_uri(volume_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of all of your FinSpace environments.
  """
  @spec list_environments(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, validation_exception()}
  def list_environments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/environment"
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
  Returns a list of all the changesets for a database.
  """
  @spec list_kx_changesets(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_kx_changesets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_changesets(
        %Client{} = client,
        database_name,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/changesets"

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
  Lists all the nodes in a kdb cluster.
  """
  @spec list_kx_cluster_nodes(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_kx_cluster_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_cluster_nodes(
        %Client{} = client,
        cluster_name,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}/nodes"

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
  Returns a list of clusters.
  """
  @spec list_kx_clusters(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_kx_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_clusters(
        %Client{} = client,
        environment_id,
        cluster_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters"
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

    query_params =
      if !is_nil(cluster_type) do
        [{"clusterType", cluster_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all the databases in the kdb environment.
  """
  @spec list_kx_databases(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_kx_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_databases(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases"
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

  Returns a list of all the dataviews in the database.
  """
  @spec list_kx_dataviews(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_kx_dataviews_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_dataviews(
        %Client{} = client,
        database_name,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/dataviews"

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
  Returns a list of kdb environments created in an account.
  """
  @spec list_kx_environments(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_kx_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, validation_exception()}
  def list_kx_environments(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments"
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

  Returns a list of scaling groups in a kdb environment.
  """
  @spec list_kx_scaling_groups(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_kx_scaling_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_scaling_groups(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/scalingGroups"
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
  Lists all the users in a kdb environment.
  """
  @spec list_kx_users(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_kx_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_users(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users"
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

  Lists all the volumes in a kdb environment.
  """
  @spec list_kx_volumes(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_kx_volumes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_kx_volumes(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        volume_type \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(volume_type) do
        [{"volumeType", volume_type} | query_params]
      else
        query_params
      end

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
  A list of all tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds metadata tags to a FinSpace resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
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
  Removes metadata tags from a FinSpace resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
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
  Update your FinSpace environment.
  """
  @spec update_environment(map(), String.t(), update_environment_request(), list()) ::
          {:ok, update_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Allows you to update code configuration on a running cluster.

  By using this API you can update the code, the initialization script path, and
  the command line arguments for a specific cluster.
  The configuration that you want to update will override any existing
  configurations on the cluster.
  """
  @spec update_kx_cluster_code_configuration(
          map(),
          String.t(),
          String.t(),
          update_kx_cluster_code_configuration_request(),
          list()
        ) ::
          {:ok, update_kx_cluster_code_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_cluster_code_configuration(
        %Client{} = client,
        cluster_name,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}/configuration/code"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the databases mounted on a kdb cluster, which includes the `changesetId`
  and all the dbPaths to be cached.

  This API does not allow you to change a database name or add a database if you
  created a cluster without one.

  Using this API you can point a cluster to a different changeset and modify a
  list of partitions being cached.
  """
  @spec update_kx_cluster_databases(
          map(),
          String.t(),
          String.t(),
          update_kx_cluster_databases_request(),
          list()
        ) ::
          {:ok, update_kx_cluster_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_cluster_databases(
        %Client{} = client,
        cluster_name,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}/configuration/databases"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates information for the given kdb database.
  """
  @spec update_kx_database(map(), String.t(), String.t(), update_kx_database_request(), list()) ::
          {:ok, update_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_database(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Updates the specified dataview.

  The dataviews get automatically updated when any new changesets are ingested.
  Each update of the dataview creates a new version, including changeset details
  and cache configurations
  """
  @spec update_kx_dataview(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_kx_dataview_request(),
          list()
        ) ::
          {:ok, update_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_already_exists_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_dataview(
        %Client{} = client,
        database_name,
        dataview_name,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/dataviews/#{AWS.Util.encode_uri(dataview_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates information for the given kdb environment.
  """
  @spec update_kx_environment(map(), String.t(), update_kx_environment_request(), list()) ::
          {:ok, update_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates environment network to connect to your internal network by using a
  transit gateway.

  This API supports request to create a transit gateway attachment from FinSpace
  VPC to your transit gateway ID and create a custom Route-53 outbound resolvers.

  Once you send a request to update a network, you cannot change it again. Network
  update might require termination of any clusters that are running in the
  existing network.
  """
  @spec update_kx_environment_network(
          map(),
          String.t(),
          update_kx_environment_network_request(),
          list()
        ) ::
          {:ok, update_kx_environment_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_environment_network(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/network"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the user details.

  You can only update the IAM role associated with a user.
  """
  @spec update_kx_user(map(), String.t(), String.t(), update_kx_user_request(), list()) ::
          {:ok, update_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_user(%Client{} = client, environment_id, user_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Updates the throughput or capacity of a volume.

  During the update process, the filesystem
  might be unavailable for a few minutes. You can retry any operations after the
  update is complete.
  """
  @spec update_kx_volume(map(), String.t(), String.t(), update_kx_volume_request(), list()) ::
          {:ok, update_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_kx_volume(%Client{} = client, environment_id, volume_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes/#{AWS.Util.encode_uri(volume_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
