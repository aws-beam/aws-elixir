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
        "attachedClusters" => list(kx_attached_cluster()),
        "availabilityZoneIds" => list(String.t() | atom()),
        "azMode" => list(any()),
        "createdTimestamp" => non_neg_integer(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "nas1Configuration" => kx_n_a_s1_configuration(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "volumeArn" => String.t() | atom(),
        "volumeName" => String.t() | atom(),
        "volumeType" => list(any())
      }

  """
  @type get_kx_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_acl_entry() :: %{
        "cidrBlock" => String.t() | atom(),
        "icmpTypeCode" => icmp_type_code(),
        "portRange" => port_range(),
        "protocol" => String.t() | atom(),
        "ruleAction" => list(any()),
        "ruleNumber" => integer()
      }

  """
  @type network_acl_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_cluster_code_deployment_configuration() :: %{
        "deploymentStrategy" => list(any())
      }

  """
  @type kx_cluster_code_deployment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_cache_storage_configuration() :: %{
        "size" => integer(),
        "type" => String.t() | atom()
      }

  """
  @type kx_cache_storage_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_response() :: %{
        "environment" => environment()
      }

  """
  @type update_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_cluster_request() :: %{}

  """
  @type get_kx_cluster_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_dataview_response() :: %{}

  """
  @type delete_kx_dataview_response() :: %{}

  @typedoc """

  ## Example:

      get_kx_connection_string_response() :: %{
        "signedConnectionString" => String.t() | atom()
      }

  """
  @type get_kx_connection_string_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_environment_network_response() :: %{
        "availabilityZoneIds" => list(String.t() | atom()),
        "awsAccountId" => String.t() | atom(),
        "creationTimestamp" => non_neg_integer(),
        "customDNSConfiguration" => list(custom_dns_server()),
        "dedicatedServiceAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "dnsStatus" => list(any()),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "tgwStatus" => list(any()),
        "transitGatewayConfiguration" => transit_gateway_configuration(),
        "updateTimestamp" => non_neg_integer()
      }

  """
  @type update_kx_environment_network_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_user_response() :: %{
        "environmentId" => String.t() | atom(),
        "iamRole" => String.t() | atom(),
        "userArn" => String.t() | atom(),
        "userName" => String.t() | atom()
      }

  """
  @type create_kx_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_dataviews_response() :: %{
        "kxDataviews" => list(kx_dataview_list_entry()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_kx_dataviews_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_configuration() :: %{
        "s3Bucket" => String.t() | atom(),
        "s3Key" => String.t() | atom(),
        "s3ObjectVersion" => String.t() | atom()
      }

  """
  @type code_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_environments_response() :: %{
        "environments" => list(kx_environment()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_kx_environments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_configuration() :: %{
        "ipAddressType" => list(any()),
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom()),
        "vpcId" => String.t() | atom()
      }

  """
  @type vpc_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_volumes_response() :: %{
        "kxVolumeSummaries" => list(kx_volume()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_kx_volumes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_cluster() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "azMode" => list(any()),
        "clusterDescription" => String.t() | atom(),
        "clusterName" => String.t() | atom(),
        "clusterType" => list(any()),
        "createdTimestamp" => non_neg_integer(),
        "executionRole" => String.t() | atom(),
        "initializationScript" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "releaseLabel" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "volumes" => list(volume())
      }

  """
  @type kx_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_changeset_list_entry() :: %{
        "activeFromTimestamp" => non_neg_integer(),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type kx_changeset_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_kx_cluster_nodes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_cluster_nodes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_connection_string_request() :: %{
        required("clusterName") => String.t() | atom(),
        required("userArn") => String.t() | atom()
      }

  """
  @type get_kx_connection_string_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_dataview_list_entry() :: %{
        "activeVersions" => list(kx_dataview_active_version()),
        "autoUpdate" => boolean(),
        "availabilityZoneId" => String.t() | atom(),
        "azMode" => list(any()),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "databaseName" => String.t() | atom(),
        "dataviewName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "readWrite" => boolean(),
        "segmentConfigurations" => list(kx_dataview_segment_configuration()),
        "status" => list(any()),
        "statusReason" => String.t() | atom()
      }

  """
  @type kx_dataview_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_database_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("databaseName") => String.t() | atom()
      }

  """
  @type create_kx_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_database_response() :: %{
        "createdTimestamp" => non_neg_integer(),
        "databaseArn" => String.t() | atom(),
        "databaseName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer()
      }

  """
  @type create_kx_database_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_user_request() :: %{}

  """
  @type get_kx_user_request() :: %{}

  @typedoc """

  ## Example:

      create_kx_changeset_request() :: %{
        required("changeRequests") => list(change_request()),
        required("clientToken") => String.t() | atom()
      }

  """
  @type create_kx_changeset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_volume_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("nas1Configuration") => kx_n_a_s1_configuration()
      }

  """
  @type update_kx_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_request() :: %{}

  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:

      list_kx_volumes_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("volumeType") => list(any())
      }

  """
  @type list_kx_volumes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_scaling_group_configuration() :: %{
        "cpu" => float(),
        "memoryLimit" => integer(),
        "memoryReservation" => integer(),
        "nodeCount" => integer(),
        "scalingGroupName" => String.t() | atom()
      }

  """
  @type kx_scaling_group_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_databases_response() :: %{
        "kxDatabases" => list(kx_database_list_entry()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_kx_databases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_environments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_scaling_group_response() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "environmentId" => String.t() | atom(),
        "hostType" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "scalingGroupName" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_kx_scaling_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_database_response() :: %{}

  """
  @type delete_kx_database_response() :: %{}

  @typedoc """

  ## Example:

      list_kx_scaling_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_scaling_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_changeset_response() :: %{
        "changeRequests" => list(change_request()),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "databaseName" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "errorInfo" => error_info(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type create_kx_changeset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_user_response() :: %{}

  """
  @type delete_kx_user_response() :: %{}

  @typedoc """

  ## Example:

      kx_volume() :: %{
        "availabilityZoneIds" => list(String.t() | atom()),
        "azMode" => list(any()),
        "createdTimestamp" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "volumeName" => String.t() | atom(),
        "volumeType" => list(any())
      }

  """
  @type kx_volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tickerplant_log_configuration() :: %{
        "tickerplantLogVolumes" => list(String.t() | atom())
      }

  """
  @type tickerplant_log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_dataview_request() :: %{
        optional("changesetId") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("segmentConfigurations") => list(kx_dataview_segment_configuration()),
        required("clientToken") => String.t() | atom()
      }

  """
  @type update_kx_dataview_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_database_response() :: %{
        "databaseName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer()
      }

  """
  @type update_kx_database_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_user_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map(),
        required("iamRole") => String.t() | atom(),
        required("userName") => String.t() | atom()
      }

  """
  @type create_kx_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_users_response() :: %{
        "nextToken" => String.t() | atom(),
        "users" => list(kx_user())
      }

  """
  @type list_kx_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_cluster_nodes_response() :: %{
        "nextToken" => String.t() | atom(),
        "nodes" => list(kx_node())
      }

  """
  @type list_kx_cluster_nodes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_info() :: %{
        "errorMessage" => String.t() | atom(),
        "errorType" => list(any())
      }

  """
  @type error_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_environment_response() :: %{
        "environment" => environment()
      }

  """
  @type get_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_environment_response() :: %{
        "availabilityZoneIds" => list(String.t() | atom()),
        "awsAccountId" => String.t() | atom(),
        "certificateAuthorityArn" => String.t() | atom(),
        "creationTimestamp" => non_neg_integer(),
        "customDNSConfiguration" => list(custom_dns_server()),
        "dedicatedServiceAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "dnsStatus" => list(any()),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "tgwStatus" => list(any()),
        "transitGatewayConfiguration" => transit_gateway_configuration(),
        "updateTimestamp" => non_neg_integer()
      }

  """
  @type get_kx_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_volume_request() :: %{}

  """
  @type get_kx_volume_request() :: %{}

  @typedoc """

  ## Example:

      delete_kx_environment_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_kx_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_cluster_databases_response() :: %{}

  """
  @type update_kx_cluster_databases_response() :: %{}

  @typedoc """

  ## Example:

      kx_n_a_s1_configuration() :: %{
        "size" => integer(),
        "type" => list(any())
      }

  """
  @type kx_n_a_s1_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_database_cache_configuration() :: %{
        "cacheType" => String.t() | atom(),
        "dataviewName" => String.t() | atom(),
        "dbPaths" => list(String.t() | atom())
      }

  """
  @type kx_database_cache_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_database_request() :: %{
        required("clientToken") => String.t() | atom()
      }

  """
  @type delete_kx_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_volume_response() :: %{}

  """
  @type delete_kx_volume_response() :: %{}

  @typedoc """

  ## Example:

      get_kx_scaling_group_response() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "clusters" => list(String.t() | atom()),
        "createdTimestamp" => non_neg_integer(),
        "hostType" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "scalingGroupArn" => String.t() | atom(),
        "scalingGroupName" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom()
      }

  """
  @type get_kx_scaling_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_user_response() :: %{
        "environmentId" => String.t() | atom(),
        "iamRole" => String.t() | atom(),
        "userArn" => String.t() | atom(),
        "userName" => String.t() | atom()
      }

  """
  @type update_kx_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_cluster_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_kx_cluster_request() :: %{(String.t() | atom()) => any()}

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
  @type auto_scaling_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_user() :: %{
        "createTimestamp" => non_neg_integer(),
        "iamRole" => String.t() | atom(),
        "updateTimestamp" => non_neg_integer(),
        "userArn" => String.t() | atom(),
        "userName" => String.t() | atom()
      }

  """
  @type kx_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_environment_request() :: %{}

  """
  @type get_kx_environment_request() :: %{}

  @typedoc """

  ## Example:

      kx_database_configuration() :: %{
        "cacheConfigurations" => list(kx_database_cache_configuration()),
        "changesetId" => String.t() | atom(),
        "databaseName" => String.t() | atom(),
        "dataviewConfiguration" => kx_dataview_configuration(),
        "dataviewName" => String.t() | atom()
      }

  """
  @type kx_database_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_changeset_response() :: %{
        "activeFromTimestamp" => non_neg_integer(),
        "changeRequests" => list(change_request()),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "databaseName" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "errorInfo" => error_info(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type get_kx_changeset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_dataview_configuration() :: %{
        "changesetId" => String.t() | atom(),
        "dataviewName" => String.t() | atom(),
        "dataviewVersionId" => String.t() | atom(),
        "segmentConfigurations" => list(kx_dataview_segment_configuration())
      }

  """
  @type kx_dataview_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_database_request() :: %{}

  """
  @type get_kx_database_request() :: %{}

  @typedoc """

  ## Example:

      delete_kx_environment_response() :: %{}

  """
  @type delete_kx_environment_response() :: %{}

  @typedoc """

  ## Example:

      superuser_parameters() :: %{
        "emailAddress" => String.t() | atom(),
        "firstName" => String.t() | atom(),
        "lastName" => String.t() | atom()
      }

  """
  @type superuser_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      icmp_type_code() :: %{
        "code" => integer(),
        "type" => integer()
      }

  """
  @type icmp_type_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment() :: %{
        "awsAccountId" => String.t() | atom(),
        "dedicatedServiceAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "environmentUrl" => String.t() | atom(),
        "federationMode" => list(any()),
        "federationParameters" => federation_parameters(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "sageMakerStudioDomainUrl" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_volume_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("nas1Configuration") => kx_n_a_s1_configuration(),
        optional("tags") => map(),
        required("availabilityZoneIds") => list(String.t() | atom()),
        required("azMode") => list(any()),
        required("volumeName") => String.t() | atom(),
        required("volumeType") => list(any())
      }

  """
  @type create_kx_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_environment() :: %{
        "availabilityZoneIds" => list(String.t() | atom()),
        "awsAccountId" => String.t() | atom(),
        "certificateAuthorityArn" => String.t() | atom(),
        "creationTimestamp" => non_neg_integer(),
        "customDNSConfiguration" => list(custom_dns_server()),
        "dedicatedServiceAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "dnsStatus" => list(any()),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "tgwStatus" => list(any()),
        "transitGatewayConfiguration" => transit_gateway_configuration(),
        "updateTimestamp" => non_neg_integer()
      }

  """
  @type kx_environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_environment_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_kx_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_user_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("iamRole") => String.t() | atom()
      }

  """
  @type update_kx_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_users_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_scaling_group_request() :: %{}

  """
  @type get_kx_scaling_group_request() :: %{}

  @typedoc """

  ## Example:

      get_kx_cluster_response() :: %{
        "autoScalingConfiguration" => auto_scaling_configuration(),
        "availabilityZoneId" => String.t() | atom(),
        "azMode" => list(any()),
        "cacheStorageConfigurations" => list(kx_cache_storage_configuration()),
        "capacityConfiguration" => capacity_configuration(),
        "clusterDescription" => String.t() | atom(),
        "clusterName" => String.t() | atom(),
        "clusterType" => list(any()),
        "code" => code_configuration(),
        "commandLineArguments" => list(kx_command_line_argument()),
        "createdTimestamp" => non_neg_integer(),
        "databases" => list(kx_database_configuration()),
        "executionRole" => String.t() | atom(),
        "initializationScript" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "releaseLabel" => String.t() | atom(),
        "savedownStorageConfiguration" => kx_savedown_storage_configuration(),
        "scalingGroupConfiguration" => kx_scaling_group_configuration(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "tickerplantLogConfiguration" => tickerplant_log_configuration(),
        "volumes" => list(volume()),
        "vpcConfiguration" => vpc_configuration()
      }

  """
  @type get_kx_cluster_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_dataview_request() :: %{
        optional("autoUpdate") => boolean(),
        optional("availabilityZoneId") => String.t() | atom(),
        optional("changesetId") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("readWrite") => boolean(),
        optional("segmentConfigurations") => list(kx_dataview_segment_configuration()),
        optional("tags") => map(),
        required("azMode") => list(any()),
        required("clientToken") => String.t() | atom(),
        required("dataviewName") => String.t() | atom()
      }

  """
  @type create_kx_dataview_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_scaling_group() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "clusters" => list(String.t() | atom()),
        "createdTimestamp" => non_neg_integer(),
        "hostType" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "scalingGroupName" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => String.t() | atom()
      }

  """
  @type kx_scaling_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_clusters_request() :: %{
        optional("clusterType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_clusters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_command_line_argument() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type kx_command_line_argument() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_environments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_deployment_configuration() :: %{
        "deploymentStrategy" => list(any())
      }

  """
  @type kx_deployment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_database_list_entry() :: %{
        "createdTimestamp" => non_neg_integer(),
        "databaseName" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer()
      }

  """
  @type kx_database_list_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_clusters_response() :: %{
        "kxClusterSummaries" => list(kx_cluster()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_kx_clusters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_dataviews_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_dataviews_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_response() :: %{
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "environmentUrl" => String.t() | atom()
      }

  """
  @type create_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_cluster_node_response() :: %{}

  """
  @type delete_kx_cluster_node_response() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_dataview_response() :: %{
        "autoUpdate" => boolean(),
        "availabilityZoneId" => String.t() | atom(),
        "azMode" => list(any()),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "databaseName" => String.t() | atom(),
        "dataviewName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "readWrite" => boolean(),
        "segmentConfigurations" => list(kx_dataview_segment_configuration()),
        "status" => list(any())
      }

  """
  @type create_kx_dataview_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_request() :: %{}

  """
  @type delete_environment_request() :: %{}

  @typedoc """

  ## Example:

      port_range() :: %{
        "from" => integer(),
        "to" => integer()
      }

  """
  @type port_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_volume_response() :: %{
        "attachedClusters" => list(kx_attached_cluster()),
        "availabilityZoneIds" => list(String.t() | atom()),
        "azMode" => list(any()),
        "createdTimestamp" => non_neg_integer(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "nas1Configuration" => kx_n_a_s1_configuration(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "volumeArn" => String.t() | atom(),
        "volumeName" => String.t() | atom(),
        "volumeType" => list(any())
      }

  """
  @type update_kx_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_savedown_storage_configuration() :: %{
        "size" => integer(),
        "type" => list(any()),
        "volumeName" => String.t() | atom()
      }

  """
  @type kx_savedown_storage_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_cluster_code_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("commandLineArguments") => list(kx_command_line_argument()),
        optional("deploymentConfiguration") => kx_cluster_code_deployment_configuration(),
        optional("initializationScript") => String.t() | atom(),
        required("code") => code_configuration()
      }

  """
  @type update_kx_cluster_code_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_scaling_group_request() :: %{
        optional("tags") => map(),
        required("availabilityZoneId") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("hostType") => String.t() | atom(),
        required("scalingGroupName") => String.t() | atom()
      }

  """
  @type create_kx_scaling_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_cluster_code_configuration_response() :: %{}

  """
  @type update_kx_cluster_code_configuration_response() :: %{}

  @typedoc """

  ## Example:

      delete_kx_dataview_request() :: %{
        required("clientToken") => String.t() | atom()
      }

  """
  @type delete_kx_dataview_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      volume() :: %{
        "volumeName" => String.t() | atom(),
        "volumeType" => list(any())
      }

  """
  @type volume() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      federation_parameters() :: %{
        "applicationCallBackURL" => String.t() | atom(),
        "attributeMap" => map(),
        "federationProviderName" => String.t() | atom(),
        "federationURN" => String.t() | atom(),
        "samlMetadataDocument" => String.t() | atom(),
        "samlMetadataURL" => String.t() | atom()
      }

  """
  @type federation_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_kx_database_response() :: %{
        "createdTimestamp" => non_neg_integer(),
        "databaseArn" => String.t() | atom(),
        "databaseName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastCompletedChangesetId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "numBytes" => float(),
        "numChangesets" => integer(),
        "numFiles" => integer()
      }

  """
  @type get_kx_database_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_environment_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("kmsKeyId") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_kx_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_cluster_request() :: %{
        optional("autoScalingConfiguration") => auto_scaling_configuration(),
        optional("availabilityZoneId") => String.t() | atom(),
        optional("cacheStorageConfigurations") => list(kx_cache_storage_configuration()),
        optional("capacityConfiguration") => capacity_configuration(),
        optional("clientToken") => String.t() | atom(),
        optional("clusterDescription") => String.t() | atom(),
        optional("code") => code_configuration(),
        optional("commandLineArguments") => list(kx_command_line_argument()),
        optional("databases") => list(kx_database_configuration()),
        optional("executionRole") => String.t() | atom(),
        optional("initializationScript") => String.t() | atom(),
        optional("savedownStorageConfiguration") => kx_savedown_storage_configuration(),
        optional("scalingGroupConfiguration") => kx_scaling_group_configuration(),
        optional("tags") => map(),
        optional("tickerplantLogConfiguration") => tickerplant_log_configuration(),
        required("azMode") => list(any()),
        required("clusterName") => String.t() | atom(),
        required("clusterType") => list(any()),
        required("releaseLabel") => String.t() | atom(),
        required("vpcConfiguration") => vpc_configuration()
      }

  """
  @type create_kx_cluster_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_attached_cluster() :: %{
        "clusterName" => String.t() | atom(),
        "clusterStatus" => list(any()),
        "clusterType" => list(any())
      }

  """
  @type kx_attached_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_dataview_request() :: %{}

  """
  @type get_kx_dataview_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
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

      get_kx_changeset_request() :: %{}

  """
  @type get_kx_changeset_request() :: %{}

  @typedoc """

  ## Example:

      kx_dataview_active_version() :: %{
        "attachedClusters" => list(String.t() | atom()),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "segmentConfigurations" => list(kx_dataview_segment_configuration()),
        "versionId" => String.t() | atom()
      }

  """
  @type kx_dataview_active_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_scaling_groups_response() :: %{
        "nextToken" => String.t() | atom(),
        "scalingGroups" => list(kx_scaling_group())
      }

  """
  @type list_kx_scaling_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_dns_server() :: %{
        "customDNSServerIP" => String.t() | atom(),
        "customDNSServerName" => String.t() | atom()
      }

  """
  @type custom_dns_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_environments_response() :: %{
        "environments" => list(environment()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_environments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_changesets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_changesets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_user_response() :: %{
        "environmentId" => String.t() | atom(),
        "iamRole" => String.t() | atom(),
        "userArn" => String.t() | atom(),
        "userName" => String.t() | atom()
      }

  """
  @type get_kx_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_dataview_response() :: %{
        "activeVersions" => list(kx_dataview_active_version()),
        "autoUpdate" => boolean(),
        "availabilityZoneId" => String.t() | atom(),
        "azMode" => list(any()),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "databaseName" => String.t() | atom(),
        "dataviewName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "readWrite" => boolean(),
        "segmentConfigurations" => list(kx_dataview_segment_configuration()),
        "status" => list(any())
      }

  """
  @type update_kx_dataview_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_cluster_databases_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("deploymentConfiguration") => kx_deployment_configuration(),
        required("databases") => list(kx_database_configuration())
      }

  """
  @type update_kx_cluster_databases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_kx_dataview_response() :: %{
        "activeVersions" => list(kx_dataview_active_version()),
        "autoUpdate" => boolean(),
        "availabilityZoneId" => String.t() | atom(),
        "azMode" => list(any()),
        "changesetId" => String.t() | atom(),
        "createdTimestamp" => non_neg_integer(),
        "databaseName" => String.t() | atom(),
        "dataviewName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "readWrite" => boolean(),
        "segmentConfigurations" => list(kx_dataview_segment_configuration()),
        "status" => list(any()),
        "statusReason" => String.t() | atom()
      }

  """
  @type get_kx_dataview_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_volume_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_kx_volume_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_scaling_group_response() :: %{}

  """
  @type delete_kx_scaling_group_response() :: %{}

  @typedoc """

  ## Example:

      delete_kx_cluster_node_request() :: %{}

  """
  @type delete_kx_cluster_node_request() :: %{}

  @typedoc """

  ## Example:

      update_kx_database_request() :: %{
        optional("description") => String.t() | atom(),
        required("clientToken") => String.t() | atom()
      }

  """
  @type update_kx_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_configuration() :: %{
        "nodeCount" => integer(),
        "nodeType" => String.t() | atom()
      }

  """
  @type capacity_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_request() :: %{
        "changeType" => list(any()),
        "dbPath" => String.t() | atom(),
        "s3Path" => String.t() | atom()
      }

  """
  @type change_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_dataview_segment_configuration() :: %{
        "dbPaths" => list(String.t() | atom()),
        "onDemand" => boolean(),
        "volumeName" => String.t() | atom()
      }

  """
  @type kx_dataview_segment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_environment_request() :: %{
        optional("dataBundles") => list(String.t() | atom()),
        optional("description") => String.t() | atom(),
        optional("federationMode") => list(any()),
        optional("federationParameters") => federation_parameters(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("superuserParameters") => superuser_parameters(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_kx_environment_response() :: %{
        "creationTimestamp" => non_neg_integer(),
        "description" => String.t() | atom(),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_kx_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_scaling_group_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_kx_scaling_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_changesets_response() :: %{
        "kxChangesets" => list(kx_changeset_list_entry()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_kx_changesets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_environment_network_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("customDNSConfiguration") => list(custom_dns_server()),
        optional("transitGatewayConfiguration") => transit_gateway_configuration()
      }

  """
  @type update_kx_environment_network_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_environment_request() :: %{
        optional("description") => String.t() | atom(),
        optional("federationMode") => list(any()),
        optional("federationParameters") => federation_parameters(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_environment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_user_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_kx_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transit_gateway_configuration() :: %{
        "attachmentNetworkAclConfiguration" => list(network_acl_entry()),
        "routableCIDRSpace" => String.t() | atom(),
        "transitGatewayID" => String.t() | atom()
      }

  """
  @type transit_gateway_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_kx_cluster_response() :: %{}

  """
  @type delete_kx_cluster_response() :: %{}

  @typedoc """

  ## Example:

      create_kx_volume_response() :: %{
        "availabilityZoneIds" => list(String.t() | atom()),
        "azMode" => list(any()),
        "createdTimestamp" => non_neg_integer(),
        "description" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "nas1Configuration" => kx_n_a_s1_configuration(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "volumeArn" => String.t() | atom(),
        "volumeName" => String.t() | atom(),
        "volumeType" => list(any())
      }

  """
  @type create_kx_volume_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kx_node() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "launchTime" => non_neg_integer(),
        "nodeId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type kx_node() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_kx_environment_response() :: %{
        "availabilityZoneIds" => list(String.t() | atom()),
        "awsAccountId" => String.t() | atom(),
        "creationTimestamp" => non_neg_integer(),
        "customDNSConfiguration" => list(custom_dns_server()),
        "dedicatedServiceAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "dnsStatus" => list(any()),
        "environmentArn" => String.t() | atom(),
        "environmentId" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "tgwStatus" => list(any()),
        "transitGatewayConfiguration" => transit_gateway_configuration(),
        "updateTimestamp" => non_neg_integer()
      }

  """
  @type update_kx_environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_kx_databases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_kx_databases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_environment_response() :: %{}

  """
  @type delete_environment_response() :: %{}

  @typedoc """

  ## Example:

      create_kx_cluster_response() :: %{
        "autoScalingConfiguration" => auto_scaling_configuration(),
        "availabilityZoneId" => String.t() | atom(),
        "azMode" => list(any()),
        "cacheStorageConfigurations" => list(kx_cache_storage_configuration()),
        "capacityConfiguration" => capacity_configuration(),
        "clusterDescription" => String.t() | atom(),
        "clusterName" => String.t() | atom(),
        "clusterType" => list(any()),
        "code" => code_configuration(),
        "commandLineArguments" => list(kx_command_line_argument()),
        "createdTimestamp" => non_neg_integer(),
        "databases" => list(kx_database_configuration()),
        "environmentId" => String.t() | atom(),
        "executionRole" => String.t() | atom(),
        "initializationScript" => String.t() | atom(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "releaseLabel" => String.t() | atom(),
        "savedownStorageConfiguration" => kx_savedown_storage_configuration(),
        "scalingGroupConfiguration" => kx_scaling_group_configuration(),
        "status" => list(any()),
        "statusReason" => String.t() | atom(),
        "tickerplantLogConfiguration" => tickerplant_log_configuration(),
        "volumes" => list(volume()),
        "vpcConfiguration" => vpc_configuration()
      }

  """
  @type create_kx_cluster_response() :: %{(String.t() | atom()) => any()}

  @type create_environment_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_kx_changeset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_kx_cluster_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_kx_database_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_kx_dataview_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_kx_environment_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_kx_scaling_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_kx_user_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_kx_volume_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_kx_cluster_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_kx_cluster_node_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_kx_database_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_kx_dataview_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_kx_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_kx_scaling_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_kx_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_kx_volume_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_environment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_kx_changeset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_kx_cluster_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_kx_connection_string_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_kx_database_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_kx_dataview_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_kx_environment_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_kx_scaling_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_kx_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_kx_volume_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_environments_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_kx_changesets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_kx_cluster_nodes_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_kx_clusters_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_kx_databases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_kx_dataviews_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_kx_environments_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_kx_scaling_groups_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_kx_users_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_kx_volumes_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_kx_cluster_code_configuration_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_kx_cluster_databases_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_kx_database_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_kx_dataview_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_kx_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_kx_environment_network_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_kx_user_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_kx_volume_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-03-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "finspace",
      global?: false,
      hostname: nil,
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
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environment"
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

  Creates a changeset for a kdb database.

  A changeset allows you to add and delete existing files by using an ordered list
  of change requests.
  """
  @spec create_kx_changeset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_kx_changeset_request(),
          list()
        ) ::
          {:ok, create_kx_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_changeset_errors()}
  def create_kx_changeset(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/changesets"

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
  Creates a new kdb cluster.
  """
  @spec create_kx_cluster(map(), String.t() | atom(), create_kx_cluster_request(), list()) ::
          {:ok, create_kx_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_cluster_errors()}
  def create_kx_cluster(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters"
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
  Creates a new kdb database in the environment.
  """
  @spec create_kx_database(map(), String.t() | atom(), create_kx_database_request(), list()) ::
          {:ok, create_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_database_errors()}
  def create_kx_database(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases"
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

  Creates a snapshot of kdb database with tiered storage capabilities and a
  pre-warmed cache, ready for mounting on kdb clusters.

  Dataviews are only available for clusters running on a scaling group. They are
  not supported on dedicated clusters.
  """
  @spec create_kx_dataview(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_kx_dataview_request(),
          list()
        ) ::
          {:ok, create_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_dataview_errors()}
  def create_kx_dataview(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/dataviews"

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
  Creates a managed kdb environment for the account.
  """
  @spec create_kx_environment(map(), create_kx_environment_request(), list()) ::
          {:ok, create_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_environment_errors()}
  def create_kx_environment(%Client{} = client, input, options \\ []) do
    url_path = "/kx/environments"
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
  Creates a new scaling group.
  """
  @spec create_kx_scaling_group(
          map(),
          String.t() | atom(),
          create_kx_scaling_group_request(),
          list()
        ) ::
          {:ok, create_kx_scaling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_scaling_group_errors()}
  def create_kx_scaling_group(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/scalingGroups"
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
  Creates a user in FinSpace kdb environment with an associated IAM role.
  """
  @spec create_kx_user(map(), String.t() | atom(), create_kx_user_request(), list()) ::
          {:ok, create_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_user_errors()}
  def create_kx_user(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users"
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

  Creates a new volume with a specific amount of throughput and storage capacity.
  """
  @spec create_kx_volume(map(), String.t() | atom(), create_kx_volume_request(), list()) ::
          {:ok, create_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_kx_volume_errors()}
  def create_kx_volume(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes"
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
  Delete an FinSpace environment.
  """
  @spec delete_environment(map(), String.t() | atom(), delete_environment_request(), list()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    custom_headers = []
    query_params = []

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
  Deletes a kdb cluster.
  """
  @spec delete_kx_cluster(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_kx_cluster_request(),
          list()
        ) ::
          {:ok, delete_kx_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_cluster_errors()}
  def delete_kx_cluster(%Client{} = client, cluster_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified nodes from a cluster.
  """
  @spec delete_kx_cluster_node(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_kx_cluster_node_request(),
          list()
        ) ::
          {:ok, delete_kx_cluster_node_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_cluster_node_errors()}
  def delete_kx_cluster_node(
        %Client{} = client,
        cluster_name,
        environment_id,
        node_id,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}/nodes/#{AWS.Util.encode_uri(node_id)}"

    headers = []
    custom_headers = []
    query_params = []

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
  Deletes the specified database and all of its associated data.

  This action is irreversible. You must copy any data out of the database before
  deleting it if the data is to be retained.
  """
  @spec delete_kx_database(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_kx_database_request(),
          list()
        ) ::
          {:ok, delete_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_database_errors()}
  def delete_kx_database(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_kx_dataview_request(),
          list()
        ) ::
          {:ok, delete_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_dataview_errors()}
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
    custom_headers = []

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
      custom_headers ++ headers,
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
  @spec delete_kx_environment(map(), String.t() | atom(), delete_kx_environment_request(), list()) ::
          {:ok, delete_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_environment_errors()}
  def delete_kx_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          delete_kx_scaling_group_request(),
          list()
        ) ::
          {:ok, delete_kx_scaling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_scaling_group_errors()}
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
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a user in the specified kdb environment.
  """
  @spec delete_kx_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_kx_user_request(),
          list()
        ) ::
          {:ok, delete_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_user_errors()}
  def delete_kx_user(%Client{} = client, environment_id, user_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
  @spec delete_kx_volume(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_kx_volume_request(),
          list()
        ) ::
          {:ok, delete_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_kx_volume_errors()}
  def delete_kx_volume(%Client{} = client, environment_id, volume_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes/#{AWS.Util.encode_uri(volume_name)}"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the FinSpace environment object.
  """
  @spec get_environment(map(), String.t() | atom(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
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
  @spec get_kx_changeset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_kx_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_changeset_errors()}
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
  @spec get_kx_cluster(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_kx_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_cluster_errors()}
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
  @spec get_kx_connection_string(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_kx_connection_string_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_connection_string_errors()}
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
  @spec get_kx_database(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_database_errors()}
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
  @spec get_kx_dataview(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_dataview_errors()}
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
  @spec get_kx_environment(map(), String.t() | atom(), list()) ::
          {:ok, get_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_environment_errors()}
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
  @spec get_kx_scaling_group(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_kx_scaling_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_scaling_group_errors()}
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
  @spec get_kx_user(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_user_errors()}
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
  @spec get_kx_volume(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_kx_volume_errors()}
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
  @spec list_environments(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_changesets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_changesets_errors()}
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_cluster_nodes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_cluster_nodes_errors()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_clusters_errors()}
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
  @spec list_kx_databases(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_databases_errors()}
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
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_dataviews_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_dataviews_errors()}
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
  @spec list_kx_environments(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_kx_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_environments_errors()}
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
  @spec list_kx_scaling_groups(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_scaling_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_scaling_groups_errors()}
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
  @spec list_kx_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_users_errors()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_kx_volumes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_kx_volumes_errors()}
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
  Adds metadata tags to a FinSpace resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
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
  Removes metadata tags from a FinSpace resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
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
  Update your FinSpace environment.
  """
  @spec update_environment(map(), String.t() | atom(), update_environment_request(), list()) ::
          {:ok, update_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
          String.t() | atom(),
          String.t() | atom(),
          update_kx_cluster_code_configuration_request(),
          list()
        ) ::
          {:ok, update_kx_cluster_code_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_cluster_code_configuration_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
          String.t() | atom(),
          String.t() | atom(),
          update_kx_cluster_databases_request(),
          list()
        ) ::
          {:ok, update_kx_cluster_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_cluster_databases_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates information for the given kdb database.
  """
  @spec update_kx_database(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_kx_database_request(),
          list()
        ) ::
          {:ok, update_kx_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_database_errors()}
  def update_kx_database(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Updates the specified dataview.

  The dataviews get automatically updated when any new changesets are ingested.
  Each update of the dataview creates a new version, including changeset details
  and cache configurations
  """
  @spec update_kx_dataview(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_kx_dataview_request(),
          list()
        ) ::
          {:ok, update_kx_dataview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_dataview_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates information for the given kdb environment.
  """
  @spec update_kx_environment(map(), String.t() | atom(), update_kx_environment_request(), list()) ::
          {:ok, update_kx_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_environment_errors()}
  def update_kx_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
          String.t() | atom(),
          update_kx_environment_network_request(),
          list()
        ) ::
          {:ok, update_kx_environment_network_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_environment_network_errors()}
  def update_kx_environment_network(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/network"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the user details.

  You can only update the IAM role associated with a user.
  """
  @spec update_kx_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_kx_user_request(),
          list()
        ) ::
          {:ok, update_kx_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_user_errors()}
  def update_kx_user(%Client{} = client, environment_id, user_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Updates the throughput or capacity of a volume.

  During the update process, the filesystem
  might be unavailable for a few minutes. You can retry any operations after the
  update is complete.
  """
  @spec update_kx_volume(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_kx_volume_request(),
          list()
        ) ::
          {:ok, update_kx_volume_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_kx_volume_errors()}
  def update_kx_volume(%Client{} = client, environment_id, volume_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/kxvolumes/#{AWS.Util.encode_uri(volume_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
