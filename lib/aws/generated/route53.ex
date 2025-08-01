# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53 do
  @moduledoc """
  Amazon Route 53 is a highly available and scalable Domain Name System (DNS) web
  service.

  You can use Route 53 to:

    *
  Register domain names.

  For more information, see [How domain registration works](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-domain-registration.html).

    *
  Route internet traffic to the resources for your domain

  For more information, see [How internet traffic is routed to your website or web application](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html).

    *
  Check the health of your resources.

  For more information, see [How Route 53 checks the health of your resources](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-health-checks.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_vpc_association_authorization_request() :: %{
        required("VPC") => vpc()
      }

  """
  @type create_vpc_association_authorization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_hosted_zone_comment_response() :: %{
        "HostedZone" => hosted_zone()
      }

  """
  @type update_hosted_zone_comment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policies_request() :: %{
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyIdMarker") => String.t() | atom()
      }

  """
  @type list_traffic_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_change_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type get_change_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geo_location_details() :: %{
        "ContinentCode" => String.t() | atom(),
        "ContinentName" => String.t() | atom(),
        "CountryCode" => String.t() | atom(),
        "CountryName" => String.t() | atom(),
        "SubdivisionCode" => String.t() | atom(),
        "SubdivisionName" => String.t() | atom()
      }

  """
  @type geo_location_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_query_logging_config_request() :: %{}

  """
  @type get_query_logging_config_request() :: %{}

  @typedoc """

  ## Example:

      delegation_set_not_reusable() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delegation_set_not_reusable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delegation_set() :: %{
        "CallerReference" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "NameServers" => list(String.t() | atom())
      }

  """
  @type delegation_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      health_check_version_mismatch() :: %{
        "message" => String.t() | atom()
      }

  """
  @type health_check_version_mismatch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_version_response() :: %{
        "Location" => String.t() | atom(),
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type create_traffic_policy_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_query_logging_config_response() :: %{
        "Location" => String.t() | atom(),
        "QueryLoggingConfig" => query_logging_config()
      }

  """
  @type create_query_logging_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_logging_config() :: %{
        "CloudWatchLogsLogGroupArn" => String.t() | atom(),
        "HostedZoneId" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type query_logging_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_signing_key() :: %{
        "CreatedDate" => non_neg_integer(),
        "DNSKEYRecord" => String.t() | atom(),
        "DSRecord" => String.t() | atom(),
        "DigestAlgorithmMnemonic" => String.t() | atom(),
        "DigestAlgorithmType" => integer(),
        "DigestValue" => String.t() | atom(),
        "Flag" => integer(),
        "KeyTag" => integer(),
        "KmsArn" => String.t() | atom(),
        "LastModifiedDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "PublicKey" => String.t() | atom(),
        "SigningAlgorithmMnemonic" => String.t() | atom(),
        "SigningAlgorithmType" => integer(),
        "Status" => String.t() | atom(),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type key_signing_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      incompatible_version() :: %{
        "message" => String.t() | atom()
      }

  """
  @type incompatible_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_by_vpc_response() :: %{
        "HostedZoneSummaries" => list(hosted_zone_summary()),
        "MaxItems" => [integer()],
        "NextToken" => String.t() | atom()
      }

  """
  @type list_hosted_zones_by_vpc_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change() :: %{
        "Action" => list(any()),
        "ResourceRecordSet" => resource_record_set()
      }

  """
  @type change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_policy_in_use() :: %{
        "message" => String.t() | atom()
      }

  """
  @type traffic_policy_in_use() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_request() :: %{}

  """
  @type get_traffic_policy_instance_request() :: %{}

  @typedoc """

  ## Example:

      dns_sec_status() :: %{
        "ServeSignature" => String.t() | atom(),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type dns_sec_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_alarm_configuration() :: %{
        "ComparisonOperator" => list(any()),
        "Dimensions" => list(dimension()),
        "EvaluationPeriods" => integer(),
        "MetricName" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "Period" => integer(),
        "Statistic" => list(any()),
        "Threshold" => float()
      }

  """
  @type cloud_watch_alarm_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hosted_zone_request() :: %{
        optional("DelegationSetId") => String.t() | atom(),
        optional("HostedZoneConfig") => hosted_zone_config(),
        optional("VPC") => vpc(),
        required("CallerReference") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_hosted_zone_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_input() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_instance_request() :: %{}

  """
  @type delete_traffic_policy_instance_request() :: %{}

  @typedoc """

  ## Example:

      hosted_zone_not_private() :: %{
        "message" => String.t() | atom()
      }

  """
  @type hosted_zone_not_private() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_change_batch() :: %{
        "message" => String.t() | atom(),
        "messages" => list(String.t() | atom())
      }

  """
  @type invalid_change_batch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_count_request() :: %{}

  """
  @type get_traffic_policy_instance_count_request() :: %{}

  @typedoc """

  ## Example:

      too_many_traffic_policies() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_traffic_policies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_health_check_request() :: %{}

  """
  @type delete_health_check_request() :: %{}

  @typedoc """

  ## Example:

      create_traffic_policy_request() :: %{
        optional("Comment") => String.t() | atom(),
        required("Document") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_traffic_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_limit_response() :: %{
        "Count" => float(),
        "Limit" => reusable_delegation_set_limit()
      }

  """
  @type get_reusable_delegation_set_limit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_pagination_token() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_pagination_token() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_policy_response() :: %{
        "HostedZoneIdMarker" => String.t() | atom(),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyInstanceNameMarker" => String.t() | atom(),
        "TrafficPolicyInstanceTypeMarker" => list(any()),
        "TrafficPolicyInstances" => list(traffic_policy_instance())
      }

  """
  @type list_traffic_policy_instances_by_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_health_check() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_health_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_traffic_policy_versions_for_current_policy() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_traffic_policy_versions_for_current_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_policy_request() :: %{
        optional("HostedZoneIdMarker") => String.t() | atom(),
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyInstanceNameMarker") => String.t() | atom(),
        optional("TrafficPolicyInstanceTypeMarker") => list(any()),
        required("TrafficPolicyId") => String.t() | atom(),
        required("TrafficPolicyVersion") => integer()
      }

  """
  @type list_traffic_policy_instances_by_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_limit() :: %{
        "Type" => list(any()),
        "Value" => float()
      }

  """
  @type hosted_zone_limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc() :: %{
        "VPCId" => String.t() | atom(),
        "VPCRegion" => list(any())
      }

  """
  @type vpc() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_traffic_policy_instance() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_traffic_policy_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_record_set() :: %{
        "AliasTarget" => alias_target(),
        "CidrRoutingConfig" => cidr_routing_config(),
        "Failover" => list(any()),
        "GeoLocation" => geo_location(),
        "GeoProximityLocation" => geo_proximity_location(),
        "HealthCheckId" => String.t() | atom(),
        "MultiValueAnswer" => boolean(),
        "Name" => String.t() | atom(),
        "Region" => list(any()),
        "ResourceRecords" => list(resource_record()),
        "SetIdentifier" => String.t() | atom(),
        "TTL" => float(),
        "TrafficPolicyInstanceId" => String.t() | atom(),
        "Type" => list(any()),
        "Weight" => float()
      }

  """
  @type resource_record_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_response() :: %{
        "TrafficPolicyInstance" => traffic_policy_instance()
      }

  """
  @type get_traffic_policy_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      collection_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Version" => float()
      }

  """
  @type collection_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_limit_response() :: %{
        "Count" => float(),
        "Limit" => hosted_zone_limit()
      }

  """
  @type get_hosted_zone_limit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_count_response() :: %{
        "HostedZoneCount" => float()
      }

  """
  @type get_hosted_zone_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_traffic_policy_comment_response() :: %{
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type update_traffic_policy_comment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_health_check_response() :: %{}

  """
  @type delete_health_check_response() :: %{}

  @typedoc """

  ## Example:

      vpc_association_not_found() :: %{
        "message" => String.t() | atom()
      }

  """
  @type vpc_association_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delegation_set_not_available() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delegation_set_not_available() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_association_authorization_not_found() :: %{
        "message" => String.t() | atom()
      }

  """
  @type vpc_association_authorization_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_tags_for_resource_response() :: %{}

  """
  @type change_tags_for_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_reusable_delegation_set_request() :: %{}

  """
  @type delete_reusable_delegation_set_request() :: %{}

  @typedoc """

  ## Example:

      associate_vpc_with_hosted_zone_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type associate_vpc_with_hosted_zone_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insufficient_cloud_watch_logs_resource_policy() :: %{
        "message" => String.t() | atom()
      }

  """
  @type insufficient_cloud_watch_logs_resource_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_hosted_zone() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_hosted_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policies_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyIdMarker" => String.t() | atom(),
        "TrafficPolicySummaries" => list(traffic_policy_summary())
      }

  """
  @type list_traffic_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reusable_delegation_sets_response() :: %{
        "DelegationSets" => list(delegation_set()),
        "IsTruncated" => boolean(),
        "Marker" => String.t() | atom(),
        "MaxItems" => [integer()],
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_reusable_delegation_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_key_signing_key_name() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_key_signing_key_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      public_zone_vpc_association() :: %{
        "message" => String.t() | atom()
      }

  """
  @type public_zone_vpc_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_health_check_response() :: %{
        "HealthCheck" => health_check(),
        "Location" => String.t() | atom()
      }

  """
  @type create_health_check_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_health_check_response() :: %{
        "HealthCheck" => health_check()
      }

  """
  @type update_health_check_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dns_sec_not_found() :: %{
        "message" => String.t() | atom()
      }

  """
  @type dns_sec_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      status_report() :: %{
        "CheckedTime" => non_neg_integer(),
        "Status" => String.t() | atom()
      }

  """
  @type status_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_instance_request() :: %{
        required("HostedZoneId") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("TTL") => float(),
        required("TrafficPolicyId") => String.t() | atom(),
        required("TrafficPolicyVersion") => integer()
      }

  """
  @type create_traffic_policy_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_batch() :: %{
        "Changes" => list(change()),
        "Comment" => String.t() | atom()
      }

  """
  @type change_batch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reusable_delegation_set_limit() :: %{
        "Type" => list(any()),
        "Value" => float()
      }

  """
  @type reusable_delegation_set_limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      health_check_already_exists() :: %{
        "message" => String.t() | atom()
      }

  """
  @type health_check_already_exists() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_delegation_set() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_delegation_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_policy() :: %{
        "Comment" => String.t() | atom(),
        "Document" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => list(any()),
        "Version" => integer()
      }

  """
  @type traffic_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_health_check_count_request() :: %{}

  """
  @type get_health_check_count_request() :: %{}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_request() :: %{
        optional("HostedZoneIdMarker") => String.t() | atom(),
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyInstanceNameMarker") => String.t() | atom(),
        optional("TrafficPolicyInstanceTypeMarker") => list(any())
      }

  """
  @type list_traffic_policy_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_argument() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_argument() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_tags_for_resource_request() :: %{
        optional("AddTags") => list(tag()),
        optional("RemoveTagKeys") => list(String.t() | atom())
      }

  """
  @type change_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_health_check_response() :: %{
        "HealthCheck" => health_check()
      }

  """
  @type get_health_check_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_query_logging_configs_response() :: %{
        "NextToken" => String.t() | atom(),
        "QueryLoggingConfigs" => list(query_logging_config())
      }

  """
  @type list_query_logging_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_cidr_collection_response() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type change_cidr_collection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_traffic_policy_instances() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_traffic_policy_instances() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_collection_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type cidr_collection_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      linked_service() :: %{
        "Description" => String.t() | atom(),
        "ServicePrincipal" => String.t() | atom()
      }

  """
  @type linked_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_traffic_policy_document() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_traffic_policy_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_key_signing_key_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type delete_key_signing_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      concurrent_modification() :: %{
        "message" => String.t() | atom()
      }

  """
  @type concurrent_modification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resources_response() :: %{
        "ResourceTagSets" => list(resource_tag_set())
      }

  """
  @type list_tags_for_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vpc_association_authorization_response() :: %{}

  """
  @type delete_vpc_association_authorization_response() :: %{}

  @typedoc """

  ## Example:

      list_geo_locations_response() :: %{
        "GeoLocationDetailsList" => list(geo_location_details()),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "NextContinentCode" => String.t() | atom(),
        "NextCountryCode" => String.t() | atom(),
        "NextSubdivisionCode" => String.t() | atom()
      }

  """
  @type list_geo_locations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cidr_collections_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_cidr_collections_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_dns_sec_request() :: %{}

  """
  @type get_dns_sec_request() :: %{}

  @typedoc """

  ## Example:

      too_many_vpc_association_authorizations() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_vpc_association_authorizations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_limit_request() :: %{}

  """
  @type get_hosted_zone_limit_request() :: %{}

  @typedoc """

  ## Example:

      key_signing_key_with_active_status_not_found() :: %{
        "message" => String.t() | atom()
      }

  """
  @type key_signing_key_with_active_status_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cidr_blocks_request() :: %{
        optional("LocationName") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_cidr_blocks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alias_target() :: %{
        "DNSName" => String.t() | atom(),
        "EvaluateTargetHealth" => boolean(),
        "HostedZoneId" => String.t() | atom()
      }

  """
  @type alias_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_collection_change() :: %{
        "Action" => list(any()),
        "CidrList" => list(String.t() | atom()),
        "LocationName" => String.t() | atom()
      }

  """
  @type cidr_collection_change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_health_check_last_failure_reason_response() :: %{
        "HealthCheckObservations" => list(health_check_observation())
      }

  """
  @type get_health_check_last_failure_reason_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_checker_ip_ranges_response() :: %{
        "CheckerIpRanges" => list(String.t() | atom())
      }

  """
  @type get_checker_ip_ranges_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_response() :: %{
        "HostedZoneIdMarker" => String.t() | atom(),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyInstanceNameMarker" => String.t() | atom(),
        "TrafficPolicyInstanceTypeMarker" => list(any()),
        "TrafficPolicyInstances" => list(traffic_policy_instance())
      }

  """
  @type list_traffic_policy_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_cidr_collection_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type no_such_cidr_collection_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_signing_status() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_signing_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geo_proximity_location() :: %{
        "AWSRegion" => String.t() | atom(),
        "Bias" => integer(),
        "Coordinates" => coordinates(),
        "LocalZoneGroup" => String.t() | atom()
      }

  """
  @type geo_proximity_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_dns_answer_request() :: %{
        optional("EDNS0ClientSubnetIP") => String.t() | atom(),
        optional("EDNS0ClientSubnetMask") => String.t() | atom(),
        optional("ResolverIP") => String.t() | atom(),
        required("HostedZoneId") => String.t() | atom(),
        required("RecordName") => String.t() | atom(),
        required("RecordType") => list(any())
      }

  """
  @type test_dns_answer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivate_key_signing_key_request() :: %{}

  """
  @type deactivate_key_signing_key_request() :: %{}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delegation_set_in_use() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delegation_set_in_use() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_change() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_geo_location_request() :: %{
        optional("ContinentCode") => String.t() | atom(),
        optional("CountryCode") => String.t() | atom(),
        optional("SubdivisionCode") => String.t() | atom()
      }

  """
  @type get_geo_location_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cidr_blocks_response() :: %{
        "CidrBlocks" => list(cidr_block_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_cidr_blocks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_block_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type cidr_block_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_signing_key_in_use() :: %{
        "message" => String.t() | atom()
      }

  """
  @type key_signing_key_in_use() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limits_exceeded() :: %{
        "message" => String.t() | atom()
      }

  """
  @type limits_exceeded() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_hosted_zone_request() :: %{
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyInstanceNameMarker") => String.t() | atom(),
        optional("TrafficPolicyInstanceTypeMarker") => list(any()),
        required("HostedZoneId") => String.t() | atom()
      }

  """
  @type list_traffic_policy_instances_by_hosted_zone_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      no_such_query_logging_config() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_query_logging_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_policy_instance_already_exists() :: %{
        "message" => String.t() | atom()
      }

  """
  @type traffic_policy_instance_already_exists() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_policy_already_exists() :: %{
        "message" => String.t() | atom()
      }

  """
  @type traffic_policy_already_exists() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_hosted_zone_request() :: %{}

  """
  @type delete_hosted_zone_request() :: %{}

  @typedoc """

  ## Example:

      list_cidr_collections_response() :: %{
        "CidrCollections" => list(collection_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_cidr_collections_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_hosted_zone_dns_sec_request() :: %{}

  """
  @type enable_hosted_zone_dns_sec_request() :: %{}

  @typedoc """

  ## Example:

      list_health_checks_response() :: %{
        "HealthChecks" => list(health_check()),
        "IsTruncated" => boolean(),
        "Marker" => String.t() | atom(),
        "MaxItems" => [integer()],
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_health_checks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_response() :: %{
        "Location" => String.t() | atom(),
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type create_traffic_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_response() :: %{
        "DelegationSet" => delegation_set(),
        "HostedZone" => hosted_zone(),
        "VPCs" => list(vpc())
      }

  """
  @type get_hosted_zone_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_hosted_zone_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type delete_hosted_zone_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delegation_set_already_reusable() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delegation_set_already_reusable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_resource_record_sets_request() :: %{
        required("ChangeBatch") => change_batch()
      }

  """
  @type change_resource_record_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_owner() :: %{
        "OwningAccount" => String.t() | atom(),
        "OwningService" => String.t() | atom()
      }

  """
  @type hosted_zone_owner() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_query_logging_config_request() :: %{
        required("CloudWatchLogsLogGroupArn") => String.t() | atom(),
        required("HostedZoneId") => String.t() | atom()
      }

  """
  @type create_query_logging_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflicting_domain_exists() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflicting_domain_exists() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_already_exists() :: %{
        "message" => String.t() | atom()
      }

  """
  @type hosted_zone_already_exists() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_hosted_zone_dns_sec_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type enable_hosted_zone_dns_sec_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_not_found() :: %{
        "message" => String.t() | atom()
      }

  """
  @type hosted_zone_not_found() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_tag_set() :: %{
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any()),
        "Tags" => list(tag())
      }

  """
  @type resource_tag_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_key_signing_key_request() :: %{}

  """
  @type activate_key_signing_key_request() :: %{}

  @typedoc """

  ## Example:

      update_traffic_policy_comment_request() :: %{
        required("Comment") => String.t() | atom()
      }

  """
  @type update_traffic_policy_comment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      health_check_observation() :: %{
        "IPAddress" => String.t() | atom(),
        "Region" => list(any()),
        "StatusReport" => status_report()
      }

  """
  @type health_check_observation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alarm_identifier() :: %{
        "Name" => String.t() | atom(),
        "Region" => list(any())
      }

  """
  @type alarm_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_health_check_request() :: %{
        required("CallerReference") => String.t() | atom(),
        required("HealthCheckConfig") => health_check_config()
      }

  """
  @type create_health_check_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_cloud_watch_logs_log_group() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_cloud_watch_logs_log_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_resource_record_sets_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type change_resource_record_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vpc_association_authorization_request() :: %{
        required("VPC") => vpc()
      }

  """
  @type delete_vpc_association_authorization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_limit() :: %{
        "Type" => list(any()),
        "Value" => float()
      }

  """
  @type account_limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "ResourceTagSet" => resource_tag_set()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      change_info() :: %{
        "Comment" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Status" => list(any()),
        "SubmittedAt" => non_neg_integer()
      }

  """
  @type change_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_cidr_collection_response() :: %{}

  """
  @type delete_cidr_collection_response() :: %{}

  @typedoc """

  ## Example:

      list_hosted_zones_by_name_response() :: %{
        "DNSName" => String.t() | atom(),
        "HostedZoneId" => String.t() | atom(),
        "HostedZones" => list(hosted_zone()),
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "NextDNSName" => String.t() | atom(),
        "NextHostedZoneId" => String.t() | atom()
      }

  """
  @type list_hosted_zones_by_name_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      health_check() :: %{
        "CallerReference" => String.t() | atom(),
        "CloudWatchAlarmConfiguration" => cloud_watch_alarm_configuration(),
        "HealthCheckConfig" => health_check_config(),
        "HealthCheckVersion" => float(),
        "Id" => String.t() | atom(),
        "LinkedService" => linked_service()
      }

  """
  @type health_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_response() :: %{
        "HostedZones" => list(hosted_zone()),
        "IsTruncated" => boolean(),
        "Marker" => String.t() | atom(),
        "MaxItems" => [integer()],
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_hosted_zones_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_change_request() :: %{}

  """
  @type get_change_request() :: %{}

  @typedoc """

  ## Example:

      invalid_vpc_id() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_vpc_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vpc_association_authorization_response() :: %{
        "HostedZoneId" => String.t() | atom(),
        "VPC" => vpc()
      }

  """
  @type create_vpc_association_authorization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_response() :: %{}

  """
  @type delete_traffic_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_cidr_locations_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_cidr_locations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_query_logging_config_response() :: %{}

  """
  @type delete_query_logging_config_response() :: %{}

  @typedoc """

  ## Example:

      update_traffic_policy_instance_response() :: %{
        "TrafficPolicyInstance" => traffic_policy_instance()
      }

  """
  @type update_traffic_policy_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_instance_response() :: %{
        "Location" => String.t() | atom(),
        "TrafficPolicyInstance" => traffic_policy_instance()
      }

  """
  @type create_traffic_policy_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_reusable_delegation_set_response() :: %{
        "DelegationSet" => delegation_set(),
        "Location" => String.t() | atom()
      }

  """
  @type create_reusable_delegation_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_health_check_count_response() :: %{
        "HealthCheckCount" => float()
      }

  """
  @type get_health_check_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_vpc_association_authorizations_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_vpc_association_authorizations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_geo_locations_request() :: %{
        optional("MaxItems") => [integer()],
        optional("StartContinentCode") => String.t() | atom(),
        optional("StartCountryCode") => String.t() | atom(),
        optional("StartSubdivisionCode") => String.t() | atom()
      }

  """
  @type list_geo_locations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_query_logging_config_request() :: %{}

  """
  @type delete_query_logging_config_request() :: %{}

  @typedoc """

  ## Example:

      get_hosted_zone_request() :: %{}

  """
  @type get_hosted_zone_request() :: %{}

  @typedoc """

  ## Example:

      update_health_check_request() :: %{
        optional("AlarmIdentifier") => alarm_identifier(),
        optional("ChildHealthChecks") => list(String.t() | atom()),
        optional("Disabled") => boolean(),
        optional("EnableSNI") => boolean(),
        optional("FailureThreshold") => integer(),
        optional("FullyQualifiedDomainName") => String.t() | atom(),
        optional("HealthCheckVersion") => float(),
        optional("HealthThreshold") => integer(),
        optional("IPAddress") => String.t() | atom(),
        optional("InsufficientDataHealthStatus") => list(any()),
        optional("Inverted") => boolean(),
        optional("Port") => integer(),
        optional("Regions") => list(list(any())()),
        optional("ResetElements") => list(list(any())()),
        optional("ResourcePath") => String.t() | atom(),
        optional("SearchString") => String.t() | atom()
      }

  """
  @type update_health_check_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_key_signing_key_response() :: %{
        "ChangeInfo" => change_info(),
        "KeySigningKey" => key_signing_key(),
        "Location" => String.t() | atom()
      }

  """
  @type create_key_signing_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_authorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type not_authorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_limit_request() :: %{}

  """
  @type get_account_limit_request() :: %{}

  @typedoc """

  ## Example:

      geo_location() :: %{
        "ContinentCode" => String.t() | atom(),
        "CountryCode" => String.t() | atom(),
        "SubdivisionCode" => String.t() | atom()
      }

  """
  @type geo_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_instance_count_response() :: %{
        "TrafficPolicyInstanceCount" => integer()
      }

  """
  @type get_traffic_policy_instance_count_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_summary() :: %{
        "HostedZoneId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Owner" => hosted_zone_owner()
      }

  """
  @type hosted_zone_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_response() :: %{
        "TrafficPolicy" => traffic_policy()
      }

  """
  @type get_traffic_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_versions_request() :: %{
        optional("MaxItems") => [integer()],
        optional("TrafficPolicyVersionMarker") => String.t() | atom()
      }

  """
  @type list_traffic_policy_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_vpc_association_authorizations_response() :: %{
        "HostedZoneId" => String.t() | atom(),
        "NextToken" => String.t() | atom(),
        "VPCs" => list(vpc())
      }

  """
  @type list_vpc_association_authorizations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hosted_zone_count_request() :: %{}

  """
  @type get_hosted_zone_count_request() :: %{}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_limit_request() :: %{}

  """
  @type get_reusable_delegation_set_limit_request() :: %{}

  @typedoc """

  ## Example:

      list_traffic_policy_instances_by_hosted_zone_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicyInstanceNameMarker" => String.t() | atom(),
        "TrafficPolicyInstanceTypeMarker" => list(any()),
        "TrafficPolicyInstances" => list(traffic_policy_instance())
      }

  """
  @type list_traffic_policy_instances_by_hosted_zone_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      invalid_domain_name() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_domain_name() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_policy_summary() :: %{
        "Id" => String.t() | atom(),
        "LatestVersion" => integer(),
        "Name" => String.t() | atom(),
        "TrafficPolicyCount" => integer(),
        "Type" => list(any())
      }

  """
  @type traffic_policy_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_hosted_zone_dns_sec_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type disable_hosted_zone_dns_sec_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_geo_location() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_geo_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_policy_instance() :: %{
        "HostedZoneId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "State" => String.t() | atom(),
        "TTL" => float(),
        "TrafficPolicyId" => String.t() | atom(),
        "TrafficPolicyType" => list(any()),
        "TrafficPolicyVersion" => integer()
      }

  """
  @type traffic_policy_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_cidr_collection_request() :: %{
        required("CallerReference") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_cidr_collection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_cidr_location_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type no_such_cidr_location_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_kms_arn() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_kms_arn() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_cidr_collection_response() :: %{
        "Collection" => cidr_collection(),
        "Location" => String.t() | atom()
      }

  """
  @type create_cidr_collection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_dns_sec_response() :: %{
        "KeySigningKeys" => list(key_signing_key()),
        "Status" => dns_sec_status()
      }

  """
  @type get_dns_sec_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_query_logging_configs_request() :: %{
        optional("HostedZoneId") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_query_logging_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_key_signing_key_request() :: %{
        required("CallerReference") => String.t() | atom(),
        required("HostedZoneId") => String.t() | atom(),
        required("KeyManagementServiceArn") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Status") => String.t() | atom()
      }

  """
  @type create_key_signing_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resources_request() :: %{
        required("ResourceIds") => list(String.t() | atom())
      }

  """
  @type list_tags_for_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cidr_locations_response() :: %{
        "CidrLocations" => list(location_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_cidr_locations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_by_vpc_request() :: %{
        optional("MaxItems") => [integer()],
        optional("NextToken") => String.t() | atom(),
        required("VPCId") => String.t() | atom(),
        required("VPCRegion") => list(any())
      }

  """
  @type list_hosted_zones_by_vpc_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_hosted_zone_comment_request() :: %{
        optional("Comment") => String.t() | atom()
      }

  """
  @type update_hosted_zone_comment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_request() :: %{
        optional("DelegationSetId") => String.t() | atom(),
        optional("HostedZoneType") => list(any()),
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_hosted_zones_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_hosted_zones() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_hosted_zones() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_geo_location_response() :: %{
        "GeoLocationDetails" => geo_location_details()
      }

  """
  @type get_geo_location_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_response() :: %{
        "DelegationSet" => delegation_set()
      }

  """
  @type get_reusable_delegation_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_routing_config() :: %{
        "CollectionId" => String.t() | atom(),
        "LocationName" => String.t() | atom()
      }

  """
  @type cidr_routing_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      health_check_config() :: %{
        "AlarmIdentifier" => alarm_identifier(),
        "ChildHealthChecks" => list(String.t() | atom()),
        "Disabled" => boolean(),
        "EnableSNI" => boolean(),
        "FailureThreshold" => integer(),
        "FullyQualifiedDomainName" => String.t() | atom(),
        "HealthThreshold" => integer(),
        "IPAddress" => String.t() | atom(),
        "InsufficientDataHealthStatus" => list(any()),
        "Inverted" => boolean(),
        "MeasureLatency" => boolean(),
        "Port" => integer(),
        "Regions" => list(list(any())()),
        "RequestInterval" => integer(),
        "ResourcePath" => String.t() | atom(),
        "RoutingControlArn" => String.t() | atom(),
        "SearchString" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type health_check_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_hosted_zone_dns_sec_request() :: %{}

  """
  @type disable_hosted_zone_dns_sec_request() :: %{}

  @typedoc """

  ## Example:

      delete_reusable_delegation_set_response() :: %{}

  """
  @type delete_reusable_delegation_set_response() :: %{}

  @typedoc """

  ## Example:

      key_signing_key_in_parent_d_s_record() :: %{
        "message" => String.t() | atom()
      }

  """
  @type key_signing_key_in_parent_d_s_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_health_check_status_request() :: %{}

  """
  @type get_health_check_status_request() :: %{}

  @typedoc """

  ## Example:

      hosted_zone() :: %{
        "CallerReference" => String.t() | atom(),
        "Config" => hosted_zone_config(),
        "Id" => String.t() | atom(),
        "LinkedService" => linked_service(),
        "Name" => String.t() | atom(),
        "ResourceRecordSetCount" => float()
      }

  """
  @type hosted_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_policy_versions_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "TrafficPolicies" => list(traffic_policy()),
        "TrafficPolicyVersionMarker" => String.t() | atom()
      }

  """
  @type list_traffic_policy_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_record_sets_request() :: %{
        optional("MaxItems") => [integer()],
        optional("StartRecordIdentifier") => String.t() | atom(),
        optional("StartRecordName") => String.t() | atom(),
        optional("StartRecordType") => list(any())
      }

  """
  @type list_resource_record_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_cidr_collection_request() :: %{}

  """
  @type delete_cidr_collection_request() :: %{}

  @typedoc """

  ## Example:

      location_summary() :: %{
        "LocationName" => String.t() | atom()
      }

  """
  @type location_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_partially_delegated() :: %{
        "message" => String.t() | atom()
      }

  """
  @type hosted_zone_partially_delegated() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_collection_version_mismatch_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type cidr_collection_version_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_key_signing_key_request() :: %{}

  """
  @type delete_key_signing_key_request() :: %{}

  @typedoc """

  ## Example:

      last_vpc_association() :: %{
        "message" => String.t() | atom()
      }

  """
  @type last_vpc_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_limit_response() :: %{
        "Count" => float(),
        "Limit" => account_limit()
      }

  """
  @type get_account_limit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reusable_delegation_sets_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_reusable_delegation_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_collection_already_exists_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type cidr_collection_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_traffic_policy() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_traffic_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_vpc_from_hosted_zone_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type disassociate_vpc_from_hosted_zone_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dimension() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prior_request_not_complete() :: %{
        "message" => String.t() | atom()
      }

  """
  @type prior_request_not_complete() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_key_signing_key_status() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_key_signing_key_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_vpc_from_hosted_zone_request() :: %{
        optional("Comment") => String.t() | atom(),
        required("VPC") => vpc()
      }

  """
  @type disassociate_vpc_from_hosted_zone_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hosted_zones_by_name_request() :: %{
        optional("DNSName") => String.t() | atom(),
        optional("HostedZoneId") => String.t() | atom(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_hosted_zones_by_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_such_key_signing_key() :: %{
        "message" => String.t() | atom()
      }

  """
  @type no_such_key_signing_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_traffic_policy_instance_request() :: %{
        required("TTL") => float(),
        required("TrafficPolicyId") => String.t() | atom(),
        required("TrafficPolicyVersion") => integer()
      }

  """
  @type update_traffic_policy_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_request() :: %{}

  """
  @type delete_traffic_policy_request() :: %{}

  @typedoc """

  ## Example:

      coordinates() :: %{
        "Latitude" => String.t() | atom(),
        "Longitude" => String.t() | atom()
      }

  """
  @type coordinates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_query_logging_config_response() :: %{
        "QueryLoggingConfig" => query_logging_config()
      }

  """
  @type get_query_logging_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_collection() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Version" => float()
      }

  """
  @type cidr_collection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_policy_request() :: %{}

  """
  @type get_traffic_policy_request() :: %{}

  @typedoc """

  ## Example:

      activate_key_signing_key_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type activate_key_signing_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_logging_config_already_exists() :: %{
        "message" => String.t() | atom()
      }

  """
  @type query_logging_config_already_exists() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_health_check_request() :: %{}

  """
  @type get_health_check_request() :: %{}

  @typedoc """

  ## Example:

      resource_record() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type resource_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_traffic_policy_instance_response() :: %{}

  """
  @type delete_traffic_policy_instance_response() :: %{}

  @typedoc """

  ## Example:

      too_many_key_signing_keys() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_key_signing_keys() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      key_signing_key_already_exists() :: %{
        "message" => String.t() | atom()
      }

  """
  @type key_signing_key_already_exists() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_health_check_status_response() :: %{
        "HealthCheckObservations" => list(health_check_observation())
      }

  """
  @type get_health_check_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_record_sets_response() :: %{
        "IsTruncated" => boolean(),
        "MaxItems" => [integer()],
        "NextRecordIdentifier" => String.t() | atom(),
        "NextRecordName" => String.t() | atom(),
        "NextRecordType" => list(any()),
        "ResourceRecordSets" => list(resource_record_set())
      }

  """
  @type list_resource_record_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reusable_delegation_set_request() :: %{}

  """
  @type get_reusable_delegation_set_request() :: %{}

  @typedoc """

  ## Example:

      get_health_check_last_failure_reason_request() :: %{}

  """
  @type get_health_check_last_failure_reason_request() :: %{}

  @typedoc """

  ## Example:

      hosted_zone_config() :: %{
        "Comment" => String.t() | atom(),
        "PrivateZone" => boolean()
      }

  """
  @type hosted_zone_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_reusable_delegation_set_request() :: %{
        optional("HostedZoneId") => String.t() | atom(),
        required("CallerReference") => String.t() | atom()
      }

  """
  @type create_reusable_delegation_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_vpc_with_hosted_zone_request() :: %{
        optional("Comment") => String.t() | atom(),
        required("VPC") => vpc()
      }

  """
  @type associate_vpc_with_hosted_zone_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_health_checks_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => [integer()]
      }

  """
  @type list_health_checks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflicting_types() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflicting_types() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      health_check_in_use() :: %{
        "message" => String.t() | atom()
      }

  """
  @type health_check_in_use() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivate_key_signing_key_response() :: %{
        "ChangeInfo" => change_info()
      }

  """
  @type deactivate_key_signing_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_health_checks() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_health_checks() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hosted_zone_response() :: %{
        "ChangeInfo" => change_info(),
        "DelegationSet" => delegation_set(),
        "HostedZone" => hosted_zone(),
        "Location" => String.t() | atom(),
        "VPC" => vpc()
      }

  """
  @type create_hosted_zone_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      test_dns_answer_response() :: %{
        "Nameserver" => String.t() | atom(),
        "Protocol" => String.t() | atom(),
        "RecordData" => list(String.t() | atom()),
        "RecordName" => String.t() | atom(),
        "RecordType" => list(any()),
        "ResponseCode" => String.t() | atom()
      }

  """
  @type test_dns_answer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cidr_block_summary() :: %{
        "CidrBlock" => String.t() | atom(),
        "LocationName" => String.t() | atom()
      }

  """
  @type cidr_block_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delegation_set_already_created() :: %{
        "message" => String.t() | atom()
      }

  """
  @type delegation_set_already_created() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_traffic_policy_version_request() :: %{
        optional("Comment") => String.t() | atom(),
        required("Document") => String.t() | atom()
      }

  """
  @type create_traffic_policy_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hosted_zone_not_empty() :: %{
        "message" => String.t() | atom()
      }

  """
  @type hosted_zone_not_empty() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_checker_ip_ranges_request() :: %{}

  """
  @type get_checker_ip_ranges_request() :: %{}

  @typedoc """

  ## Example:

      change_cidr_collection_request() :: %{
        optional("CollectionVersion") => float(),
        required("Changes") => list(cidr_collection_change())
      }

  """
  @type change_cidr_collection_request() :: %{(String.t() | atom()) => any()}

  @type activate_key_signing_key_errors() ::
          no_such_key_signing_key()
          | invalid_key_signing_key_status()
          | invalid_kms_arn()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_input()

  @type associate_vpc_with_hosted_zone_errors() ::
          prior_request_not_complete()
          | not_authorized_exception()
          | invalid_vpc_id()
          | conflicting_domain_exists()
          | limits_exceeded()
          | public_zone_vpc_association()
          | no_such_hosted_zone()
          | invalid_input()

  @type change_cidr_collection_errors() ::
          cidr_collection_version_mismatch_exception()
          | limits_exceeded()
          | cidr_block_in_use_exception()
          | no_such_cidr_collection_exception()
          | concurrent_modification()
          | invalid_input()

  @type change_resource_record_sets_errors() ::
          prior_request_not_complete()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_change_batch()
          | invalid_input()

  @type change_tags_for_resource_errors() ::
          prior_request_not_complete()
          | throttling_exception()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_input()

  @type create_cidr_collection_errors() ::
          cidr_collection_already_exists_exception()
          | limits_exceeded()
          | concurrent_modification()
          | invalid_input()

  @type create_health_check_errors() ::
          too_many_health_checks() | health_check_already_exists() | invalid_input()

  @type create_hosted_zone_errors() ::
          too_many_hosted_zones()
          | invalid_domain_name()
          | invalid_vpc_id()
          | hosted_zone_already_exists()
          | conflicting_domain_exists()
          | no_such_delegation_set()
          | delegation_set_not_available()
          | invalid_input()
          | delegation_set_not_reusable()

  @type create_key_signing_key_errors() ::
          key_signing_key_already_exists()
          | too_many_key_signing_keys()
          | invalid_key_signing_key_status()
          | invalid_kms_arn()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_argument()
          | invalid_key_signing_key_name()
          | no_such_hosted_zone()
          | invalid_input()

  @type create_query_logging_config_errors() ::
          query_logging_config_already_exists()
          | no_such_cloud_watch_logs_log_group()
          | concurrent_modification()
          | no_such_hosted_zone()
          | insufficient_cloud_watch_logs_resource_policy()
          | invalid_input()

  @type create_reusable_delegation_set_errors() ::
          delegation_set_already_created()
          | hosted_zone_not_found()
          | delegation_set_already_reusable()
          | limits_exceeded()
          | invalid_argument()
          | delegation_set_not_available()
          | invalid_input()

  @type create_traffic_policy_errors() ::
          traffic_policy_already_exists()
          | invalid_traffic_policy_document()
          | too_many_traffic_policies()
          | invalid_input()

  @type create_traffic_policy_instance_errors() ::
          no_such_traffic_policy()
          | traffic_policy_instance_already_exists()
          | too_many_traffic_policy_instances()
          | no_such_hosted_zone()
          | invalid_input()

  @type create_traffic_policy_version_errors() ::
          no_such_traffic_policy()
          | concurrent_modification()
          | invalid_traffic_policy_document()
          | too_many_traffic_policy_versions_for_current_policy()
          | invalid_input()

  @type create_vpc_association_authorization_errors() ::
          invalid_vpc_id()
          | too_many_vpc_association_authorizations()
          | concurrent_modification()
          | no_such_hosted_zone()
          | invalid_input()

  @type deactivate_key_signing_key_errors() ::
          no_such_key_signing_key()
          | invalid_key_signing_key_status()
          | key_signing_key_in_parent_d_s_record()
          | key_signing_key_in_use()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_input()

  @type delete_cidr_collection_errors() ::
          no_such_cidr_collection_exception()
          | concurrent_modification()
          | cidr_collection_in_use_exception()
          | invalid_input()

  @type delete_health_check_errors() ::
          health_check_in_use() | no_such_health_check() | invalid_input()

  @type delete_hosted_zone_errors() ::
          hosted_zone_not_empty()
          | prior_request_not_complete()
          | invalid_domain_name()
          | no_such_hosted_zone()
          | invalid_input()

  @type delete_key_signing_key_errors() ::
          no_such_key_signing_key()
          | invalid_key_signing_key_status()
          | invalid_kms_arn()
          | invalid_signing_status()
          | concurrent_modification()
          | invalid_input()

  @type delete_query_logging_config_errors() ::
          no_such_query_logging_config() | concurrent_modification() | invalid_input()

  @type delete_reusable_delegation_set_errors() ::
          delegation_set_in_use()
          | no_such_delegation_set()
          | invalid_input()
          | delegation_set_not_reusable()

  @type delete_traffic_policy_errors() ::
          no_such_traffic_policy()
          | concurrent_modification()
          | invalid_input()
          | traffic_policy_in_use()

  @type delete_traffic_policy_instance_errors() ::
          prior_request_not_complete() | no_such_traffic_policy_instance() | invalid_input()

  @type delete_vpc_association_authorization_errors() ::
          invalid_vpc_id()
          | concurrent_modification()
          | no_such_hosted_zone()
          | vpc_association_authorization_not_found()
          | invalid_input()

  @type disable_hosted_zone_dns_sec_errors() ::
          invalid_key_signing_key_status()
          | key_signing_key_in_parent_d_s_record()
          | invalid_kms_arn()
          | concurrent_modification()
          | invalid_argument()
          | dns_sec_not_found()
          | no_such_hosted_zone()
          | invalid_input()

  @type disassociate_vpc_from_hosted_zone_errors() ::
          last_vpc_association()
          | invalid_vpc_id()
          | no_such_hosted_zone()
          | vpc_association_not_found()
          | invalid_input()

  @type enable_hosted_zone_dns_sec_errors() ::
          invalid_key_signing_key_status()
          | hosted_zone_partially_delegated()
          | invalid_kms_arn()
          | key_signing_key_with_active_status_not_found()
          | concurrent_modification()
          | invalid_argument()
          | dns_sec_not_found()
          | no_such_hosted_zone()
          | invalid_input()

  @type get_account_limit_errors() :: invalid_input()

  @type get_change_errors() :: no_such_change() | invalid_input()

  @type get_dns_sec_errors() :: invalid_argument() | no_such_hosted_zone() | invalid_input()

  @type get_geo_location_errors() :: no_such_geo_location() | invalid_input()

  @type get_health_check_errors() ::
          no_such_health_check() | invalid_input() | incompatible_version()

  @type get_health_check_last_failure_reason_errors() :: no_such_health_check() | invalid_input()

  @type get_health_check_status_errors() :: no_such_health_check() | invalid_input()

  @type get_hosted_zone_errors() :: no_such_hosted_zone() | invalid_input()

  @type get_hosted_zone_count_errors() :: invalid_input()

  @type get_hosted_zone_limit_errors() ::
          no_such_hosted_zone() | hosted_zone_not_private() | invalid_input()

  @type get_query_logging_config_errors() :: no_such_query_logging_config() | invalid_input()

  @type get_reusable_delegation_set_errors() ::
          no_such_delegation_set() | invalid_input() | delegation_set_not_reusable()

  @type get_reusable_delegation_set_limit_errors() :: no_such_delegation_set() | invalid_input()

  @type get_traffic_policy_errors() :: no_such_traffic_policy() | invalid_input()

  @type get_traffic_policy_instance_errors() ::
          no_such_traffic_policy_instance() | invalid_input()

  @type list_cidr_blocks_errors() ::
          no_such_cidr_location_exception()
          | no_such_cidr_collection_exception()
          | invalid_input()

  @type list_cidr_collections_errors() :: invalid_input()

  @type list_cidr_locations_errors() :: no_such_cidr_collection_exception() | invalid_input()

  @type list_geo_locations_errors() :: invalid_input()

  @type list_health_checks_errors() :: invalid_input() | incompatible_version()

  @type list_hosted_zones_errors() ::
          no_such_delegation_set() | invalid_input() | delegation_set_not_reusable()

  @type list_hosted_zones_by_name_errors() :: invalid_domain_name() | invalid_input()

  @type list_hosted_zones_by_vpc_errors() :: invalid_pagination_token() | invalid_input()

  @type list_query_logging_configs_errors() ::
          no_such_hosted_zone() | invalid_pagination_token() | invalid_input()

  @type list_resource_record_sets_errors() :: no_such_hosted_zone() | invalid_input()

  @type list_reusable_delegation_sets_errors() :: invalid_input()

  @type list_tags_for_resource_errors() ::
          prior_request_not_complete()
          | throttling_exception()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_input()

  @type list_tags_for_resources_errors() ::
          prior_request_not_complete()
          | throttling_exception()
          | no_such_hosted_zone()
          | no_such_health_check()
          | invalid_input()

  @type list_traffic_policies_errors() :: invalid_input()

  @type list_traffic_policy_instances_errors() ::
          no_such_traffic_policy_instance() | invalid_input()

  @type list_traffic_policy_instances_by_hosted_zone_errors() ::
          no_such_hosted_zone() | no_such_traffic_policy_instance() | invalid_input()

  @type list_traffic_policy_instances_by_policy_errors() ::
          no_such_traffic_policy() | no_such_traffic_policy_instance() | invalid_input()

  @type list_traffic_policy_versions_errors() :: no_such_traffic_policy() | invalid_input()

  @type list_vpc_association_authorizations_errors() ::
          no_such_hosted_zone() | invalid_pagination_token() | invalid_input()

  @type test_dns_answer_errors() :: no_such_hosted_zone() | invalid_input()

  @type update_health_check_errors() ::
          no_such_health_check() | invalid_input() | health_check_version_mismatch()

  @type update_hosted_zone_comment_errors() ::
          prior_request_not_complete() | no_such_hosted_zone() | invalid_input()

  @type update_traffic_policy_comment_errors() ::
          no_such_traffic_policy() | concurrent_modification() | invalid_input()

  @type update_traffic_policy_instance_errors() ::
          conflicting_types()
          | prior_request_not_complete()
          | no_such_traffic_policy()
          | no_such_traffic_policy_instance()
          | invalid_input()

  def metadata do
    %{
      api_version: "2013-04-01",
      content_type: "text/xml",
      credential_scope: "us-east-1",
      endpoint_prefix: "route53",
      global?: true,
      hostname: "route53.amazonaws.com",
      protocol: "rest-xml",
      service_id: "Route 53",
      signature_version: "v4",
      signing_name: "route53",
      target_prefix: nil
    }
  end

  @doc """
  Activates a key-signing key (KSK) so that it can be used for signing by DNSSEC.

  This
  operation changes the KSK status to `ACTIVE`.
  """
  @spec activate_key_signing_key(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          activate_key_signing_key_request(),
          list()
        ) ::
          {:ok, activate_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_key_signing_key_errors()}
  def activate_key_signing_key(%Client{} = client, hosted_zone_id, name, input, options \\ []) do
    url_path =
      "/2013-04-01/keysigningkey/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(name)}/activate"

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
  Associates an Amazon VPC with a private hosted zone.

  To perform the association, the VPC and the private hosted zone must already
  exist. You can't convert a public hosted zone into a private hosted zone.

  If you want to associate a VPC that was created by using one Amazon Web Services
  account with a private hosted zone that was created by using a
  different account, the Amazon Web Services account that created the private
  hosted
  zone must first submit a `CreateVPCAssociationAuthorization` request.
  Then the account that created the VPC must submit an
  `AssociateVPCWithHostedZone` request.

  When granting access, the hosted zone and the Amazon VPC must belong to
  the same partition. A partition is a group of Amazon Web Services Regions. Each
  Amazon Web Services account is scoped to one partition.

  The following are the supported partitions:

    

  `aws` - Amazon Web Services Regions

    

  `aws-cn` - China Regions

    

  `aws-us-gov` - Amazon Web Services GovCloud (US) Region

  For more information, see [Access Management](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  in the *Amazon Web Services General Reference*.
  """
  @spec associate_vpc_with_hosted_zone(
          map(),
          String.t() | atom(),
          associate_vpc_with_hosted_zone_request(),
          list()
        ) ::
          {:ok, associate_vpc_with_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_vpc_with_hosted_zone_errors()}
  def associate_vpc_with_hosted_zone(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/associatevpc"
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
  Creates, changes, or deletes CIDR blocks within a collection.

  Contains authoritative
  IP information mapping blocks to one or multiple locations.

  A change request can update multiple locations in a collection at a time, which
  is
  helpful if you want to move one or more CIDR blocks from one location to another
  in one
  transaction, without downtime.

  ## Limits

  The max number of CIDR blocks included in the request is 1000. As a result, big
  updates
  require multiple API calls.

  ##  PUT and DELETE_IF_EXISTS

  Use `ChangeCidrCollection` to perform the following actions:

    *

  `PUT`: Create a CIDR block within the specified collection.

    *

  ` DELETE_IF_EXISTS`: Delete an existing CIDR block from the
  collection.
  """
  @spec change_cidr_collection(
          map(),
          String.t() | atom(),
          change_cidr_collection_request(),
          list()
        ) ::
          {:ok, change_cidr_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, change_cidr_collection_errors()}
  def change_cidr_collection(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(id)}"
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
  Creates, changes, or deletes a resource record set, which contains authoritative
  DNS
  information for a specified domain name or subdomain name.

  For example, you can use
  `ChangeResourceRecordSets` to create a resource record set that routes
  traffic for test.example.com to a web server that has an IP address of
  192.0.2.44.

  ## Deleting Resource Record Sets

  To delete a resource record set, you must specify all the same values that you
  specified when you created it.

  ## Change Batches and Transactional Changes

  The request body must include a document with a
  `ChangeResourceRecordSetsRequest` element. The request body contains a
  list of change items, known as a change batch. Change batches are considered
  transactional changes. Route 53 validates the changes in the request and then
  either
  makes all or none of the changes in the change batch request. This ensures that
  DNS
  routing isn't adversely affected by partial changes to the resource record sets
  in a
  hosted zone.

  For example, suppose a change batch request contains two changes: it deletes the
  `CNAME` resource record set for www.example.com and creates an alias
  resource record set for www.example.com. If validation for both records
  succeeds, Route
  53 deletes the first resource record set and creates the second resource record
  set in a
  single operation. If validation for either the `DELETE` or the
  `CREATE` action fails, then the request is canceled, and the original
  `CNAME` record continues to exist.

  If you try to delete the same resource record set more than once in a single
  change batch, Route 53 returns an `InvalidChangeBatch` error.

  ## Traffic Flow

  To create resource record sets for complex routing configurations, use either
  the
  traffic flow visual editor in the Route 53 console or the API actions for
  traffic
  policies and traffic policy instances. Save the configuration as a traffic
  policy, then
  associate the traffic policy with one or more domain names (such as example.com)
  or
  subdomain names (such as www.example.com), in the same hosted zone or in
  multiple hosted
  zones. You can roll back the updates if the new configuration isn't performing
  as
  expected. For more information, see [Using Traffic Flow to Route DNS
  Traffic](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html)
  in the *Amazon Route 53 Developer
  Guide*.

  ## Create, Delete, and Upsert

  Use `ChangeResourceRecordsSetsRequest` to perform the following
  actions:

    *

  `CREATE`: Creates a resource record set that has the specified
  values.

    *

  `DELETE`: Deletes an existing resource record set that has the
  specified values.

    *

  `UPSERT`: If a resource set doesn't exist, Route 53 creates it. If a resource
  set exists Route 53 updates it with the values in the request.

  ## Syntaxes for Creating, Updating, and Deleting Resource Record
  Sets

  The syntax for a request depends on the type of resource record set that you
  want to
  create, delete, or update, such as weighted, alias, or failover. The XML
  elements in
  your request must appear in the order listed in the syntax.

  For an example for each type of resource record set, see "Examples."

  Don't refer to the syntax in the "Parameter Syntax" section, which includes
  all of the elements for every kind of resource record set that you can create,
  delete,
  or update by using `ChangeResourceRecordSets`.

  ## Change Propagation to Route 53 DNS Servers

  When you submit a `ChangeResourceRecordSets` request, Route 53 propagates your
  changes to all of the Route 53 authoritative DNS servers managing the hosted
  zone. While
  your changes are propagating, `GetChange` returns a status of
  `PENDING`. When propagation is complete, `GetChange` returns a
  status of `INSYNC`. Changes generally propagate to all Route 53 name servers
  managing the hosted zone within 60 seconds. For more information, see
  [GetChange](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetChange.html). 
  ## Limits on ChangeResourceRecordSets Requests

  For information about the limits on a `ChangeResourceRecordSets` request,
  see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  @spec change_resource_record_sets(
          map(),
          String.t() | atom(),
          change_resource_record_sets_request(),
          list()
        ) ::
          {:ok, change_resource_record_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, change_resource_record_sets_errors()}
  def change_resource_record_sets(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/rrset"
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
  Adds, edits, or deletes tags for a health check or a hosted zone.

  For information about using tags for cost allocation, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management User Guide*.
  """
  @spec change_tags_for_resource(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          change_tags_for_resource_request(),
          list()
        ) ::
          {:ok, change_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, change_tags_for_resource_errors()}
  def change_tags_for_resource(
        %Client{} = client,
        resource_id,
        resource_type,
        input,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/tags/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource_id)}"

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
  Creates a CIDR collection in the current Amazon Web Services account.
  """
  @spec create_cidr_collection(map(), create_cidr_collection_request(), list()) ::
          {:ok, create_cidr_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cidr_collection_errors()}
  def create_cidr_collection(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/cidrcollection"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates a new health check.

  For information about adding health checks to resource record sets, see
  [HealthCheckId](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId) in
  [ChangeResourceRecordSets](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html).

  ## ELB Load Balancers

  If you're registering EC2 instances with an Elastic Load Balancing (ELB) load
  balancer, do not create Amazon Route 53 health checks for the EC2 instances.
  When you
  register an EC2 instance with a load balancer, you configure settings for an ELB
  health
  check, which performs a similar function to a Route 53 health check.

  ## Private Hosted Zones

  You can associate health checks with failover resource record sets in a private
  hosted
  zone. Note the following:

    *
  Route 53 health checkers are outside the VPC. To check the health of an
  endpoint within a VPC by IP address, you must assign a public IP address to the
  instance in the VPC.

    *
  You can configure a health checker to check the health of an external resource
  that the instance relies on, such as a database server.

    *
  You can create a CloudWatch metric, associate an alarm with the metric, and
  then create a health check that is based on the state of the alarm. For example,
  you might create a CloudWatch metric that checks the status of the Amazon EC2
  `StatusCheckFailed` metric, add an alarm to the metric, and then
  create a health check that is based on the state of the alarm. For information
  about creating CloudWatch metrics and alarms by using the CloudWatch console,
  see the [Amazon CloudWatch User
  Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html).
  """
  @spec create_health_check(map(), create_health_check_request(), list()) ::
          {:ok, create_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_health_check_errors()}
  def create_health_check(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/healthcheck"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates a new public or private hosted zone.

  You create records in a public hosted
  zone to define how you want to route traffic on the internet for a domain, such
  as
  example.com, and its subdomains (apex.example.com, acme.example.com). You create
  records
  in a private hosted zone to define how you want to route traffic for a domain
  and its
  subdomains within one or more Amazon Virtual Private Clouds (Amazon VPCs).

  You can't convert a public hosted zone to a private hosted zone or vice versa.
  Instead, you must create a new hosted zone with the same name and create new
  resource record sets.

  For more information about charges for hosted zones, see [Amazon Route 53 Pricing](http://aws.amazon.com/route53/pricing/).

  Note the following:

    *
  You can't create a hosted zone for a top-level domain (TLD) such as
  .com.

    *
  For public hosted zones, Route 53 automatically creates a default SOA record
  and four NS records for the zone. For more information about SOA and NS records,
  see [NS and SOA Records that Route 53 Creates for a Hosted
  Zone](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html)
  in the
  *Amazon Route 53 Developer Guide*.

  If you want to use the same name servers for multiple public hosted zones, you
  can optionally associate a reusable delegation set with the hosted zone. See the
  `DelegationSetId` element.

    *
  If your domain is registered with a registrar other than Route 53,
  you must update the name servers with your registrar to make Route 53 the DNS
  service for the domain. For more information, see [Migrating DNS Service for an Existing Domain to Amazon
  Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html)
  in the
  *Amazon Route 53 Developer Guide*.

  When you submit a `CreateHostedZone` request, the initial status of the
  hosted zone is `PENDING`. For public hosted zones, this means that the NS and
  SOA records are not yet available on all Route 53 DNS servers. When the NS and
  SOA records are available, the status of the zone changes to `INSYNC`.

  The `CreateHostedZone` request requires the caller to have an
  `ec2:DescribeVpcs` permission.

  When creating private hosted zones, the Amazon VPC must belong to the same
  partition where the hosted zone is created. A partition is a group of Amazon Web
  Services Regions. Each Amazon Web Services account is scoped to one
  partition.

  The following are the supported partitions:

    

  `aws` - Amazon Web Services Regions

    

  `aws-cn` - China Regions

    

  `aws-us-gov` - Amazon Web Services GovCloud (US) Region

  For more information, see [Access Management](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  in the *Amazon Web Services General Reference*.
  """
  @spec create_hosted_zone(map(), create_hosted_zone_request(), list()) ::
          {:ok, create_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hosted_zone_errors()}
  def create_hosted_zone(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates a new key-signing key (KSK) associated with a hosted zone.

  You can only have
  two KSKs per hosted zone.
  """
  @spec create_key_signing_key(map(), create_key_signing_key_request(), list()) ::
          {:ok, create_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_key_signing_key_errors()}
  def create_key_signing_key(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/keysigningkey"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates a configuration for DNS query logging.

  After you create a query logging
  configuration, Amazon Route 53 begins to publish log data to an Amazon
  CloudWatch Logs
  log group.

  DNS query logs contain information about the queries that Route 53 receives for
  a
  specified public hosted zone, such as the following:

    *
  Route 53 edge location that responded to the DNS query

    *
  Domain or subdomain that was requested

    *
  DNS record type, such as A or AAAA

    *
  DNS response code, such as `NoError` or
  `ServFail`

  ## Definitions

  ### Log Group and Resource Policy

  Before you create a query logging configuration, perform the following
  operations.

  If you create a query logging configuration using the Route 53
  console, Route 53 performs these operations automatically.

    
  Create a CloudWatch Logs log group, and make note of the ARN,
  which you specify when you create a query logging configuration.
  Note the following:

      
  You must create the log group in the us-east-1
  region.

      
  You must use the same Amazon Web Services account to create
  the log group and the hosted zone that you want to configure
  query logging for.

      
  When you create log groups for query logging, we recommend
  that you use a consistent prefix, for example:

  ```
  /aws/route53/*hosted zone
  name*

  ```

  In the next step, you'll create a resource policy, which
  controls access to one or more log groups and the associated
  Amazon Web Services resources, such as Route 53 hosted
  zones. There's a limit on the number of resource policies
  that you can create, so we recommend that you use a
  consistent prefix so you can use the same resource policy
  for all the log groups that you create for query
  logging.

    
  Create a CloudWatch Logs resource policy, and give it the
  permissions that Route 53 needs to create log streams and to send
  query logs to log streams. You must create the CloudWatch Logs resource policy
  in the us-east-1
  region. For the value of `Resource`,
  specify the ARN for the log group that you created in the previous
  step. To use the same resource policy for all the CloudWatch Logs
  log groups that you created for query logging configurations,
  replace the hosted zone name with `*`, for
  example:

  `arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*`

  To avoid the confused deputy problem, a security issue where an
  entity without a permission for an action can coerce a
  more-privileged entity to perform it, you can optionally limit the
  permissions that a service has to a resource in a resource-based
  policy by supplying the following values:

      
  For `aws:SourceArn`, supply the hosted zone ARN
  used in creating the query logging configuration. For
  example,

  ```
  aws:SourceArn:
  arn:aws:route53:::hostedzone/hosted zone
  ID
  ```

  .

      
  For `aws:SourceAccount`, supply the account ID
  for the account that creates the query logging
  configuration. For example,
  `aws:SourceAccount:111111111111`.

  For more information, see [The confused deputy
  problem](https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html)
  in the *Amazon Web Services
  IAM User Guide*.

  You can't use the CloudWatch console to create or edit a
  resource policy. You must use the CloudWatch API, one of the
  Amazon Web Services SDKs, or the CLI.

  ### Log Streams and Edge Locations

  When Route 53 finishes creating the configuration for DNS query logging,
  it does the following:

    
  Creates a log stream for an edge location the first time that the
  edge location responds to DNS queries for the specified hosted zone.
  That log stream is used to log all queries that Route 53 responds to
  for that edge location.

    
  Begins to send query logs to the applicable log stream.

  The name of each log stream is in the following format:

  ```

  *hosted zone ID*/*edge location
  code*

  ```

  The edge location code is a three-letter code and an arbitrarily assigned
  number, for example, DFW3. The three-letter code typically corresponds with
  the International Air Transport Association airport code for an airport near
  the edge location. (These abbreviations might change in the future.) For a
  list of edge locations, see "The Route 53 Global Network" on the [Route 53 Product Details](http://aws.amazon.com/route53/details/)
  page.

  ### Queries That Are Logged

  Query logs contain only the queries that DNS resolvers forward to Route
  53. If a DNS resolver has already cached the response to a query (such as
  the IP address for a load balancer for example.com), the resolver will
  continue to return the cached response. It doesn't forward another query to
  Route 53 until the TTL for the corresponding resource record set expires.
  Depending on how many DNS queries are submitted for a resource record set,
  and depending on the TTL for that resource record set, query logs might
  contain information about only one query out of every several thousand
  queries that are submitted to DNS. For more information about how DNS works,
  see [Routing Internet Traffic to Your Website or Web
  Application](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html)
  in the
  *Amazon Route 53 Developer Guide*.

  ### Log File Format

  For a list of the values in each query log and the format of each value,
  see [Logging DNS Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html)
  in the *Amazon Route 53 Developer
  Guide*.

  ### Pricing

  For information about charges for query logs, see [Amazon CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  ### How to Stop Logging

  If you want Route 53 to stop sending query logs to CloudWatch Logs, delete
  the query logging configuration. For more information, see
  [DeleteQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html).
  """
  @spec create_query_logging_config(map(), create_query_logging_config_request(), list()) ::
          {:ok, create_query_logging_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_query_logging_config_errors()}
  def create_query_logging_config(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/queryloggingconfig"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates a delegation set (a group of four name servers) that can be reused by
  multiple
  hosted zones that were created by the same Amazon Web Services account.

  You can also create a reusable delegation set that uses the four name servers
  that are
  associated with an existing hosted zone. Specify the hosted zone ID in the
  `CreateReusableDelegationSet` request.

  You can't associate a reusable delegation set with a private hosted zone.

  For information about using a reusable delegation set to configure white label
  name
  servers, see [Configuring White Label Name
  Servers](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html).

  The process for migrating existing hosted zones to use a reusable delegation set
  is
  comparable to the process for configuring white label name servers. You need to
  perform
  the following steps:

    1.
  Create a reusable delegation set.

    2.
  Recreate hosted zones, and reduce the TTL to 60 seconds or less.

    3.
  Recreate resource record sets in the new hosted zones.

    4.
  Change the registrar's name servers to use the name servers for the new hosted
  zones.

    5.
  Monitor traffic for the website or application.

    6.
  Change TTLs back to their original values.

  If you want to migrate existing hosted zones to use a reusable delegation set,
  the
  existing hosted zones can't use any of the name servers that are assigned to the
  reusable delegation set. If one or more hosted zones do use one or more name
  servers
  that are assigned to the reusable delegation set, you can do one of the
  following:

    *
  For small numbers of hosted zones—up to a few hundred—it's
  relatively easy to create reusable delegation sets until you get one that has
  four name servers that don't overlap with any of the name servers in your hosted
  zones.

    *
  For larger numbers of hosted zones, the easiest solution is to use more than
  one reusable delegation set.

    *
  For larger numbers of hosted zones, you can also migrate hosted zones that
  have overlapping name servers to hosted zones that don't have overlapping name
  servers, then migrate the hosted zones again to use the reusable delegation
  set.
  """
  @spec create_reusable_delegation_set(map(), create_reusable_delegation_set_request(), list()) ::
          {:ok, create_reusable_delegation_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_reusable_delegation_set_errors()}
  def create_reusable_delegation_set(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/delegationset"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates a traffic policy, which you use to create multiple DNS resource record
  sets
  for one domain name (such as example.com) or one subdomain name (such as
  www.example.com).
  """
  @spec create_traffic_policy(map(), create_traffic_policy_request(), list()) ::
          {:ok, create_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_traffic_policy_errors()}
  def create_traffic_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicy"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates resource record sets in a specified hosted zone based on the settings in
  a
  specified traffic policy version.

  In addition, `CreateTrafficPolicyInstance`
  associates the resource record sets with a specified domain name (such as
  example.com)
  or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS
  queries for
  the domain or subdomain name by using the resource record sets that
  `CreateTrafficPolicyInstance` created.

  After you submit an `CreateTrafficPolicyInstance` request, there's a
  brief delay while Amazon Route 53 creates the resource record sets that are
  specified in the traffic policy definition.
  Use `GetTrafficPolicyInstance` with the `id` of new traffic policy instance to
  confirm that the `CreateTrafficPolicyInstance`
  request completed successfully. For more information, see the
  `State` response element.
  """
  @spec create_traffic_policy_instance(map(), create_traffic_policy_instance_request(), list()) ::
          {:ok, create_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_traffic_policy_instance_errors()}
  def create_traffic_policy_instance(%Client{} = client, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Creates a new version of an existing traffic policy.

  When you create a new version of
  a traffic policy, you specify the ID of the traffic policy that you want to
  update and a
  JSON-formatted document that describes the new version. You use traffic policies
  to
  create multiple DNS resource record sets for one domain name (such as
  example.com) or
  one subdomain name (such as www.example.com). You can create a maximum of 1000
  versions
  of a traffic policy. If you reach the limit and need to create another version,
  you'll
  need to start a new traffic policy.
  """
  @spec create_traffic_policy_version(
          map(),
          String.t() | atom(),
          create_traffic_policy_version_request(),
          list()
        ) ::
          {:ok, create_traffic_policy_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_traffic_policy_version_errors()}
  def create_traffic_policy_version(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

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
  Authorizes the Amazon Web Services account that created a specified VPC to
  submit an
  `AssociateVPCWithHostedZone` request to associate the VPC with a
  specified hosted zone that was created by a different account.

  To submit a
  `CreateVPCAssociationAuthorization` request, you must use the account
  that created the hosted zone. After you authorize the association, use the
  account that
  created the VPC to submit an `AssociateVPCWithHostedZone` request.

  If you want to associate multiple VPCs that you created by using one account
  with
  a hosted zone that you created by using a different account, you must submit one
  authorization request for each VPC.
  """
  @spec create_vpc_association_authorization(
          map(),
          String.t() | atom(),
          create_vpc_association_authorization_request(),
          list()
        ) ::
          {:ok, create_vpc_association_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_association_authorization_errors()}
  def create_vpc_association_authorization(
        %Client{} = client,
        hosted_zone_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/authorizevpcassociation"

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
  Deactivates a key-signing key (KSK) so that it will not be used for signing by
  DNSSEC.

  This operation changes the KSK status to `INACTIVE`.
  """
  @spec deactivate_key_signing_key(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          deactivate_key_signing_key_request(),
          list()
        ) ::
          {:ok, deactivate_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deactivate_key_signing_key_errors()}
  def deactivate_key_signing_key(%Client{} = client, hosted_zone_id, name, input, options \\ []) do
    url_path =
      "/2013-04-01/keysigningkey/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(name)}/deactivate"

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
  Deletes a CIDR collection in the current Amazon Web Services account.

  The collection
  must be empty before it can be deleted.
  """
  @spec delete_cidr_collection(
          map(),
          String.t() | atom(),
          delete_cidr_collection_request(),
          list()
        ) ::
          {:ok, delete_cidr_collection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cidr_collection_errors()}
  def delete_cidr_collection(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(id)}"
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
  Deletes a health check.

  Amazon Route 53 does not prevent you from deleting a health check even if the
  health check is associated with one or more resource record sets. If you delete
  a
  health check and you don't update the associated resource record sets, the
  future
  status of the health check can't be predicted and may change. This will affect
  the
  routing of DNS queries for your DNS failover configuration. For more
  information,
  see [Replacing and Deleting Health Checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html)
  in the *Amazon Route 53
  Developer Guide*.

  If you're using Cloud Map and you configured Cloud Map to create a Route 53
  health check when you register an instance, you can't use the Route 53
  `DeleteHealthCheck` command to delete the health check. The health check
  is deleted automatically when you deregister the instance; there can be a delay
  of
  several hours before the health check is deleted from Route 53.
  """
  @spec delete_health_check(map(), String.t() | atom(), delete_health_check_request(), list()) ::
          {:ok, delete_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_health_check_errors()}
  def delete_health_check(%Client{} = client, health_check_id, input, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}"
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
  Deletes a hosted zone.

  If the hosted zone was created by another service, such as Cloud Map, see
  [Deleting Public Hosted Zones That Were Created by Another Service](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service)
  in the
  *Amazon Route 53 Developer Guide* for information
  about how to delete it. (The process is the same for public and private hosted
  zones
  that were created by another service.)

  If you want to keep your domain registration but you want to stop routing
  internet
  traffic to your website or web application, we recommend that you delete
  resource record
  sets in the hosted zone instead of deleting the hosted zone.

  If you delete a hosted zone, you can't undelete it. You must create a new hosted
  zone and update the name servers for your domain registration, which can require
  up
  to 48 hours to take effect. (If you delegated responsibility for a subdomain to
  a
  hosted zone and you delete the child hosted zone, you must update the name
  servers
  in the parent hosted zone.) In addition, if you delete a hosted zone, someone
  could
  hijack the domain and route traffic to their own resources using your domain
  name.

  If you want to avoid the monthly charge for the hosted zone, you can transfer
  DNS
  service for the domain to a free DNS service. When you transfer DNS service, you
  have to
  update the name servers for the domain registration. If the domain is registered
  with
  Route 53, see
  [UpdateDomainNameservers](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html) for information about how to replace Route 53 name servers with name servers for
  the new DNS service. If the domain is
  registered with another registrar, use the method provided by the registrar to
  update
  name servers for the domain registration. For more information, perform an
  internet
  search on "free DNS service."

  You can delete a hosted zone only if it contains only the default SOA record and
  NS
  resource record sets. If the hosted zone contains other resource record sets,
  you must
  delete them before you can delete the hosted zone. If you try to delete a hosted
  zone
  that contains other resource record sets, the request fails, and Route 53
  returns a `HostedZoneNotEmpty` error. For information about deleting records
  from your hosted zone, see
  [ChangeResourceRecordSets](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html).

  To verify that the hosted zone has been deleted, do one of the following:

    *
  Use the `GetHostedZone` action to request information about the
  hosted zone.

    *
  Use the `ListHostedZones` action to get a list of the hosted zones
  associated with the current Amazon Web Services account.
  """
  @spec delete_hosted_zone(map(), String.t() | atom(), delete_hosted_zone_request(), list()) ::
          {:ok, delete_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hosted_zone_errors()}
  def delete_hosted_zone(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(id)}"
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
  Deletes a key-signing key (KSK).

  Before you can delete a KSK, you must deactivate it.
  The KSK must be deactivated before you can delete it regardless of whether the
  hosted
  zone is enabled for DNSSEC signing.

  You can use
  [DeactivateKeySigningKey](https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeactivateKeySigningKey.html) to deactivate the key before you delete it.

  Use
  [GetDNSSEC](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetDNSSEC.html)
  to verify that the KSK is in an `INACTIVE`
  status.
  """
  @spec delete_key_signing_key(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_key_signing_key_request(),
          list()
        ) ::
          {:ok, delete_key_signing_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_key_signing_key_errors()}
  def delete_key_signing_key(%Client{} = client, hosted_zone_id, name, input, options \\ []) do
    url_path =
      "/2013-04-01/keysigningkey/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(name)}"

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
  Deletes a configuration for DNS query logging.

  If you delete a configuration, Amazon
  Route 53 stops sending query logs to CloudWatch Logs. Route 53 doesn't delete
  any logs
  that are already in CloudWatch Logs.

  For more information about DNS query logs, see
  [CreateQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html).
  """
  @spec delete_query_logging_config(
          map(),
          String.t() | atom(),
          delete_query_logging_config_request(),
          list()
        ) ::
          {:ok, delete_query_logging_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_query_logging_config_errors()}
  def delete_query_logging_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/queryloggingconfig/#{AWS.Util.encode_uri(id)}"
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
  Deletes a reusable delegation set.

  You can delete a reusable delegation set only if it isn't associated with any
  hosted zones.

  To verify that the reusable delegation set is not associated with any hosted
  zones,
  submit a
  [GetReusableDelegationSet](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSet.html)
  request and specify the ID of the reusable
  delegation set that you want to delete.
  """
  @spec delete_reusable_delegation_set(
          map(),
          String.t() | atom(),
          delete_reusable_delegation_set_request(),
          list()
        ) ::
          {:ok, delete_reusable_delegation_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_reusable_delegation_set_errors()}
  def delete_reusable_delegation_set(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/delegationset/#{AWS.Util.encode_uri(id)}"
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
  Deletes a traffic policy.

  When you delete a traffic policy, Route 53 sets a flag on the policy to indicate
  that
  it has been deleted. However, Route 53 never fully deletes the traffic policy.
  Note the
  following:

    *
  Deleted traffic policies aren't listed if you run
  [ListTrafficPolicies](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListTrafficPolicies.html). 

    *
  There's no way to get a list of deleted policies.

    *
  If you retain the ID of the policy, you can get information about the policy,
  including the traffic policy document, by running
  [GetTrafficPolicy](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetTrafficPolicy.html).
  """
  @spec delete_traffic_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_traffic_policy_request(),
          list()
        ) ::
          {:ok, delete_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_traffic_policy_errors()}
  def delete_traffic_policy(%Client{} = client, id, version, input, options \\ []) do
    url_path =
      "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}/#{AWS.Util.encode_uri(version)}"

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
  Deletes a traffic policy instance and all of the resource record sets that
  Amazon
  Route 53 created when you created the instance.

  In the Route 53 console, traffic policy instances are known as policy
  records.
  """
  @spec delete_traffic_policy_instance(
          map(),
          String.t() | atom(),
          delete_traffic_policy_instance_request(),
          list()
        ) ::
          {:ok, delete_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_traffic_policy_instance_errors()}
  def delete_traffic_policy_instance(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance/#{AWS.Util.encode_uri(id)}"
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
  Removes authorization to submit an `AssociateVPCWithHostedZone` request to
  associate a specified VPC with a hosted zone that was created by a different
  account.

  You must use the account that created the hosted zone to submit a
  `DeleteVPCAssociationAuthorization` request.

  Sending this request only prevents the Amazon Web Services account that created
  the
  VPC from associating the VPC with the Amazon Route 53 hosted zone in the future.
  If
  the VPC is already associated with the hosted zone,
  `DeleteVPCAssociationAuthorization` won't disassociate the VPC from
  the hosted zone. If you want to delete an existing association, use
  `DisassociateVPCFromHostedZone`.
  """
  @spec delete_vpc_association_authorization(
          map(),
          String.t() | atom(),
          delete_vpc_association_authorization_request(),
          list()
        ) ::
          {:ok, delete_vpc_association_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_association_authorization_errors()}
  def delete_vpc_association_authorization(
        %Client{} = client,
        hosted_zone_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/deauthorizevpcassociation"

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
  Disables DNSSEC signing in a specific hosted zone.

  This action does not deactivate any
  key-signing keys (KSKs) that are active in the hosted zone.
  """
  @spec disable_hosted_zone_dns_sec(
          map(),
          String.t() | atom(),
          disable_hosted_zone_dns_sec_request(),
          list()
        ) ::
          {:ok, disable_hosted_zone_dns_sec_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_hosted_zone_dns_sec_errors()}
  def disable_hosted_zone_dns_sec(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/disable-dnssec"
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
  Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon Route
  53
  private hosted zone.

  Note the following:

    *
  You can't disassociate the last Amazon VPC from a private hosted zone.

    *
  You can't convert a private hosted zone into a public hosted zone.

    *
  You can submit a `DisassociateVPCFromHostedZone` request using
  either the account that created the hosted zone or the account that created the
  Amazon VPC.

    *
  Some services, such as Cloud Map and Amazon Elastic File System
  (Amazon EFS) automatically create hosted zones and associate VPCs with the
  hosted zones. A service can create a hosted zone using your account or using its
  own account. You can disassociate a VPC from a hosted zone only if the service
  created the hosted zone using your account.

  When you run
  [DisassociateVPCFromHostedZone](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListHostedZonesByVPC.html), if the hosted zone has a value for
  `OwningAccount`, you can use
  `DisassociateVPCFromHostedZone`. If the hosted zone has a value
  for `OwningService`, you can't use
  `DisassociateVPCFromHostedZone`.

  When revoking access, the hosted zone and the Amazon VPC must belong to
  the same partition. A partition is a group of Amazon Web Services Regions. Each
  Amazon Web Services account is scoped to one partition.

  The following are the supported partitions:

    

  `aws` - Amazon Web Services Regions

    

  `aws-cn` - China Regions

    

  `aws-us-gov` - Amazon Web Services GovCloud (US) Region

  For more information, see [Access
  Management](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  in the *Amazon Web Services General Reference*.
  """
  @spec disassociate_vpc_from_hosted_zone(
          map(),
          String.t() | atom(),
          disassociate_vpc_from_hosted_zone_request(),
          list()
        ) ::
          {:ok, disassociate_vpc_from_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_vpc_from_hosted_zone_errors()}
  def disassociate_vpc_from_hosted_zone(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/disassociatevpc"
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
  Enables DNSSEC signing in a specific hosted zone.
  """
  @spec enable_hosted_zone_dns_sec(
          map(),
          String.t() | atom(),
          enable_hosted_zone_dns_sec_request(),
          list()
        ) ::
          {:ok, enable_hosted_zone_dns_sec_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_hosted_zone_dns_sec_errors()}
  def enable_hosted_zone_dns_sec(%Client{} = client, hosted_zone_id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/enable-dnssec"
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
  Gets the specified limit for the current account, for example, the maximum
  number of
  health checks that you can create using the account.

  For the default limit, see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html) in the
  *Amazon Route 53 Developer Guide*. To request a higher limit,
  [open a
  case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53).

  You can also view account limits in Amazon Web Services Trusted Advisor. Sign in
  to
  the Amazon Web Services Management Console and open the Trusted Advisor console
  at
  [https://console.aws.amazon.com/trustedadvisor/](https://console.aws.amazon.com/trustedadvisor).
  Then choose **Service limits** in the navigation pane.
  """
  @spec get_account_limit(map(), String.t() | atom(), list()) ::
          {:ok, get_account_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_limit_errors()}
  def get_account_limit(%Client{} = client, type, options \\ []) do
    url_path = "/2013-04-01/accountlimit/#{AWS.Util.encode_uri(type)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current status of a change batch request.

  The status is one of the
  following values:

    *

  `PENDING` indicates that the changes in this request have not
  propagated to all Amazon Route 53 DNS servers managing the hosted zone. This is
  the initial status of all
  change batch requests.

    *

  `INSYNC` indicates that the changes have propagated to all Route 53
  DNS servers managing the hosted zone.
  """
  @spec get_change(map(), String.t() | atom(), list()) ::
          {:ok, get_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_change_errors()}
  def get_change(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/change/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Route 53 does not perform authorization for this API because it retrieves
  information
  that is already available to the public.

  `GetCheckerIpRanges` still works, but we recommend that you download
  ip-ranges.json, which includes IP address ranges for all Amazon Web Services
  services. For more information, see [IP Address Ranges of Amazon Route 53
  Servers](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html)
  in the *Amazon Route 53 Developer
  Guide*.
  """
  @spec get_checker_ip_ranges(map(), list()) ::
          {:ok, get_checker_ip_ranges_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_checker_ip_ranges(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/checkeripranges"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about DNSSEC for a specific hosted zone, including the
  key-signing
  keys (KSKs) in the hosted zone.
  """
  @spec get_dns_sec(map(), String.t() | atom(), list()) ::
          {:ok, get_dns_sec_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dns_sec_errors()}
  def get_dns_sec(%Client{} = client, hosted_zone_id, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/dnssec"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about whether a specified geographic location is supported for
  Amazon
  Route 53 geolocation resource record sets.

  Route 53 does not perform authorization for this API because it retrieves
  information
  that is already available to the public.

  Use the following syntax to determine whether a continent is supported for
  geolocation:

  ```
  GET /2013-04-01/geolocation?continentcode=*two-letter abbreviation for
  a continent*

  ```

  Use the following syntax to determine whether a country is supported for
  geolocation:

  ```
  GET /2013-04-01/geolocation?countrycode=*two-character country
  code*

  ```

  Use the following syntax to determine whether a subdivision of a country is
  supported
  for geolocation:

  ```
  GET /2013-04-01/geolocation?countrycode=*two-character country
  code*&subdivisioncode=*subdivision
  code*

  ```
  """
  @spec get_geo_location(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_geo_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_geo_location_errors()}
  def get_geo_location(
        %Client{} = client,
        continent_code \\ nil,
        country_code \\ nil,
        subdivision_code \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/geolocation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(subdivision_code) do
        [{"subdivisioncode", subdivision_code} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(country_code) do
        [{"countrycode", country_code} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(continent_code) do
        [{"continentcode", continent_code} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified health check.
  """
  @spec get_health_check(map(), String.t() | atom(), list()) ::
          {:ok, get_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_health_check_errors()}
  def get_health_check(%Client{} = client, health_check_id, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the number of health checks that are associated with the current
  Amazon Web Services account.
  """
  @spec get_health_check_count(map(), list()) ::
          {:ok, get_health_check_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_health_check_count(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/healthcheckcount"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the reason that a specified health check failed most recently.
  """
  @spec get_health_check_last_failure_reason(map(), String.t() | atom(), list()) ::
          {:ok, get_health_check_last_failure_reason_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_health_check_last_failure_reason_errors()}
  def get_health_check_last_failure_reason(%Client{} = client, health_check_id, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}/lastfailurereason"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets status of a specified health check.

  This API is intended for use during development to diagnose behavior. It doesn’t
  support production use-cases with high query rates that require immediate and
  actionable responses.
  """
  @spec get_health_check_status(map(), String.t() | atom(), list()) ::
          {:ok, get_health_check_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_health_check_status_errors()}
  def get_health_check_status(%Client{} = client, health_check_id, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}/status"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified hosted zone including the four name servers
  assigned to the hosted zone.

  `` returns the VPCs associated with the specified hosted zone and does not
  reflect the VPC
  associations by Route 53 Profiles. To get the associations to a Profile, call
  the
  [ListProfileAssociations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_ListProfileAssociations.html)
  API.
  """
  @spec get_hosted_zone(map(), String.t() | atom(), list()) ::
          {:ok, get_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hosted_zone_errors()}
  def get_hosted_zone(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the number of hosted zones that are associated with the current Amazon
  Web Services account.
  """
  @spec get_hosted_zone_count(map(), list()) ::
          {:ok, get_hosted_zone_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hosted_zone_count_errors()}
  def get_hosted_zone_count(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/hostedzonecount"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the specified limit for a specified hosted zone, for example, the maximum
  number
  of records that you can create in the hosted zone.

  For the default limit, see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html) in the
  *Amazon Route 53 Developer Guide*. To request a higher limit,
  [open a
  case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53).
  """
  @spec get_hosted_zone_limit(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_hosted_zone_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hosted_zone_limit_errors()}
  def get_hosted_zone_limit(%Client{} = client, hosted_zone_id, type, options \\ []) do
    url_path =
      "/2013-04-01/hostedzonelimit/#{AWS.Util.encode_uri(hosted_zone_id)}/#{AWS.Util.encode_uri(type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified configuration for DNS query logging.

  For more information about DNS query logs, see
  [CreateQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html) and [Logging DNS
  Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html).
  """
  @spec get_query_logging_config(map(), String.t() | atom(), list()) ::
          {:ok, get_query_logging_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_logging_config_errors()}
  def get_query_logging_config(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/queryloggingconfig/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specified reusable delegation set, including the
  four
  name servers that are assigned to the delegation set.
  """
  @spec get_reusable_delegation_set(map(), String.t() | atom(), list()) ::
          {:ok, get_reusable_delegation_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reusable_delegation_set_errors()}
  def get_reusable_delegation_set(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/delegationset/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the maximum number of hosted zones that you can associate with the
  specified
  reusable delegation set.

  For the default limit, see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html) in the
  *Amazon Route 53 Developer Guide*. To request a higher limit,
  [open a
  case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53).
  """
  @spec get_reusable_delegation_set_limit(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_reusable_delegation_set_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reusable_delegation_set_limit_errors()}
  def get_reusable_delegation_set_limit(
        %Client{} = client,
        delegation_set_id,
        type,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/reusabledelegationsetlimit/#{AWS.Util.encode_uri(delegation_set_id)}/#{AWS.Util.encode_uri(type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific traffic policy version.

  For information about how of deleting a traffic policy affects the response from
  `GetTrafficPolicy`, see
  [DeleteTrafficPolicy](https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html).
  """
  @spec get_traffic_policy(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_traffic_policy_errors()}
  def get_traffic_policy(%Client{} = client, id, version, options \\ []) do
    url_path =
      "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}/#{AWS.Util.encode_uri(version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified traffic policy instance.

  Use `GetTrafficPolicyInstance` with the `id` of new traffic policy instance to
  confirm that the
  `CreateTrafficPolicyInstance` or an `UpdateTrafficPolicyInstance` request
  completed successfully.
  For more information, see the `State` response
  element.

  In the Route 53 console, traffic policy instances are known as policy
  records.
  """
  @spec get_traffic_policy_instance(map(), String.t() | atom(), list()) ::
          {:ok, get_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_traffic_policy_instance_errors()}
  def get_traffic_policy_instance(%Client{} = client, id, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the number of traffic policy instances that are associated with the current
  Amazon Web Services account.
  """
  @spec get_traffic_policy_instance_count(map(), list()) ::
          {:ok, get_traffic_policy_instance_count_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_traffic_policy_instance_count(%Client{} = client, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstancecount"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of location objects and their CIDR blocks.
  """
  @spec list_cidr_blocks(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_cidr_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cidr_blocks_errors()}
  def list_cidr_blocks(
        %Client{} = client,
        collection_id,
        location_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(collection_id)}/cidrblocks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nexttoken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxresults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(location_name) do
        [{"location", location_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of CIDR collections in the Amazon Web Services account
  (metadata only).
  """
  @spec list_cidr_collections(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_cidr_collections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cidr_collections_errors()}
  def list_cidr_collections(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/cidrcollection"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nexttoken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxresults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of CIDR locations for the given collection (metadata
  only,
  does not include CIDR blocks).
  """
  @spec list_cidr_locations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_cidr_locations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cidr_locations_errors()}
  def list_cidr_locations(
        %Client{} = client,
        collection_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/cidrcollection/#{AWS.Util.encode_uri(collection_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nexttoken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxresults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of supported geographic locations.

  Countries are listed first, and continents are listed last. If Amazon Route 53
  supports subdivisions for a country (for example, states or provinces), the
  subdivisions
  for that country are listed in alphabetical order immediately after the
  corresponding
  country.

  Route 53 does not perform authorization for this API because it retrieves
  information
  that is already available to the public.

  For a list of supported geolocation codes, see the
  [GeoLocation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html)
  data
  type.
  """
  @spec list_geo_locations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_geo_locations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_geo_locations_errors()}
  def list_geo_locations(
        %Client{} = client,
        max_items \\ nil,
        start_continent_code \\ nil,
        start_country_code \\ nil,
        start_subdivision_code \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/geolocations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_subdivision_code) do
        [{"startsubdivisioncode", start_subdivision_code} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_country_code) do
        [{"startcountrycode", start_country_code} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_continent_code) do
        [{"startcontinentcode", start_continent_code} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a list of the health checks that are associated with the current Amazon
  Web Services account.
  """
  @spec list_health_checks(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_health_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_health_checks_errors()}
  def list_health_checks(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2013-04-01/healthcheck"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of the public and private hosted zones that are associated with
  the
  current Amazon Web Services account.

  The response includes a `HostedZones`
  child element for each hosted zone.

  Amazon Route 53 returns a maximum of 100 items in each response. If you have a
  lot of
  hosted zones, you can use the `maxitems` parameter to list them in groups of
  up to 100.
  """
  @spec list_hosted_zones(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_hosted_zones_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hosted_zones_errors()}
  def list_hosted_zones(
        %Client{} = client,
        delegation_set_id \\ nil,
        hosted_zone_type \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/hostedzone"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(hosted_zone_type) do
        [{"hostedzonetype", hosted_zone_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(delegation_set_id) do
        [{"delegationsetid", delegation_set_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of your hosted zones in lexicographic order.

  The response includes a
  `HostedZones` child element for each hosted zone created by the current
  Amazon Web Services account.

  `ListHostedZonesByName` sorts hosted zones by name with the labels
  reversed. For example:

  `com.example.www.`

  Note the trailing dot, which can change the sort order in some circumstances.

  If the domain name includes escape characters or Punycode,
  `ListHostedZonesByName` alphabetizes the domain name using the escaped or
  Punycoded value, which is the format that Amazon Route 53 saves in its database.
  For
  example, to create a hosted zone for exämple.com, you specify ex\344mple.com for
  the domain name. `ListHostedZonesByName` alphabetizes it as:

  `com.ex\344mple.`

  The labels are reversed and alphabetized using the escaped value. For more
  information
  about valid domain name formats, including internationalized domain names, see
  [DNS Domain Name
  Format](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html)
  in the *Amazon Route 53 Developer
  Guide*.

  Route 53 returns up to 100 items in each response. If you have a lot of hosted
  zones,
  use the `MaxItems` parameter to list them in groups of up to 100. The
  response includes values that help navigate from one group of `MaxItems`
  hosted zones to the next:

    *
  The `DNSName` and `HostedZoneId` elements in the
  response contain the values, if any, specified for the `dnsname` and
  `hostedzoneid` parameters in the request that produced the
  current response.

    *
  The `MaxItems` element in the response contains the value, if any,
  that you specified for the `maxitems` parameter in the request that
  produced the current response.

    *
  If the value of `IsTruncated` in the response is true, there are
  more hosted zones associated with the current Amazon Web Services account.

  If `IsTruncated` is false, this response includes the last hosted
  zone that is associated with the current account. The `NextDNSName`
  element and `NextHostedZoneId` elements are omitted from the
  response.

    *
  The `NextDNSName` and `NextHostedZoneId` elements in the
  response contain the domain name and the hosted zone ID of the next hosted zone
  that is associated with the current Amazon Web Services account. If you want to
  list more hosted zones, make another call to `ListHostedZonesByName`,
  and specify the value of `NextDNSName` and
  `NextHostedZoneId` in the `dnsname` and
  `hostedzoneid` parameters, respectively.
  """
  @spec list_hosted_zones_by_name(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_hosted_zones_by_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hosted_zones_by_name_errors()}
  def list_hosted_zones_by_name(
        %Client{} = client,
        dns_name \\ nil,
        hosted_zone_id \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/hostedzonesbyname"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(hosted_zone_id) do
        [{"hostedzoneid", hosted_zone_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dns_name) do
        [{"dnsname", dns_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the private hosted zones that a specified VPC is associated with,
  regardless
  of which Amazon Web Services account or Amazon Web Services service owns the
  hosted zones.

  The `HostedZoneOwner` structure in the response contains one of the following
  values:

    *
  An `OwningAccount` element, which contains the account number of
  either the current Amazon Web Services account or another Amazon Web Services
  account. Some services, such as Cloud Map, create
  hosted zones using the current account.

    *
  An `OwningService` element, which identifies the Amazon Web Services
  service that created and owns the hosted zone. For example, if a hosted zone was
  created by Amazon Elastic File System (Amazon EFS), the value of
  `Owner` is `efs.amazonaws.com`.

  `ListHostedZonesByVPC` returns the hosted zones associated with the specified
  VPC and does not reflect the hosted zone
  associations to VPCs via Route 53 Profiles. To get the associations to a
  Profile, call the
  [ListProfileResourceAssociations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_ListProfileResourceAssociations.html) API.

  When listing private hosted zones, the hosted zone and the Amazon VPC must
  belong to the same partition where the hosted zones were created. A partition is
  a
  group of Amazon Web Services Regions. Each Amazon Web Services account is scoped
  to
  one partition.

  The following are the supported partitions:

    

  `aws` - Amazon Web Services Regions

    

  `aws-cn` - China Regions

    

  `aws-us-gov` - Amazon Web Services GovCloud (US) Region

  For more information, see [Access
  Management](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  in the *Amazon Web Services General Reference*.
  """
  @spec list_hosted_zones_by_vpc(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_hosted_zones_by_vpc_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hosted_zones_by_vpc_errors()}
  def list_hosted_zones_by_vpc(
        %Client{} = client,
        max_items \\ nil,
        next_token \\ nil,
        vpc_id,
        vpc_region,
        options \\ []
      ) do
    url_path = "/2013-04-01/hostedzonesbyvpc"
    headers = []
    query_params = []

    query_params =
      if !is_nil(vpc_region) do
        [{"vpcregion", vpc_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(vpc_id) do
        [{"vpcid", vpc_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nexttoken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the configurations for DNS query logging that are associated with the
  current
  Amazon Web Services account or the configuration that is associated with a
  specified
  hosted zone.

  For more information about DNS query logs, see
  [CreateQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html). Additional information, including the format of
  DNS query logs, appears in [Logging DNS
  Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html)
  in
  the *Amazon Route 53 Developer Guide*.
  """
  @spec list_query_logging_configs(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_query_logging_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_query_logging_configs_errors()}
  def list_query_logging_configs(
        %Client{} = client,
        hosted_zone_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/queryloggingconfig"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nexttoken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxresults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(hosted_zone_id) do
        [{"hostedzoneid", hosted_zone_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resource record sets in a specified hosted zone.

  `ListResourceRecordSets` returns up to 300 resource record sets at a time
  in ASCII order, beginning at a position specified by the `name` and
  `type` elements.

  ## Sort order

  `ListResourceRecordSets` sorts results first by DNS name with the labels
  reversed, for example:

  `com.example.www.`

  Note the trailing dot, which can change the sort order when the record name
  contains
  characters that appear before `.` (decimal 46) in the ASCII table. These
  characters include the following: `! " # $ % & ' ( ) * + , -`

  When multiple records have the same DNS name, `ListResourceRecordSets`
  sorts results by the record type.

  ## Specifying where to start listing records

  You can use the name and type elements to specify the resource record set that
  the
  list begins with:

  ## Definitions

  ### If you do not specify Name or Type

  The results begin with the first resource record set that the hosted zone
  contains.

  ### If you specify Name but not Type

  The results begin with the first resource record set in the list whose
  name is greater than or equal to `Name`.

  ### If you specify Type but not Name

  Amazon Route 53 returns the `InvalidInput` error.

  ### If you specify both Name and Type

  The results begin with the first resource record set in the list whose
  name is greater than or equal to `Name`, and whose type is
  greater than or equal to `Type`.

  Type is only used to sort between records with the same record Name.

  ## Resource record sets that are PENDING

  This action returns the most current version of the records. This includes
  records
  that are `PENDING`, and that are not yet available on all Route 53 DNS
  servers.

  ## Changing resource record sets

  To ensure that you get an accurate listing of the resource record sets for a
  hosted
  zone at a point in time, do not submit a `ChangeResourceRecordSets` request
  while you're paging through the results of a `ListResourceRecordSets`
  request. If you do, some pages may display results without the latest changes
  while
  other pages display results with the latest changes.

  ## Displaying the next page of results

  If a `ListResourceRecordSets` command returns more than one page of
  results, the value of `IsTruncated` is `true`. To display the next
  page of results, get the values of `NextRecordName`,
  `NextRecordType`, and `NextRecordIdentifier` (if any) from the
  response. Then submit another `ListResourceRecordSets` request, and specify
  those values for `StartRecordName`, `StartRecordType`, and
  `StartRecordIdentifier`.
  """
  @spec list_resource_record_sets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_resource_record_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_record_sets_errors()}
  def list_resource_record_sets(
        %Client{} = client,
        hosted_zone_id,
        max_items \\ nil,
        start_record_identifier \\ nil,
        start_record_name \\ nil,
        start_record_type \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/rrset"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_record_type) do
        [{"type", start_record_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_record_name) do
        [{"name", start_record_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_record_identifier) do
        [{"identifier", start_record_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of the reusable delegation sets that are associated with the
  current
  Amazon Web Services account.
  """
  @spec list_reusable_delegation_sets(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_reusable_delegation_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reusable_delegation_sets_errors()}
  def list_reusable_delegation_sets(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/delegationset"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for one health check or hosted zone.

  For information about using tags for cost allocation, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management User Guide*.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_id, resource_type, options \\ []) do
    url_path =
      "/2013-04-01/tags/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for up to 10 health checks or hosted zones.

  For information about using tags for cost allocation, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management User Guide*.
  """
  @spec list_tags_for_resources(
          map(),
          String.t() | atom(),
          list_tags_for_resources_request(),
          list()
        ) ::
          {:ok, list_tags_for_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resources_errors()}
  def list_tags_for_resources(%Client{} = client, resource_type, input, options \\ []) do
    url_path = "/2013-04-01/tags/#{AWS.Util.encode_uri(resource_type)}"
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
  Gets information about the latest version for every traffic policy that is
  associated
  with the current Amazon Web Services account.

  Policies are listed in the order that they
  were created in.

  For information about how of deleting a traffic policy affects the response from
  `ListTrafficPolicies`, see
  [DeleteTrafficPolicy](https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html).
  """
  @spec list_traffic_policies(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_traffic_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_policies_errors()}
  def list_traffic_policies(
        %Client{} = client,
        max_items \\ nil,
        traffic_policy_id_marker \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/trafficpolicies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traffic_policy_id_marker) do
        [{"trafficpolicyid", traffic_policy_id_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the traffic policy instances that you created by using
  the
  current Amazon Web Services account.

  After you submit an `UpdateTrafficPolicyInstance` request, there's a
  brief delay while Amazon Route 53 creates the resource record sets that are
  specified in the traffic policy definition. For more information, see the
  `State` response element.

  Route 53 returns a maximum of 100 items in each response. If you have a lot of
  traffic
  policy instances, you can use the `MaxItems` parameter to list them in groups
  of up to 100.
  """
  @spec list_traffic_policy_instances(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_traffic_policy_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_policy_instances_errors()}
  def list_traffic_policy_instances(
        %Client{} = client,
        hosted_zone_id_marker \\ nil,
        max_items \\ nil,
        traffic_policy_instance_name_marker \\ nil,
        traffic_policy_instance_type_marker \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/trafficpolicyinstances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traffic_policy_instance_type_marker) do
        [{"trafficpolicyinstancetype", traffic_policy_instance_type_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(traffic_policy_instance_name_marker) do
        [{"trafficpolicyinstancename", traffic_policy_instance_name_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(hosted_zone_id_marker) do
        [{"hostedzoneid", hosted_zone_id_marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the traffic policy instances that you created in a
  specified
  hosted zone.

  After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while
  Amazon Route 53 creates the resource record sets that are specified in the
  traffic
  policy definition. For more information, see the `State` response
  element.

  Route 53 returns a maximum of 100 items in each response. If you have a lot of
  traffic
  policy instances, you can use the `MaxItems` parameter to list them in groups
  of up to 100.
  """
  @spec list_traffic_policy_instances_by_hosted_zone(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_traffic_policy_instances_by_hosted_zone_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_policy_instances_by_hosted_zone_errors()}
  def list_traffic_policy_instances_by_hosted_zone(
        %Client{} = client,
        hosted_zone_id,
        max_items \\ nil,
        traffic_policy_instance_name_marker \\ nil,
        traffic_policy_instance_type_marker \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/trafficpolicyinstances/hostedzone"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traffic_policy_instance_type_marker) do
        [{"trafficpolicyinstancetype", traffic_policy_instance_type_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(traffic_policy_instance_name_marker) do
        [{"trafficpolicyinstancename", traffic_policy_instance_name_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(hosted_zone_id) do
        [{"id", hosted_zone_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the traffic policy instances that you created by using a
  specify traffic policy version.

  After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while
  Amazon Route 53 creates the resource record sets that are specified in the
  traffic
  policy definition. For more information, see the `State` response
  element.

  Route 53 returns a maximum of 100 items in each response. If you have a lot of
  traffic
  policy instances, you can use the `MaxItems` parameter to list them in groups
  of up to 100.
  """
  @spec list_traffic_policy_instances_by_policy(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_traffic_policy_instances_by_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_policy_instances_by_policy_errors()}
  def list_traffic_policy_instances_by_policy(
        %Client{} = client,
        hosted_zone_id_marker \\ nil,
        max_items \\ nil,
        traffic_policy_id,
        traffic_policy_instance_name_marker \\ nil,
        traffic_policy_instance_type_marker \\ nil,
        traffic_policy_version,
        options \\ []
      ) do
    url_path = "/2013-04-01/trafficpolicyinstances/trafficpolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traffic_policy_version) do
        [{"version", traffic_policy_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(traffic_policy_instance_type_marker) do
        [{"trafficpolicyinstancetype", traffic_policy_instance_type_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(traffic_policy_instance_name_marker) do
        [{"trafficpolicyinstancename", traffic_policy_instance_name_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(traffic_policy_id) do
        [{"id", traffic_policy_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(hosted_zone_id_marker) do
        [{"hostedzoneid", hosted_zone_id_marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about all of the versions for a specified traffic policy.

  Traffic policy versions are listed in numerical order by
  `VersionNumber`.
  """
  @spec list_traffic_policy_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_traffic_policy_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_policy_versions_errors()}
  def list_traffic_policy_versions(
        %Client{} = client,
        id,
        max_items \\ nil,
        traffic_policy_version_marker \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/trafficpolicies/#{AWS.Util.encode_uri(id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traffic_policy_version_marker) do
        [{"trafficpolicyversion", traffic_policy_version_marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxitems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of the VPCs that were created by other accounts and that can be
  associated
  with a specified hosted zone because you've submitted one or more
  `CreateVPCAssociationAuthorization` requests.

  The response includes a `VPCs` element with a `VPC` child
  element for each VPC that can be associated with the hosted zone.
  """
  @spec list_vpc_association_authorizations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_vpc_association_authorizations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vpc_association_authorizations_errors()}
  def list_vpc_association_authorizations(
        %Client{} = client,
        hosted_zone_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(hosted_zone_id)}/authorizevpcassociation"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nexttoken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxresults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the value that Amazon Route 53 returns in response to a DNS request for a
  specified record name and type.

  You can optionally specify the IP address of a DNS
  resolver, an EDNS0 client subnet IP address, and a subnet mask.

  This call only supports querying public hosted zones.

  The `TestDnsAnswer ` returns information similar to what you would expect from
  the answer
  section of the `dig` command. Therefore, if you query for the name
  servers of a subdomain that point to the parent name servers, those will not be
  returned.
  """
  @spec test_dns_answer(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, test_dns_answer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_dns_answer_errors()}
  def test_dns_answer(
        %Client{} = client,
        e_dns0_client_subnet_ip \\ nil,
        e_dns0_client_subnet_mask \\ nil,
        hosted_zone_id,
        record_name,
        record_type,
        resolver_ip \\ nil,
        options \\ []
      ) do
    url_path = "/2013-04-01/testdnsanswer"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resolver_ip) do
        [{"resolverip", resolver_ip} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(record_type) do
        [{"recordtype", record_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(record_name) do
        [{"recordname", record_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(hosted_zone_id) do
        [{"hostedzoneid", hosted_zone_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(e_dns0_client_subnet_mask) do
        [{"edns0clientsubnetmask", e_dns0_client_subnet_mask} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(e_dns0_client_subnet_ip) do
        [{"edns0clientsubnetip", e_dns0_client_subnet_ip} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates an existing health check.

  Note that some values can't be updated.

  For more information about updating health checks, see [Creating, Updating, and Deleting Health
  Checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html)
  in the *Amazon Route 53
  Developer Guide*.
  """
  @spec update_health_check(map(), String.t() | atom(), update_health_check_request(), list()) ::
          {:ok, update_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_health_check_errors()}
  def update_health_check(%Client{} = client, health_check_id, input, options \\ []) do
    url_path = "/2013-04-01/healthcheck/#{AWS.Util.encode_uri(health_check_id)}"
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
  Updates the comment for a specified hosted zone.
  """
  @spec update_hosted_zone_comment(
          map(),
          String.t() | atom(),
          update_hosted_zone_comment_request(),
          list()
        ) ::
          {:ok, update_hosted_zone_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_hosted_zone_comment_errors()}
  def update_hosted_zone_comment(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/hostedzone/#{AWS.Util.encode_uri(id)}"
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
  Updates the comment for a specified traffic policy version.
  """
  @spec update_traffic_policy_comment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_traffic_policy_comment_request(),
          list()
        ) ::
          {:ok, update_traffic_policy_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_traffic_policy_comment_errors()}
  def update_traffic_policy_comment(%Client{} = client, id, version, input, options \\ []) do
    url_path =
      "/2013-04-01/trafficpolicy/#{AWS.Util.encode_uri(id)}/#{AWS.Util.encode_uri(version)}"

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

  After you submit a `UpdateTrafficPolicyInstance` request, there's a brief delay
  while Route 53 creates the resource record sets
  that are specified in the traffic policy definition.

  Use `GetTrafficPolicyInstance` with the `id` of updated traffic policy instance
  confirm
  that the
  `UpdateTrafficPolicyInstance` request completed successfully. For more
  information, see the `State` response element.

  Updates the resource record sets in a specified hosted zone that were created
  based on
  the settings in a specified traffic policy version.

  When you update a traffic policy instance, Amazon Route 53 continues to respond
  to DNS
  queries for the root resource record set name (such as example.com) while it
  replaces
  one group of resource record sets with another. Route 53 performs the following
  operations:

    1.
  Route 53 creates a new group of resource record sets based on the specified
  traffic policy. This is true regardless of how significant the differences are
  between the existing resource record sets and the new resource record sets.

    2.
  When all of the new resource record sets have been created, Route 53 starts to
  respond to DNS queries for the root resource record set name (such as
  example.com) by using the new resource record sets.

    3.
  Route 53 deletes the old group of resource record sets that are associated
  with the root resource record set name.
  """
  @spec update_traffic_policy_instance(
          map(),
          String.t() | atom(),
          update_traffic_policy_instance_request(),
          list()
        ) ::
          {:ok, update_traffic_policy_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_traffic_policy_instance_errors()}
  def update_traffic_policy_instance(%Client{} = client, id, input, options \\ []) do
    url_path = "/2013-04-01/trafficpolicyinstance/#{AWS.Util.encode_uri(id)}"
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
